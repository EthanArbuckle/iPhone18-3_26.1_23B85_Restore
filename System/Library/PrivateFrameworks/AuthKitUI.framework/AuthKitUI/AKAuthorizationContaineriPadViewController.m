@interface AKAuthorizationContaineriPadViewController
- (AKAuthorizationContaineriPadViewController)initWithRootViewController:(id)a3 authorizationContext:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AKAuthorizationContaineriPadViewController

- (AKAuthorizationContaineriPadViewController)initWithRootViewController:(id)a3 authorizationContext:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKAuthorizationContaineriPadViewController;
  v12 = [(AKAuthorizationContainerViewController *)&v9 initWithRootViewController:location[0] authorizationContext:v10];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    [(AKAuthorizationContaineriPadViewController *)v12 setModalPresentationStyle:5];
    v7 = [(AKAuthorizationContainerViewController *)v12 rootViewController];
    [(UIViewController *)v7 setModalPresentationStyle:2];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)viewDidAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = AKAuthorizationContaineriPadViewController;
  [(AKAuthorizationContaineriPadViewController *)&v5 viewDidAppear:a3];
  if (([(AKAuthorizationContaineriPadViewController *)v8 isBeingPresented]& 1) != 0)
  {
    v3 = v8;
    v4 = [(AKAuthorizationContainerViewController *)v8 rootViewController];
    [AKAuthorizationContaineriPadViewController presentViewController:v3 animated:"presentViewController:animated:completion:" completion:?];
    MEMORY[0x277D82BD8](v4);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKAuthorizationContaineriPadViewController;
  [(AKAuthorizationContaineriPadViewController *)&v3 viewWillDisappear:a3];
  if (([(AKAuthorizationContaineriPadViewController *)v6 isBeingDismissed]& 1) != 0)
  {
    [(AKAuthorizationContaineriPadViewController *)v6 dismissViewControllerAnimated:1 completion:0];
  }
}

@end