@interface LSBundleRecordBuilder
- (BOOL)parseInfoPlist:(id)a3;
- (BOOL)parseInstallationInfo:(id)a3;
- (LSBundleData)buildBundleData:(SEL)a3 error:(id)a4;
- (id)_LSBundleFlagMap;
- (id)_LSKeyTypeMap;
- (id)_LSPlistRaritiesMap;
- (id)iconsDictionaryFromDict:(id)a3;
- (id)truncate:(BOOL *)a3 queriableSchemesIfNeeded:(id)a4;
- (int)activateBindings:(id)a3 unitID:(unsigned int)a4 bundleData:(const LSBundleData *)a5;
- (int)registerQueriableSchemes:(id)a3 bundleData:(LSBundleData *)a4;
- (unsigned)registerBundleRecord:(id)a3 error:(id *)a4;
- (void)parseActivityTypesFromDictionary:(id)a3;
- (void)parseArchitecturesFromDict:(id)a3;
- (void)parseDeviceFamilyFromDict:(id)a3;
- (void)parseDocumentClaimsFromDict:(id)a3;
- (void)parseIconFilenamesFromDict:(id)a3 forPlatform:(unsigned int)a4;
- (void)parseNSExtensionSDKDefinitionsFromDictionary:(id)a3;
- (void)parseURLClaimsFromDict:(id)a3;
- (void)setCommonInfoPlistKeysFromDictionary:(id)a3;
- (void)setFlagsFromDictionary:(id)a3;
- (void)setRaritiesFromDictionary:(id)a3;
- (void)setRegistrationInfo:(id)a3 alias:(id)a4;
@end

@implementation LSBundleRecordBuilder

- (void)setRegistrationInfo:(id)a3 alias:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [v9 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(LSRegistrationInfo);
  }

  registrationInfo = self->_registrationInfo;
  self->_registrationInfo = v7;

  self->_bundleClass = self->_registrationInfo->bundleClass;
  self->_itemFlags = self->_registrationInfo->itemFlags;
  if (v6)
  {
    objc_storeStrong(&self->_bundleAlias, a4);
  }

  self->_inode = self->_registrationInfo->inoExec;
}

- (int)registerQueriableSchemes:(id)a3 bundleData:(LSBundleData *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  context = v5;
  v30 = 0;
  v7 = self->_queriableSchemes;
  if (v7)
  {
    v8 = v7;
    v9 = [(LSBundleRecordBuilder *)self truncate:&v30 queriableSchemesIfNeeded:v7];

    [v6 addObjectsFromArray:v9];
  }

  else
  {
    v9 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = self->_URLClaims;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = *v27;
    v13 = *MEMORY[0x1E695E190];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        if (_NSIsNSDictionary())
        {
          v16 = objc_opt_class();
          v17 = [v15 objectForKey:v13];
          v18 = v17;
          if (v16 && v17)
          {
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v18 = 0;
LABEL_16:

              continue;
            }
          }

          else if (!v17)
          {
            goto LABEL_16;
          }

          [v6 addObjectsFromArray:v18];
          goto LABEL_16;
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  if (v6 && [v6 count])
  {
    v19 = [v6 allObjects];
    a4->plugins = _LSDatabaseCreateStringArray(v25, v19, 1, 0);

    if (!a4->plugins)
    {
      v20 = -9493;
      goto LABEL_26;
    }
  }

  else
  {
    a4->plugins = 0;
  }

  v20 = 0;
  if (v30 == 1)
  {
    *&self->_moreFlags |= 0x40u;
  }

LABEL_26:

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)truncate:(BOOL *)a3 queriableSchemesIfNeeded:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  _LSMakeVersionNumber(15, 0, 0, &v20);
  v7 = +[_LSCanOpenURLManager sharedManager];
  v8 = [v7 schemeQueryLimit];

  v9 = *&self->_sdkVersionNumber._opaque[16];
  *v17 = *self->_sdkVersionNumber._opaque;
  *&v17[16] = v9;
  v22[0] = v20;
  v22[1] = v21;
  if (_LSVersionNumberCompare(v17, v22) > 1 || [v6 count] <= v8)
  {
    v12 = 0;
  }

  else
  {
    v10 = _LSInstallLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      identifier = self->_identifier;
      if (!identifier)
      {
        identifier = self->_bundleName;
      }

      v16 = [v6 count];
      *v17 = 138413058;
      *&v17[4] = identifier;
      *&v17[12] = 2048;
      *&v17[14] = v16;
      *&v17[22] = 2048;
      *&v17[24] = v8;
      v18 = 2048;
      v19 = v8;
      _os_log_error_impl(&dword_18162D000, v10, OS_LOG_TYPE_ERROR, "Application %@ has requested permission to query %llu URL schemes, but the maximum queriable is %llu. Limiting to the first %llu listed in its Info.plist.", v17, 0x2Au);
    }

    v11 = [v6 subarrayWithRange:{0, v8}];
    v12 = 1;
    if (v11)
    {
      if (!a3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v11 = v6;
  if (a3)
  {
LABEL_6:
    *a3 = v12;
  }

LABEL_7:

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_LSBundleFlagMap
{
  if ([LSBundleRecordBuilder _LSBundleFlagMap]::onceToken != -1)
  {
    [LSBundleRecordBuilder _LSBundleFlagMap];
  }

  v3 = [LSBundleRecordBuilder _LSBundleFlagMap]::bundleFlagMap;

  return v3;
}

void __41__LSBundleRecordBuilder__LSBundleFlagMap__block_invoke()
{
  v4[47] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E695E120];
  v3[1] = @"LSHasLocalizedDisplayName";
  v4[0] = &unk_1EEF8E9D8;
  v4[1] = &unk_1EEF8E9D8;
  v3[2] = *MEMORY[0x1E695E4F8];
  v3[3] = @"LSUIElement";
  v4[2] = &unk_1EEF8E9D8;
  v4[3] = &unk_1EEF8E9F0;
  v3[4] = @"NSUIElement";
  v3[5] = @"UINewsstandApp";
  v4[4] = &unk_1EEF8E9F0;
  v4[5] = &unk_1EEF8EA08;
  v3[6] = @"LSBackgroundOnly";
  v3[7] = @"NSBGOnly";
  v4[6] = &unk_1EEF8EA20;
  v4[7] = &unk_1EEF8EA20;
  v3[8] = @"LSMultipleInstancesProhibited";
  v3[9] = @"_LSIsExecutableForParentBundle";
  v4[8] = &unk_1EEF8EA38;
  v4[9] = &unk_1EEF8EA50;
  v3[10] = @"_LSInfoPlistIsMissing";
  v3[11] = @"_LSNoExecutableInfo";
  v4[10] = &unk_1EEF8EA68;
  v4[11] = &unk_1EEF8EA80;
  v3[12] = @"LSFileQuarantineEnabled";
  v3[13] = @"_LSRequiresOldJavaStub";
  v4[12] = &unk_1EEF8EA98;
  v4[13] = &unk_1EEF8EAB0;
  v3[14] = @"_LSRequiresJavaRuntime";
  v3[15] = @"_LSRequiresIPhoneSimulator";
  v4[14] = &unk_1EEF8EAC8;
  v4[15] = &unk_1EEF8EAE0;
  v3[16] = @"LSRequiresIPhoneOS";
  v3[17] = @"_LSBundleVersionTooLow";
  v4[16] = &unk_1EEF8EAF8;
  v4[17] = &unk_1EEF8EB10;
  v3[18] = @"ASAccountAuthenticationModificationOptOutOfSecurityPromptsOnSignIn";
  v3[19] = @"is-purchased-redownload";
  v4[18] = &unk_1EEF8EB28;
  v4[19] = &unk_1EEF8EB40;
  v3[20] = @"DeviceBasedVPP";
  v3[21] = @"IsPlaceholder";
  v4[20] = &unk_1EEF8EB58;
  v4[21] = &unk_1EEF8EB70;
  v3[22] = @"HasMIDBasedSINF";
  v3[23] = @"MissingSINF";
  v4[22] = &unk_1EEF8EB88;
  v4[23] = &unk_1EEF8EBA0;
  v3[24] = @"RestrictedDownload";
  v3[25] = @"IsParallelPlaceholder";
  v4[24] = &unk_1EEF8EBB8;
  v4[25] = &unk_1EEF8EBD0;
  v3[26] = @"IsUpdatedSystemApp";
  v3[27] = @"IsDeletable";
  v4[26] = &unk_1EEF8EBD0;
  v4[27] = &unk_1EEF8EBE8;
  v3[28] = @"IsAdHocSigned";
  v3[29] = @"HasSettingsBundle";
  v4[28] = &unk_1EEF8EC00;
  v4[29] = &unk_1EEF8EC18;
  v3[30] = @"NSSupportsPurgeableLocalStorage";
  v3[31] = @"HasCustomNotificationKey";
  v4[30] = &unk_1EEF8EC30;
  v4[31] = &unk_1EEF8EC48;
  v3[32] = @"HasWatchGlance";
  v3[33] = @"SkipWatchAppInstall";
  v4[32] = &unk_1EEF8EC60;
  v4[33] = &unk_1EEF8EC78;
  v3[34] = @"SupportsAudiobooks";
  v3[35] = @"MPSupportsExternallyPlayableContent";
  v4[34] = &unk_1EEF8EC90;
  v4[35] = &unk_1EEF8ECA8;
  v3[36] = @"UIFileSharingEnabled";
  v3[37] = @"LSSupportsOpeningDocumentsInPlace";
  v4[36] = &unk_1EEF8ECC0;
  v4[37] = &unk_1EEF8ECD8;
  v3[38] = @"UISupportsDocumentBrowser";
  v3[39] = @"_LSBundleIsInGenerationalStorage";
  v4[38] = &unk_1EEF8ECD8;
  v4[39] = &unk_1EEF8ECF0;
  v3[40] = @"_LSBundleIsApplet";
  v3[41] = @"LSApplicationIsStickerProvider";
  v4[40] = &unk_1EEF8ED08;
  v4[41] = &unk_1EEF8ED20;
  v3[42] = @"LSApplicationLaunchProhibited";
  v3[43] = @"initialODRSize";
  v4[42] = &unk_1EEF8ED20;
  v4[43] = &unk_1EEF8ED38;
  v3[44] = @"gameCenterEnabled";
  v3[45] = @"gameCenterEverEnabled";
  v4[44] = &unk_1EEF8ED50;
  v4[45] = &unk_1EEF8ED68;
  v3[46] = @"NSApplicationRequiresArcade";
  v4[46] = &unk_1EEF8ED80;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:47];
  v1 = [LSBundleRecordBuilder _LSBundleFlagMap]::bundleFlagMap;
  [LSBundleRecordBuilder _LSBundleFlagMap]::bundleFlagMap = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)_LSPlistRaritiesMap
{
  if ([LSBundleRecordBuilder _LSPlistRaritiesMap]::onceToken != -1)
  {
    [LSBundleRecordBuilder _LSPlistRaritiesMap];
  }

  v3 = [LSBundleRecordBuilder _LSPlistRaritiesMap]::plistMap;

  return v3;
}

void __44__LSBundleRecordBuilder__LSPlistRaritiesMap__block_invoke()
{
  v4[19] = *MEMORY[0x1E69E9840];
  v3[0] = @"LSLaunchDLabel";
  v3[1] = @"LSFileQuarantineExcludedPathPatterns";
  v4[0] = &unk_1EEF8ED98;
  v4[1] = &unk_1EEF8EDB0;
  v3[2] = @"MKDirectionsApplicationSupportedModes";
  v3[3] = @"UIBackgroundModes";
  v4[2] = &unk_1EEF8EDC8;
  v4[3] = &unk_1EEF8EDE0;
  v3[4] = @"AudioComponents";
  v3[5] = @"UIVPNPlugin";
  v4[4] = &unk_1EEF8EDF8;
  v4[5] = &unk_1EEF8EE10;
  v3[6] = @"SBAppTags";
  v3[7] = @"UIRequiredDeviceCapabilities";
  v4[6] = &unk_1EEF8EE28;
  v4[7] = &unk_1EEF8EE40;
  v3[8] = @"UISupportedExternalAccessoryProtocols";
  v3[9] = @"LSMinimumSystemVersionByArchitecture";
  v4[8] = &unk_1EEF8EE58;
  v4[9] = &unk_1EEF8EE70;
  v3[10] = @"LSEnvironment";
  v3[11] = @"storeCohort";
  v4[10] = &unk_1EEF8EE88;
  v4[11] = &unk_1EEF8EEA0;
  v3[12] = @"subgenres";
  v3[13] = @"INIntentsSupported";
  v4[12] = &unk_1EEF8EEB8;
  v4[13] = &unk_1EEF8EED0;
  v3[14] = @"INIntentsRestrictedWhileLocked";
  v3[15] = @"INIntentsRestrictedWhileProtectedDataUnavailable";
  v4[14] = &unk_1EEF8EED0;
  v4[15] = &unk_1EEF8EED0;
  v3[16] = @"INSupportedMediaCategories";
  v3[17] = @"LSEligibilityDeletionDomain";
  v4[16] = &unk_1EEF8EED0;
  v4[17] = &unk_1EEF8EEE8;
  v3[18] = @"JSNotificationURLFormat";
  v4[18] = &unk_1EEF8EF00;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:19];
  v1 = [LSBundleRecordBuilder _LSPlistRaritiesMap]::plistMap;
  [LSBundleRecordBuilder _LSPlistRaritiesMap]::plistMap = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)_LSKeyTypeMap
{
  if ([LSBundleRecordBuilder _LSKeyTypeMap]::onceToken != -1)
  {
    [LSBundleRecordBuilder _LSKeyTypeMap];
  }

  v3 = [LSBundleRecordBuilder _LSKeyTypeMap]::typeMap;

  return v3;
}

void __38__LSBundleRecordBuilder__LSKeyTypeMap__block_invoke()
{
  v4[14] = *MEMORY[0x1E69E9840];
  v3[0] = @"LSLaunchDLabel";
  v4[0] = objc_opt_class();
  v3[1] = @"LSFileQuarantineExcludedPathPatterns";
  v4[1] = objc_opt_class();
  v3[2] = @"MKDirectionsApplicationSupportedModes";
  v4[2] = objc_opt_class();
  v3[3] = @"UIBackgroundModes";
  v4[3] = objc_opt_class();
  v3[4] = @"AudioComponents";
  v4[4] = objc_opt_class();
  v3[5] = @"SBAppTags";
  v4[5] = objc_opt_class();
  v3[6] = @"UIRequiredDeviceCapabilities";
  v4[6] = objc_opt_class();
  v3[7] = @"UISupportedExternalAccessoryProtocols";
  v4[7] = objc_opt_class();
  v3[8] = @"LSMinimumSystemVersionByArchitecture";
  v4[8] = objc_opt_class();
  v3[9] = @"LSEnvironment";
  v4[9] = objc_opt_class();
  v3[10] = @"storeCohort";
  v4[10] = objc_opt_class();
  v3[11] = @"subgenres";
  v4[11] = objc_opt_class();
  v3[12] = @"LSEligibilityDeletionDomain";
  v4[12] = objc_opt_class();
  v3[13] = @"JSNotificationURLFormat";
  v4[13] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:14];
  v1 = [LSBundleRecordBuilder _LSKeyTypeMap]::typeMap;
  [LSBundleRecordBuilder _LSKeyTypeMap]::typeMap = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (void)setFlagsFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [(LSBundleRecordBuilder *)self _LSBundleFlagMap];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__LSBundleRecordBuilder_setFlagsFromDictionary___block_invoke;
  v14[3] = &unk_1E6A1B008;
  v6 = v4;
  v15 = v6;
  v16 = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v14];

  v7 = [v6 objectForKey:*MEMORY[0x1E695E120]];

  if (v7)
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:2];
  }

  v8 = [v6 objectForKey:@"Java"];

  if (v8)
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:0x2000];
  }

  v9 = objc_opt_class();
  v10 = [v6 objectForKey:@"UIApplicationSceneManifest"];
  v11 = v10;
  if (v9 && v10)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = 0;
      goto LABEL_14;
    }
  }

  else if (!v10)
  {
    goto LABEL_14;
  }

  if ([v11 _LS_BoolForKey:@"CPSupportsDashboardNavigationScene"])
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:0x4000000000000000];
  }

  if ([v11 _LS_BoolForKey:@"CPSupportsInstrumentClusterNavigationScene"])
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:0x8000000000000000];
  }

LABEL_14:

  registrationInfo = self->_registrationInfo;
  if (registrationInfo)
  {
    if (registrationInfo->bundleClass == 2)
    {
      v13 = 0;
      [(LSBundleRecordBuilder *)self addItemInfoFlag:_LSGetApplicationFlagsFromPlist(v6, 0, (LOBYTE(registrationInfo->itemFlags) >> 3) & 1, 0, 0, &v13)];
      if (v13)
      {
        [(LSBundleRecordBuilder *)self addBundleFlag:0x2000000000];
      }
    }
  }
}

void __48__LSBundleRecordBuilder_setFlagsFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) _LS_BoolForKey:v6])
  {
    [*(a1 + 40) addBundleFlag:{objc_msgSend(v5, "unsignedLongLongValue")}];
  }
}

- (void)setRaritiesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [(LSBundleRecordBuilder *)self _LSPlistRaritiesMap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__LSBundleRecordBuilder_setRaritiesFromDictionary___block_invoke;
  v7[3] = &unk_1E6A1B008;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __51__LSBundleRecordBuilder_setRaritiesFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _LSKeyTypeMap];
  v7 = [v6 objectForKey:v14];

  v8 = [*(a1 + 40) objectForKey:v14];
  v9 = v8;
  if (v7 && v8)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v9 = 0;
      goto LABEL_9;
    }
  }

  else if (!v8)
  {
    goto LABEL_9;
  }

  v10 = *(a1 + 32);
  if (!v10[15])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v12 = *(a1 + 32);
    v13 = *(v12 + 120);
    *(v12 + 120) = v11;

    v10 = *(a1 + 32);
  }

  [v10 addPlistFlag:{objc_msgSend(v5, "unsignedLongLongValue")}];
  [*(*(a1 + 32) + 120) setObject:v9 forKey:v14];
LABEL_9:
}

- (void)setCommonInfoPlistKeysFromDictionary:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__LSBundleRecordBuilder_setCommonInfoPlistKeysFromDictionary___block_invoke;
  v3[3] = &unk_1E6A1B030;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

void __62__LSBundleRecordBuilder_setCommonInfoPlistKeysFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (_NSIsNSString() && _LSBundleInfoPlistKeyIsCommon(v10))
  {
    v6 = *(*(a1 + 32) + 128);
    if (!v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
      v8 = *(a1 + 32);
      v9 = *(v8 + 128);
      *(v8 + 128) = v7;

      v6 = *(*(a1 + 32) + 128);
    }

    [v6 setObject:v5 forKey:v10];
  }
}

- (void)parseArchitecturesFromDict:(id)a3
{
  v6 = a3;
  v4 = [v6 objectForKey:@"_LSSliceInfosKey"];
  slices = self->_slices;
  self->_slices = v4;
}

- (id)iconsDictionaryFromDict:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 objectForKey:@"CFBundleIcons"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
  }

  v9 = [v4 _LS_BoolForKey:@"UIPrerenderedIcon"];
  if (v9)
  {
    [(LSBundleRecordBuilder *)self addIconFlag:2];
  }

  v10 = objc_opt_class();
  v11 = [v7 objectForKey:@"CFBundlePrimaryIcon"];
  v12 = v11;
  if (!v10 || !v11)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

LABEL_14:
    v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v7];
    v32 = @"CFBundleIconName";
    v33[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [v13 setObject:v14 forKeyedSubscript:@"CFBundlePrimaryIcon"];

    v15 = [v13 copy];
    v7 = v15;
    goto LABEL_15;
  }

  if (objc_opt_isKindOfClass())
  {
    goto LABEL_14;
  }

  v12 = 0;
LABEL_15:
  if (!v7 || ![v7 count])
  {
    v16 = [v4 objectForKey:@"CFBundleIconFiles"];
    if (_NSIsNSArray())
    {
      v17 = v16;
      v18 = 0;
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

    if (_NSIsNSString())
    {
      v18 = v16;
      if (v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v22 = objc_opt_class();
      v23 = [v4 objectForKey:*MEMORY[0x1E695E130]];
      v24 = v23;
      if (v22 && v23 && (objc_opt_isKindOfClass() & 1) == 0)
      {

        v18 = 0;
      }

      else
      {
        v18 = v24;
        if (v24)
        {
LABEL_22:
          v31 = v18;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
          if (!v17)
          {
LABEL_29:

            goto LABEL_30;
          }

LABEL_23:
          v29 = @"CFBundlePrimaryIcon";
          v19 = [MEMORY[0x1E696AD98] numberWithBool:{v9, @"CFBundleIconFiles", @"UIPrerenderedIcon", v17}];
          v28[1] = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:2];
          v30 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

          v7 = v21;
          goto LABEL_29;
        }
      }
    }

    v17 = 0;
    goto LABEL_29;
  }

LABEL_30:

  v25 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)parseIconFilenamesFromDict:(id)a3 forPlatform:(unsigned int)a4
{
  v10 = a3;
  v6 = [(LSBundleRecordBuilder *)self iconsDictionaryFromDict:?];
  iconsDict = self->_iconsDict;
  self->_iconsDict = v6;

  if (_LSIconDictionarySupportsAssetCatalogs(self->_iconsDict))
  {
    [(LSBundleRecordBuilder *)self addIconFlag:4];
    v8 = _LSIconDictionaryGetPrimaryIconName(self->_iconsDict);
    primaryIconName = self->_primaryIconName;
    self->_primaryIconName = v8;
  }

  if (a4 - 13 <= 0xFFFFFFFD && _LSIconDictionarySupportsAlternateIcons(self->_iconsDict))
  {
    [(LSBundleRecordBuilder *)self addIconFlag:8];
  }
}

- (void)parseDeviceFamilyFromDict:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"UIDeviceFamily"];
  if (!v5)
  {
    v5 = [v4 objectForKey:@"DeviceFamily"];
    if (!v5)
    {
      v5 = [v4 objectForKey:@"ProductType"];
    }
  }

  if (_NSIsNSArray())
  {
    objc_storeStrong(&self->_deviceFamily, v5);
  }

  else if ((_NSIsNSString() & 1) != 0 || _NSIsNSNumber())
  {
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    deviceFamily = self->_deviceFamily;
    self->_deviceFamily = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)parseDocumentClaimsFromDict:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v4 = objc_opt_class();
  v5 = [v22 objectForKey:*MEMORY[0x1E695E128]];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  documentClaims = self->_documentClaims;
  self->_documentClaims = v6;

  v9 = LSCopyClaimListWithoutClaimsClaimingDefaultAppTypes(self->_documentClaims);
  v10 = self->_documentClaims;
  self->_documentClaims = v9;

  v11 = self->_documentClaims;
  if (!v11)
  {
    goto LABEL_26;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v11;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v13)
  {
    goto LABEL_25;
  }

  v14 = *v24;
  v15 = *MEMORY[0x1E695E178];
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v23 + 1) + 8 * i);
      if (_NSIsNSDictionary())
      {
        v18 = objc_opt_class();
        v19 = [v17 objectForKey:v15];
        v20 = v19;
        if (v18 && v19)
        {
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v20 = 0;
LABEL_20:

            continue;
          }
        }

        else if (!v19)
        {
          goto LABEL_20;
        }

        if (![v20 caseInsensitiveCompare:@"Shell"])
        {
          *&self->_moreFlags |= 0x4000u;

          goto LABEL_25;
        }

        goto LABEL_20;
      }
    }

    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_25:

LABEL_26:
  v21 = *MEMORY[0x1E69E9840];
}

- (void)parseURLClaimsFromDict:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 objectForKey:@"PrivateURLSchemes"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
  }

  v9 = objc_opt_class();
  v10 = [v4 objectForKey:*MEMORY[0x1E695E198]];
  v11 = v10;
  if (v9 && v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    if (v7)
    {
      goto LABEL_14;
    }

    v11 = 0;
LABEL_17:
    objc_storeStrong(&self->_URLClaims, v11);
    goto LABEL_18;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  if (!v11)
  {
LABEL_14:
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v11 = 0;
    goto LABEL_15;
  }

  v12 = [v11 mutableCopy];
LABEL_15:
  v16[0] = *MEMORY[0x1E695E190];
  v16[1] = @"CFBundleURLIsPrivate";
  v17[0] = v7;
  v17[1] = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(NSArray *)v12 addObject:v13];
  URLClaims = self->_URLClaims;
  self->_URLClaims = v12;

LABEL_18:
  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)parseInfoPlist:(id)a3
{
  v301 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_NSIsNSDictionary() & 1) == 0)
  {
    goto LABEL_38;
  }

  v5 = objc_opt_class();
  v6 = [v4 objectForKey:*MEMORY[0x1E695E4F0]];
  v7 = v6;
  if (v5 && v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
  }

  identifier = self->_identifier;
  self->_identifier = v7;

  if (!self->_identifier)
  {
LABEL_38:
    v25 = 0;
    goto LABEL_368;
  }

  v9 = objc_opt_class();
  v10 = [v4 objectForKey:@"LSExecutableSDKVersion"];
  v11 = v10;
  if (v9 && v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
  }

  sdkVersion = self->_sdkVersion;
  self->_sdkVersion = v11;

  v13 = self->_sdkVersion;
  if (v13)
  {
    _LSVersionNumberMakeWithString(buf, v13);
    v14 = v300;
    *self->_sdkVersionNumber._opaque = *buf;
    *&self->_sdkVersionNumber._opaque[16] = v14;
  }

  [(LSBundleRecordBuilder *)self setFlagsFromDictionary:v4];
  [(LSBundleRecordBuilder *)self setRaritiesFromDictionary:v4];
  [(LSBundleRecordBuilder *)self setCommonInfoPlistKeysFromDictionary:v4];
  v15 = [v4 valueForKey:@"LSIsSecuredSystemContent"];
  if ([v15 BOOLValue])
  {
    v16 = 16;
  }

  else
  {
    v16 = 0;
  }

  *&self->_baseFlags = *&self->_baseFlags & 0xEF | v16;

  v288 = [v4 objectForKey:@"UIApplicationSupportsAlwaysOnDisplay"];
  if (v288 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([v288 BOOLValue])
    {
      v17 = 512;
    }

    else
    {
      v17 = 0;
    }

    self->_moreFlags = (*&self->_moreFlags & 0xFFFFFDFF | v17);
  }

  if ([v4 _LS_BoolForKey:@"UIDefaultsToPrivateAlwaysOnDisplayTreatment"])
  {
    v18 = 1024;
  }

  else
  {
    v18 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFFFBFF | v18);
  if ([v4 _LS_BoolForKey:@"LSRequiresPostProcessing"])
  {
    v19 = 0x2000;
  }

  else
  {
    v19 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFFDFFF | v19);
  if ([v4 _LS_BoolForKey:@"NSSupportsLiveActivities"])
  {
    v20 = 2048;
  }

  else
  {
    v20 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFFF7FF | v20);
  if ([v4 _LS_BoolForKey:@"NSSupportsLiveActivitiesFrequentUpdates"])
  {
    v21 = 4096;
  }

  else
  {
    v21 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFFEFFF | v21);
  v22 = objc_opt_class();
  v23 = [v4 objectForKey:@"_LSIsLinkEnabled"];
  v24 = v23;
  if (!v22 || !v23)
  {
    if (!v23)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (objc_opt_isKindOfClass())
  {
LABEL_40:
    if ([v24 BOOLValue])
    {
      v26 = 8;
    }

    else
    {
      v26 = 0;
    }

    *&self->_baseFlags = *&self->_baseFlags & 0xF7 | v26;
  }

LABEL_45:
  v27 = [v4 objectForKey:@"_LSIsLinkEnabled"];
  if ([v27 BOOLValue])
  {
    v28 = 8;
  }

  else
  {
    v28 = 0;
  }

  *&self->_baseFlags = *&self->_baseFlags & 0xF7 | v28;

  v29 = objc_opt_class();
  v30 = [v4 objectForKey:@"PurchaserID"];
  v31 = v30;
  if (v29 && v30 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v31 = 0;
  }

  purchaserDSID = self->_purchaserDSID;
  self->_purchaserDSID = v31;

  self->_hfsType = _LSGetRawOSTypeForPossibleString([v4 objectForKey:*MEMORY[0x1E695E138]]);
  self->_platform = 0;
  v33 = objc_opt_class();
  v34 = [v4 objectForKey:@"LSExecutablePlatformKey"];
  v35 = v34;
  if (v33 && v34)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (v34)
  {
LABEL_57:
    self->_platform = [v35 unsignedLongLongValue];
LABEL_58:
  }

  v36 = objc_opt_class();
  v37 = [v4 objectForKey:@"DTAppStoreToolsBuild"];
  v38 = v37;
  if (v36 && v37 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v38 = 0;
  }

  appStoreToolsBuildVersion = self->_appStoreToolsBuildVersion;
  self->_appStoreToolsBuildVersion = v38;

  v40 = objc_opt_class();
  v41 = [v4 objectForKey:*MEMORY[0x1E695E500]];
  v42 = v41;
  if (v40 && v41 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v42 = 0;
  }

  version = self->_version;
  self->_version = v42;

  platform = self->_platform;
  _LSVersionNumberMakeWithString(buf, self->_sdkVersion);
  _LSGetMinimumOSVersionStringAndReferencePlatformForPlatformSDKLinkage(v4, platform, buf, &self->_minSystemVersion, &self->_minSystemVersionPlatform);
  v45 = objc_opt_class();
  v46 = [v4 objectForKey:@"LSMaximumSystemVersion"];
  v47 = v46;
  if (v45 && v46 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v47 = 0;
  }

  maxSystemVersion = self->_maxSystemVersion;
  self->_maxSystemVersion = v47;

  v49 = objc_opt_class();
  v50 = [v4 objectForKey:*MEMORY[0x1E695E148]];
  v51 = v50;
  if (v49 && v50 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v51 = 0;
  }

  shortVersionString = self->_shortVersionString;
  self->_shortVersionString = v51;

  v53 = objc_opt_class();
  v286 = *MEMORY[0x1E695E4F8];
  v54 = [v4 objectForKey:?];
  v55 = v54;
  if (v53 && v54 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v55 = 0;
  }

  bundleName = self->_bundleName;
  self->_bundleName = v55;

  v57 = objc_opt_class();
  v285 = *MEMORY[0x1E695E120];
  v58 = [v4 objectForKey:?];
  v59 = v58;
  if (v57 && v58 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v59 = 0;
  }

  displayName = self->_displayName;
  self->_displayName = v59;

  v61 = objc_opt_class();
  v62 = [v4 objectForKey:v286];
  v63 = v62;
  if (v61 && v62 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v63 = 0;
  }

  shortDisplayName = self->_shortDisplayName;
  self->_shortDisplayName = v63;

  v65 = objc_opt_class();
  v66 = [v4 objectForKey:@"NSMicrophoneUsageDescription"];
  v67 = v66;
  if (v65 && v66 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v67 = 0;
  }

  microphoneUsageDescription = self->_microphoneUsageDescription;
  self->_microphoneUsageDescription = v67;

  v69 = objc_opt_class();
  v70 = [v4 objectForKey:@"NSIdentityUsageDescription"];
  v71 = v70;
  if (v69 && v70 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v71 = 0;
  }

  identityUsageDescription = self->_identityUsageDescription;
  self->_identityUsageDescription = v71;

  v73 = objc_opt_class();
  v74 = [v4 objectForKey:@"artistName"];
  v75 = v74;
  if (v73 && v74 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v75 = 0;
  }

  vendorName = self->_vendorName;
  self->_vendorName = v75;

  v77 = objc_opt_class();
  v78 = [v4 objectForKey:@"itemName"];
  v79 = v78;
  if (v77 && v78 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v79 = 0;
  }

  itemName = self->_itemName;
  self->_itemName = v79;

  v81 = objc_opt_class();
  v82 = [v4 objectForKey:@"s"];
  v83 = v82;
  if (v81 && v82 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v83 = 0;
  }

  storefront = self->_storefront;
  self->_storefront = v83;

  v85 = objc_opt_class();
  v86 = [v4 objectForKey:@"softwareVersionExternalIdentifier"];
  v87 = v86;
  if (v85 && v86 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v87 = 0;
  }

  versionID = self->_versionID;
  self->_versionID = v87;

  if (!self->_versionID)
  {
    v89 = objc_opt_class();
    v90 = [v4 objectForKey:@"betaExternalVersionIdentifier"];
    v91 = v90;
    if (v89 && v90 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v91 = 0;
    }

    v92 = self->_versionID;
    self->_versionID = v91;
  }

  v93 = objc_opt_class();
  v94 = [v4 objectForKey:@"sourceApp"];
  v95 = v94;
  if (v93 && v94 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v95 = 0;
  }

  sourceAppBundleID = self->_sourceAppBundleID;
  self->_sourceAppBundleID = v95;

  v97 = objc_opt_class();
  v98 = [v4 objectForKey:@"variantID"];
  v99 = v98;
  if (v97 && v98 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v99 = 0;
  }

  appVariant = self->_appVariant;
  self->_appVariant = v99;

  v101 = objc_opt_class();
  v102 = [v4 objectForKey:@"_LSExecutablePath"];
  v103 = v102;
  if (v101 && v102 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v103 = 0;
  }

  execPath = self->_execPath;
  self->_execPath = v103;

  v105 = objc_opt_class();
  v106 = [v4 objectForKey:@"genre"];
  v107 = v106;
  if (v105 && v106 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v107 = 0;
  }

  genre = self->_genre;
  self->_genre = v107;

  v109 = objc_opt_class();
  v110 = [v4 objectForKey:@"distributorInfo"];
  v111 = v110;
  if (v109 && v110 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v111 = 0;
  }

  distributorInfo = self->_distributorInfo;
  self->_distributorInfo = v111;

  v113 = objc_opt_class();
  v114 = [v4 objectForKey:@"managementDeclarationIdentifier"];
  v115 = v114;
  if (v113 && v114 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v115 = 0;
  }

  managementDeclarationIdentifier = self->_managementDeclarationIdentifier;
  self->_managementDeclarationIdentifier = v115;

  v117 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  equivalentBundleIDs = self->_equivalentBundleIDs;
  self->_equivalentBundleIDs = v117;

  v119 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  counterpartAppBundleIDs = self->_counterpartAppBundleIDs;
  self->_counterpartAppBundleIDs = v119;

  v121 = objc_opt_class();
  v122 = [v4 objectForKey:@"LSCounterpartIdentifiers"];
  v287 = v122;
  v123 = v122;
  if (v121 && v122)
  {
    v123 = v122;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_147:
      v287 = 0;
      goto LABEL_148;
    }
  }

  else if (!v122)
  {
    goto LABEL_147;
  }

  [(NSMutableSet *)self->_counterpartAppBundleIDs addObjectsFromArray:v123];
  [(NSMutableSet *)self->_equivalentBundleIDs addObjectsFromArray:v123];
LABEL_148:
  v124 = objc_opt_class();
  v125 = [v4 objectForKey:@"NSEquivalentBundleIdentifiers"];
  v289 = v125;
  v126 = v125;
  if (v124 && v125)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    v126 = v289;
    if ((isKindOfClass & 1) == 0)
    {

LABEL_154:
      v289 = 0;
      goto LABEL_155;
    }
  }

  else if (!v125)
  {
    goto LABEL_154;
  }

  [(NSMutableSet *)self->_equivalentBundleIDs addObjectsFromArray:v126];
LABEL_155:
  v128 = objc_opt_class();
  v129 = [v4 objectForKey:@"label"];
  v130 = v129;
  if (v128 && v129 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v130 = 0;
  }

  ratingLabel = self->_ratingLabel;
  self->_ratingLabel = v130;

  v132 = objc_opt_class();
  v133 = [v4 objectForKey:@"itemId"];
  v134 = v133;
  if (v132 && v133 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v134 = 0;
  }

  itemID = self->_itemID;
  self->_itemID = v134;

  v136 = objc_opt_class();
  v137 = [v4 objectForKey:@"rank"];
  v138 = v137;
  if (v136 && v137 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v138 = 0;
  }

  ratingRank = self->_ratingRank;
  self->_ratingRank = v138;

  v140 = objc_opt_class();
  v141 = [v4 objectForKey:@"genreId"];
  v142 = v141;
  if (v140 && v141 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v142 = 0;
  }

  genreID = self->_genreID;
  self->_genreID = v142;

  v144 = objc_opt_class();
  v145 = [v4 objectForKey:@"LSApplicationCategoryType"];
  v146 = v145;
  if (v144 && v145 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v146 = 0;
  }

  categoryType = self->_categoryType;
  self->_categoryType = v146;

  v148 = objc_opt_class();
  v149 = [v4 objectForKey:@"LSApplicationSecondaryCategoryType"];
  v150 = v149;
  if (v148 && v149 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v150 = 0;
  }

  secondCategoryType = self->_secondCategoryType;
  self->_secondCategoryType = v150;

  if (!self->_categoryType && !self->_secondCategoryType)
  {
    v152 = objc_opt_class();
    v153 = [v4 objectForKey:@"categories"];
    v154 = v153;
    if (v152 && v153 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v154 = 0;
    }

    v155 = [v154 firstObject];
    objc_opt_class();
    v156 = objc_opt_isKindOfClass();

    if (v156)
    {
      v157 = [v154 firstObject];
      v158 = self->_categoryType;
      self->_categoryType = v157;

      if ([v154 count] >= 2)
      {
        v159 = [v154 objectAtIndex:1];
        objc_opt_class();
        v160 = objc_opt_isKindOfClass();

        if (v160)
        {
          v161 = [v154 objectAtIndex:1];
          v162 = self->_secondCategoryType;
          self->_secondCategoryType = v161;
        }
      }
    }
  }

  v163 = objc_opt_class();
  v164 = [v4 objectForKey:@"MachOUUIDs"];
  v165 = v164;
  if (v163 && v164 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v165 = 0;
  }

  machOUUIDs = self->_machOUUIDs;
  self->_machOUUIDs = v165;

  v167 = objc_opt_class();
  v168 = [v4 objectForKey:@"LSApplicationQueriesSchemes"];
  v169 = v168;
  if (v167 && v168 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v169 = 0;
  }

  queriableSchemes = self->_queriableSchemes;
  self->_queriableSchemes = v169;

  v171 = objc_opt_class();
  v172 = [v4 objectForKey:@"_LSBundleLibraryPath"];
  v173 = v172;
  if (v171 && v172 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v173 = 0;
  }

  libraryPath = self->_libraryPath;
  self->_libraryPath = v173;

  v175 = objc_opt_class();
  v176 = [v4 objectForKey:@"_LSBundleLibraryItems"];
  v177 = v176;
  if (v175 && v176 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v177 = 0;
  }

  libraryItems = self->_libraryItems;
  self->_libraryItems = v177;

  v179 = objc_opt_class();
  v180 = [v4 objectForKey:@"UTExportedTypeDeclarations"];
  v181 = v180;
  if (v179 && v180 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v181 = 0;
  }

  exportedTypes = self->_exportedTypes;
  self->_exportedTypes = v181;

  v183 = objc_opt_class();
  v184 = [v4 objectForKey:@"UTImportedTypeDeclarations"];
  v185 = v184;
  if (v183 && v184 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v185 = 0;
  }

  importedTypes = self->_importedTypes;
  self->_importedTypes = v185;

  [(LSBundleRecordBuilder *)self parseDocumentClaimsFromDict:v4];
  v187 = objc_opt_class();
  v188 = [v4 objectForKey:@"_LSBundlePlugins"];
  v189 = v188;
  if (v187 && v188 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v189 = 0;
  }

  pluginPlists = self->_pluginPlists;
  self->_pluginPlists = v189;

  v191 = objc_opt_class();
  v192 = [v4 objectForKey:@"_LSIntentDefinitionURLs"];
  v193 = v192;
  if (v191 && v192 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v193 = 0;
  }

  intentDefinitionURLs = self->_intentDefinitionURLs;
  self->_intentDefinitionURLs = v193;

  v195 = objc_opt_class();
  v196 = [v4 objectForKey:@"BGTaskSchedulerPermittedIdentifiers"];
  v197 = v196;
  if (v195 && v196 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v197 = 0;
  }

  bgPermittedIdentifiers = self->_bgPermittedIdentifiers;
  self->_bgPermittedIdentifiers = v197;

  v199 = objc_opt_class();
  v200 = [v4 objectForKey:@"CARInstrumentClusterURLSchemes"];
  v201 = v200;
  if (v199 && v200 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v201 = 0;
  }

  carPlayInstrumentClusterURLSchemes = self->_carPlayInstrumentClusterURLSchemes;
  self->_carPlayInstrumentClusterURLSchemes = v201;

  v203 = objc_opt_class();
  v204 = [v4 objectForKey:@"GCSupportsControllerUserInteraction"];
  v205 = v204;
  if (v203 && v204)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_239:

      goto LABEL_240;
    }

LABEL_235:
    if ([v205 BOOLValue])
    {
      v206 = 4;
    }

    else
    {
      v206 = 0;
    }

    self->_moreFlags = (*&self->_moreFlags & 0xFFFFFFFB | v206);
    goto LABEL_239;
  }

  if (v204)
  {
    goto LABEL_235;
  }

LABEL_240:
  v207 = objc_opt_class();
  v208 = [v4 objectForKey:@"GCSupportedGameControllers"];
  v209 = v208;
  if (v207 && v208 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v209 = 0;
  }

  supportedGameControllers = self->_supportedGameControllers;
  self->_supportedGameControllers = v209;

  v211 = objc_opt_class();
  v212 = [v4 objectForKey:@"CoreSpotlightContinuation"];
  v213 = v212;
  if (v211 && v212)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_253:

      goto LABEL_254;
    }

LABEL_249:
    if ([v213 BOOLValue])
    {
      v214 = 8;
    }

    else
    {
      v214 = 0;
    }

    self->_moreFlags = (*&self->_moreFlags & 0xFFFFFFF7 | v214);
    goto LABEL_253;
  }

  if (v212)
  {
    goto LABEL_249;
  }

LABEL_254:
  v215 = objc_opt_class();
  v216 = [v4 objectForKey:@"CoreSpotlightActions"];
  v217 = v216;
  if (v215 && v216)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_260;
    }
  }

  else if (!v216)
  {
    goto LABEL_261;
  }

  *&self->_moreFlags |= 0x10u;
LABEL_260:

LABEL_261:
  v218 = [v4 objectForKey:@"GCSupportsGameMode"];
  v219 = v218 == 0;

  if (!v219)
  {
    *&self->_moreFlags |= 0x800000u;
    if ([v4 _LS_BoolForKey:@"GCSupportsGameMode"])
    {
      v220 = 0x1000000;
    }

    else
    {
      v220 = 0;
    }

    self->_moreFlags = (*&self->_moreFlags & 0xFEFFFFFF | v220);
  }

  v221 = [v4 objectForKey:@"LSSupportsGameMode"];
  v222 = v221 == 0;

  if (!v222)
  {
    *&self->_moreFlags |= 0x800000u;
    if ([v4 _LS_BoolForKey:@"LSSupportsGameMode"])
    {
      v223 = 0x1000000;
    }

    else
    {
      v223 = 0;
    }

    self->_moreFlags = (*&self->_moreFlags & 0xFEFFFFFF | v223);
  }

  if ([v4 _LS_BoolForKey:@"_LSIsOnCryptex"])
  {
    v224 = 0x2000000;
  }

  else
  {
    v224 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFDFFFFFF | v224);
  v225 = objc_opt_class();
  v226 = [v4 objectForKey:@"_LSLocalizedStringsDictionary"];
  v227 = v226;
  if (v225 && v226)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v227 = 0;
      goto LABEL_295;
    }
  }

  else if (!v226)
  {
    goto LABEL_295;
  }

  v228 = objc_opt_class();
  v229 = objc_opt_class();
  if (_LSIsDictionaryWithKeysAndValuesOfClass(v227, v228, v229))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&v300 = 0x2020000000;
    BYTE8(v300) = 1;
    v297[0] = MEMORY[0x1E69E9820];
    v297[1] = 3221225472;
    v297[2] = __40__LSBundleRecordBuilder_parseInfoPlist___block_invoke;
    v297[3] = &unk_1E6A1B058;
    v297[4] = buf;
    [v227 enumerateKeysAndObjectsUsingBlock:v297];
    if (*(*&buf[8] + 24) == 1)
    {
      objc_storeStrong(&self->_localizedStrings, v227);
      v230 = [v227 objectForKeyedSubscript:v285];
      v231 = v230;
      if (v230 && [v230 count])
      {
        objc_storeStrong(&self->_localizedNames, v231);
      }

      v232 = [v227 objectForKeyedSubscript:v286];
      v233 = v232;
      if (v232 && [v232 count])
      {
        objc_storeStrong(&self->_localizedShortNames, v233);
      }

      v234 = [v227 objectForKeyedSubscript:@"NSMicrophoneUsageDescription"];
      v235 = v234;
      if (v234 && [v234 count])
      {
        objc_storeStrong(&self->_localizedMicrophoneUsageDescription, v235);
      }

      v236 = [v227 objectForKeyedSubscript:@"NSIdentityUsageDescription"];
      v237 = v236;
      if (v236 && [v236 count])
      {
        objc_storeStrong(&self->_localizedIdentityUsageDescription, v237);
      }

      v238 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v294[0] = MEMORY[0x1E69E9820];
      v294[1] = 3221225472;
      v294[2] = __40__LSBundleRecordBuilder_parseInfoPlist___block_invoke_2;
      v294[3] = &unk_1E6A1B080;
      v239 = v238;
      v295 = v239;
      v296 = v4;
      _LSBundleDisplayNameContextEnumerate(v294);
      v240 = [v239 copy];
      unlocalizedNamesWithContext = self->_unlocalizedNamesWithContext;
      self->_unlocalizedNamesWithContext = v240;
    }

    _Block_object_dispose(buf, 8);
  }

LABEL_295:

  *&self->_baseFlags = (2 * *&self->_baseFlags) & 0x20 | *&self->_baseFlags & 0xDF;
  v242 = objc_opt_class();
  v243 = [v4 objectForKey:@"bundlePersonas"];
  v244 = v243;
  if (v242 && v243 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v244 = 0;
  }

  bundlePersonas = self->_bundlePersonas;
  self->_bundlePersonas = v244;

  v246 = [v4 objectForKey:@"_LSUsesSystemPersona"];
  v247 = [v246 BOOLValue];

  if (v247)
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:0x100000000000000];
  }

  v292 = 0u;
  v293 = 0u;
  v290 = 0u;
  v291 = 0u;
  v248 = self->_bundlePersonas;
  v249 = [(NSArray *)v248 countByEnumeratingWithState:&v290 objects:v298 count:16];
  if (v249)
  {
    v250 = *v291;
    do
    {
      for (i = 0; i != v249; ++i)
      {
        if (*v291 != v250)
        {
          objc_enumerationMutation(v248);
        }

        v252 = *(*(&v290 + 1) + 8 * i);
        if ([(_LSPersonaWithAttributes *)v252 personaType]!= 1 && [(_LSPersonaWithAttributes *)v252 personaType]!= 3)
        {
          *&self->_baseFlags &= ~0x20u;
        }
      }

      v249 = [(NSArray *)v248 countByEnumeratingWithState:&v290 objects:v298 count:16];
    }

    while (v249);
  }

  v253 = objc_opt_class();
  v254 = [v4 objectForKey:@"_LSDirectoryClass"];
  v255 = v254;
  if (v253 && v254 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v255 = 0;
  }

  directoryClass = self->_directoryClass;
  self->_directoryClass = v255;

  [(LSBundleRecordBuilder *)self parseURLClaimsFromDict:v4];
  [(LSBundleRecordBuilder *)self parseIconFilenamesFromDict:v4 forPlatform:self->_platform];
  [(LSBundleRecordBuilder *)self parseDeviceFamilyFromDict:v4];
  [(LSBundleRecordBuilder *)self parseArchitecturesFromDict:v4];
  v257 = objc_opt_class();
  v258 = [v4 objectForKey:@"_LSRequiresGarbageCollection"];
  v259 = v258;
  if (v257 && v258)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_324:

      goto LABEL_325;
    }

LABEL_320:
    if ([v259 BOOLValue])
    {
      v260 = 2;
    }

    else
    {
      v260 = 0;
    }

    *&self->_baseFlags = *&self->_baseFlags & 0xFD | v260;
    goto LABEL_324;
  }

  if (v258)
  {
    goto LABEL_320;
  }

LABEL_325:
  v261 = objc_opt_class();
  v262 = [v4 objectForKey:@"NSBuiltWithThreadSanitizer"];
  v263 = v262;
  if (v261 && v262)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_334:

      goto LABEL_335;
    }

LABEL_330:
    if ([v263 BOOLValue])
    {
      v264 = 4;
    }

    else
    {
      v264 = 0;
    }

    *&self->_baseFlags = *&self->_baseFlags & 0xFB | v264;
    goto LABEL_334;
  }

  if (v262)
  {
    goto LABEL_330;
  }

LABEL_335:
  v265 = objc_opt_class();
  v266 = [v4 objectForKey:@"LSExecutableFormat"];
  v267 = v266;
  if (v265 && v266)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v267 = 0;
      goto LABEL_342;
    }
  }

  else if (!v266)
  {
    goto LABEL_342;
  }

  if ([v267 isEqualToString:@"LSExecutable#!Format"])
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:16];
  }

LABEL_342:
  if (self->_inode)
  {
    v268 = 0;
  }

  else
  {
    v269 = [v4 objectForKey:*MEMORY[0x1E695E4E8]];
    v268 = v269 != 0;
  }

  v270 = objc_opt_class();
  v271 = [v4 objectForKey:@"LSEligibilityInstallPredicate"];
  v272 = v271;
  if (!v270 || !v271)
  {
    if (!v271)
    {
      goto LABEL_351;
    }

LABEL_350:

LABEL_356:
    [(LSBundleRecordBuilder *)self addPlistFlag:0x2000000];
    goto LABEL_357;
  }

  if (objc_opt_isKindOfClass())
  {
    goto LABEL_350;
  }

LABEL_351:
  v273 = objc_opt_class();
  v274 = [v4 objectForKey:@"LSEligibilityUninstallPredicate"];
  v275 = v274;
  if (v273 && v274 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v275 = 0;
  }

  if (v275)
  {
    goto LABEL_356;
  }

LABEL_357:
  v276 = objc_opt_class();
  v277 = [v4 objectForKey:@"LSRequiredFeatureFlags"];
  v278 = v277;
  if (v276 && v277)
  {
    v279 = objc_opt_isKindOfClass();

    if ((v279 & 1) == 0)
    {
      goto LABEL_363;
    }

    goto LABEL_362;
  }

  v280 = v277 == 0;

  if (!v280)
  {
LABEL_362:
    [(LSBundleRecordBuilder *)self addPlistFlag:0x4000000];
  }

LABEL_363:
  if (v268)
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:512];
    v281 = _LSInstallLog();
    if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
    {
      v282 = self->_identifier;
      *buf = 138412290;
      *&buf[4] = v282;
      _os_log_impl(&dword_18162D000, v281, OS_LOG_TYPE_DEFAULT, "Placeholder detected - Flagging bundle %@ incomplete", buf, 0xCu);
    }
  }

  v25 = 1;
LABEL_368:

  v283 = *MEMORY[0x1E69E9840];
  return v25;
}

void __40__LSBundleRecordBuilder_parseInfoPlist___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  if ((_LSIsDictionaryWithKeysAndValuesOfClass(v8, v6, v7) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __40__LSBundleRecordBuilder_parseInfoPlist___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_opt_class();
  v8 = [v6 objectForKey:a4];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v8;
    if (objc_opt_isKindOfClass())
    {
      v9 = v11;
    }

    else
    {

      v9 = 0;
    }
  }

  v12 = v9;
  [*(a1 + 32) setObject:v9 forKeyedSubscript:a4];
}

- (BOOL)parseInstallationInfo:(id)a3
{
  v153 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _NSIsNSDictionary();
  if ((v5 & 1) == 0)
  {
    goto LABEL_170;
  }

  v6 = objc_opt_class();
  v7 = [v4 objectForKey:@"Entitlements"];
  v8 = v7;
  if (v6 && v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  entitlements = self->_entitlements;
  self->_entitlements = v8;

  v10 = self->_entitlements;
  if (v10 && (*(&self->_moreFlags + 1) & 0x80) == 0)
  {
    [(NSDictionary *)v10 enumerateKeysAndObjectsWithOptions:0 usingBlock:&__block_literal_global_554];
  }

  v11 = objc_opt_class();
  v12 = [v4 objectForKey:@"BundleContainer"];
  v13 = v12;
  if (v11 && v12)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v12)
  {
LABEL_14:
    v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v13 isDirectory:1];
    bundleContainerURL = self->_bundleContainerURL;
    self->_bundleContainerURL = v14;

LABEL_15:
  }

  [(LSBundleRecordBuilder *)self setFlagsFromDictionary:v4];
  [(LSBundleRecordBuilder *)self setRaritiesFromDictionary:v4];
  v16 = objc_opt_class();
  v17 = [v4 objectForKey:@"CompatibilityState"];
  v18 = v17;
  if (v16 && v17 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v18 = 0;
  }

  compatibilityState = self->_compatibilityState;
  self->_compatibilityState = v18;

  v20 = objc_opt_class();
  v21 = [v4 objectForKey:@"PlaceholderFailureReason"];
  v22 = v21;
  if (v20 && v21 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v22 = 0;
  }

  installFailureReason = self->_installFailureReason;
  self->_installFailureReason = v22;

  v24 = objc_opt_class();
  v25 = [v4 objectForKey:@"LSInstallType"];
  v26 = v25;
  if (v24 && v25 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v26 = 0;
  }

  installType = self->_installType;
  self->_installType = v26;

  v28 = [v4 _LS_BoolForKey:@"IsContainerized"];
  self->_containerized = v28;
  if (v28)
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:0x4000000000];
    v29 = objc_opt_class();
    v30 = [v4 objectForKey:@"Container"];
    v31 = v30;
    if (v29 && v30)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (v30)
    {
LABEL_34:
      v32 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v31 isDirectory:1];
      dataContainerURL = self->_dataContainerURL;
      self->_dataContainerURL = v32;

LABEL_35:
    }
  }

  v34 = objc_opt_class();
  v35 = [v4 objectForKey:@"StashedVersionInfo"];
  v36 = v35;
  if (v34 && v35 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v36 = 0;
  }

  stashedAppInfo = self->_stashedAppInfo;
  self->_stashedAppInfo = v36;

  v38 = [v4 objectForKey:@"ApplicationDSID"];

  if (v38)
  {
    purchaserDSID = self->_purchaserDSID;
    if (purchaserDSID)
    {
      self->_purchaserDSID = 0;
    }

    v40 = objc_opt_class();
    v41 = [v4 objectForKey:@"ApplicationDSID"];
    v42 = v41;
    if (v40 && v41 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v42 = 0;
    }

    v43 = self->_purchaserDSID;
    self->_purchaserDSID = v42;
  }

  v44 = objc_opt_class();
  v45 = [v4 objectForKey:@"DownloaderDSID"];
  v46 = v45;
  if (v44 && v45 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v46 = 0;
  }

  downloaderDSID = self->_downloaderDSID;
  self->_downloaderDSID = v46;

  v48 = objc_opt_class();
  v49 = [v4 objectForKey:@"FamilyID"];
  v50 = v49;
  if (v48 && v49 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v50 = 0;
  }

  familyID = self->_familyID;
  self->_familyID = v50;

  v52 = objc_opt_class();
  v53 = [v4 objectForKey:@"SignerIdentity"];
  v54 = v53;
  if (v52 && v53 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v54 = 0;
  }

  signerIdentity = self->_signerIdentity;
  self->_signerIdentity = v54;

  v56 = objc_opt_class();
  v57 = [v4 objectForKey:@"CodeInfoIdentifier"];
  v58 = v57;
  if (v56 && v57 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v58 = 0;
  }

  codeInfoIdentifier = self->_codeInfoIdentifier;
  self->_codeInfoIdentifier = v58;

  v60 = objc_opt_class();
  v61 = [v4 objectForKey:@"SignerOrganization"];
  v62 = v61;
  if (v60 && v61 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v62 = 0;
  }

  signerOrganization = self->_signerOrganization;
  self->_signerOrganization = v62;

  v64 = objc_opt_class();
  v65 = [v4 objectForKey:@"ApplicationType"];
  v66 = v65;
  if (v64 && v65 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v66 = 0;
  }

  appType = self->_appType;
  self->_appType = v66;

  v68 = objc_opt_class();
  v69 = [v4 objectForKey:@"SerializedPlaceholderPath"];
  v70 = v69;
  if (v68 && v69 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v70 = 0;
  }

  serializedPlaceholderPath = self->_serializedPlaceholderPath;
  self->_serializedPlaceholderPath = v70;

  if ([(NSString *)self->_appType isEqualToString:@"SystemAppPlaceholder"])
  {
    self->_bundleClass = 14;
    v72 = _LSRegistrationLog();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v151 = 138412290;
      v152 = identifier;
      _os_log_impl(&dword_18162D000, v72, OS_LOG_TYPE_DEBUG, "Setting LSBundleClassSystemPlaceholder for app %@", &v151, 0xCu);
    }
  }

  v74 = objc_opt_class();
  v75 = [v4 objectForKey:@"WatchKitVersion"];
  v76 = v75;
  if (v74 && v75 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v76 = 0;
  }

  watchKitVersion = self->_watchKitVersion;
  self->_watchKitVersion = v76;

  v78 = objc_opt_class();
  v79 = [v4 objectForKey:@"ComplicationPrincipalClass"];
  v80 = v79;
  if (v78 && v79 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v80 = 0;
  }

  complicationPrincipalClass = self->_complicationPrincipalClass;
  self->_complicationPrincipalClass = v80;

  v82 = objc_opt_class();
  v83 = [v4 objectForKey:@"StaticDiskUsage"];
  v84 = v83;
  if (v82 && v83 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v84 = 0;
  }

  staticDiskUsage = self->_staticDiskUsage;
  self->_staticDiskUsage = v84;

  v86 = objc_opt_class();
  v87 = [v4 objectForKey:@"SupportedComplicationFamilies"];
  v88 = v87;
  if (v86 && v87 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v88 = 0;
  }

  supportedComplicationFamilies = self->_supportedComplicationFamilies;
  self->_supportedComplicationFamilies = v88;

  v90 = objc_opt_class();
  v91 = [v4 objectForKey:@"LSCounterpartIdentifiers"];
  v92 = v91;
  if (v90 && v91)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v92 = 0;
      goto LABEL_102;
    }
  }

  else if (!v91)
  {
    goto LABEL_102;
  }

  [(NSMutableSet *)self->_counterpartAppBundleIDs addObjectsFromArray:v92];
  [(NSMutableSet *)self->_equivalentBundleIDs addObjectsFromArray:v92];
LABEL_102:
  v93 = objc_opt_class();
  v94 = [v4 objectForKey:@"GroupContainers"];
  v95 = v94;
  if (v93 && v94 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v95 = 0;
  }

  groupContainers = self->_groupContainers;
  self->_groupContainers = v95;

  v97 = objc_opt_class();
  v98 = [v4 objectForKey:@"EnvironmentVariables"];
  v99 = v98;
  if (v97 && v98 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v99 = 0;
  }

  sandboxEnvironmentVariables = self->_sandboxEnvironmentVariables;
  self->_sandboxEnvironmentVariables = v99;

  v101 = objc_opt_class();
  v102 = [v4 objectForKey:@"_LSBundlePlugins"];
  v103 = v102;
  if (v101 && v102 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v103 = 0;
  }

  pluginMIDicts = self->_pluginMIDicts;
  self->_pluginMIDicts = v103;

  v105 = objc_opt_class();
  v106 = [v4 objectForKey:@"DriverKitExtensionPaths"];
  v107 = v106;
  if (v105 && v106 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v107 = 0;
  }

  driverExtensionPaths = self->_driverExtensionPaths;
  self->_driverExtensionPaths = v107;

  platform = self->_platform;
  v110 = _LSGetTeamIdentifierFromInstallDict(v4);
  teamID = self->_teamID;
  self->_teamID = v110;

  v112 = objc_opt_class();
  v113 = [v4 objectForKey:@"IsOnDemandInstallCapable"];
  v114 = v113;
  if (v112 && v113 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v114 = 0;
  }

  if ([v114 BOOLValue])
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:0x1000000000000000];
    v115 = objc_opt_class();
    v116 = [v4 objectForKey:@"ParentIdentifiers"];
    v117 = v116;
    if (v115 && v116 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v117 = 0;
    }

    parentApplicationIdentifiers = self->_parentApplicationIdentifiers;
    self->_parentApplicationIdentifiers = v117;
  }

  [(LSBundleRecordBuilder *)self setProfileValidationState:_LSGetProfileValidationStateFromInstallDictionary(v4)];
  v119 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v120 = objc_opt_class();
  v121 = [v4 objectForKey:@"UniqueInstallID"];
  v122 = v121;
  if (v120 && v121 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v122 = 0;
  }

  [v119 setObject:v122 forKeyedSubscript:@"UniqueInstallID"];

  v123 = objc_opt_class();
  v124 = [v4 objectForKey:@"InstallSessionID"];
  v125 = v124;
  if (v123 && v124 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v125 = 0;
  }

  [v119 setObject:v125 forKeyedSubscript:@"InstallSessionID"];

  if ([v119 count])
  {
    v126 = [v119 copy];
    mobileInstallIDs = self->_mobileInstallIDs;
    self->_mobileInstallIDs = v126;
  }

  if ([v4 _LS_BoolForKey:@"CodeSigningInfoNotAuthoritative"])
  {
    v128 = 32;
  }

  else
  {
    v128 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFFFFDF | v128);
  if ([v4 _LS_BoolForKey:@"IsSwiftPlaygroundsApp"])
  {
    v129 = 256;
  }

  else
  {
    v129 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFFFEFF | v129);
  v130 = objc_opt_class();
  v131 = [v4 objectForKey:@"AppManagementDomain"];
  v132 = v131;
  if (v130 && v131 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v132 = 0;
  }

  applicationManagementDomain = self->_applicationManagementDomain;
  self->_applicationManagementDomain = v132;

  v134 = objc_opt_class();
  v135 = [v4 objectForKey:@"LinkedParentBundleID"];
  v136 = v135;
  if (v134 && v135 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v136 = 0;
  }

  linkedParentBundleID = self->_linkedParentBundleID;
  self->_linkedParentBundleID = v136;

  v138 = objc_opt_class();
  v139 = [v4 objectForKey:@"SignatureVersion"];
  v140 = v139;
  if (v138 && v139 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v140 = 0;
  }

  signatureVersion = self->_signatureVersion;
  self->_signatureVersion = v140;

  v142 = objc_opt_class();
  v143 = [v4 objectForKey:@"AlternateIconName"];
  v144 = v143;
  if (v142 && v143 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v144 = 0;
  }

  alternatePrimaryIconName = self->_alternatePrimaryIconName;
  self->_alternatePrimaryIconName = v144;

  self->_webNotificationPlaceholder = [v4 _LS_BoolForKey:@"IsWebNotificationBundle"];
  if ([v4 _LS_BoolForKey:@"IsEligibleForWatchAppInstall"])
  {
    v146 = 0x10000;
  }

  else
  {
    v146 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFEFFFF | v146);
  if ([v4 _LS_BoolForKey:@"IsMarketplace"])
  {
    v147 = 0x80000;
  }

  else
  {
    v147 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFF7FFFF | v147);
  if ([v4 _LS_BoolForKey:@"SupportsAppMigration"])
  {
    v148 = 0x400000;
  }

  else
  {
    v148 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFBFFFFF | v148);

LABEL_170:
  v149 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)parseActivityTypesFromDictionary:(id)a3
{
  v4 = a3;
  v21 = 0;
  entitlements = self->_entitlements;
  if (entitlements)
  {
    v6 = objc_opt_class();
    v7 = [(NSDictionary *)entitlements objectForKey:@"useractivity-team-identifier"];
    teamID = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (v7)
      {
LABEL_12:
        v21 = teamID;
LABEL_19:
        identifier = self->_identifier;
        goto LABEL_20;
      }
    }

    else
    {
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        goto LABEL_12;
      }
    }

    v12 = self->_entitlements;
    v13 = objc_opt_class();
    v14 = [(NSDictionary *)v12 objectForKey:@"com.apple.developer.team-identifier"];
    teamID = v14;
    if (v13 && v14 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      teamID = 0;
    }

    v21 = teamID;
    if (teamID)
    {
      goto LABEL_19;
    }

    v17 = self->_entitlements;
    v18 = objc_opt_class();
    v19 = [(NSDictionary *)v17 objectForKey:@"application-identifier"];
    v20 = v19;
    if (v18 && v19)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v20 = 0;
        goto LABEL_30;
      }
    }

    else if (!v19)
    {
      goto LABEL_30;
    }

    _LSSplitApplicationIdentifier(v20, &v21, 0);
LABEL_30:

    teamID = v21;
    identifier = self->_identifier;
    if (v21)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  identifier = self->_identifier;
LABEL_10:
  teamID = self->_teamID;
LABEL_20:
  v15 = _LSCopyActivityTypesClaimedHashedAdvertisingStrings(identifier, teamID, v4, self->_entitlements);
  v16 = v15;
  if (v15 && [(__CFArray *)v15 count])
  {
    objc_storeStrong(&self->_activityTypes, v16);
  }
}

- (void)parseNSExtensionSDKDefinitionsFromDictionary:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = a3;
  context = objc_autoreleasePoolPush();
  v28 = objc_opt_new();
  v25 = self;
  entitlements = self->_entitlements;
  if (entitlements)
  {
    v5 = [(NSDictionary *)entitlements objectForKey:@"com.apple.private.coreservices.definesExtensionPoint"];

    if (v5)
    {
      v6 = objc_opt_class();
      v7 = [v27 objectForKey:@"NSExtensionSDK"];
      v8 = v7;
      if (v6 && v7 && (objc_opt_isKindOfClass() & 1) == 0)
      {

        v8 = 0;
      }

      [v28 addEntriesFromDictionary:v8];
    }
  }

  v9 = objc_opt_class();
  v10 = [v27 objectForKey:@"_LSBundleExtensionPoints"];
  v11 = v10;
  if (v9 && v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v13)
  {
    v14 = *v30;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = _LSExtensionsLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            [(LSBundleRecordBuilder *)v21 parseNSExtensionSDKDefinitionsFromDictionary:buf, v19];
          }

          goto LABEL_28;
        }

        v17 = _LSExtensionsLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v16;
          _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "Registering extension point definition: %@", buf, 0xCu);
        }

        v18 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v16];
        if (v18)
        {
          [v28 addEntriesFromDictionary:v18];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  if ([v28 count])
  {
    v22 = [v28 copy];
    extensionSDK = v25->_extensionSDK;
    v25->_extensionSDK = v22;
  }

  objc_autoreleasePoolPop(context);
  v24 = *MEMORY[0x1E69E9840];
}

- (LSBundleData)buildBundleData:(SEL)a3 error:(id)a4
{
  v220 = *MEMORY[0x1E69E9840];
  v7 = a4;
  bzero(retstr, 0x238uLL);
  retries = self->_retries;
  LOBYTE(retstr->queriableSchemes) = 11;
  BYTE1(retstr->queriableSchemes) = retries;
  __src = retstr;
  retstr->_clas = self->_bundleClass;
  bundleAlias = self->_bundleAlias;
  v207 = 0;
  v181 = v7;
  obj = _LSAliasAdd(v7, bundleAlias, &v207);
  v10 = v207;
  v11 = obj;
  v175 = v10;
  if (!obj)
  {
    v12 = _LSGetOSStatusFromNSError(v10);
    v11 = 0;
    if (v12)
    {
      v27 = v175;
LABEL_116:
      if (a5)
      {
        *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "[LSBundleRecordBuilder buildBundleData:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBundleRecordBuilder.mm", 2226);
      }

      goto LABEL_277;
    }
  }

  retstr->base.bookmark = v11;
  registrationInfo = self->_registrationInfo;
  if (registrationInfo)
  {
    retstr->base.container = registrationInfo->containerUnit;
    _LSBundleDataSetModTime(retstr, registrationInfo->contentModDate);
  }

  else
  {
    retstr->base.container = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  _LSBundleDataSetRegTime(retstr, Current);
  v15 = CFAbsoluteTimeGetCurrent();
  p_appStoreToolsBuildVersion = &retstr->appStoreToolsBuildVersion;
  hfsType = self->_hfsType;
  retstr->localizedNameWithContext[0] = v15;
  retstr->moreFlags = hfsType;
  retstr->base.platform = self->_platform;
  compatibilityState = self->_compatibilityState;
  v178 = self;
  if (compatibilityState)
  {
    v19 = [(NSNumber *)compatibilityState unsignedLongLongValue];
    *(&retstr->sequenceNumber + 4) = v19;
    if (v19)
    {
      v20 = _LSRegistrationLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        identifier = self->_identifier;
        *buf = 138412546;
        *&buf[4] = identifier;
        *&buf[12] = 2048;
        *&buf[14] = v19;
        _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEBUG, "Registering app %@ with compatibility state %llu", buf, 0x16u);
      }
    }
  }

  installFailureReason = self->_installFailureReason;
  if (installFailureReason)
  {
    v23 = [(NSNumber *)installFailureReason unsignedLongLongValue];
    *(p_appStoreToolsBuildVersion + 8) = v23;
    if (v23)
    {
      v24 = _LSRegistrationLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = self->_identifier;
        *buf = 138412546;
        *&buf[4] = v25;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_impl(&dword_18162D000, v24, OS_LOG_TYPE_ERROR, "Registering app %@ with install failure reason %llu", buf, 0x16u);
      }
    }
  }

  if (([__LSDefaultsGetSharedInstance() isInEducationMode] & 1) != 0 || (dataContainerURL = self->_dataContainerURL) == 0)
  {
    v173 = 0;
    v27 = v175;
  }

  else
  {
    v206 = v175;
    v173 = _LSAliasAddURL(v7, dataContainerURL, &v206);
    v27 = v206;

    if (!v173)
    {
      v12 = _LSGetOSStatusFromNSError(v27);
      v173 = 0;
      v172 = 0;
      if (v12)
      {
        goto LABEL_110;
      }
    }
  }

  __src->base.dataContainerAlias = v173;
  bundleContainerURL = self->_bundleContainerURL;
  if (bundleContainerURL)
  {
    v205 = v27;
    v29 = _LSAliasAddURL(v7, bundleContainerURL, &v205);
    v176 = v205;

    if (!v29)
    {
      v12 = _LSGetOSStatusFromNSError(v176);
      v29 = 0;
      if (v12)
      {
        v172 = 0;
        goto LABEL_109;
      }
    }
  }

  else
  {
    v29 = 0;
    v176 = v27;
  }

  v172 = v29;
  __src->activityTypes = v29;
  version = self->_version;
  if (version || (version = self->_shortVersionString) != 0)
  {
    _LSVersionNumberMakeWithString(buf, version);
    v31 = *buf;
    v32 = *&buf[16];
  }

  else
  {
    v31 = kLSVersionNumberNull;
    v32 = unk_1817E90C0;
  }

  *__src->base.version._opaque = v31;
  *&__src->base.version._opaque[16] = v32;
  minSystemVersion = self->_minSystemVersion;
  if (minSystemVersion)
  {
    _LSVersionNumberMakeWithString(buf, minSystemVersion);
    v34 = *buf;
    v35 = *&buf[16];
  }

  else
  {
    v34 = kLSVersionNumberNull;
    v35 = unk_1817E90C0;
  }

  v36 = __src;
  *&__src->minSystemVersionPlatform = v34;
  *&__src->_minSystemVersion._opaque[12] = v35;
  __src->_mtime = self->_minSystemVersionPlatform;
  maxSystemVersion = self->_maxSystemVersion;
  if (maxSystemVersion)
  {
    _LSVersionNumberMakeWithString(buf, maxSystemVersion);
    v38 = *buf;
    v39 = *&buf[16];
    v36 = __src;
  }

  else
  {
    v38 = kLSVersionNumberNull;
    v39 = unk_1817E90C0;
  }

  *&v36->_minSystemVersion._opaque[28] = v38;
  *&v36->_maxSystemVersion._opaque[12] = v39;
  v40 = *&self->_sdkVersionNumber._opaque[16];
  *v36->base.execSDKVersion._opaque = *self->_sdkVersionNumber._opaque;
  *&v36->base.execSDKVersion._opaque[16] = v40;
  *&__src->_maxSystemVersion._opaque[28] = _LSDatabaseCreateStringForCFString(v181, self->_appStoreToolsBuildVersion, 0);
  installType = self->_installType;
  if (installType && [(NSNumber *)installType unsignedLongLongValue])
  {
    previousInstallType = [(NSNumber *)self->_installType unsignedLongLongValue];
    v43 = v181;
  }

  else
  {
    previousInstallType = self->_previousInstallType;
    v43 = v181;
    if (!previousInstallType)
    {
      goto LABEL_40;
    }
  }

  __src->shortVersionString = previousInstallType;
LABEL_40:
  *p_appStoreToolsBuildVersion = self->_sequenceNumber;
  downloaderDSID = self->_downloaderDSID;
  if (downloaderDSID)
  {
    *(p_appStoreToolsBuildVersion + 12) = [(NSNumber *)downloaderDSID unsignedLongLongValue];
  }

  purchaserDSID = self->_purchaserDSID;
  if (purchaserDSID)
  {
    *(p_appStoreToolsBuildVersion + 11) = [(NSNumber *)purchaserDSID unsignedLongLongValue];
  }

  familyID = self->_familyID;
  if (familyID)
  {
    *(p_appStoreToolsBuildVersion + 13) = [(NSNumber *)familyID unsignedLongLongValue];
  }

  ratingRank = self->_ratingRank;
  if (ratingRank)
  {
    *(p_appStoreToolsBuildVersion + 18) = [(NSNumber *)ratingRank unsignedLongLongValue];
  }

  genreID = self->_genreID;
  if (genreID)
  {
    __src->ratingRank = [(NSNumber *)genreID unsignedLongLongValue];
  }

  itemID = self->_itemID;
  if (itemID)
  {
    *(p_appStoreToolsBuildVersion + 2) = [(NSNumber *)itemID unsignedLongLongValue];
  }

  staticDiskUsage = self->_staticDiskUsage;
  if (staticDiskUsage)
  {
    *(p_appStoreToolsBuildVersion + 10) = [(NSNumber *)staticDiskUsage unsignedLongLongValue];
  }

  storefront = self->_storefront;
  if (storefront)
  {
    *&__src->itemName = [(NSNumber *)storefront unsignedLongLongValue];
  }

  versionID = self->_versionID;
  if (versionID)
  {
    __src->storefront = [(NSNumber *)versionID unsignedLongLongValue];
  }

  LODWORD(__src->versionIdentifier) = _LSDatabaseCreateStringForCFString(v43, self->_sourceAppBundleID, 0);
  __src->deviceFamilies = _LSDatabaseCreateStringForCFString(v181, self->_identifier, 1);
  __src->base.exactIdentifier = _LSDatabaseCreateStringForCFString(v181, self->_identifier, 0);
  __src->base.bundleName = _LSDatabaseCreateStringForCFString(v181, self->_bundleName, 0);
  __src->base.execPath = _LSDatabaseCreateStringForCFString(v181, self->_execPath, 0);
  __src->base.displayName = _LSDatabaseCreateStringForCFString(v181, self->_displayName, 0);
  __src->filename = _LSDatabaseCreateStringForCFString(v181, self->_version, 0);
  __src->bundleVersion = _LSDatabaseCreateStringForCFString(v181, self->_shortVersionString, 0);
  HIDWORD(__src->installFailureReason) = _LSDatabaseCreateStringForCFString(v181, self->_vendorName, 0);
  appType = self->_appType;
  if (appType)
  {
    if ([(NSString *)appType isEqualToString:@"CoreServices"])
    {
      StringForCFString = _LSDatabaseCreateStringForCFString(v181, @"Hidden", 0);
      goto LABEL_64;
    }

    v55 = self->_appType;
  }

  else
  {
    v55 = 0;
  }

  StringForCFString = _LSDatabaseCreateStringForCFString(v181, v55, 0);
LABEL_64:
  __src->vendorName = StringForCFString;
  HIDWORD(__src->familyID) = _LSDatabaseCreateStringForCFString(v181, self->_itemName, 0);
  HIDWORD(__src->versionIdentifier) = _LSDatabaseCreateStringForCFString(v181, self->_appVariant, 0);
  __src->sourceAppBundleID = _LSDatabaseCreateStringForCFString(v181, self->_managementDeclarationIdentifier, 0);
  counterpartAppBundleIDs = self->_counterpartAppBundleIDs;
  if (counterpartAppBundleIDs)
  {
    v57 = [(NSMutableSet *)counterpartAppBundleIDs allObjects];
    __src->identifier = _LSDatabaseCreateStringArray(v181, v57, 0, 0);
  }

  equivalentBundleIDs = self->_equivalentBundleIDs;
  if (equivalentBundleIDs)
  {
    v59 = [(NSMutableSet *)equivalentBundleIDs allObjects];
    __src->counterpartIdentifiers = _LSDatabaseCreateStringArray(v181, v59, 0, 0);
  }

  parentApplicationIdentifiers = self->_parentApplicationIdentifiers;
  if (parentApplicationIdentifiers)
  {
    __src->sandboxEnvironmentVariables = _LSDatabaseCreateStringArray(v181, parentApplicationIdentifiers, 0, 0);
  }

  if ([(NSArray *)self->_bundlePersonas count])
  {
    v61 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_bundlePersonas, "count")}];
    memset(buf, 0, 24);
    std::vector<unsigned int>::reserve(buf, [(NSArray *)self->_bundlePersonas count]);
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v62 = self->_bundlePersonas;
    v63 = [(NSArray *)v62 countByEnumeratingWithState:&v201 objects:v219 count:16];
    if (v63)
    {
      v64 = *v202;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v202 != v64)
          {
            objc_enumerationMutation(v62);
          }

          v66 = *(*(&v201 + 1) + 8 * i);
          v67 = [(_LSPersonaWithAttributes *)v66 personaUniqueString];
          [v61 addObject:v67];

          *v216 = [(_LSPersonaWithAttributes *)v66 personaType];
          std::vector<unsigned int>::push_back[abi:nn200100](buf, v216);
        }

        v63 = [(NSArray *)v62 countByEnumeratingWithState:&v201 objects:v219 count:16];
      }

      while (v63);
    }

    p_appStoreToolsBuildVersion[62] = _LSDatabaseCreateStringArray(v181, v61, 0, 0);
    v68 = v181;
    [(_LSDatabase *)v181 store];
    v69 = _CSArrayCreate();
    *&__src->revision = v69;
    if (!__src->appContainerAlias || !v69)
    {
      v70 = _LSRegistrationLog();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        appContainerAlias = __src->appContainerAlias;
        v72 = *&__src->revision;
        *v216 = 134218240;
        *&v216[4] = appContainerAlias;
        v217 = 2048;
        v218 = v72;
        _os_log_impl(&dword_18162D000, v70, OS_LOG_TYPE_ERROR, "failed to allocate personas (%llx) or persona types (%llx) CSArray", v216, 0x16u);
      }

      *(p_appStoreToolsBuildVersion + 31) = 0;
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    self = v178;
  }

  directoryClass = self->_directoryClass;
  if (directoryClass)
  {
    v74 = [(NSNumber *)directoryClass unsignedLongLongValue];
  }

  else
  {
    v74 = -1;
  }

  __src->base.containingDirectoryClass = v74;
  __src->base.profileValidationState = [(LSBundleRecordBuilder *)self profileValidationState];
  *(&__src->managementDeclarationIdentifier + 1) = _LSDatabaseCreateStringForCFString(v181, self->_ratingLabel, 0);
  __src->ratingLabel = _LSDatabaseCreateStringForCFString(v181, self->_genre, 0);
  *(&__src->ratingLabel + 1) = _LSPlistAdd(v181, self->_distributorInfo);
  v75 = [FSNode nameForBookmarkData:self->_bundleAlias error:0];
  if (v75)
  {
    __src->secondaryCategoryType = _LSDatabaseCreateStringForCFString(v181, v75, 1);
  }

  if (!__src->secondaryCategoryType)
  {
    v12 = -10817;
    goto LABEL_109;
  }

  v76 = v178;
  __src->equivalentBundleIdentifiers = _LSDatabaseCreateStringForCFString(v181, v178->_categoryType, 0);
  __src->categoryType = _LSDatabaseCreateStringForCFString(v181, v178->_secondCategoryType, 0);
  deviceFamily = v178->_deviceFamily;
  if (deviceFamily)
  {
    memset(buf, 0, 24);
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v78 = deviceFamily;
    v79 = [(NSArray *)v78 countByEnumeratingWithState:&v197 objects:v215 count:16];
    if (v79)
    {
      v80 = *v198;
      do
      {
        for (j = 0; j != v79; ++j)
        {
          if (*v198 != v80)
          {
            objc_enumerationMutation(v78);
          }

          v82 = *(*(&v197 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            v83 = [v82 intValue];
            if (v83 >= 1)
            {
              *v216 = v83;
              std::vector<unsigned int>::push_back[abi:nn200100](buf, v216);
            }
          }
        }

        v79 = [(NSArray *)v78 countByEnumeratingWithState:&v197 objects:v215 count:16];
      }

      while (v79);
    }

    *v216 = 0;
    v84 = v181;
    [(_LSDatabase *)v181 store];
    v85 = _CSArrayCreate();
    HIDWORD(__src->itemID) = v85;
    if (v85)
    {
      v12 = 0;
    }

    else
    {
      v12 = _LSGetOSStatusFromNSError(*v216);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    v76 = v178;
    if (v12)
    {
      goto LABEL_109;
    }
  }

  machOUUIDs = v76->_machOUUIDs;
  if (machOUUIDs)
  {
    __src->base.machOUUIDs = _LSDatabaseCreateStringArray(v181, machOUUIDs, 0, 0);
  }

  v12 = [(LSBundleRecordBuilder *)v76 registerQueriableSchemes:v181 bundleData:?];
  if (v12)
  {
    goto LABEL_109;
  }

  LODWORD(__src->genreID) = _LSDatabaseCreateStringForCFString(v181, v76->_primaryIconName, 0);
  HIDWORD(__src->genreID) = _LSDatabaseCreateStringForCFString(v181, v76->_alternatePrimaryIconName, 0);
  __src->genre = _LSPlistAdd(v181, v76->_iconsDict);
  iconFileNames = v76->_iconFileNames;
  if (iconFileNames)
  {
    StringArray = _LSDatabaseCreateStringArray(v181, iconFileNames, 0, 0);
    __src->distributorInfo = StringArray;
    if (!StringArray)
    {
      goto LABEL_282;
    }
  }

  if ([(NSMutableDictionary *)v76->_plistRarities count]|| [(NSMutableDictionary *)v76->_commonInfoPlistEntries count])
  {
    v89 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v90 = v89;
    if (v76->_plistRarities)
    {
      [v89 addEntriesFromDictionary:?];
    }

    if (v178->_commonInfoPlistEntries)
    {
      [v90 addEntriesFromDictionary:?];
    }

    __src->base.infoDictionary = _LSPlistAdd(v181, v90);

    v76 = v178;
  }

  else
  {
    __src->base.infoDictionary = 0;
  }

  __src->base.groupContainers = _LSPlistAdd(v181, v76->_groupContainers);
  __src->base.entitlements = _LSPlistAdd(v181, v76->_entitlements);
  __src->bgPermittedIDs = _LSPlistAdd(v181, v76->_sandboxEnvironmentVariables);
  __src->base.intentDefinitionURLs = _LSPlistAdd(v181, v76->_intentDefinitionURLs);
  __src->driverExtensions = _LSDatabaseCreateStringArray(v181, v76->_bgPermittedIdentifiers, 0, 0);
  __src->extensionPoints = _LSDatabaseCreateStringArray(v181, v76->_carPlayInstrumentClusterURLSchemes, 0, 0);
  context = objc_autoreleasePoolPush();
  memset(buf, 0, 24);
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v91 = v178->_supportedGameControllers;
  v92 = [(NSArray *)v91 countByEnumeratingWithState:&v193 objects:v214 count:16];
  v93 = v181;
  if (v92)
  {
    v94 = *v194;
    do
    {
      for (k = 0; k != v92; ++k)
      {
        if (*v194 != v94)
        {
          objc_enumerationMutation(v91);
        }

        v96 = _LSPlistAdd(v93, *(*(&v193 + 1) + 8 * k));
        if (v96)
        {
          v97 = *&buf[8];
          if (*&buf[8] >= *&buf[16])
          {
            v99 = *buf;
            v100 = *&buf[8] - *buf;
            v101 = (*&buf[8] - *buf) >> 2;
            v102 = v101 + 1;
            if ((v101 + 1) >> 62)
            {
              std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
            }

            v103 = *&buf[16] - *buf;
            if ((*&buf[16] - *buf) >> 1 > v102)
            {
              v102 = v103 >> 1;
            }

            if (v103 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v104 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v104 = v102;
            }

            if (v104)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:nn200100](buf, v104);
            }

            *(4 * v101) = v96;
            v98 = 4 * v101 + 4;
            memcpy(0, v99, v100);
            v105 = *buf;
            *buf = 0;
            *&buf[8] = v98;
            *&buf[16] = 0;
            if (v105)
            {
              operator delete(v105);
            }

            v93 = v181;
          }

          else
          {
            **&buf[8] = v96;
            v98 = v97 + 4;
          }

          *&buf[8] = v98;
        }
      }

      v92 = [(NSArray *)v91 countByEnumeratingWithState:&v193 objects:v214 count:16];
    }

    while (v92);
  }

  v106 = *buf;
  if (*buf != *&buf[8])
  {
    v107 = v181;
    [(_LSDatabase *)v181 store];
    __src->bundlePersonas = _CSArrayCreate();
    v106 = *buf;
  }

  if (v106)
  {
    *&buf[8] = v106;
    operator delete(v106);
  }

  objc_autoreleasePoolPop(context);
  __src->base.localizedDisplayName = LaunchServices::LocalizedString::Add(v181, v178->_localizedNames, v178->_displayName);
  __src->base.localizedShortDisplayName = LaunchServices::LocalizedString::Add(v181, v178->_localizedShortNames, v178->_shortDisplayName);
  __src->base.localizedMicrophoneUsageDescription = LaunchServices::LocalizedString::Add(v181, v178->_localizedMicrophoneUsageDescription, v178->_microphoneUsageDescription);
  __src->base.localizedIdentityUsageDescription = LaunchServices::LocalizedString::Add(v181, v178->_localizedIdentityUsageDescription, v178->_identityUsageDescription);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x26812000000;
  *&buf[24] = __Block_byref_object_copy__10;
  v211 = __Block_byref_object_dispose__10;
  v212 = &unk_1818533FF;
  memcpy(v213, __src, sizeof(v213));
  v190[0] = MEMORY[0x1E69E9820];
  v190[1] = 3221225472;
  v190[2] = __47__LSBundleRecordBuilder_buildBundleData_error___block_invoke;
  v190[3] = &unk_1E6A1B0C8;
  v190[4] = v178;
  v192 = buf;
  v174 = v181;
  v191 = v174;
  _LSBundleDisplayNameContextEnumerate(v190);
  memcpy(__src, (*&buf[8] + 48), 0x238uLL);

  _Block_object_dispose(buf, 8);
  v108 = v178;
  v109 = v174;
  __src->primaryIconName = _LSDatabaseCreateStringForCFString(v174, v178->_libraryPath, 0);
  libraryItems = v178->_libraryItems;
  if (libraryItems)
  {
    v111 = _LSDatabaseCreateStringArray(v174, libraryItems, 0, 0);
    __src->alternatePrimaryIconName = v111;
    if (!v111)
    {
      goto LABEL_282;
    }
  }

  if ((v178->_bundleFlags & 0x100) != 0)
  {
    goto LABEL_185;
  }

  if (v178->_exportedTypes || v178->_importedTypes)
  {
    *buf = 0;
    v112 = v174;
    [(_LSDatabase *)v174 store];
    [(NSArray *)v178->_exportedTypes count];
    [(NSArray *)v178->_importedTypes count];
    v113 = _CSArrayCreateWithCapacity();
    __src->iconFileNames = v113;
    if (!v113)
    {
      v12 = _LSGetOSStatusFromNSError(*buf);
      if (v12)
      {
        goto LABEL_284;
      }
    }

    exportedTypes = v178->_exportedTypes;
    if (exportedTypes && [(NSArray *)exportedTypes count]|| (importedTypes = v178->_importedTypes) != 0 && [(NSArray *)importedTypes count])
    {
      [(LSBundleRecordBuilder *)v178 addPlistFlag:0x10000];
    }

    v109 = v174;
  }

  if (!v178->_URLClaims && !v178->_documentClaims)
  {
    goto LABEL_179;
  }

  *buf = 0;
  v116 = v109;
  [(_LSDatabase *)v174 store];
  [(NSArray *)v178->_URLClaims count];
  [(NSArray *)v178->_documentClaims count];
  v117 = _CSArrayCreateWithCapacity();
  __src->iconsDict = v117;
  if (!v117)
  {
    v12 = _LSGetOSStatusFromNSError(*buf);
    if (v12)
    {
LABEL_284:

      goto LABEL_109;
    }
  }

  URLClaims = v178->_URLClaims;
  if (URLClaims && [(NSArray *)URLClaims count]|| (documentClaims = v178->_documentClaims) != 0 && [(NSArray *)documentClaims count])
  {
    [(LSBundleRecordBuilder *)v178 addPlistFlag:0x10000];
  }

  v109 = v174;
LABEL_179:
  v108 = v178;
  if (v178->_pluginPlists)
  {
    *buf = 0;
    v120 = v109;
    [(_LSDatabase *)v174 store];
    [(NSDictionary *)v178->_pluginPlists count];
    v121 = _CSArrayCreateWithCapacity();
    __src->libraryPath = v121;
    if (v121)
    {

      v108 = v178;
      v109 = v174;
    }

    else
    {
      v12 = _LSGetOSStatusFromNSError(*buf);

      v108 = v178;
      v109 = v174;
      if (v12)
      {
        goto LABEL_109;
      }
    }
  }

  if (v108->_extensionSDK)
  {
    *buf = 0;
    v122 = v109;
    [(_LSDatabase *)v174 store];
    [(NSDictionary *)v178->_extensionSDK count];
    v123 = _CSArrayCreateWithCapacity();
    __src->claims = v123;
    if (v123)
    {

      v108 = v178;
      v109 = v174;
      goto LABEL_185;
    }

    v12 = _LSGetOSStatusFromNSError(*buf);

    v108 = v178;
    v109 = v174;
    if (!v12)
    {
      goto LABEL_185;
    }

LABEL_109:
    v27 = v176;
LABEL_110:
    if (obj)
    {
      _LSAliasRemove(v181, obj);
    }

    if (v172)
    {
      _LSAliasRemove(v181, v172);
    }

    if (v173)
    {
      _LSAliasRemove(v181, v173);
    }

    goto LABEL_116;
  }

LABEL_185:
  driverExtensionPaths = v108->_driverExtensionPaths;
  if (driverExtensionPaths)
  {
    __src->libraryItems = _LSDatabaseCreateStringArray(v109, driverExtensionPaths, 0, 0);
  }

  v125 = v108->_identifier;
  if (v125 && [(NSString *)v125 hasPrefix:@"com.apple."])
  {
    goto LABEL_195;
  }

  v126 = v108->_appType;
  if (!v126)
  {
    goto LABEL_216;
  }

  if ([(NSString *)v126 isEqualToString:@"Internal"]|| [(NSString *)v108->_appType isEqualToString:@"System"]|| [(NSString *)v108->_appType isEqualToString:@"SystemAppPlaceholder"]|| [(NSString *)v108->_appType isEqualToString:@"CoreServices"]|| [(NSString *)v108->_appType isEqualToString:@"Hidden"])
  {
LABEL_195:
    *&v108->_baseFlags |= 1u;
  }

  v127 = v108->_appType;
  if (v127 && ![(NSString *)v127 isEqualToString:@"User"])
  {
    if ((v108->_plistContentFlags & 0x800) != 0)
    {
      plistRarities = v108->_plistRarities;
      v130 = objc_opt_class();
      v131 = [(NSMutableDictionary *)plistRarities objectForKey:@"SBAppTags"];
      v132 = v131;
      if (v130 && v131 && (objc_opt_isKindOfClass() & 1) == 0)
      {

        v132 = 0;
        v108 = v178;
      }

      if ([v132 containsObject:@"hidden"])
      {
        [(LSBundleRecordBuilder *)v108 addBundleFlag:0x40000000000];
      }

      v108 = v178;
      v109 = v174;
    }

    else if ([(NSString *)v108->_appType isEqualToString:@"CoreServices"]|| (v128 = v108->_identifier) != 0 && [(NSString *)v128 isEqualToString:@"com.apple.purplebuddy"])
    {
      [(LSBundleRecordBuilder *)v108 addBundleFlag:0x40000000000];
    }
  }

LABEL_216:
  teamID = v108->_teamID;
  if (teamID)
  {
LABEL_219:
    __src->base.teamID = _LSDatabaseCreateStringForCFString(v109, teamID, 0);
    goto LABEL_220;
  }

  if (*&v108->_baseFlags)
  {
    teamID = @"0000000000";
    goto LABEL_219;
  }

LABEL_220:
  if ((v108->_bundleFlags & 0x1000000000000000) != 0 && [(NSArray *)v108->_activityTypes count])
  {
    v134 = _LSInstallLog();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
    {
      v135 = v108->_identifier;
      *buf = 138412290;
      *&buf[4] = v135;
      _os_log_impl(&dword_18162D000, v134, OS_LOG_TYPE_DEFAULT, "App %@ is an app clip; ignoring its activity types.", buf, 0xCu);
    }

    v108 = v178;
    v109 = v174;
    goto LABEL_227;
  }

  activityTypes = v108->_activityTypes;
  if (activityTypes)
  {
    v137 = _LSDatabaseCreateStringArray(v109, activityTypes, 0, 0);
    __src->types = v137;
    if (!v137)
    {
LABEL_282:
      v12 = -9493;
      goto LABEL_109;
    }
  }

LABEL_227:
  __src->base.signerIdentity = _LSDatabaseCreateStringForCFString(v109, v108->_signerIdentity, 0);
  __src->base.codeInfoIdentifier = _LSDatabaseCreateStringForCFString(v109, v108->_codeInfoIdentifier, 0);
  __src->base.signerOrganization = _LSDatabaseCreateStringForCFString(v109, v108->_signerOrganization, 0);
  __src->base.signatureVersion = [(NSNumber *)v108->_signatureVersion unsignedLongLongValue];
  __src->bundlePersonaTypes = _LSPlistAdd(v109, v108->_mobileInstallIDs);
  __src->appClipFields.parentAppIDs = _LSDatabaseCreateStringForCFString(v109, v108->_applicationManagementDomain, 0);
  __src->supportedGameControllers = _LSDatabaseCreateStringForCFString(v109, v108->_linkedParentBundleID, 0);
  if (v108->_URLClaims)
  {
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    obja = v108->_URLClaims;
    v138 = [(NSArray *)obja countByEnumeratingWithState:&v186 objects:v209 count:16];
    if (v138)
    {
      v139 = *v187;
      v140 = *MEMORY[0x1E695E190];
      do
      {
        for (m = 0; m != v138; ++m)
        {
          if (*v187 != v139)
          {
            objc_enumerationMutation(obja);
          }

          v142 = *(*(&v186 + 1) + 8 * m);
          if (_NSIsNSDictionary())
          {
            v143 = objc_opt_class();
            v144 = [v142 objectForKey:v140];
            v145 = v144;
            if (v143 && v144 && (objc_opt_isKindOfClass() & 1) == 0)
            {

              v145 = 0;
            }

            v184 = 0u;
            v185 = 0u;
            v182 = 0u;
            v183 = 0u;
            v146 = v145;
            v147 = [v146 countByEnumeratingWithState:&v182 objects:v208 count:16];
            if (v147)
            {
              v148 = *v183;
              while (2)
              {
                for (n = 0; n != v147; ++n)
                {
                  if (*v183 != v148)
                  {
                    objc_enumerationMutation(v146);
                  }

                  v150 = *(*(&v182 + 1) + 8 * n);
                  if (_NSIsNSString() && ![v150 caseInsensitiveCompare:@"file"])
                  {
                    [(LSBundleRecordBuilder *)v178 addBundleFlag:0x8000000];
                    goto LABEL_249;
                  }
                }

                v147 = [v146 countByEnumeratingWithState:&v182 objects:v208 count:16];
                if (v147)
                {
                  continue;
                }

                break;
              }
            }

LABEL_249:
          }
        }

        v138 = [(NSArray *)obja countByEnumeratingWithState:&v186 objects:v209 count:16];
      }

      while (v138);
    }

    v108 = v178;
    v109 = v174;
  }

  entitlements = v108->_entitlements;
  if (entitlements)
  {
    v152 = [(NSDictionary *)entitlements objectForKey:@"beta-reports-active"];
    v153 = v152 == 0;

    v108 = v178;
    v109 = v174;
    if (!v153)
    {
      [(LSBundleRecordBuilder *)v178 addBundleFlag:0x200000];
    }

    if ((([(NSString *)v178->_appType isEqualToString:@"System"]| ((*&v178->_baseFlags & 0x10) >> 4)) & 1) == 0)
    {
      v154 = [(NSDictionary *)v178->_entitlements objectForKey:@"com.apple.developer.web-browser-engine.host"];
      v155 = v154 == 0;

      if (!v155)
      {
        *&v178->_moreFlags |= 0x20000u;
      }

      v156 = [(NSDictionary *)v178->_entitlements objectForKey:@"com.apple.developer.embedded-web-browser-engine"];
      v157 = v156 == 0;

      v108 = v178;
      v109 = v174;
      if (!v157)
      {
        *&v178->_moreFlags |= 0x40000u;
      }
    }

    if ([(NSDictionary *)v108->_entitlements _LS_BoolForKey:@"com.apple.developer.game-center"])
    {
      [(LSBundleRecordBuilder *)v108 addBundleFlag:0x2000000000000];
    }
  }

  __src->recordModificationTime = _LSPlistAdd(v109, v108->_stashedAppInfo);
  __src->base._sliceMask = _LSSliceMaskForSliceArray(v108->_slices);
  if (v108->_webNotificationPlaceholder)
  {
    [(LSBundleRecordBuilder *)v108 addBundleFlag:0x8000000000];
  }

  v158 = v108->_registrationInfo;
  if ((v158->options & 0x40) != 0 || v158->bundleClass == 16)
  {
    [(LSBundleRecordBuilder *)v108 addBundleFlag:0x40000];
  }

  plistContentFlags = v108->_plistContentFlags;
  iconFlags = v108->_iconFlags;
  *(&__src->_clas + 1) = v108->_bundleFlags;
  LOBYTE(__src->_itemFlags) = iconFlags;
  itemFlags = v108->_itemFlags;
  HIDWORD(__src->_bundleFlags) = plistContentFlags;
  __src->_plistContentFlags = itemFlags;
  moreFlags = v108->_moreFlags;
  *(&__src->_itemFlags + 1) = moreFlags;
  *&__src->base.flags = v108->_baseFlags;
  v163 = +[_LSDAppProtectionClient hiddenApplicationsForLSDUseOnly];
  if ([v163 ls_caseInsensitiveContainsString:v108->_identifier])
  {
    v164 = 0x100000;
  }

  else
  {
    v164 = 0;
  }

  v165 = +[_LSDAppProtectionClient lockedApplicationsForLSDUseOnly];
  if ([v165 ls_caseInsensitiveContainsString:v178->_identifier])
  {
    v166 = 0x200000;
  }

  else
  {
    v166 = 0;
  }

  *(&__src->_itemFlags + 1) = v164 | moreFlags & 0xFFCFFFFF | v166;
  serializedPlaceholderPath = v178->_serializedPlaceholderPath;
  if (serializedPlaceholderPath)
  {
    __src->mobileInstallIDs = _LSDatabaseCreateStringForCFString(v174, serializedPlaceholderPath, 0);
  }

  v27 = v176;
LABEL_277:

  v169 = *MEMORY[0x1E69E9840];
  return result;
}

void __47__LSBundleRecordBuilder_buildBundleData_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [*(*(a1 + 32) + 816) objectForKeyedSubscript:a4];
  v7 = [*(*(a1 + 32) + 808) objectForKeyedSubscript:a4];
  *(*(*(a1 + 48) + 8) + 4 * a2 + 568) = LaunchServices::LocalizedString::Add(*(a1 + 40), v7, v8);
}

- (int)activateBindings:(id)a3 unitID:(unsigned int)a4 bundleData:(const LSBundleData *)a5
{
  v7 = a3;
  exactIdentifier = a5->base.exactIdentifier;
  v9 = _LSBindableActivate(v7, a4);
  if (!v9)
  {
    secondaryCategoryType = a5->secondaryCategoryType;
    v9 = _LSBindableActivate(v7, a4);
    if (!v9 && (!a5->base.bundleName || (v9 = _LSBindableActivate(v7, a4)) == 0))
    {
      if (a5->supportedGameControllers)
      {
        v9 = _LSBindableActivate(v7, a4);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (unsigned)registerBundleRecord:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0;
  memset(__src, 0, 512);
  v36 = a3;
  v33 = a4;
  [LSBundleRecordBuilder buildBundleData:"buildBundleData:error:" error:?];
  memcpy(__dst, __src, 0x238uLL);
  v34 = _LSBundleAdd(v36, __dst, &v41);
  if (v34)
  {
    v41 = 0;
  }

  else
  {
    v34 = [(LSBundleRecordBuilder *)self activateBindings:v36 unitID:v41 bundleData:__src];
    if (!v34)
    {
      if (*&self->_baseFlags)
      {
        v5 = 4;
      }

      else
      {
        v5 = 0;
      }

      registrationInfo = self->_registrationInfo;
      if (registrationInfo)
      {
        LODWORD(registrationInfo) = (registrationInfo->options >> 23) & 0x20;
      }

      v7 = (registrationInfo | v5 | (LODWORD(self->_bundleFlags) >> 1) & 0x40) ^ 0x40;
      exportedTypes = self->_exportedTypes;
      v9 = *&__src[476];
      if (exportedTypes && *&__src[476])
      {
        _LSRegisterTypeDeclarationsForBundle(v36, v41, __src, exportedTypes, self->_localizedStrings);
        v9 = *&__src[476];
      }

      importedTypes = self->_importedTypes;
      if (importedTypes && v9)
      {
        _LSRegisterTypeDeclarationsForBundle(v36, v41, __src, importedTypes, self->_localizedStrings);
      }

      v11 = *&__src[472];
      if (self->_documentClaims && *&__src[472])
      {
        localizedStrings = self->_localizedStrings;
        _LSRegisterDocumentTypes(v36);
        v11 = *&__src[472];
      }

      if (self->_URLClaims && v11)
      {
        _LSRegisterURLTypes(v36);
      }

      v34 = _LSRegisterDefaultAppsClaims(v36, v41, __src, self->_entitlements);
      if (*&__src[492])
      {
        v34 = _LSBundleActivateBindingsForUserActivityTypes(v36, v41, __src);
      }

      if (!self->_registrationInfo || !self->_pluginPlists || !*&__src[480] || _LSBundleDataIsInUnsupportedLocation(v36, __src) || _LSBundleDataGetUnsupportedFormatFlag() || (__src[172] & 0x80) != 0)
      {
        v14 = _LSExtensionsLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [LSBundleRecordBuilder registerBundleRecord:v14 error:?];
        }
      }

      else
      {
        v13 = _LSExtensionsLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [LSBundleRecordBuilder registerBundleRecord:v13 error:?];
        }

        v34 = _LSRegisterPlugins(v36, self->_registrationInfo->containerUnit, v41, self->_pluginPlists, self->_pluginMIDicts);
      }

      if (self->_identifier && self->_extensionSDK && *&__src[488])
      {
        v15 = [objc_alloc(get_EXAppExtensionPointEnumeratorClass()) initWithBundleIdentifier:self->_identifier sdkDictionary:self->_extensionSDK entitlements:self->_entitlements];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v17)
        {
          v18 = *v38;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v38 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v37 + 1) + 8 * i);
              v21 = [v20 identifier];
              v22 = [v20 platform];
              v23 = [v20 SDKDictionary];
              v24 = [v20 url];
              v25 = _LSExtensionsLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                __dst[0] = 136315394;
                *&__dst[1] = "[LSBundleRecordBuilder registerBundleRecord:error:]";
                LOWORD(__dst[3]) = 2112;
                *(&__dst[3] + 2) = v20;
                _os_log_debug_impl(&dword_18162D000, v25, OS_LOG_TYPE_DEBUG, "%s Registering extension point: %@", __dst, 0x16u);
              }

              _LSRegisterExtensionPoint(v36, v41, v21, v22, v23, v24);
            }

            v17 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
          }

          while (v17);
        }
      }

      _LSBundleSetLegacySpecialApplicationTypes(v36, v41, 0, 0);
    }
  }

  v26 = v34;
  if (v34 && v41)
  {
    _LSBundleRemove(v36, v41, 0);
    v41 = 0;
    v26 = v34;
  }

  else if (!v34)
  {
    self->_registerChildItemsTrusted = (__src[172] & 0x80) == 0;
    goto LABEL_54;
  }

  if (v33)
  {
    *v33 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v26, 0, "[LSBundleRecordBuilder registerBundleRecord:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBundleRecordBuilder.mm", 2399);
  }

LABEL_54:
  if (self->_identifier)
  {
    if ([__LSDefaultsGetSharedInstance() allowsAlternateIcons])
    {
      v27 = (self->_bundleFlags & 0x40000) == 0;
    }

    else
    {
      v27 = 0;
    }

    v28 = objc_autoreleasePoolPush();
    if (([__LSDefaultsGetSharedInstance() isLightweightSystemServer] & 1) == 0 && (IconServicesLibrary(void)::frameworkLibrary || (IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0))
    {
      softLink_ISInvalidateCacheEntriesForBundleIdentifier(self->_identifier);
    }

    if (v27)
    {
      v29 = +[LSAltIconManager sharedInstance];
      [v29 clearAlternateNameForBundleIdentifier:self->_identifier validationDictionary:self->_iconsDict];
    }

    objc_autoreleasePoolPop(v28);
  }

  v30 = v41;

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

- (void)parseNSExtensionSDKDefinitionsFromDictionary:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "[LSBundleRecordBuilder parseNSExtensionSDKDefinitionsFromDictionary:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = @"_LSBundleExtensionPoints";
}

- (void)registerBundleRecord:(os_log_t)log error:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[LSBundleRecordBuilder registerBundleRecord:error:]";
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "%s Registering extensions", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)registerBundleRecord:(os_log_t)log error:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[LSBundleRecordBuilder registerBundleRecord:error:]";
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "%s Skipped registering extensions", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end