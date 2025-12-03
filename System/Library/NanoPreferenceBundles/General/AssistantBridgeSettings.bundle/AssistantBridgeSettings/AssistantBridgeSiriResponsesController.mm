@interface AssistantBridgeSiriResponsesController
- (AssistantBridgeSiriResponsesController)init;
- (id)alwaysShowRecognizedSpeech;
- (id)considerateVolumeProfileValue;
- (id)siriResponseShouldAlwaysPrint;
- (id)specifiers;
- (id)useConsiderateVolume;
- (id)voiceVolume;
- (void)_updateSpecifiersFromPreferences;
- (void)languageCodeDidChange:(id)change;
- (void)preferencesDidChange:(id)change;
- (void)setAlwaysShowRecognizedSpeech:(id)speech;
- (void)setSiriResponseShouldAlwaysPrint:(id)print;
- (void)setUseConsiderateVolume:(id)volume;
- (void)setVoiceVolume:(id)volume;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSpecifiers:(id)specifiers forConsiderateVolumeEnabled:(BOOL)enabled;
- (void)updateSpecifiersForConsiderateVolumeEnabled:(BOOL)enabled;
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
    nanoLanguageCode = [v3 nanoLanguageCode];
    v2->_siriSpeaksSupportedLanguage = AFGryphonAssetsExistForLanguage();

    v5 = objc_alloc_init(RSConsiderateVolumeSettingsController);
    considerateVolumeSettingsController = v2->_considerateVolumeSettingsController;
    v2->_considerateVolumeSettingsController = v5;

    v7 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v7 getActivePairedDevice];

    v9 = [[NSUUID alloc] initWithUUIDString:@"27EC88C0-A142-4C22-BCEB-4B6A90B5184F"];
    v2->_siriConsiderateVolumeSupported = [getActivePairedDevice supportsCapability:v9];
  }

  return v2;
}

- (void)preferencesDidChange:(id)change
{
  v4 = +[AFPreferences sharedPreferences];
  nanoLanguageCode = [v4 nanoLanguageCode];
  self->_siriSpeaksSupportedLanguage = AFGryphonAssetsExistForLanguage();

  v6 = +[AFPreferences sharedPreferences];
  nanoUseDeviceSpeakerForTTS = [v6 nanoUseDeviceSpeakerForTTS];

  if (nanoUseDeviceSpeakerForTTS != self->_voiceFeedbackPref)
  {
    self->_voiceFeedbackPref = nanoUseDeviceSpeakerForTTS;
  }

  [(AssistantBridgeSiriResponsesController *)self reloadSpecifiers];
}

- (void)languageCodeDidChange:(id)change
{
  v4 = +[AFPreferences sharedPreferences];
  nanoLanguageCode = [v4 nanoLanguageCode];
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
    useConsiderateVolume = [(AssistantBridgeSiriResponsesController *)self useConsiderateVolume];
    bOOLValue = [useConsiderateVolume BOOLValue];

    [(AssistantBridgeSiriResponsesController *)self updateSpecifiers:v5 forConsiderateVolumeEnabled:bOOLValue];
    v8 = [v5 specifierForID:@"VOICE_VOLUME_SLIDER_ID"];
    if (self->_siriSpeaksSupportedLanguage && ![(AssistantBridgeSiriResponsesController *)self watchHasConsiderateVolume])
    {
      WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);

      if (WeakRetained)
      {
        v10 = [UIImage imageNamed:@"Volume-Min"];
        WeakRetained = [v10 imageFlippedForRightToLeftLayoutDirection];

        v11 = [UIImage imageNamed:@"Volume-Max"];
        imageFlippedForRightToLeftLayoutDirection = [v11 imageFlippedForRightToLeftLayoutDirection];
      }

      else
      {
        imageFlippedForRightToLeftLayoutDirection = 0;
      }

      [v8 setProperty:WeakRetained forKey:PSSliderLeftImageKey];
      [v8 setProperty:imageFlippedForRightToLeftLayoutDirection forKey:PSSliderRightImageKey];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = AssistantBridgeSiriResponsesController;
  pathCopy = path;
  [(AssistantBridgeSiriResponsesController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AssistantBridgeSiriResponsesController *)self indexForIndexPath:pathCopy, v12.receiver, v12.super_class];

  v8 = [(AssistantBridgeSiriResponsesController *)self specifierAtIndex:v7];
  identifier = [v8 identifier];

  if ([identifier isEqualToString:@"VOICE_FEEDBACK_ALWAYS_ON_ID"])
  {
    v10 = 2;
LABEL_7:
    self->_voiceFeedbackPref = v10;
    goto LABEL_8;
  }

  if ([identifier isEqualToString:@"VOICE_FEEDBACK_CONTROL_WITH_SILENT_MODE_ID"])
  {
    v10 = 1;
    goto LABEL_7;
  }

  if ([identifier isEqualToString:@"VOICE_FEEDBACK_HEADPHONES_ONLY_ID"])
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
  nanoSiriResponseShouldAlwaysPrint = [v2 nanoSiriResponseShouldAlwaysPrint];

  return [NSNumber numberWithBool:nanoSiriResponseShouldAlwaysPrint];
}

- (void)setSiriResponseShouldAlwaysPrint:(id)print
{
  bOOLValue = [print BOOLValue];
  v4 = +[AFPreferences sharedPreferences];
  [v4 setNanoSiriResponseShouldAlwaysPrint:bOOLValue];
}

- (id)alwaysShowRecognizedSpeech
{
  v2 = +[AFPreferences sharedPreferences];
  nanoAlwaysShowRecognizedSpeech = [v2 nanoAlwaysShowRecognizedSpeech];

  return [NSNumber numberWithBool:nanoAlwaysShowRecognizedSpeech];
}

- (void)setAlwaysShowRecognizedSpeech:(id)speech
{
  bOOLValue = [speech BOOLValue];
  v4 = +[AFPreferences sharedPreferences];
  [v4 setNanoAlwaysShowRecognizedSpeech:bOOLValue];
}

- (id)voiceVolume
{
  v2 = +[AFPreferences sharedPreferences];
  [v2 nanoTTSSpeakerVolume];
  v3 = [NSNumber numberWithFloat:?];

  return v3;
}

- (void)setVoiceVolume:(id)volume
{
  [volume floatValue];
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

- (void)updateSpecifiersForConsiderateVolumeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
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
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:@"CONSIDERATE_VOLUME_SLIDER_ID"];

        if (v11)
        {
          v12 = v6;
          v13 = v5;
          v6 = v9;
        }

        else
        {
          identifier2 = [v9 identifier];
          v15 = [identifier2 isEqualToString:@"CONSIDERATE_VOLUME_GROUP_ID"];

          if (v15)
          {
            v12 = v45;
            v13 = v5;
            v45 = v9;
          }

          else
          {
            identifier3 = [v9 identifier];
            v17 = [identifier3 isEqualToString:@"CONSIDERATE_VOLUME_PROFILE_ID"];

            if (v17)
            {
              v12 = v44;
              v13 = v5;
              v44 = v9;
            }

            else
            {
              identifier4 = [v9 identifier];
              v19 = [identifier4 isEqualToString:@"CONSIDERATE_VOLUME_SWITCH_ID"];

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
      if (enabledCopy)
      {
        identifier5 = [v22 identifier];
        v26 = [(AssistantBridgeSiriResponsesController *)self indexOfSpecifierID:identifier5];

        [v24 removeObject:v22];
        if (v26 != 0x7FFFFFFFFFFFFFFFLL)
        {
          identifier6 = [v22 identifier];
          [(AssistantBridgeSiriResponsesController *)self removeSpecifierID:identifier6 animated:1];
        }

        identifier7 = [v45 identifier];
        identifier12 = [(AssistantBridgeSiriResponsesController *)self specifierForID:identifier7];

        v30 = [NSBundle bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"CONSIDERATE_VOLUME_FOOTER" value:&stru_10AF0 table:@"AssistantBridgeSiriResponses"];
        [identifier12 setProperty:v31 forKey:PSFooterTextGroupKey];

        v32 = [(AssistantBridgeSiriResponsesController *)self indexOfSpecifier:identifier12];
        v21 = v44;
        [v24 insertObject:v44 atIndex:v32 + 2];
        [(AssistantBridgeSiriResponsesController *)self insertSpecifier:v44 atIndex:v32 + 2 animated:1];
      }

      else
      {
        identifier8 = [v45 identifier];
        identifier12 = [(AssistantBridgeSiriResponsesController *)self specifierForID:identifier8];

        v36 = [(AssistantBridgeSiriResponsesController *)self indexOfSpecifier:identifier12];
        [v24 insertObject:v22 atIndex:v36 + 2];
        [(AssistantBridgeSiriResponsesController *)self insertSpecifier:v22 atIndex:v36 + 2 animated:1];
        v37 = [NSBundle bundleForClass:objc_opt_class()];
        v38 = [v37 localizedStringForKey:@"VOICE_VOLUME_FOOTER" value:&stru_10AF0 table:@"AssistantBridgeSiriResponses"];
        [identifier12 setProperty:v38 forKey:PSFooterTextGroupKey];

        v21 = v44;
        [v24 removeObject:v44];
        identifier9 = [v44 identifier];
        [(AssistantBridgeSiriResponsesController *)self removeSpecifierID:identifier9 animated:1];
      }

      [(AssistantBridgeSiriResponsesController *)self reloadSpecifierID:@"CONSIDERATE_VOLUME_GROUP_ID" animated:1];
    }

    else
    {
      [v24 removeObject:v44];
      [v24 removeObject:v45];
      [v24 removeObject:v22];
      identifier10 = [v44 identifier];
      [(AssistantBridgeSiriResponsesController *)self removeSpecifierID:identifier10];

      identifier11 = [v45 identifier];
      [(AssistantBridgeSiriResponsesController *)self removeSpecifierID:identifier11];

      identifier12 = [v22 identifier];
      [(AssistantBridgeSiriResponsesController *)self removeSpecifierID:identifier12];
    }

    v40 = [v24 copy];
    v41 = *&self->PSListController_opaque[v23];
    *&self->PSListController_opaque[v23] = v40;

    [(AssistantBridgeSiriResponsesController *)self endUpdates];
  }
}

- (void)updateSpecifiers:(id)specifiers forConsiderateVolumeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  specifiersCopy = specifiers;
  v6 = [specifiersCopy indexesOfObjectsPassingTest:&stru_105A8];
  v7 = [specifiersCopy objectsAtIndexes:v6];
  v8 = [NSMutableArray arrayWithArray:v7];
  [(AssistantBridgeSiriResponsesController *)self setOriginalConsiderateVolumeSpecifiers:v8];

  if (self->_siriSpeaksSupportedLanguage && [(AssistantBridgeSiriResponsesController *)self watchHasConsiderateVolume])
  {
    if (enabledCopy)
    {
      v9 = [specifiersCopy specifierForID:@"CONSIDERATE_VOLUME_SLIDER_ID"];
      [specifiersCopy removeObject:v9];
      goto LABEL_7;
    }

    v9 = [specifiersCopy specifierForID:@"CONSIDERATE_VOLUME_GROUP_ID"];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"VOICE_VOLUME_FOOTER" value:&stru_10AF0 table:@"AssistantBridgeSiriResponses"];
    [v9 setProperty:v14 forKey:PSFooterTextGroupKey];

    v10 = [specifiersCopy specifierForID:@"CONSIDERATE_VOLUME_PROFILE_ID"];
    [specifiersCopy removeObject:v10];
  }

  else
  {
    v9 = [specifiersCopy specifierForID:@"CONSIDERATE_VOLUME_SLIDER_ID"];
    [specifiersCopy removeObject:v9];
    v10 = [specifiersCopy specifierForID:@"CONSIDERATE_VOLUME_GROUP_ID"];
    [specifiersCopy removeObject:v10];
    v11 = [specifiersCopy specifierForID:@"CONSIDERATE_VOLUME_PROFILE_ID"];
    [specifiersCopy removeObject:v11];
    v12 = [specifiersCopy specifierForID:@"CONSIDERATE_VOLUME_SWITCH_ID"];
    [specifiersCopy removeObject:v12];
  }

LABEL_7:
}

- (id)useConsiderateVolume
{
  considerateVolumeSettingsController = [(AssistantBridgeSiriResponsesController *)self considerateVolumeSettingsController];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [considerateVolumeSettingsController isEnabledForCategory:3]);

  return v3;
}

- (void)setUseConsiderateVolume:(id)volume
{
  volumeCopy = volume;
  considerateVolumeSettingsController = [(AssistantBridgeSiriResponsesController *)self considerateVolumeSettingsController];
  [considerateVolumeSettingsController setEnabled:objc_msgSend(volumeCopy forCategory:{"BOOLValue"), 3}];

  bOOLValue = [volumeCopy BOOLValue];

  [(AssistantBridgeSiriResponsesController *)self updateSpecifiersForConsiderateVolumeEnabled:bOOLValue];
}

- (id)considerateVolumeProfileValue
{
  considerateVolumeSettingsController = [(AssistantBridgeSiriResponsesController *)self considerateVolumeSettingsController];
  v3 = [considerateVolumeSettingsController getUserProfileForCategory:3];

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