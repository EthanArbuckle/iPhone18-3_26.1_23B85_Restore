@interface OnenessService
- (OnenessService)initWithEnvironmentProvider:(id)a3 sessionMonitor:(id)a4 uiController:(id)a5 workQueue:(id)a6;
- (void)startServices;
@end

@implementation OnenessService

- (OnenessService)initWithEnvironmentProvider:(id)a3 sessionMonitor:(id)a4 uiController:(id)a5 workQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = OnenessService;
  v14 = [(OnenessService *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_workQueue, a6);
    objc_storeStrong(&v15->_sessionMonitor, a4);
    v16 = [LACCompanionAuthenticationCoordinator alloc];
    v17 = [v16 initWithCompanion:LACCompanionTypeMac replyQueue:v15->_workQueue];
    v18 = [[LACUserInterfacePresenter alloc] initWithReplyQueue:v15->_workQueue uiController:v12];
    v19 = [LACOnenessController alloc];
    v20 = +[LACClientInfoProvider sharedInstance];
    v21 = [v19 initWithAuthenticator:v17 clientInfoProvider:v20 environmentProvider:v10 sessionMonitor:v11 uiPresenter:v18 replyQueue:v15->_workQueue];
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