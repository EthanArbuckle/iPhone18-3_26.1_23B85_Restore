@interface AUInternalSettingsController
- (AUInternalSettingsController)initWithCoder:(id)a3;
- (AUInternalSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation AUInternalSettingsController

- (void)viewDidLoad
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_23D46A444();
}

- (AUInternalSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_23D46BDD8();
    v7 = a4;
    a3 = sub_23D46BDC8();
  }

  else
  {
    v8 = a4;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AUInternalSettingsController();
  v9 = [(AUInternalSettingsController *)&v11 initWithNibName:a3 bundle:a4];

  return v9;
}

- (AUInternalSettingsController)initWithCoder:(id)a3
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for AUInternalSettingsController();
  v5 = a3;
  v6 = [(AUInternalSettingsController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end