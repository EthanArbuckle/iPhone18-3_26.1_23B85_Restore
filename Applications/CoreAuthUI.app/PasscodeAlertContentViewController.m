@interface PasscodeAlertContentViewController
- (_TtC10CoreAuthUI34PasscodeAlertContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)verifyPasscode:(id)a3 reply:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PasscodeAlertContentViewController

- (void)loadView
{
  v2 = self;
  sub_10002E4FC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10002EA08(a3);
}

- (void)verifyPasscode:(id)a3 reply:(id)a4
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a4);
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
  v17 = self;
  sub_100030844(v7, v9, v11, v12, v13, v14, v15, v16, sub_10003072C, v10, ObjectType, &off_100097320);
}

- (_TtC10CoreAuthUI34PasscodeAlertContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end