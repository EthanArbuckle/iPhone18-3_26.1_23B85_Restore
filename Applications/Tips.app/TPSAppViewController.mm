@interface TPSAppViewController
- (TPSAppViewController)initWithAppController:(id)controller;
- (TPSAppViewControllerViewCycleDelegate)viewCycleDelegate;
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation TPSAppViewController

- (TPSAppViewController)initWithAppController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = TPSAppViewController;
  v6 = [(TPSViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appController, controller);
  }

  return v7;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom])
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (TPSAppViewControllerViewCycleDelegate)viewCycleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewCycleDelegate);

  return WeakRetained;
}

@end