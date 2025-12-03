@interface ControlCenterSettingsViewController
- (ControlCenterSettingsViewController)initWithCoder:(id)coder;
- (ControlCenterSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation ControlCenterSettingsViewController

- (void)viewDidLoad
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  ControlCenterSettingsViewController.viewDidLoad()();
}

- (ControlCenterSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_BA3C();
    bundleCopy = bundle;
    name = sub_BA2C();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v11.receiver = self;
  v11.super_class = ControlCenterSettingsViewController;
  v9 = [(ControlCenterSettingsViewController *)&v11 initWithNibName:name bundle:bundle];

  return v9;
}

- (ControlCenterSettingsViewController)initWithCoder:(id)coder
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = ControlCenterSettingsViewController;
  coderCopy = coder;
  v6 = [(ControlCenterSettingsViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end