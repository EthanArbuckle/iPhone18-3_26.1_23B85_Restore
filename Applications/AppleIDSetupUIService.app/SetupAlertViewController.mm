@interface SetupAlertViewController
- (_TtC21AppleIDSetupUIService24SetupAlertViewController)init;
- (_TtC21AppleIDSetupUIService24SetupAlertViewController)initWithCoder:(id)a3;
- (_TtC21AppleIDSetupUIService24SetupAlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SetupAlertViewController

- (_TtC21AppleIDSetupUIService24SetupAlertViewController)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for PresentationRequest();
  swift_storeEnumTagMultiPayload();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController] = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(BaseProxFlowViewController *)&v5 initWithNibName:0 bundle:0];
}

- (_TtC21AppleIDSetupUIService24SetupAlertViewController)initWithCoder:(id)a3
{
  type metadata accessor for PresentationRequest();
  swift_storeEnumTagMultiPayload();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100006E4C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_100001E70(a3, v6, v7);
  sub_10000651C(v6);
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100006E4C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_100002F20(a3, v6, v7);
  sub_10000651C(v6);
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = swift_getObjectType();
  [(SetupAlertViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100004570(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000048B8(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100004C88(a3);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100006564;
  }

  v7 = self;
  sub_1000062B0(a3);
  sub_10000651C(v6);
}

- (void)handleButtonActions:(id)a3
{
  if (a3)
  {
    sub_1000066CC(0, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
    sub_100006714(&qword_100022CE8, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_100005028(v4);
}

- (_TtC21AppleIDSetupUIService24SetupAlertViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end