@interface VoiceOverAudioController
- (BOOL)_channelCanBeToggled:(id)toggled;
- (id)_currentRouteForOutput;
- (id)_interestingOutputDevices;
- (id)_selectedAudioDuckingMode:(id)mode;
- (id)audioDuckingEnabled:(id)enabled;
- (id)routeToHDMI:(id)i;
- (id)routeToSpeakerForPhoneCalls:(id)calls;
- (id)siriSounds:(id)sounds;
- (id)speakOnCalls:(id)calls;
- (id)specifiers;
- (void)_handleOutputDeviceList;
- (void)audioRouteDidChange:(id)change;
- (void)dealloc;
- (void)setAudioDuckingEnabled:(id)enabled specifier:(id)specifier;
- (void)setPlaySiriSounds:(id)sounds specifier:(id)specifier;
- (void)setRouteToHDMI:(id)i specifier:(id)specifier;
- (void)setRouteToSpeakerForPhoneCalls:(id)calls specifier:(id)specifier;
- (void)setSpeakOnCalls:(id)calls specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverAudioController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = VoiceOverAudioController;
  [(VoiceOverAudioController *)&v12 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[AVAudioSession sharedInstance];
  [v3 addObserver:self selector:"audioRouteDidChange:" name:AVAudioSessionRouteChangeNotification object:v4];

  objc_initWeak(&location, self);
  v5 = +[AXSettings sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __39__VoiceOverAudioController_viewDidLoad__block_invoke;
  v9[3] = &unk_255388;
  objc_copyWeak(&v10, &location);
  [v5 registerUpdateBlock:v9 forRetrieveSelector:"voiceOverSoundEffectsEnabled" withListener:self];

  objc_destroyWeak(&v10);
  v6 = +[AXSettings sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __39__VoiceOverAudioController_viewDidLoad__block_invoke_3;
  v7[3] = &unk_255388;
  objc_copyWeak(&v8, &location);
  [v6 registerUpdateBlock:v7 forRetrieveSelector:"voiceOverMediaDuckingMode" withListener:self];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __39__VoiceOverAudioController_viewDidLoad__block_invoke(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __39__VoiceOverAudioController_viewDidLoad__block_invoke_2;
  block[3] = &unk_255388;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void __39__VoiceOverAudioController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained audioRouteDidChange:0];
}

void __39__VoiceOverAudioController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __39__VoiceOverAudioController_viewDidLoad__block_invoke_4;
  block[3] = &unk_255388;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void __39__VoiceOverAudioController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"DUCKING"];
  [v2 reloadSpecifier:v1 animated:1];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v34 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    outputDeviceSpecifiers = self->_outputDeviceSpecifiers;
    self->_outputDeviceSpecifiers = v4;

    v6 = +[NSMutableArray array];
    if (+[AXMHapticComponent isSupported])
    {
      v7 = @"SOUNDS_AND_HAPTICS_TITLE";
    }

    else
    {
      v7 = @"SOUNDS_ONLY_TITLE";
    }

    v8 = settingsLocString(v7, @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v10 = PSSpecifierIsSearchableKey;
    [v9 setProperty:&__kCFBooleanTrue forKey:PSSpecifierIsSearchableKey];
    v11 = PSIDKey;
    [v9 setProperty:@"VOSounds" forKey:PSIDKey];
    [v6 addObject:v9];
    v12 = AXRuntimeCheck_SupportsVoiceoverIndepedentVolume();
    v13 = settingsLocString(@"AUDIO_DUCKING", @"VoiceOverSettings");
    if (v12)
    {
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"_selectedAudioDuckingMode:" detail:objc_opt_class() cell:2 edit:0];

      [v14 setProperty:&__kCFBooleanTrue forKey:v10];
      v15 = @"DUCKING";
    }

    else
    {
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"setAudioDuckingEnabled:specifier:" get:"audioDuckingEnabled:" detail:0 cell:6 edit:0];

      v15 = @"AUDIO_DUCKING";
    }

    [v14 setProperty:v15 forKey:v11];
    [v6 addObject:v14];
    if (MGGetBoolAnswer())
    {
      v16 = +[PSSpecifier emptyGroupSpecifier];
      if (AXDeviceIsPod())
      {
        v17 = @"ROUTE_TO_SPEAKER_FOOTER_IPOD";
      }

      else
      {
        v17 = @"ROUTE_TO_SPEAKER_FOOTER_IPHONE";
      }

      v18 = settingsLocString(v17, @"VoiceOverSettings");
      v19 = PSFooterTextGroupKey;
      [v16 setProperty:v18 forKey:PSFooterTextGroupKey];

      [v6 addObject:v16];
      v20 = settingsLocString(@"ROUTE_TO_SPEAKER", @"VoiceOverSettings");
      v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:"setRouteToSpeakerForPhoneCalls:specifier:" get:"routeToSpeakerForPhoneCalls:" detail:0 cell:6 edit:0];

      [v21 setProperty:@"ROUTE_TO_SPEAKER" forKey:v11];
      [v6 addObject:v21];

      v14 = v21;
    }

    else
    {
      v19 = PSFooterTextGroupKey;
    }

    v22 = +[PSSpecifier emptyGroupSpecifier];
    v23 = settingsLocString(@"ROUTE_TO_HDMI_DETAILS", @"VoiceOverSettings");
    [v22 setProperty:v23 forKey:v19];

    [v6 addObject:v22];
    v24 = settingsLocString(@"ROUTE_TO_HDMI", @"VoiceOverSettings");
    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:"setRouteToHDMI:specifier:" get:"routeToHDMI:" detail:0 cell:6 edit:0];

    [v25 setProperty:@"ROUTE_TO_HDMI" forKey:v11];
    [v6 addObject:v25];
    v26 = +[PSSpecifier emptyGroupSpecifier];

    v27 = settingsLocString(@"ALWAYS_PLAY_SIRI_SOUNDS_FOOTER", @"VoiceOverSettings");
    [v26 setProperty:v27 forKey:v19];

    [v6 addObject:v26];
    v28 = settingsLocString(@"ALWAYS_PLAY_SIRI_SOUNDS", @"VoiceOverSettings");
    v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:"setPlaySiriSounds:specifier:" get:"siriSounds:" detail:0 cell:6 edit:0];

    [v29 setProperty:@"ALWAYS_PLAY_SIRI_SOUNDS" forKey:v11];
    [v6 addObject:v29];
    v30 = +[PSSpecifier emptyGroupSpecifier];

    [v30 setProperty:@"DEVICES" forKey:v11];
    [v6 addObject:v30];
    v31 = [v6 copy];
    v32 = *&self->AXUISettingsBaseListController_opaque[v34];
    *&self->AXUISettingsBaseListController_opaque[v34] = v31;

    v3 = *&self->AXUISettingsBaseListController_opaque[v34];
  }

  return v3;
}

- (id)siriSounds:(id)sounds
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverUseSiriSounds]);

  return v4;
}

- (void)setPlaySiriSounds:(id)sounds specifier:(id)specifier
{
  bOOLValue = [sounds BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverUseSiriSounds:bOOLValue];
}

- (id)_selectedAudioDuckingMode:(id)mode
{
  v3 = +[AXSettings sharedInstance];
  v4 = AXSettingsNameForAudioDuckingMode([v3 voiceOverMediaDuckingMode]);

  return v4;
}

- (id)speakOnCalls:(id)calls
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverSpeaksOverTelephoneCalls]);

  return v4;
}

- (void)setSpeakOnCalls:(id)calls specifier:(id)specifier
{
  bOOLValue = [calls BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverSpeaksOverTelephoneCalls:bOOLValue];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VoiceOverAudioController;
  [(VoiceOverAudioController *)&v4 viewWillAppear:appear];
  [(VoiceOverAudioController *)self _handleOutputDeviceList];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VoiceOverAudioController;
  [(VoiceOverAudioController *)&v4 dealloc];
}

- (void)audioRouteDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
  intValue = [v5 intValue];

  if (intValue == 3)
  {
    v7 = AXLogAudioRouting();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = changeCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "not processng audio route change for category change: %@", buf, 0xCu);
    }
  }

  else
  {
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

- (void)_handleOutputDeviceList
{
  selfCopy = self;
  [(VoiceOverAudioController *)self beginUpdates];
  _interestingOutputDevices = [(VoiceOverAudioController *)selfCopy _interestingOutputDevices];
  if ([_interestingOutputDevices count])
  {
    v4 = settingsLocString(@"SPEECH_CHANNELS", @"VoiceOverSettings");
    firstObject = [_interestingOutputDevices firstObject];
    [firstObject portName];
    v6 = v55 = selfCopy;
    v7 = [NSString stringWithFormat:v4, v6];

    v8 = [v55 specifierForID:@"DEVICES"];
    [v8 setName:v7];

    v9 = [v55 specifierForID:@"DEVICES"];
    [v55 reloadSpecifier:v9 animated:1];

    if ([v55[18] count])
    {
      [v55 removeContiguousSpecifiers:v55[18] animated:1];
    }

    v10 = +[AXAudioHardwareManager sharedManager];
    _currentRouteForOutput = [v55 _currentRouteForOutput];
    v51 = [v10 savedChannelsForOutput:_currentRouteForOutput forSource:1];

    v12 = +[AXAudioHardwareManager sharedManager];
    _currentRouteForOutput2 = [v55 _currentRouteForOutput];
    v50 = [v12 savedChannelsForOutput:_currentRouteForOutput2 forSource:2];

    [v55[18] removeAllObjects];
    v14 = +[NSMutableArray array];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v44 = _interestingOutputDevices;
    obj = _interestingOutputDevices;
    v47 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v47)
    {
      v46 = *v66;
      v49 = v14;
      do
      {
        v15 = 0;
        do
        {
          if (*v66 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v48 = v15;
          v58 = *(*(&v65 + 1) + 8 * v15);
          v16 = [AXAudioHardwareManager channelsForPort:?];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v54 = v16;
          v53 = [v16 countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (v53)
          {
            v60 = 0;
            v52 = *v62;
            do
            {
              v17 = 0;
              do
              {
                if (*v62 != v52)
                {
                  objc_enumerationMutation(v54);
                }

                v56 = v17;
                v18 = *(*(&v61 + 1) + 8 * v17);
                v19 = [v51 containsObject:v18];
                v20 = v55;
                if (!v51)
                {
                  if ([v54 count])
                  {
                    v19 = v60 < 2;
                  }

                  else
                  {
                    v19 = v19;
                  }
                }

                [v18 channelLabel];
                channelName = [v18 channelName];
                v59 = AXAudioHDMIChannelLabelDescription();
                if ([v59 length])
                {
                  v22 = channelName;
                  portType = [v58 portType];
                  v24 = [portType isEqualToString:AVAudioSessionPortHDMI];

                  v25 = AXValidationManager_ptr;
                  if (v24)
                  {
                    channelName = [v22 stringByAppendingFormat:@" (%@)", v59];

                    v20 = v55;
                  }

                  else
                  {
                    v20 = v55;
                    channelName = v22;
                  }
                }

                else
                {
                  v25 = AXValidationManager_ptr;
                }

                v57 = channelName;
                v26 = [PSSpecifier preferenceSpecifierNamed:channelName target:v20 set:0 get:0 detail:0 cell:3 edit:0];
                v27 = [v25[463] numberWithBool:v19];
                [v26 setProperty:v27 forKey:@"IsSelected"];

                [v26 setProperty:v18 forKey:@"Channel"];
                [v26 setProperty:v58 forKey:@"Port"];
                [v26 setProperty:@"Speech" forKey:@"Type"];
                [v20[18] addObject:v26];
                v28 = [v50 containsObject:v18];
                if (!v50)
                {
                  if ([v54 count])
                  {
                    v28 = v60 < 2;
                  }

                  else
                  {
                    v28 = v28;
                  }
                }

                v29 = [PSSpecifier preferenceSpecifierNamed:v57 target:v20 set:0 get:0 detail:0 cell:3 edit:0];
                v30 = [NSNumber numberWithBool:v28];
                [v29 setProperty:v30 forKey:@"IsSelected"];

                [v29 setProperty:v18 forKey:@"Channel"];
                [v29 setProperty:v58 forKey:@"Port"];
                [v29 setProperty:@"Sound" forKey:@"Type"];
                v14 = v49;
                [v49 addObject:v29];
                ++v60;

                v17 = v56 + 1;
              }

              while (v53 != (v56 + 1));
              v53 = [v54 countByEnumeratingWithState:&v61 objects:v69 count:16];
            }

            while (v53);
          }

          v15 = v48 + 1;
        }

        while ((v48 + 1) != v47);
        v47 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v47);
    }

    v31 = +[AXSettings sharedInstance];
    if ([v31 voiceOverSoundEffectsEnabled])
    {
      v32 = [v14 count];

      v33 = v7;
      _interestingOutputDevices = v44;
      selfCopy = v55;
      if (!v32)
      {
LABEL_38:
        outputDeviceSpecifiers = selfCopy->_outputDeviceSpecifiers;
        v41 = [(VoiceOverAudioController *)selfCopy specifierForID:@"DEVICES"];
        [(VoiceOverAudioController *)selfCopy insertContiguousSpecifiers:outputDeviceSpecifiers afterSpecifier:v41 animated:1];

        goto LABEL_39;
      }

      v34 = settingsLocString(@"SOUND_CHANNELS", @"VoiceOverSettings");
      firstObject2 = [obj firstObject];
      portName = [firstObject2 portName];
      v37 = [NSString stringWithFormat:v34, portName];
      v31 = [PSSpecifier groupSpecifierWithName:v37];

      selfCopy = v55;
      [v31 setProperty:@"SOUND_GROUP" forKey:PSIDKey];
      [v55[18] addObject:v31];
      [v55[18] addObjectsFromArray:v14];
    }

    else
    {
      v33 = v7;
      _interestingOutputDevices = v44;
      selfCopy = v55;
    }

    goto LABEL_38;
  }

  v38 = [(VoiceOverAudioController *)selfCopy specifierForID:@"DEVICES"];
  [v38 setName:0];

  v39 = [(VoiceOverAudioController *)selfCopy specifierForID:@"DEVICES"];
  [(VoiceOverAudioController *)selfCopy reloadSpecifier:v39 animated:1];

  if ([(NSMutableArray *)selfCopy->_outputDeviceSpecifiers count])
  {
    [(VoiceOverAudioController *)selfCopy removeContiguousSpecifiers:selfCopy->_outputDeviceSpecifiers animated:1];
  }

LABEL_39:
  [(VoiceOverAudioController *)selfCopy endUpdates];
  devicesUpdatedBlock = [(VoiceOverAudioController *)selfCopy devicesUpdatedBlock];

  if (devicesUpdatedBlock)
  {
    devicesUpdatedBlock2 = [(VoiceOverAudioController *)selfCopy devicesUpdatedBlock];
    devicesUpdatedBlock2[2]();
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(VoiceOverAudioController *)self specifierForIndexPath:path];
  v8 = [v7 propertyForKey:@"IsSelected"];

  if (v8)
  {
    v9 = [v7 propertyForKey:@"IsSelected"];
    [cellCopy setChecked:{objc_msgSend(v9, "BOOLValue")}];
  }
}

- (BOOL)_channelCanBeToggled:(id)toggled
{
  toggledCopy = toggled;
  v5 = [(VoiceOverAudioController *)self cellForSpecifier:toggledCopy];
  isChecked = [v5 isChecked];
  if ((isChecked & 1) != 0 || ([toggledCopy propertyForKey:@"Type"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"Speech"), v6, (v7 & 1) == 0))
  {
    v24 = v5;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(VoiceOverAudioController *)self specifiers];
    v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [v14 propertyForKey:@"Type"];
          v16 = [toggledCopy propertyForKey:@"Type"];
          v17 = [v15 isEqualToString:v16];

          if (v14 != toggledCopy && v17 != 0)
          {
            v19 = [v14 propertyForKey:@"IsSelected"];
            bOOLValue = [v19 BOOLValue];

            v11 += bOOLValue;
            if (isChecked & bOOLValue)
            {
              v8 = 1;
              goto LABEL_20;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }

    v8 = 0;
LABEL_20:

    if ((isChecked & 1) == 0)
    {
      v21 = [toggledCopy propertyForKey:@"Type"];
      v22 = [v21 isEqualToString:@"Sound"];

      if (v22)
      {
        v8 = v11 < 2;
      }
    }

    v5 = v24;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v43.receiver = self;
  v43.super_class = VoiceOverAudioController;
  [(VoiceOverAudioController *)&v43 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(VoiceOverAudioController *)self specifierForIndexPath:pathCopy];
  v8 = [(VoiceOverAudioController *)self cellForSpecifier:v7];
  v9 = [v7 propertyForKey:@"Port"];

  if (v9 && [(VoiceOverAudioController *)self _channelCanBeToggled:v7])
  {
    v36 = pathCopy;
    v34 = v8;
    [v8 setChecked:{objc_msgSend(v8, "isChecked") ^ 1}];
    v10 = [v7 propertyForKey:@"IsSelected"];
    v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 BOOLValue] ^ 1);
    v35 = v7;
    [v7 setProperty:v11 forKey:@"IsSelected"];

    v38 = +[NSMutableArray array];
    v37 = +[NSMutableArray array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    specifiers = [(VoiceOverAudioController *)self specifiers];
    v13 = [specifiers countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v40;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(specifiers);
          }

          v17 = *(*(&v39 + 1) + 8 * i);
          v18 = [v17 propertyForKey:@"Port"];
          if (v18)
          {
            v19 = v18;
            v20 = [v17 propertyForKey:@"IsSelected"];
            bOOLValue = [v20 BOOLValue];

            if (bOOLValue)
            {
              v22 = [v17 propertyForKey:@"Type"];
              v23 = [v22 isEqualToString:@"Speech"];

              v24 = v38;
              if ((v23 & 1) != 0 || ([v17 propertyForKey:@"Type"], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"Sound"), v25, v24 = v37, v26))
              {
                v27 = [v17 propertyForKey:@"Channel"];
                [v24 addObject:v27];
              }
            }
          }
        }

        v14 = [specifiers countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v14);
    }

    v28 = +[AXAudioHardwareManager sharedManager];
    v29 = +[AVAudioSession sharedInstance];
    currentRoute = [v29 currentRoute];
    [v28 setSavedChannels:v38 forOutput:currentRoute forSource:1];

    v31 = +[AXAudioHardwareManager sharedManager];
    v32 = +[AVAudioSession sharedInstance];
    currentRoute2 = [v32 currentRoute];
    [v31 setSavedChannels:v37 forOutput:currentRoute2 forSource:2];

    v7 = v35;
    pathCopy = v36;
    v8 = v34;
  }
}

- (id)_currentRouteForOutput
{
  testingRoute = [(VoiceOverAudioController *)self testingRoute];

  if (testingRoute)
  {
    testingRoute2 = [(VoiceOverAudioController *)self testingRoute];
  }

  else
  {
    v5 = +[AVAudioSession sharedInstance];
    testingRoute2 = [v5 currentRoute];
  }

  return testingRoute2;
}

- (id)_interestingOutputDevices
{
  testingPorts = [(VoiceOverAudioController *)self testingPorts];

  if (testingPorts)
  {
    testingPorts2 = [(VoiceOverAudioController *)self testingPorts];
  }

  else
  {
    +[AXAudioHardwareManager enableMultiroute];
    v30 = +[AVAudioSession sharedInstance];
    currentRoute = [v30 currentRoute];
    if (_interestingOutputDevices_onceToken != -1)
    {
      [VoiceOverAudioController _interestingOutputDevices];
    }

    testingPorts2 = +[NSMutableArray array];
    v29 = currentRoute;
    outputs = [currentRoute outputs];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = [outputs countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      v9 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
      v10 = &unk_2BA000;
      v31 = *v35;
      do
      {
        v11 = 0;
        v32 = v7;
        do
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(outputs);
          }

          v12 = *(*(&v34 + 1) + 8 * v11);
          sharedInstance = [v9[509] sharedInstance];
          ignoreLogging = [sharedInstance ignoreLogging];

          if ((ignoreLogging & 1) == 0)
          {
            identifier = [v9[509] identifier];
            v16 = AXLoggerForFacility();

            v17 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v16, v17))
            {
              v18 = outputs;
              v19 = AXColorizeFormatLog();
              v20 = v10;
              v21 = v10[130];
              portType = [v12 portType];
              v27 = v12;
              v28 = [v21 containsObject:portType];
              v23 = _AXStringForArgs();

              if (os_log_type_enabled(v16, v17))
              {
                *buf = 138543362;
                v39 = v23;
                _os_log_impl(&dword_0, v16, v17, "%{public}@", buf, 0xCu);
              }

              outputs = v18;
              v9 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
              v10 = v20;
              v8 = v31;
              v7 = v32;
            }
          }

          v24 = v10[130];
          portType2 = [v12 portType];
          LODWORD(v24) = [v24 containsObject:portType2];

          if (v24)
          {
            [testingPorts2 addObject:v12];
          }

          v11 = v11 + 1;
        }

        while (v7 != v11);
        v7 = [outputs countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v7);
    }

    +[AXAudioHardwareManager disableMultiroute];
  }

  return testingPorts2;
}

void __53__VoiceOverAudioController__interestingOutputDevices__block_invoke(id a1)
{
  v1 = [NSSet setWithObjects:AVAudioSessionPortHDMI, AVAudioSessionPortBluetoothHFP, AVAudioSessionPortUSBAudio, AVAudioSessionPortCarAudio, AVAudioSessionPortHeadphones, AVAudioSessionPortBluetoothA2DP, AVAudioSessionPortBluetoothLE, 0];
  v2 = _interestingOutputDevices_InterestingPortTypes;
  _interestingOutputDevices_InterestingPortTypes = v1;

  _objc_release_x1(v1, v2);
}

- (void)setAudioDuckingEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverAudioDuckingEnabled:bOOLValue];
}

- (void)setRouteToSpeakerForPhoneCalls:(id)calls specifier:(id)specifier
{
  bOOLValue = [calls BOOLValue];

  __AXSVoiceOverTouchSetShouldRouteToSpeakerWithProximity(bOOLValue);
}

- (id)routeToSpeakerForPhoneCalls:(id)calls
{
  ShouldRouteToSpeakerWithProximity = _AXSVoiceOverTouchShouldRouteToSpeakerWithProximity();

  return [NSNumber numberWithUnsignedChar:ShouldRouteToSpeakerWithProximity];
}

- (id)audioDuckingEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverAudioDuckingEnabled]);

  return v4;
}

- (void)setRouteToHDMI:(id)i specifier:(id)specifier
{
  bOOLValue = [i BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverAudioFollowsHDMIAudio:bOOLValue];
}

- (id)routeToHDMI:(id)i
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverAudioFollowsHDMIAudio]);

  return v4;
}

@end