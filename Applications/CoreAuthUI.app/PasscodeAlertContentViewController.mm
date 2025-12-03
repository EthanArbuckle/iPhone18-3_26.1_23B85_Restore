@interface PasscodeAlertContentViewController
- (_TtC10CoreAuthUI34PasscodeAlertContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)verifyPasscode:(id)passcode reply:(id)reply;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PasscodeAlertContentViewController

- (void)loadView
{
  selfCopy = self;
  sub_10002E4FC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10002EA08(appear);
}

- (void)verifyPasscode:(id)passcode reply:(id)reply
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(reply);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_externalizedContext);
  v12 = *&self->passcodeController[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_externalizedContext];
  v13 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_userId);
  v14 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_policy);
  v15 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_options);
  v16 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_auditToken);
  selfCopy = self;
  sub_100030844(v7, v9, v11, v12, v13, v14, v15, v16, sub_10003072C, v10, ObjectType, &off_100097320);
}

- (_TtC10CoreAuthUI34PasscodeAlertContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end