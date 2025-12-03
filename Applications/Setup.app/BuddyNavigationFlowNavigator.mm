@interface BuddyNavigationFlowNavigator
- (BFFNavigationController)navigationController;
- (BuddyNavigationFlowNavigator)initWithNavigationController:(id)controller;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)popToViewController:(id)controller animated:(BOOL)animated;
- (id)presentedViewController;
- (id)topViewController;
- (id)view;
- (id)viewControllers;
- (void)addDelegateObserver:(id)observer;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller completion:(id)completion;
- (void)pushViewController:(id)controller usingShieldColor:(id)color completion:(id)completion;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
@end

@implementation BuddyNavigationFlowNavigator

- (BuddyNavigationFlowNavigator)initWithNavigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = BuddyNavigationFlowNavigator;
  selfCopy = [(BuddyNavigationFlowNavigator *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(selfCopy + 1, location[0]);
  }

  v4 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

- (void)addDelegateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  navigationController = [(BuddyNavigationFlowNavigator *)selfCopy navigationController];
  [(BFFNavigationController *)navigationController addDelegateObserver:location[0]];

  objc_storeStrong(location, 0);
}

- (id)topViewController
{
  v2 = [(BuddyNavigationFlowNavigator *)self navigationController:a2];
  topViewController = [(BFFNavigationController *)v2 topViewController];

  return topViewController;
}

- (id)presentedViewController
{
  v2 = [(BuddyNavigationFlowNavigator *)self navigationController:a2];
  presentedViewController = [(BFFNavigationController *)v2 presentedViewController];

  return presentedViewController;
}

- (id)viewControllers
{
  v2 = [(BuddyNavigationFlowNavigator *)self navigationController:a2];
  viewControllers = [(BFFNavigationController *)v2 viewControllers];

  return viewControllers;
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controllers);
  animatedCopy = animated;
  navigationController = [(BuddyNavigationFlowNavigator *)selfCopy navigationController];
  [(BFFNavigationController *)navigationController setViewControllers:location[0] animated:animatedCopy];

  objc_storeStrong(location, 0);
}

- (id)view
{
  v2 = [(BuddyNavigationFlowNavigator *)self navigationController:a2];
  view = [(BFFNavigationController *)v2 view];

  return view;
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  navigationController = [(BuddyNavigationFlowNavigator *)selfCopy navigationController];
  [(BFFNavigationController *)navigationController pushViewController:location[0] animated:1];

  objc_storeStrong(location, 0);
}

- (void)pushViewController:(id)controller completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  navigationController = [(BuddyNavigationFlowNavigator *)selfCopy navigationController];
  [(BFFNavigationController *)navigationController pushViewController:location[0] completion:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)pushViewController:(id)controller usingShieldColor:(id)color completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, color);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  navigationController = [(BuddyNavigationFlowNavigator *)selfCopy navigationController];
  [(BFFNavigationController *)navigationController pushViewController:location[0] usingShieldColor:v9 completion:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)popToViewController:(id)controller animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  animatedCopy = animated;
  navigationController = [(BuddyNavigationFlowNavigator *)selfCopy navigationController];
  v6 = [(BFFNavigationController *)navigationController popToViewController:location[0] animated:animatedCopy];

  objc_storeStrong(location, 0);

  return v6;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationController = [(BuddyNavigationFlowNavigator *)self navigationController];
  v4 = [(BFFNavigationController *)navigationController popToRootViewControllerAnimated:animatedCopy];

  return v4;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  animatedCopy = animated;
  v8 = 0;
  objc_storeStrong(&v8, completion);
  navigationController = [(BuddyNavigationFlowNavigator *)selfCopy navigationController];
  [(BFFNavigationController *)navigationController presentViewController:location[0] animated:animatedCopy completion:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  v7 = a2;
  animatedCopy = animated;
  v5 = 0;
  objc_storeStrong(&v5, completion);
  navigationController = [(BuddyNavigationFlowNavigator *)selfCopy navigationController];
  [(BFFNavigationController *)navigationController dismissViewControllerAnimated:animatedCopy completion:v5];

  objc_storeStrong(&v5, 0);
}

- (BFFNavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end