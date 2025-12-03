@interface ScreenshotServicesSettingsViewModel
- (void)handleScreensChanged:(id)changed;
@end

@implementation ScreenshotServicesSettingsViewModel

- (void)handleScreensChanged:(id)changed
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  changedCopy = changed;

  sub_8D6C("Screens change detected.", sub_8190);
}

@end