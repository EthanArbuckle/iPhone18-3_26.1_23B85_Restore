@interface AXTwiceCompanionMainViewController
- (_TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cardSwipeDownWithGesture:(id)a3;
- (void)viewDidLoad;
@end

@implementation AXTwiceCompanionMainViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_23D6CF160();
}

- (void)cardSwipeDownWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D6D0A2C(v4);
}

- (_TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_23D6EE740();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return AXTwiceCompanionMainViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end