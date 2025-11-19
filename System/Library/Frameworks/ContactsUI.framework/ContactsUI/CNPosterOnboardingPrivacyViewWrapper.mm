@interface CNPosterOnboardingPrivacyViewWrapper
- (UIViewController)hostingController;
- (_TtC10ContactsUI34CNPosterOnboardingPrivacyViewModel)model;
- (_TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper)init;
- (_TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper)initWithDelegate:(id)a3;
- (void)setHostingController:(id)a3;
- (void)setModel:(id)a3;
@end

@implementation CNPosterOnboardingPrivacyViewWrapper

- (UIViewController)hostingController
{
  v3 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_hostingController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHostingController:(id)a3
{
  v5 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_hostingController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC10ContactsUI34CNPosterOnboardingPrivacyViewModel)model
{
  v3 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_model;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setModel:(id)a3
{
  v5 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper_model;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper)initWithDelegate:(id)a3
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