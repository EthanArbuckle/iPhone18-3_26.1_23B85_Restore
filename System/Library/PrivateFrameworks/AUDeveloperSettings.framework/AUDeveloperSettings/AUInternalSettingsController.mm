@interface AUInternalSettingsController
- (AUInternalSettingsController)initWithCoder:(id)coder;
- (AUInternalSettingsController)initWithNibName:(id)name bundle:(id)bundle;
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

  selfCopy = self;
  sub_23D46A444();
}

- (AUInternalSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_23D46BDD8();
    bundleCopy = bundle;
    name = sub_23D46BDC8();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AUInternalSettingsController();
  v9 = [(AUInternalSettingsController *)&v11 initWithNibName:name bundle:bundle];

  return v9;
}

- (AUInternalSettingsController)initWithCoder:(id)coder
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
  coderCopy = coder;
  v6 = [(AUInternalSettingsController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end