@interface SetupAlertViewController
- (_TtC21AppleIDSetupUIService24SetupAlertViewController)init;
- (_TtC21AppleIDSetupUIService24SetupAlertViewController)initWithCoder:(id)coder;
- (_TtC21AppleIDSetupUIService24SetupAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (_TtC21AppleIDSetupUIService24SetupAlertViewController)initWithCoder:(id)coder
{
  type metadata accessor for PresentationRequest();
  swift_storeEnumTagMultiPayload();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  contextCopy = context;
  selfCopy = self;
  sub_100001E70(context, v6, v7);
  sub_10000651C(v6);
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  contextCopy = context;
  selfCopy = self;
  sub_100002F20(context, v6, v7);
  sub_10000651C(v6);
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = swift_getObjectType();
  [(SetupAlertViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100004570(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000048B8(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100004C88(disappear);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100006564;
  }

  selfCopy = self;
  sub_1000062B0(animated);
  sub_10000651C(v6);
}

- (void)handleButtonActions:(id)actions
{
  if (actions)
  {
    sub_1000066CC(0, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
    sub_100006714(&qword_100022CE8, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_100005028(v4);
}

- (_TtC21AppleIDSetupUIService24SetupAlertViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end