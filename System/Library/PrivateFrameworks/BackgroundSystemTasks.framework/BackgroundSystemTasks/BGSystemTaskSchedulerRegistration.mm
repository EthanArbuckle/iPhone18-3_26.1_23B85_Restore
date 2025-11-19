@interface BGSystemTaskSchedulerRegistration
- (BGSystemTaskSchedulerRegistration)initWithIdentifier:(id)a3 launchQueue:(id)a4 launchHandler:(id)a5;
@end

@implementation BGSystemTaskSchedulerRegistration

- (BGSystemTaskSchedulerRegistration)initWithIdentifier:(id)a3 launchQueue:(id)a4 launchHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = BGSystemTaskSchedulerRegistration;
  v12 = [(BGSystemTaskSchedulerRegistration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_registeredLaunchQueue, a4);
    v14 = MEMORY[0x1B2747570](v11);
    launchHandler = v13->_launchHandler;
    v13->_launchHandler = v14;
  }

  return v13;
}

@end