@interface CalibrationNavigationViewController
- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithCoder:(id)coder;
- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithRootViewController:(id)controller;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (void)viewDidLoad;
@end

@implementation CalibrationNavigationViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CalibrationNavigationViewController();
  v2 = v3.receiver;
  [(CalibrationNavigationViewController *)&v3 viewDidLoad];
  [v2 setDelegate_];
  [v2 setNavigationBarHidden_];
}

- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CalibrationNavigationViewController();
  return [(CalibrationNavigationViewController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CalibrationNavigationViewController();
  return [(CalibrationNavigationViewController *)&v5 initWithRootViewController:controller];
}

- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_2414E0CD0();
    bundleCopy = bundle;
    v7 = sub_2414E0CC0();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CalibrationNavigationViewController();
  v9 = [(CalibrationNavigationViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CalibrationNavigationViewController();
  coderCopy = coder;
  v5 = [(CalibrationNavigationViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  if (operation == 1)
  {
    v8 = [objc_allocWithZone(type metadata accessor for PushTransition()) init];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end