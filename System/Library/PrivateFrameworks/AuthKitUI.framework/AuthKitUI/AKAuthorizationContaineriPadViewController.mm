@interface AKAuthorizationContaineriPadViewController
- (AKAuthorizationContaineriPadViewController)initWithRootViewController:(id)controller authorizationContext:(id)context;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AKAuthorizationContaineriPadViewController

- (AKAuthorizationContaineriPadViewController)initWithRootViewController:(id)controller authorizationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v10 = 0;
  objc_storeStrong(&v10, context);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKAuthorizationContaineriPadViewController;
  selfCopy = [(AKAuthorizationContainerViewController *)&v9 initWithRootViewController:location[0] authorizationContext:v10];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AKAuthorizationContaineriPadViewController *)selfCopy setModalPresentationStyle:5];
    rootViewController = [(AKAuthorizationContainerViewController *)selfCopy rootViewController];
    [(UIViewController *)rootViewController setModalPresentationStyle:2];
    MEMORY[0x277D82BD8](rootViewController);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = AKAuthorizationContaineriPadViewController;
  [(AKAuthorizationContaineriPadViewController *)&v5 viewDidAppear:appear];
  if (([(AKAuthorizationContaineriPadViewController *)selfCopy isBeingPresented]& 1) != 0)
  {
    v3 = selfCopy;
    rootViewController = [(AKAuthorizationContainerViewController *)selfCopy rootViewController];
    [AKAuthorizationContaineriPadViewController presentViewController:v3 animated:"presentViewController:animated:completion:" completion:?];
    MEMORY[0x277D82BD8](rootViewController);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v5 = a2;
  disappearCopy = disappear;
  v3.receiver = self;
  v3.super_class = AKAuthorizationContaineriPadViewController;
  [(AKAuthorizationContaineriPadViewController *)&v3 viewWillDisappear:disappear];
  if (([(AKAuthorizationContaineriPadViewController *)selfCopy isBeingDismissed]& 1) != 0)
  {
    [(AKAuthorizationContaineriPadViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  }
}

@end