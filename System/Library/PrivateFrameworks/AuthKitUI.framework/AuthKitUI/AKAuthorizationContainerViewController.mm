@interface AKAuthorizationContainerViewController
- (AKAuthorizationContainerViewController)init;
- (AKAuthorizationContainerViewController)initWithCoder:(id)a3;
- (AKAuthorizationContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AKAuthorizationContainerViewController)initWithRootViewController:(id)a3 authorizationContext:(id)a4;
- (AKAuthorizationContainerViewControllerDelegate)delegate;
- (AKAuthorizationPaneViewControllerDelegate)paneDelegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_clearPaneDelegateForViewController:(id)a3;
- (void)_setPaneDelegate:(id)a3 forViewController:(id)a4;
- (void)_setPaneDelegateForTopViewController;
- (void)_setPaneDelegateForViewController:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)setPaneDelegate:(id)a3;
@end

@implementation AKAuthorizationContainerViewController

- (AKAuthorizationContainerViewController)init
{
  v4 = 0;
  v4 = [(AKAuthorizationContainerViewController *)self initWithRootViewController:0 authorizationContext:?];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKAuthorizationContainerViewController)initWithRootViewController:(id)a3 authorizationContext:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v13 = objc_opt_class();
  if (v13 == objc_opt_class())
  {
    v10 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v10 userInterfaceIdiom];
    MEMORY[0x277D82BD8](v10);
    if (v11 == 1)
    {
      v4 = [AKAuthorizationContaineriPadViewController alloc];
      v19 = [(AKAuthorizationContaineriPadViewController *)v4 initWithRootViewController:location[0] authorizationContext:v16];
      v15 = 1;
    }

    else
    {
      v8 = [MEMORY[0x277CF0228] sharedManager];
      v9 = [v8 isAuthKitSolariumFeatureEnabled];
      MEMORY[0x277D82BD8](v8);
      if (v9)
      {
        v5 = [AKAuthorizationContaineriPadViewController alloc];
      }

      else
      {
        v5 = [AKAuthorizationContaineriPhoneViewController alloc];
      }

      v19 = [(AKAuthorizationContaineriPadViewController *)v5 initWithRootViewController:location[0] authorizationContext:v16];
      v15 = 1;
    }
  }

  else
  {
    v6 = v18;
    v18 = 0;
    v14.receiver = v6;
    v14.super_class = AKAuthorizationContainerViewController;
    v18 = [(AKAuthorizationContainerViewController *)&v14 initWithNibName:0 bundle:?];
    objc_storeStrong(&v18, v18);
    if (v18)
    {
      objc_storeStrong(v18 + 124, location[0]);
      objc_storeStrong(v18 + 125, v16);
    }

    v19 = MEMORY[0x277D82BE0](v18);
    v15 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v19;
}

- (AKAuthorizationContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9 = self;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  [(AKAuthorizationContainerViewController *)v9 doesNotRecognizeSelector:v8];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v9, 0);
  return 0;
}

- (AKAuthorizationContainerViewController)initWithCoder:(id)a3
{
  v6 = self;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  [(AKAuthorizationContainerViewController *)v6 doesNotRecognizeSelector:v5];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v6, 0);
  return 0;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];
  MEMORY[0x277D82BD8](v3);
  if (v4 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setPaneDelegate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_paneDelegate, location[0]);
  [(AKAuthorizationContainerViewController *)v4 _setPaneDelegateForTopViewController];
  objc_storeStrong(location, 0);
}

- (void)_setPaneDelegateForTopViewController
{
  v7 = self;
  v6[1] = a2;
  v4 = [(AKAuthorizationContainerViewController *)self rootViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](v4);
  if (isKindOfClass)
  {
    v6[0] = [(AKAuthorizationContainerViewController *)v7 rootViewController];
    v2 = v7;
    v3 = [v6[0] topViewController];
    [(AKAuthorizationContainerViewController *)v2 _setPaneDelegateForViewController:?];
    MEMORY[0x277D82BD8](v3);
    objc_storeStrong(v6, 0);
  }
}

- (void)_setPaneDelegateForViewController:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v4 = [(AKAuthorizationContainerViewController *)v6 paneDelegate];
  [AKAuthorizationContainerViewController _setPaneDelegate:v3 forViewController:"_setPaneDelegate:forViewController:"];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)_clearPaneDelegateForViewController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAuthorizationContainerViewController *)v4 _setPaneDelegate:0 forViewController:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_setPaneDelegate:(id)a3 forViewController:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](v6);
    [v5 setPaneDelegate:location[0]];
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v6 = v10;
  v7 = [location[0] topViewController];
  [(AKAuthorizationContainerViewController *)v6 _clearPaneDelegateForViewController:?];
  MEMORY[0x277D82BD8](v7);
  [(AKAuthorizationContainerViewController *)v10 _setPaneDelegateForViewController:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (AKAuthorizationContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AKAuthorizationPaneViewControllerDelegate)paneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_paneDelegate);

  return WeakRetained;
}

@end