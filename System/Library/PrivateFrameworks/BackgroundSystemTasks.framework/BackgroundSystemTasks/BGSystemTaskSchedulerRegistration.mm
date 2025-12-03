@interface BGSystemTaskSchedulerRegistration
- (BGSystemTaskSchedulerRegistration)initWithIdentifier:(id)identifier launchQueue:(id)queue launchHandler:(id)handler;
@end

@implementation BGSystemTaskSchedulerRegistration

- (BGSystemTaskSchedulerRegistration)initWithIdentifier:(id)identifier launchQueue:(id)queue launchHandler:(id)handler
{
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = BGSystemTaskSchedulerRegistration;
  v12 = [(BGSystemTaskSchedulerRegistration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_registeredLaunchQueue, queue);
    v14 = MEMORY[0x1B2747570](handlerCopy);
    launchHandler = v13->_launchHandler;
    v13->_launchHandler = v14;
  }

  return v13;
}

@end