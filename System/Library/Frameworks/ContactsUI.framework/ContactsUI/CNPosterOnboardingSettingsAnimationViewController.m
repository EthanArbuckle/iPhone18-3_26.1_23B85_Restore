@interface CNPosterOnboardingSettingsAnimationViewController
+ (void)controllerFor:(id)a3 isRTL:(BOOL)a4 windowScene:(id)a5 shouldDefaultToCleanState:(BOOL)a6 completion:(id)a7;
- (BOOL)isAnimationPaused;
- (_TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController)initWithCoder:(id)a3;
- (_TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setIsAnimationPaused:(BOOL)a3;
- (void)toggleAnimation;
- (void)viewWillLayoutSubviews;
@end

@implementation CNPosterOnboardingSettingsAnimationViewController

+ (void)controllerFor:(id)a3 isRTL:(BOOL)a4 windowScene:(id)a5 shouldDefaultToCleanState:(BOOL)a6 completion:(id)a7
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v26 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = sub_199DFA1BC();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  sub_199DFA17C();
  v19 = a3;
  v20 = a5;
  v21 = v19;
  v22 = v20;

  v23 = sub_199DFA16C();
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  *(v24 + 32) = v21;
  *(v24 + 40) = a4;
  *(v24 + 48) = v22;
  *(v24 + 56) = a6;
  *(v24 + 64) = sub_199B72B68;
  *(v24 + 72) = v17;
  sub_199AE5E60(0, 0, v15, &unk_199E42728, v24);
}

- (_TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_animationLayer) = 0;
  v3 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  *(&self->super.super.super.isa + v3) = !UIAccessibilityIsVideoAutoplayEnabled();
  result = sub_199DFA85C();
  __break(1u);
  return result;
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_199B71488();
}

- (BOOL)isAnimationPaused
{
  v3 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setIsAnimationPaused:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (void)toggleAnimation
{
  v2 = self;
  sub_199B71854();
}

- (_TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end