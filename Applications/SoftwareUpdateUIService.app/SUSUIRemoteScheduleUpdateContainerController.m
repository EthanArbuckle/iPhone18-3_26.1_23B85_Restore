@interface SUSUIRemoteScheduleUpdateContainerController
- (SUSUIRemoteScheduleUpdateContainerController)init;
- (id)laggardsUIViewControllerForAction:(id)a3;
@end

@implementation SUSUIRemoteScheduleUpdateContainerController

- (SUSUIRemoteScheduleUpdateContainerController)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = SUSUIRemoteScheduleUpdateContainerController;
  v4 = [(SUSUIRemoteLaggardsUIHostingController *)&v6 init];
  v8 = v4;
  objc_storeStrong(&v8, v4);
  if (v4)
  {
    [(SUSUIRemoteLaggardsUIHostingController *)v8 setUseNavigationController:1];
    [(SUSUIRemoteLaggardsUIHostingController *)v8 setAllowCancel:1];
    v5 = [(SUSUIRemoteScheduleUpdateContainerController *)v8 _remoteViewControllerProxy];
    [v5 setAllowsSiri:0];
    objc_storeStrong(&v5, 0);
  }

  v3 = v8;
  objc_storeStrong(&v8, 0);
  return v3;
}

- (id)laggardsUIViewControllerForAction:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUIRemoteLaggardsUIHostingController *)v8 setUseNavigationController:1];
  [(SUSUIRemoteLaggardsUIHostingController *)v8 setAllowCancel:1];
  v4 = [SUSUIScheduleUpdateViewController alloc];
  v5 = [location[0] descriptor];
  v6 = [(SUSUIScheduleUpdateViewController *)v4 initWithDescriptor:?];

  objc_storeStrong(location, 0);

  return v6;
}

@end