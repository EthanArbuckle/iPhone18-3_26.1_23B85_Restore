@interface VoiceOverAudioController
- (BOOL)_channelCanBeToggled:(id)a3;
- (id)_currentRouteForOutput;
- (id)_interestingOutputDevices;
- (id)_selectedAudioDuckingMode:(id)a3;
- (id)audioDuckingEnabled:(id)a3;
- (id)routeToHDMI:(id)a3;
- (id)routeToSpeakerForPhoneCalls:(id)a3;
- (id)siriSounds:(id)a3;
- (id)speakOnCalls:(id)a3;
- (id)specifiers;
- (void)_handleOutputDeviceList;
- (void)audioRouteDidChange:(id)a3;
- (void)dealloc;
- (void)setAudioDuckingEnabled:(id)a3 specifier:(id)a4;
- (void)setPlaySiriSounds:(id)a3 specifier:(id)a4;
- (void)setRouteToHDMI:(id)a3 specifier:(id)a4;
- (void)setRouteToSpeakerForPhoneCalls:(id)a3 specifier:(id)a4;
- (void)setSpeakOnCalls:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (id)siriSounds:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverUseSiriSounds]);

  return v4;
}

- (void)setPlaySiriSounds:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverUseSiriSounds:v4];
}

- (id)_selectedAudioDuckingMode:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = AXSettingsNameForAudioDuckingMode([v3 voiceOverMediaDuckingMode]);

  return v4;
}

- (id)speakOnCalls:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverSpeaksOverTelephoneCalls]);

  return v4;
}

- (void)setSpeakOnCalls:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverSpeaksOverTelephoneCalls:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VoiceOverAudioController;
  [(VoiceOverAudioController *)&v4 viewWillAppear:a3];
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

- (void)audioRouteDidChange:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
  v6 = [v5 intValue];

  if (v6 == 3)
  {
    v7 = AXLogAudioRouting();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = v3;
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
  v2 = self;
  [(VoiceOverAudioController *)self beginUpdates];
  v3 = [(VoiceOverAudioController *)v2 _interestingOutputDevices];
  if ([v3 count])
  {
    v4 = settingsLocString(@"SPEECH_CHANNELS", @"VoiceOverSettings");
    v5 = [v3 firstObject];
    [v5 portName];
    v6 = v55 = v2;
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
    v11 = [v55 _currentRouteForOutput];
    v51 = [v10 savedChannelsForOutput:v11 forSource:1];

    v12 = +[AXAudioHardwareManager sharedManager];
    v13 = [v55 _currentRouteForOutput];
    v50 = [v12 savedChannelsForOutput:v13 forSource:2];

    [v55[18] removeAllObjects];
    v14 = +[NSMutableArray array];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v44 = v3;
    obj = v3;
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
                v21 = [v18 channelName];
                v59 = AXAudioHDMIChannelLabelDescription();
                if ([v59 length])
                {
                  v22 = v21;
                  v23 = [v58 portType];
                  v24 = [v23 isEqualToString:AVAudioSessionPortHDMI];

                  v25 = AXValidationManager_ptr;
                  if (v24)
                  {
                    v21 = [v22 stringByAppendingFormat:@" (%@)", v59];

                    v20 = v55;
                  }

                  else
                  {
                    v20 = v55;
                    v21 = v22;
                  }
                }

                else
                {
                  v25 = AXValidationManager_ptr;
                }

                v57 = v21;
                v26 = [PSSpecifier preferenceSpecifierNamed:v21 target:v20 set:0 get:0 detail:0 cell:3 edit:0];
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
      v3 = v44;
      v2 = v55;
      if (!v32)
      {
LABEL_38:
        outputDeviceSpecifiers = v2->_outputDeviceSpecifiers;
        v41 = [(VoiceOverAudioController *)v2 specifierForID:@"DEVICES"];
        [(VoiceOverAudioController *)v2 insertContiguousSpecifiers:outputDeviceSpecifiers afterSpecifier:v41 animated:1];

        goto LABEL_39;
      }

      v34 = settingsLocString(@"SOUND_CHANNELS", @"VoiceOverSettings");
      v35 = [obj firstObject];
      v36 = [v35 portName];
      v37 = [NSString stringWithFormat:v34, v36];
      v31 = [PSSpecifier groupSpecifierWithName:v37];

      v2 = v55;
      [v31 setProperty:@"SOUND_GROUP" forKey:PSIDKey];
      [v55[18] addObject:v31];
      [v55[18] addObjectsFromArray:v14];
    }

    else
    {
      v33 = v7;
      v3 = v44;
      v2 = v55;
    }

    goto LABEL_38;
  }

  v38 = [(VoiceOverAudioController *)v2 specifierForID:@"DEVICES"];
  [v38 setName:0];

  v39 = [(VoiceOverAudioController *)v2 specifierForID:@"DEVICES"];
  [(VoiceOverAudioController *)v2 reloadSpecifier:v39 animated:1];

  if ([(NSMutableArray *)v2->_outputDeviceSpecifiers count])
  {
    [(VoiceOverAudioController *)v2 removeContiguousSpecifiers:v2->_outputDeviceSpecifiers animated:1];
  }

LABEL_39:
  [(VoiceOverAudioController *)v2 endUpdates];
  v42 = [(VoiceOverAudioController *)v2 devicesUpdatedBlock];

  if (v42)
  {
    v43 = [(VoiceOverAudioController *)v2 devicesUpdatedBlock];
    v43[2]();
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v10 = a4;
  v7 = [(VoiceOverAudioController *)self specifierForIndexPath:a5];
  v8 = [v7 propertyForKey:@"IsSelected"];

  if (v8)
  {
    v9 = [v7 propertyForKey:@"IsSelected"];
    [v10 setChecked:{objc_msgSend(v9, "BOOLValue")}];
  }
}

- (BOOL)_channelCanBeToggled:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverAudioController *)self cellForSpecifier:v4];
  v25 = [v5 isChecked];
  if ((v25 & 1) != 0 || ([v4 propertyForKey:@"Type"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"Speech"), v6, (v7 & 1) == 0))
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
          v16 = [v4 propertyForKey:@"Type"];
          v17 = [v15 isEqualToString:v16];

          if (v14 != v4 && v17 != 0)
          {
            v19 = [v14 propertyForKey:@"IsSelected"];
            v20 = [v19 BOOLValue];

            v11 += v20;
            if (v25 & v20)
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

    if ((v25 & 1) == 0)
    {
      v21 = [v4 propertyForKey:@"Type"];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v43.receiver = self;
  v43.super_class = VoiceOverAudioController;
  [(VoiceOverAudioController *)&v43 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(VoiceOverAudioController *)self specifierForIndexPath:v6];
  v8 = [(VoiceOverAudioController *)self cellForSpecifier:v7];
  v9 = [v7 propertyForKey:@"Port"];

  if (v9 && [(VoiceOverAudioController *)self _channelCanBeToggled:v7])
  {
    v36 = v6;
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
    v12 = [(VoiceOverAudioController *)self specifiers];
    v13 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v39 + 1) + 8 * i);
          v18 = [v17 propertyForKey:@"Port"];
          if (v18)
          {
            v19 = v18;
            v20 = [v17 propertyForKey:@"IsSelected"];
            v21 = [v20 BOOLValue];

            if (v21)
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

        v14 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v14);
    }

    v28 = +[AXAudioHardwareManager sharedManager];
    v29 = +[AVAudioSession sharedInstance];
    v30 = [v29 currentRoute];
    [v28 setSavedChannels:v38 forOutput:v30 forSource:1];

    v31 = +[AXAudioHardwareManager sharedManager];
    v32 = +[AVAudioSession sharedInstance];
    v33 = [v32 currentRoute];
    [v31 setSavedChannels:v37 forOutput:v33 forSource:2];

    v7 = v35;
    v6 = v36;
    v8 = v34;
  }
}

- (id)_currentRouteForOutput
{
  v3 = [(VoiceOverAudioController *)self testingRoute];

  if (v3)
  {
    v4 = [(VoiceOverAudioController *)self testingRoute];
  }

  else
  {
    v5 = +[AVAudioSession sharedInstance];
    v4 = [v5 currentRoute];
  }

  return v4;
}

- (id)_interestingOutputDevices
{
  v3 = [(VoiceOverAudioController *)self testingPorts];

  if (v3)
  {
    v33 = [(VoiceOverAudioController *)self testingPorts];
  }

  else
  {
    +[AXAudioHardwareManager enableMultiroute];
    v30 = +[AVAudioSession sharedInstance];
    v4 = [v30 currentRoute];
    if (_interestingOutputDevices_onceToken != -1)
    {
      [VoiceOverAudioController _interestingOutputDevices];
    }

    v33 = +[NSMutableArray array];
    v29 = v4;
    v5 = [v4 outputs];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
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
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v34 + 1) + 8 * v11);
          v13 = [v9[509] sharedInstance];
          v14 = [v13 ignoreLogging];

          if ((v14 & 1) == 0)
          {
            v15 = [v9[509] identifier];
            v16 = AXLoggerForFacility();

            v17 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v16, v17))
            {
              v18 = v5;
              v19 = AXColorizeFormatLog();
              v20 = v10;
              v21 = v10[130];
              v22 = [v12 portType];
              v27 = v12;
              v28 = [v21 containsObject:v22];
              v23 = _AXStringForArgs();

              if (os_log_type_enabled(v16, v17))
              {
                *buf = 138543362;
                v39 = v23;
                _os_log_impl(&dword_0, v16, v17, "%{public}@", buf, 0xCu);
              }

              v5 = v18;
              v9 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
              v10 = v20;
              v8 = v31;
              v7 = v32;
            }
          }

          v24 = v10[130];
          v25 = [v12 portType];
          LODWORD(v24) = [v24 containsObject:v25];

          if (v24)
          {
            [v33 addObject:v12];
          }

          v11 = v11 + 1;
        }

        while (v7 != v11);
        v7 = [v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v7);
    }

    +[AXAudioHardwareManager disableMultiroute];
  }

  return v33;
}

void __53__VoiceOverAudioController__interestingOutputDevices__block_invoke(id a1)
{
  v1 = [NSSet setWithObjects:AVAudioSessionPortHDMI, AVAudioSessionPortBluetoothHFP, AVAudioSessionPortUSBAudio, AVAudioSessionPortCarAudio, AVAudioSessionPortHeadphones, AVAudioSessionPortBluetoothA2DP, AVAudioSessionPortBluetoothLE, 0];
  v2 = _interestingOutputDevices_InterestingPortTypes;
  _interestingOutputDevices_InterestingPortTypes = v1;

  _objc_release_x1(v1, v2);
}

- (void)setAudioDuckingEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverAudioDuckingEnabled:v4];
}

- (void)setRouteToSpeakerForPhoneCalls:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSVoiceOverTouchSetShouldRouteToSpeakerWithProximity(v4);
}

- (id)routeToSpeakerForPhoneCalls:(id)a3
{
  ShouldRouteToSpeakerWithProximity = _AXSVoiceOverTouchShouldRouteToSpeakerWithProximity();

  return [NSNumber numberWithUnsignedChar:ShouldRouteToSpeakerWithProximity];
}

- (id)audioDuckingEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverAudioDuckingEnabled]);

  return v4;
}

- (void)setRouteToHDMI:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverAudioFollowsHDMIAudio:v4];
}

- (id)routeToHDMI:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverAudioFollowsHDMIAudio]);

  return v4;
}

@end