@interface AssistantBridgeSiriResponsesController
- (AssistantBridgeSiriResponsesController)init;
- (id)alwaysShowRecognizedSpeech;
- (id)considerateVolumeProfileValue;
- (id)siriResponseShouldAlwaysPrint;
- (id)specifiers;
- (id)useConsiderateVolume;
- (id)voiceVolume;
- (void)_updateSpecifiersFromPreferences;
- (void)languageCodeDidChange:(id)a3;
- (void)preferencesDidChange:(id)a3;
- (void)setAlwaysShowRecognizedSpeech:(id)a3;
- (void)setSiriResponseShouldAlwaysPrint:(id)a3;
- (void)setUseConsiderateVolume:(id)a3;
- (void)setVoiceVolume:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSpecifiers:(id)a3 forConsiderateVolumeEnabled:(BOOL)a4;
- (void)updateSpecifiersForConsiderateVolumeEnabled:(BOOL)a3;
@end

@implementation AssistantBridgeSiriResponsesController

- (AssistantBridgeSiriResponsesController)init
{
  v11.receiver = self;
  v11.super_class = AssistantBridgeSiriResponsesController;
  v2 = [(AssistantBridgeSiriResponsesController *)&v11 init];
  if (v2)
  {
    v3 = +[AFPreferences sharedPreferences];
    v4 = [v3 nanoLanguageCode];
    v2->_siriSpeaksSupportedLanguage = AFGryphonAssetsExistForLanguage();

    v5 = objc_alloc_init(RSConsiderateVolumeSettingsController);
    considerateVolumeSettingsController = v2->_considerateVolumeSettingsController;
    v2->_considerateVolumeSettingsController = v5;

    v7 = +[NRPairedDeviceRegistry sharedInstance];
    v8 = [v7 getActivePairedDevice];

    v9 = [[NSUUID alloc] initWithUUIDString:@"27EC88C0-A142-4C22-BCEB-4B6A90B5184F"];
    v2->_siriConsiderateVolumeSupported = [v8 supportsCapability:v9];
  }

  return v2;
}

- (void)preferencesDidChange:(id)a3
{
  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 nanoLanguageCode];
  self->_siriSpeaksSupportedLanguage = AFGryphonAssetsExistForLanguage();

  v6 = +[AFPreferences sharedPreferences];
  v7 = [v6 nanoUseDeviceSpeakerForTTS];

  if (v7 != self->_voiceFeedbackPref)
  {
    self->_voiceFeedbackPref = v7;
  }

  [(AssistantBridgeSiriResponsesController *)self reloadSpecifiers];
}

- (void)languageCodeDidChange:(id)a3
{
  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 nanoLanguageCode];
  self->_siriSpeaksSupportedLanguage = AFGryphonAssetsExistForLanguage();

  [(AssistantBridgeSiriResponsesController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(AssistantBridgeSiriResponsesController *)self loadSpecifiersFromPlistName:@"AssistantBridgeSiriResponses" target:self];
    v6 = [(AssistantBridgeSiriResponsesController *)self useConsiderateVolume];
    v7 = [v6 BOOLValue];

    [(AssistantBridgeSiriResponsesController *)self updateSpecifiers:v5 forConsiderateVolumeEnabled:v7];
    v8 = [v5 specifierForID:@"VOICE_VOLUME_SLIDER_ID"];
    if (self->_siriSpeaksSupportedLanguage && ![(AssistantBridgeSiriResponsesController *)self watchHasConsiderateVolume])
    {
      WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);

      if (WeakRetained)
      {
        v10 = [UIImage imageNamed:@"Volume-Min"];
        WeakRetained = [v10 imageFlippedForRightToLeftLayoutDirection];

        v11 = [UIImage imageNamed:@"Volume-Max"];
        v12 = [v11 imageFlippedForRightToLeftLayoutDirection];
      }

      else
      {
        v12 = 0;
      }

      [v8 setProperty:WeakRetained forKey:PSSliderLeftImageKey];
      [v8 setProperty:v12 forKey:PSSliderRightImageKey];
    }

    else
    {
      [v5 removeObjectsInRange:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"VOICE_FEEDBACK_GROUP_ID", 4}];
      WeakRetained = [v5 specifierForID:@"VOICE_VOLUME_GROUP_ID"];
      [v5 removeObject:WeakRetained];
      [v5 removeObject:v8];
    }

    v13 = [v5 copy];
    v14 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v13;

    [(AssistantBridgeSiriResponsesController *)self _updateSpecifiersFromPreferences];
    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)_updateSpecifiersFromPreferences
{
  v3 = +[AFPreferences sharedPreferences];
  self->_voiceFeedbackPref = [v3 nanoUseDeviceSpeakerForTTS];

  voiceFeedbackPref = self->_voiceFeedbackPref;
  v5 = @"VOICE_FEEDBACK_HEADPHONES_ONLY_ID";
  if (voiceFeedbackPref == 1)
  {
    v5 = @"VOICE_FEEDBACK_CONTROL_WITH_SILENT_MODE_ID";
  }

  if (voiceFeedbackPref == 2)
  {
    v6 = @"VOICE_FEEDBACK_ALWAYS_ON_ID";
  }

  else
  {
    v6 = v5;
  }

  v8 = [(AssistantBridgeSiriResponsesController *)self specifierForID:v6];
  v7 = [(AssistantBridgeSiriResponsesController *)self specifierForID:@"VOICE_FEEDBACK_GROUP_ID"];
  [v7 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = AssistantBridgeSiriResponsesController;
  v6 = a4;
  [(AssistantBridgeSiriResponsesController *)&v12 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AssistantBridgeSiriResponsesController *)self indexForIndexPath:v6, v12.receiver, v12.super_class];

  v8 = [(AssistantBridgeSiriResponsesController *)self specifierAtIndex:v7];
  v9 = [v8 identifier];

  if ([v9 isEqualToString:@"VOICE_FEEDBACK_ALWAYS_ON_ID"])
  {
    v10 = 2;
LABEL_7:
    self->_voiceFeedbackPref = v10;
    goto LABEL_8;
  }

  if ([v9 isEqualToString:@"VOICE_FEEDBACK_CONTROL_WITH_SILENT_MODE_ID"])
  {
    v10 = 1;
    goto LABEL_7;
  }

  if ([v9 isEqualToString:@"VOICE_FEEDBACK_HEADPHONES_ONLY_ID"])
  {
    v10 = 3;
    goto LABEL_7;
  }

LABEL_8:
  v11 = +[AFPreferences sharedPreferences];
  [v11 setNanoUseDeviceSpeakerForTTS:self->_voiceFeedbackPref];
}

- (id)siriResponseShouldAlwaysPrint
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 nanoSiriResponseShouldAlwaysPrint];

  return [NSNumber numberWithBool:v3];
}

- (void)setSiriResponseShouldAlwaysPrint:(id)a3
{
  v3 = [a3 BOOLValue];
  v4 = +[AFPreferences sharedPreferences];
  [v4 setNanoSiriResponseShouldAlwaysPrint:v3];
}

- (id)alwaysShowRecognizedSpeech
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 nanoAlwaysShowRecognizedSpeech];

  return [NSNumber numberWithBool:v3];
}

- (void)setAlwaysShowRecognizedSpeech:(id)a3
{
  v3 = [a3 BOOLValue];
  v4 = +[AFPreferences sharedPreferences];
  [v4 setNanoAlwaysShowRecognizedSpeech:v3];
}

- (id)voiceVolume
{
  v2 = +[AFPreferences sharedPreferences];
  [v2 nanoTTSSpeakerVolume];
  v3 = [NSNumber numberWithFloat:?];

  return v3;
}

- (void)setVoiceVolume:(id)a3
{
  [a3 floatValue];
  if (v3 >= 0.0625)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0625;
  }

  v6 = +[AFPreferences sharedPreferences];
  *&v5 = v4;
  [v6 setNanoTTSSpeakerVolume:v5];
}

- (void)updateSpecifiersForConsiderateVolumeEnabled:(BOOL)a3
{
  v42 = a3;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(AssistantBridgeSiriResponsesController *)self originalConsiderateVolumeSpecifiers];
  v3 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v44 = 0;
    v45 = 0;
    v6 = 0;
    v7 = *v48;
    while (1)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:@"CONSIDERATE_VOLUME_SLIDER_ID"];

        if (v11)
        {
          v12 = v6;
          v13 = v5;
          v6 = v9;
        }

        else
        {
          v14 = [v9 identifier];
          v15 = [v14 isEqualToString:@"CONSIDERATE_VOLUME_GROUP_ID"];

          if (v15)
          {
            v12 = v45;
            v13 = v5;
            v45 = v9;
          }

          else
          {
            v16 = [v9 identifier];
            v17 = [v16 isEqualToString:@"CONSIDERATE_VOLUME_PROFILE_ID"];

            if (v17)
            {
              v12 = v44;
              v13 = v5;
              v44 = v9;
            }

            else
            {
              v18 = [v9 identifier];
              v19 = [v18 isEqualToString:@"CONSIDERATE_VOLUME_SWITCH_ID"];

              v12 = v5;
              v13 = v9;
              if (!v19)
              {
                continue;
              }
            }
          }
        }

        v20 = v9;

        v5 = v13;
      }

      v4 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (!v4)
      {
        goto LABEL_18;
      }
    }
  }

  v5 = 0;
  v44 = 0;
  v45 = 0;
  v6 = 0;
LABEL_18:

  v21 = v44;
  v22 = v6;
  if (v45 && v6 && v44 && v5)
  {
    v23 = OBJC_IVAR___PSListController__specifiers;
    v24 = [NSMutableArray arrayWithArray:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers]];
    [(AssistantBridgeSiriResponsesController *)self beginUpdates];
    if (self->_siriSpeaksSupportedLanguage)
    {
      if (v42)
      {
        v25 = [v22 identifier];
        v26 = [(AssistantBridgeSiriResponsesController *)self indexOfSpecifierID:v25];

        [v24 removeObject:v22];
        if (v26 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = [v22 identifier];
          [(AssistantBridgeSiriResponsesController *)self removeSpecifierID:v27 animated:1];
        }

        v28 = [v45 identifier];
        v29 = [(AssistantBridgeSiriResponsesController *)self specifierForID:v28];

        v30 = [NSBundle bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"CONSIDERATE_VOLUME_FOOTER" value:&stru_10AF0 table:@"AssistantBridgeSiriResponses"];
        [v29 setProperty:v31 forKey:PSFooterTextGroupKey];

        v32 = [(AssistantBridgeSiriResponsesController *)self indexOfSpecifier:v29];
        v21 = v44;
        [v24 insertObject:v44 atIndex:v32 + 2];
        [(AssistantBridgeSiriResponsesController *)self insertSpecifier:v44 atIndex:v32 + 2 animated:1];
      }

      else
      {
        v35 = [v45 identifier];
        v29 = [(AssistantBridgeSiriResponsesController *)self specifierForID:v35];

        v36 = [(AssistantBridgeSiriResponsesController *)self indexOfSpecifier:v29];
        [v24 insertObject:v22 atIndex:v36 + 2];
        [(AssistantBridgeSiriResponsesController *)self insertSpecifier:v22 atIndex:v36 + 2 animated:1];
        v37 = [NSBundle bundleForClass:objc_opt_class()];
        v38 = [v37 localizedStringForKey:@"VOICE_VOLUME_FOOTER" value:&stru_10AF0 table:@"AssistantBridgeSiriResponses"];
        [v29 setProperty:v38 forKey:PSFooterTextGroupKey];

        v21 = v44;
        [v24 removeObject:v44];
        v39 = [v44 identifier];
        [(AssistantBridgeSiriResponsesController *)self removeSpecifierID:v39 animated:1];
      }

      [(AssistantBridgeSiriResponsesController *)self reloadSpecifierID:@"CONSIDERATE_VOLUME_GROUP_ID" animated:1];
    }

    else
    {
      [v24 removeObject:v44];
      [v24 removeObject:v45];
      [v24 removeObject:v22];
      v33 = [v44 identifier];
      [(AssistantBridgeSiriResponsesController *)self removeSpecifierID:v33];

      v34 = [v45 identifier];
      [(AssistantBridgeSiriResponsesController *)self removeSpecifierID:v34];

      v29 = [v22 identifier];
      [(AssistantBridgeSiriResponsesController *)self removeSpecifierID:v29];
    }

    v40 = [v24 copy];
    v41 = *&self->PSListController_opaque[v23];
    *&self->PSListController_opaque[v23] = v40;

    [(AssistantBridgeSiriResponsesController *)self endUpdates];
  }
}

- (void)updateSpecifiers:(id)a3 forConsiderateVolumeEnabled:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = [v15 indexesOfObjectsPassingTest:&stru_105A8];
  v7 = [v15 objectsAtIndexes:v6];
  v8 = [NSMutableArray arrayWithArray:v7];
  [(AssistantBridgeSiriResponsesController *)self setOriginalConsiderateVolumeSpecifiers:v8];

  if (self->_siriSpeaksSupportedLanguage && [(AssistantBridgeSiriResponsesController *)self watchHasConsiderateVolume])
  {
    if (v4)
    {
      v9 = [v15 specifierForID:@"CONSIDERATE_VOLUME_SLIDER_ID"];
      [v15 removeObject:v9];
      goto LABEL_7;
    }

    v9 = [v15 specifierForID:@"CONSIDERATE_VOLUME_GROUP_ID"];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"VOICE_VOLUME_FOOTER" value:&stru_10AF0 table:@"AssistantBridgeSiriResponses"];
    [v9 setProperty:v14 forKey:PSFooterTextGroupKey];

    v10 = [v15 specifierForID:@"CONSIDERATE_VOLUME_PROFILE_ID"];
    [v15 removeObject:v10];
  }

  else
  {
    v9 = [v15 specifierForID:@"CONSIDERATE_VOLUME_SLIDER_ID"];
    [v15 removeObject:v9];
    v10 = [v15 specifierForID:@"CONSIDERATE_VOLUME_GROUP_ID"];
    [v15 removeObject:v10];
    v11 = [v15 specifierForID:@"CONSIDERATE_VOLUME_PROFILE_ID"];
    [v15 removeObject:v11];
    v12 = [v15 specifierForID:@"CONSIDERATE_VOLUME_SWITCH_ID"];
    [v15 removeObject:v12];
  }

LABEL_7:
}

- (id)useConsiderateVolume
{
  v2 = [(AssistantBridgeSiriResponsesController *)self considerateVolumeSettingsController];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 isEnabledForCategory:3]);

  return v3;
}

- (void)setUseConsiderateVolume:(id)a3
{
  v4 = a3;
  v5 = [(AssistantBridgeSiriResponsesController *)self considerateVolumeSettingsController];
  [v5 setEnabled:objc_msgSend(v4 forCategory:{"BOOLValue"), 3}];

  v6 = [v4 BOOLValue];

  [(AssistantBridgeSiriResponsesController *)self updateSpecifiersForConsiderateVolumeEnabled:v6];
}

- (id)considerateVolumeProfileValue
{
  v2 = [(AssistantBridgeSiriResponsesController *)self considerateVolumeSettingsController];
  v3 = [v2 getUserProfileForCategory:3];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = @"CONSIDERATE_VOLUME_PROFILE_DEFAULT";
  if (v3 == &dword_0 + 2)
  {
    v6 = @"CONSIDERATE_VOLUME_PROFILE_LOUDER";
  }

  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"CONSIDERATE_VOLUME_PROFILE_QUIETER";
  }

  v8 = [v4 localizedStringForKey:v7 value:&stru_10AF0 table:@"AssistantBridgeSiriResponses"];

  return v8;
}

@end