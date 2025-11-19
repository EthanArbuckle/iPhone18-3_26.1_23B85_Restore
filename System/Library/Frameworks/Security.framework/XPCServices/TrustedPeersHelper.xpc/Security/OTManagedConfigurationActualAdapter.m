@interface OTManagedConfigurationActualAdapter
- (BOOL)isCloudKeychainSyncAllowed;
@end

@implementation OTManagedConfigurationActualAdapter

- (BOOL)isCloudKeychainSyncAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 isCloudKeychainSyncAllowed];

  return v3;
}

@end