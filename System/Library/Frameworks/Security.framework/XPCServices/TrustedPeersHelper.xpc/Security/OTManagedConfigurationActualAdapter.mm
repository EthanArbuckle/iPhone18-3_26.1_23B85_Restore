@interface OTManagedConfigurationActualAdapter
- (BOOL)isCloudKeychainSyncAllowed;
@end

@implementation OTManagedConfigurationActualAdapter

- (BOOL)isCloudKeychainSyncAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  isCloudKeychainSyncAllowed = [v2 isCloudKeychainSyncAllowed];

  return isCloudKeychainSyncAllowed;
}

@end