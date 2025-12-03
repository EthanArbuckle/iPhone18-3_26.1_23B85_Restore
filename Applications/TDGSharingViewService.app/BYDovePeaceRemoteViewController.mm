@interface BYDovePeaceRemoteViewController
- (BYDovePeaceRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)handleHomeButtonPressed;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation BYDovePeaceRemoteViewController

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100022154;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_10001EC88(context, v6, v7);
  sub_100009ED0(v6);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100021780;
  }

  contextCopy = context;
  selfCopy = self;
  sub_10001FE40(context, v6);
  sub_100009ED0(v6);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100020194();
}

- (void)_willAppearInRemoteViewController
{
  selfCopy = self;
  sub_100020374();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000204CC(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100020868(disappear);
}

- (void)handleButtonActions:(id)actions
{
  if (actions)
  {
    sub_100003C1C(0, &qword_100053C58, SBUIRemoteAlertButtonAction_ptr);
    sub_1000216D8();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_100020BE4(v4);
}

- (void)handleHomeButtonPressed
{
  selfCopy = self;
  sub_100020FC8();
}

- (BYDovePeaceRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100021230(v5, v7, bundle);
}

@end