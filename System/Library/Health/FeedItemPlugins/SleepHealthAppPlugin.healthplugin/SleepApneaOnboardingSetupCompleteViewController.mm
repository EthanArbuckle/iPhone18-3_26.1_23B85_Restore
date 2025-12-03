@interface SleepApneaOnboardingSetupCompleteViewController
- (void)hxui_cancelButtonTapped;
@end

@implementation SleepApneaOnboardingSetupCompleteViewController

- (void)hxui_cancelButtonTapped
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_29E6D1908(v4);

    sub_29E751758();
  }

  else
  {
  }
}

@end