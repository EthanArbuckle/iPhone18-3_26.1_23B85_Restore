@interface BuddyActivationFlow
+ (BOOL)controllerNeedsToRun;
+ (id)allowedFlowItems;
- (ActivationController)activationController;
- (BuddyActivationFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (id)_activationController;
- (void)configureFlowItem:(id)item;
- (void)flowItemDone:(id)done nextItem:(id)item;
- (void)presentWiFiPaneForFlowItem:(id)item;
@end

@implementation BuddyActivationFlow

- (BuddyActivationFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v16 = 0;
  objc_storeStrong(&v16, delegate);
  v15 = 0;
  objc_storeStrong(&v15, starter);
  v14 = 0;
  objc_storeStrong(&v14, injector);
  v9 = selfCopy;
  selfCopy = 0;
  v13.receiver = v9;
  v13.super_class = BuddyActivationFlow;
  selfCopy = [(BuddyActivationFlow *)&v13 initWithNavigationController:location[0] flowDelegate:v16 flowStarter:v15 dependencyInjector:v14];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v19[3] = objc_opt_class();
    v19[4] = objc_opt_class();
    v19[5] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v19 count:6];
    [selfCopy setClassList:v10];
  }

  v11 = selfCopy;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

+ (id)allowedFlowItems
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:6];
}

- (void)configureFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v10.receiver = selfCopy;
  v10.super_class = BuddyActivationFlow;
  [(BuddyActivationFlow *)&v10 configureFlowItem:location[0]];
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyActivationRestarting])
  {
    v9 = location[0];
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_1000A1034;
    v7 = &unk_10032B0D0;
    v8 = selfCopy;
    [v9 setRestartActivation:&v3];
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done nextItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  v17 = 0;
  objc_storeStrong(&v17, item);
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v21[2] = objc_opt_class();
  v21[3] = objc_opt_class();
  v16 = [NSArray arrayWithObjects:v21 count:4];
  if (!v17 || ([v16 containsObject:objc_opt_class()] & 1) == 0)
  {
    v15 = objc_alloc_init(NSMutableArray);
    memset(__b, 0, sizeof(__b));
    controllers = [(BuddyActivationFlow *)selfCopy controllers];
    v6 = [controllers countByEnumeratingWithState:__b objects:v20 count:16];
    if (v6)
    {
      v7 = *__b[2];
      do
      {
        for (i = 0; i < v6; ++i)
        {
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(controllers);
          }

          v14 = *(__b[1] + 8 * i);
          if ([v16 containsObject:objc_opt_class()])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v15 addObject:v14];
            }

            else if (objc_opt_respondsToSelector())
            {
              v9 = v15;
              viewController = [v14 viewController];
              [v9 addObject:viewController];
            }
          }
        }

        v6 = [controllers countByEnumeratingWithState:__b objects:v20 count:16];
      }

      while (v6);
    }

    navigationFlowDelegate = [(BuddyActivationFlow *)selfCopy navigationFlowDelegate];
    [navigationFlowDelegate removeViewControllersOnNextPush:v15];

    objc_storeStrong(&v15, 0);
  }

  v12.receiver = selfCopy;
  v12.super_class = BuddyActivationFlow;
  [(BuddyActivationFlow *)&v12 flowItemDone:location[0] nextItem:v17];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

+ (BOOL)controllerNeedsToRun
{
  v2 = [BuddyActivationConfiguration currentConfiguration:a2];
  v3 = [v2 isActivated] ^ 1;

  return v3 & 1;
}

- (void)presentWiFiPaneForFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  flowItemDelegate = [(BuddyActivationFlow *)selfCopy flowItemDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    flowItemDelegate2 = [(BuddyActivationFlow *)selfCopy flowItemDelegate];
    [flowItemDelegate2 presentWiFiPaneForFlowItem:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)_activationController
{
  selfCopy = self;
  v11 = a2;
  memset(__b, 0, sizeof(__b));
  controllers = [(BuddyActivationFlow *)selfCopy controllers];
  v3 = [controllers countByEnumeratingWithState:__b objects:v14 count:16];
  if (v3)
  {
    v4 = *__b[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(controllers);
        }

        v10 = *(__b[1] + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v10;
          v8 = 1;
          goto LABEL_11;
        }
      }

      v3 = [controllers countByEnumeratingWithState:__b objects:v14 count:16];
    }

    while (v3);
  }

  v8 = 0;
LABEL_11:

  if (!v8)
  {
    v13 = 0;
  }

  v6 = v13;

  return v6;
}

- (ActivationController)activationController
{
  WeakRetained = objc_loadWeakRetained(&self->_activationController);

  return WeakRetained;
}

@end