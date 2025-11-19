@interface LSApplicationRecord
+ (BOOL)isAnyRegisteredApplicationInstalledFromDistributorOrWeb;
+ (id)_alternateIconQueue;
+ (id)_propertyClasses;
+ (id)applicationRecordsForUserActivityDomainName:(id)a3 limit:(unint64_t)a4 error:(id *)a5;
+ (id)applicationRecordsForUserActivityType:(id)a3 limit:(unint64_t)a4 error:(id *)a5;
+ (id)displayOrderEnumeratorForViableDefaultAppsForCategory:(unint64_t)a3 options:(unint64_t)a4;
+ (id)enumeratorForApplicationsOnSameVolumeWithinDirectoryAtURL:(id)a3 enumerationOptions:(unint64_t)a4 filteringOptions:(unint64_t)a5;
+ (id)enumeratorForViableDefaultAppsForCategory:(unint64_t)a3 options:(unint64_t)a4;
+ (id)enumeratorOnVolumeAtURL:(id)a3 options:(unint64_t)a4;
+ (id)enumeratorWithOptions:(unint64_t)a3;
+ (id)personalPersonaAttributes;
+ (id)redactedProperties;
+ (id)remotePlaceholderEnumerator;
+ (id)systemPlaceholderEnumerator;
+ (void)setUpdateAvailabilityForApplicationsWithBundleIdentifiers:(id)a3 completionHandler:(id)a4;
- (BOOL)canHandleWebAuthentication;
- (BOOL)getGenericTranslocationTargetURL:(id *)a3 error:(id *)a4;
- (BOOL)isAppStoreVendableWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (BOOL)isDeletableSystemApplicationWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (BOOL)isDeletableWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (BOOL)isEligibleMailClient;
- (BOOL)isEligibleWebBrowser;
- (BOOL)isInstalledFromDistributorOrWeb;
- (BOOL)mayBeBUIVisible;
- (BOOL)supportsMultiwindow;
- (LSApplicationRecord)initWithBundleIdentifierOfCompanionApplication:(id)a3 error:(id *)a4;
- (LSApplicationRecord)initWithCoder:(id)a3;
- (LSApplicationRecord)initWithStoreItemIdentifier:(unint64_t)a3 error:(id *)a4;
- (LSApplicationRecord)initWithURL:(id)a3 fetchingPlaceholder:(int64_t)a4 error:(id *)a5;
- (LSApplicationRecord)linkedParentApplication;
- (NSArray)identities;
- (NSArray)spotlightActions;
- (NSDictionary)additionalEnvironmentVariables;
- (NSNumber)eligibilityDeletionDomain;
- (NSNumber)supportsGameMode;
- (NSString)alternateIconName;
- (NSString)jobLabel;
- (NSString)journalNotificationURLFormatString;
- (NSUUID)deviceIdentifierForAdvertising;
- (NSUUID)deviceIdentifierForVendor;
- (id)_defaultCategoryTypeIdentifiersWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)_initWithBundleIdentifier:(id)a3 placeholder:(BOOL)a4 error:(id *)a5;
- (id)_initWithContext:(LSContext *)a3 persistentIdentifierData:(const LSPersistentIdentifierData *)a4 length:(unint64_t)a5;
- (id)_initWithNode:(id)a3 bundleIdentifier:(id)a4 placeholderBehavior:(int64_t)a5 systemPlaceholder:(BOOL)a6 itemID:(unint64_t)a7 forceInBundleContainer:(BOOL)a8 context:(LSContext *)a9 error:(id *)a10;
- (id)_linkedParentApplicationBundleIDWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)_localizedNamesWithContextWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)_personasWithAttributesWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)appStoreToolsBuildVersionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)applicationExtensionRecordsWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)associatedPersonas;
- (id)backgroundTaskSchedulerPermittedIdentifiersWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)bundleContainerURLWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)bundleMetadataReturningError:(id *)a3;
- (id)bundleVersionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)carPlayInstrumentClusterURLSchemesWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)categoryTypesWithError:(id *)a3;
- (id)deviceFamiliesWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)exactBundleVersionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)getApplicationExtensionDiagnosticDescriptionWithError:(id *)a3;
- (id)iTunesMetadataWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)intentsRestrictedWhileLocked;
- (id)intentsRestrictedWhileProtectedDataUnavailable;
- (id)linkedChildApplicationRecordEnumeratorWithOptions:(unint64_t)a3;
- (id)localizedNameWithContext:(id)a3 preferredLocalizations:(id)a4;
- (id)managedPersonas;
- (id)managementDomainWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)maximumSystemVersionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)minimumSystemVersionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)recordForUnredactingWithContext:(LSContext *)a3 error:(id *)a4;
- (id)serializedPlaceholderURLWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)shortVersionStringWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)stashedAppMetadataWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)supportedGameControllersWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)supportedIntentMediaCategories;
- (id)supportedIntents;
- (id)typeForInstallMachineryWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (id)userActivityTypesWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6;
- (unint64_t)applicationDSID;
- (unint64_t)applicationDownloaderDSID;
- (unint64_t)applicationFamilyID;
- (unint64_t)sequenceNumber;
- (unint64_t)supportedDefaultAppCategories;
- (void)additionalEnvironmentVariables;
- (void)clearAdvertisingIdentifier;
- (void)getDeviceManagementPolicyWithCompletionHandler:(id)a3;
- (void)linkedParentApplication;
- (void)setAlternateIconName:(id)a3 completionHandler:(id)a4;
- (void)setAlternateIconNameSilently:(id)a3 completionHandler:(id)a4;
- (void)setUpdateAvailability:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation LSApplicationRecord

- (NSString)alternateIconName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__132;
  v10 = __Block_byref_object_dispose__133;
  v11 = 0;
  if ([__LSDefaultsGetSharedInstance() allowsAlternateIcons] && -[LSApplicationRecord supportsAlternateIconNames](self, "supportsAlternateIconNames"))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke;
    v5[3] = &unk_1E6A19408;
    v5[4] = self;
    v5[5] = &v6;
    __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v5);
  }

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)identities
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(LSApplicationRecord *)self _personasWithAttributes];
  if ([v3 count])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__LSApplicationRecord_Identities__identities__block_invoke;
    v14[3] = &unk_1E6A194A8;
    v14[4] = self;
    v4 = XNSArrayByMappingBlock(v3, v14);
  }

  else if ([__LSDefaultsGetSharedInstance() isInEducationMode] & 1) != 0 || (objc_msgSend(__LSDefaultsGetSharedInstance(), "isUsingEphemeralStorage"))
  {
    v5 = [[LSApplicationIdentity alloc] initForRecord:self personaWithAttributes:0];
    v15 = v5;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  }

  else
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(LSApplicationRecord(Identities) *)v6 identities];
    }

    v7 = +[LSApplicationRecord personalPersonaAttributes];
    v8 = [v7 userPersonaUniqueString];

    v9 = [LSApplicationIdentity alloc];
    v10 = [[_LSPersonaWithAttributes alloc] initWithPersonaType:v8 personaUniqueString:?];
    v11 = [(LSApplicationIdentity *)v9 initForRecord:self personaWithAttributes:v10];
    v16[0] = v11;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

id __45__LSApplicationRecord_Identities__identities__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [[LSApplicationIdentity alloc] initForRecord:*(a1 + 32) personaWithAttributes:a2];

  return v2;
}

- (NSString)jobLabel
{
  if (([(LSApplicationRecord *)self _rawPlistFlags]& 0x80) != 0)
  {
    v4 = [(LSBundleRecord *)self infoDictionary];
    v3 = [v4 objectForKey:@"LSLaunchDLabel" ofClass:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)additionalEnvironmentVariables
{
  if (![(LSBundleRecord *)self isRedacted])
  {
    goto LABEL_4;
  }

  v20 = 0;
  v3 = [(LSBundleRecord *)self unredactWithError:&v20];
  v4 = v20;
  v5 = v4;
  if (v3)
  {

LABEL_4:
    v6 = [__LSDefaultsGetSharedInstance() isInEducationMode];
    v19 = 0;
    v7 = [(LSApplicationRecord *)self _personasWithAttributes];
    v8 = _LSShouldFetchContainersFromContainermanagerForPersona(v7, [(LSApplicationRecord *)self _usesSystemPersona], &v19);

    if (v6)
    {
      v9 = 1;
    }

    else if (v8)
    {
      v10 = _LSDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(LSApplicationRecord *)v8 additionalEnvironmentVariables];
      }

      v9 = 0;
    }

    else
    {
      v9 = v19;
    }

    active_platform = dyld_get_active_platform();
    if (v9)
    {
      v14 = active_platform;
      v15 = [(LSBundleRecord *)self bundleIdentifier];
      v16 = _LSCopyEnvironmentVariablesFromContainermanager(v15, [(LSApplicationRecord *)self _containerClass], v14);
    }

    else
    {
      v17 = [(LSApplicationRecord *)self _rawEnvironmentVariables];
      v15 = [(_LSLazyPropertyList *)v17 propertyList];

      v16 = _LSCopyRationalizedEnvironmentVariablesDict(v15);
    }

    v12 = v16;

    goto LABEL_18;
  }

  v11 = _LSDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [LSApplicationRecord additionalEnvironmentVariables];
  }

  v12 = MEMORY[0x1E695E0F8];
LABEL_18:

  return v12;
}

- (id)managedPersonas
{
  v2 = [(LSApplicationRecord *)self _personasWithAttributes];
  if ([v2 count] == 1)
  {
    v3 = [v2 firstObject];
    v4 = [(_LSPersonaWithAttributes *)v3 personaType];

    if (v4 == 1)
    {

      v2 = MEMORY[0x1E695E0F0];
    }
  }

  v5 = XNSArrayByMappingBlock(v2, &__block_literal_global_162);

  return v5;
}

- (id)supportedIntents
{
  if ((-[LSApplicationRecord _rawPlistFlags](self, "_rawPlistFlags") & 0x200000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_class(), [v3 objectForKey:@"INIntentsSupported" ofClass:v4 valuesOfClass:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), v3, !v5))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)intentsRestrictedWhileLocked
{
  if ((-[LSApplicationRecord _rawPlistFlags](self, "_rawPlistFlags") & 0x200000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_class(), [v3 objectForKey:@"INIntentsRestrictedWhileLocked" ofClass:v4 valuesOfClass:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), v3, !v5))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)intentsRestrictedWhileProtectedDataUnavailable
{
  if ((-[LSApplicationRecord _rawPlistFlags](self, "_rawPlistFlags") & 0x200000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_class(), [v3 objectForKey:@"INIntentsRestrictedWhileProtectedDataUnavailable" ofClass:v4 valuesOfClass:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), v3, !v5))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)supportedIntentMediaCategories
{
  if ((-[LSApplicationRecord _rawPlistFlags](self, "_rawPlistFlags") & 0x200000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_class(), [v3 objectForKey:@"INSupportedMediaCategories" ofClass:v4 valuesOfClass:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), v3, !v5))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (BOOL)supportsMultiwindow
{
  [(LSBundleRecord *)self platform];
  base_platform = dyld_get_base_platform();
  if ((base_platform - 2) < 2)
  {
LABEL_4:
    v4 = [(LSBundleRecord *)self infoDictionary];
    v5 = [v4 objectForKey:@"UIApplicationSceneManifest" ofClass:objc_opt_class()];

    if (v5)
    {
      v6 = [v5 objectForKeyedSubscript:@"UIApplicationSupportsMultipleScenes"];
      if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v7 = [v6 BOOLValue];
LABEL_17:

        return v7;
      }
    }

    else
    {
      v8 = [(LSBundleRecord *)self infoDictionary];
      v6 = [v8 objectForKey:@"UIApplicationInterfaceManifest" ofClass:objc_opt_class()];

      if (v6)
      {
        v9 = [v6 objectForKeyedSubscript:@"UIApplicationSupportsMultiwindow"];
        if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v7 = [v9 BOOLValue];
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_17;
      }
    }

    v7 = 0;
    goto LABEL_17;
  }

  if (base_platform == 1)
  {
    return 1;
  }

  if (base_platform == 11)
  {
    goto LABEL_4;
  }

  return 0;
}

+ (id)_propertyClasses
{
  v5[14] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v5[8] = objc_opt_class();
  v5[9] = objc_opt_class();
  v5[10] = objc_opt_class();
  v5[11] = objc_opt_class();
  v5[12] = objc_opt_class();
  v5[13] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:14];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _alternateIconQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_2;
  v4[3] = &unk_1E6A19408;
  v5 = *(a1 + 32);
  dispatch_sync(v3, v4);
}

+ (id)_alternateIconQueue
{
  if (+[LSApplicationRecord(AlternateIcons) _alternateIconQueue]::once != -1)
  {
    +[LSApplicationRecord(AlternateIcons) _alternateIconQueue];
  }

  v3 = +[LSApplicationRecord(AlternateIcons) _alternateIconQueue]::result;

  return v3;
}

void __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifier];
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v3 = +[LSAltIconManager sharedInstance];
    v15 = 0;
    v4 = [v3 alternateIconNameForIdentifier:v2 error:&v15];
    v5 = v15;
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      if (_LSIconsLog(void)::onceToken != -1)
      {
        __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_1();
      }

      if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEBUG))
      {
        __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_2_cold_2();
      }
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_642;
    v13[3] = &unk_1E6A192C8;
    v8 = v2;
    v14 = v8;
    v9 = [(_LSDService *)_LSDIconService synchronousXPCProxyWithErrorHandler:v13];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_643;
    v10[3] = &unk_1E6A193E0;
    v12 = *(a1 + 40);
    v11 = v8;
    [v9 getAlternateIconNameForIdentifier:v11 reply:v10];

    v5 = v14;
  }
}

+ (id)systemPlaceholderEnumerator
{
  v2 = [[_LSApplicationRecordEnumerator alloc] initWithContext:0 volumeURL:0 options:0];
  [(_LSApplicationRecordEnumerator *)v2 setBundleClass:14];

  return v2;
}

- (NSUUID)deviceIdentifierForVendor
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__132;
  v14 = __Block_byref_object_dispose__133;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__LSApplicationRecord_UniqueIdentifiers__deviceIdentifierForVendor__block_invoke;
  v9[3] = &unk_1E6A192C8;
  v9[4] = self;
  v3 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:v9];
  v4 = [(LSApplicationRecord *)self _deviceIdentifierVendorName];
  v5 = [(LSBundleRecord *)self bundleIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__LSApplicationRecord_UniqueIdentifiers__deviceIdentifierForVendor__block_invoke_511;
  v8[3] = &unk_1E6A192F0;
  v8[4] = &v10;
  [v3 getIdentifierOfType:0 vendorName:v4 bundleIdentifier:v5 completionHandler:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (LSApplicationRecord)initWithURL:(id)a3 fetchingPlaceholder:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  if (a3)
  {
    if ([a3 isFileURL])
    {
      v9 = MEMORY[0x1E695DFF8];
      v10 = [v7 absoluteString];
      v7 = [v9 URLWithString:v10];
    }

    else
    {
      v7 = 0;
    }
  }

  v11 = [[FSNode alloc] initWithURL:v7 flags:0 error:0];
  v12 = [(LSApplicationRecord *)self _initWithNode:v11 bundleIdentifier:0 placeholderBehavior:a4 systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:0 error:a5];

  return v12;
}

- (LSApplicationRecord)initWithStoreItemIdentifier:(unint64_t)a3 error:(id *)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    result = [(LSApplicationRecord *)self _initWithNode:0 bundleIdentifier:0 placeholderBehavior:0 systemPlaceholder:1 itemID:a3 forceInBundleContainer:0 context:0 error:a4];
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {

    if (a4)
    {
      v9 = *MEMORY[0x1E696A278];
      v10[0] = @"Item ID 0 never exists.";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v7, "[LSApplicationRecord initWithStoreItemIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 136);
    }

    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }

  return result;
}

- (id)minimumSystemVersionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *&a6->_minSystemVersion._opaque[12];
  v10[0] = *&a6->minSystemVersionPlatform;
  v10[1] = v6;
  v7 = _LSVersionNumberGetStringRepresentation(v10);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)maximumSystemVersionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *&a6->_maxSystemVersion._opaque[12];
  v10[0] = *&a6->_minSystemVersion._opaque[28];
  v10[1] = v6;
  v7 = _LSVersionNumberGetStringRepresentation(v10);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)exactBundleVersionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  filename = a6->filename;
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (id)shortVersionStringWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  bundleVersion = a6->bundleVersion;
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (void)setUpdateAvailability:(unint64_t)a3 completionHandler:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = [(LSBundleRecord *)self bundleIdentifier];
  if (v7)
  {
    Class = object_getClass(self);
    v14 = v7;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v15[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [(objc_class *)Class setUpdateAvailabilityForApplicationsWithBundleIdentifiers:v10 completionHandler:a4];
LABEL_5:

    goto LABEL_6;
  }

  if (a4)
  {
    v12 = *MEMORY[0x1E696A278];
    v13 = @"This application does not have a bundle identifier and cannot have its updateAvailability property modified.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v9, "[LSApplicationRecord setUpdateAvailability:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 265);
    (*(a4 + 2))(a4, 0, v10);
    goto LABEL_5;
  }

LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)setUpdateAvailabilityForApplicationsWithBundleIdentifiers:(id)a3 completionHandler:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"LSApplicationRecord.mm" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"updateAvailabilities != nil"}];
  }

  if ([a3 count])
  {
    if (([__LSDefaultsGetSharedInstance() isServer] & 1) != 0 || (objc_msgSend(__LSDefaultsGetSharedInstance(), "hasServer") & 1) == 0)
    {
      v8 = _LSServer_DatabaseExecutionContext();
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke;
      v16[3] = &unk_1E6A19068;
      v16[4] = a3;
      v16[5] = a4;
      v16[6] = a2;
      [(LSDBExecutionContext *)v8 syncWrite:v16];
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke_40;
      v15[3] = &unk_1E6A19090;
      v15[4] = a4;
      v7 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v15];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke_2;
      v14[3] = &unk_1E6A190B8;
      v14[4] = a4;
      [v7 setUpdateAvailabilities:a3 completionHandler:v14];
    }
  }

  else if (a4)
  {
    v17 = *MEMORY[0x1E696A278];
    v18[0] = @"updateAvailabilities";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v9, "+[LSApplicationRecord setUpdateAvailabilityForApplicationsWithBundleIdentifiers:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 365);
    (*(a4 + 2))(a4, 0, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v35, v2, 0);

  if (v3)
  {
    v4 = [*(a1 + 32) count];
    v27 = 0;
    v28 = &v27;
    v29 = 0x5812000000;
    v30 = __Block_byref_object_copy__2;
    v31 = __Block_byref_object_dispose__2;
    v32 = &unk_1818533FF;
    memset(v33, 0, sizeof(v33));
    v34 = 1065353216;
    std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__rehash<true>(v33, v4);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke_36;
    v26[3] = &unk_1E6A19040;
    v26[5] = &v27;
    v26[6] = v3;
    v5 = *(a1 + 32);
    v26[4] = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v26];
    if (v28[9] == v4)
    {
      v6 = v28 + 8;
      while (1)
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        v7 = *(v6 + 4);
        v8 = v6[3];
        v9 = objc_autoreleasePoolPush();
        v10 = _LSBundleGet(*v3, v7);
        if (v10)
        {
          v11 = *(v10 + 189);
          if (v8 > 1)
          {
            v13 = _LSDefaultLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              Name = sel_getName(*(a1 + 48));
              *buf = 136446722;
              v40 = Name;
              v41 = 2048;
              v42 = v7;
              v43 = 1024;
              LODWORD(v44) = v8;
              _os_log_error_impl(&dword_18162D000, v13, OS_LOG_TYPE_ERROR, "%{public}s: Caller told us to set the update availability of bundle 0x%llx to invalid value %u. Ignoring.", buf, 0x1Cu);
            }
          }

          [(_LSDatabase *)*v3 store];
          v14 = *([(_LSDatabase *)*v3 schema]+ 4);
          if (!_CSStoreWriteToUnit())
          {
            v15 = _LSDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v17 = sel_getName(*(a1 + 48));
              *buf = 136446722;
              v40 = v17;
              v41 = 2048;
              v42 = v7;
              v43 = 2112;
              v44 = 0;
              _os_log_error_impl(&dword_18162D000, v15, OS_LOG_TYPE_ERROR, "%{public}s: Failed to write to bundle 0x%llx, ignoring: %@", buf, 0x20u);
            }
          }
        }

        else
        {
          v12 = _LSDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v16 = sel_getName(*(a1 + 48));
            *buf = 136446466;
            v40 = v16;
            v41 = 2048;
            v42 = v7;
            _os_log_error_impl(&dword_18162D000, v12, OS_LOG_TYPE_ERROR, "%{public}s: While enumerating bundles, lost track of bundle 0x%llx. Ignoring.", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      _LSDatabaseCommit(*v3);
      _LSArmSaveTimer(1);
      (*(*(a1 + 40) + 16))();
    }

    _Block_object_dispose(&v27, 8);
    std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v33);
  }

  else
  {
    v19 = *(a1 + 40);
    v20 = +[_LSDServiceDomain defaultServiceDomain];
    v21 = LaunchServices::Database::Context::_get(&v35, v20, 0);

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v38;
    }

    (*(v19 + 16))(v19, 0, v22);
  }

  if (v35 && v37 == 1)
  {
    _LSContextDestroy(v35);
  }

  v23 = v36;
  v35 = 0;
  v36 = 0;

  v37 = 0;
  v24 = v38;
  v38 = 0;

  v25 = *MEMORY[0x1E69E9840];
}

void __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke_36(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v7 = a1[6];
  memset(v14, 0, sizeof(v14));
  v8 = _LSBundleFindWithInfo(v7, 0, a2, 0, v14, 2, 0, &v13, 0);
  if (v8)
  {
    v9 = a1[4];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v8, 0, "+[LSApplicationRecord setUpdateAvailabilityForApplicationsWithBundleIdentifiers:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 294);
    (*(v9 + 16))(v9, 0, v10);

    *a4 = 1;
  }

  else
  {
    v11 = *(a1[5] + 8);
    *&v14[0] = [a3 unsignedLongLongValue];
    std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::__emplace_unique_key_args<unsigned int,unsigned int &,LSApplicationRecordUpdateAvailability>((v11 + 48), &v13);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke_40(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)isDeletableWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  if ((a6->_bundleFlags & 0x100) == 0)
  {
    return 0;
  }

  vendorName = a6->vendorName;
  if (!vendorName || _LSDatabaseGetStringForCFString(a3->db, @"System", 0) != vendorName)
  {
    return 1;
  }

  v8 = +[LSApplicationRestrictionsManager sharedInstance];
  v6 = [(LSApplicationRestrictionsManager *)v8 isSystemAppDeletionEnabled];

  return v6;
}

- (BOOL)isDeletableSystemApplicationWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  if ((a6->_bundleFlags & 0x100) == 0)
  {
    return 0;
  }

  vendorName = a6->vendorName;
  return vendorName && _LSDatabaseGetStringForCFString(a3->db, @"System", 0) == vendorName;
}

- (BOOL)isAppStoreVendableWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  vendorName = a6->vendorName;
  [(_LSDatabase *)a3->db store];
  v9 = _CSStringCopyCFString();
  if ([v9 isEqualToString:@"System"])
  {
    LOBYTE(self) = _LSFindBundleWithInfo(a3, 7uLL, [(LSBundleRecord *)self bundleIdentifier], 0, 0, 0, 0) != 0;
  }

  else
  {
    v10 = [(LSApplicationRecord *)self iTunesMetadata];
    if ([v10 storeItemIdentifier] && (-[LSApplicationRecord _rawBundleFlags](self, "_rawBundleFlags") & 0x8000001200000) == 0)
    {
      LODWORD(self) = ![(LSBundleRecord *)self isProfileValidated];
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (BOOL)isInstalledFromDistributorOrWeb
{
  v2 = [(LSApplicationRecord *)self iTunesMetadata];
  v3 = [v2 distributorInfo];
  v4 = [v3 distributorID];

  if (v4 && ([v4 isEqualToString:@"com.apple.AppStore"] & 1) == 0)
  {
    v5 = [v4 isEqualToString:@"com.apple.TestFlight"] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)isAnyRegisteredApplicationInstalledFromDistributorOrWeb
{
  v15 = *MEMORY[0x1E69E9840];
  [a1 enumeratorWithOptions:192];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        LOBYTE(v6) = [v6 isInstalledFromDistributorOrWeb];
        objc_autoreleasePoolPop(v7);
        if (v6)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)appStoreToolsBuildVersionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  v6 = *&a6->_maxSystemVersion._opaque[28];
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1EEF65710;
  }

  v10 = v9;

  return v9;
}

- (id)userActivityTypesWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  types = a6->types;
  v7 = _LSDatabaseGetStringArray(a3->db);
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canHandleWebAuthentication
{
  v2 = [(LSBundleRecord *)self entitlements];
  v3 = [v2 objectForKey:@"com.apple.AuthenticationServices.canHandleASWebAuthenticationSessionRequest" ofClass:objc_opt_class()];

  return v3 != 0;
}

- (id)applicationExtensionRecordsWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [(_LSDatabase *)a3->db store];
  libraryPath = a6->libraryPath;
  v12 = v8;
  _CSArrayEnumerateAllValues();
  v10 = [v12 copy];

  return v10;
}

void __87__LSApplicationRecord_applicationExtensionRecordsWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [LSApplicationExtensionRecord alloc];
  v6 = *(a1 + 48);
  v10 = 0;
  v7 = [(LSApplicationExtensionRecord *)v5 _initWithContext:v6 pluginID:a3 pluginData:0 error:&v10];
  v8 = v10;
  if (v7)
  {
    objc_storeWeak(v7 + 10, *(a1 + 32));
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __87__LSApplicationRecord_applicationExtensionRecordsWithContext_tableID_unitID_unitBytes___block_invoke_cold_1();
    }
  }
}

- (id)backgroundTaskSchedulerPermittedIdentifiersWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  driverExtensions = a6->driverExtensions;
  v7 = _LSDatabaseGetStringArray(a3->db);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = v9;

  return v9;
}

- (id)carPlayInstrumentClusterURLSchemesWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  extensionPoints = a6->extensionPoints;
  v7 = _LSDatabaseGetStringArray(a3->db);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = v9;

  return v9;
}

- (void)getDeviceManagementPolicyWithCompletionHandler:(id)a3
{
  if (!a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[LSApplicationRecord getDeviceManagementPolicyWithCompletionHandler:]"];
    [v6 handleFailureInFunction:v7 file:@"LSApplicationRecord.mm" lineNumber:759 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  v5 = [(LSBundleRecord *)self bundleIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__LSApplicationRecord_getDeviceManagementPolicyWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E6A19108;
  v8[4] = a3;
  _LSGetDMFPolicyWithCompletionHandler(v5, v8);
}

- (BOOL)isEligibleWebBrowser
{
  IsBundleWithFlagsEligibleToBindAsBrowser = LaunchServices::BindingEvaluator::IsBundleWithFlagsEligibleToBindAsBrowser([(LSApplicationRecord *)self _rawBundleFlags], [(LSApplicationRecord *)self _rawMoreFlags], [(LSBundleRecord *)self _profileValidationState]);
  if (IsBundleWithFlagsEligibleToBindAsBrowser)
  {
    LOBYTE(IsBundleWithFlagsEligibleToBindAsBrowser) = ![(LSApplicationRecord *)self appProtectionHidden];
  }

  return IsBundleWithFlagsEligibleToBindAsBrowser;
}

- (BOOL)isEligibleMailClient
{
  v3 = [(LSApplicationRecord *)self isMailClient];
  if (v3)
  {
    LOBYTE(v3) = ![(LSApplicationRecord *)self appProtectionHidden];
  }

  return v3;
}

- (NSArray)spotlightActions
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (([(LSApplicationRecord *)self _rawMoreFlags]& 0x10) != 0)
  {
    v3 = [(LSBundleRecord *)self infoDictionary];
    v4 = [v3 objectForKey:@"CoreSpotlightActions" ofClass:objc_opt_class()];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (!v5)
    {
      goto LABEL_30;
    }

    v6 = *v28;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = [v8 objectForKey:@"CoreSpotlightActionIdentifier"];
        v11 = v10;
        if (v9)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (objc_opt_isKindOfClass() & 1) == 0)
        {

          v11 = 0;
        }

        v13 = objc_opt_class();
        v14 = [v8 objectForKey:@"CoreSpotlightActionTitle"];
        v15 = v14;
        if (v13 && v14 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = v15;
          v15 = 0;
LABEL_27:

          goto LABEL_28;
        }

        if (v11)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v17 = [LSSpotlightAction alloc];
          v18 = objc_opt_class();
          v19 = [v8 objectForKey:@"CoreSpotlightActionSymbolImage"];
          v20 = v19;
          if (v18 && v19 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v20 = 0;
          }

          v21 = [(LSSpotlightAction *)v17 _initWithIdentifier:v11 unlocalizedTitle:v15 symbolImageName:v20];

          if (v21)
          {
            [v25 addObject:v21];
          }

          goto LABEL_27;
        }

LABEL_28:
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v5)
      {
LABEL_30:

        break;
      }
    }
  }

  v22 = [v25 copy];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)managementDomainWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  parentAppIDs = a6->appClipFields.parentAppIDs;
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();
  if (!v7)
  {
    v7 = @"default";
  }

  return v7;
}

- (id)_linkedParentApplicationBundleIDWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  supportedGameControllers = a6->supportedGameControllers;
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (LSApplicationRecord)linkedParentApplication
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__132;
  v24 = __Block_byref_object_dispose__133;
  v25 = 0;
  v3 = [(LSApplicationRecord *)self _linkedParentApplicationBundleID];
  v4 = v3;
  if (v3)
  {
    v17 = 0;
    v18[0] = &v17;
    v18[1] = 0x3032000000;
    v18[2] = __Block_byref_object_copy__132;
    v18[3] = __Block_byref_object_dispose__133;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__LSApplicationRecord_linkedParentApplication__block_invoke;
    v13[3] = &unk_1E6A19130;
    v15 = &v20;
    v14 = v3;
    v16 = &v17;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__LSApplicationRecord_linkedParentApplication__block_invoke_2;
    v9[3] = &unk_1E6A19158;
    v11 = &v20;
    v5 = v14;
    v10 = v5;
    v12 = &v17;
    [(LSRecord *)self _ifAttached:v13 else:v9];
    if (!v21[5])
    {
      v6 = _LSDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(LSApplicationRecord *)v5 linkedParentApplication];
      }
    }

    _Block_object_dispose(&v17, 8);
  }

  v7 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v7;
}

void __46__LSApplicationRecord_linkedParentApplication__block_invoke(void *a1, uint64_t a2)
{
  v4 = [LSApplicationRecord alloc];
  v5 = a1[4];
  v12 = 0;
  v6 = [(LSApplicationRecord *)v4 _initWithNode:0 bundleIdentifier:v5 placeholderBehavior:0 systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:a2 error:&v12];
  v7 = v12;
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

void __46__LSApplicationRecord_linkedParentApplication__block_invoke_2(void *a1)
{
  v2 = [LSApplicationRecord alloc];
  v3 = a1[4];
  v10 = 0;
  v4 = [(LSApplicationRecord *)v2 initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v10];
  v5 = v10;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

- (id)_defaultCategoryTypeIdentifiersWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  equivalentBundleIdentifiers = a6->equivalentBundleIdentifiers;
  [(_LSDatabase *)a3->db store];
  v10 = _CSStringCopyCFString();
  if (v10)
  {
    [v8 addObject:v10];
  }

  categoryType = a6->categoryType;
  [(_LSDatabase *)a3->db store];
  v12 = _CSStringCopyCFString();
  if (v12)
  {
    [v8 addObject:v12];
  }

  v13 = [v8 copy];

  return v13;
}

- (id)categoryTypesWithError:(id *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(LSBundleRecord *)self _node];
  v24[4] = self;
  theArray = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __46__LSApplicationRecord_categoryTypesWithError___block_invoke;
  v24[3] = &unk_1E6A19180;
  v6 = _LSCopyApplicationCategoriesForApplicationNode(v5, &theArray, v24);

  if (v6)
  {
    if (a3)
    {
      v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v6, 0, "[LSApplicationRecord categoryTypesWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 997);
LABEL_4:
      v8 = 0;
      *a3 = v7;
      goto LABEL_24;
    }

LABEL_21:
    v8 = 0;
    goto LABEL_24;
  }

  v9 = _LSGetUTTypeClass();
  if (!v9)
  {
    if (a3)
    {
      v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 78, 0, "[LSApplicationRecord categoryTypesWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 994);
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  v10 = objc_alloc(MEMORY[0x1E695DF70]);
  v11 = [v10 initWithCapacity:CFArrayGetCount(theArray)];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = theArray;
  v13 = [(__CFArray *)v12 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v13)
  {
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [v9 typeWithIdentifier:{*(*(&v20 + 1) + 8 * i), v20}];
        if (!v16)
        {
          if (a3)
          {
            *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], 2, 0, "[LSApplicationRecord categoryTypesWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 983);
          }

          goto LABEL_17;
        }

        [v11 addObject:v16];
      }

      v13 = [(__CFArray *)v12 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v17 = [v11 count];
  if (v17 == CFArrayGetCount(theArray))
  {
    v8 = [v11 copy];
  }

  else
  {
    v8 = 0;
  }

LABEL_24:
  if (theArray)
  {
    CFRelease(theArray);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_initWithNode:(id)a3 bundleIdentifier:(id)a4 placeholderBehavior:(int64_t)a5 systemPlaceholder:(BOOL)a6 itemID:(unint64_t)a7 forceInBundleContainer:(BOOL)a8 context:(LSContext *)a9 error:(id *)a10
{
  v51 = *MEMORY[0x1E69E9840];
  if (_LSLogAppRecordInitsForDataSeparation::onceToken != -1)
  {
    _LSLogAppRecordInitsForDataSeparation_cold_1();
  }

  if (_LSLogAppRecordInitsForDataSeparation::result == 1)
  {
    v17 = _LSDataSeparationLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = a3;
      *&buf[12] = 2112;
      *&buf[14] = a4;
      *&buf[22] = 2048;
      v48 = a7;
      _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_INFO, "application record search init. Node: %@ bundleID: %@ itemID: %llu", buf, 0x20u);
    }
  }

  p_db = &a9->db;
  if (!a9)
  {
    p_db = _LSDatabaseContextGetCurrentContext(0);
  }

  v41 = p_db;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v19 = +[_LSDServiceDomain defaultServiceDomain];
  v20 = LaunchServices::Database::Context::_get(&v41, v19, 0);

  if (v20)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = __Block_byref_object_copy__132;
    v49 = __Block_byref_object_dispose__133;
    v50 = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __136__LSApplicationRecord__initWithNode_bundleIdentifier_placeholderBehavior_systemPlaceholder_itemID_forceInBundleContainer_context_error___block_invoke;
    v34[3] = &unk_1E6A191C8;
    v35 = a6;
    v34[4] = a4;
    v34[5] = a3;
    v34[8] = v20;
    v34[9] = a7;
    v34[6] = &v37;
    v34[7] = buf;
    v34[10] = a5;
    v36 = a8;
    __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v34);
    if (a10)
    {
      *a10 = *(*&buf[8] + 40);
    }

    v21 = *(v38 + 6);
    if (v21)
    {
      v22 = _LSBundleGet(*v20, v21);
      if (v22)
      {
        v23 = [(_LSDatabase *)*v20 schema];
        v24 = [(LSApplicationRecord *)self _initWithNode:a3 bundleIdentifier:a4 context:v20 tableID:*(v23 + 4) unitID:*(v38 + 6) bundleBaseData:v22 error:a10];
LABEL_21:
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v37, 8);
        goto LABEL_25;
      }

      if (a10)
      {
        v45 = *MEMORY[0x1E696A278];
        v46 = @"Unable to find this application record in the Launch Services database.";
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        *a10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, v28, "[LSApplicationRecord _initWithNode:bundleIdentifier:placeholderBehavior:systemPlaceholder:itemID:forceInBundleContainer:context:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 1168);
      }
    }

    v24 = 0;
    goto LABEL_21;
  }

  if (a10)
  {
    v25 = +[_LSDServiceDomain defaultServiceDomain];
    v26 = LaunchServices::Database::Context::_get(&v41, v25, 0);

    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v44;
    }

    *a10 = v27;
  }

  v24 = 0;
LABEL_25:
  v29 = v24;
  if (v41 && v43 == 1)
  {
    _LSContextDestroy(v41);
  }

  v30 = v42;
  v41 = 0;
  v42 = 0;

  v43 = 0;
  v31 = v44;
  v44 = 0;

  v32 = *MEMORY[0x1E69E9840];
  return v29;
}

void __136__LSApplicationRecord__initWithNode_bundleIdentifier_placeholderBehavior_systemPlaceholder_itemID_forceInBundleContainer_context_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) URL];
    v5 = *(a1 + 72);
    v6 = *(*(a1 + 56) + 8);
    obj = *(v6 + 40);
    v7 = _LSFindBundleWithInfo(v2, 7uLL, v3, 0, v4, v5, &obj);
    objc_storeStrong((v6 + 40), obj);
    v8 = a1 + 48;
LABEL_23:
    *(*(*v8 + 8) + 24) = v7;

    return;
  }

  v9 = *(a1 + 80);
  v10 = 1;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v12 = 3;
      v10 = 3;
    }

    else
    {
      v12 = 1;
      if (v9 == 4)
      {
        v12 = 8;
        if (*(a1 + 89) != 1)
        {
          v13 = @"must be remote placeholder";
          v10 = 8;
          v14 = &__block_literal_global_151;
          goto LABEL_20;
        }

        v10 = 8;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v11 = 3;
    if (v9 != 2)
    {
      v11 = 1;
    }

    if (v9 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v11;
    }

    if (v9 == 1)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }
  }

  if ((*(a1 + 89) & 1) == 0)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_20;
  }

LABEL_18:
  v13 = @"must be in bundle container";
  v14 = &__block_literal_global_146;
LABEL_20:
  v15 = *(a1 + 64);
  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) URL];
  v18 = *(a1 + 72);
  v19 = *(*(a1 + 56) + 8);
  v25 = *(v19 + 40);
  LODWORD(v15) = _LSFindBundleWithInfo_NoIOFiltered(v15, v10, v16, 0, v17, v18, v13, v14, &v25);
  objc_storeStrong((v19 + 40), v25);
  v8 = a1 + 48;
  *(*(*(a1 + 48) + 8) + 24) = v15;

  if (v10 != v12 && !*(*(*v8 + 8) + 24))
  {
    v20 = *(a1 + 64);
    v21 = *(a1 + 32);
    v4 = [*(a1 + 40) URL];
    v22 = *(a1 + 72);
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    v7 = _LSFindBundleWithInfo_NoIOFiltered(v20, v12, v21, 0, v4, v22, v13, v14, &v24);
    objc_storeStrong((v23 + 40), v24);
    goto LABEL_23;
  }
}

- (id)_initWithBundleIdentifier:(id)a3 placeholder:(BOOL)a4 error:(id *)a5
{
  v5 = 3;
  if (!a4)
  {
    v5 = 0;
  }

  return [(LSApplicationRecord *)self _initWithNode:0 bundleIdentifier:a3 placeholderBehavior:v5 systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:0 error:a5];
}

- (id)bundleVersionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  filename = a6->filename;
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (id)associatedPersonas
{
  v2 = [(LSApplicationRecord *)self _personasWithAttributes];
  v3 = XNSArrayByMappingBlock(v2, &__block_literal_global_164);

  return v3;
}

void __98__LSApplicationRecord__initWithNode_bundleIdentifier_context_tableID_unitID_bundleBaseData_error___block_invoke(uint64_t a1)
{
  v2 = _LSBundleCopyNode(**(a1 + 48), *(a1 + 56), 0, 0, *(*(a1 + 32) + 8) + 40);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  _LSGetNSErrorFromOSStatusImpl(v2, &obj, 0, "[LSApplicationRecord _initWithNode:bundleIdentifier:context:tableID:unitID:bundleBaseData:error:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 1274);
  objc_storeStrong((v3 + 40), obj);
}

- (id)_personasWithAttributesWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  appContainerAlias = a6->appContainerAlias;
  v10 = _LSDatabaseGetStringArray(a3->db);
  __p = 0;
  v29 = 0;
  v30 = 0;
  [(_LSDatabase *)a3->db store];
  v11 = *&a6->revision;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __83__LSApplicationRecord__personasWithAttributesWithContext_tableID_unitID_unitBytes___block_invoke;
  v26 = &__block_descriptor_40_e14_v24__0I8I12_16l;
  p_p = &__p;
  _CSArrayEnumerateAllValues();
  for (i = 0; ; ++i)
  {
    v14 = __p;
    v13 = v29;
    v15 = [v10 count];
    v16 = v15 >= (v13 - v14) >> 3 ? (v13 - v14) >> 3 : v15;
    if (v16 <= i)
    {
      break;
    }

    v17 = [_LSPersonaWithAttributes alloc];
    v18 = *(__p + i);
    v19 = [v10 objectAtIndexedSubscript:i];
    v20 = [(_LSPersonaWithAttributes *)v17 initWithPersonaType:v18 personaUniqueString:v19];
    [v8 addObject:v20];
  }

  v21 = [v8 allObjects];
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return v21;
}

void __83__LSApplicationRecord__personasWithAttributesWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v6 >= v5)
  {
    v8 = *v3;
    v9 = v6 - *v3;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      std::allocator<os_eligibility_answer_t>::allocate_at_least[abi:nn200100](*(a1 + 32), v14);
    }

    *(8 * v10) = v4;
    v7 = 8 * v10 + 8;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    *(v3 + 8) = v7;
    *(v3 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = a3;
    v7 = (v6 + 1);
  }

  *(v3 + 8) = v7;
}

- (id)_localizedNamesWithContextWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__132;
  v13 = __Block_byref_object_dispose__133;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__LSApplicationRecord__localizedNamesWithContextWithContext_tableID_unitID_unitBytes___block_invoke;
  v8[3] = &unk_1E6A19258;
  v8[4] = &v9;
  v8[5] = a6;
  v8[6] = a3;
  _LSBundleDisplayNameContextEnumerate(v8);
  v6 = [v10[5] copy];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __86__LSApplicationRecord__localizedNamesWithContextWithContext_tableID_unitID_unitBytes___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (!*(*(a1[4] + 8) + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = [[_LSLocalizedStringRecord alloc] _initWithContext:a1[6] unitID:*(a1[5] + 4 * a2 + 520)];
  v10 = v9;
  if (v9)
  {
    [*(*(a1[4] + 8) + 40) setObject:v9 forKeyedSubscript:a3];
  }

  else
  {
    [*(*(a1[4] + 8) + 40) setObject:*MEMORY[0x1E695E738] forKeyedSubscript:a3];
  }
}

- (id)_initWithContext:(LSContext *)a3 persistentIdentifierData:(const LSPersistentIdentifierData *)a4 length:(unint64_t)a5
{
  var3 = a4->var3;
  if (var3 != *([(_LSDatabase *)a3->db schema]+ 4))
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"LSApplicationRecord.mm" lineNumber:1530 description:{@"Invalid parameter not satisfying: %@", @"pi->tableID == ctx->db.schema->bundleTable"}];
  }

  v11 = _LSBundleGet(a3->db, a4->var2);
  if (v11 && a5 == 36 && *a4->var5 == *(v11 + 276))
  {
    var2 = a4->var2;

    return [(LSApplicationRecord *)self _initWithContext:a3 bundleID:var2 bundleData:v11 error:0];
  }

  else
  {

    return 0;
  }
}

uint64_t __67__LSApplicationRecord__detachFromContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*MEMORY[0x1E695E738] != a3)
  {
    return [a3 detach];
  }

  return result;
}

- (LSApplicationRecord)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = LSApplicationRecord;
  v3 = [(LSBundleRecord *)&v15 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(LSRecord *)v3 _resolvedPropertyValueForGetter:sel_applicationExtensionRecords, 0];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          objc_storeWeak((*(*(&v11 + 1) + 8 * v8++) + 80), v4);
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)bundleContainerURLWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__132;
  v13 = __Block_byref_object_dispose__133;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__LSApplicationRecord_Containers__bundleContainerURLWithContext_tableID_unitID_unitBytes___block_invoke;
  v8[3] = &unk_1E6A192A0;
  v8[5] = a3;
  v8[6] = a6;
  v8[4] = &v9;
  __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __90__LSApplicationRecord_Containers__bundleContainerURLWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1)
{
  v2 = _LSAliasCopyResolvedNode(**(a1 + 40), *(*(a1 + 48) + 508), 0, 0, 0);
  if (v2)
  {
    v6 = v2;
    v3 = [v2 URL];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

- (id)iTunesMetadataWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  v6 = [[LSiTunesMetadata alloc] _initWithContext:a3 bundleData:a6];

  return v6;
}

void __67__LSApplicationRecord_UniqueIdentifiers__deviceIdentifierForVendor__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _LSRecordLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) bundleIdentifier];
    v7 = 138478083;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_ERROR, "Error getting identifier for vendor for %{private}@: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (NSUUID)deviceIdentifierForAdvertising
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__132;
  v14 = __Block_byref_object_dispose__133;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__LSApplicationRecord_UniqueIdentifiers__deviceIdentifierForAdvertising__block_invoke;
  v9[3] = &unk_1E6A192C8;
  v9[4] = self;
  v3 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:v9];
  v4 = [(LSApplicationRecord *)self _deviceIdentifierVendorName];
  v5 = [(LSBundleRecord *)self bundleIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__LSApplicationRecord_UniqueIdentifiers__deviceIdentifierForAdvertising__block_invoke_513;
  v8[3] = &unk_1E6A192F0;
  v8[4] = &v10;
  [v3 getIdentifierOfType:1 vendorName:v4 bundleIdentifier:v5 completionHandler:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __72__LSApplicationRecord_UniqueIdentifiers__deviceIdentifierForAdvertising__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _LSRecordLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) bundleIdentifier];
    v7 = 138478083;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_ERROR, "Error getting identifier for vendor for %{private}@: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)clearAdvertisingIdentifier
{
  v2 = [(_LSDService *)_LSDDeviceIdentifierService XPCProxyWithErrorHandler:?];
  [v2 clearAllIdentifiersOfType:1];
}

- (id)deviceFamiliesWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_LSDatabase *)a3->db store];
  itemID_high = HIDWORD(a6->itemID);
  v12 = v8;
  _CSArrayEnumerateAllValues();
  v10 = [v12 copy];

  return v10;
}

void __93__LSApplicationRecord_InfoPlistRarities__deviceFamiliesWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [v1 addObject:?];
}

- (id)localizedNameWithContext:(id)a3 preferredLocalizations:(id)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__132;
  v17 = __Block_byref_object_dispose__133;
  v18 = 0;
  if (a3 && [a3 length])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__LSApplicationRecord_Localization__localizedNameWithContext_preferredLocalizations___block_invoke;
    v12[3] = &unk_1E6A19340;
    v12[4] = a3;
    v12[5] = self;
    v12[6] = a4;
    v12[7] = &v13;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__LSApplicationRecord_Localization__localizedNameWithContext_preferredLocalizations___block_invoke_3;
    v11[3] = &unk_1E6A19368;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = a4;
    v11[7] = &v13;
    [(LSRecord *)self _ifAttached:v12 else:v11];
  }

  else
  {
    v7 = _LSRecordLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_FAULT, "You must pass a valid context string when using -localizedNameWithContext:. Did you want -localizedName?", v10, 2u);
    }
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __85__LSApplicationRecord_Localization__localizedNameWithContext_preferredLocalizations___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__LSApplicationRecord_Localization__localizedNameWithContext_preferredLocalizations___block_invoke_2;
  v6[3] = &unk_1E6A19318;
  v9 = a2;
  v10 = a4;
  v4 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v4;
  return __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v6);
}

void __85__LSApplicationRecord_Localization__localizedNameWithContext_preferredLocalizations___block_invoke_2(uint64_t a1)
{
  v2 = **(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v8 = [*(a1 + 40) _node];
  v5 = _LSBundleGetLocalizedName(v2, v3, v4, v8, *(a1 + 48), 0);
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __85__LSApplicationRecord_Localization__localizedNameWithContext_preferredLocalizations___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolvedPropertyValueForGetter:sel__localizedNamesWithContext];
  v3 = v2;
  if (v2)
  {
    v8 = v2;
    v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];
    v3 = v8;
    if (v4 != *MEMORY[0x1E695E738])
    {
      v5 = [v4 stringValueWithPreferredLocalizations:*(a1 + 48)];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v3 = v8;
    }
  }
}

void __58__LSApplicationRecord_AlternateIcons___alternateIconQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS alternate icon queue", v2);
  v1 = +[LSApplicationRecord(AlternateIcons) _alternateIconQueue]::result;
  +[LSApplicationRecord(AlternateIcons) _alternateIconQueue]::result = v0;
}

- (void)setAlternateIconName:(id)a3 completionHandler:(id)a4
{
  v7 = [objc_opt_class() _alternateIconQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke;
  block[3] = &unk_1E6A193B8;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(v7, block);
}

void __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([__LSDefaultsGetSharedInstance() allowsAlternateIcons])
  {
    if (_LSIconsLog(void)::onceToken != -1)
    {
      __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_3();
    }

    v2 = _LSIconsLog(void)::log;
    if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      *buf = 138412546;
      v30 = v3;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Setting preferredIconName to %@ for %@", buf, 0x16u);
    }

    v5 = [*(a1 + 40) bundleIdentifier];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_633;
    v22 = &unk_1E6A19390;
    v6 = v5;
    v7 = *(a1 + 48);
    v23 = v6;
    v24 = v7;
    v8 = [(_LSDService *)_LSDIconService synchronousXPCProxyWithErrorHandler:?];
    if (_os_feature_enabled_impl() && ([MEMORY[0x1E696AAE8] mainBundle], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "bundleIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", v6), v10, v9, v11))
    {
      [v8 setAlternateIconNameForCurrentApplication:*(a1 + 32) completionHandler:*(a1 + 48)];
    }

    else
    {
      v16 = [*(a1 + 40) _rawIconDictionary];
      v17 = [v16 _expensiveDictionaryRepresentation];

      [v8 setAlternateIconName:*(a1 + 32) forIdentifier:v6 iconsDictionary:v17 reply:*(a1 + 48)];
    }

    v15 = v23;
  }

  else
  {
    v27 = *MEMORY[0x1E696A578];
    v28 = @"alternateIcons not allowed";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v13 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 110, v12, "[LSApplicationRecord(AlternateIcons) setAlternateIconName:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 2044);

    v25 = *MEMORY[0x1E696AA08];
    v26 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 3328, v14, "[LSApplicationRecord(AlternateIcons) setAlternateIconName:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 2046);

    if (_LSIconsLog(void)::onceToken != -1)
    {
      __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_1();
    }

    if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_ERROR))
    {
      __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_2(a1);
    }

    (*(*(a1 + 48) + 16))();
    v6 = v13;
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_633(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (_LSIconsLog(void)::onceToken != -1)
  {
    __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_3();
  }

  v4 = _LSIconsLog(void)::log;
  if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = a2;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Failed to set alternate icon name for bundleID %@ with error: %@", &v8, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setAlternateIconNameSilently:(id)a3 completionHandler:(id)a4
{
  v7 = [objc_opt_class() _alternateIconQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__LSApplicationRecord_AlternateIcons__setAlternateIconNameSilently_completionHandler___block_invoke;
  block[3] = &unk_1E6A193B8;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(v7, block);
}

void __86__LSApplicationRecord_AlternateIcons__setAlternateIconNameSilently_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if ([__LSDefaultsGetSharedInstance() allowsAlternateIcons])
  {
    if (_LSIconsLog(void)::onceToken != -1)
    {
      __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_3();
    }

    v2 = _LSIconsLog(void)::log;
    if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      *buf = 138412546;
      v27 = v3;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Setting preferredIconName silently to %@ for %@", buf, 0x16u);
    }

    v5 = [*(a1 + 40) bundleIdentifier];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __86__LSApplicationRecord_AlternateIcons__setAlternateIconNameSilently_completionHandler___block_invoke_640;
    v19 = &unk_1E6A19390;
    v6 = v5;
    v7 = *(a1 + 48);
    v20 = v6;
    v21 = v7;
    v8 = [(_LSDService *)_LSDIconService synchronousXPCProxyWithErrorHandler:?];
    v9 = [*(a1 + 40) _rawIconDictionary];
    v10 = [v9 _expensiveDictionaryRepresentation];

    [v8 setAlternateIconName:*(a1 + 32) forIdentifier:v6 iconsDictionary:v10 reply:*(a1 + 48)];
    v11 = v20;
  }

  else
  {
    v24 = *MEMORY[0x1E696A578];
    v25 = @"alternateIcons not allowed";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v13 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 110, v12, "[LSApplicationRecord(AlternateIcons) setAlternateIconNameSilently:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 2073);

    v22 = *MEMORY[0x1E696AA08];
    v23 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 3328, v14, "[LSApplicationRecord(AlternateIcons) setAlternateIconNameSilently:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 2075);

    if (_LSIconsLog(void)::onceToken != -1)
    {
      __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_1();
    }

    if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_ERROR))
    {
      __86__LSApplicationRecord_AlternateIcons__setAlternateIconNameSilently_completionHandler___block_invoke_cold_2(a1);
    }

    (*(*(a1 + 48) + 16))();
    v6 = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __86__LSApplicationRecord_AlternateIcons__setAlternateIconNameSilently_completionHandler___block_invoke_640(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (_LSIconsLog(void)::onceToken != -1)
  {
    __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_3();
  }

  v4 = _LSIconsLog(void)::log;
  if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = a2;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Failed to set alternate icon name silently for bundleID %@ with error: %@", &v8, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_642(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (_LSIconsLog(void)::onceToken != -1)
  {
    __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_3();
  }

  v4 = _LSIconsLog(void)::log;
  if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Failed to retrieve alternate icon name for bundleID %@ with error: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_643(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v3, a2);
  }

  else
  {
    if (_LSIconsLog(void)::onceToken != -1)
    {
      __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_3();
    }

    if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEBUG))
    {
      __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_643_cold_2(a1);
    }
  }
}

+ (id)applicationRecordsForUserActivityType:(id)a3 limit:(unint64_t)a4 error:(id *)a5
{
  if (!a3)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:a1 file:@"LSApplicationRecord.mm" lineNumber:2245 description:{@"Invalid parameter not satisfying: %@", @"userActivityType != nil"}];
  }

  CurrentContext = _LSDatabaseContextGetCurrentContext(a1);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v8 = +[_LSDServiceDomain defaultServiceDomain];
  v9 = LaunchServices::Database::Context::_get(&CurrentContext, v8, 0);

  v43 = v9;
  if (v9)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x4812000000;
    v37 = __Block_byref_object_copy__688;
    v38 = __Block_byref_object_dispose__689;
    v39 = &unk_1818533FF;
    v41 = 0;
    v42 = 0;
    __p = 0;
    _LSDatabaseGetStringForCFString(*v9, a3, 0);
    _LSDatabaseEnumeratingBindingMap(*v43);
    v10 = v35[6];
    v11 = v35[7];
    v12 = 126 - 2 * __clz((v11 - v10) >> 4);
    v48 = &v43;
    if (v11 == v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    std::__introsort<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,false>(v10, v11, &v48, v13, 1);
    v14 = objc_alloc(MEMORY[0x1E695DF70]);
    v15 = [v14 initWithCapacity:(v35[7] - v35[6]) >> 4];
    v16 = v35[6];
    v17 = v35[7];
    if (v16 != v17)
    {
      v18 = 0;
      do
      {
        v19 = objc_autoreleasePoolPush();
        v20 = [LSApplicationRecord alloc];
        v21 = [(LSApplicationRecord *)v20 _initWithContext:v43 bundleID:*v16 bundleData:*(v16 + 1) error:0];
        v22 = 0;
        if (v21)
        {
          [v15 addObject:v21];
          if (++v18 >= a4)
          {
            v22 = 1;
          }
        }

        objc_autoreleasePoolPop(v19);
        v16 += 4;
        v23 = v16 == v17 || v22;
      }

      while ((v23 & 1) == 0);
    }

    v24 = [v15 copy];

    _Block_object_dispose(&v34, 8);
    if (__p)
    {
      v41 = __p;
      operator delete(__p);
    }
  }

  else if (a5)
  {
    v25 = +[_LSDServiceDomain defaultServiceDomain];
    v26 = LaunchServices::Database::Context::_get(&CurrentContext, v25, 0);

    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v47;
    }

    v24 = 0;
    *a5 = v27;
  }

  else
  {
    v24 = 0;
  }

  if (CurrentContext && v46 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v28 = v45;
  CurrentContext = 0;
  v45 = 0;

  v46 = 0;
  v29 = v47;
  v47 = 0;

  return v24;
}

void __87__LSApplicationRecord_UserActivity__applicationRecordsForUserActivityType_limit_error___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v5 = _LSBundleGet(**(a1 + 48), a3);
  if (v5)
  {
    v6 = v5;
    if (_LSBundleCouldBeSelectedForActivityContinuation(**(a1 + 48), a3, v5, *(a1 + 32)))
    {
      v7 = *(*(a1 + 40) + 8);
      v9 = v7[7];
      v8 = v7[8];
      if (v9 >= v8)
      {
        v11 = v7[6];
        v12 = v9 - v11;
        v13 = (v9 - v11) >> 4;
        v14 = v13 + 1;
        if ((v13 + 1) >> 60)
        {
          std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
        v17 = 0xFFFFFFFFFFFFFFFLL;
        if (!v16)
        {
          v17 = v14;
        }

        if (v17)
        {
          std::allocator<std::pair<unsigned int,LSBundleData const*>>::allocate_at_least[abi:nn200100]((v7 + 6), v17);
        }

        v18 = 16 * v13;
        *v18 = a3;
        *(v18 + 8) = v6;
        v10 = 16 * v13 + 16;
        memcpy(0, v11, v12);
        v19 = v7[6];
        v7[6] = 0;
        v7[7] = v10;
        v7[8] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v9 = a3;
        *(v9 + 8) = v6;
        v10 = v9 + 16;
      }

      v7[7] = v10;
    }
  }
}

+ (id)applicationRecordsForUserActivityDomainName:(id)a3 limit:(unint64_t)a4 error:(id *)a5
{
  v9 = a3;
  if (!v9)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"LSApplicationRecord.mm" lineNumber:2300 description:{@"Invalid parameter not satisfying: %@", @"domainName != nil"}];
  }

  v10 = [v9 lowercaseString];

  CurrentContext = _LSDatabaseContextGetCurrentContext(v11);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v12 = +[_LSDServiceDomain defaultServiceDomain];
  v13 = LaunchServices::Database::Context::_get(&CurrentContext, v12, 0);

  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __93__LSApplicationRecord_UserActivity__applicationRecordsForUserActivityDomainName_limit_error___block_invoke;
    v24[3] = &unk_1E6A19458;
    v28 = v13;
    v25 = v10;
    v15 = v14;
    v26 = v15;
    v27 = v30;
    v29 = a4;
    _LSEnumerateViableBundlesOfClass(v13, 2, v24);
    v16 = [v15 copy];

    _Block_object_dispose(v30, 8);
  }

  else if (a5)
  {
    v17 = +[_LSDServiceDomain defaultServiceDomain];
    v18 = LaunchServices::Database::Context::_get(&CurrentContext, v17, 0);

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v34;
    }

    v16 = 0;
    *a5 = v19;
  }

  else
  {
    v16 = 0;
  }

  if (CurrentContext && v33 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v20 = v32;
  CurrentContext = 0;
  v32 = 0;

  v33 = 0;
  v21 = v34;
  v34 = 0;

  return v16;
}

void __93__LSApplicationRecord_UserActivity__applicationRecordsForUserActivityDomainName_limit_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = _LSBundleCopyUserActivityDomainNames(**(a1 + 56), a2, a3);
  v10 = v9;
  if (v9)
  {
    v11 = [(__CFSet *)v9 member:*(a1 + 32)];

    if (v11)
    {
      v12 = [[LSApplicationRecord alloc] _initWithContext:*(a1 + 56) bundleID:a2 bundleData:a3 error:0];
      if (v12)
      {
        [*(a1 + 40) addObject:v12];
        if (++*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
        {
          *a4 = 1;
        }
      }
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (id)supportedGameControllersWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_LSDatabase *)a3->db store];
  bundlePersonas = a6->bundlePersonas;
  v12 = MEMORY[0x1E69E9820];
  v13 = v8;
  _CSArrayEnumerateAllValues();
  v10 = [v13 copy];

  return v10;
}

void __92__LSApplicationRecord_Gaming__supportedGameControllersWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [_LSLazyPropertyList lazyPropertyListWithContext:*(a1 + 40) unit:a3];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (NSNumber)supportsGameMode
{
  v2 = [(LSApplicationRecord *)self _rawMoreFlags];
  if ((*&v2 & 0x800000) != 0)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:HIBYTE(*&v2) & 1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)getGenericTranslocationTargetURL:(id *)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationRecord(AppWrappers) getGenericTranslocationTargetURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 2423);
  }

  return 0;
}

- (id)bundleMetadataReturningError:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = [(LSBundleRecord *)self bundleIdentifier];
  v13 = 0;
  v7 = (softLinkMobileInstallationCopyAppMetadata[0])(v6, &v13);
  v8 = v13;

  if (!v7)
  {
    v9 = _LSRecordLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_ERROR, "Failed to lookup metadata for app %@: %@", buf, 0x16u);
    }

    if (a3)
    {
      v10 = v8;
      *a3 = v8;
    }
  }

  objc_autoreleasePoolPop(v5);

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (unint64_t)applicationDSID
{
  v2 = [(LSApplicationRecord(MobileInstall) *)self sensitiveDataProxy];
  v3 = [v2 applicationDSID];

  return v3;
}

- (unint64_t)applicationDownloaderDSID
{
  v2 = [(LSApplicationRecord(MobileInstall) *)self sensitiveDataProxy];
  v3 = [v2 downloaderDSID];

  return v3;
}

- (unint64_t)applicationFamilyID
{
  v2 = [(LSApplicationRecord(MobileInstall) *)self sensitiveDataProxy];
  v3 = [v2 familyID];

  return v3;
}

- (id)stashedAppMetadataWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  if (a6->recordModificationTime)
  {
    v7 = [[LSStashedAppMetadata alloc] initWithContext:a3 unitID:a6->recordModificationTime];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serializedPlaceholderURLWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  mobileInstallIDs = a6->mobileInstallIDs;
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();
  if (v7)
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (LSApplicationRecord)initWithBundleIdentifierOfCompanionApplication:(id)a3 error:(id *)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = *MEMORY[0x1E696A278];
    v10[0] = @"This platform does not support discovery of companion application identifiers.";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, v6, "[LSApplicationRecord(watchOS) initWithBundleIdentifierOfCompanionApplication:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 2819);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)typeForInstallMachineryWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSBundleData *)a6
{
  vendorName = a6->vendorName;
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (NSNumber)eligibilityDeletionDomain
{
  if (([(LSApplicationRecord *)self _rawPlistFlags]& 0x20) != 0)
  {
    v4 = [(LSBundleRecord *)self infoDictionary];
    v3 = [v4 objectForKey:@"LSEligibilityDeletionDomain" ofClass:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)sequenceNumber
{
  v2 = [(LSRecord *)self persistentIdentifier];
  SequenceNumberInternal = _LSApplicationRecordPersistentIdentifierGetSequenceNumberInternal(v2);

  return SequenceNumberInternal;
}

+ (id)personalPersonaAttributes
{
  if (+[LSApplicationRecord(Identities) personalPersonaAttributes]::once != -1)
  {
    +[LSApplicationRecord(Identities) personalPersonaAttributes];
  }

  v3 = +[LSApplicationRecord(Identities) personalPersonaAttributes]::result;

  return v3;
}

void __60__LSApplicationRecord_Identities__personalPersonaAttributes__block_invoke()
{
  v0 = [getUMUserPersonaAttributesClass() personaAttributesForPersonaType:0];
  v1 = +[LSApplicationRecord(Identities) personalPersonaAttributes]::result;
  +[LSApplicationRecord(Identities) personalPersonaAttributes]::result = v0;
}

- (unint64_t)supportedDefaultAppCategories
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(LSBundleRecord *)self claimRecords];
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v4)
  {
    v5 = *v25;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        if (([v7 _rawFlags] & 0x2000) != 0)
        {
          v19 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_11:

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v19 typeIdentifiers];
  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * j);
        InfoFromTypeIdentifier = LSDefaultAppCategoryGetInfoFromTypeIdentifier(v13);
        if (InfoFromTypeIdentifier)
        {
          v9 |= LSDefaultAppCategoryMaskForCategory(*InfoFromTypeIdentifier);
        }

        else
        {
          v15 = _LSDefaultLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            v16 = [(LSBundleRecord *)self bundleIdentifier];
            *buf = 138543618;
            v29 = v13;
            v30 = 2114;
            v31 = v16;
            _os_log_fault_impl(&dword_18162D000, v15, OS_LOG_TYPE_FAULT, "no category for type %{public}@ in default apps claim of bundle %{public}@!", buf, 0x16u);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)mayBeBUIVisible
{
  v2 = [(LSApplicationRecord *)self typeForInstallMachinery];
  if ([v2 isEqualToString:@"System"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"User"];
  }

  return v3;
}

- (NSString)journalNotificationURLFormatString
{
  if (([(LSApplicationRecord *)self _rawPlistFlags]& 0x40) != 0)
  {
    v4 = [(LSBundleRecord *)self infoDictionary];
    v3 = [v4 objectForKey:@"JSNotificationURLFormat" ofClass:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)redactedProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__LSApplicationRecord_Redaction__redactedProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[LSApplicationRecord(Redaction) redactedProperties]::once != -1)
  {
    dispatch_once(&+[LSApplicationRecord(Redaction) redactedProperties]::once, block);
  }

  v2 = +[LSApplicationRecord(Redaction) redactedProperties]::properties;

  return v2;
}

void __52__LSApplicationRecord_Redaction__redactedProperties__block_invoke(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = &OBJC_METACLASS___LSApplicationRecord;
  v1 = objc_msgSendSuper2(&v4, sel_redactedProperties);
  v2 = [v1 arrayByAddingObject:@"_rawEnvironmentVariables"];
  v3 = +[LSApplicationRecord(Redaction) redactedProperties]::properties;
  +[LSApplicationRecord(Redaction) redactedProperties]::properties = v2;
}

- (id)recordForUnredactingWithContext:(LSContext *)a3 error:(id *)a4
{
  v7 = [LSApplicationRecord alloc];
  v8 = [(LSBundleRecord *)self _node];
  v9 = [(LSBundleRecord *)self bundleIdentifier];
  v10 = [(LSApplicationRecord *)self isPlaceholder];
  v11 = [(LSApplicationRecord *)self isSystemPlaceholder];
  if (v10)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(LSApplicationRecord *)v7 _initWithNode:v8 bundleIdentifier:v9 placeholderBehavior:v12 systemPlaceholder:v11 itemID:0 forceInBundleContainer:0 context:a3 error:a4];

  return v13;
}

- (id)getApplicationExtensionDiagnosticDescriptionWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__132;
  v18 = __Block_byref_object_dispose__133;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__132;
  v12 = __Block_byref_object_dispose__133;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__LSApplicationRecord_Diagnostic__getApplicationExtensionDiagnosticDescriptionWithError___block_invoke;
  v7[3] = &unk_1E6A194F0;
  v7[4] = &v8;
  v7[5] = &v14;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__LSApplicationRecord_Diagnostic__getApplicationExtensionDiagnosticDescriptionWithError___block_invoke_2;
  v6[3] = &unk_1E6A19518;
  v6[4] = self;
  v6[5] = &v8;
  v6[6] = &v14;
  [(LSRecord *)self _ifAttached:v7 else:v6];
  if (a3)
  {
    *a3 = v15[5];
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v4;
}

void __89__LSApplicationRecord_Diagnostic__getApplicationExtensionDiagnosticDescriptionWithError___block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  v8 = _LSGetApplicationExtensionDiagnosticDescriptionForBundle(a2, a4, a5);
  objc_storeStrong((v6 + 40), v7);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __89__LSApplicationRecord_Diagnostic__getApplicationExtensionDiagnosticDescriptionWithError___block_invoke_2(uint64_t a1)
{
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v17, v2, 0);

  if (!v3)
  {
    v10 = +[_LSDServiceDomain defaultServiceDomain];
    v11 = LaunchServices::Database::Context::_get(&v17, v10, 0);

    if (v11)
    {
      v8 = 0;
LABEL_9:
      v9 = 48;
      goto LABEL_10;
    }

    v12 = v20;
LABEL_8:
    v8 = v12;
    goto LABEL_9;
  }

  v4 = _LSBundleGet(*v3, [*(a1 + 32) unitID]);
  if (!v4)
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[LSApplicationRecord(Diagnostic) getApplicationExtensionDiagnosticDescriptionWithError:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 3226);
    goto LABEL_8;
  }

  v5 = [*(a1 + 32) unitID];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  v8 = _LSGetApplicationExtensionDiagnosticDescriptionForBundle(v3, v5, v4);
  objc_storeStrong((v6 + 40), v7);
  v9 = 40;
LABEL_10:
  v13 = *(*(a1 + v9) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v8;

  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v15 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v16 = v20;
  v20 = 0;
}

+ (id)enumeratorWithOptions:(unint64_t)a3
{
  v3 = [[_LSApplicationRecordEnumerator alloc] initWithContext:0 volumeURL:0 options:a3];

  return v3;
}

+ (id)enumeratorOnVolumeAtURL:(id)a3 options:(unint64_t)a4
{
  if (!a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"LSRecord+Enumeration.mm" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"volumeURL != nil"}];
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"LSRecord+Enumeration.mm" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"volumeURL.fileURL"}];
  }

  v8 = [[_LSApplicationRecordEnumerator alloc] initWithContext:0 volumeURL:a3 options:a4];

  return v8;
}

+ (id)remotePlaceholderEnumerator
{
  v2 = [(_LSApplicationRecordEnumerator *)[_LSRemotePlaceholderEnumerator alloc] initWithContext:0 volumeURL:0 options:64];
  [(_LSApplicationRecordEnumerator *)v2 setBundleClass:16];

  return v2;
}

- (id)linkedChildApplicationRecordEnumeratorWithOptions:(unint64_t)a3
{
  v5 = [_LSLinkedChildApplicationRecordEnumerator alloc];
  v6 = [(LSBundleRecord *)self bundleIdentifier];
  v7 = [(_LSLinkedChildApplicationRecordEnumerator *)v5 initWithContext:0 parentBundleID:v6 options:a3];

  return v7;
}

+ (id)enumeratorForViableDefaultAppsForCategory:(unint64_t)a3 options:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v7 = LaunchServices::Database::Context::_get(&v19, v6, 0);

  if (v7)
  {
    bundleUnitsClaimingDefaultAppCategory(v7, a3, buf);
    v8 = *buf;
    v9 = *&buf[8];
  }

  else
  {
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = +[_LSDServiceDomain defaultServiceDomain];
      v17 = LaunchServices::Database::Context::_get(&v19, v16, 0);

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v22;
      }

      *buf = 136315394;
      *&buf[4] = "+[LSApplicationRecord(Enumeration) enumeratorForViableDefaultAppsForCategory:options:]";
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_error_impl(&dword_18162D000, v10, OS_LOG_TYPE_ERROR, "couldn't get to database in %s: %@", buf, 0x16u);
    }

    v8 = 0;
    v9 = 0;
  }

  v11 = [[_LSApplicationRecordSpecificUnitsEnumerator alloc] initWithContext:v7 options:a4 unitIDs:v8 unitCount:(v9 - v8) >> 2];
  if (v19 && v21 == 1)
  {
    _LSContextDestroy(v19);
  }

  v12 = v20;
  v19 = 0;
  v20 = 0;

  v21 = 0;
  v13 = v22;
  v22 = 0;

  if (v8)
  {
    operator delete(v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)displayOrderEnumeratorForViableDefaultAppsForCategory:(unint64_t)a3 options:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v7 = LaunchServices::Database::Context::_get(&v22, v6, 0);

  if (v7)
  {
    bundleUnitsClaimingDefaultAppCategory(v7, a3, buf);
    v8 = *buf;
    v9 = *&buf[8];
    if (*&buf[8] - *buf >= 5uLL)
    {
      v10 = (*buf + 4);
      v11 = 126 - 2 * __clz((*&buf[8] - (*buf + 4)) >> 2);
      *&buf[16] = 0;
      v28 = 0;
      *buf = v7;
      *&buf[8] = &buf[16];
      v26 = buf;
      if (v9 == (v8 + 4))
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      std::__introsort<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,false>(v10, v9, &v26, v12, 1);
      std::__tree<std::__value_type<unsigned int,NSString * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,NSString * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,NSString * {__strong}>>>::destroy(&buf[8], *&buf[16]);
    }
  }

  else
  {
    v13 = _LSDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = +[_LSDServiceDomain defaultServiceDomain];
      v20 = LaunchServices::Database::Context::_get(&v22, v19, 0);

      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v25;
      }

      *buf = 136315394;
      *&buf[4] = "+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]";
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_error_impl(&dword_18162D000, v13, OS_LOG_TYPE_ERROR, "couldn't get to database in %s: %@", buf, 0x16u);
    }

    v9 = 0;
    v8 = 0;
  }

  v14 = [[_LSApplicationRecordSpecificUnitsEnumerator alloc] initWithContext:v7 options:a4 unitIDs:v8 unitCount:(v9 - v8) >> 2];
  if (v22 && v24 == 1)
  {
    _LSContextDestroy(v22);
  }

  v15 = v23;
  v22 = 0;
  v23 = 0;

  v24 = 0;
  v16 = v25;
  v25 = 0;

  if (v8)
  {
    operator delete(v8);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)enumeratorForApplicationsOnSameVolumeWithinDirectoryAtURL:(id)a3 enumerationOptions:(unint64_t)a4 filteringOptions:(unint64_t)a5
{
  v5 = [[_LSApplicationRecordsWithinDirectoryEnumerator alloc] initWithContext:0 directoryURL:a3 volumeURL:0 enumerationOptions:a4 filteringOptions:a5];

  return v5;
}

void __87__LSApplicationRecord_applicationExtensionRecordsWithContext_tableID_unitID_unitBytes___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)linkedParentApplication
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(*a2 + 40);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)additionalEnvironmentVariables
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Error determining whether or not to fetch from container manager %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __86__LSApplicationRecord_AlternateIcons__setAlternateIconNameSilently_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_2_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3(&dword_18162D000, v0, v1, "Couldn't fetch alternate icon name for %@, error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_643_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3(&dword_18162D000, v2, v3, "Failed to retrieve alternate icon name for bundleID %@ with error: %@");
  v4 = *MEMORY[0x1E69E9840];
}

@end