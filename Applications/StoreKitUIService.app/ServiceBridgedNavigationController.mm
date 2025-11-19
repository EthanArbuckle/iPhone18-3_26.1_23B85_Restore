@interface ServiceBridgedNavigationController
+ (id)sharedController;
- (ServiceBridgedNavigationController)init;
- (ServiceBridgedNavigationControllerProxy)proxyHandler;
- (id)popToViewController:(id)a3 animated:(BOOL)a4;
- (id)topViewController;
- (void)removeAllContainerViewControllers;
- (void)setupWithContainerViewController:(id)a3;
- (void)synchonrizeContinainerViewControllers;
@end

@implementation ServiceBridgedNavigationController

+ (id)sharedController
{
  if (qword_1000695A0 != -1)
  {
    sub_10002C850();
  }

  v3 = qword_100069598;

  return v3;
}

- (ServiceBridgedNavigationController)init
{
  v8.receiver = self;
  v8.super_class = ServiceBridgedNavigationController;
  v2 = [(ServiceBridgedNavigationController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    containerViewControllers = v2->_containerViewControllers;
    v2->_containerViewControllers = v3;

    v5 = objc_alloc_init(ServiceBridgedNavigationItem);
    bridgedNavigationItem = v2->_bridgedNavigationItem;
    v2->_bridgedNavigationItem = v5;
  }

  return v2;
}

- (void)setupWithContainerViewController:(id)a3
{
  v4 = a3;
  [(ServiceBridgedNavigationController *)self removeAllContainerViewControllers];
  v5 = [(ServiceBridgedNavigationController *)self containerViewControllers];
  [v5 addObject:v4];
}

- (void)synchonrizeContinainerViewControllers
{
  v3 = [(ServiceBridgedNavigationController *)self containerViewControllers];
  v4 = [v3 copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 parentViewController];

        if (!v11)
        {
          v12 = [(ServiceBridgedNavigationController *)self containerViewControllers];
          [v12 removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)removeAllContainerViewControllers
{
  v2 = [(ServiceBridgedNavigationController *)self containerViewControllers];
  [v2 removeAllObjects];
}

- (id)topViewController
{
  v2 = [(ServiceBridgedNavigationController *)self containerViewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (id)popToViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  if (v5 && (-[ServiceBridgedNavigationController containerViewControllers](self, "containerViewControllers"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 indexOfObject:v5], v6, v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [(ServiceBridgedNavigationController *)self containerViewControllers];
    v9 = [v8 count] - v7 - 1;

    v10 = [(ServiceBridgedNavigationController *)self containerViewControllers];
    [v10 removeObjectsInRange:{v7 + 1, v9}];
  }

  else
  {
    [(ServiceBridgedNavigationController *)self removeAllContainerViewControllers];
    v7 = -1;
  }

  v11 = [(ServiceBridgedNavigationController *)self proxyHandler];
  [v11 popBridgedViewControllersToIndex:v7];

  return 0;
}

- (ServiceBridgedNavigationControllerProxy)proxyHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyHandler);

  return WeakRetained;
}

@end