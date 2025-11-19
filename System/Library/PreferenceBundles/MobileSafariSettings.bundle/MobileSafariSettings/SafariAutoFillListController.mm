@interface SafariAutoFillListController
- (BOOL)isKeychainSyncEnabled;
- (void)isKeychainSyncEnabled;
@end

@implementation SafariAutoFillListController

- (BOOL)isKeychainSyncEnabled
{
  v2 = objc_alloc_init(OTConfigurationContext);
  [v2 setContext:OTDefaultContext];
  v3 = objc_alloc_init(ACAccountStore);
  v4 = [v3 aa_primaryAppleAccount];
  v5 = [v4 aa_altDSID];

  [v2 setAltDSID:v5];
  v6 = [[OTClique alloc] initWithContextData:v2];
  v11 = 0;
  v7 = [v6 fetchUserControllableViewsSyncingEnabled:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SafariAutoFillListController *)v9 isKeychainSyncEnabled];
    }
  }

  return v7;
}

- (void)isKeychainSyncEnabled
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Failed to read keychain sync status with error: %{public}@", &v5, 0xCu);
}

@end