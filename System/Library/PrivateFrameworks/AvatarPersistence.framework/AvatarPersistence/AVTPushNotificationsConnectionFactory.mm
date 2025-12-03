@interface AVTPushNotificationsConnectionFactory
- (id)connectionWithEnvironmentName:(id)name namedDelegatePort:(id)port queue:(id)queue;
@end

@implementation AVTPushNotificationsConnectionFactory

- (id)connectionWithEnvironmentName:(id)name namedDelegatePort:(id)port queue:(id)queue
{
  v7 = MEMORY[0x277CEEA10];
  queueCopy = queue;
  portCopy = port;
  nameCopy = name;
  v11 = [[v7 alloc] initWithEnvironmentName:nameCopy namedDelegatePort:portCopy queue:queueCopy];

  return v11;
}

@end