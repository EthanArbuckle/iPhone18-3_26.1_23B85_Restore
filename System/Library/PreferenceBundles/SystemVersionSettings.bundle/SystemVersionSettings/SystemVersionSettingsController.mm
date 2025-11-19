@interface SystemVersionSettingsController
- (SystemVersionSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation SystemVersionSettingsController

- (void)viewDidLoad
{
  self;
  SystemVersionSettingsController.viewDidLoad()();
}

- (SystemVersionSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  a3;
  a4;
  if (a3)
  {
    v6 = sub_25B90();
    v7 = v4;

    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return SystemVersionSettingsController.init(nibName:bundle:)(v8, v9, a4);
}

@end