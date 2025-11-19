@interface HMHome
- (BOOL)hos_isMyHome;
@end

@implementation HMHome

- (BOOL)hos_isMyHome
{
  v3 = [(HMHome *)self currentUser];
  v4 = [(HMHome *)self homeAccessControlForUser:v3];
  v5 = [v4 isAdministrator];

  return v5;
}

@end