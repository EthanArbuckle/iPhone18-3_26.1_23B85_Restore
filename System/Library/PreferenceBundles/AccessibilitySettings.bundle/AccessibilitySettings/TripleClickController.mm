@interface TripleClickController
- (BOOL)_optionIsDisabled:(int)a3;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (TripleClickController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int)_optionFromSpecifierKey:(id)a3;
- (void)_removeOptionWithKey:(id)a3 fromSpecifiers:(id)a4;
- (void)_removeTripleClickOption:(int)a3 fromSpecifiers:(id)a4 options:(id)a5;
- (void)_removeTripleClickOption:(int)a3 ifNecessaryFromSpecifiers:(id)a4 options:(id)a5;
- (void)_removeUnsupportedOptionsFromSpecifiers:(id)a3;
- (void)_reorderSpecifiers;
- (void)_saveTripleClickOptions;
- (void)_updateTripleClickOptions;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tripleClickOptionsUpdated;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TripleClickController

- (TripleClickController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = TripleClickController;
  v8 = [(TripleClickController *)&v21 initWithNibName:v6 bundle:v7];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:v8 selector:"_handleScannerToggled:" name:kAXSAssistiveTouchScannerEnabledNotification object:0];

  objc_initWeak(&location, v8);
  v10 = +[AXSettings sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __48__TripleClickController_initWithNibName_bundle___block_invoke;
  v18[3] = &unk_255388;
  objc_copyWeak(&v19, &location);
  v11 = objc_loadWeakRetained(&location);
  [v10 registerUpdateBlock:v18 forRetrieveSelector:"touchAccommodationsEnabled" withListener:v11];

  objc_destroyWeak(&v19);
  v12 = +[AXSettings sharedInstance];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __48__TripleClickController_initWithNibName_bundle___block_invoke_2;
  v16[3] = &unk_255388;
  objc_copyWeak(&v17, &location);
  v13 = objc_loadWeakRetained(&location);
  [v12 registerUpdateBlock:v16 forRetrieveSelector:"accessibilityReaderEnabled" withListener:v13];

  objc_destroyWeak(&v17);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, _tripleClickOptionsUpdated, kAXSTripleHomeEnabledNotification, 0, 1028);
  [(TripleClickController *)v8 _updateTripleClickOptions];
  objc_destroyWeak(&location);

  return v8;
}

void __48__TripleClickController_initWithNibName_bundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __48__TripleClickController_initWithNibName_bundle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (void)tripleClickOptionsUpdated
{
  [(TripleClickController *)self _updateTripleClickOptions];

  [(TripleClickController *)self reloadSpecifiers];
}

- (void)_updateTripleClickOptions
{
  self->_tripleClickOptions = _AXSTripleClickCopyOptions();

  _objc_release_x1();
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = TripleClickController;
  [(TripleClickController *)&v8 viewDidLoad];
  v3 = [(TripleClickController *)self table];
  [v3 setAllowsSelectionDuringEditing:1];

  v4 = [(TripleClickController *)self table];
  [v4 setEditing:1 animated:0];

  v5 = [(TripleClickController *)self table];
  v6 = objc_opt_class();
  v7 = +[TripleClickCell cellReuseIdentifier];
  [v5 registerClass:v6 forCellReuseIdentifier:v7];
}

- (int)_optionFromSpecifierKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"voiceover"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"whiteonblack"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"classicinvert"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"reducetransparency"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"reducemotion"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"backgroundsounds"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"leftright"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"increasecontrast"])
  {
    v4 = 21;
  }

  else
  {
    if ([v3 isEqualToString:@"grayscale"])
    {
      goto LABEL_18;
    }

    if ([v3 isEqualToString:@"whitepoint"])
    {
      v4 = 14;
      goto LABEL_21;
    }

    if ([v3 isEqualToString:@"colorFilter"])
    {
LABEL_18:
      v4 = 10;
    }

    else if ([v3 isEqualToString:@"ask"])
    {
      v4 = 3;
    }

    else if ([v3 isEqualToString:@"zoom"])
    {
      v4 = 4;
    }

    else if ([v3 isEqualToString:@"hovertext"])
    {
      v4 = 27;
    }

    else if ([v3 isEqualToString:@"hovertexttyping"])
    {
      v4 = 40;
    }

    else if ([v3 isEqualToString:@"assistivetouch"])
    {
      v4 = 6;
    }

    else if ([v3 isEqualToString:@"switchover"])
    {
      v4 = 9;
    }

    else if ([v3 isEqualToString:@"guidedaccess"])
    {
      v4 = 7;
    }

    else if ([v3 isEqualToString:@"loccaptionpanel"])
    {
      v4 = 13;
    }

    else if ([v3 isEqualToString:@"lookingglass"])
    {
      v4 = 16;
    }

    else if ([v3 isEqualToString:@"hearingaids"])
    {
      v4 = 8;
    }

    else if ([v3 isEqualToString:@"touchaccommodations"])
    {
      v4 = 11;
    }

    else if ([v3 isEqualToString:@"magnifier"])
    {
      v4 = 12;
    }

    else if ([v3 isEqualToString:@"detectionmode"])
    {
      v4 = 22;
    }

    else if ([v3 isEqualToString:@"voicecontrol"])
    {
      v4 = 17;
    }

    else
    {
      if ([v3 isEqualToString:@"darkmode"])
      {
        goto LABEL_52;
      }

      if ([v3 isEqualToString:@"fullkeyboardaccess"])
      {
        v4 = 18;
        goto LABEL_21;
      }

      if ([v3 isEqualToString:@"twiceremotescreen"])
      {
        v4 = 28;
        goto LABEL_21;
      }

      if ([v3 isEqualToString:@"livetranscription"])
      {
        v4 = 29;
        goto LABEL_21;
      }

      if ([v3 isEqualToString:@"clarityui"])
      {
        v4 = 30;
        goto LABEL_21;
      }

      if ([v3 isEqualToString:@"eyetracking"])
      {
        v4 = 42;
        goto LABEL_21;
      }

      if ([v3 isEqualToString:@"nearbydevicecontrol"])
      {
        v4 = 31;
        goto LABEL_21;
      }

      if ([v3 isEqualToString:@"pointercontrol"])
      {
LABEL_52:
        v4 = 0;
      }

      else if ([v3 isEqualToString:@"livespeech"])
      {
        v4 = 33;
      }

      else if ([v3 isEqualToString:@"speakscreen"])
      {
        v4 = 34;
      }

      else if ([v3 isEqualToString:@"dimflashinglights"])
      {
        v4 = 35;
      }

      else if ([v3 isEqualToString:@"motioncues"])
      {
        v4 = 36;
      }

      else if ([v3 isEqualToString:@"hapticmusic"])
      {
        v4 = 38;
      }

      else if ([v3 isEqualToString:@"conversationboost"])
      {
        v4 = 39;
      }

      else if ([v3 isEqualToString:@"accessibilityreader"])
      {
        v4 = 44;
      }

      else if ([v3 isEqualToString:@"namerecognition"])
      {
        v4 = 46;
      }

      else
      {
        v4 = 0;
      }
    }
  }

LABEL_21:

  return v4;
}

- (void)_reorderSpecifiers
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 tripleClickOrderedOptions];

  v5 = +[AXSubsystemAXSettings sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v7 = +[AXSubsystemAXSettings identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v21 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  v12 = OBJC_IVAR___PSListController__specifiers;
  v13 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __43__TripleClickController__reorderSpecifiers__block_invoke;
  v17[3] = &unk_2560F0;
  v18 = v4;
  v19 = self;
  v14 = v4;
  v15 = [v13 sortedArrayUsingComparator:v17];
  v16 = *&self->AXUISettingsBaseListController_opaque[v12];
  *&self->AXUISettingsBaseListController_opaque[v12] = v15;
}

uint64_t __43__TripleClickController__reorderSpecifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 propertyForKey:@"tripleClickOption"];

  v8 = [v6 propertyForKey:@"tripleClickOption"];

  if (v7)
  {
    if (v8)
    {
      if (*(a1 + 32))
      {
        v9 = *(a1 + 40);
        v10 = [v5 propertyForKey:@"tripleClickOption"];
        v11 = [v9 _optionFromSpecifierKey:v10];

        v12 = *(a1 + 40);
        v13 = [v6 propertyForKey:@"tripleClickOption"];
        v14 = [v12 _optionFromSpecifierKey:v13];

        v15 = *(a1 + 32);
        v16 = [NSNumber numberWithUnsignedInt:v11];
        if ([v15 indexOfObject:v16] == 0x7FFFFFFFFFFFFFFFLL)
        {
        }

        else
        {
          v18 = *(a1 + 32);
          v19 = [NSNumber numberWithUnsignedInt:v14];
          v20 = [v18 indexOfObject:v19];

          if (v20 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v24 = *(a1 + 32);
            v25 = [NSNumber numberWithUnsignedInt:v11];
            v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v24 indexOfObject:v25]);
            v27 = *(a1 + 32);
            v28 = [NSNumber numberWithUnsignedInt:v14];
            v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v27 indexOfObject:v28]);
            v17 = [v26 compare:v29];

            goto LABEL_12;
          }
        }
      }

      v21 = [v5 name];
      v22 = [v6 name];
      v17 = [v21 localizedCompare:v22];
    }

    else
    {
      v17 = 1;
    }
  }

  else if (v8)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

LABEL_12:

  return v17;
}

- (void)_removeUnsupportedOptionsFromSpecifiers:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __65__TripleClickController__removeUnsupportedOptionsFromSpecifiers___block_invoke;
  v5[3] = &unk_256118;
  v5[4] = self;
  v3 = a3;
  v4 = [v3 indexesOfObjectsPassingTest:v5];
  [v3 removeObjectsAtIndexes:v4];
}

BOOL __65__TripleClickController__removeUnsupportedOptionsFromSpecifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 propertyForKey:@"bypassFiltering"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v3 propertyForKey:@"tripleClickOption"];
    LODWORD(v7) = [v7 _optionFromSpecifierKey:v8];

    v6 = v7 == 0;
  }

  return v6;
}

- (void)_removeTripleClickOption:(int)a3 fromSpecifiers:(id)a4 options:(id)a5
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __73__TripleClickController__removeTripleClickOption_fromSpecifiers_options___block_invoke;
  v10 = &unk_256140;
  v11 = self;
  LODWORD(v12) = a3;
  v5 = a4;
  v6 = [v5 indexesOfObjectsPassingTest:&v7];
  [v5 removeObjectsAtIndexes:{v6, v7, v8, v9, v10, v11, v12}];
}

BOOL __73__TripleClickController__removeTripleClickOption_fromSpecifiers_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 propertyForKey:@"bypassFiltering"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v3 propertyForKey:@"tripleClickOption"];
    LODWORD(v7) = [v7 _optionFromSpecifierKey:v8];

    v6 = v7 == *(a1 + 40);
  }

  return v6;
}

- (void)_removeTripleClickOption:(int)a3 ifNecessaryFromSpecifiers:(id)a4 options:(id)a5
{
  v6 = *&a3;
  v9 = a4;
  v8 = a5;
  if (!_AXSTripleClickContainsOption())
  {
    [(TripleClickController *)self _removeTripleClickOption:v6 fromSpecifiers:v9 options:v8];
  }
}

- (void)_removeOptionWithKey:(id)a3 fromSpecifiers:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __61__TripleClickController__removeOptionWithKey_fromSpecifiers___block_invoke;
  v8[3] = &unk_256168;
  v9 = a3;
  v5 = v9;
  v6 = a4;
  v7 = [v6 indexesOfObjectsPassingTest:v8];
  [v6 removeObjectsAtIndexes:v7];
}

id __61__TripleClickController__removeOptionWithKey_fromSpecifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 properties];
  v4 = [v3 objectForKey:PSKeyNameKey];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v71 = OBJC_IVAR___PSListController__specifiers;
    v4 = _AXSTripleClickCopyOptions();
    v5 = [(TripleClickController *)self loadSpecifiersFromPlistName:@"TripleClickSettings" target:self];
    v6 = [v5 mutableCopy];

    v7 = settingsLocString(@"TRIPLE_CLICK_MAGNIFIER_LONG", @"TripleClickSettings");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v9 = objc_opt_class();
    v10 = PSCellClassKey;
    [v8 setProperty:v9 forKey:PSCellClassKey];
    [v8 setProperty:@"magnifier" forKey:@"tripleClickOption"];
    [v8 setProperty:@"TripleClickMagnifier" forKey:PSIDKey];
    v74 = PSKeyNameKey;
    [v8 setProperty:@"TRIPLE_CLICK_MAGNIFIER" forKey:?];
    v69 = v8;
    [v6 addObject:v8];
    v11 = AXUIAssistiveTouchStringForName();
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setProperty:objc_opt_class() forKey:v10];
    [v12 setProperty:@"detectionmode" forKey:@"tripleClickOption"];
    v68 = v12;
    [v6 addObject:v12];
    if (AXDeviceSupportsWatchRemoteScreen())
    {
      v13 = AXUIAssistiveTouchStringForName();
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v14 setProperty:objc_opt_class() forKey:v10];
      [v14 setProperty:@"twiceremotescreen" forKey:@"tripleClickOption"];
      [v6 addObject:v14];
    }

    if (AXHasCapability())
    {
      v15 = settingsLocString(@"TRIPLE_CLICK_LIVE_TRANSCRIPTION_LONG", @"TripleClickSettings");
      v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v16 setProperty:objc_opt_class() forKey:v10];
      [v16 setProperty:@"livetranscription" forKey:@"tripleClickOption"];
      [v6 addObject:v16];
    }

    if (AXHasCapability())
    {
      v17 = settingsLocString(@"TRIPLE_CLICK_ON_DEVICE_EYE_TRACKING_LONG", @"TripleClickSettings");
      v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v18 setProperty:objc_opt_class() forKey:v10];
      [v18 setProperty:@"eyetracking" forKey:@"tripleClickOption"];
      [v6 addObject:v18];
    }

    if (AXDeviceSupportsLiveSpeech())
    {
      v19 = settingsLocString(@"TRIPLE_CLICK_LIVE_SPEECH_LONG", @"TripleClickSettings");
      v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v20 setProperty:objc_opt_class() forKey:v10];
      [v20 setProperty:@"livespeech" forKey:@"tripleClickOption"];
      [v6 addObject:v20];
    }

    if (AXHasCapability() && _AXSClarityUIEnabled())
    {
      v21 = settingsLocString(@"TRIPLE_CLICK_CLARITY_UI_LONG", @"TripleClickSettings");
      v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v22 setProperty:objc_opt_class() forKey:v10];
      [v22 setProperty:@"clarityui" forKey:@"tripleClickOption"];
      [v6 addObject:v22];
    }

    v23 = paCurrentBluetoothDeviceSupportingTransparencyAccommodations();
    if (paCurrentRouteSupportsTransparencyAccommodations() && paBluetoothDeviceSupportsSSL())
    {
      v24 = settingsLocString(@"TRIPLE_CLICK_CONVERSATION_BOOST_LONG", @"TripleClickSettings");
      v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v25 setProperty:objc_opt_class() forKey:v10];
      [v25 setProperty:@"conversationboost" forKey:@"tripleClickOption"];
      [v6 addObject:v25];
    }

    v67 = v23;
    if (AXDeviceSupportsNameRecognition())
    {
      v26 = settingsLocString(@"TRIPLE_CLICK_NAME_RECOGNITION_LONG", @"TripleClickSettings");
      v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v27 setProperty:objc_opt_class() forKey:v10];
      [v27 setProperty:@"namerecognition" forKey:@"tripleClickOption"];
      [v6 addObject:v27];
    }

    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v28 = _AXSTripleClickCopyAllComputedOptions();
    v29 = [v28 countByEnumeratingWithState:&v79 objects:v84 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v80;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v80 != v31)
          {
            objc_enumerationMutation(v28);
          }

          -[TripleClickController _removeTripleClickOption:ifNecessaryFromSpecifiers:options:](self, "_removeTripleClickOption:ifNecessaryFromSpecifiers:options:", [*(*(&v79 + 1) + 8 * i) intValue], v6, v4);
        }

        v30 = [v28 countByEnumeratingWithState:&v79 objects:v84 count:16];
      }

      while (v30);
    }

    [(TripleClickController *)self _removeTripleClickOption:13 ifNecessaryFromSpecifiers:v6 options:v4];
    v33 = +[AXSettings sharedInstance];
    v34 = [v33 touchAccommodationsAreConfigured];

    if ((v34 & 1) == 0)
    {
      [(TripleClickController *)self _removeTripleClickOption:11 ifNecessaryFromSpecifiers:v6 options:v4];
    }

    if ((AXHACHearingAidCapabilities() & 0x10) == 0 || (+[HUHearingAidSettings sharedInstance](HUHearingAidSettings, "sharedInstance"), v35 = objc_claimAutoreleasedReturnValue(), [v35 pairedHearingAids], v36 = objc_claimAutoreleasedReturnValue(), v36, v35, !v36))
    {
      [(TripleClickController *)self _removeTripleClickOption:8 fromSpecifiers:v6 options:v4];
    }

    v37 = +[AXSettings sharedInstance];
    v38 = [v37 voiceOverActivationWorkaround];

    if (v38 == &dword_0 + 3)
    {
      [(TripleClickController *)self _removeTripleClickOption:1 fromSpecifiers:v6 options:v4];
    }

    if ((AXIsLookingGlassAvailable() & 1) == 0)
    {
      [(TripleClickController *)self _removeTripleClickOption:16 fromSpecifiers:v6 options:v4];
    }

    if ((AXDeviceSupportsHoverText() & 1) == 0)
    {
      [(TripleClickController *)self _removeTripleClickOption:27 fromSpecifiers:v6 options:v4];
    }

    if ((AXDeviceSupportsHoverTextTyping() & 1) == 0)
    {
      [(TripleClickController *)self _removeTripleClickOption:40 fromSpecifiers:v6 options:v4];
    }

    if ((AXRuntimeCheck_SupportsNearbyDeviceControl() & 1) == 0)
    {
      [(TripleClickController *)self _removeTripleClickOption:31 fromSpecifiers:v6 options:v4];
    }

    if ((AXDeviceSupportsPhotosensitiveMitigation() & 1) == 0)
    {
      [(TripleClickController *)self _removeTripleClickOption:35 fromSpecifiers:v6 options:v4];
    }

    if ((AXDeviceSupportsMotionCues() & 1) == 0)
    {
      [(TripleClickController *)self _removeTripleClickOption:36 fromSpecifiers:v6 options:v4];
    }

    if ((AXDeviceSupportsHapticMusic() & 1) == 0)
    {
      [(TripleClickController *)self _removeTripleClickOption:38 fromSpecifiers:v6 options:v4];
    }

    if (!AXDeviceSupportsAccessibilityReader() || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 accessibilityReaderEnabled], v39, (v40 & 1) == 0))
    {
      [(TripleClickController *)self _removeTripleClickOption:44 fromSpecifiers:v6 options:v4];
    }

    v66 = v28;
    if ((AXDeviceSupportsNameRecognition() & 1) == 0)
    {
      [(TripleClickController *)self _removeTripleClickOption:46 fromSpecifiers:v6 options:v4];
    }

    v70 = v4;
    [(TripleClickController *)self _removeOptionWithKey:@"TRIPLE_CLICK_POINTER_CONTROL" fromSpecifiers:v6];
    v41 = +[AXBackBoardServer server];
    v42 = [v41 supportsAccessibilityDisplayFilters];

    if (v42)
    {
      v43 = @"TRIPLE_CLICK_GRAYSCALE";
    }

    else
    {
      v43 = @"TRIPLE_CLICK_COLOR_FILTER";
    }

    [(TripleClickController *)self _removeOptionWithKey:v43 fromSpecifiers:v6];
    [(TripleClickController *)self _removeUnsupportedOptionsFromSpecifiers:v6];
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v6;
    v44 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
    v45 = v74;
    if (v44)
    {
      v46 = v44;
      v47 = *v76;
      v72 = PSFooterTextGroupKey;
      v48 = PSTitleKey;
      do
      {
        for (j = 0; j != v46; j = j + 1)
        {
          if (*v76 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v50 = *(*(&v75 + 1) + 8 * j);
          v51 = [v50 propertyForKey:v45];
          v52 = [v51 isEqualToString:@"Header"];

          if (v52)
          {
            v53 = AXLocStringKeyForHomeButtonAndExclusiveModel();
            v54 = settingsLocString(v53, @"TripleClickSettings");
            if (AXDeviceHasTopTouchIDButton())
            {
              v55 = settingsLocStringTopTouchIDButton(@"TRIPLE_CLICK_INTRO_TEXT_IPAD_TOUCHID");

              v54 = v55;
            }

            [v50 setName:v54];
            [v50 setProperty:v54 forKey:v48];

            goto LABEL_63;
          }

          v56 = [v50 propertyForKey:v45];
          v57 = [v56 isEqualToString:@"IntroExplanation"];

          if (v57)
          {
            HasHomeButton = AXDeviceHasHomeButton();
            v59 = @"TRIPLE_CLICK_EXPLANATION_HOME";
            if ((HasHomeButton & 1) == 0)
            {
              if (AXDeviceHasSideButton())
              {
                v59 = @"TRIPLE_CLICK_EXPLANATION_SIDE";
              }

              else
              {
                v59 = @"TRIPLE_CLICK_EXPLANATION_TOP";
              }
            }

            v60 = settingsLocString(v59, @"TripleClickSettings");
            [v50 setProperty:v60 forKey:v72];

            if (AXDeviceHasTopTouchIDButton())
            {
              v53 = settingsLocStringTopTouchIDButton(@"TRIPLE_CLICK_EXPLANATION_TOP_TOUCHID");
              [v50 setProperty:v53 forKey:v72];
LABEL_63:
            }
          }

          v61 = [v50 propertyForKey:@"tripleClickOption"];
          v62 = [(TripleClickController *)self _optionFromSpecifierKey:v61];

          if (v62 && _AXSTripleClickContainsOption())
          {
            [v50 setProperty:&__kCFBooleanTrue forKey:@"AXChecked"];
          }

          v45 = v74;
        }

        v46 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
      }

      while (v46);
    }

    [(TripleClickController *)self setAllSpecifiersUnsearchable:obj];
    v63 = [obj copy];
    v64 = *&self->AXUISettingsBaseListController_opaque[v71];
    *&self->AXUISettingsBaseListController_opaque[v71] = v63;

    [(TripleClickController *)self _reorderSpecifiers];
    v3 = *&self->AXUISettingsBaseListController_opaque[v71];
  }

  return v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v10 = a4;
  v7 = [(TripleClickController *)self specifierForIndexPath:a5];
  v8 = [v7 propertyForKey:@"tripleClickOption"];
  v9 = [(TripleClickController *)self _optionFromSpecifierKey:v8];

  if ([(TripleClickController *)self _optionIsDisabled:v9])
  {
    [v7 setProperty:&__kCFBooleanTrue forKey:@"AXCheckStateCannotChange"];
    [v10 refreshCellContentsWithSpecifier:v7];
  }
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = [v7 section];
  v9 = v7;
  if (v8 < [v6 section])
  {
    v9 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [v6 section]);
  }

  return v9;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v4 = [(TripleClickController *)self specifierForIndexPath:a4];
  [v4 propertyForKey:@"tripleClickOption"];

  return 1;
}

- (void)_saveTripleClickOptions
{
  v37 = objc_alloc_init(NSMutableArray);
  v3 = +[NSMutableArray array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = self;
  obj = [(TripleClickController *)self specifiers];
  v4 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v40 + 1) + 8 * i);
        v9 = [v8 propertyForKey:@"tripleClickOption"];
        v10 = [(TripleClickController *)v39 _optionFromSpecifierKey:v9];
        v11 = AXLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v8 propertyForKey:@"AXChecked"];
          *buf = 138412802;
          v45 = v9;
          v46 = 1024;
          LODWORD(v47[0]) = v10;
          WORD2(v47[0]) = 2112;
          *(v47 + 6) = v12;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Saving TC option: value: %@, newOption:%d checked:%@", buf, 0x1Cu);
        }

        if (v10)
        {
          v13 = [v8 propertyForKey:@"AXChecked"];
          v14 = [v13 BOOLValue];

          if (v14)
          {
            v15 = [NSNumber numberWithInt:v10];
            [(NSArray *)v37 addObject:v15];
          }

          if (v10 == 11)
          {
            v16 = [v8 propertyForKey:@"AXChecked"];
            v17 = [v16 BOOLValue];
            v18 = +[AXSettings sharedInstance];
            [v18 setTouchAccommodationsTripleClickConfirmed:v17];
          }

          v19 = [NSNumber numberWithInt:v10];
          [v3 addObject:v19];
        }

        else
        {
          v20 = [NSNumber numberWithInt:v10];
          [v3 addObject:v20];

          v21 = [v8 propertyForKey:@"AXChecked"];
          v22 = [v21 BOOLValue];

          if (!v22)
          {
            goto LABEL_18;
          }

          v19 = AXLogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v23 = [NSNumber numberWithUnsignedInt:0];
            v24 = [v8 name];
            *buf = 138412546;
            v45 = v23;
            v46 = 2112;
            v47[0] = v24;
            _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Triple Click Options in wrong state option: %@, name: %@", buf, 0x16u);
          }
        }

LABEL_18:
      }

      v5 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v5);
  }

  v25 = +[AXSubsystemAXSettings sharedInstance];
  v26 = [v25 ignoreLogging];

  if ((v26 & 1) == 0)
  {
    v27 = +[AXSubsystemAXSettings identifier];
    v28 = AXLoggerForFacility();

    v29 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = AXColorizeFormatLog();
      v35 = v3;
      v36 = v37;
      v31 = _AXStringForArgs();
      if (os_log_type_enabled(v28, v29))
      {
        *buf = 138543362;
        v45 = v31;
        _os_log_impl(&dword_0, v28, v29, "%{public}@", buf, 0xCu);
      }
    }
  }

  v32 = [AXSettings sharedInstance:v35];
  [v32 setTripleClickOrderedOptions:v3];

  tripleClickOptions = v39->_tripleClickOptions;
  v39->_tripleClickOptions = v37;
  v34 = v37;

  _AXSSetTripleClickOptions();
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v12 = [(TripleClickController *)self specifierForIndexPath:v8];
  v9 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] mutableCopy];
  v10 = [(TripleClickController *)self indexForIndexPath:v8];

  [v9 removeObjectAtIndex:v10];
  v11 = [(TripleClickController *)self indexForIndexPath:v7];

  [v9 insertObject:v12 atIndex:v11];
  [(TripleClickController *)self setSpecifiers:v9];
  [(TripleClickController *)self _saveTripleClickOptions];
}

- (void)viewWillAppear:(BOOL)a3
{
  [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] setDelegate:self];
  v4.receiver = self;
  v4.super_class = TripleClickController;
  [(TripleClickController *)&v4 viewWillAppear:1];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = TripleClickController;
  [(TripleClickController *)&v5 dealloc];
}

- (BOOL)_optionIsDisabled:(int)a3
{
  if (_AXSTripleClickIsComputedOption())
  {
    return 1;
  }

  result = 1;
  if (a3 != 44 && a3 != 13)
  {
    return a3 == 9 && _AXSAssistiveTouchScannerEnabled();
  }

  return result;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 cellForRowAtIndexPath:v6];
  v8 = [v7 specifier];
  v9 = [v8 propertyForKey:@"tripleClickOption"];

  if ([(TripleClickController *)self _optionIsDisabled:[(TripleClickController *)self _optionFromSpecifierKey:v9]])
  {
    v10 = 0;
  }

  else
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
    v10 = v6;
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v33.receiver = self;
  v33.super_class = TripleClickController;
  v6 = a4;
  v7 = a3;
  [(TripleClickController *)&v33 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [v7 cellForRowAtIndexPath:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 specifier];
    v10 = [v9 propertyForKey:@"AXChecked"];
    v11 = [v10 BOOLValue];
    v12 = v11;
    v13 = v11 ^ 1;

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __59__TripleClickController_tableView_didSelectRowAtIndexPath___block_invoke;
    v29[3] = &unk_256190;
    v14 = v9;
    v32 = v13;
    v30 = v14;
    v31 = self;
    v15 = objc_retainBlock(v29);
    v16 = v15;
    if (v12)
    {
      (v15[2])(v15);
    }

    else
    {
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = __59__TripleClickController_tableView_didSelectRowAtIndexPath___block_invoke_2;
      v27 = &unk_255510;
      v28 = v15;
      [(TripleClickController *)self accessibilityPerformTripleClickAddingBlockConfirmingSOSConflicts:&v24 cancellationBlock:0];
    }

    v17 = [v8 specifier];
    v18 = [v17 propertyForKey:@"coreAnalyticsEvent"];

    v19 = [v8 specifier];
    v20 = [v19 propertyForKey:@"tripleClickOption"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = AXLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v37 = v20;
          v38 = 1024;
          v39 = v13;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Configure shortcut '%@', checked %{BOOL}d", buf, 0x12u);
        }

        v34[0] = @"option";
        v34[1] = @"enable";
        v35[0] = v20;
        v22 = [NSNumber numberWithBool:v13];
        v35[1] = v22;
        v23 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
        AnalyticsSendEvent();
      }
    }
  }
}

id __59__TripleClickController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithBool:*(a1 + 48)];
  [v2 setProperty:v3 forKey:@"AXChecked"];

  [*(a1 + 40) _saveTripleClickOptions];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v4 reloadSpecifier:v5];
}

@end