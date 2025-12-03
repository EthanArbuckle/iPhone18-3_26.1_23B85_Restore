@interface COSBridgeRootController
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSBridgeRootController

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  controllersCopy = controllers;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [controllersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(controllersCopy);
        }

        [(COSBridgeRootController *)self setupControllerForToolbar:*(*(&v14 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [controllersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13.receiver = self;
  v13.super_class = COSBridgeRootController;
  [(COSBridgeRootController *)&v13 setViewControllers:controllersCopy animated:animatedCopy];
  firstObject = [controllersCopy firstObject];
  if ([firstObject conformsToProtocol:&OBJC_PROTOCOL___PSController])
  {
    rootListController = [(COSBridgeRootController *)self rootListController];
    [firstObject setParentController:rootListController];
  }
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [(COSBridgeRootController *)self setupControllerForToolbar:controllerCopy];
  if (animatedCopy)
  {
    v10.receiver = self;
    v10.super_class = COSBridgeRootController;
    [(COSBridgeRootController *)&v10 pushViewController:controllerCopy animated:1];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10009ACCC;
    v7[3] = &unk_100268358;
    v8 = controllerCopy;
    selfCopy = self;
    [UIViewController _performWithoutDeferringTransitions:v7];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = COSBridgeRootController;
  [(COSBridgeRootController *)&v4 viewWillAppear:appear];
  [(COSBridgeRootController *)self setIsPresentedOnParentViewController:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = COSBridgeRootController;
  [(COSBridgeRootController *)&v6 viewDidDisappear:disappear];
  if ([(COSBridgeRootController *)self isMovingFromParentViewController])
  {
    [(COSBridgeRootController *)self setIsPresentedOnParentViewController:0];
    v4 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009AE20;
    block[3] = &unk_1002682F0;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

@end