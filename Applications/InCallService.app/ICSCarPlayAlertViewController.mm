@interface ICSCarPlayAlertViewController
- (ICSCarPlayAlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP13InCallService34CarPlayAlertViewControllerDelegate_)delegate;
- (void)callAgain;
- (void)closeAlert;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)loadView;
- (void)playSound;
- (void)setDelegate:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ICSCarPlayAlertViewController

- (_TtP13InCallService34CarPlayAlertViewControllerDelegate_)delegate
{
  v2 = sub_1001F5678();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1001F56E8();
}

- (void)loadView
{
  v2 = self;
  sub_1001F5788();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1001F5830();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1001F59AC(a3);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001F5A74(v6, v7);
}

- (void)playSound
{
  v2 = self;
  sub_1001F6534(&selRef_shouldPlaySound);
}

- (void)callAgain
{
  v2 = self;
  sub_1001F6534(&selRef_shouldCallAgain);
}

- (void)closeAlert
{
  v2 = self;
  sub_1001F65E8();
}

- (ICSCarPlayAlertViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1001F6648(v5, v7, a4);
}

@end