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
  aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];

  [v2 setAltDSID:aa_altDSID];
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
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = safari_privacyPreservingDescription;
  _os_log_error_impl(&dword_0, selfCopy, OS_LOG_TYPE_ERROR, "Failed to read keychain sync status with error: %{public}@", &v5, 0xCu);
}

@end