@interface ASFeatureManager
+ (ASFeatureManager)sharedManager;
+ (BOOL)shouldAllowAddingNewPasswords;
- (ASFeatureManager)init;
- (BOOL)_shouldApplyPasskeyQuirks;
- (BOOL)arePasskeysDisallowedForRelyingParty:(id)a3;
- (BOOL)canRequestEnterpriseAttestationForRelyingParty:(id)a3;
- (BOOL)isClientEntitledForInternalTestingWithAuditToken:(id *)a3;
- (BOOL)isDeviceConfiguredToAllowPasskeys;
- (BOOL)shouldUseFallbackUIForRelyingParty:(id)a3;
- (id)_fetchCurrentManagedConfiguration;
- (id)entepriseAttestationIdentityPersistentReferenceForRelyingParty:(id)a3;
- (void)_fetchCurrentManagedConfiguration;
@end

@implementation ASFeatureManager

+ (BOOL)shouldAllowAddingNewPasswords
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getWBUFeatureManagerClass_softClass;
  v9 = getWBUFeatureManagerClass_softClass;
  if (!getWBUFeatureManagerClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getWBUFeatureManagerClass_block_invoke;
    v5[3] = &unk_1E81602E8;
    v5[4] = &v6;
    __getWBUFeatureManagerClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 shouldAllowAddingNewPasswords];
}

+ (ASFeatureManager)sharedManager
{
  if (sharedManager_onceToken[0] != -1)
  {
    +[ASFeatureManager sharedManager];
  }

  v3 = sharedManager_sharedInstance;

  return v3;
}

uint64_t __33__ASFeatureManager_sharedManager__block_invoke()
{
  sharedManager_sharedInstance = objc_alloc_init(ASFeatureManager);

  return MEMORY[0x1EEE66BB8]();
}

- (ASFeatureManager)init
{
  v15.receiver = self;
  v15.super_class = ASFeatureManager;
  v2 = [(ASFeatureManager *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.AuthenticationServicesCore.ASFeatureManager", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    WBSSetUpAccessToAppDataContainerWithIdentifier();
    v6 = objc_alloc(MEMORY[0x1E69C8820]);
    v7 = [MEMORY[0x1E696AAE8] safari_safariCoreBundle];
    v8 = [v7 URLForResource:@"WBSAutoFillQuirks" withExtension:@"plist"];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 safari_autoFillQuirksDownloadDirectoryURL];
    v11 = [v6 initWithBuiltInQuirksURL:v8 downloadsDirectoryURL:v10 resourceName:@"AutoFillQuirks" resourceVersion:@"1" updateDateDefaultsKey:*MEMORY[0x1E69C8CF8] updateInterval:86400.0];
    quirksManager = v2->_quirksManager;
    v2->_quirksManager = v11;

    [(WBSAutoFillQuirksManager *)v2->_quirksManager setShouldAttemptToDownloadConfiguration:0];
    [(WBSAutoFillQuirksManager *)v2->_quirksManager beginLoadingQuirksFromDisk];
    v13 = v2;
  }

  return v2;
}

- (BOOL)isDeviceConfiguredToAllowPasskeys
{
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v3 = [v2 canEvaluatePolicy:2 error:0];

  return v3;
}

- (BOOL)arePasskeysDisallowedForRelyingParty:(id)a3
{
  v4 = a3;
  if ([(ASFeatureManager *)self _shouldApplyPasskeyQuirks]&& ![(ASFeatureManager *)self shouldUseFallbackUIForRelyingParty:v4])
  {
    v5 = [(WBSAutoFillQuirksManager *)self->_quirksManager arePasskeysDisallowedForRelyingParty:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldUseFallbackUIForRelyingParty:(id)a3
{
  v4 = a3;
  if ([(ASFeatureManager *)self _shouldApplyPasskeyQuirks])
  {
    v5 = [(WBSAutoFillQuirksManager *)self->_quirksManager shouldUseFallbackUIForRelyingParty:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isClientEntitledForInternalTestingWithAuditToken:(id *)a3
{
  v4 = [MEMORY[0x1E69C8880] isInternalInstall];
  if (v4)
  {
    v6 = *a3->var0;
    v7 = *&a3->var0[4];
    LOBYTE(v4) = WBSAuditTokenHasEntitlement();
  }

  return v4;
}

- (BOOL)canRequestEnterpriseAttestationForRelyingParty:(id)a3
{
  v4 = a3;
  v5 = [(ASFeatureManager *)self _fetchCurrentManagedConfiguration];
  v6 = [v5 isConfiguredForEnterpriseAttestationForRelyingParty:v4];

  return v6;
}

- (id)entepriseAttestationIdentityPersistentReferenceForRelyingParty:(id)a3
{
  v4 = a3;
  v5 = [(ASFeatureManager *)self _fetchCurrentManagedConfiguration];
  v6 = [v5 entepriseAttestationIdentityPersistentReferenceForRelyingParty:v4];

  return v6;
}

- (BOOL)_shouldApplyPasskeyQuirks
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 BOOLForKey:@"DisablePasskeysSiteSpecificHacks"];

  return v3 ^ 1;
}

- (id)_fetchCurrentManagedConfiguration
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 as_authenticationServicesManagedConfigurationURL];
  v9 = 0;
  v4 = [_TtC26AuthenticationServicesCore22ASManagedConfiguration loadFromDiskWithPlistURL:v3 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(ASFeatureManager *)v7 _fetchCurrentManagedConfiguration];
    }
  }

  return v4;
}

- (void)_fetchCurrentManagedConfiguration
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_fault_impl(&dword_1C20AD000, v3, OS_LOG_TYPE_FAULT, "Could not not load managed configuration: %{public}@.", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end