@interface ICSCarPlayAlertViewController
- (ICSCarPlayAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP13InCallService34CarPlayAlertViewControllerDelegate_)delegate;
- (void)callAgain;
- (void)closeAlert;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)loadView;
- (void)playSound;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICSCarPlayAlertViewController

- (_TtP13InCallService34CarPlayAlertViewControllerDelegate_)delegate
{
  v2 = sub_1001F5678();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001F56E8();
}

- (void)loadView
{
  selfCopy = self;
  sub_1001F5788();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001F5830();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1001F59AC(disappear);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_1001F5A74(contextCopy, coordinatorCopy);
}

- (void)playSound
{
  selfCopy = self;
  sub_1001F6534(&selRef_shouldPlaySound);
}

- (void)callAgain
{
  selfCopy = self;
  sub_1001F6534(&selRef_shouldCallAgain);
}

- (void)closeAlert
{
  selfCopy = self;
  sub_1001F65E8();
}

- (ICSCarPlayAlertViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1001F6648(v5, v7, bundle);
}

@end