@interface BuddyActivationFlow
+ (BOOL)controllerNeedsToRun;
+ (id)allowedFlowItems;
- (ActivationController)activationController;
- (BuddyActivationFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6;
- (id)_activationController;
- (void)configureFlowItem:(id)a3;
- (void)flowItemDone:(id)a3 nextItem:(id)a4;
- (void)presentWiFiPaneForFlowItem:(id)a3;
@end

@implementation BuddyActivationFlow

- (BuddyActivationFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v9 = v18;
  v18 = 0;
  v13.receiver = v9;
  v13.super_class = BuddyActivationFlow;
  v18 = [(BuddyActivationFlow *)&v13 initWithNavigationController:location[0] flowDelegate:v16 flowStarter:v15 dependencyInjector:v14];
  objc_storeStrong(&v18, v18);
  if (v18)
  {
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v19[3] = objc_opt_class();
    v19[4] = objc_opt_class();
    v19[5] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v19 count:6];
    [v18 setClassList:v10];
  }

  v11 = v18;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
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

- (void)configureFlowItem:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10.receiver = v12;
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
    v8 = v12;
    [v9 setRestartActivation:&v3];
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)a3 nextItem:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v21[2] = objc_opt_class();
  v21[3] = objc_opt_class();
  v16 = [NSArray arrayWithObjects:v21 count:4];
  if (!v17 || ([v16 containsObject:objc_opt_class()] & 1) == 0)
  {
    v15 = objc_alloc_init(NSMutableArray);
    memset(__b, 0, sizeof(__b));
    v5 = [(BuddyActivationFlow *)v19 controllers];
    v6 = [v5 countByEnumeratingWithState:__b objects:v20 count:16];
    if (v6)
    {
      v7 = *__b[2];
      do
      {
        for (i = 0; i < v6; ++i)
        {
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(v5);
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
              v10 = [v14 viewController];
              [v9 addObject:v10];
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:__b objects:v20 count:16];
      }

      while (v6);
    }

    v11 = [(BuddyActivationFlow *)v19 navigationFlowDelegate];
    [v11 removeViewControllersOnNextPush:v15];

    objc_storeStrong(&v15, 0);
  }

  v12.receiver = v19;
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

- (void)presentWiFiPaneForFlowItem:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyActivationFlow *)v7 flowItemDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(BuddyActivationFlow *)v7 flowItemDelegate];
    [v5 presentWiFiPaneForFlowItem:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)_activationController
{
  v12 = self;
  v11 = a2;
  memset(__b, 0, sizeof(__b));
  v2 = [(BuddyActivationFlow *)v12 controllers];
  v3 = [v2 countByEnumeratingWithState:__b objects:v14 count:16];
  if (v3)
  {
    v4 = *__b[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(v2);
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

      v3 = [v2 countByEnumeratingWithState:__b objects:v14 count:16];
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