@interface VoiceOverSoundsAndHapticsController
- (id)_soundVolumeSpecifiers;
- (id)specifiers;
- (id)voiceOverHapticsEnabled;
- (id)voiceOverSoundVolume;
- (id)voiceOverSoundsEnabled;
- (id)voiceOverSoundsMatchSpeechVolumeEnabled;
- (void)_clearSoundVolumeSpecifiers;
- (void)_createSoundVolumeSpecifiers;
- (void)_updateSoundVolumeSpecifiers:(BOOL)specifiers;
- (void)setVoiceOverSoundsEnabled:(id)enabled;
- (void)setVoiceOverSoundsMatchSpeechVolumeEnabled:(id)enabled;
@end

@implementation VoiceOverSoundsAndHapticsController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(VoiceOverSoundsAndHapticsController *)self loadSpecifiersFromPlistName:@"VoiceOverSoundsAndHapticsSettings" target:self];
    v6 = [v5 specifierForID:@"VOICEOVER_SOUNDS_GROUP_ID"];
    soundGroupSpecifier = self->_soundGroupSpecifier;
    self->_soundGroupSpecifier = v6;

    v8 = [v5 specifierForID:@"VOICEOVER_SOUNDS_ENABLED_SWITCH_ID"];
    soundsEnabledSpecifier = self->_soundsEnabledSpecifier;
    self->_soundsEnabledSpecifier = v8;

    voiceOverSoundsEnabled = [(VoiceOverSoundsAndHapticsController *)self voiceOverSoundsEnabled];
    bOOLValue = [voiceOverSoundsEnabled BOOLValue];

    if (bOOLValue)
    {
      [(VoiceOverSoundsAndHapticsController *)self _createSoundVolumeSpecifiers];
      _soundVolumeSpecifiers = [(VoiceOverSoundsAndHapticsController *)self _soundVolumeSpecifiers];
      [v5 ps_insertObjectsFromArray:_soundVolumeSpecifiers afterObject:self->_soundsEnabledSpecifier];

      [(VoiceOverSoundsAndHapticsController *)self _updateSoundVolumeSpecifiers:0];
    }

    v13 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)voiceOverSoundsEnabled
{
  v6 = 0;
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v3 = [accessibilityDomainAccessor BOOLForKey:*MEMORY[0x277CE7F88] keyExistsAndHasValidFormat:&v6];

  if (v6 == 1)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
  }

  return v4;
}

- (void)setVoiceOverSoundsEnabled:(id)enabled
{
  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:enabled forKey:*MEMORY[0x277CE7F88]];

  [(VoiceOverSoundsAndHapticsController *)self _updateSoundVolumeSpecifiers:1];
}

- (id)voiceOverSoundsMatchSpeechVolumeEnabled
{
  v2 = MEMORY[0x277CCABB0];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v2 numberWithInt:{objc_msgSend(accessibilityDomainAccessor, "BOOLForKey:", *MEMORY[0x277CE7F48]) ^ 1}];

  return v4;
}

- (void)setVoiceOverSoundsMatchSpeechVolumeEnabled:(id)enabled
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(enabled, "BOOLValue") ^ 1}];
  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v4 forKey:*MEMORY[0x277CE7F48]];

  [(VoiceOverSoundsAndHapticsController *)self _updateSoundVolumeSpecifiers:1];
}

- (id)voiceOverSoundVolume
{
  v2 = MEMORY[0x277CCABB0];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [accessibilityDomainAccessor floatForKey:*MEMORY[0x277CE7F90]];
  v4 = [v2 numberWithFloat:?];

  return v4;
}

- (id)voiceOverHapticsEnabled
{
  v2 = MEMORY[0x277CCABB0];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v2 numberWithBool:{objc_msgSend(accessibilityDomainAccessor, "BOOLForKey:", @"VoiceOverTouchDetentsEnabled"}];

  return v4;
}

- (void)_createSoundVolumeSpecifiers
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = settingsLocString(@"SOUND_FOLLOWS_VOICEOVER_VOLUME", @"VoiceOverSoundsAndHapticsSettings");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:sel_setVoiceOverSoundsMatchSpeechVolumeEnabled_ get:sel_voiceOverSoundsMatchSpeechVolumeEnabled detail:0 cell:6 edit:0];
  soundVolumeMatchesSpeechSwitchSpecifier = self->_soundVolumeMatchesSpeechSwitchSpecifier;
  self->_soundVolumeMatchesSpeechSwitchSpecifier = v5;

  v7 = MEMORY[0x277D3FAD8];
  v8 = settingsLocString(@"SOUND_VOLUME", @"VoiceOverSoundsAndHapticsSettings");
  v9 = [v7 preferenceSpecifierNamed:v8 target:self set:sel_setVoiceOverSoundVolume_ get:sel_voiceOverSoundVolume detail:0 cell:5 edit:0];
  soundVolumeSliderSpecifier = self->_soundVolumeSliderSpecifier;
  self->_soundVolumeSliderSpecifier = v9;

  v11 = self->_soundVolumeSliderSpecifier;
  v12 = AXVolumeMinImage();
  [(PSSpecifier *)v11 setProperty:v12 forKey:*MEMORY[0x277D400D0]];

  v13 = self->_soundVolumeSliderSpecifier;
  v14 = AXVolumeMaxImage();
  [(PSSpecifier *)v13 setProperty:v14 forKey:*MEMORY[0x277D400E0]];

  [(PSSpecifier *)self->_soundVolumeSliderSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFC8]];
  [(PSSpecifier *)self->_soundVolumeSliderSpecifier setProperty:&unk_284E7E698 forKey:*MEMORY[0x277D3FEB8]];
  v15 = self->_soundVolumeSliderSpecifier;
  v16 = *MEMORY[0x277D3FEC0];

  [(PSSpecifier *)v15 setProperty:&unk_284E7E6A8 forKey:v16];
}

- (void)_clearSoundVolumeSpecifiers
{
  soundVolumeMatchesSpeechSwitchSpecifier = self->_soundVolumeMatchesSpeechSwitchSpecifier;
  self->_soundVolumeMatchesSpeechSwitchSpecifier = 0;

  soundVolumeSliderSpecifier = self->_soundVolumeSliderSpecifier;
  self->_soundVolumeSliderSpecifier = 0;
}

- (id)_soundVolumeSpecifiers
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(VoiceOverSoundsAndHapticsController *)self hasSoundVolumeSpecifiers])
  {
    voiceOverSoundsMatchSpeechVolumeEnabled = [(VoiceOverSoundsAndHapticsController *)self voiceOverSoundsMatchSpeechVolumeEnabled];
    bOOLValue = [voiceOverSoundsMatchSpeechVolumeEnabled BOOLValue];

    soundVolumeMatchesSpeechSwitchSpecifier = self->_soundVolumeMatchesSpeechSwitchSpecifier;
    if (bOOLValue)
    {
      v13 = self->_soundVolumeMatchesSpeechSwitchSpecifier;
      v6 = MEMORY[0x277CBEA60];
      v7 = &v13;
      v8 = 1;
    }

    else
    {
      soundVolumeSliderSpecifier = self->_soundVolumeSliderSpecifier;
      v14 = self->_soundVolumeMatchesSpeechSwitchSpecifier;
      v15 = soundVolumeSliderSpecifier;
      v6 = MEMORY[0x277CBEA60];
      v7 = &v14;
      v8 = 2;
    }

    v9 = [v6 arrayWithObjects:v7 count:{v8, v13, v14, v15}];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_updateSoundVolumeSpecifiers:(BOOL)specifiers
{
  specifiersCopy = specifiers;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke;
  aBlock[3] = &unk_278B90E60;
  specifiersCopy2 = specifiers;
  aBlock[4] = self;
  aBlock[5] = &v24;
  v5 = _Block_copy(aBlock);
  voiceOverSoundsEnabled = [(VoiceOverSoundsAndHapticsController *)self voiceOverSoundsEnabled];
  bOOLValue = [voiceOverSoundsEnabled BOOLValue];

  if (bOOLValue)
  {
    if (![(VoiceOverSoundsAndHapticsController *)self hasSoundVolumeSpecifiers])
    {
      [(VoiceOverSoundsAndHapticsController *)self _createSoundVolumeSpecifiers];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_2;
      v21[3] = &unk_278B90C98;
      v21[4] = self;
      v5[2](v5, v21);
    }

    voiceOverSoundsMatchSpeechVolumeEnabled = [(VoiceOverSoundsAndHapticsController *)self voiceOverSoundsMatchSpeechVolumeEnabled];
    bOOLValue2 = [voiceOverSoundsMatchSpeechVolumeEnabled BOOLValue];

    if (bOOLValue2)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_4;
      v19[3] = &unk_278B90C98;
      v19[4] = self;
      v5[2](v5, v19);
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_3;
      v20[3] = &unk_278B90C98;
      v20[4] = self;
      v5[2](v5, v20);
    }

    if (specifiersCopy)
    {
      voiceOverSoundsMatchSpeechVolumeEnabled2 = [(VoiceOverSoundsAndHapticsController *)self voiceOverSoundsMatchSpeechVolumeEnabled];
      bOOLValue3 = [voiceOverSoundsMatchSpeechVolumeEnabled2 BOOLValue];

      if (bOOLValue3)
      {
        if (self->_soundVolumeSliderSpecifier)
        {
          specifiers = [(VoiceOverSoundsAndHapticsController *)self specifiers];
          v13 = [specifiers containsObject:self->_soundVolumeSliderSpecifier];

          if (v13)
          {
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_6;
            v17[3] = &unk_278B90C98;
            v17[4] = self;
            v5[2](v5, v17);
          }
        }
      }

      else
      {
        specifiers2 = [(VoiceOverSoundsAndHapticsController *)self specifiers];
        v15 = [specifiers2 containsObject:self->_soundVolumeSliderSpecifier];

        if ((v15 & 1) == 0)
        {
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_5;
          v18[3] = &unk_278B90C98;
          v18[4] = self;
          v5[2](v5, v18);
        }
      }
    }
  }

  else
  {
    [(PSSpecifier *)self->_soundGroupSpecifier setProperty:&stru_284E770C0 forKey:*MEMORY[0x277D3FF88]];
    if ([(VoiceOverSoundsAndHapticsController *)self hasSoundVolumeSpecifiers])
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_7;
      v16[3] = &unk_278B90C98;
      v16[4] = self;
      v5[2](v5, v16);
    }
  }

  if (*(v25 + 24) == 1)
  {
    [(VoiceOverSoundsAndHapticsController *)self endUpdates];
  }

  _Block_object_dispose(&v24, 8);
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
  [v2 insertContiguousSpecifiers:v3 afterSpecifier:*(*(a1 + 32) + 1464) animated:0];
}

void __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1456);
  v2 = settingsLocString(@"SOUND_FOLLOWS_FOOTER_DISABLED", @"VoiceOverSoundsAndHapticsSettings");
  [v1 setProperty:v2 forKey:*MEMORY[0x277D3FF88]];
}

void __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1456);
  v2 = settingsLocString(@"SOUND_FOLLOWS_FOOTER_ENABLED", @"VoiceOverSoundsAndHapticsSettings");
  [v1 setProperty:v2 forKey:*MEMORY[0x277D3FF88]];
}

uint64_t __68__VoiceOverSoundsAndHapticsController__updateSoundVolumeSpecifiers___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _soundVolumeSpecifiers];
  [v2 removeContiguousSpecifiers:v3 animated:0];

  v4 = *(a1 + 32);

  return [v4 _clearSoundVolumeSpecifiers];
}

@end