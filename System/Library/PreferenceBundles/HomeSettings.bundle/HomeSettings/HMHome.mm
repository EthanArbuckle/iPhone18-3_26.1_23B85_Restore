@interface HMHome
- (BOOL)hos_isMyHome;
@end

@implementation HMHome

- (BOOL)hos_isMyHome
{
  currentUser = [(HMHome *)self currentUser];
  v4 = [(HMHome *)self homeAccessControlForUser:currentUser];
  isAdministrator = [v4 isAdministrator];

  return isAdministrator;
}

@end