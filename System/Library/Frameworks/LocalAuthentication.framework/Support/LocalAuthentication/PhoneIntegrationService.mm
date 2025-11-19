@interface PhoneIntegrationService
- (PhoneIntegrationService)initWithEnvironmentProvider:(id)a3 sessionMonitor:(id)a4 workQueue:(id)a5;
- (void)startServices;
@end

@implementation PhoneIntegrationService

- (PhoneIntegrationService)initWithEnvironmentProvider:(id)a3 sessionMonitor:(id)a4 workQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = PhoneIntegrationService;
  v11 = [(PhoneIntegrationService *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_workQueue, a5);
    objc_storeStrong(&v12->_sessionMonitor, a4);
    v13 = [LACCompanionAuthenticationCoordinator alloc];
    v14 = [v13 initWithCompanion:LACCompanionTypeVision replyQueue:v12->_workQueue];
    v15 = [LACPhoneIntegrationController alloc];
    v16 = +[LACClientInfoProvider sharedInstance];
    v17 = [v15 initWithAuthenticator:v14 clientInfoProvider:v16 environmentProvider:v8 sessionMonitor:v9 replyQueue:v12->_workQueue];
    controller = v12->_controller;
    v12->_controller = v17;
  }

  return v12;
}

- (void)startServices
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002894;
  v4[3] = &unk_100054C68;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end