@interface VoiceOverSoundsAndHapticsController
- (id)_soundVolumeSpecifiers;
- (id)hapticIntensity:(id)a3;
- (id)hapticsEnabled:(id)a3;
- (id)matchSpeechVolume:(id)a3;
- (id)soundEffectsEnabled:(id)a3;
- (id)soundVolume:(id)a3;
- (id)specifiers;
- (void)_clearSoundVolumeSpecifiers;
- (void)_createSoundVolumeSpecifiers;
- (void)_updateSoundVolumeSpecifiers:(BOOL)a3;
- (void)dealloc;
- (void)dispatcher:(id)a3 handleEvent:(id)a4 soundPack:(id)a5 hapticPack:(id)a6;
- (void)setHapticIntensity:(id)a3 specifier:(id)a4;
- (void)setHapticsEnabled:(id)a3 specifier:(id)a4;
- (void)setMatchSpeechVolume:(id)a3 specifier:(id)a4;
- (void)setSoundEffectsEnabled:(id)a3 specifier:(id)a4;
- (void)setSoundVolume:(id)a3 specifier:(id)a4;
@end

@implementation VoiceOverSoundsAndHapticsController

- (void)dealloc
{
  v3 = +[VOSOutputEventDispatcher sharedInstance];
  [v3 removeEventHandler:self];

  v4.receiver = self;
  v4.super_class = VoiceOverSoundsAndHapticsController;
  [(VoiceOverSoundsAndHapticsController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v50 = OBJC_IVAR___PSListController__specifiers;
    if (!self->_outputManager)
    {
      v4 = objc_opt_new();
      [v4 setUsesPrivateAudioSession:1];
      [v4 setComponents:6];
      [v4 setHapticEngineUsesAutoShutdown:1];
      [v4 setHapticEngineAutoShutdownTimeout:15.0];
      [v4 setHapticEngineUsesHapticsOnly:1];
      v5 = [[AXMOutputManager alloc] initWithConfiguration:v4];
      outputManager = self->_outputManager;
      self->_outputManager = v5;

      [(AXMOutputManager *)self->_outputManager enableWithCompletion:&__block_literal_global_49];
      v7 = +[VOSOutputEventDispatcher sharedInstance];
      [v7 addEventHandler:self];
    }

    v8 = objc_opt_new();
    v9 = settingsLocString(@"SOUND_EFFECTS", @"VoiceOverSettings");
    v10 = [PSSpecifier groupSpecifierWithName:v9];
    soundGroupSpecifier = self->_soundGroupSpecifier;
    self->_soundGroupSpecifier = v10;

    v12 = settingsLocString(@"SOUND_EFFECTS", @"VoiceOverSettings");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"setSoundEffectsEnabled:specifier:" get:"soundEffectsEnabled:" detail:0 cell:6 edit:0];
    soundsEnabledSpecifier = self->_soundsEnabledSpecifier;
    self->_soundsEnabledSpecifier = v13;

    [v8 addObject:self->_soundGroupSpecifier];
    v57 = v8;
    [v8 addObject:self->_soundsEnabledSpecifier];
    v15 = [(VoiceOverSoundsAndHapticsController *)self soundEffectsEnabled:0];
    LODWORD(v12) = [v15 BOOLValue];

    if (v12)
    {
      [(VoiceOverSoundsAndHapticsController *)self _createSoundVolumeSpecifiers];
      v16 = [(VoiceOverSoundsAndHapticsController *)self _soundVolumeSpecifiers];
      [v8 addObjectsFromArray:v16];

      [(VoiceOverSoundsAndHapticsController *)self _updateSoundVolumeSpecifiers:0];
    }

    v58 = +[AXMHapticComponent isSupported];
    if (v58)
    {
      v17 = settingsLocString(@"HAPTICS_ENABLED_ITEM", @"VoiceOverSettings");
      v18 = [PSSpecifier groupSpecifierWithName:v17];

      [v57 addObject:v18];
      v19 = settingsLocString(@"HAPTICS_ENABLED_ITEM", @"VoiceOverSettings");
      v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:"setHapticsEnabled:specifier:" get:"hapticsEnabled:" detail:0 cell:6 edit:0];

      [v57 addObject:v20];
      v21 = settingsLocString(@"HAPTIC_INTENSITY", @"VoiceOverSettings");
      v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:"setHapticIntensity:specifier:" get:"hapticIntensity:" detail:0 cell:5 edit:0];

      v23 = v18;
      v24 = AXSpeakerMaxImage();
      [v22 setProperty:v24 forKey:PSSliderRightImageKey];

      v25 = AXSpeakerMuteImage();
      [v22 setProperty:v25 forKey:PSSliderLeftImageKey];

      [v22 setProperty:&off_27D170 forKey:PSControlMaximumKey];
      [v22 setProperty:&off_27D180 forKey:PSControlMinimumKey];
      [v22 setProperty:&__kCFBooleanTrue forKey:PSIconImageShouldFlipForRightToLeftKey];
      [v57 addObject:v22];
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v56 = self;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = +[VOSOutputEventCategory allCategories];
    v53 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v53)
    {
      v52 = *v64;
      do
      {
        v26 = 0;
        v27 = v23;
        do
        {
          if (*v64 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v54 = v26;
          v28 = *(*(&v63 + 1) + 8 * v26);
          v29 = [v28 localizedCategoryName];
          v30 = [PSSpecifier groupSpecifierWithName:v29];

          v55 = v30;
          [v57 addObject:v30];
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v31 = [v28 outputEvents];
          v32 = [v31 countByEnumeratingWithState:&v59 objects:v67 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v60;
            do
            {
              for (i = 0; i != v33; i = i + 1)
              {
                if (*v60 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v59 + 1) + 8 * i);
                v37 = +[VOSOutputEvent TouchIDAuthenticated];
                if ([v36 isEqual:v37])
                {
                  HasHomeButton = AXDeviceHasHomeButton();

                  if (!HasHomeButton)
                  {
                    continue;
                  }
                }

                else
                {
                  v39 = +[VOSOutputEvent TouchIDFailed];
                  if ([v36 isEqual:v39])
                  {
                    v40 = AXDeviceHasHomeButton();

                    if ((v40 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  else
                  {
                  }
                }

                v41 = +[VOSOutputEvent DockDidAppear];
                if ([v36 isEqual:v41])
                {
                  IsPad = AXDeviceIsPad();

                  if (!IsPad)
                  {
                    continue;
                  }
                }

                else
                {
                  v43 = +[VOSOutputEvent DockDidAppear];
                  if ([v36 isEqual:v43])
                  {
                    v44 = AXDeviceIsPad();

                    if ((v44 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  else
                  {
                  }
                }

                if (v58 && ([v36 supportsHaptic] & 1) != 0 || objc_msgSend(v36, "supportsSoundEffect"))
                {
                  v45 = [v36 localizedName];
                  v46 = [PSSpecifier preferenceSpecifierNamed:v45 target:v56 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

                  [v46 setVosOutputEvent:v36];
                  [v57 addObject:v46];
                  v22 = v46;
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v59 objects:v67 count:16];
            }

            while (v33);
          }

          v23 = v55;
          v26 = v54 + 1;
          v27 = v55;
        }

        while ((v54 + 1) != v53);
        v53 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v53);
    }

    [(VoiceOverSoundsAndHapticsController *)v56 setupLongTitleSpecifiers:v57];
    v47 = *&v56->AXUISettingsBaseListController_opaque[v50];
    *&v56->AXUISettingsBaseListController_opaque[v50] = v57;
    v48 = v57;

    v3 = *&v56->AXUISettingsBaseListController_opaque[v50];
  }

  return v3;
}

- (void)_createSoundVolumeSpecifiers
{
  v3 = settingsLocString(@"SOUND_FOLLOWS_VOICEOVER_VOLUME", @"VoiceOverSettings");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setMatchSpeechVolume:specifier:" get:"matchSpeechVolume:" detail:0 cell:6 edit:0];
  soundVolumeAdjustsIndependentlySpecifier = self->_soundVolumeAdjustsIndependentlySpecifier;
  self->_soundVolumeAdjustsIndependentlySpecifier = v4;

  v6 = settingsLocString(@"SOUND_VOLUME", @"VoiceOverSettings");
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setSoundVolume:specifier:" get:"soundVolume:" detail:0 cell:5 edit:0];
  soundVolumeSliderSpecifier = self->_soundVolumeSliderSpecifier;
  self->_soundVolumeSliderSpecifier = v7;

  v9 = self->_soundVolumeSliderSpecifier;
  v10 = AXSpeakerMaxImage();
  [(PSSpecifier *)v9 setProperty:v10 forKey:PSSliderRightImageKey];

  v11 = self->_soundVolumeSliderSpecifier;
  v12 = AXSpeakerMuteImage();
  [(PSSpecifier *)v11 setProperty:v12 forKey:PSSliderLeftImageKey];

  [(PSSpecifier *)self->_soundVolumeSliderSpecifier setProperty:&off_27D170 forKey:PSControlMaximumKey];
  [(PSSpecifier *)self->_soundVolumeSliderSpecifier setProperty:&off_27D180 forKey:PSControlMinimumKey];
  v13 = self->_soundVolumeSliderSpecifier;
  v14 = PSIconImageShouldFlipForRightToLeftKey;

  [(PSSpecifier *)v13 setProperty:&__kCFBooleanTrue forKey:v14];
}

- (void)_clearSoundVolumeSpecifiers
{
  soundVolumeSliderSpecifier = self->_soundVolumeSliderSpecifier;
  self->_soundVolumeSliderSpecifier = 0;

  soundVolumeAdjustsIndependentlySpecifier = self->_soundVolumeAdjustsIndependentlySpecifier;
  self->_soundVolumeAdjustsIndependentlySpecifier = 0;
}

- (id)_soundVolumeSpecifiers
{
  if (self->_soundVolumeAdjustsIndependentlySpecifier)
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 voiceOverAdjustSoundVolumeIndependently];

    if (v4)
    {
      soundVolumeSliderSpecifier = self->_soundVolumeSliderSpecifier;
      soundVolumeAdjustsIndependentlySpecifier = self->_soundVolumeAdjustsIndependentlySpecifier;
      v12 = soundVolumeSliderSpecifier;
      p_soundVolumeAdjustsIndependentlySpecifier = &soundVolumeAdjustsIndependentlySpecifier;
      v7 = 2;
    }

    else
    {
      v10 = self->_soundVolumeAdjustsIndependentlySpecifier;
      p_soundVolumeAdjustsIndependentlySpecifier = &v10;
      v7 = 1;
    }

    v8 = [NSArray arrayWithObjects:p_soundVolumeAdjustsIndependentlySpecifier count:v7, v10, soundVolumeAdjustsIndependentlySpecifier, v12];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (void)_updateSoundVolumeSpecifiers:(BOOL)a3
{
  v3 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke;
  v24[3] = &unk_258288;
  v25 = a3;
  v24[4] = self;
  v24[5] = &v26;
  v5 = objc_retainBlock(v24);
  v6 = [(VoiceOverSoundsAndHapticsController *)self soundEffectsEnabled:0];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    if (![(VoiceOverSoundsAndHapticsController *)self hasSoundVolumeSpecifiers])
    {
      [(VoiceOverSoundsAndHapticsController *)self _createSoundVolumeSpecifiers];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_2;
      v23[3] = &unk_2553B0;
      v23[4] = self;
      (v5[2])(v5, v23);
    }

    v8 = +[AXSettings sharedInstance];
    v9 = [v8 voiceOverAdjustSoundVolumeIndependently];

    if (v9)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_3;
      v22[3] = &unk_2553B0;
      v22[4] = self;
      (v5[2])(v5, v22);
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_4;
      v21[3] = &unk_2553B0;
      v21[4] = self;
      (v5[2])(v5, v21);
    }

    if (v3)
    {
      v10 = +[AXSettings sharedInstance];
      v11 = [v10 voiceOverAdjustSoundVolumeIndependently];

      if (v11)
      {
        v12 = [(VoiceOverSoundsAndHapticsController *)self specifiers];
        v13 = [v12 containsObject:self->_soundVolumeSliderSpecifier];

        if ((v13 & 1) == 0)
        {
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_5;
          v20[3] = &unk_2553B0;
          v20[4] = self;
          (v5[2])(v5, v20);
        }
      }

      else if (self->_soundVolumeSliderSpecifier)
      {
        v14 = [(VoiceOverSoundsAndHapticsController *)self specifiers];
        v15 = [v14 containsObject:self->_soundVolumeSliderSpecifier];

        if (v15)
        {
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_6;
          v19[3] = &unk_2553B0;
          v19[4] = self;
          (v5[2])(v5, v19);
        }
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_7;
      v18[3] = &unk_2553B0;
      v18[4] = self;
      (v5[2])(v5, v18);
    }
  }

  else
  {
    [(PSSpecifier *)self->_soundGroupSpecifier setProperty:&stru_25D420 forKey:PSFooterTextGroupKey];
    if ([(VoiceOverSoundsAndHapticsController *)self hasSoundVolumeSpecifiers])
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_8;
      v17[3] = &unk_2553B0;
      v17[4] = self;
      (v5[2])(v5, v17);
    }

    if (v3)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_9;
      v16[3] = &unk_2553B0;
      v16[4] = self;
      (v5[2])(v5, v16);
    }
  }

  if (*(v27 + 24) == 1)
  {
    [(VoiceOverSoundsAndHapticsController *)self endUpdates];
  }

  _Block_object_dispose(&v26, 8);
}

void __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && *(a1 + 48) == 1)
  {
    [*(a1 + 32) beginUpdates];
    v3 = v4;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  (*(v3 + 2))();
}

void __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _soundVolumeSpecifiers];
  [v2 insertContiguousSpecifiers:v3 afterSpecifier:*(*(a1 + 32) + 168) animated:0];
}

void __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 160);
  v2 = settingsLocString(@"SOUND_FOLLOWS_FOOTER_DISABLED", @"VoiceOverSettings");
  [v1 setProperty:v2 forKey:PSFooterTextGroupKey];
}

void __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 160);
  v2 = settingsLocString(@"SOUND_FOLLOWS_FOOTER_ENABLED", @"VoiceOverSettings");
  [v1 setProperty:v2 forKey:PSFooterTextGroupKey];
}

id __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _soundVolumeSpecifiers];
  [v2 removeContiguousSpecifiers:v3 animated:0];

  v4 = *(a1 + 32);

  return [v4 _clearSoundVolumeSpecifiers];
}

- (void)setSoundEffectsEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = +[AXSettings sharedInstance];
  [v6 setVoiceOverSoundEffectsEnabled:v5];

  [(VoiceOverSoundsAndHapticsController *)self _updateSoundVolumeSpecifiers:1];
}

- (id)soundEffectsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverSoundEffectsEnabled]);

  return v4;
}

- (void)setSoundVolume:(id)a3 specifier:(id)a4
{
  [a3 doubleValue];
  v5 = v4;
  v6 = +[AXSettings sharedInstance];
  [v6 setVoiceOverSoundVolume:v5];
}

- (id)soundVolume:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverSoundVolume];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (void)setMatchSpeechVolume:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = +[AXSettings sharedInstance];
  [v6 setVoiceOverAdjustSoundVolumeIndependently:v5 ^ 1];

  [(VoiceOverSoundsAndHapticsController *)self _updateSoundVolumeSpecifiers:1];
}

- (id)matchSpeechVolume:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 voiceOverAdjustSoundVolumeIndependently] ^ 1);

  return v4;
}

- (void)setHapticsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverHapticsEnabled:v4];
}

- (id)hapticsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverHapticsEnabled]);

  return v4;
}

- (void)setHapticIntensity:(id)a3 specifier:(id)a4
{
  [a3 doubleValue];
  v5 = v4;
  v6 = +[AXSettings sharedInstance];
  [v6 setVoiceOverHapticIntensity:v5];
}

- (id)hapticIntensity:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverHapticIntensity];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (void)dispatcher:(id)a3 handleEvent:(id)a4 soundPack:(id)a5 hapticPack:(id)a6
{
  v15 = a4;
  v9 = a6;
  v10 = a5;
  v11 = objc_alloc_init(AXMOutputRequest);
  v12 = [v10 soundAssetURLForOutputEvent:v15];

  if (v12)
  {
    [v11 addSoundItemWithURL:v12];
  }

  v13 = [v9 hapticAssetURLForOutputEvent:v15];
  if (v13)
  {
    [v11 addHapticItemWithURL:v13];
  }

  v14 = [(AXMOutputManager *)self->_outputManager dispatchRequest:v11];
}

@end