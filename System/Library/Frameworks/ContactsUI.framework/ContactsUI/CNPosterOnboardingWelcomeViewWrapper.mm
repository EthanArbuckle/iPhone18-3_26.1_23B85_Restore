@interface CNPosterOnboardingWelcomeViewWrapper
- (UIViewController)hostingController;
- (_TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper)init;
- (_TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper)initWithContact:(id)contact hasOptionToSkip:(BOOL)skip hasExistingNickname:(BOOL)nickname navigationBarHeight:(double)height delegate:(id)delegate windowScene:(id)scene;
- (void)setHostingController:(id)controller;
@end

@implementation CNPosterOnboardingWelcomeViewWrapper

- (UIViewController)hostingController
{
  v3 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHostingController:(id)controller
{
  v5 = OBJC_IVAR____TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper_hostingController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = controller;
  controllerCopy = controller;
}

- (_TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper)initWithContact:(id)contact hasOptionToSkip:(BOOL)skip hasExistingNickname:(BOOL)nickname navigationBarHeight:(double)height delegate:(id)delegate windowScene:(id)scene
{
  contactCopy = contact;
  swift_unknownObjectRetain();
  sceneCopy = scene;
  v15 = sub_199B29F10(contactCopy, skip, nickname, height, delegate, sceneCopy);
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