@interface OnboardingPrivacyViewWrapper.Coordinator
- (_TtCV19MobileStoreSettings28OnboardingPrivacyViewWrapper11Coordinator)init;
- (void)dismissViewController;
@end

@implementation OnboardingPrivacyViewWrapper.Coordinator

- (void)dismissViewController
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCV19MobileStoreSettings28OnboardingPrivacyViewWrapper11Coordinator_onDismiss);
  if (v2)
  {
    v3 = *&self->onDismiss[OBJC_IVAR____TtCV19MobileStoreSettings28OnboardingPrivacyViewWrapper11Coordinator_onDismiss];
    v4 = self;
    v5 = sub_C450(v2);
    v2(v5);

    sub_C460(v2);
  }
}

- (_TtCV19MobileStoreSettings28OnboardingPrivacyViewWrapper11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end