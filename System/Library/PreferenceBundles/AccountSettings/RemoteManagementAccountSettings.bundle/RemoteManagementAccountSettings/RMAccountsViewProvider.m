@interface RMAccountsViewProvider
- (id)supportedAccountTypeIdentifiers;
@end

@implementation RMAccountsViewProvider

- (id)supportedAccountTypeIdentifiers
{
  v4 = ACAccountTypeIdentifierRemoteManagement;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end