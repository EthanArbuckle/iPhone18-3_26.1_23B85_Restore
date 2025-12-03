@interface VoiceOverScreenRecognitionController
- (AXElementVisionModelAssetPolicy)elementVisionModelAssetPolicy;
- (BOOL)_isFeatureEnabled;
- (id)_appsApplied:(id)applied;
- (id)_ignoreAppAccessibility:(id)accessibility;
- (id)_neuralVisionEnabled:(id)enabled;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_addSettingToRotor:(id)rotor;
- (void)_downloadModel;
- (void)_purgeModel;
- (void)_setIgnoreAppAccessibility:(id)accessibility specifier:(id)specifier;
- (void)_setNeuralVisionEnabled:(id)enabled specifier:(id)specifier;
- (void)_updateAssetStatusCell:(int64_t)cell error:(id)error downloaded:(int64_t)downloaded expected:(int64_t)expected;
- (void)assetController:(id)controller asset:(id)asset downloadProgressTotalWritten:(int64_t)written totalExpected:(int64_t)expected isStalled:(BOOL)stalled expectedTimeRemaining:(double)remaining;
- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads;
- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation VoiceOverScreenRecognitionController

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = VoiceOverScreenRecognitionController;
  [(VoiceOverScreenRecognitionController *)&v13 viewDidLoad];
  elementVisionModelAssetPolicy = [(VoiceOverScreenRecognitionController *)self elementVisionModelAssetPolicy];
  v4 = [AXAssetController assetControllerWithPolicy:elementVisionModelAssetPolicy qosClass:25];
  v5 = *(&self->_assetStatusSpecifier + 6);
  *(&self->_assetStatusSpecifier + 6) = v4;

  [*(&self->_assetStatusSpecifier + 6) setUserInitiated:1];
  [*(&self->_assetStatusSpecifier + 6) addObserver:self];
  objc_initWeak(&location, self);
  v6 = +[AXSettings sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __51__VoiceOverScreenRecognitionController_viewDidLoad__block_invoke;
  v10[3] = &unk_257960;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  [v6 registerUpdateBlock:v10 forRetrieveSelector:"voiceOverImageCaptionsEnabled" withListener:self];

  objc_destroyWeak(&v11);
  [*(&self->_assetStatusSpecifier + 6) refreshAssetsByForceUpdatingCatalog:0 updatingCatalogIfNeeded:1 catalogRefreshOverrideTimeout:0 completion:0];
  table = [(VoiceOverScreenRecognitionController *)self table];
  v8 = objc_opt_class();
  v9 = +[AXAssetStatusInfoCell cellReuseIdentifier];
  [table registerClass:v8 forCellReuseIdentifier:v9];

  objc_destroyWeak(&location);
}

void __51__VoiceOverScreenRecognitionController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = AXLogAssetLoader();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = +[AXSettings sharedInstance];
    v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverImageCaptionsEnabled]);
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "voiceOverImageCaptionsEnabled pref did change. newValue=%@ self=%@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained _isFeatureEnabled])
  {
    [WeakRetained _downloadModel];
  }

  else
  {
    [WeakRetained _purgeModel];
  }
}

- (AXElementVisionModelAssetPolicy)elementVisionModelAssetPolicy
{
  v3 = *(&self->_assetController + 6);
  if (!v3)
  {
    v4 = +[AXElementVisionModelAssetPolicy policy];
    v5 = *(&self->_assetController + 6);
    *(&self->_assetController + 6) = v4;

    v3 = *(&self->_assetController + 6);
  }

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = AXLocStringKeyForModel();
    v8 = settingsLocString(v7, @"VoiceOverSettings");
    [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

    v9 = *(&self->_wantsAssetDownloadIfNeeded + 6);
    *(&self->_wantsAssetDownloadIfNeeded + 6) = v6;
    v10 = v6;

    [v5 addObject:v10];
    v11 = settingsLocString(@"VO_SCREEN_RECOGNITION", @"VoiceOverSettings");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"_setNeuralVisionEnabled:specifier:" get:"_neuralVisionEnabled:" detail:0 cell:6 edit:0];

    [v5 addObject:v12];
    v13 = *(&self->_primaryGroupSpecifier + 6);
    *(&self->_primaryGroupSpecifier + 6) = v12;
    v14 = v12;

    v15 = [PSSpecifier preferenceSpecifierNamed:&stru_25D420 target:self set:0 get:0 detail:0 cell:-1 edit:0];

    [v15 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v15 setAx_assetState:0];
    [v5 addObject:v15];
    v16 = *(&self->_preferenceToggleSpecifier + 6);
    *(&self->_preferenceToggleSpecifier + 6) = v15;
    v17 = v15;

    [*(&self->_preferenceToggleSpecifier + 6) setAx_assetDeleteButtonHidden:1];
    [*(&self->_preferenceToggleSpecifier + 6) setAx_assetDownloadButtonHidden:1];
    v18 = +[PSSpecifier emptyGroupSpecifier];

    [v5 addObject:v18];
    v19 = settingsLocString(@"VO_APPLY_TO_APPS", @"VoiceOverSettings");
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:"_appsApplied:" detail:objc_opt_class() cell:2 edit:0];

    [v20 setProperty:@"apps" forKey:PSIDKey];
    [v5 addObject:v20];
    v21 = [v5 copy];
    v22 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v21;

    v4 = *&self->super.AXUISettingsListController_opaque[v3];
  }

  return v4;
}

- (void)_setNeuralVisionEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[AXSettings sharedInstance];
  [v6 setAutomaticAccessibilityEnabled:{objc_msgSend(enabledCopy, "integerValue") != 0}];

  LODWORD(v6) = [enabledCopy BOOLValue];
  if (v6)
  {
    [(VoiceOverScreenRecognitionController *)self _downloadModel];
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    [(VoiceOverScreenRecognitionController *)self _purgeModel];
    v7 = &__kCFBooleanFalse;
  }

  [(VoiceOverScreenRecognitionController *)self _addSettingToRotor:v7];
}

- (id)_neuralVisionEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 automaticAccessibilityEnabled]);

  return v4;
}

- (void)_addSettingToRotor:(id)rotor
{
  rotorCopy = rotor;
  v4 = AXValidationManager_ptr;
  v5 = +[AXSettings sharedInstance];
  voiceOverRotorItems = [v5 voiceOverRotorItems];
  v7 = [voiceOverRotorItems mutableCopy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = +[AXSettings sharedInstance];
  voiceOverRotorItems2 = [v8 voiceOverRotorItems];

  v10 = [voiceOverRotorItems2 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (!v10)
  {

    v12 = 0;
LABEL_13:
    v27[0] = @"RotorItem";
    v27[1] = @"Enabled";
    v28[0] = kAXSVoiceOverTouchRotorMLElementsMode;
    v28[1] = rotorCopy;
    v20 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v7 setObject:v20 atIndexedSubscript:v12];

    v13 = 0;
    goto LABEL_14;
  }

  v11 = v10;
  v22 = rotorCopy;
  v12 = 0;
  v13 = 0;
  v14 = *v24;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(voiceOverRotorItems2);
      }

      v16 = *(*(&v23 + 1) + 8 * i);
      v17 = [v16 objectForKeyedSubscript:{@"RotorItem", v22}];
      v18 = [v17 isEqualToString:kAXSVoiceOverTouchRotorMLElementsMode];

      if (v18)
      {
        v19 = [v16 mutableCopy];

        [v19 setObject:v22 forKeyedSubscript:@"Enabled"];
        [v7 setObject:v19 atIndexedSubscript:v12];
        v13 = v19;
      }

      ++v12;
    }

    v11 = [voiceOverRotorItems2 countByEnumeratingWithState:&v23 objects:v29 count:16];
  }

  while (v11);

  rotorCopy = v22;
  v4 = AXValidationManager_ptr;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_14:
  sharedInstance = [v4[375] sharedInstance];
  [sharedInstance setVoiceOverRotorItems:v7];
}

- (id)_ignoreAppAccessibility:(id)accessibility
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 automaticAccessibilityIgnoreAppAccessibilityPreferred]);

  return v4;
}

- (void)_setIgnoreAppAccessibility:(id)accessibility specifier:(id)specifier
{
  bOOLValue = [accessibility BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAutomaticAccessibilityIgnoreAppAccessibilityPreferred:bOOLValue];
}

- (BOOL)_isFeatureEnabled
{
  v2 = +[AXSettings sharedInstance];
  automaticAccessibilityEnabled = [v2 automaticAccessibilityEnabled];

  return automaticAccessibilityEnabled;
}

- (void)_downloadModel
{
  self->_wantsAssetDownloadIfNeeded = 1;
  [(VoiceOverScreenRecognitionController *)self _updatePrimaryGroupFooterTextAndReloadSpecifier:1];
  v3 = *(&self->_assetStatusSpecifier + 6);

  [v3 refreshAssetsByForceUpdatingCatalog:0 updatingCatalogIfNeeded:0 catalogRefreshOverrideTimeout:0 completion:0];
}

- (void)_purgeModel
{
  self->_wantsAssetDownloadIfNeeded = 0;
  [(VoiceOverScreenRecognitionController *)self _updatePrimaryGroupFooterTextAndReloadSpecifier:1];
  v3 = *(&self->_assetStatusSpecifier + 6);

  [v3 refreshAssetsByForceUpdatingCatalog:0 updatingCatalogIfNeeded:0 catalogRefreshOverrideTimeout:0 completion:0];
}

- (void)_updateAssetStatusCell:(int64_t)cell error:(id)error downloaded:(int64_t)downloaded expected:(int64_t)expected
{
  v10 = *(&self->_preferenceToggleSpecifier + 6);
  errorCopy = error;
  [v10 setAx_assetState:cell];
  cachedAsset = [(VoiceOverScreenRecognitionController *)self cachedAsset];
  [*(&self->_preferenceToggleSpecifier + 6) setAx_asset:cachedAsset];

  [*(&self->_preferenceToggleSpecifier + 6) setAx_assetError:errorCopy];
  [*(&self->_preferenceToggleSpecifier + 6) setAx_assetDownloadBytesReceived:downloaded];
  [*(&self->_preferenceToggleSpecifier + 6) setAx_assetDownloadBytesExpected:expected];
  v13 = *(&self->_preferenceToggleSpecifier + 6);

  [(VoiceOverScreenRecognitionController *)self reloadSpecifier:v13];
}

- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  assetsCopy = assets;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __102__VoiceOverScreenRecognitionController_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke;
  v12[3] = &unk_257AD0;
  successfulCopy = successful;
  v12[4] = self;
  errorCopy = error;
  v14 = assetsCopy;
  v10 = assetsCopy;
  v11 = errorCopy;
  dispatch_async(&_dispatch_main_q, v12);
}

void __102__VoiceOverScreenRecognitionController_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    v10 = *(a1 + 40);
LABEL_9:

    [v3 _updateAssetStatusCell:5 error:v10 downloaded:0 expected:0];
    return;
  }

  v4 = [v3 _validateAssetFromResults:*(a1 + 48)];
  [*(a1 + 32) setCachedAsset:v4];

  v5 = [*(a1 + 32) cachedAsset];

  v3 = *(a1 + 32);
  if (!v5)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v6 = [v3 cachedAsset];
  if ([v6 isInstalled])
  {
    v7 = [*(a1 + 32) _isFeatureEnabled];

    if (v7)
    {
      [*(a1 + 32) _updateAssetStatusCell:4 error:0 downloaded:0 expected:0];
      v8 = AXLogAssetLoader();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 32) cachedAsset];
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Image caption model is installed: %@", buf, 0xCu);
      }

LABEL_18:

      return;
    }
  }

  else
  {
  }

  v11 = *(a1 + 32);
  if (*(v11 + 160) == 1)
  {
    v12 = [v11 _isFeatureEnabled];
    v11 = *(a1 + 32);
    if (v12)
    {
      *(v11 + 160) = 0;
      [*(a1 + 32) _updateAssetStatusCell:2 error:0 downloaded:0 expected:0];
      v13 = AXLogAssetLoader();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Image caption model requested. Beginning download", buf, 2u);
      }

      v14 = *(a1 + 32);
      v15 = *(v14 + 190);
      v8 = [v14 cachedAsset];
      v21 = v8;
      v16 = [NSArray arrayWithObjects:&v21 count:1];
      [v15 downloadAssets:v16 successStartBlock:&__block_literal_global_39];

      goto LABEL_18;
    }
  }

  v17 = *(v11 + 190);
  v18 = [v11 cachedAsset];
  v20 = v18;
  v19 = [NSArray arrayWithObjects:&v20 count:1];
  [v17 purgeAssets:v19 completion:0];

  [*(a1 + 32) _updateAssetStatusCell:1 error:0 downloaded:0 expected:0];
}

- (void)assetController:(id)controller asset:(id)asset downloadProgressTotalWritten:(int64_t)written totalExpected:(int64_t)expected isStalled:(BOOL)stalled expectedTimeRemaining:(double)remaining
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __137__VoiceOverScreenRecognitionController_assetController_asset_downloadProgressTotalWritten_totalExpected_isStalled_expectedTimeRemaining___block_invoke;
  v8[3] = &unk_257AF8;
  stalledCopy = stalled;
  v8[4] = self;
  v8[5] = written;
  v8[6] = expected;
  dispatch_async(&_dispatch_main_q, v8);
}

id __137__VoiceOverScreenRecognitionController_assetController_asset_downloadProgressTotalWritten_totalExpected_isStalled_expectedTimeRemaining___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  return [*(a1 + 32) _updateAssetStatusCell:v1 error:0 downloaded:*(a1 + 40) expected:*(a1 + 48)];
}

- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __124__VoiceOverScreenRecognitionController_assetController_didFinishDownloadingAsset_wasSuccessful_error_hasRemainingDownloads___block_invoke;
  block[3] = &unk_256190;
  successfulCopy = successful;
  block[4] = self;
  errorCopy = error;
  v7 = errorCopy;
  dispatch_async(&_dispatch_main_q, block);
}

id __124__VoiceOverScreenRecognitionController_assetController_didFinishDownloadingAsset_wasSuccessful_error_hasRemainingDownloads___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = 4;
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    v4 = 5;
  }

  return [v3 _updateAssetStatusCell:v4 error:v5 downloaded:0 expected:0];
}

- (id)_appsApplied:(id)applied
{
  v3 = +[AXSettings sharedInstance];
  automaticAccessibilityModes = [v3 automaticAccessibilityModes];

  allKeys = [automaticAccessibilityModes allKeys];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = __53__VoiceOverScreenRecognitionController__appsApplied___block_invoke;
  v16 = &unk_257BE0;
  v6 = automaticAccessibilityModes;
  v17 = v6;
  v7 = [allKeys ax_filteredArrayUsingBlock:&v13];

  if ([v7 count] < 3)
  {
    v8 = [v7 ax_mappedArrayUsingBlock:&__block_literal_global_334_0];
    v11 = [v8 sortedArrayUsingComparator:&__block_literal_global_337_0];
    v10 = [v11 componentsJoinedByString:{@", "}];
  }

  else
  {
    v8 = settingsLocString(@"APPLIES_TO_APP_COUNT", @"VoiceOverSettings");
    v9 = [v7 count];
    v10 = [NSString localizedStringWithFormat:v8, v9, v13, v14, v15, v16];
  }

  return v10;
}

BOOL __53__VoiceOverScreenRecognitionController__appsApplied___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXAppNameForBundleId();
  if (v4)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v6 = [v5 intValue] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = VoiceOverScreenRecognitionController;
  v4 = [(VoiceOverScreenRecognitionController *)&v7 tableView:view cellForRowAtIndexPath:path];
  textLabel = [v4 textLabel];
  [textLabel setNumberOfLines:0];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:PSIDKey];
  v11 = [v10 isEqualToString:@"apps"];

  if (v11)
  {
    v12 = objc_alloc_init(AXAppSelectionController);
    rootController = [(VoiceOverScreenRecognitionController *)self rootController];
    [(AXAppSelectionController *)v12 setRootController:rootController];

    [(AXAppSelectionController *)v12 setSpecifier:specifier];
    [(AXAppSelectionController *)v12 setParentController:self];
    [(AXAppSelectionController *)v12 setIncludesHomeScreen:0];
    objc_initWeak(&location, self);
    [(AXAppSelectionController *)v12 setGetSelectedApps:&__block_literal_global_345_0];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __74__VoiceOverScreenRecognitionController_tableView_didSelectRowAtIndexPath___block_invoke_3;
    v15[3] = &unk_2563A0;
    objc_copyWeak(&v16, &location);
    [(AXAppSelectionController *)v12 setSetSelectedApps:v15];
    [(VoiceOverScreenRecognitionController *)self showController:v12 animate:1];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VoiceOverScreenRecognitionController;
    [(VoiceOverScreenRecognitionController *)&v14 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

NSSet *__cdecl __74__VoiceOverScreenRecognitionController_tableView_didSelectRowAtIndexPath___block_invoke(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 automaticAccessibilityModes];

  v3 = [v2 allKeys];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __74__VoiceOverScreenRecognitionController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v8[3] = &unk_257BE0;
  v9 = v2;
  v4 = v2;
  v5 = [v3 ax_filteredArrayUsingBlock:v8];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

id __74__VoiceOverScreenRecognitionController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

void __74__VoiceOverScreenRecognitionController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:{*(*(&v12 + 1) + 8 * v10), v12}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = +[AXSettings sharedInstance];
  [v11 setAutomaticAccessibilityModes:v5];

  [WeakRetained reloadSpecifierID:@"apps"];
}

@end