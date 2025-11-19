@interface CalibrationNavigationViewController
- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithCoder:(id)a3;
- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithRootViewController:(id)a3;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
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

- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CalibrationNavigationViewController();
  return [(CalibrationNavigationViewController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CalibrationNavigationViewController();
  return [(CalibrationNavigationViewController *)&v5 initWithRootViewController:a3];
}

- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_2414E0CD0();
    v6 = a4;
    v7 = sub_2414E0CC0();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CalibrationNavigationViewController();
  v9 = [(CalibrationNavigationViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC16AssistiveTouchUI35CalibrationNavigationViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CalibrationNavigationViewController();
  v4 = a3;
  v5 = [(CalibrationNavigationViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  if (a4 == 1)
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