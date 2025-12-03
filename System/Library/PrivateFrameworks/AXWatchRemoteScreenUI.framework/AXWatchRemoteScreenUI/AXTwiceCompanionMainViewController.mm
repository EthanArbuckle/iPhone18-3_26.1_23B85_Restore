@interface AXTwiceCompanionMainViewController
- (_TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cardSwipeDownWithGesture:(id)gesture;
- (void)viewDidLoad;
@end

@implementation AXTwiceCompanionMainViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_23D6CF160();
}

- (void)cardSwipeDownWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_23D6D0A2C(gestureCopy);
}

- (_TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_23D6EE740();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return AXTwiceCompanionMainViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end