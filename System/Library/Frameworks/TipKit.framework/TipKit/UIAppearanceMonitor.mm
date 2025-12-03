@interface UIAppearanceMonitor
- (BOOL)_canShowWhileLocked;
- (_TtC6TipKit19UIAppearanceMonitor)initWithCoder:(id)coder;
- (_TtC6TipKit19UIAppearanceMonitor)initWithNibName:(id)name bundle:(id)bundle;
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

  selfCopy = self;
  canShowWhileLockedSbyF_0 = j___s6TipKit0A23UIPopoverViewControllerC19_canShowWhileLockedSbyF_0();

  return canShowWhileLockedSbyF_0 & 1;
}

- (_TtC6TipKit19UIAppearanceMonitor)initWithNibName:(id)name bundle:(id)bundle
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_1A3622B8C();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = sub_1A361D0AC(v6, name, bundle);

  return v9;
}

- (_TtC6TipKit19UIAppearanceMonitor)initWithCoder:(id)coder
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1A361D250(coder);

  return v4;
}

@end