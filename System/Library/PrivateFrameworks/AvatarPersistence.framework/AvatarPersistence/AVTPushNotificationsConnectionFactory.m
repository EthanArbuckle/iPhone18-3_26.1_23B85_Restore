@interface AVTPushNotificationsConnectionFactory
- (id)connectionWithEnvironmentName:(id)a3 namedDelegatePort:(id)a4 queue:(id)a5;
@end

@implementation AVTPushNotificationsConnectionFactory

- (id)connectionWithEnvironmentName:(id)a3 namedDelegatePort:(id)a4 queue:(id)a5
{
  v7 = MEMORY[0x277CEEA10];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithEnvironmentName:v10 namedDelegatePort:v9 queue:v8];

  return v11;
}

@end