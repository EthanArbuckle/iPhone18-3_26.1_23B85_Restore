@interface BYDovePeaceRemoteViewController
- (BYDovePeaceRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)handleHomeButtonPressed;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation BYDovePeaceRemoteViewController

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_10001EC88(a3, v6, v7);
  sub_100009ED0(v6);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100021780;
  }

  v7 = a3;
  v8 = self;
  sub_10001FE40(a3, v6);
  sub_100009ED0(v6);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100020194();
}

- (void)_willAppearInRemoteViewController
{
  v2 = self;
  sub_100020374();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000204CC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100020868(a3);
}

- (void)handleButtonActions:(id)a3
{
  if (a3)
  {
    sub_100003C1C(0, &qword_100053C58, SBUIRemoteAlertButtonAction_ptr);
    sub_1000216D8();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_100020BE4(v4);
}

- (void)handleHomeButtonPressed
{
  v2 = self;
  sub_100020FC8();
}

- (BYDovePeaceRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100021230(v5, v7, a4);
}

@end