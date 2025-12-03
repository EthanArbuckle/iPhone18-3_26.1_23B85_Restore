@interface CHOnboardingCoordinator
- (CHOnboardingCoordinator)init;
- (CHOnboardingCoordinatorDelegate)delegate;
- (int64_t)currentPhase;
- (void)setCompletedWelcomeViews;
- (void)setCompletedWhatsNewViews;
@end

@implementation CHOnboardingCoordinator

- (int64_t)currentPhase
{
  v2 = 0x1000000000000;
  if (!*(self + OBJC_IVAR___CHOnboardingCoordinator_criteria + 6))
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!*(self + OBJC_IVAR___CHOnboardingCoordinator_criteria + 5))
  {
    v3 = 0;
  }

  v4 = &_mh_execute_header;
  if (!*(self + OBJC_IVAR___CHOnboardingCoordinator_criteria + 4))
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!*(self + OBJC_IVAR___CHOnboardingCoordinator_criteria + 3))
  {
    v5 = 0;
  }

  v6 = 0x10000;
  if (!*(self + OBJC_IVAR___CHOnboardingCoordinator_criteria + 2))
  {
    v6 = 0;
  }

  v7 = 256;
  if (!*(self + OBJC_IVAR___CHOnboardingCoordinator_criteria + 1))
  {
    v7 = 0;
  }

  return sub_100008D00(v7 | *(self + OBJC_IVAR___CHOnboardingCoordinator_criteria) | v6 | v5 | v4 | v3 | v2);
}

- (CHOnboardingCoordinatorDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setCompletedWelcomeViews
{
  selfCopy = self;
  sub_1005F930C();
}

- (void)setCompletedWhatsNewViews
{
  selfCopy = self;
  sub_1005F9818();
}

- (CHOnboardingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end