@interface CNPosterOnboardingPrivacyViewWrapper
- (UIViewController)hostingController;
- (_TtC10ContactsUI34CNPosterOnboardingPrivacyViewModel)model;
- (_TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper)init;
- (_TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper)initWithDelegate:(id)delegate;
- (void)setHostingController:(id)controller;
- (void)setModel:(id)model;
@end

@implementation CNPosterOnboardingPrivacyViewWrapper

- (UIViewController)hostingController
{
  v3 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_hostingController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHostingController:(id)controller
{
  v5 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_hostingController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = controller;
  controllerCopy = controller;
}

- (_TtC10ContactsUI34CNPosterOnboardingPrivacyViewModel)model
{
  v3 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_model;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setModel:(id)model
{
  v5 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_model;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = model;
  modelCopy = model;
}

- (_TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper)initWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  v3 = sub_199A9D0F8();
  swift_unknownObjectRelease();
  return v3;
}

- (_TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end