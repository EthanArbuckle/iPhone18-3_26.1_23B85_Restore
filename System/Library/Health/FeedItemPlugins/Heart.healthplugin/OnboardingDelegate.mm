@interface OnboardingDelegate
- (_TtC5HeartP33_8DCA3C15E4C4BF158196465BE488169318OnboardingDelegate)init;
- (uint64_t)didCompleteOnboarding;
@end

@implementation OnboardingDelegate

- (uint64_t)didCompleteOnboarding
{
  v1 = *(self + OBJC_IVAR____TtC5HeartP33_8DCA3C15E4C4BF158196465BE488169318OnboardingDelegate_onboardingManager);
  *(self + OBJC_IVAR____TtC5HeartP33_8DCA3C15E4C4BF158196465BE488169318OnboardingDelegate_onboardingManager) = 0;
  return MEMORY[0x2A1C71028]();
}

- (_TtC5HeartP33_8DCA3C15E4C4BF158196465BE488169318OnboardingDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end