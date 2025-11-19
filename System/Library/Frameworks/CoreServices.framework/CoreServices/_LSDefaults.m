@interface _LSDefaults
+ (id)sharedInstance;
- (BOOL)abortIfMayNotMapDatabase;
- (BOOL)alwaysUseDebugOpenWithMenus;
- (BOOL)isRegionChina;
- (BOOL)isSystemServer;
- (BOOL)isUserServer;
- (BOOL)markLocalizationsStoredInDatabase;
- (NSArray)preferredLocalizations;
- (NSData)HMACSecret;
- (NSURL)appMarketplacesPreferencesStateURL;
- (NSURL)appProtectionStoreFileURL;
- (NSURL)databaseContainerDirectoryURL;
- (NSURL)databaseStoreFileURL;
- (NSURL)dbRecoveryFileURL;
- (NSURL)dbRemoveDBOnStartupURL;
- (NSURL)dbSentinelFileURL;
- (NSURL)dbSyncInterruptedFileURL;
- (NSURL)defaultAppQueryStateURL;
- (NSURL)identifiersFileURL;
- (NSURL)installJournalDirectoryURL;
- (NSURL)preSydroFSecurePreferencesFileURL;
- (NSURL)preferencesFileURL;
- (NSURL)progressProportionsStateURL;
- (NSURL)queriedSchemesMapFileURL;
- (NSURL)securePreferencesFileURL;
- (NSURL)settingsStoreFileURL;
- (NSURL)specialAppEligibilityStateURL;
- (NSURL)systemContainerURL;
- (NSURL)systemContentDatabaseStoreFileURL;
- (NSURL)systemGroupContainerURL;
- (NSURL)unremappableDatabaseStoreFileURL;
- (NSURL)userContainerURL;
- (_LSDefaults)init;
- (id)classesWithNameForXCTests:(const char *)a3;
- (id)darwinNotificationNameForBaseName:(id)a3 optionalSessionKey:(LSSessionKey *)a4;
- (id)databaseContainerURL;
- (id)databaseStoreFileURLWithUID:(unsigned int)a3;
- (id)databaseUpdateNotificationNameForSessionKey:(LSSessionKey)a3;
- (id)debugDescription;
- (id)serviceNameForConnectionType:(unsigned __int16)a3 lightweightSystemService:(BOOL)a4;
- (id)settingsUpdateNotificationNameForUserID:(unsigned int)a3;
- (id)simulatorRootURL;
- (id)simulatorRuntimeBuildVersion;
- (id)simulatorRuntimeVersion;
- (id)simulatorSharedResourcesDirectoryURL;
- (unsigned)currentSchemaVersion;
- (unsigned)proxyUIDForCurrentEffectiveUID;
- (unsigned)proxyUIDForUID:(unsigned int)a3;
@end

@implementation _LSDefaults

- (unsigned)proxyUIDForCurrentEffectiveUID
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___LSDefaults_proxyUIDForCurrentEffectiveUID__block_invoke;
  block[3] = &unk_1E6A195E0;
  block[4] = self;
  if (proxyUIDForCurrentEffectiveUID_once != -1)
  {
    dispatch_once(&proxyUIDForCurrentEffectiveUID_once, block);
  }

  if (proxyUIDForCurrentEffectiveUID_hasEUID == 1)
  {
    v3 = proxyUIDForCurrentEffectiveUID_euid;
  }

  else
  {
    v3 = _CFGetEUID();
  }

  return [(_LSDefaults *)self proxyUIDForUID:v3];
}

- (BOOL)markLocalizationsStoredInDatabase
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48___LSDefaults_markLocalizationsStoredInDatabase__block_invoke;
  block[3] = &unk_1E6A195E0;
  block[4] = self;
  if (markLocalizationsStoredInDatabase_once != -1)
  {
    dispatch_once(&markLocalizationsStoredInDatabase_once, block);
  }

  return markLocalizationsStoredInDatabase_result;
}

- (NSArray)preferredLocalizations
{
  if (preferredLocalizations_once != -1)
  {
    [_LSDefaults preferredLocalizations];
  }

  if (![(_LSDefaults *)self isInXCTestRigInsecure]|| (+[_LSStringLocalizer preferredLocalizationsForXCTests], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (preferredLocalizations_useUserLangList == 1)
    {
      if ([(_LSDefaults *)self proxyUIDForCurrentEffectiveUID])
      {
        v3 = [MEMORY[0x1E695DF58] preferredLanguages];
      }

      else
      {
        v3 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
      }
    }

    else
    {
      if (preferredLocalizations_once_251 != -1)
      {
        [_LSDefaults preferredLocalizations];
      }

      v3 = preferredLocalizations_bundleLocalizations;
    }
  }

  return v3;
}

- (_LSDefaults)init
{
  v16.receiver = self;
  v16.super_class = _LSDefaults;
  v2 = [(_LSDefaults *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.launchservices.defaults", v3);
    ivarQueue = v2->_ivarQueue;
    v2->_ivarQueue = v4;

    systemContainerURL = v2->_systemContainerURL;
    v2->_systemContainerURL = 0;

    userContainerURL = v2->_userContainerURL;
    v2->_userContainerURL = 0;

    systemGroupContainerURL = v2->_systemGroupContainerURL;
    v2->_systemGroupContainerURL = 0;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    darwinNotificationNames = v2->_darwinNotificationNames;
    v2->_darwinNotificationNames = v9;

    v2->_darwinNotificationNamesUID = _CFGetEUID();
    v2->_darwinNotificationNamesLock._os_unfair_lock_opaque = 0;
    v11 = getenv("RUNNING_IN_SYNC_BUBBLE");
    if (v11 && atoi(v11) == 1)
    {
      _LSDefaultsInSyncBubble_inSyncBubble = 1;
    }

    v2->_inSyncBubble = _LSDefaultsInSyncBubble_inSyncBubble;
    if (_LSDefaultsInXCTestRigInsecure_once != -1)
    {
      [_LSDefaults init];
    }

    v2->_inXCTestRigInsecure = _LSDefaultsInXCTestRigInsecure_inXCTestRigInsecure;
    if (_LSDefaultsIsAppleInternal_once != -1)
    {
      [_LSDefaults init];
    }

    v2->_appleInternal = _LSDefaultsIsAppleInternal_appleInternal;
    if (_LSDefaultsHasServer_onceToken != -1)
    {
      [_LSDefaults init];
    }

    v2->_hasServer = (_LSDefaultsHasServer_hasServer & 1) == 0;
    v12 = _CFGetEUID() - 100 <= 0xFFFFFF99 && getenv("LS_NO_PERSISTENT_PREFS") == 0;
    v2->_hasPersistentPreferences = v12;
    v2->_inEducationMode = 0;
    v13 = [(objc_class *)getUMUserManagerClass_0() sharedManager];
    v14 = [v13 isSharedIPad];

    if (v14)
    {
      v2->_inEducationMode = 1;
    }

    v2->_usingEphemeralStorage = os_variant_uses_ephemeral_storage();
  }

  return v2;
}

- (NSURL)settingsStoreFileURL
{
  v2 = [(_LSDefaults *)self userContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.LaunchServices.SettingsStore.sql" isDirectory:0];

  return v3;
}

- (NSURL)userContainerURL
{
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31___LSDefaults_userContainerURL__block_invoke;
  v5[3] = &unk_1E6A1BCA0;
  v5[4] = self;
  v3 = _LSLazyLoadObjectOnQueue(&self->_userContainerURL, ivarQueue, v5);

  return v3;
}

- (unsigned)currentSchemaVersion
{
  if (currentSchemaVersion_sOnce != -1)
  {
    [_LSDefaults currentSchemaVersion];
  }

  if (currentSchemaVersion_sResult)
  {
    return 18874393;
  }

  else
  {
    return 0;
  }
}

- (NSData)HMACSecret
{
  _LSAssertRunningInServer("[_LSDefaults HMACSecret]");
  ivarQueue = self->_ivarQueue;

  return _LSLazyLoadObjectOnQueue(&self->_hmacSecret, ivarQueue, &__block_literal_global_274);
}

+ (id)sharedInstance
{
  __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_IS_USING_PRIVATE_SYMBOLS__();
  if (dyld_get_program_sdk_version() >= 0xD0000)
  {
    [a1 doesNotRecognizeSelector:a2];
  }

  if (__LSDefaultsGetSharedInstance_onceToken != -1)
  {
    __LSDefaultsGetSharedInstance_cold_1();
  }

  v4 = __LSDefaultsGetSharedInstance_sharedInstance;

  return v4;
}

- (NSURL)systemContainerURL
{
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33___LSDefaults_systemContainerURL__block_invoke;
  v5[3] = &unk_1E6A1BCA0;
  v5[4] = self;
  v3 = _LSLazyLoadObjectOnQueue(&self->_systemContainerURL, ivarQueue, v5);

  return v3;
}

- (NSURL)systemGroupContainerURL
{
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38___LSDefaults_systemGroupContainerURL__block_invoke;
  v5[3] = &unk_1E6A1BCA0;
  v5[4] = self;
  v3 = _LSLazyLoadObjectOnQueue(&self->_systemGroupContainerURL, ivarQueue, v5);

  return v3;
}

- (NSURL)databaseContainerDirectoryURL
{
  v3 = [(_LSDefaults *)self proxyUIDForCurrentEffectiveUID];

  return [(_LSDefaults *)self databaseContainerURLWithUID:v3];
}

- (NSURL)databaseStoreFileURL
{
  v3 = [(_LSDefaults *)self proxyUIDForCurrentEffectiveUID];

  return [(_LSDefaults *)self databaseStoreFileURLWithUID:v3];
}

- (NSURL)systemContentDatabaseStoreFileURL
{
  v3 = [(_LSDefaults *)self proxyUIDForCurrentEffectiveUID];

  return [(_LSDefaults *)self systemContentDatabaseStoreFileURLWithUID:v3];
}

- (NSURL)unremappableDatabaseStoreFileURL
{
  v2 = [(_LSDefaults *)self databaseStoreFileURL];
  v3 = [v2 URLByAppendingPathExtension:@"unremappable"];

  return v3;
}

- (id)databaseContainerURL
{
  if ([(_LSDefaults *)self isInEducationMode]|| [(_LSDefaults *)self isLightweightSystemServer])
  {
    v3 = [(_LSDefaults *)self systemContainerURL];
  }

  else
  {
    v3 = [(_LSDefaults *)self userContainerURL];
  }

  return v3;
}

- (id)databaseStoreFileURLWithUID:(unsigned int)a3
{
  v5 = [(_LSDefaults *)self databaseContainerURLWithUID:?];
  if (!v5)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v6 = getenv("LS_NAME_PREFIX");
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "com.apple.LaunchServices";
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%03llu-v2.csstore", v7, -[_LSDefaults currentSchemaVersion](self, "currentSchemaVersion")];
  v9 = v8;
  if (!a3)
  {
    v11 = [@"System-" stringByAppendingString:v8];

    v9 = v11;
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = [v5 URLByAppendingPathComponent:v9 isDirectory:0];
LABEL_11:

LABEL_12:

  return v10;
}

- (NSURL)preferencesFileURL
{
  v2 = [(_LSDefaults *)self userContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.LaunchServices.plist" isDirectory:0];

  return v3;
}

- (NSURL)preSydroFSecurePreferencesFileURL
{
  v2 = [(_LSDefaults *)self userContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.launchservices.securepreferences.plist" isDirectory:0];

  return v3;
}

- (NSURL)securePreferencesFileURL
{
  if ([(_LSDefaults *)self isInEducationMode])
  {
    [(_LSDefaults *)self userContainerURL];
  }

  else
  {
    [(_LSDefaults *)self systemContainerBaseURL];
  }
  v3 = ;
  v4 = [v3 URLByAppendingPathComponent:@"com.apple.launchservices.securepreferences.plist" isDirectory:0];

  return v4;
}

- (NSURL)appProtectionStoreFileURL
{
  v2 = [(_LSDefaults *)self databaseContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.LaunchServicesAppProtectionStore.plist" isDirectory:0];

  return v3;
}

- (NSURL)queriedSchemesMapFileURL
{
  v2 = [(_LSDefaults *)self userContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.lsdschemes.plist" isDirectory:0];

  return v3;
}

- (NSURL)identifiersFileURL
{
  v2 = [(_LSDefaults *)self systemGroupContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.lsdidentifiers.plist" isDirectory:0];

  return v3;
}

- (NSURL)dbRemoveDBOnStartupURL
{
  v2 = [(_LSDefaults *)self databaseContainerDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.launchservices.recreate" isDirectory:0];

  return v3;
}

- (NSURL)dbSentinelFileURL
{
  v2 = [(_LSDefaults *)self databaseContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.LaunchServices.dirty" isDirectory:0];

  return v3;
}

- (NSURL)installJournalDirectoryURL
{
  v2 = [(_LSDefaults *)self databaseContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.LaunchServices.InstallJournal" isDirectory:1];

  return v3;
}

- (NSURL)dbRecoveryFileURL
{
  v2 = [(_LSDefaults *)self databaseContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.LaunchServices.error" isDirectory:0];

  return v3;
}

- (NSURL)dbSyncInterruptedFileURL
{
  v2 = [(_LSDefaults *)self databaseContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.LaunchServices.syncInterrupted"];

  return v3;
}

- (NSURL)progressProportionsStateURL
{
  v2 = [(_LSDefaults *)self userContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"ProgressProporitions.plist" isDirectory:0];

  return v3;
}

- (NSURL)appMarketplacesPreferencesStateURL
{
  if ([(_LSDefaults *)self isInEducationMode])
  {
    [(_LSDefaults *)self userContainerURL];
  }

  else
  {
    [(_LSDefaults *)self systemContainerBaseURL];
  }
  v3 = ;
  v4 = [v3 URLByAppendingPathComponent:@"com.apple.launchservices.appmarketplaces.plist" isDirectory:0];

  return v4;
}

- (NSURL)specialAppEligibilityStateURL
{
  if ([(_LSDefaults *)self isInEducationMode])
  {
    [(_LSDefaults *)self userContainerURL];
  }

  else
  {
    [(_LSDefaults *)self systemContainerBaseURL];
  }
  v3 = ;
  v4 = [v3 URLByAppendingPathComponent:@"SpecialAppEligibilityState.plist" isDirectory:0];

  return v4;
}

- (NSURL)defaultAppQueryStateURL
{
  if ([(_LSDefaults *)self isInEducationMode])
  {
    [(_LSDefaults *)self userContainerURL];
  }

  else
  {
    [(_LSDefaults *)self systemContainerBaseURL];
  }
  v3 = ;
  v4 = [v3 URLByAppendingPathComponent:@"DefaultAppQueryState.plist" isDirectory:0];

  return v4;
}

- (id)simulatorRootURL
{
  if (simulatorRootURL_once != -1)
  {
    [_LSDefaults simulatorRootURL];
  }

  v3 = simulatorRootURL_result;

  return v3;
}

- (id)simulatorRuntimeVersion
{
  if (simulatorRuntimeVersion_once != -1)
  {
    [_LSDefaults simulatorRuntimeVersion];
  }

  v3 = simulatorRuntimeVersion_result;

  return v3;
}

- (id)simulatorRuntimeBuildVersion
{
  if (simulatorRuntimeBuildVersion_once != -1)
  {
    [_LSDefaults simulatorRuntimeBuildVersion];
  }

  v3 = simulatorRuntimeBuildVersion_result;

  return v3;
}

- (id)simulatorSharedResourcesDirectoryURL
{
  if (simulatorSharedResourcesDirectoryURL_onceToken != -1)
  {
    [_LSDefaults simulatorSharedResourcesDirectoryURL];
  }

  v3 = simulatorSharedResourcesDirectoryURL_result;

  return v3;
}

- (id)classesWithNameForXCTests:(const char *)a3
{
  if (__LSDefaultsGetSharedInstance_onceToken != -1)
  {
    __LSDefaultsGetSharedInstance_cold_1();
  }

  if ([__LSDefaultsGetSharedInstance_sharedInstance isInXCTestRigInsecure])
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41___LSDefaults_classesWithNameForXCTests___block_invoke;
    v7[3] = &unk_1E6A1BCC8;
    v8 = v4;
    v9 = a3;
    v5 = v4;
    objc_enumerateClasses(0, a3, 0, 0, v7);
  }

  return 0;
}

- (BOOL)isSystemServer
{
  v3 = [(_LSDefaults *)self isServer];
  if (v3)
  {
    LOBYTE(v3) = [(_LSDefaults *)self proxyUIDForCurrentEffectiveUID]== 0;
  }

  return v3;
}

- (BOOL)isUserServer
{
  v3 = [(_LSDefaults *)self isServer];
  if (v3)
  {
    LOBYTE(v3) = [(_LSDefaults *)self proxyUIDForCurrentEffectiveUID]!= 0;
  }

  return v3;
}

- (BOOL)abortIfMayNotMapDatabase
{
  v2 = [(_LSDefaults *)self isAppleInternal];
  if (v2)
  {
    LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"LSAbortIfMayNotMapDatabase", *MEMORY[0x1E695E8A8], 0) != 0;
  }

  return v2;
}

- (id)serviceNameForConnectionType:(unsigned __int16)a3 lightweightSystemService:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = getenv("LSD_SERVICE_BASE");
  switch(v5)
  {
    case 0:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.mapdb";
        v12 = @"com.apple.lsd.system.mapdb";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".mapdb";
      goto LABEL_78;
    case 1:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.modifydb";
        v12 = @"com.apple.lsd.system.modifydb";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".modifydb";
      goto LABEL_78;
    case 2:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.openurl";
        v12 = @"com.apple.lsd.system.openurl";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".openurl";
      goto LABEL_78;
    case 3:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.open";
        v12 = @"com.apple.lsd.system.open";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".open";
      goto LABEL_78;
    case 4:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.plugin";
        v12 = @"com.apple.lsd.system.plugin";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".plugin";
      goto LABEL_78;
    case 5:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.xpc";
        v12 = @"com.apple.lsd.system.xpc";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".xpc";
      goto LABEL_78;
    case 6:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.installation";
        v12 = @"com.apple.lsd.system.installation";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".installation";
      goto LABEL_78;
    case 7:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.advertisingidentifiers";
        v12 = @"com.apple.lsd.system.advertisingidentifiers";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".advertisingidentifiers";
      goto LABEL_78;
    case 8:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.trustedsignatures";
        v12 = @"com.apple.lsd.system.trustedsignatures";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".trustedsignatures";
      goto LABEL_78;
    case 9:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.diagnostics";
        v12 = @"com.apple.lsd.system.diagnostics";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".diagnostics";
      goto LABEL_78;
    case 10:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.icons";
        v12 = @"com.apple.lsd.system.icons";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".icons";
      goto LABEL_78;
    case 11:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.dissemination";
        v12 = @"com.apple.lsd.system.dissemination";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".dissemination";
      goto LABEL_78;
    case 12:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.encryption";
        v12 = @"com.apple.lsd.system.encryption";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".encryption";
      goto LABEL_78;
    case 13:
      if (!v6 || !*v6)
      {
        v11 = @"com.apple.lsd.rebuild";
        v12 = @"com.apple.lsd.system.rebuild";
        goto LABEL_94;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = "";
      if (v4)
      {
        v8 = ".system";
      }

      v9 = ".rebuild";
      goto LABEL_78;
    case 14:
      if (v6 && *v6)
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = "";
        if (v4)
        {
          v8 = ".system";
        }

        v9 = ".appprotection";
LABEL_78:
        v10 = [v7 stringWithFormat:@"%s%s.%s", v6, v8, v9];
      }

      else
      {
        v11 = @"com.apple.lsd.appprotection";
        v12 = @"com.apple.lsd.system.appprotection";
LABEL_94:
        if (v4)
        {
          v11 = v12;
        }

        v10 = v11;
      }

LABEL_97:

      return v10;
    default:
      v10 = 0;
      goto LABEL_97;
  }
}

- (unsigned)proxyUIDForUID:(unsigned int)a3
{
  if (a3 - 401 >= 0xFFFFFE6D)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (id)darwinNotificationNameForBaseName:(id)a3 optionalSessionKey:(LSSessionKey *)a4
{
  v5 = a3;
  v6 = v5;
  v7 = v5;
  if (a4)
  {
    v7 = v5;
    if (a4->systemSession)
    {
      v7 = [v5 stringByAppendingString:@".system"];
    }
  }

  return v7;
}

- (id)databaseUpdateNotificationNameForSessionKey:(LSSessionKey)a3
{
  v5 = a3;
  v3 = [(_LSDefaults *)self darwinNotificationNameForBaseName:@"com.apple.LaunchServices.database" optionalSessionKey:&v5];

  return v3;
}

- (id)settingsUpdateNotificationNameForUserID:(unsigned int)a3
{
  v5 = a3;
  v3 = [(_LSDefaults *)self darwinNotificationNameForBaseName:@"com.apple.LaunchServices.settings" optionalSessionKey:&v5];

  return v3;
}

- (BOOL)alwaysUseDebugOpenWithMenus
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___LSDefaults_alwaysUseDebugOpenWithMenus__block_invoke;
  block[3] = &unk_1E6A195E0;
  block[4] = self;
  if (alwaysUseDebugOpenWithMenus_once != -1)
  {
    dispatch_once(&alwaysUseDebugOpenWithMenus_once, block);
  }

  return alwaysUseDebugOpenWithMenus_result;
}

- (BOOL)isRegionChina
{
  if (isRegionChina_once != -1)
  {
    [_LSDefaults isRegionChina];
  }

  return isRegionChina_result;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 15; ++i)
  {
    v5 = [(_LSDefaults *)self serviceNameForConnectionType:i];
    [v3 addObject:v5];
  }

  v29 = MEMORY[0x1E696AEC0];
  v30.receiver = self;
  v30.super_class = _LSDefaults;
  v28 = [(_LSDefaults *)&v30 debugDescription];
  v27 = [(_LSDefaults *)self databaseStoreFileURL];
  v26 = [(_LSDefaults *)self queriedSchemesMapFileURL];
  v25 = [(_LSDefaults *)self identifiersFileURL];
  v24 = [(_LSDefaults *)self preferencesFileURL];
  v6 = [(_LSDefaults *)self securePreferencesFileURL];
  v7 = @"NO";
  if ([(_LSDefaults *)self isServer])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v23 = v8;
  if ([(_LSDefaults *)self hasServer])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v22 = v9;
  if ([(_LSDefaults *)self isInEducationMode])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v21 = v10;
  if ([(_LSDefaults *)self hasPersistentPreferences])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if ([(_LSDefaults *)self allowsAlternateIcons])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if ([(_LSDefaults *)self abortIfMayNotMapDatabase])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if ([(_LSDefaults *)self isInSyncBubble])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if ([(_LSDefaults *)self isInXCTestRigInsecure])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if ([(_LSDefaults *)self isAppleInternal])
  {
    v7 = @"YES";
  }

  [(_LSDefaults *)self databaseSaveInterval];
  v17 = v16;
  [(_LSDefaults *)self databaseSaveLatency];
  v19 = [v29 stringWithFormat:@"%@Paths:\n\tdatabaseStoreFileURL: %@\n\tqueriedSchemesMapFileURL: %@\n\tidentifiersFileURL: %@\n\tpreferencesFileURL: %@\n\tsecurePreferencesFileURL: %@\nEnvironment:\n\tisServer: %@\n\thasServer: %@\n\tinEducationMode: %@\n\thasPersistentPreferences: %@\n\tallowsAlternateIcons: %@\n\tabortIfMayNotMapDatabase: %@\n\tinSyncBubble: %@\n\tinXCTestRigInsecure: %@\n\tappleInternal: %@\nTimeing:\n\tdatabaseSaveInterval: %lf\n\tdatabaseSaveLatency: %lf\nService names: %@", v28, v27, v26, v25, v24, v6, v23, v22, v21, v11, v12, v13, v14, v15, v7, v17, v18, v3];

  return v19;
}

@end