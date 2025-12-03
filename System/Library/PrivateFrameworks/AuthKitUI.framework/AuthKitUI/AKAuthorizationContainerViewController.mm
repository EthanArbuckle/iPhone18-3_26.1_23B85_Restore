@interface AKAuthorizationContainerViewController
- (AKAuthorizationContainerViewController)init;
- (AKAuthorizationContainerViewController)initWithCoder:(id)coder;
- (AKAuthorizationContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AKAuthorizationContainerViewController)initWithRootViewController:(id)controller authorizationContext:(id)context;
- (AKAuthorizationContainerViewControllerDelegate)delegate;
- (AKAuthorizationPaneViewControllerDelegate)paneDelegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_clearPaneDelegateForViewController:(id)controller;
- (void)_setPaneDelegate:(id)delegate forViewController:(id)controller;
- (void)_setPaneDelegateForTopViewController;
- (void)_setPaneDelegateForViewController:(id)controller;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)setPaneDelegate:(id)delegate;
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

- (AKAuthorizationContainerViewController)initWithRootViewController:(id)controller authorizationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v16 = 0;
  objc_storeStrong(&v16, context);
  v13 = objc_opt_class();
  if (v13 == objc_opt_class())
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    MEMORY[0x277D82BD8](currentDevice);
    if (userInterfaceIdiom == 1)
    {
      v4 = [AKAuthorizationContaineriPadViewController alloc];
      v19 = [(AKAuthorizationContaineriPadViewController *)v4 initWithRootViewController:location[0] authorizationContext:v16];
      v15 = 1;
    }

    else
    {
      mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
      isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
      MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
      if (isAuthKitSolariumFeatureEnabled)
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
    v6 = selfCopy;
    selfCopy = 0;
    v14.receiver = v6;
    v14.super_class = AKAuthorizationContainerViewController;
    selfCopy = [(AKAuthorizationContainerViewController *)&v14 initWithNibName:0 bundle:?];
    objc_storeStrong(&selfCopy, selfCopy);
    if (selfCopy)
    {
      objc_storeStrong(selfCopy + 124, location[0]);
      objc_storeStrong(selfCopy + 125, v16);
    }

    v19 = MEMORY[0x277D82BE0](selfCopy);
    v15 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

- (AKAuthorizationContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  selfCopy = self;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, name);
  v6 = 0;
  objc_storeStrong(&v6, bundle);
  [(AKAuthorizationContainerViewController *)selfCopy doesNotRecognizeSelector:v8];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationContainerViewController)initWithCoder:(id)coder
{
  selfCopy = self;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, coder);
  [(AKAuthorizationContainerViewController *)selfCopy doesNotRecognizeSelector:v5];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setPaneDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  objc_storeWeak(&selfCopy->_paneDelegate, location[0]);
  [(AKAuthorizationContainerViewController *)selfCopy _setPaneDelegateForTopViewController];
  objc_storeStrong(location, 0);
}

- (void)_setPaneDelegateForTopViewController
{
  selfCopy = self;
  v6[1] = a2;
  rootViewController = [(AKAuthorizationContainerViewController *)self rootViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](rootViewController);
  if (isKindOfClass)
  {
    v6[0] = [(AKAuthorizationContainerViewController *)selfCopy rootViewController];
    v2 = selfCopy;
    topViewController = [v6[0] topViewController];
    [(AKAuthorizationContainerViewController *)v2 _setPaneDelegateForViewController:?];
    MEMORY[0x277D82BD8](topViewController);
    objc_storeStrong(v6, 0);
  }
}

- (void)_setPaneDelegateForViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = selfCopy;
  paneDelegate = [(AKAuthorizationContainerViewController *)selfCopy paneDelegate];
  [AKAuthorizationContainerViewController _setPaneDelegate:v3 forViewController:"_setPaneDelegate:forViewController:"];
  MEMORY[0x277D82BD8](paneDelegate);
  objc_storeStrong(location, 0);
}

- (void)_clearPaneDelegateForViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  [(AKAuthorizationContainerViewController *)selfCopy _setPaneDelegate:0 forViewController:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_setPaneDelegate:(id)delegate forViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v6 = 0;
  objc_storeStrong(&v6, controller);
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

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = 0;
  objc_storeStrong(&v8, viewController);
  v6 = selfCopy;
  topViewController = [location[0] topViewController];
  [(AKAuthorizationContainerViewController *)v6 _clearPaneDelegateForViewController:?];
  MEMORY[0x277D82BD8](topViewController);
  [(AKAuthorizationContainerViewController *)selfCopy _setPaneDelegateForViewController:v8];
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