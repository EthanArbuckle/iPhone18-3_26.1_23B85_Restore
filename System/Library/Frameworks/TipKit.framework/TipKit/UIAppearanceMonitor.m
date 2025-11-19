@interface UIAppearanceMonitor
- (BOOL)_canShowWhileLocked;
- (_TtC6TipKit19UIAppearanceMonitor)initWithCoder:(id)a3;
- (_TtC6TipKit19UIAppearanceMonitor)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation UIAppearanceMonitor

- (BOOL)_canShowWhileLocked
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  canShowWhileLockedSbyF_0 = j___s6TipKit0A23UIPopoverViewControllerC19_canShowWhileLockedSbyF_0();

  return canShowWhileLockedSbyF_0 & 1;
}

- (_TtC6TipKit19UIAppearanceMonitor)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = sub_1A3622B8C();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = sub_1A361D0AC(v6, a3, a4);

  return v9;
}

- (_TtC6TipKit19UIAppearanceMonitor)initWithCoder:(id)a3
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1A361D250(a3);

  return v4;
}

@end