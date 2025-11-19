@interface ScreenshotServicesSettingsViewModel
- (void)handleScreensChanged:(id)a3;
@end

@implementation ScreenshotServicesSettingsViewModel

- (void)handleScreensChanged:(id)a3
{
  sub_98EC();
  sub_98DC();
  sub_98CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;

  sub_8D6C("Screens change detected.", sub_8190);
}

@end