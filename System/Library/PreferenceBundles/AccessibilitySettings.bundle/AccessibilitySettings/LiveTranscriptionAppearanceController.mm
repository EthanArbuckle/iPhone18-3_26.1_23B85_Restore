@interface LiveTranscriptionAppearanceController
- (id)_colorFromData:(id)data;
- (id)backgroundColorForSpecifier:(id)specifier;
- (id)boldTextEnabled:(id)enabled;
- (id)largerTextEnabled:(id)enabled;
- (id)specifiers;
- (id)textColorForSpecifier:(id)specifier;
- (int)largerTextPerAppValue;
- (void)_updateSpecifierState:(id)state;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)resetColors:(id)colors;
- (void)setBoldTextEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation LiveTranscriptionAppearanceController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = LiveTranscriptionAppearanceController;
  [(LiveTranscriptionAppearanceController *)&v9 viewDidLoad];
  table = [(LiveTranscriptionAppearanceController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXColorPickerCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];

  table2 = [(LiveTranscriptionAppearanceController *)self table];
  v7 = objc_opt_class();
  v8 = +[LiveCaptionsNubbitOpacitySliderCell cellReuseIdentifier];
  [table2 registerClass:v7 forCellReuseIdentifier:v8];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [objc_allocWithZone(NSMutableArray) init];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];
    objc_storeStrong(&self->_appID, AX_LiveTranscriptionBundleName);
    objc_initWeak(location, self);
    v7 = settingsLocString(@"ENHANCE_TEXT_LEGIBILITY", @"Accessibility");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"boldTextEnabled:" detail:objc_opt_class() cell:2 edit:0];

    v33 = PSIDKey;
    [v8 setProperty:@"ENHANCE_TEXT_LEGIBILITY" forKey:?];
    objc_initWeak(&from, v8);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = __51__LiveTranscriptionAppearanceController_specifiers__block_invoke;
    v41[3] = &unk_257B70;
    objc_copyWeak(&v42, location);
    objc_copyWeak(&v43, &from);
    v9 = objc_retainBlock(v41);
    [v8 setProperty:v9 forKey:@"setValueSelectedBlock"];

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __51__LiveTranscriptionAppearanceController_specifiers__block_invoke_2;
    v39[3] = &unk_255E60;
    objc_copyWeak(&v40, location);
    v10 = objc_retainBlock(v39);
    [v8 setProperty:v10 forKey:@"getValueSelectedBlock"];

    [v5 addObject:v8];
    v11 = settingsLocString(@"TEXT_SIZE", @"Accessibility");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:"largerTextEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v12 setProperty:@"LARGER_TEXT" forKey:v33];
    v13 = settingsLocString(@"TEXT_SIZE", @"Accessibility");
    [v12 setProperty:v13 forKey:PSTitleKey];

    [v12 setProperty:self->_appID forKey:@"BundleIdentifier"];
    objc_storeWeak(&from, v12);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = __51__LiveTranscriptionAppearanceController_specifiers__block_invoke_3;
    v36[3] = &unk_257B70;
    objc_copyWeak(&v37, location);
    objc_copyWeak(&v38, &from);
    v14 = objc_retainBlock(v36);
    [v12 setProperty:v14 forKey:@"setValueSelectedBlock"];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = __51__LiveTranscriptionAppearanceController_specifiers__block_invoke_4;
    v34[3] = &unk_255E60;
    objc_copyWeak(&v35, location);
    v15 = objc_retainBlock(v34);
    [v12 setProperty:v15 forKey:@"getValueSelectedBlock"];

    [v5 addObject:v12];
    v16 = settingsLocString(@"LIVE_TRANSCRIPTION_COLOR_OPTIONS", @"Accessibility");
    v17 = [PSSpecifier groupSpecifierWithName:v16];

    [v5 addObject:v17];
    v18 = settingsLocString(@"LIVE_TRANSCRIPTION_TEXT_COLOR", @"Accessibility");
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:"textColorForSpecifier:" detail:0 cell:-1 edit:0];

    v20 = objc_opt_class();
    v21 = PSCellClassKey;
    [v19 setProperty:v20 forKey:PSCellClassKey];
    [v19 setIdentifier:@"LIVE_TRANSCRIPTION_TEXT_COLOR"];
    v22 = PSEnabledKey;
    [v19 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v5 addObject:v19];
    objc_storeStrong(&self->_textColorSpecifier, v19);
    v23 = settingsLocString(@"LIVE_TRANSCRIPTION_BACKGROUND_COLOR", @"Accessibility");
    v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:0 get:"backgroundColorForSpecifier:" detail:0 cell:-1 edit:0];

    [v24 setProperty:objc_opt_class() forKey:v21];
    [v24 setIdentifier:@"LIVE_TRANSCRIPTION_BACKGROUND_COLOR"];
    [v24 setProperty:&__kCFBooleanTrue forKey:v22];
    [v5 addObject:v24];
    objc_storeStrong(&self->_backgroundColorSpecifier, v24);
    v25 = settingsLocString(@"LIVE_TRANSCRIPTION_RESET_COLORS", @"Accessibility");
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v26 setButtonAction:"resetColors:"];
    [v26 setIdentifier:@"LIVE_TRANSCRIPTION_RESET_COLORS"];
    [v26 setProperty:&__kCFBooleanTrue forKey:v22];
    [v5 addObject:v26];
    v27 = settingsLocString(@"LIVE_CAPTIONS_IDLE_OPACITY_TITLE", @"Accessibility");
    v28 = [PSSpecifier groupSpecifierWithName:v27];

    v29 = settingsLocString(@"LIVE_CAPTIONS_IDLE_OPACITY_FOOTER_TEXT", @"Accessibility");
    [v28 setProperty:v29 forKey:PSFooterTextGroupKey];

    [v5 addObject:v28];
    v30 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:5 edit:0];

    [v30 setProperty:@"IDLE_OPACITY" forKey:v33];
    [v30 setProperty:objc_opt_class() forKey:v21];
    [v5 addObject:v30];
    [(LiveTranscriptionAppearanceController *)self setupLongTitleSpecifiers:v5];
    v31 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v5;

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);

    v4 = *&self->super.AXUISettingsListController_opaque[v3];
  }

  return v4;
}

void __51__LiveTranscriptionAppearanceController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setBoldTextEnabled:v3 specifier:v4];
}

id __51__LiveTranscriptionAppearanceController_specifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained boldTextEnabled:0];

  return v2;
}

void __51__LiveTranscriptionAppearanceController_specifiers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSpecifierState:v2];
}

id __51__LiveTranscriptionAppearanceController_specifiers__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [WeakRetained largerTextPerAppValue]);

  return v2;
}

- (id)boldTextEnabled:(id)enabled
{
  v4 = [NSNumber numberWithInt:_AXSLiveCaptionsBoldTextEnabled()];
  v5 = v4;
  if (enabled)
  {
    v6 = [AXDefaultOnOffViewController stringValueForNumber:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (void)setBoldTextEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  [enabled integerValue];
  _AXSLiveCaptionsSetBoldTextEnabled();
  [(LiveTranscriptionAppearanceController *)self _updateSpecifierState:specifierCopy];

  v7 = +[AXSettings sharedInstance];
  [v7 aggregatePerAppSettingsStatistics];
}

- (id)largerTextEnabled:(id)enabled
{
  if (self->_appID)
  {
    largerTextPerAppValue = [(LiveTranscriptionAppearanceController *)self largerTextPerAppValue];
  }

  else
  {
    largerTextPerAppValue = _AXSLargeTextUsesExtendedRange() != 0;
  }

  v4 = [NSNumber numberWithInt:largerTextPerAppValue];
  v5 = [AXDefaultOnOffViewController stringValueForNumber:v4];

  return v5;
}

- (int)largerTextPerAppValue
{
  v2 = _AXSLiveCaptionsCopyContentSizeCategoryName();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (id)textColorForSpecifier:(id)specifier
{
  v4 = _AXSLiveTranscriptionCopyTextColorData();
  v5 = [(LiveTranscriptionAppearanceController *)self _colorFromData:v4];

  return v5;
}

- (id)backgroundColorForSpecifier:(id)specifier
{
  v4 = _AXSLiveTranscriptionCopyBackgroundColorData();
  v5 = [(LiveTranscriptionAppearanceController *)self _colorFromData:v4];

  return v5;
}

- (void)resetColors:(id)colors
{
  colorsCopy = colors;
  _AXSLiveTranscriptionSetTextColorData();
  _AXSLiveTranscriptionSetBackgroundColorData();
  objc_opt_class();
  v5 = [(LiveTranscriptionAppearanceController *)self cellForSpecifier:self->_textColorSpecifier];
  v6 = __UIAccessibilityCastAsClass();

  [v6 setValue:0];
  objc_opt_class();
  v7 = [(LiveTranscriptionAppearanceController *)self cellForSpecifier:self->_backgroundColorSpecifier];
  v8 = __UIAccessibilityCastAsClass();

  [v8 setValue:0];
}

- (void)_updateSpecifierState:(id)state
{
  stateCopy = state;
  v7 = _AXSLiveCaptionsCopyContentSizeCategoryName();
  v5 = +[AXSettings sharedInstance];
  appID = self->_appID;
  if (v7)
  {
    [v5 addCustomizedAppID:appID];
  }

  else
  {
    [v5 removeCustomizedAppID:appID];
  }

  [(LiveTranscriptionAppearanceController *)self reloadSpecifier:stateCopy];
}

- (id)_colorFromData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v8 = 0;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v8];

    v5 = v8;
    if (v5)
    {
      v6 = AXLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(LiveTranscriptionAppearanceController *)v5 _colorFromData:v6];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = LiveTranscriptionAppearanceController;
  [(LiveTranscriptionAppearanceController *)&v19 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v18.receiver = self;
  v18.super_class = LiveTranscriptionAppearanceController;
  v8 = [(LiveTranscriptionAppearanceController *)&v18 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  identifier = [specifier identifier];
  selectedIdentifier = self->_selectedIdentifier;
  self->_selectedIdentifier = identifier;

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"LIVE_TRANSCRIPTION_TEXT_COLOR"]|| [(NSString *)self->_selectedIdentifier isEqualToString:@"LIVE_TRANSCRIPTION_BACKGROUND_COLOR"])
  {
    v12 = objc_alloc_init(UIColorPickerViewController);
    if ([(NSString *)self->_selectedIdentifier isEqualToString:@"LIVE_TRANSCRIPTION_TEXT_COLOR"])
    {
      v13 = settingsLocString(@"LIVE_TRANSCRIPTION_TEXT_COLOR", @"Accessibility");
      [v12 setTitle:v13];

      v14 = [(LiveTranscriptionAppearanceController *)self textColorForSpecifier:0];
      if (!v14)
      {
        v14 = +[UIColor whiteColor];
      }
    }

    else
    {
      if (![(NSString *)self->_selectedIdentifier isEqualToString:@"LIVE_TRANSCRIPTION_BACKGROUND_COLOR"])
      {
LABEL_10:
        popoverPresentationController = [v12 popoverPresentationController];
        [popoverPresentationController setSourceView:v8];

        [(LiveTranscriptionAppearanceController *)self presentViewController:v12 animated:1 completion:0];
        [v12 setDelegate:self];
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

        goto LABEL_11;
      }

      v15 = settingsLocString(@"LIVE_TRANSCRIPTION_BACKGROUND_COLOR", @"Accessibility");
      [v12 setTitle:v15];

      v14 = [(LiveTranscriptionAppearanceController *)self backgroundColorForSpecifier:0];
      if (!v14)
      {
        v14 = +[UIColor blackColor];
      }
    }

    v16 = v14;
    [v12 setSelectedColor:v14];

    goto LABEL_10;
  }

LABEL_11:
}

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  controllerCopy = controller;
  colorCopy = color;
  v14 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:colorCopy requiringSecureCoding:1 error:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = AXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [LiveTranscriptionAppearanceController colorPickerViewController:v10 didSelectColor:v11 continuously:?];
    }
  }

  if ([(NSString *)self->_selectedIdentifier isEqualToString:@"LIVE_TRANSCRIPTION_TEXT_COLOR"])
  {
    _AXSLiveTranscriptionSetTextColorData();
  }

  else if ([(NSString *)self->_selectedIdentifier isEqualToString:@"LIVE_TRANSCRIPTION_BACKGROUND_COLOR"])
  {
    _AXSLiveTranscriptionSetBackgroundColorData();
  }

  objc_opt_class();
  v12 = [(LiveTranscriptionAppearanceController *)self cellForSpecifierID:self->_selectedIdentifier];
  v13 = __UIAccessibilityCastAsClass();

  [v13 setValue:colorCopy];
}

- (void)_colorFromData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to decode Transcriptions color: %@", &v2, 0xCu);
}

- (void)colorPickerViewController:(uint64_t)a1 didSelectColor:(uint64_t)a2 continuously:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 168);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to encode Transcriptions color for %@. %@", &v4, 0x16u);
}

@end