@interface _BGTaskSchedulerRegistration
- (_BGTaskSchedulerRegistration)initWithIdentifier:(id)identifier queue:(id)queue launchHandler:(id)handler;
@end

@implementation _BGTaskSchedulerRegistration

- (_BGTaskSchedulerRegistration)initWithIdentifier:(id)identifier queue:(id)queue launchHandler:(id)handler
{
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = _BGTaskSchedulerRegistration;
  v12 = [(_BGTaskSchedulerRegistration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_queue, queue);
    v14 = MEMORY[0x1B26EAFA0](handlerCopy);
    launchHandler = v13->_launchHandler;
    v13->_launchHandler = v14;
  }

  return v13;
}

@end