@interface LiveTranscriptionSettingsController
- (LiveTranscriptionSettingsController)init;
- (id)liveTranscriptionEnabled:(id)enabled;
- (id)liveTranscriptionInCallEnabled:(id)enabled;
- (id)selectedLocaleForSpecifier:(id)specifier;
- (id)specifiers;
- (void)dealloc;
- (void)presentAlertWithMessage:(id)message specifier:(id)specifier okBlock:(id)block;
- (void)setLiveTranscriptionEnabled:(id)enabled specifier:(id)specifier;
- (void)setLiveTranscriptionInCallEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation LiveTranscriptionSettingsController

- (LiveTranscriptionSettingsController)init
{
  v11.receiver = self;
  v11.super_class = LiveTranscriptionSettingsController;
  v2 = [(AccessibilitySettingsBaseController *)&v11 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, liveTranscriptionEnabledUpdated, kAXSLiveTranscriptionEnabledDidChangeNotification, 0, 1028);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = +[AXSettings sharedInstance];
    liveCaptionsSelectedLocaleChangedNotification = [v5 liveCaptionsSelectedLocaleChangedNotification];
    CFNotificationCenterAddObserver(v4, v2, selectedLocaleUpdated, liveCaptionsSelectedLocaleChangedNotification, 0, 1028);

    objc_initWeak(&location, v2);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __43__LiveTranscriptionSettingsController_init__block_invoke;
    v8[3] = &unk_256D08;
    objc_copyWeak(&v9, &location);
    [LiveCaptionsLanguagesSelection defaultLocaleWithCompletionHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __43__LiveTranscriptionSettingsController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __43__LiveTranscriptionSettingsController_init__block_invoke_2;
  v5[3] = &unk_255818;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void __43__LiveTranscriptionSettingsController_init__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDefaultLocale:v2];

  v5 = objc_loadWeakRetained((a1 + 40));
  v4 = [v5 currentLocaleSpecifier];
  [v5 reloadSpecifier:v4];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kAXSLiveTranscriptionEnabledDidChangeNotification, 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = +[AXSettings sharedInstance];
  liveCaptionsSelectedLocaleChangedNotification = [v5 liveCaptionsSelectedLocaleChangedNotification];
  CFNotificationCenterRemoveObserver(v4, self, liveCaptionsSelectedLocaleChangedNotification, 0);

  v7.receiver = self;
  v7.super_class = LiveTranscriptionSettingsController;
  [(AccessibilitySettingsBaseController *)&v7 dealloc];
}

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v63 = OBJC_IVAR___PSListController__specifiers;
    v62 = [objc_allocWithZone(NSMutableArray) init];
    v4 = [PSSpecifier groupSpecifierWithName:0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v61 = v4;
    [v4 setProperty:v6 forKey:PSFooterCellClassGroupKey];

    v84[0] = @"contentLabel";
    obja = AXLocStringKeyForModel();
    v64 = AXUILocalizedStringForKey();
    v84[1] = @"alreadyLocalized";
    v7 = &__kCFBooleanTrue;
    v85[0] = v64;
    v85[1] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];
    v86[0] = v8;
    v86[1] = &off_27D288;
    v82[0] = @"contentLabel";
    v9 = settingsLocString(@"LIVE_CAPTIONS_SWIPE_INSTRUCTIONS", @"Accessibility");
    v82[1] = @"alreadyLocalized";
    v83[0] = v9;
    v83[1] = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
    v86[2] = v10;
    v80[0] = @"contentLabel";
    v11 = settingsLocString(@"LIVE_CAPTIONS_DOUBLE_TAP_INSTRUCTIONS", @"Accessibility");
    v80[1] = @"alreadyLocalized";
    v81[0] = v11;
    v81[1] = &__kCFBooleanTrue;
    v12 = PSListController_ptr;
    v13 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];
    v86[3] = v13;
    v14 = [NSArray arrayWithObjects:v86 count:4];
    v15 = [v14 mutableCopy];

    v16 = AXTeachableFeatureLiveCaptions;
    v65 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureLiveCaptions];
    v66 = v15;
    if ([v65 count])
    {
      v78[0] = @"moreLabel";
      v17 = settingsLocString(@"LIVE_CAPTIONS_WHATS_NEW", @"Accessibility");
      v79[0] = v17;
      v78[1] = @"additionalTitleLabel";
      v18 = settingsLocString(@"LIVE_TRANSCRIPTION_TITLE", @"Accessibility");
      v79[1] = v18;
      v79[2] = &__kCFBooleanTrue;
      v19 = @"alreadyLocalized";
      v78[2] = @"alreadyLocalized";
      v78[3] = @"symbolName";
      v79[3] = @"waveform.bubble";
      v20 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:4];
      v60 = [v20 mutableCopy];

      v21 = objc_opt_new();
      v76[0] = @"sectionLabel";
      v22 = [AXTeachableMomentsManager notificationTitleForFeature:v16];
      v76[1] = @"alreadyLocalized";
      v77[0] = v22;
      v77[1] = &__kCFBooleanTrue;
      v23 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
      [v21 addObject:v23];

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = v65;
      v24 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v70;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v70 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v69 + 1) + 8 * i);
            v73[0] = @"headerLabel";
            itemTitle = [v28 itemTitle];
            v74[0] = itemTitle;
            v73[1] = @"contentLabel";
            itemDescription = [v28 itemDescription];
            v73[2] = v19;
            v74[1] = itemDescription;
            v74[2] = v7;
            [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:3];
            v31 = v7;
            v33 = v32 = v19;
            [v21 addObject:v33];

            v19 = v32;
            v7 = v31;
          }

          v25 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
        }

        while (v25);
      }

      [v60 setObject:v21 forKey:@"additionalContent"];
      v15 = v66;
      [v66 addObject:v60];

      v12 = PSListController_ptr;
    }

    [v61 setProperty:v15 forKey:@"content"];
    [v62 addObject:v61];
    v34 = v12[5];
    v35 = settingsLocString(@"LIVE_TRANSCRIPTION_TITLE", @"Accessibility");
    v36 = [v34 preferenceSpecifierNamed:v35 target:self set:"setLiveTranscriptionEnabled:specifier:" get:"liveTranscriptionEnabled:" detail:0 cell:6 edit:0];

    [v36 setProperty:&__kCFBooleanFalse forKey:AXInBuddySetupKey];
    v37 = PSIDKey;
    [v36 setProperty:@"LIVE_TRANSCRIPTION_TITLE" forKey:PSIDKey];
    [v62 addObject:v36];
    v38 = v12;
    liveTranscriptionSpecifier = self->_liveTranscriptionSpecifier;
    self->_liveTranscriptionSpecifier = v36;
    v40 = v36;

    v41 = v38;
    v42 = v38[5];
    v43 = settingsLocString(@"LIVE_TRANSCRIPTION_APPEARANCE", @"Accessibility");
    v44 = [v42 preferenceSpecifierNamed:v43 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v44 setProperty:@"LIVE_TRANSCRIPTION_APPEARANCE" forKey:v37];
    [v62 addObject:v44];
    v45 = [v41[5] groupSpecifierWithName:0];

    v46 = settingsLocString(@"LIVE_CAPTIONS_CALL_TRANSCRIPTION_FOOTER", @"Accessibility");
    v47 = AXUILocalizedStringForKey();
    [v45 setProperty:v47 forKey:PSFooterTextGroupKey];

    [v62 addObject:v45];
    v48 = v41[5];
    v49 = settingsLocString(@"LIVE_CAPTIONS_CALL_TRANSCRIPTION_TITLE", @"Accessibility");
    v50 = [v48 preferenceSpecifierNamed:v49 target:self set:"setLiveTranscriptionInCallEnabled:specifier:" get:"liveTranscriptionInCallEnabled:" detail:0 cell:6 edit:0];

    [v50 setProperty:@"LiveCaptionsTranscribeCalls" forKey:v37];
    [v62 addObject:v50];
    if (AXHasCapability())
    {
      v51 = v41[5];
      v52 = settingsLocString(@"LIVE_CAPTIONS_SUPPORTED_LANGUAGES", @"Accessibility");
      v53 = [v51 groupSpecifierWithName:v52];

      [v62 addObject:v53];
      v54 = v41[5];
      v55 = settingsLocString(@"LIVE_CAPTIONS_CURRENT_LANGUAGE", @"Accessibility");
      v56 = [v54 preferenceSpecifierNamed:v55 target:self set:0 get:"selectedLocaleForSpecifier:" detail:objc_opt_class() cell:2 edit:0];
      currentLocaleSpecifier = self->_currentLocaleSpecifier;
      self->_currentLocaleSpecifier = v56;

      [(PSSpecifier *)self->_currentLocaleSpecifier setProperty:@"LiveCaptionsLanguages" forKey:v37];
      [v62 addObject:self->_currentLocaleSpecifier];
      v50 = v53;
    }

    [(LiveTranscriptionSettingsController *)self setupLongTitleSpecifiers:v62];
    v58 = *&self->super.AXUISettingsListController_opaque[v63];
    *&self->super.AXUISettingsListController_opaque[v63] = v62;

    v3 = *&self->super.AXUISettingsListController_opaque[v63];
  }

  return v3;
}

- (id)liveTranscriptionEnabled:(id)enabled
{
  v3 = _AXSLiveTranscriptionEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setLiveTranscriptionEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  if (bOOLValue)
  {
    v5 = +[AXSettings sharedInstance];
    [v5 clearLiveCaptionsPipState];
  }

  _AXSLiveTranscriptionSetEnabled();
  v8 = AXLiveCaptionsAnalyticsEnabledKey;
  v6 = [NSNumber numberWithBool:bOOLValue];
  v9 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  AnalyticsSendEvent();
}

- (id)liveTranscriptionInCallEnabled:(id)enabled
{
  v3 = _AXSLiveTranscriptionInCallEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setLiveTranscriptionInCallEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];

  __AXSLiveTranscriptionInCallSetEnabled(bOOLValue);
}

- (void)presentAlertWithMessage:(id)message specifier:(id)specifier okBlock:(id)block
{
  specifierCopy = specifier;
  blockCopy = block;
  messageCopy = message;
  v11 = settingsLocString(@"WARNING", @"Accessibility");
  v12 = [UIAlertController alertControllerWithTitle:v11 message:messageCopy preferredStyle:1];

  v13 = settingsLocString(@"OK", @"Accessibility");
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __81__LiveTranscriptionSettingsController_presentAlertWithMessage_specifier_okBlock___block_invoke;
  v21[3] = &unk_2554C0;
  v22 = blockCopy;
  v14 = blockCopy;
  v15 = [UIAlertAction actionWithTitle:v13 style:0 handler:v21];

  v16 = settingsLocString(@"CANCEL", @"Accessibility");
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __81__LiveTranscriptionSettingsController_presentAlertWithMessage_specifier_okBlock___block_invoke_2;
  v19[3] = &unk_256AA0;
  v19[4] = self;
  v20 = specifierCopy;
  v17 = specifierCopy;
  v18 = [UIAlertAction actionWithTitle:v16 style:2 handler:v19];

  [v12 addAction:v15];
  [v12 addAction:v18];
  [(LiveTranscriptionSettingsController *)self presentViewController:v12 animated:1 completion:0];
}

uint64_t __81__LiveTranscriptionSettingsController_presentAlertWithMessage_specifier_okBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)selectedLocaleForSpecifier:(id)specifier
{
  v4 = +[AXSettings sharedInstance];
  liveCaptionsSelectedLocaleIdentifier = [v4 liveCaptionsSelectedLocaleIdentifier];

  if (liveCaptionsSelectedLocaleIdentifier)
  {
    v6 = +[NSLocale currentLocale];
    v7 = [v6 localizedStringForLocaleIdentifier:liveCaptionsSelectedLocaleIdentifier];
LABEL_5:

    goto LABEL_6;
  }

  defaultLocale = [(LiveTranscriptionSettingsController *)self defaultLocale];

  if (defaultLocale)
  {
    v6 = +[NSLocale currentLocale];
    defaultLocale2 = [(LiveTranscriptionSettingsController *)self defaultLocale];
    localeIdentifier = [defaultLocale2 localeIdentifier];
    v7 = [v6 localizedStringForLocaleIdentifier:localeIdentifier];

    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end