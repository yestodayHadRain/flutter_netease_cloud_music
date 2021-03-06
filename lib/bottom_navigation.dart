import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './pages/find/find.dart';
import './pages/account/account.dart';
import './pages/my/my.dart';
import './pages/friend/friend.dart';
import './pages/video/video.dart';
import 'package:provider/provider.dart';
import './provider/current_index.dart';

class BottomNavigationWidget extends StatelessWidget {
  final List<Widget> _pageList = [
    FindPage(),
    VideoPage(),
    MyPage(),
    FriendPage(),
    AccountPage(),
  ];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var currentIndex = Provider.of<CurrentIndexProvider>(context).currentIndex;
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: _pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          Provider.of<CurrentIndexProvider>(context).changeIndex(index);
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              child: currentIndex == 0
                  ? Image.asset('images/bottom/find_selected.png')
                  : Image.asset('images/bottom/find.png'),
            ),
            title: Text(
              '发现',
              style: TextStyle(
                color: currentIndex == 0 ? Colors.red : Colors.black,
                fontSize: 10,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              width:30,
              child: currentIndex == 1
                  ? Image.asset('images/bottom/video_selected.png')
                  : Image.asset('images/bottom/video.png'),
            ),
            title: Text('视频', style: TextStyle(
                color: currentIndex == 1 ? Colors.red : Colors.black,
                fontSize:10,
              ),),
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              child: currentIndex == 2
                  ? Image.asset('images/bottom/my_selected.png')
                  : Image.asset('images/bottom/my.png'),
            ),
            title: Text('我的', style: TextStyle(
                color: currentIndex == 2 ? Colors.red : Colors.black,
                fontSize: 10,
              ),),
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              child: currentIndex == 3
                  ? Image.asset('images/bottom/friend_selected.png')
                  : Image.asset('images/bottom/friend.png'),
            ),
            title: Text('朋友', style: TextStyle(
                color: currentIndex == 3 ? Colors.red : Colors.black,
                fontSize: 10,
              ),),
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              child: currentIndex == 4
                  ? Image.asset('images/bottom/account_selected.png')
                  : Image.asset('images/bottom/account.png'),
            ),
            title: Text('账号', style: TextStyle(
                color: currentIndex == 4 ? Colors.red : Colors.black,
                fontSize: 10,
              ),),
          )
        ],
      ),
    );
  }
}
// class BottomNavigationWidget extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => BottomNavigationWidgetState();
// }

// class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
//   int _tabIndex = 0;
//   var tabImages;
//   var appBarTitles = ['发现', '视频', '我的', '朋友', '账号'];
//   //存放5个页面，跟fragmentList一样

//   var _pageList;

//   //根据选择获得对应的normal或是press的img

//   Image getTabIcon(int curIndex) {
//     if (curIndex == _tabIndex) {
//       return tabImages[curIndex][1];
//     }
//     return tabImages[curIndex][0];
//   }

//   //获取bottomTab的颜色和文字

//   Text getTabTitle(int curIndex) {
//     if (curIndex == _tabIndex) {
//       return new Text(appBarTitles[curIndex],
//           style: new TextStyle(fontSize: 9.0, color: const Color(0xffD43C33)));
//     } else {
//       return new Text(appBarTitles[curIndex],
//           style: new TextStyle(fontSize: 9.0, color: const Color(0xff515151)));
//     }
//   }

//   // 根据image路径获取图片

//   Image getTabImage(path) {
//     return new Image.asset(path, width: 30.0, height: 30.0);
//   }

//   void initData() {
//     /*
//      * 初始化选中和未选中的icon
//      */
//     tabImages = [
//       [
//         getTabImage('images/bottom/find.png'),
//         getTabImage('images/bottom/find_selected.png')
//       ],
//       [
//         getTabImage('images/bottom/video.png'),
//         getTabImage('images/bottom/video_selected.png')
//       ],
//       [
//         getTabImage('images/bottom/my.png'),
//         getTabImage('images/bottom/my_selected.png')
//       ],
//       [
//         getTabImage('images/bottom/friend.png'),
//         getTabImage('images/bottom/friend_selected.png')
//       ],
//       [
//         getTabImage('images/bottom/account.png'),
//         getTabImage('images/bottom/account_selected.png')
//       ],
//     ];
//     /*
//      * 5个子界面
//      */
//     _pageList = [
//       FindPage(),
//       VideoPage(),
//       MyPage(),
//       FriendPage(),
//       AccountPage(),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     //初始化数据
//     initData();
//     return Scaffold(
//         body: _pageList[_tabIndex],
//         bottomNavigationBar: new BottomNavigationBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           items: <BottomNavigationBarItem>[
//             new BottomNavigationBarItem(
//                 icon: getTabIcon(0), title: getTabTitle(0)),
//             new BottomNavigationBarItem(
//                 icon: getTabIcon(1), title: getTabTitle(1)),
//             new BottomNavigationBarItem(
//                 icon: getTabIcon(2), title: getTabTitle(2)),
//             new BottomNavigationBarItem(
//                 icon: getTabIcon(3), title: getTabTitle(3)),
//             new BottomNavigationBarItem(
//                 icon: getTabIcon(4), title: getTabTitle(4)),
//           ],
//           type: BottomNavigationBarType.fixed,
//           //默认选中首页
//           currentIndex: _tabIndex,
//           //点击事件
//           onTap: (index) {
//             setState(() {
//               _tabIndex = index;
//             });
//           },
//         ));
//   }
// }
