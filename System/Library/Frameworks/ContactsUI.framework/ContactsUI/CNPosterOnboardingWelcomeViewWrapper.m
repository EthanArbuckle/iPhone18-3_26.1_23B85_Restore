@interface CNPosterOnboardingWelcomeViewWrapper
- (UIViewController)hostingController;
- (_TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper)init;
- (_TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper)initWithContact:(id)a3 hasOptionToSkip:(BOOL)a4 hasExistingNickname:(BOOL)a5 navigationBarHeight:(double)a6 delegate:(id)a7 windowScene:(id)a8;
- (void)setHostingController:(id)a3;
@end

@implementation CNPosterOnboardingWelcomeViewWrapper

- (UIViewController)hostingController
{
  v3 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHostingController:(id)a3
{
  v5 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper)initWithContact:(id)a3 hasOptionToSkip:(BOOL)a4 hasExistingNickname:(BOOL)a5 navigationBarHeight:(double)a6 delegate:(id)a7 windowScene:(id)a8
{
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = a8;
  v15 = sub_199B29F10(v13, a4, a5, a6, a7, v14);
  swift_unknownObjectRelease();

  return v15;
}

- (_TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end