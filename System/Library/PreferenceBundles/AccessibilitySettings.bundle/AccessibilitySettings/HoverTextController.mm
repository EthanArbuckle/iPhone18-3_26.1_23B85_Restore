@interface HoverTextController
- (BOOL)_isLargeTextTypingController;
- (HoverTextController)init;
- (id)_colorPickerConfigurationForIdentifier:(id)a3;
- (id)_selectedColorForIdentifier:(id)a3;
- (id)hoverTextActivationLock:(id)a3;
- (id)hoverTextActivationModifier:(id)a3;
- (id)hoverTextColorForSpecifier:(id)a3;
- (id)hoverTextContentSizeForSpecifier:(id)a3;
- (id)hoverTextContentType:(id)a3;
- (id)hoverTextDisplayMode:(id)a3;
- (id)hoverTextEnabled:(id)a3;
- (id)hoverTextFont:(id)a3;
- (id)hoverTextScrollSpeed:(id)a3;
- (id)hoverTextTypingDisplayMode:(id)a3;
- (id)hoverTextTypingEnabled;
- (id)hoverTextTypingEnabled:(id)a3;
- (id)hoverTextTypingTextStyle:(id)a3;
- (id)largerTextEnabled:(id)a3;
- (id)specifiers;
- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5;
- (void)resetHoverTypingSettings;
- (void)setHoverTextActivationLock:(id)a3 specifier:(id)a4;
- (void)setHoverTextContentSize:(id)a3 forSpecifier:(id)a4;
- (void)setHoverTextEnabled:(id)a3 specifier:(id)a4;
- (void)setHoverTextTypingEnabled:(id)a3;
- (void)showResetActionSheet;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HoverTextController

- (HoverTextController)init
{
  v28.receiver = self;
  v28.super_class = HoverTextController;
  v2 = [(AccessibilitySettingsBaseController *)&v28 init];
  if (v2)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v29[0] = kAXSHoverTextEnabledNotification;
    v29[1] = kAXSHoverTextFontSizeChangedNotification;
    v29[2] = kAXSHoverTextContentSizeChangedNotification;
    v29[3] = kAXSHoverTextBackgroundOpacityChangedNotification;
    v29[4] = kAXSHoverTextDisplayModeChangedNotification;
    v29[5] = kAXSHoverTextFontNameChangedNotification;
    v29[6] = kAXSHoverTextTextColorDataChangedNotification;
    v29[7] = kAXSHoverTextInsertionPointColorDataChangedNotification;
    v29[8] = kAXSHoverTextBackgroundColorDataChangedNotification;
    v29[9] = kAXSHoverTextBorderColorDataChangedNotification;
    v29[10] = kAXSHoverTextTypingEnabledNotification;
    v29[11] = kAXSHoverTextTypingDisplayModeChangedNotification;
    v29[12] = kAXSHoverTextTypingFontNameChangedNotification;
    v29[13] = kAXSHoverTextTypingTextColorDataChangedNotification;
    v29[14] = kAXSHoverTextTypingInsertionPointColorDataChangedNotification;
    v29[15] = kAXSHoverTextTypingBackgroundColorDataChangedNotification;
    v29[16] = kAXSHoverTextTypingBorderColorDataChangedNotification;
    v3 = [NSArray arrayWithObjects:v29 count:17];
    v4 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v4)
    {
      v5 = *v25;
      do
      {
        v6 = 0;
        do
        {
          if (*v25 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v24 + 1) + 8 * v6);
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadSpecs, v7, 0, 1028);
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v4);
    }

    objc_initWeak(&location, v2);
    v9 = +[AXSettings sharedInstance];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __27__HoverTextController_init__block_invoke;
    v21[3] = &unk_255388;
    objc_copyWeak(&v22, &location);
    [v9 registerUpdateBlock:v21 forRetrieveSelector:"hoverTextActivationLockEnabled" withListener:v2];

    objc_destroyWeak(&v22);
    v10 = +[AXSettings sharedInstance];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __27__HoverTextController_init__block_invoke_2;
    v19[3] = &unk_255388;
    objc_copyWeak(&v20, &location);
    [v10 registerUpdateBlock:v19 forRetrieveSelector:"hoverTextPreferredActivatorKey" withListener:v2];

    objc_destroyWeak(&v20);
    v11 = +[AXSettings sharedInstance];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __27__HoverTextController_init__block_invoke_3;
    v17[3] = &unk_255388;
    objc_copyWeak(&v18, &location);
    [v11 registerUpdateBlock:v17 forRetrieveSelector:"hoverTextScrollingSpeed" withListener:v2];

    objc_destroyWeak(&v18);
    v12 = +[AXSettings sharedInstance];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __27__HoverTextController_init__block_invoke_4;
    v15[3] = &unk_255388;
    objc_copyWeak(&v16, &location);
    [v12 registerUpdateBlock:v15 forRetrieveSelector:"hoverTextContentType" withListener:v2];

    objc_destroyWeak(&v16);
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"_reloadSpecs" name:_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification object:0];

    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__HoverTextController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadSpecs];
}

void __27__HoverTextController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadSpecs];
}

void __27__HoverTextController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadSpecs];
}

void __27__HoverTextController_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadSpecs];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HoverTextController;
  [(HoverTextController *)&v6 viewDidLoad];
  v3 = [(HoverTextController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXColorPickerCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v90 = OBJC_IVAR___PSListController__specifiers;
    val = self;
    v92 = +[NSMutableArray array];
    v91 = +[PSSpecifier emptyGroupSpecifier];
    if ([(HoverTextController *)val _isLargeTextTypingController])
    {
      v4 = settingsLocString(@"HOVERTYPING_TITLE", @"AccessibilityTitles");
      v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:val set:"setHoverTextTypingEnabled:" get:"hoverTextTypingEnabled" detail:0 cell:6 edit:0];

      v6 = PSIDKey;
      [v5 setProperty:@"HoverTextTypingEnabled" forKey:PSIDKey];
      [v92 addObject:v5];
    }

    else
    {
      if (AXDeviceSupportsPencilHover())
      {
        v7 = @"HOVERTEXT_INTRO_PENCIL";
      }

      else
      {
        v7 = @"HOVERTEXT_INTRO";
      }

      v87 = settingsLocString(v7, @"Accessibility");
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v91 setProperty:v9 forKey:PSFooterCellClassGroupKey];

      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 bundlePath];
      [v91 setProperty:v11 forKey:@"bundlePath"];

      [v91 setProperty:@"Accessibility" forKey:@"table"];
      v113[0] = @"contentLabel";
      v113[1] = @"alreadyLocalized";
      v114[0] = v87;
      v114[1] = &__kCFBooleanTrue;
      v12 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:2];
      v115 = v12;
      v13 = [NSArray arrayWithObjects:&v115 count:1];
      v88 = [v13 mutableCopy];

      v14 = AXTeachableFeatureHoverText;
      v89 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureHoverText];
      if ([v89 count])
      {
        v111[0] = @"moreLabel";
        v15 = settingsLocString(@"HoverTextWhatsNewLink", @"Accessibility");
        v112[0] = v15;
        v111[1] = @"additionalTitleLabel";
        v16 = settingsLocString(@"HOVERTEXT_TITLE", @"Accessibility");
        v112[1] = v16;
        v111[2] = @"alreadyLocalized";
        v111[3] = @"symbolName";
        v112[2] = &__kCFBooleanTrue;
        v112[3] = @"character.magnify";
        v17 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:4];
        v86 = [v17 mutableCopy];

        v18 = objc_opt_new();
        v109[0] = @"sectionLabel";
        v19 = [AXTeachableMomentsManager notificationTitleForFeature:v14];
        v109[1] = @"alreadyLocalized";
        v110[0] = v19;
        v110[1] = &__kCFBooleanTrue;
        v20 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:2];
        [v18 addObject:v20];

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v21 = v89;
        v22 = [v21 countByEnumeratingWithState:&v102 objects:v108 count:16];
        if (v22)
        {
          v23 = *v103;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v103 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v102 + 1) + 8 * i);
              v106[0] = @"headerLabel";
              v26 = [v25 itemTitle];
              v107[0] = v26;
              v106[1] = @"contentLabel";
              v27 = [v25 itemDescription];
              v106[2] = @"alreadyLocalized";
              v107[1] = v27;
              v107[2] = &__kCFBooleanTrue;
              v28 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:3];
              [v18 addObject:v28];
            }

            v22 = [v21 countByEnumeratingWithState:&v102 objects:v108 count:16];
          }

          while (v22);
        }

        [v86 setObject:v18 forKey:@"additionalContent"];
        [v88 addObject:v86];
      }

      [v91 setProperty:v88 forKey:@"content"];
      [v92 addObject:v91];
      v29 = settingsLocString(@"HOVERTEXT_TITLE", @"AccessibilityTitles");
      v5 = [PSSpecifier preferenceSpecifierNamed:v29 target:val set:"setHoverTextEnabled:specifier:" get:"hoverTextEnabled:" detail:0 cell:6 edit:0];

      v6 = PSIDKey;
      [v5 setProperty:@"HoverTextEnabled" forKey:PSIDKey];
      [v92 addObject:v5];
    }

    v30 = settingsLocString(@"HOVER_TEXT_TEXT_OPTIONS", @"Accessibility");
    v31 = [PSSpecifier groupSpecifierWithName:v30];

    [v92 addObject:v31];
    v32 = [(HoverTextController *)val _isLargeTextTypingController];
    v33 = settingsLocString(@"AXHoverTextDisplayModeTitle", @"Accessibility");
    v34 = v32 == 0;
    if (v32)
    {
      v35 = @"HoverTextTypingDisplayMode";
    }

    else
    {
      v35 = @"HoverTextDisplayMode";
    }

    v36 = &selRef_hoverTextTypingDisplayMode_;
    if (v34)
    {
      v36 = &selRef_hoverTextDisplayMode_;
    }

    v37 = [PSSpecifier preferenceSpecifierNamed:v33 target:val set:0 get:*v36 detail:objc_opt_class() cell:2 edit:0];

    [v37 setProperty:v35 forKey:v6];
    [v92 addObject:v37];
    if ([(HoverTextController *)val _isLargeTextTypingController])
    {
      v38 = v37;
    }

    else
    {
      v39 = settingsLocString(@"AXHoverTextContentTypeTitle", @"Accessibility");
      v38 = [PSSpecifier preferenceSpecifierNamed:v39 target:val set:0 get:"hoverTextContentType:" detail:objc_opt_class() cell:2 edit:0];

      [v38 setProperty:@"HoverTextContentType" forKey:v6];
      [v92 addObject:v38];
    }

    if ([(HoverTextController *)val _isLargeTextTypingController])
    {
      v40 = v38;
    }

    else
    {
      v41 = settingsLocString(@"AXHoverTextScrollingSpeedTitle", @"Accessibility");
      v40 = [PSSpecifier preferenceSpecifierNamed:v41 target:val set:0 get:"hoverTextScrollSpeed:" detail:objc_opt_class() cell:2 edit:0];

      [v40 setProperty:@"HoverTextScrollSpeed" forKey:v6];
      [v92 addObject:v40];
    }

    v42 = settingsLocString(@"HOVER_TEXT_TEXT_STYLE", @"Accessibility");
    v43 = [PSSpecifier preferenceSpecifierNamed:v42 target:val set:0 get:"hoverTextFont:" detail:objc_opt_class() cell:2 edit:0];

    if ([(HoverTextController *)val _isLargeTextTypingController])
    {
      v44 = @"HoverTypingStyle";
    }

    else
    {
      v44 = @"HoverTextStyle";
    }

    [v43 setProperty:v44 forKey:v6];
    [v92 addObject:v43];
    v45 = settingsLocString(@"HOVER_TEXT_TEXT_SIZE", @"Accessibility");
    v46 = [PSSpecifier preferenceSpecifierNamed:v45 target:val set:0 get:"largerTextEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v46 setProperty:AXUIServerProcessName forKey:@"BundleIdentifier"];
    if ([(HoverTextController *)val _isLargeTextTypingController])
    {
      v47 = @"HOVER_TYPING_TEXT_SIZE_DESCRIPTION";
    }

    else
    {
      v47 = @"HOVER_TEXT_TEXT_SIZE_DESCRIPTION";
    }

    v48 = settingsLocString(v47, @"Accessibility");
    [v46 setProperty:v48 forKey:@"exampleText"];
    v49 = settingsLocString(@"HOVER_TEXT_TEXT_SIZE", @"Accessibility");
    [v46 setProperty:v49 forKey:PSTitleKey];

    objc_initWeak(&location, v46);
    objc_initWeak(&from, val);
    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = __33__HoverTextController_specifiers__block_invoke;
    v97[3] = &unk_259218;
    objc_copyWeak(&v98, &from);
    objc_copyWeak(&v99, &location);
    v50 = objc_retainBlock(v97);
    [v46 setProperty:v50 forKey:@"setSizeCategory"];

    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = __33__HoverTextController_specifiers__block_invoke_2;
    v94[3] = &unk_259240;
    objc_copyWeak(&v95, &from);
    objc_copyWeak(&v96, &location);
    v51 = objc_retainBlock(v94);
    [v46 setProperty:v51 forKey:@"getSizeCategory"];

    [v46 setProperty:@"HoverTextSize" forKey:v6];
    [v92 addObject:v46];
    if ([(HoverTextController *)val _isLargeTextTypingController])
    {
      settingsLocString(@"HOVER_TYPING_DISPLAY_COLOR_OPTIONS", @"Accessibility");
    }

    else
    {
      settingsLocString(@"HOVER_TEXT_COLOR_OPTIONS", @"Accessibility");
    }
    v52 = ;
    v53 = [PSSpecifier groupSpecifierWithName:v52];

    [v92 addObject:v53];
    v54 = settingsLocString(@"HOVER_TEXT_TEXT_COLOR", @"Accessibility");
    v55 = [PSSpecifier preferenceSpecifierNamed:v54 target:val set:0 get:"hoverTextColorForSpecifier:" detail:0 cell:-1 edit:0];

    [v55 setIdentifier:@"HOVER_TEXT_TEXT_COLOR_ID"];
    v56 = objc_opt_class();
    v57 = PSCellClassKey;
    [v55 setProperty:v56 forKey:PSCellClassKey];
    v58 = PSEnabledKey;
    [v55 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v92 addObject:v55];
    if ([(HoverTextController *)val _isLargeTextTypingController])
    {
      v59 = settingsLocString(@"HOVER_TEXT_INSERTION_POINT_COLOR", @"Accessibility");
      v60 = [PSSpecifier preferenceSpecifierNamed:v59 target:val set:0 get:"hoverTextColorForSpecifier:" detail:0 cell:-1 edit:0];

      [v60 setIdentifier:@"HOVER_TEXT_INSERTION_POINT_COLOR_ID"];
      [v60 setProperty:objc_opt_class() forKey:v57];
      [v60 setProperty:&__kCFBooleanTrue forKey:v58];
      [v92 addObject:v60];
    }

    else
    {
      v60 = v55;
    }

    v61 = settingsLocString(@"HOVER_TEXT_BACKGROUND_COLOR", @"Accessibility");
    v62 = [PSSpecifier preferenceSpecifierNamed:v61 target:val set:0 get:"hoverTextColorForSpecifier:" detail:0 cell:-1 edit:0];

    [v62 setIdentifier:@"HOVER_TEXT_BACKGROUND_COLOR_ID"];
    [v62 setProperty:objc_opt_class() forKey:v57];
    [v62 setProperty:&__kCFBooleanTrue forKey:v58];
    [v92 addObject:v62];
    v63 = settingsLocString(@"HOVER_TEXT_BORDER_COLOR", @"Accessibility");
    v64 = [PSSpecifier preferenceSpecifierNamed:v63 target:val set:0 get:"hoverTextColorForSpecifier:" detail:0 cell:-1 edit:0];

    [v64 setIdentifier:@"HOVER_TEXT_BORDER_COLOR_ID"];
    [v64 setProperty:objc_opt_class() forKey:v57];
    [v64 setProperty:&__kCFBooleanTrue forKey:v58];
    [v92 addObject:v64];
    if ([(HoverTextController *)val _isLargeTextTypingController])
    {
      v65 = settingsLocString(@"HOVER_TYPING_COLOR_OPTIONS", @"Accessibility");
      v66 = [PSSpecifier groupSpecifierWithName:v65];

      [v92 addObject:v66];
      v67 = settingsLocString(@"HOVER_TYPING_MISSPELLED_WORD_COLOR", @"Accessibility");
      v68 = [PSSpecifier preferenceSpecifierNamed:v67 target:val set:0 get:"hoverTextColorForSpecifier:" detail:0 cell:-1 edit:0];

      [v68 setProperty:objc_opt_class() forKey:v57];
      [v68 setIdentifier:@"HOVER_TYPING_MISSPELLED_WORD_COLOR_ID"];
      [v68 setProperty:&__kCFBooleanTrue forKey:v58];
      [v92 addObject:v68];
      v69 = settingsLocString(@"HOVER_TYPING_AUTOCORRECTED_WORD_COLOR", @"Accessibility");
      v64 = [PSSpecifier preferenceSpecifierNamed:v69 target:val set:0 get:"hoverTextColorForSpecifier:" detail:0 cell:-1 edit:0];

      [v64 setIdentifier:@"HOVER_TYPING_AUTOCORRECTED_WORD_COLOR_ID"];
      [v64 setProperty:objc_opt_class() forKey:v57];
      [v64 setProperty:&__kCFBooleanTrue forKey:v58];
      [v92 addObject:v64];
    }

    if (AXIsInternalInstall() && [(HoverTextController *)val _isLargeTextTypingController])
    {
      v70 = settingsLocString(@"HOVER_TYPING_INTERNAL_HEADER", @"Accessibility");
      v71 = [PSSpecifier groupSpecifierWithName:v70];

      [v92 addObject:v71];
      v72 = settingsLocString(@"HOVER_TYPING_TEXT_STYLE", @"Accessibility");
      v64 = [PSSpecifier preferenceSpecifierNamed:v72 target:val set:0 get:"hoverTextTypingTextStyle:" detail:objc_opt_class() cell:2 edit:0];

      [v64 setProperty:@"HoverTypingTextStyle" forKey:v6];
      [v92 addObject:v64];
    }

    if ((AXDeviceIsPhone() & 1) == 0 && ![(HoverTextController *)val _isLargeTextTypingController])
    {
      v73 = settingsLocString(@"HOVER_TEXT_CONTROL_OPTIONS", @"Accessibility");
      v74 = [PSSpecifier groupSpecifierWithName:v73];

      v75 = settingsLocString(@"HOVER_TEXT_CONTROL_OPTIONS_FOOTER", @"Accessibility");
      [v74 setProperty:v75 forKey:PSFooterTextGroupKey];

      [v92 addObject:v74];
      v76 = settingsLocString(@"HOVER_TEXT_ACTIVATION_MODIFIER", @"Accessibility");
      v77 = [PSSpecifier preferenceSpecifierNamed:v76 target:val set:0 get:"hoverTextActivationModifier:" detail:objc_opt_class() cell:2 edit:0];

      [v77 setProperty:@"HoverTextActivationModifier" forKey:v6];
      [v92 addObject:v77];
      v78 = settingsLocString(@"HOVER_TEXT_ACTIVATION_LOCK", @"Accessibility");
      v64 = [PSSpecifier preferenceSpecifierNamed:v78 target:val set:"setHoverTextActivationLock:specifier:" get:"hoverTextActivationLock:" detail:0 cell:6 edit:0];

      [v92 addObject:v64];
    }

    if ([(HoverTextController *)val _isLargeTextTypingController])
    {
      v79 = +[PSSpecifier emptyGroupSpecifier];

      [v92 addObject:v79];
      v80 = settingsLocString(@"HOVER_TYPING_RESET_BUTTON_TITLE", @"Accessibility");
      v64 = [PSSpecifier preferenceSpecifierNamed:v80 target:val set:0 get:0 detail:0 cell:13 edit:0];

      [v64 setButtonAction:"showResetActionSheet"];
      [v64 setProperty:@"HOVER_TYPING_RESET_BUTTON" forKey:v6];
      [v92 addObject:v64];
    }

    else if (AXHasCapability())
    {
      v81 = +[PSSpecifier emptyGroupSpecifier];

      v82 = settingsLocString(@"HOVER_TYPING_FOOTER", @"Accessibility");
      [v81 setProperty:v82 forKey:PSFooterTextGroupKey];

      [v92 addObject:v81];
      v83 = settingsLocString(@"HOVER_TYPING", @"Accessibility");
      v64 = [PSSpecifier preferenceSpecifierNamed:v83 target:val set:0 get:"hoverTextTypingEnabled:" detail:objc_opt_class() cell:2 edit:0];

      [v64 setProperty:@"HOVER_TYPING" forKey:v6];
      [v92 addObject:v64];
    }

    v84 = *&val->super.AXUISettingsListController_opaque[v90];
    *&val->super.AXUISettingsListController_opaque[v90] = v92;

    objc_destroyWeak(&v96);
    objc_destroyWeak(&v95);
    objc_destroyWeak(&v99);
    objc_destroyWeak(&v98);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);

    v3 = *&val->super.AXUISettingsListController_opaque[v90];
  }

  return v3;
}

void __33__HoverTextController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setHoverTextContentSize:v3 forSpecifier:v4];
}

id __33__HoverTextController_specifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained hoverTextContentSizeForSpecifier:v3];

  return v4;
}

- (void)showResetActionSheet
{
  v3 = settingsLocString(@"HOVER_TYPING_RESET_ALERT_TITLE", @"Accessibility");
  v4 = settingsLocString(@"HOVER_TYPING_RESET_ALERT_DESCRIPTION", @"Accessibility");
  v5 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:0];

  v6 = settingsLocString(@"HOVER_TYPING_RESET", @"Accessibility");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __43__HoverTextController_showResetActionSheet__block_invoke;
  v10[3] = &unk_2557A8;
  v10[4] = self;
  v7 = [UIAlertAction actionWithTitle:v6 style:2 handler:v10];
  [v5 addAction:v7];

  v8 = settingsLocString(@"HOVER_TYPING_CANCEL", @"Accessibility");
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:&__block_literal_global_73];
  [v5 addAction:v9];

  [(HoverTextController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)setHoverTextEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSHoverTextSetEnabled(v4);
}

- (id)hoverTextEnabled:(id)a3
{
  v3 = _AXSHoverTextEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (id)hoverTextFont:(id)a3
{
  v3 = [(HoverTextController *)self _isLargeTextTypingController];
  v4 = +[AXSettings sharedInstance];
  v5 = v4;
  if (v3)
  {
    [v4 hoverTextTypingFontName];
  }

  else
  {
    [v4 hoverTextFontName];
  }
  v6 = ;

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = settingsLocString(@"DEFAULT", @"Accessibility");
  }

  v8 = v7;

  return v8;
}

- (id)hoverTextColorForSpecifier:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(HoverTextController *)self _selectedColorForIdentifier:v4];

  return v5;
}

- (void)setHoverTextActivationLock:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setHoverTextActivationLockEnabled:v5];
}

- (id)hoverTextActivationLock:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 hoverTextActivationLockEnabled]);

  return v4;
}

- (id)hoverTextActivationModifier:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = hoverTextActivationKeyLocString([v3 hoverTextPreferredActivatorKey]);

  return v4;
}

- (id)hoverTextScrollSpeed:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = hoverTextScrollingSpeedLocString([v3 hoverTextScrollingSpeed]);

  return v4;
}

- (id)hoverTextDisplayMode:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = hoverTextDisplayModeLocString([v3 hoverTextDisplayMode]);

  return v4;
}

- (id)hoverTextContentType:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = hoverTextContentTypeLocString([v3 hoverTextContentType]);

  return v4;
}

- (void)setHoverTextContentSize:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  if ([v5 isEqualToString:UIContentSizeCategoryUnspecified])
  {

    v5 = 0;
  }

  v4 = +[AXSettings sharedInstance];
  [v4 setHoverTextContentSize:v5];
}

- (id)hoverTextContentSizeForSpecifier:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 hoverTextContentSize];

  return v4;
}

- (id)largerTextEnabled:(id)a3
{
  v3 = _AXSHoverTextCopyContentSize();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  v5 = [NSNumber numberWithInt:v4];
  v6 = [AXDefaultOnOffViewController stringValueForNumber:v5];

  return v6;
}

- (void)setHoverTextTypingEnabled:(id)a3
{
  v3 = a3;
  v5 = +[AXSettings sharedInstance];
  v4 = [v3 BOOLValue];

  [v5 setHoverTextTypingEnabled:v4];
}

- (id)hoverTextTypingEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 hoverTextTypingEnabled]);

  return v3;
}

- (id)hoverTextTypingDisplayMode:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = hoverTextDisplayModeLocString([v3 hoverTextTypingDisplayMode]);

  return v4;
}

- (id)hoverTextTypingTextStyle:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 hoverTextTypingTextStyle];
  v5 = [HoverTypingTextStyleViewController visualTitleForEnumValue:v4];

  return v5;
}

- (id)hoverTextTypingEnabled:(id)a3
{
  if (_AXSHoverTextTypingEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (void)resetHoverTypingSettings
{
  v3 = +[AXSettings sharedInstance];
  [v3 setHoverTextTypingFontName:0];

  v4 = +[AXSettings sharedInstance];
  [v4 setHoverTextContentSize:0];

  v5 = +[AXSettings sharedInstance];
  [v5 setHoverTextTypingDisplayMode:2];

  v6 = +[AXSettings sharedInstance];
  [v6 setHoverTextTypingTextColorData:0];

  v7 = +[AXSettings sharedInstance];
  [v7 setHoverTextTypingBackgroundColorData:0];

  v8 = +[AXSettings sharedInstance];
  [v8 setHoverTextTypingBorderColorData:0];

  v9 = +[AXSettings sharedInstance];
  [v9 setHoverTextTypingMisspelledTextColorData:0];

  v10 = +[AXSettings sharedInstance];
  [v10 setHoverTextTypingAutocorrectedTextColorData:0];

  v11 = +[AXSettings sharedInstance];
  [v11 setHoverTextTypingInsertionPointColorData:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSResetHoverTextTypingNotification, 0, 0, 1u);

  [(HoverTextController *)self reloadSpecifiers];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = HoverTextController;
  [(HoverTextController *)&v18 tableView:v6 didSelectRowAtIndexPath:v7];
  v17.receiver = self;
  v17.super_class = HoverTextController;
  v8 = [(HoverTextController *)&v17 tableView:v6 cellForRowAtIndexPath:v7];
  v9 = [v8 specifier];
  v10 = [v9 identifier];
  selectedIdentifier = self->_selectedIdentifier;
  self->_selectedIdentifier = v10;

  if (self->_selectedIdentifier)
  {
    v12 = [(HoverTextController *)self _colorPickerConfigurationForIdentifier:?];
    if (v12)
    {
      v13 = objc_alloc_init(UIColorPickerViewController);
      v14 = [(HoverTextController *)self _selectedColorForIdentifier:self->_selectedIdentifier];
      [v13 setSelectedColor:v14];

      v15 = [v13 popoverPresentationController];
      [v15 setPermittedArrowDirections:12];
      [v15 setSourceRect:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
      v16 = [v8 control];
      [v15 setSourceView:v16];

      [(HoverTextController *)self presentViewController:v13 animated:1 completion:0];
      [v13 setDelegate:self];
      [v6 deselectRowAtIndexPath:v7 animated:1];
    }
  }
}

- (BOOL)_isLargeTextTypingController
{
  v3 = AXHasCapability();
  if (v3)
  {
    v4 = [(HoverTextController *)self specifier];
    v5 = [v4 propertyForKey:PSIDKey];
    v6 = [v5 isEqualToString:@"HOVER_TYPING"];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (id)_colorPickerConfigurationForIdentifier:(id)a3
{
  v4 = objc_alloc_init(_UIColorPickerViewControllerConfiguration);
  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"HOVER_TEXT_TEXT_COLOR_ID"])
  {
    v5 = settingsLocString(@"HOVER_TEXT_TEXT_COLOR", @"Accessibility");
    [v4 setTitle:v5];

    v6 = +[UIColor blackColor];
    v20 = v6;
    v7 = &v20;
LABEL_13:
    v13 = [NSArray arrayWithObjects:v7 count:1];
    [v4 set_suggestedColors:v13];

    goto LABEL_14;
  }

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"HOVER_TEXT_INSERTION_POINT_COLOR_ID"])
  {
    v8 = settingsLocString(@"HOVER_TEXT_INSERTION_POINT_COLOR", @"Accessibility");
    [v4 setTitle:v8];

    v6 = +[UIColor blackColor];
    v19 = v6;
    v7 = &v19;
    goto LABEL_13;
  }

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"HOVER_TEXT_BACKGROUND_COLOR_ID"])
  {
    v9 = settingsLocString(@"HOVER_TEXT_BACKGROUND_COLOR", @"Accessibility");
    [v4 setTitle:v9];

    v6 = +[UIColor blackColor];
    v18 = v6;
    v7 = &v18;
    goto LABEL_13;
  }

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"HOVER_TEXT_BORDER_COLOR_ID"])
  {
    v10 = settingsLocString(@"HOVER_TEXT_BORDER_COLOR", @"Accessibility");
    [v4 setTitle:v10];

    v6 = +[UIColor blackColor];
    v17 = v6;
    v7 = &v17;
    goto LABEL_13;
  }

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"HOVER_TYPING_MISSPELLED_WORD_COLOR_ID"])
  {
    v11 = settingsLocString(@"HOVER_TYPING_MISSPELLED_WORD_COLOR", @"Accessibility");
    [v4 setTitle:v11];

    v6 = +[UIColor blackColor];
    v16 = v6;
    v7 = &v16;
    goto LABEL_13;
  }

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"HOVER_TYPING_AUTOCORRECTED_WORD_COLOR_ID"])
  {
    v12 = settingsLocString(@"HOVER_TYPING_AUTOCORRECTED_WORD_COLOR", @"Accessibility");
    [v4 setTitle:v12];

    v6 = +[UIColor blackColor];
    v15 = v6;
    v7 = &v15;
    goto LABEL_13;
  }

  v4 = 0;
LABEL_14:

  return v4;
}

- (id)_selectedColorForIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"HOVER_TEXT_TEXT_COLOR_ID"])
  {
    v5 = [(HoverTextController *)self _isLargeTextTypingController];
    v6 = +[AXSettings sharedInstance];
    v7 = v6;
    if (v5)
    {
      [v6 hoverTextTypingTextColorData];
    }

    else
    {
      [v6 hoverTextTextColorData];
    }

    v21 = LABEL_21:;
    v13 = v21;

    v14 = +[UIColor whiteColor];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"HOVER_TEXT_INSERTION_POINT_COLOR_ID"])
  {
    v8 = [(HoverTextController *)self _isLargeTextTypingController];
    v9 = +[AXSettings sharedInstance];
    v7 = v9;
    if (v8)
    {
      [v9 hoverTextTypingInsertionPointColorData];
    }

    else
    {
      [v9 hoverTextInsertionPointColorData];
    }

    goto LABEL_21;
  }

  if ([v4 isEqualToString:@"HOVER_TEXT_BACKGROUND_COLOR_ID"])
  {
    v10 = [(HoverTextController *)self _isLargeTextTypingController];
    v11 = +[AXSettings sharedInstance];
    v12 = v11;
    if (v10)
    {
      [v11 hoverTextTypingBackgroundColorData];
    }

    else
    {
      [v11 hoverTextBackgroundColorData];
    }
    v13 = ;

    v14 = +[UIColor blackColor];
  }

  else
  {
    if ([v4 isEqualToString:@"HOVER_TEXT_BORDER_COLOR_ID"])
    {
      v19 = [(HoverTextController *)self _isLargeTextTypingController];
      v20 = +[AXSettings sharedInstance];
      v7 = v20;
      if (v19)
      {
        [v20 hoverTextTypingBorderColorData];
      }

      else
      {
        [v20 hoverTextBorderColorData];
      }

      goto LABEL_21;
    }

    if ([v4 isEqualToString:@"HOVER_TYPING_MISSPELLED_WORD_COLOR_ID"])
    {
      v22 = +[AXSettings sharedInstance];
      v13 = [v22 hoverTextTypingMisspelledTextColorData];

      v14 = +[UIColor redColor];
    }

    else
    {
      if (![v4 isEqualToString:@"HOVER_TYPING_AUTOCORRECTED_WORD_COLOR_ID"])
      {
        v15 = 0;
        goto LABEL_30;
      }

      v23 = +[AXSettings sharedInstance];
      v13 = [v23 hoverTextTypingAutocorrectedTextColorData];

      v14 = +[UIColor blueColor];
    }
  }

LABEL_12:
  v15 = v14;
  if (!v13)
  {
LABEL_30:
    v15 = v15;
    v16 = v15;
    goto LABEL_31;
  }

  v25 = 0;
  v16 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v25];
  v17 = v25;
  if (v17)
  {
    v18 = AXLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(HoverTextController *)v4 _selectedColorForIdentifier:v17, v18];
    }
  }

LABEL_31:

  return v16;
}

- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v23 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v23];
  v10 = v23;
  if (v10)
  {
    v11 = AXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HoverTextController colorPickerViewController:v10 didSelectColor:v11 continuously:?];
    }
  }

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"HOVER_TEXT_TEXT_COLOR_ID"])
  {
    v12 = [(HoverTextController *)self _isLargeTextTypingController];
    v13 = +[AXSettings sharedInstance];
    v14 = v13;
    if (v12)
    {
      [v13 setHoverTextTypingTextColorData:v9];
    }

    else
    {
      [v13 setHoverTextTextColorData:v9];
    }

    goto LABEL_25;
  }

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"HOVER_TEXT_INSERTION_POINT_COLOR_ID"])
  {
    v15 = [(HoverTextController *)self _isLargeTextTypingController];
    v16 = +[AXSettings sharedInstance];
    v14 = v16;
    if (v15)
    {
      [v16 setHoverTextTypingInsertionPointColorData:v9];
    }

    else
    {
      [v16 setHoverTextInsertionPointColorData:v9];
    }

    goto LABEL_25;
  }

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"HOVER_TEXT_BACKGROUND_COLOR_ID"])
  {
    v17 = [(HoverTextController *)self _isLargeTextTypingController];
    v18 = +[AXSettings sharedInstance];
    v14 = v18;
    if (v17)
    {
      [v18 setHoverTextTypingBackgroundColorData:v9];
    }

    else
    {
      [v18 setHoverTextBackgroundColorData:v9];
    }

    goto LABEL_25;
  }

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"HOVER_TEXT_BORDER_COLOR_ID"])
  {
    v19 = [(HoverTextController *)self _isLargeTextTypingController];
    v20 = +[AXSettings sharedInstance];
    v14 = v20;
    if (v19)
    {
      [v20 setHoverTextTypingBorderColorData:v9];
    }

    else
    {
      [v20 setHoverTextBorderColorData:v9];
    }

    goto LABEL_25;
  }

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"HOVER_TYPING_MISSPELLED_WORD_COLOR_ID"])
  {
    v14 = +[AXSettings sharedInstance];
    [v14 setHoverTextTypingMisspelledTextColorData:v9];
LABEL_25:

    goto LABEL_26;
  }

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"HOVER_TYPING_AUTOCORRECTED_WORD_COLOR_ID"])
  {
    v14 = +[AXSettings sharedInstance];
    [v14 setHoverTextTypingAutocorrectedTextColorData:v9];
    goto LABEL_25;
  }

LABEL_26:
  objc_opt_class();
  v21 = [(HoverTextController *)self cellForSpecifierID:self->_selectedIdentifier];
  v22 = __UIAccessibilityCastAsClass();

  [v22 setValue:v8];
}

- (void)_selectedColorForIdentifier:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_0, a2, a3, "Failed to decode HoverText color for %@. %@", *v3, *&v3[8], *&v3[16]);
}

- (void)colorPickerViewController:(uint64_t)a1 didSelectColor:(uint64_t)a2 continuously:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 160);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_0, a2, a3, "Failed to encode HoverText color for %@. %@", *v3, *&v3[8], *&v3[16]);
}

@end