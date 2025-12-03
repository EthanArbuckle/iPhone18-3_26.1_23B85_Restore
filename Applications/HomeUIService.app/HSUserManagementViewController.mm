@interface HSUserManagementViewController
- (HSUserManagementViewController)initWithRootViewController:(id)controller;
- (void)_notifyHostAndDismissWithError:(id)error;
- (void)_notifyRemoteReadyToDisplayIfNeeded;
- (void)_updateHome;
- (void)_updateViewControllers;
- (void)addPeopleViewController:(id)controller didSendInvitations:(id)invitations;
- (void)controllerDidSendInvitations:(id)invitations;
- (void)setHomeUUID:(id)d;
@end

@implementation HSUserManagementViewController

- (HSUserManagementViewController)initWithRootViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = HSUserManagementViewController;
  v3 = [(HSUserManagementViewController *)&v9 initWithRootViewController:controller];
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

- (void)setHomeUUID:(id)d
{
  objc_storeStrong(&self->_homeUUID, d);

  [(HSUserManagementViewController *)self _updateHome];
}

- (void)_updateHome
{
  homeUUID = [(HSUserManagementViewController *)self homeUUID];
  if (homeUUID)
  {
    v4 = homeUUID;
    home = [(HSUserManagementViewController *)self home];

    if (!home)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      homeManager = [(HSUserManagementViewController *)self homeManager];
      homes = [homeManager homes];

      v8 = [homes countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(homes);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            uuid = [v12 uuid];
            homeUUID2 = [(HSUserManagementViewController *)self homeUUID];
            v15 = [uuid isEqual:homeUUID2];

            if (v15)
            {
              [(HSUserManagementViewController *)self setHome:v12];
              goto LABEL_13;
            }
          }

          v9 = [homes countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  home = [(HSUserManagementViewController *)self home];
  if (home)
  {
    v4 = home;
    didNotifyFinishLoading = [(HSUserManagementViewController *)self didNotifyFinishLoading];

    if ((didNotifyFinishLoading & 1) == 0)
    {
      _remoteViewControllerProxy = [(HSUserManagementViewController *)self _remoteViewControllerProxy];
      [_remoteViewControllerProxy userManagementDidLoad];

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
  viewControllers = [(HSUserManagementViewController *)self viewControllers];
  v4 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 conformsToProtocol:&OBJC_PROTOCOL___HUUserManagementDelegate])
        {
          v9 = v8;
          home = [(HSUserManagementViewController *)self home];
          [v9 updateHome:home];
        }
      }

      v5 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)addPeopleViewController:(id)controller didSendInvitations:(id)invitations
{
  v5 = [(HSUserManagementViewController *)self topViewController:controller];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(HSUserManagementViewController *)self _notifyHostAndDismissWithError:0];
  }
}

- (void)controllerDidSendInvitations:(id)invitations
{
  topViewController = [(HSUserManagementViewController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(HSUserManagementViewController *)self _notifyHostAndDismissWithError:0];
  }
}

- (void)_notifyHostAndDismissWithError:(id)error
{
  errorCopy = error;
  _remoteViewControllerProxy = [(HSUserManagementViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy userManagementDidFinishWithError:errorCopy];
}

@end