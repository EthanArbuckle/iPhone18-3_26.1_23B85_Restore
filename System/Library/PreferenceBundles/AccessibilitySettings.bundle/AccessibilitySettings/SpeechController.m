@interface SpeechController
- (id)accessibilityReaderEnabled:(id)a3;
- (id)highlightWord:(id)a3;
- (id)quickSpeakEnabled:(id)a3;
- (id)quickSpeakSpeakingRate:(id)a3;
- (id)speakScreenEnabled:(id)a3;
- (id)speakSelectionEnabled:(id)a3;
- (id)speakThisEnabled:(id)a3;
- (id)specifiers;
- (id)speechControllerSummary:(id)a3;
- (id)spokenContentDefaultLanguageSummary:(id)a3;
- (id)spokenContentDetectLanguages:(id)a3;
- (void)_reloadQuickSpeakHighlightSpecifier;
- (void)_reloadSpeakScreenEnabledSpecifier;
- (void)_reloadSpeakSelectionEnabledSpecifier;
- (void)loadView;
- (void)setHighlightSettingsItemsHidden:(BOOL)a3;
- (void)setQuickSpeakEnabled:(id)a3 specifier:(id)a4;
- (void)setQuickSpeakSpeakingRate:(id)a3 specifier:(id)a4;
- (void)setSpeakScreenSettingsItemsHidden:(BOOL)a3;
- (void)setSpeakThisEnabled:(id)a3 specifier:(id)a4;
- (void)setSpokenContentDetectLanguages:(id)a3 specifier:(id)a4;
- (void)updateLayout;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActive;
@end

@implementation SpeechController

- (void)setHighlightSettingsItemsHidden:(BOOL)a3
{
  if (self->_highlightSettingsItemsHidden != a3)
  {
    self->_highlightSettingsItemsHidden = a3;
    if (a3)
    {
      v8 = [(SpeechController *)self highlightSettingsItems];
      [SpeechController removeContiguousSpecifiers:"removeContiguousSpecifiers:animated:" animated:?];
    }

    else
    {
      speakScreenSettingsItemsHidden = self->_speakScreenSettingsItemsHidden;
      v6 = [(SpeechController *)self highlightSettingsItems];
      v8 = v6;
      if (speakScreenSettingsItemsHidden)
      {
        v7 = @"SpeakThisEnabled";
      }

      else
      {
        v7 = @"SpeechControllerGroup";
      }

      [(SpeechController *)self insertContiguousSpecifiers:v6 afterSpecifierID:v7 animated:1];
    }
  }
}

- (void)setSpeakScreenSettingsItemsHidden:(BOOL)a3
{
  if (self->_speakScreenSettingsItemsHidden != a3)
  {
    v4 = a3;
    self->_speakScreenSettingsItemsHidden = a3;
    v6 = [(SpeechController *)self speakScreenSettingsItems];
    v7 = v6;
    if (v4)
    {
      [(SpeechController *)self removeContiguousSpecifiers:v6 animated:1];
    }

    else
    {
      [(SpeechController *)self insertContiguousSpecifiers:v6 afterSpecifierID:@"SpeakThisEnabled" animated:1];
    }
  }
}

- (void)_reloadQuickSpeakHighlightSpecifier
{
  v3 = [(SpeechController *)self specifierForID:@"QuickSpeakHighlight"];
  [(SpeechController *)self reloadSpecifier:v3];
}

- (void)_reloadSpeakSelectionEnabledSpecifier
{
  v3 = [(SpeechController *)self specifierForID:@"SpeakSelection"];
  [(SpeechController *)self reloadSpecifier:v3];
}

- (void)_reloadSpeakScreenEnabledSpecifier
{
  v3 = [(SpeechController *)self specifierForID:@"SpeakScreen"];
  [(SpeechController *)self reloadSpecifier:v3];
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = SpeechController;
  [(SpeechController *)&v20 loadView];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_reloadQuickSpeakHighlightSpecifier" name:kAXSQuickSpeakHighlightTextEnabledNotification object:0];

  objc_initWeak(&location, self);
  v4 = +[AXSettings sharedInstance];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __28__SpeechController_loadView__block_invoke;
  v17[3] = &unk_255818;
  objc_copyWeak(&v18, &location);
  v17[4] = self;
  [v4 registerUpdateBlock:v17 forRetrieveSelector:"quickSpeakSpeakingRate" withListener:self];

  objc_destroyWeak(&v18);
  v5 = +[AXSettings sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __28__SpeechController_loadView__block_invoke_3;
  v15[3] = &unk_255818;
  objc_copyWeak(&v16, &location);
  v15[4] = self;
  [v5 registerUpdateBlock:v15 forRetrieveSelector:"showSpeechController" withListener:self];

  objc_destroyWeak(&v16);
  v6 = +[AXSettings sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __28__SpeechController_loadView__block_invoke_4;
  v13[3] = &unk_255388;
  objc_copyWeak(&v14, &location);
  [v6 registerUpdateBlock:v13 forRetrieveSelector:"spokenContentDefaultFallbackLanguage" withListener:self];

  objc_destroyWeak(&v14);
  v7 = +[AXSettings sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __28__SpeechController_loadView__block_invoke_5;
  v11[3] = &unk_255388;
  objc_copyWeak(&v12, &location);
  v8 = objc_loadWeakRetained(&location);
  [v7 registerUpdateBlock:v11 forRetrieveSelector:"accessibilityReaderEnabled" withListener:v8];

  objc_destroyWeak(&v12);
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_reloadSpeakSelectionEnabledSpecifier" name:kAXSQuickSpeakEnabledNotification object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"_reloadSpeakScreenEnabledSpecifier" name:kAXSSpeakThisEnabledNotification object:0];

  objc_destroyWeak(&location);
}

void __28__SpeechController_loadView__block_invoke(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __28__SpeechController_loadView__block_invoke_2;
  v2[3] = &unk_255818;
  objc_copyWeak(&v3, (a1 + 40));
  v2[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
}

void __28__SpeechController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) specifierForID:@"QuickSpeakRate"];
  [WeakRetained reloadSpecifier:v2];
}

void __28__SpeechController_loadView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) specifierForID:@"SpeechController"];
  [WeakRetained reloadSpecifier:v2];
}

void __28__SpeechController_loadView__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __28__SpeechController_loadView__block_invoke_5(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"AccessibilityReader"];
  [v2 reloadSpecifier:v1];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v67 = OBJC_IVAR___PSListController__specifiers;
    if (AXHasCapability())
    {
      v4 = @"ReadAndSpeakSettings";
    }

    else
    {
      v4 = @"SpeechSettings";
    }

    v5 = [(SpeechController *)self loadSpecifiersFromPlistName:v4 target:self];
    v6 = settingsLocString(@"ACCESSIBILITY_READER_TOGGLE_FOOTER", @"ReadAndSpeakSettings");
    v7 = +[PSSpecifier emptyGroupSpecifier];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setProperty:v9 forKey:PSFooterCellClassGroupKey];

    v68 = self;
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 bundlePath];
    [v7 setProperty:v11 forKey:@"bundlePath"];

    v71 = v7;
    [v7 setProperty:@"Accessibility" forKey:@"table"];
    v12 = @"alreadyLocalized";
    v102[0] = @"contentLabel";
    v102[1] = @"alreadyLocalized";
    v13 = &__kCFBooleanTrue;
    v66 = v6;
    v103[0] = v6;
    v103[1] = &__kCFBooleanTrue;
    v102[2] = AXInBuddySetupKey;
    v103[2] = &__kCFBooleanTrue;
    v14 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:3];
    v104 = v14;
    v15 = [NSArray arrayWithObjects:&v104 count:1];
    v16 = [v15 mutableCopy];

    v17 = AXTeachableFeatureReadAndSpeak;
    v69 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureReadAndSpeak];
    v70 = v16;
    if ([v69 count])
    {
      v82 = v5;
      v100[0] = @"moreLabel";
      v18 = settingsLocString(@"READ_AND_SPEAK_WHATS_NEW_LINK", @"ReadAndSpeakSettings");
      v101[0] = v18;
      v100[1] = @"additionalTitleLabel";
      v19 = settingsLocString(@"SPEECH_TITLE", @"ReadAndSpeakSettings");
      v101[1] = v19;
      v101[2] = &__kCFBooleanTrue;
      v100[2] = @"alreadyLocalized";
      v100[3] = @"symbolName";
      v101[3] = @"rectangle.3.group.bubble";
      v20 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:4];
      v80 = [v20 mutableCopy];

      v21 = objc_opt_new();
      v98[0] = @"sectionLabel";
      v22 = [AXTeachableMomentsManager notificationTitleForFeature:v17];
      v98[1] = @"alreadyLocalized";
      v99[0] = v22;
      v99[1] = &__kCFBooleanTrue;
      v23 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:2];
      [v21 addObject:v23];

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      obj = v69;
      v24 = [obj countByEnumeratingWithState:&v90 objects:v97 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v91;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v91 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v90 + 1) + 8 * i);
            v95[0] = @"headerLabel";
            v29 = [v28 itemTitle];
            v96[0] = v29;
            v95[1] = @"contentLabel";
            v30 = [v28 itemDescription];
            v95[2] = v12;
            v96[1] = v30;
            v96[2] = v13;
            [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:3];
            v31 = v13;
            v33 = v32 = v12;
            [v21 addObject:v33];

            v12 = v32;
            v13 = v31;
          }

          v25 = [obj countByEnumeratingWithState:&v90 objects:v97 count:16];
        }

        while (v25);
      }

      [v80 setObject:v21 forKey:@"additionalContent"];
      v16 = v70;
      [v70 addObject:v80];

      v5 = v82;
    }

    [v71 setProperty:v16 forKey:@"content"];
    [v5 insertObject:v71 atIndex:0];
    v83 = +[NSMutableArray array];
    v81 = +[NSMutableArray array];
    v79 = +[NSMutableArray array];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obja = v5;
    v34 = [obja countByEnumeratingWithState:&v86 objects:v94 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v78 = 0;
      v37 = *v87;
      v38 = PSKeyNameKey;
      v77 = PSSliderRightImageKey;
      v76 = PSSliderLeftImageKey;
      v75 = PSSliderIsSegmented;
      v73 = PSSliderLocksToSegment;
      v74 = PSSliderSegmentCount;
      v72 = PSSliderSnapsToSegment;
      v39 = PSIDKey;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v87 != v37)
          {
            objc_enumerationMutation(obja);
          }

          v41 = *(*(&v86 + 1) + 8 * j);
          v42 = [v41 propertyForKey:@"hideWhenDisabled"];
          v43 = [v42 BOOLValue];

          if (v43)
          {
            [v83 addObject:v41];
          }

          v44 = [v41 propertyForKey:@"requiresSpeakScreen"];
          v45 = [v44 BOOLValue];

          if (v45)
          {
            [v81 addObject:v41];
          }

          v46 = [v41 propertyForKey:v38];
          v47 = [v46 isEqualToString:@"QuickSpeakRate"];

          if (v47)
          {
            v48 = AXHareImage();
            [v41 setProperty:v48 forKey:v77];

            v49 = AXTortoiseImage();
            [v41 setProperty:v49 forKey:v76];

            [v41 setProperty:&__kCFBooleanTrue forKey:v75];
            [v41 setProperty:&off_279FF0 forKey:v74];
            [v41 setProperty:&__kCFBooleanFalse forKey:v73];
            [v41 setProperty:&__kCFBooleanTrue forKey:v72];
          }

          if (AXHasCapability())
          {
            v50 = [v41 propertyForKey:v39];
            v51 = [v50 isEqualToString:@"SpeakThisGeneralFooterText"];

            if (v51)
            {
              v52 = v41;

              v78 = v52;
            }
          }

          v53 = [v41 propertyForKey:v39];
          v54 = [v53 isEqualToString:@"SpeakThisGeneralFooter"];

          if (v54)
          {
            v55 = v41;

            v36 = v55;
          }

          v56 = [v41 propertyForKey:@"needsReaderCapability"];
          v57 = [v56 BOOLValue];

          if (v57)
          {
            [v79 addObject:v41];
          }
        }

        v35 = [obja countByEnumeratingWithState:&v86 objects:v94 count:16];
      }

      while (v35);
    }

    else
    {
      v36 = 0;
      v78 = 0;
    }

    [(SpeechController *)v68 setHighlightSettingsItems:v83];
    [(SpeechController *)v68 setSpeakScreenSettingsItems:v81];
    [(SpeechController *)v68 setReaderItems:v79];
    if (_AXSQuickSpeakEnabled())
    {
      v58 = 0;
    }

    else
    {
      v58 = _AXSSpeakThisEnabled() == 0;
    }

    v68->_highlightSettingsItemsHidden = v58;
    if (_AXSSpeakThisEnabled())
    {
      v59 = _AXSMossdeepEnabled() != 0;
    }

    else
    {
      v59 = 1;
    }

    v68->_speakScreenSettingsItemsHidden = v59;
    v68->_readerItemsHidden = AXHasCapability() ^ 1;
    if (v68->_highlightSettingsItemsHidden)
    {
      v60 = [(SpeechController *)v68 highlightSettingsItems];
      [obja removeObjectsInArray:v60];
    }

    if (v68->_speakScreenSettingsItemsHidden)
    {
      v61 = [(SpeechController *)v68 speakScreenSettingsItems];
      [obja removeObjectsInArray:v61];
    }

    if (v68->_readerItemsHidden)
    {
      v62 = [(SpeechController *)v68 readerItems];
      [obja removeObjectsInArray:v62];
    }

    [(SpeechController *)v68 filterBuddy:obja];
    v63 = *&v68->AXUISettingsSetupCapableListController_opaque[v67];
    *&v68->AXUISettingsSetupCapableListController_opaque[v67] = obja;
    v64 = obja;

    v3 = *&v68->AXUISettingsSetupCapableListController_opaque[v67];
  }

  return v3;
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = SpeechController;
  [(SpeechController *)&v3 willBecomeActive];
  [(SpeechController *)self updateLayout];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SpeechController;
  [(SpeechController *)&v4 viewWillAppear:a3];
  [(SpeechController *)self updateLayout];
}

- (void)updateLayout
{
  if (_AXSQuickSpeakEnabled())
  {
    v3 = 0;
  }

  else
  {
    v3 = _AXSSpeakThisEnabled() == 0;
  }

  [(SpeechController *)self setHighlightSettingsItemsHidden:v3];
  if (_AXSSpeakThisEnabled())
  {
    v4 = _AXSMossdeepEnabled() != 0;
  }

  else
  {
    v4 = 1;
  }

  [(SpeechController *)self setSpeakScreenSettingsItemsHidden:v4];
}

- (id)quickSpeakEnabled:(id)a3
{
  v3 = _AXSQuickSpeakEnabled() != 0;

  return [NSNumber numberWithBool:v3];
}

- (id)speakSelectionEnabled:(id)a3
{
  if (_AXSQuickSpeakEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (id)accessibilityReaderEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 accessibilityReaderEnabled];

  if (v4)
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  return settingsLocString(v5, @"Accessibility");
}

- (void)setQuickSpeakEnabled:(id)a3 specifier:(id)a4
{
  [a3 BOOLValue];
  _AXSQuickSpeakSetEnabled();

  [(SpeechController *)self updateLayout];
}

- (id)highlightWord:(id)a3
{
  if (_AXSQuickSpeakHighlightTextEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (id)quickSpeakSpeakingRate:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 quickSpeakSpeakingRate];
  v4 = [NSNumber numberWithFloat:?];

  return v4;
}

- (void)setQuickSpeakSpeakingRate:(id)a3 specifier:(id)a4
{
  [a3 floatValue];
  v5 = v4;
  v6 = +[AXSettings sharedInstance];
  LODWORD(v7) = v5;
  [v6 setQuickSpeakSpeakingRate:v7];

  if (!setQuickSpeakSpeakingRate_specifier__qsInstance)
  {
    v16 = 0;
    v17 = 0;
    v11 = [AXResourceLoader loadResource:3 principalClass:&v17 error:&v16];
    v12 = v16;
    if (v12)
    {
      v13 = v12;
      _AXLogWithFacility();

      return;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [v17 sharedInstance];
      v15 = setQuickSpeakSpeakingRate_specifier__qsInstance;
      setQuickSpeakSpeakingRate_specifier__qsInstance = v14;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      v8 = setQuickSpeakSpeakingRate_specifier__qsInstance;
      v9 = +[AXLanguageManager sharedInstance];
      v10 = [v9 systemLanguageID];
      [v8 speakStatusWithLanguage:v10 rate:0];
    }
  }

  else
  {
    AXIsInternalInstall();
  }
}

- (id)speakThisEnabled:(id)a3
{
  v3 = _AXSSpeakThisEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (id)speakScreenEnabled:(id)a3
{
  if (_AXSSpeakThisEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (void)setSpeakThisEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  [v5 BOOLValue];
  _AXSSetSpeakThisEnabled();
  [(SpeechController *)self updateLayout];
  LODWORD(self) = [v5 BOOLValue];

  if (self)
  {
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 showSpeechController];

    if (v7)
    {
      v8 = +[SpeakThisServices sharedInstance];
      [v8 showSpeechController:&__block_literal_global_27];
    }
  }
}

void __50__SpeechController_setSpeakThisEnabled_specifier___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AXLogSettings();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__SpeechController_setSpeakThisEnabled_specifier___block_invoke_cold_1(v2, v3);
    }
  }
}

- (id)speechControllerSummary:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 showSpeechController];

  if (v4)
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  return settingsLocString(v5, @"Accessibility");
}

- (id)spokenContentDefaultLanguageSummary:(id)a3
{
  v3 = +[AXLanguageManager sharedInstance];
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 spokenContentDefaultFallbackLanguage];

  if (v5)
  {
    v6 = [v3 dialectForLanguageID:v5];
    v7 = [v6 languageNameInCurrentLocale];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)spokenContentDetectLanguages:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 spokenContentShouldUseLanguageDetection]);

  return v4;
}

- (void)setSpokenContentDetectLanguages:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setSpokenContentShouldUseLanguageDetection:v5];
}

void __50__SpeechController_setSpeakThisEnabled_specifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unable to display speech controller from settings: %@", &v2, 0xCu);
}

@end