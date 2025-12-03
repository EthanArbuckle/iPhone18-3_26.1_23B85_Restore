@interface OnenessService
- (OnenessService)initWithEnvironmentProvider:(id)provider sessionMonitor:(id)monitor uiController:(id)controller workQueue:(id)queue;
- (void)startServices;
@end

@implementation OnenessService

- (OnenessService)initWithEnvironmentProvider:(id)provider sessionMonitor:(id)monitor uiController:(id)controller workQueue:(id)queue
{
  providerCopy = provider;
  monitorCopy = monitor;
  controllerCopy = controller;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = OnenessService;
  v14 = [(OnenessService *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_workQueue, queue);
    objc_storeStrong(&v15->_sessionMonitor, monitor);
    v16 = [LACCompanionAuthenticationCoordinator alloc];
    v17 = [v16 initWithCompanion:LACCompanionTypeMac replyQueue:v15->_workQueue];
    v18 = [[LACUserInterfacePresenter alloc] initWithReplyQueue:v15->_workQueue uiController:controllerCopy];
    v19 = [LACOnenessController alloc];
    v20 = +[LACClientInfoProvider sharedInstance];
    v21 = [v19 initWithAuthenticator:v17 clientInfoProvider:v20 environmentProvider:providerCopy sessionMonitor:monitorCopy uiPresenter:v18 replyQueue:v15->_workQueue];
    controller = v15->_controller;
    v15->_controller = v21;
  }

  return v15;
}

- (void)startServices
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E334;
  v4[3] = &unk_100054C68;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end