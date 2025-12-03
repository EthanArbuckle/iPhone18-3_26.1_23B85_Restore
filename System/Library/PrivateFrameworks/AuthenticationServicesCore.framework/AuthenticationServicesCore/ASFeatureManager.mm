@interface ASFeatureManager
+ (ASFeatureManager)sharedManager;
+ (BOOL)shouldAllowAddingNewPasswords;
- (ASFeatureManager)init;
- (BOOL)_shouldApplyPasskeyQuirks;
- (BOOL)arePasskeysDisallowedForRelyingParty:(id)party;
- (BOOL)canRequestEnterpriseAttestationForRelyingParty:(id)party;
- (BOOL)isClientEntitledForInternalTestingWithAuditToken:(id *)token;
- (BOOL)isDeviceConfiguredToAllowPasskeys;
- (BOOL)shouldUseFallbackUIForRelyingParty:(id)party;
- (id)_fetchCurrentManagedConfiguration;
- (id)entepriseAttestationIdentityPersistentReferenceForRelyingParty:(id)party;
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
    safari_safariCoreBundle = [MEMORY[0x1E696AAE8] safari_safariCoreBundle];
    v8 = [safari_safariCoreBundle URLForResource:@"WBSAutoFillQuirks" withExtension:@"plist"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    safari_autoFillQuirksDownloadDirectoryURL = [defaultManager safari_autoFillQuirksDownloadDirectoryURL];
    v11 = [v6 initWithBuiltInQuirksURL:v8 downloadsDirectoryURL:safari_autoFillQuirksDownloadDirectoryURL resourceName:@"AutoFillQuirks" resourceVersion:@"1" updateDateDefaultsKey:*MEMORY[0x1E69C8CF8] updateInterval:86400.0];
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

- (BOOL)arePasskeysDisallowedForRelyingParty:(id)party
{
  partyCopy = party;
  if ([(ASFeatureManager *)self _shouldApplyPasskeyQuirks]&& ![(ASFeatureManager *)self shouldUseFallbackUIForRelyingParty:partyCopy])
  {
    v5 = [(WBSAutoFillQuirksManager *)self->_quirksManager arePasskeysDisallowedForRelyingParty:partyCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldUseFallbackUIForRelyingParty:(id)party
{
  partyCopy = party;
  if ([(ASFeatureManager *)self _shouldApplyPasskeyQuirks])
  {
    v5 = [(WBSAutoFillQuirksManager *)self->_quirksManager shouldUseFallbackUIForRelyingParty:partyCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isClientEntitledForInternalTestingWithAuditToken:(id *)token
{
  isInternalInstall = [MEMORY[0x1E69C8880] isInternalInstall];
  if (isInternalInstall)
  {
    v6 = *token->var0;
    v7 = *&token->var0[4];
    LOBYTE(isInternalInstall) = WBSAuditTokenHasEntitlement();
  }

  return isInternalInstall;
}

- (BOOL)canRequestEnterpriseAttestationForRelyingParty:(id)party
{
  partyCopy = party;
  _fetchCurrentManagedConfiguration = [(ASFeatureManager *)self _fetchCurrentManagedConfiguration];
  v6 = [_fetchCurrentManagedConfiguration isConfiguredForEnterpriseAttestationForRelyingParty:partyCopy];

  return v6;
}

- (id)entepriseAttestationIdentityPersistentReferenceForRelyingParty:(id)party
{
  partyCopy = party;
  _fetchCurrentManagedConfiguration = [(ASFeatureManager *)self _fetchCurrentManagedConfiguration];
  v6 = [_fetchCurrentManagedConfiguration entepriseAttestationIdentityPersistentReferenceForRelyingParty:partyCopy];

  return v6;
}

- (BOOL)_shouldApplyPasskeyQuirks
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults BOOLForKey:@"DisablePasskeysSiteSpecificHacks"];

  return v3 ^ 1;
}

- (id)_fetchCurrentManagedConfiguration
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  as_authenticationServicesManagedConfigurationURL = [defaultManager as_authenticationServicesManagedConfigurationURL];
  v9 = 0;
  v4 = [_TtC26AuthenticationServicesCore22ASManagedConfiguration loadFromDiskWithPlistURL:as_authenticationServicesManagedConfigurationURL error:&v9];
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
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = safari_privacyPreservingDescription;
  _os_log_fault_impl(&dword_1C20AD000, selfCopy, OS_LOG_TYPE_FAULT, "Could not not load managed configuration: %{public}@.", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end