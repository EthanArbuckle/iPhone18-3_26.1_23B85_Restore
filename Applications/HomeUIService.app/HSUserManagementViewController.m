@interface HSUserManagementViewController
- (HSUserManagementViewController)initWithRootViewController:(id)a3;
- (void)_notifyHostAndDismissWithError:(id)a3;
- (void)_notifyRemoteReadyToDisplayIfNeeded;
- (void)_updateHome;
- (void)_updateViewControllers;
- (void)addPeopleViewController:(id)a3 didSendInvitations:(id)a4;
- (void)controllerDidSendInvitations:(id)a3;
- (void)setHomeUUID:(id)a3;
@end

@implementation HSUserManagementViewController

- (HSUserManagementViewController)initWithRootViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = HSUserManagementViewController;
  v3 = [(HSUserManagementViewController *)&v9 initWithRootViewController:a3];
  if (v3)
  {
    v4 = [HMHomeManager alloc];
    v5 = +[HMHomeManagerConfiguration defaultPrivateConfiguration];
    v6 = [v4 initWithHomeMangerConfiguration:v5];
    homeManager = v3->_homeManager;
    v3->_homeManager = v6;

    [(HMHomeManager *)v3->_homeManager setDelegate:v3];
    v3->_didNotifyFinishLoading = 0;
  }

  return v3;
}

- (void)setHomeUUID:(id)a3
{
  objc_storeStrong(&self->_homeUUID, a3);

  [(HSUserManagementViewController *)self _updateHome];
}

- (void)_updateHome
{
  v3 = [(HSUserManagementViewController *)self homeUUID];
  if (v3)
  {
    v4 = v3;
    v5 = [(HSUserManagementViewController *)self home];

    if (!v5)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = [(HSUserManagementViewController *)self homeManager];
      v7 = [v6 homes];

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            v13 = [v12 uuid];
            v14 = [(HSUserManagementViewController *)self homeUUID];
            v15 = [v13 isEqual:v14];

            if (v15)
            {
              [(HSUserManagementViewController *)self setHome:v12];
              goto LABEL_13;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }

  [(HSUserManagementViewController *)self _updateViewControllers];
  [(HSUserManagementViewController *)self _notifyRemoteReadyToDisplayIfNeeded];
}

- (void)_notifyRemoteReadyToDisplayIfNeeded
{
  v3 = [(HSUserManagementViewController *)self home];
  if (v3)
  {
    v4 = v3;
    v5 = [(HSUserManagementViewController *)self didNotifyFinishLoading];

    if ((v5 & 1) == 0)
    {
      v6 = [(HSUserManagementViewController *)self _remoteViewControllerProxy];
      [v6 userManagementDidLoad];

      [(HSUserManagementViewController *)self setDidNotifyFinishLoading:1];
    }
  }
}

- (void)_updateViewControllers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(HSUserManagementViewController *)self viewControllers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 conformsToProtocol:&OBJC_PROTOCOL___HUUserManagementDelegate])
        {
          v9 = v8;
          v10 = [(HSUserManagementViewController *)self home];
          [v9 updateHome:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)addPeopleViewController:(id)a3 didSendInvitations:(id)a4
{
  v5 = [(HSUserManagementViewController *)self topViewController:a3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(HSUserManagementViewController *)self _notifyHostAndDismissWithError:0];
  }
}

- (void)controllerDidSendInvitations:(id)a3
{
  v4 = [(HSUserManagementViewController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(HSUserManagementViewController *)self _notifyHostAndDismissWithError:0];
  }
}

- (void)_notifyHostAndDismissWithError:(id)a3
{
  v4 = a3;
  v5 = [(HSUserManagementViewController *)self _remoteViewControllerProxy];
  [v5 userManagementDidFinishWithError:v4];
}

@end