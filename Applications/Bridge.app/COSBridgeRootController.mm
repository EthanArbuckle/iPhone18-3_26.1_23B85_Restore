@interface COSBridgeRootController
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSBridgeRootController

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(COSBridgeRootController *)self setupControllerForToolbar:*(*(&v14 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13.receiver = self;
  v13.super_class = COSBridgeRootController;
  [(COSBridgeRootController *)&v13 setViewControllers:v6 animated:v4];
  v11 = [v6 firstObject];
  if ([v11 conformsToProtocol:&OBJC_PROTOCOL___PSController])
  {
    v12 = [(COSBridgeRootController *)self rootListController];
    [v11 setParentController:v12];
  }
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(COSBridgeRootController *)self setupControllerForToolbar:v6];
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = COSBridgeRootController;
    [(COSBridgeRootController *)&v10 pushViewController:v6 animated:1];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10009ACCC;
    v7[3] = &unk_100268358;
    v8 = v6;
    v9 = self;
    [UIViewController _performWithoutDeferringTransitions:v7];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSBridgeRootController;
  [(COSBridgeRootController *)&v4 viewWillAppear:a3];
  [(COSBridgeRootController *)self setIsPresentedOnParentViewController:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = COSBridgeRootController;
  [(COSBridgeRootController *)&v6 viewDidDisappear:a3];
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