@interface AXVoiceOverImageDescriptionsController
- (AXImageCaptionModelAssetPolicy)imageCaptionModelAssetPolicy;
- (BOOL)_isFeatureEnabled;
- (id)_additionalTranslationLanguagesValueSummary:(id)a3;
- (id)_validateAssetFromResults:(id)a3;
- (id)languageTranslator;
- (id)speakDiscoveredImageDescriptions:(id)a3;
- (id)specifiers;
- (void)_addSensitiveContentFeedbackSpecifiers:(id)a3;
- (void)_installLanguageTranslationModelForLanguageIfNeeded:(id)a3;
- (void)_optInToImageCaptionFeature;
- (void)_optOutOfImageCaptionFeature;
- (void)_showAdditionalLanguagesViewController:(id)a3;
- (void)_updateAssetStatusCell:(int64_t)a3 error:(id)a4 downloaded:(int64_t)a5 expected:(int64_t)a6;
- (void)_updatePrimaryGroupFooterTextAndReloadSpecifier:(BOOL)a3;
- (void)_updateTranslationAssetStatus;
- (void)assetController:(id)a3 asset:(id)a4 downloadProgressTotalWritten:(int64_t)a5 totalExpected:(int64_t)a6 isStalled:(BOOL)a7 expectedTimeRemaining:(double)a8;
- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7;
- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)setSpeakDiscoveredImageDescriptions:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation AXVoiceOverImageDescriptionsController

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = AXVoiceOverImageDescriptionsController;
  [(AXVoiceOverImageDescriptionsController *)&v13 viewDidLoad];
  [(AXVoiceOverImageDescriptionsController *)self _updateTranslationAssetStatus];
  v3 = [(AXVoiceOverImageDescriptionsController *)self imageCaptionModelAssetPolicy];
  v4 = [AXAssetController assetControllerWithPolicy:v3 qosClass:25];
  assetController = self->_assetController;
  self->_assetController = v4;

  [(AXAssetController *)self->_assetController setUserInitiated:1];
  [(AXAssetController *)self->_assetController addObserver:self];
  self->_cachedVoiceOverImageCaptionsEnabled = [(AXVoiceOverImageDescriptionsController *)self _isFeatureEnabled];
  objc_initWeak(&location, self);
  v6 = +[AXSettings sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __53__AXVoiceOverImageDescriptionsController_viewDidLoad__block_invoke;
  v10[3] = &unk_257960;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  [v6 registerUpdateBlock:v10 forRetrieveSelector:"voiceOverImageCaptionsEnabled" withListener:self];

  objc_destroyWeak(&v11);
  [(AXAssetController *)self->_assetController refreshAssetsByForceUpdatingCatalog:0 updatingCatalogIfNeeded:1 catalogRefreshOverrideTimeout:0 completion:0];
  v7 = [(AXVoiceOverImageDescriptionsController *)self table];
  v8 = objc_opt_class();
  v9 = +[AXAssetStatusInfoCell cellReuseIdentifier];
  [v7 registerClass:v8 forCellReuseIdentifier:v9];

  objc_destroyWeak(&location);
}

void __53__AXVoiceOverImageDescriptionsController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = AXLogAssetLoader();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = +[AXSettings sharedInstance];
    v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverImageCaptionsEnabled]);
    v5 = *(a1 + 32);
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "voiceOverImageCaptionsEnabled pref did change. newValue=%@ self=%@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained _isFeatureEnabled];
    v9 = AXLogAssetLoader();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [NSNumber numberWithBool:v7[192]];
      v11 = [NSNumber numberWithBool:v8];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "_cachedVoiceOverImageCaptionsEnabled=%@ voiceOverImageCaptionsEnabled=%@", &v12, 0x16u);
    }

    if (v7[192] != v8)
    {
      if (v8)
      {
        [v7 _optInToImageCaptionFeature];
      }

      else
      {
        [v7 _optOutOfImageCaptionFeature];
      }

      v7[192] = v8;
    }
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];
    primaryGroupSpecifier = self->_primaryGroupSpecifier;
    self->_primaryGroupSpecifier = v6;
    v8 = v6;

    [(AXVoiceOverImageDescriptionsController *)self _updatePrimaryGroupFooterTextAndReloadSpecifier:0];
    v9 = settingsLocString(@"IMAGE_DESCRIPTIONS_TITLE", @"VoiceOverSettings");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"setSpeakDiscoveredImageDescriptions:specifier:" get:"speakDiscoveredImageDescriptions:" detail:0 cell:6 edit:0];

    [v5 addObject:v10];
    preferenceToggleSpecifier = self->_preferenceToggleSpecifier;
    self->_preferenceToggleSpecifier = v10;
    v12 = v10;

    v13 = [PSSpecifier preferenceSpecifierNamed:&stru_25D420 target:self set:0 get:0 detail:0 cell:-1 edit:0];

    [v13 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v13 setAx_assetState:0];
    [v5 addObject:v13];
    objc_storeStrong(&self->_assetStatusSpecifier, v13);
    [(PSSpecifier *)self->_assetStatusSpecifier setAx_assetDeleteButtonHidden:1];
    [(PSSpecifier *)self->_assetStatusSpecifier setAx_assetDownloadButtonHidden:1];
    [(AXVoiceOverImageDescriptionsController *)self _addSensitiveContentFeedbackSpecifiers:v5];
    if (NSClassFromString(@"LTUITranslateSettingsDownloadController"))
    {
      v14 = +[PSSpecifier emptyGroupSpecifier];

      v15 = settingsLocString(@"IMAGE_DESCRIPTION_TRANSLATIONS_FOOTER", @"VoiceOverSettings");
      [v14 setProperty:v15 forKey:PSFooterTextGroupKey];

      [v5 addObject:v14];
      v16 = settingsLocString(@"IMAGE_DESCRIPTION_TRANSLATIONS_TITLE", @"VoiceOverSettings");
      v13 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:"_additionalTranslationLanguagesValueSummary:" detail:objc_opt_class() cell:2 edit:0];

      [v13 setButtonAction:"_showAdditionalLanguagesViewController:"];
      v17 = PSIDKey;
      [v13 setProperty:@"AdditionalLanguages" forKey:PSIDKey];
      [v5 addObject:v13];
      objc_storeStrong(&self->_additionalTranslationLanguagesLinkSpecifier, v13);
    }

    else
    {
      v18 = AXMediaLogLanguageTranslation();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AXVoiceOverImageDescriptionsController specifiers];
      }

      v17 = PSIDKey;
    }

    v19 = +[PSSpecifier emptyGroupSpecifier];

    [v5 addObject:v19];
    v20 = settingsLocString(@"VO_APPLY_TO_APPS", @"VoiceOverSettings");
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v21 setProperty:@"apps" forKey:v17];
    [v5 addObject:v21];
    v22 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)_showAdditionalLanguagesViewController:(id)a3
{
  v4 = a3;
  v6 = [LTUITranslateSettingsDownloadController translateSettingsDownloadControllerWithUsageContext:1];
  [v6 setParentController:self];
  v5 = [(AXVoiceOverImageDescriptionsController *)self rootController];
  [v6 setRootController:v5];

  [v6 setSpecifier:v4];
  [(AXVoiceOverImageDescriptionsController *)self showController:v6 animate:1];
}

- (id)languageTranslator
{
  languageTranslator = self->_languageTranslator;
  if (!languageTranslator)
  {
    v4 = objc_alloc_init(AXMLanguageTranslator);
    v5 = self->_languageTranslator;
    self->_languageTranslator = v4;

    languageTranslator = self->_languageTranslator;
  }

  return languageTranslator;
}

- (void)_installLanguageTranslationModelForLanguageIfNeeded:(id)a3
{
  v4 = a3;
  v5 = AXMediaLogLanguageTranslation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Checking if Preferences should install translation model for: %@", &v7, 0xCu);
  }

  if ([(AXVoiceOverImageDescriptionsController *)self _isFeatureEnabled])
  {
    v6 = [(AXVoiceOverImageDescriptionsController *)self languageTranslator];
    [v6 installOfflineTranslationModelForLanguageCodeIfNeeded:v4 progress:&__block_literal_global_38 completion:&__block_literal_global_345];
  }

  else
  {
    v6 = AXMediaLogLanguageTranslation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Image descriptions not enabled. Will not download translation assets", &v7, 2u);
    }
  }
}

void __94__AXVoiceOverImageDescriptionsController__installLanguageTranslationModelForLanguageIfNeeded___block_invoke(id a1, NSArray *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = AXMediaLogLanguageTranslation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __94__AXVoiceOverImageDescriptionsController__installLanguageTranslationModelForLanguageIfNeeded___block_invoke_cold_1();
    }
  }

  v7 = AXMediaLogLanguageTranslation();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v9 = [(NSArray *)v4 ax_flatMappedArrayUsingBlock:&__block_literal_global_334];
    v10 = AXMediaLogLanguageTranslation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __94__AXVoiceOverImageDescriptionsController__installLanguageTranslationModelForLanguageIfNeeded___block_invoke_cold_2(v9, v10);
    }
  }
}

id __94__AXVoiceOverImageDescriptionsController__installLanguageTranslationModelForLanguageIfNeeded___block_invoke_331(id a1, AXMTranslationModelInstallStatus *a2)
{
  v2 = a2;
  v3 = [(AXMTranslationModelInstallStatus *)v2 localeIdentifier];
  v4 = [NSNumber numberWithUnsignedInteger:[(AXMTranslationModelInstallStatus *)v2 state]];
  v5 = [(AXMTranslationModelInstallStatus *)v2 progress];

  v6 = [NSNumber numberWithLongLong:v5];
  v7 = [NSString stringWithFormat:@"[id: %@ state:%@ progress:%@]", v3, v4, v6];

  return v7;
}

void __94__AXVoiceOverImageDescriptionsController__installLanguageTranslationModelForLanguageIfNeeded___block_invoke_342(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AXMediaLogLanguageTranslation();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __94__AXVoiceOverImageDescriptionsController__installLanguageTranslationModelForLanguageIfNeeded___block_invoke_342_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Translation asset installation finished successfully", v5, 2u);
  }
}

- (void)_updateTranslationAssetStatus
{
  v3 = [(AXVoiceOverImageDescriptionsController *)self languageTranslator];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __71__AXVoiceOverImageDescriptionsController__updateTranslationAssetStatus__block_invoke;
  v4[3] = &unk_257A28;
  v4[4] = self;
  [v3 installedTranslationLocales:v4];
}

void __71__AXVoiceOverImageDescriptionsController__updateTranslationAssetStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __71__AXVoiceOverImageDescriptionsController__updateTranslationAssetStatus__block_invoke_2;
  v5[3] = &unk_255538;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void *__71__AXVoiceOverImageDescriptionsController__updateTranslationAssetStatus__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 176), *(a1 + 40));
  result = *(a1 + 32);
  if (result[23])
  {

    return [result reloadSpecifier:?];
  }

  return result;
}

- (id)_additionalTranslationLanguagesValueSummary:(id)a3
{
  v3 = [(NSArray *)self->_installedTranslationLocales ax_filteredArrayUsingBlock:&__block_literal_global_349];
  v4 = [v3 count];
  if (v4)
  {
    if (v4 == &dword_0 + 1)
    {
      v5 = [v3 firstObject];
      v6 = [v5 localeIdentifier];
      if ([(__CFString *)v6 hasPrefix:@"ar"])
      {

        v6 = @"ar";
      }

      v7 = [IPLanguage languageWithIdentifier:v6];
      v8 = [v7 localizedStringForName];
    }

    else
    {
      v5 = settingsLocString(@"IMAGE_DESCRIPTION_TRANSLATIONS_INSTALLED_LANGUAGE_COUNT", @"VoiceOverSettings");
      v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v5, [v3 count]);
    }
  }

  else
  {
    v8 = &stru_25D420;
  }

  return v8;
}

BOOL __86__AXVoiceOverImageDescriptionsController__additionalTranslationLanguagesValueSummary___block_invoke(id a1, NSLocale *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(NSLocale *)a2 localeIdentifier:a3];
  v5 = [v4 hasPrefix:@"en"];

  return v5 ^ 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[AXVoiceOverImageDescriptionsController specifierAtIndex:](self, "specifierAtIndex:", -[AXVoiceOverImageDescriptionsController indexOfGroup:](self, "indexOfGroup:", [v7 section]));
  v9 = [(AXVoiceOverImageDescriptionsController *)self specifierAtIndexPath:v7];
  v10 = PSIDKey;
  v11 = [v8 propertyForKey:PSIDKey];
  v12 = [v11 isEqualToString:@"SensitiveContentGroup"];

  v13 = [v9 propertyForKey:v10];
  v14 = v13;
  if (v12)
  {
    v15 = +[AXSettings sharedInstance];
    v16 = [v15 voiceOverDiscoveredSensitiveContentFeedback];

    if ([v14 isEqualToString:@"SensitiveContentSpeak"])
    {
      v16 = 0;
    }

    else if ([v14 isEqualToString:@"SensitiveContentPlaySound"])
    {
      v16 = &dword_0 + 1;
    }

    else if ([v14 isEqualToString:@"SensitiveContentDoNothing"])
    {
      v16 = &dword_0 + 2;
    }

    v20 = +[AXSettings sharedInstance];
    [v20 setVoiceOverDiscoveredSensitiveContentFeedback:v16];

    goto LABEL_11;
  }

  v17 = [v13 isEqualToString:@"apps"];

  if (!v17)
  {
LABEL_11:
    v21.receiver = self;
    v21.super_class = AXVoiceOverImageDescriptionsController;
    [(AXVoiceOverImageDescriptionsController *)&v21 tableView:v6 didSelectRowAtIndexPath:v7];
    goto LABEL_12;
  }

  v18 = objc_alloc_init(AXAppSelectionController);
  v19 = [(AXVoiceOverImageDescriptionsController *)self rootController];
  [(AXAppSelectionController *)v18 setRootController:v19];

  [(AXAppSelectionController *)v18 setSpecifier:v9];
  [(AXAppSelectionController *)v18 setParentController:self];
  [(AXAppSelectionController *)v18 setIncludesHomeScreen:0];
  [(AXAppSelectionController *)v18 setGetUnselectedApps:&__block_literal_global_374];
  objc_initWeak(&location, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __76__AXVoiceOverImageDescriptionsController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v22[3] = &unk_2563A0;
  objc_copyWeak(&v23, &location);
  [(AXAppSelectionController *)v18 setSetUnselectedApps:v22];
  [(AXVoiceOverImageDescriptionsController *)self showController:v18 animate:1];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

LABEL_12:
}

NSSet *__cdecl __76__AXVoiceOverImageDescriptionsController_tableView_didSelectRowAtIndexPath___block_invoke(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 imageCaptioningDisabledApps];

  if (v2)
  {
    v3 = [NSSet setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __76__AXVoiceOverImageDescriptionsController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 allObjects];

  v5 = +[AXSettings sharedInstance];
  [v5 setImageCaptioningDisabledApps:v4];

  [WeakRetained reloadSpecifierID:@"apps"];
}

- (BOOL)_isFeatureEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverImageCaptionsEnabled];

  return v3;
}

- (AXImageCaptionModelAssetPolicy)imageCaptionModelAssetPolicy
{
  imageCaptionModelAssetPolicy = self->_imageCaptionModelAssetPolicy;
  if (!imageCaptionModelAssetPolicy)
  {
    v4 = +[AXImageCaptionModelAssetPolicy policy];
    v5 = self->_imageCaptionModelAssetPolicy;
    self->_imageCaptionModelAssetPolicy = v4;

    imageCaptionModelAssetPolicy = self->_imageCaptionModelAssetPolicy;
  }

  return imageCaptionModelAssetPolicy;
}

- (void)_updatePrimaryGroupFooterTextAndReloadSpecifier:(BOOL)a3
{
  v3 = a3;
  v5 = AXLocStringKeyForModel();
  v6 = settingsLocString(v5, @"VoiceOverSettings");
  v7 = [v6 mutableCopy];

  [(PSSpecifier *)self->_primaryGroupSpecifier setProperty:v7 forKey:PSFooterTextGroupKey];
  if (v3)
  {
    [(AXVoiceOverImageDescriptionsController *)self reloadSpecifier:self->_primaryGroupSpecifier];
  }
}

- (void)_updateAssetStatusCell:(int64_t)a3 error:(id)a4 downloaded:(int64_t)a5 expected:(int64_t)a6
{
  assetStatusSpecifier = self->_assetStatusSpecifier;
  v11 = a4;
  [(PSSpecifier *)assetStatusSpecifier setAx_assetState:a3];
  v12 = [(AXVoiceOverImageDescriptionsController *)self cachedAsset];
  [(PSSpecifier *)self->_assetStatusSpecifier setAx_asset:v12];

  [(PSSpecifier *)self->_assetStatusSpecifier setAx_assetError:v11];
  [(PSSpecifier *)self->_assetStatusSpecifier setAx_assetDownloadBytesReceived:a5];
  [(PSSpecifier *)self->_assetStatusSpecifier setAx_assetDownloadBytesExpected:a6];
  v13 = self->_assetStatusSpecifier;

  [(AXVoiceOverImageDescriptionsController *)self reloadSpecifier:v13];
}

- (void)_optInToImageCaptionFeature
{
  v3 = [AXImageCaptionModelAssetPolicy assertionForNewsestCompatibleImageCaptionModelAssetWithStage:@"Stable" language:@"en" clientIdentifier:@"VoiceOver"];
  v4 = +[AXAssetMetadataStore store];
  [v4 requestAssertion:v3];

  self->_wantsAssetDownloadIfNeeded = 1;
  [(AXVoiceOverImageDescriptionsController *)self _updatePrimaryGroupFooterTextAndReloadSpecifier:1];
  [(AXAssetController *)self->_assetController refreshAssetsByForceUpdatingCatalog:0 updatingCatalogIfNeeded:0 catalogRefreshOverrideTimeout:0 completion:0];
  v5 = TTSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences();
  v6 = [v5 length];
  v7 = AXMediaLogLanguageTranslation();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Image descriptions feature toggled on. Will attempt to download translation assets for current VoiceOver spoken language: %@", &v9, 0xCu);
    }

    [(AXVoiceOverImageDescriptionsController *)self _installLanguageTranslationModelForLanguageIfNeeded:v5];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXVoiceOverImageDescriptionsController _optInToImageCaptionFeature];
    }
  }
}

- (void)_optOutOfImageCaptionFeature
{
  v4 = [AXImageCaptionModelAssetPolicy assertionForNewsestCompatibleImageCaptionModelAssetWithStage:@"Stable" language:@"en" clientIdentifier:@"VoiceOver"];
  v3 = +[AXAssetMetadataStore store];
  [v3 discardAssertion:v4];

  [(AXVoiceOverImageDescriptionsController *)self _updatePrimaryGroupFooterTextAndReloadSpecifier:1];
}

- (id)_validateAssetFromResults:(id)a3
{
  v3 = a3;
  v4 = [AXAsset newsestCompatibleImageCaptionModelAssetFromAssets:v3 withStage:@"Stable" language:@"en" isInstalled:1 isDownloadable:0];
  if (!v4)
  {
    v4 = [AXAsset newsestCompatibleImageCaptionModelAssetFromAssets:v3 withStage:@"Stable" language:@"en" isInstalled:0 isDownloadable:1];
  }

  return v4;
}

- (void)setSpeakDiscoveredImageDescriptions:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v5 = AXLogAssetLoader();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Enable Image Descriptions toggle adjusted. inVal=%@", &v8, 0xCu);
  }

  v6 = [v4 BOOLValue];
  v7 = +[AXSettings sharedInstance];
  [v7 setVoiceOverImageCaptionsEnabled:v6];
}

- (id)speakDiscoveredImageDescriptions:(id)a3
{
  v3 = [(AXVoiceOverImageDescriptionsController *)self _isFeatureEnabled];

  return [NSNumber numberWithBool:v3];
}

- (void)_addSensitiveContentFeedbackSpecifiers:(id)a3
{
  v15 = a3;
  v3 = settingsLocString(@"SENSITIVE_CONTENT_FEEDBACK_TITLE", @"VoiceOverSettings");
  v4 = [PSSpecifier groupSpecifierWithName:v3];

  v5 = PSIDKey;
  [v4 setProperty:@"SensitiveContentGroup" forKey:PSIDKey];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v6 = settingsLocString(@"SENSITIVE_CONTENT_FEEDBACK_FOOTER", @"VoiceOverSettings");
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v15 addObject:v4];
  v7 = +[AXSettings sharedInstance];
  v8 = [v7 voiceOverDiscoveredSensitiveContentFeedback];

  v9 = settingsLocString(@"FEEDBACK_SPEAK", @"VoiceOverSettings");
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v10 setProperty:@"SensitiveContentSpeak" forKey:v5];
  if (!v8)
  {
    [v4 setProperty:v10 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  [v15 addObject:v10];
  v11 = settingsLocString(@"FEEDBACK_PLAY_TONE", @"VoiceOverSettings");
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v12 setProperty:@"SensitiveContentPlaySound" forKey:v5];
  if (v8 == &dword_0 + 1)
  {
    [v4 setProperty:v12 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  [v15 addObject:v12];
  v13 = settingsLocString(@"FEEDBACK_DO_NOTHING", @"VoiceOverSettings");
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v14 setProperty:@"SensitiveContentDoNothing" forKey:v5];
  if (v8 == &dword_0 + 2)
  {
    [v4 setProperty:v14 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  [v15 addObject:v14];
}

- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v9 = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __104__AXVoiceOverImageDescriptionsController_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke;
  v12[3] = &unk_257AD0;
  v15 = a5;
  v12[4] = self;
  v13 = a6;
  v14 = v9;
  v10 = v9;
  v11 = v13;
  dispatch_async(&_dispatch_main_q, v12);
}

void __104__AXVoiceOverImageDescriptionsController_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 _validateAssetFromResults:*(a1 + 48)];
    [*(a1 + 32) setCachedAsset:v4];

    v5 = [*(a1 + 32) cachedAsset];

    v3 = *(a1 + 32);
    if (v5)
    {
      v6 = [v3 cachedAsset];
      v7 = [v6 isInstalled];

      v3 = *(a1 + 32);
      if (v7)
      {
        [v3 _updateAssetStatusCell:4 error:0 downloaded:0 expected:0];
        v8 = AXLogAssetLoader();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [*(a1 + 32) cachedAsset];
          *buf = 138412290;
          v18 = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Image caption model is installed: %@", buf, 0xCu);
        }

LABEL_12:

        return;
      }

      if (v3[138] == 1)
      {
        v3[138] = 0;
        [*(a1 + 32) _updateAssetStatusCell:2 error:0 downloaded:0 expected:0];
        v12 = AXLogAssetLoader();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Image caption model requested. Beginning download", buf, 2u);
        }

        v13 = *(a1 + 32);
        v14 = v13[25];
        v8 = [v13 cachedAsset];
        v16 = v8;
        v15 = [NSArray arrayWithObjects:&v16 count:1];
        [v14 downloadAssets:v15 successStartBlock:&__block_literal_global_410];

        goto LABEL_12;
      }

      v11 = 1;
    }

    else
    {
      v11 = 5;
    }

    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = 5;
  }

  [v3 _updateAssetStatusCell:v11 error:v10 downloaded:0 expected:0];
}

- (void)assetController:(id)a3 asset:(id)a4 downloadProgressTotalWritten:(int64_t)a5 totalExpected:(int64_t)a6 isStalled:(BOOL)a7 expectedTimeRemaining:(double)a8
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __139__AXVoiceOverImageDescriptionsController_assetController_asset_downloadProgressTotalWritten_totalExpected_isStalled_expectedTimeRemaining___block_invoke;
  v8[3] = &unk_257AF8;
  v9 = a7;
  v8[4] = self;
  v8[5] = a5;
  v8[6] = a6;
  dispatch_async(&_dispatch_main_q, v8);
}

id __139__AXVoiceOverImageDescriptionsController_assetController_asset_downloadProgressTotalWritten_totalExpected_isStalled_expectedTimeRemaining___block_invoke(uint64_t a1)
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

- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __126__AXVoiceOverImageDescriptionsController_assetController_didFinishDownloadingAsset_wasSuccessful_error_hasRemainingDownloads___block_invoke;
  block[3] = &unk_256190;
  v10 = a5;
  block[4] = self;
  v9 = a6;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

id __126__AXVoiceOverImageDescriptionsController_assetController_didFinishDownloadingAsset_wasSuccessful_error_hasRemainingDownloads___block_invoke(uint64_t a1)
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

void __94__AXVoiceOverImageDescriptionsController__installLanguageTranslationModelForLanguageIfNeeded___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v3 = [a1 componentsJoinedByString:@" "];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Translation asset installation status: %@", &v4, 0xCu);
}

@end