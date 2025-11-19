@interface ControlCenterSettingsViewController
- (ControlCenterSettingsViewController)initWithCoder:(id)a3;
- (ControlCenterSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
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

  v3 = self;
  ControlCenterSettingsViewController.viewDidLoad()();
}

- (ControlCenterSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_BA3C();
    v7 = a4;
    a3 = sub_BA2C();
  }

  else
  {
    v8 = a4;
  }

  v11.receiver = self;
  v11.super_class = ControlCenterSettingsViewController;
  v9 = [(ControlCenterSettingsViewController *)&v11 initWithNibName:a3 bundle:a4];

  return v9;
}

- (ControlCenterSettingsViewController)initWithCoder:(id)a3
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
  v5 = a3;
  v6 = [(ControlCenterSettingsViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end