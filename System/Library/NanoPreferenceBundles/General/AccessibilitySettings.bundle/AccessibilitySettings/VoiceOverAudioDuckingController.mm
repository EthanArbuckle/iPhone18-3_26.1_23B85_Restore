@interface VoiceOverAudioDuckingController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)voiceOverDuckingAmount:(id)amount;
- (int64_t)_selectedDuckingMode;
- (void)reloadSpecifiers;
- (void)setGizmoPref:(id)pref forKey:(id)key domainAccessor:(id)accessor;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateTableCheckedSelection:(id)selection;
@end

@implementation VoiceOverAudioDuckingController

- (void)reloadSpecifiers
{
  v2.receiver = self;
  v2.super_class = VoiceOverAudioDuckingController;
  [(VoiceOverAudioDuckingController *)&v2 reloadSpecifiers];
}

- (void)setGizmoPref:(id)pref forKey:(id)key domainAccessor:(id)accessor
{
  v6.receiver = self;
  v6.super_class = VoiceOverAudioDuckingController;
  [(AccessibilityBridgeBaseController *)&v6 setGizmoPref:pref forKey:key domainAccessor:accessor];
  [(VoiceOverAudioDuckingController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v32 = *MEMORY[0x277D3FC48];
    selfCopy = self;
    [(VoiceOverAudioDuckingController *)self loadSpecifiersFromPlistName:@"VoiceOverAudioDuckingSettings" target:?];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v45 = 0u;
    v4 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v4)
    {
      v5 = v4;
      v40 = *MEMORY[0x277D3FF88];
      v41 = *v43;
      v6 = *MEMORY[0x277D3FFB8];
      v37 = *MEMORY[0x277D400E0];
      v38 = *MEMORY[0x277D400D0];
      v35 = *MEMORY[0x277D3FEB8];
      v36 = *MEMORY[0x277D3FFC8];
      v34 = *MEMORY[0x277D3FEC0];
      v7 = *MEMORY[0x277D3FFE0];
      v8 = *MEMORY[0x277D40068];
      v9 = *MEMORY[0x277D3FEF8];
      v10 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v43 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v42 + 1) + 8 * i);
          identifier = [v12 identifier];
          v14 = [identifier isEqualToString:@"VOICEOVER_DUCKING_MODE_GROUP"];

          if (v14)
          {
            v15 = settingsLocString(@"AUDIO_DUCKING_MODE_FOOTER", @"VoiceOverAudioDuckingSettings");
            [v12 setProperty:v15 forKey:v40];

            [v12 setProperty:@"DuckingModeGroupIdentifier" forKey:v6];
          }

          identifier2 = [v12 identifier];
          v17 = [identifier2 isEqualToString:@"AUDIO_DUCKING_MODE_OFF"];

          if (v17)
          {
            [v12 setProperty:&unk_284E7E360 forKey:@"DuckingModeValue"];
            [v12 setProperty:@"DuckingModeOffIdentifier" forKey:v6];
          }

          identifier3 = [v12 identifier];
          v19 = [identifier3 isEqualToString:@"AUDIO_DUCKING_MODE_WHEN_SPEAKING"];

          if (v19)
          {
            [v12 setProperty:&unk_284E7E378 forKey:@"DuckingModeValue"];
            [v12 setProperty:@"DuckingModeOnlySpeakingIdentifier" forKey:v6];
          }

          identifier4 = [v12 identifier];
          v21 = [identifier4 isEqualToString:@"AUDIO_DUCKING_MODE_ALWAYS"];

          if (v21)
          {
            [v12 setProperty:&unk_284E7E390 forKey:@"DuckingModeValue"];
            [v12 setProperty:@"DuckingModeAlwaysSpeakingIdentifier" forKey:v6];
          }

          identifier5 = [v12 identifier];
          v23 = [identifier5 isEqualToString:@"VOICEOVER_DUCKING_AMOUNT_GROUP"];

          if (v23)
          {
            v24 = settingsLocString(@"AUDIO_DUCKING_AMOUNT_FOOTER", @"VoiceOverAudioDuckingSettings");
            [v12 setProperty:v24 forKey:v40];

            [v12 setProperty:@"DuckingAmountGroupIdentifier" forKey:v6];
          }

          identifier6 = [v12 identifier];
          v26 = [identifier6 isEqualToString:@"VOICEOVER_DUCKING_AMOUNT_SLIDER"];

          if (v26)
          {
            v27 = AXVolumeMinImage();
            [v12 setProperty:v27 forKey:v38];

            v28 = AXVolumeMaxImage();
            [v12 setProperty:v28 forKey:v37];

            [v12 setProperty:v10 forKey:v36];
            [v12 setProperty:&unk_284E7E678 forKey:v35];
            [v12 setProperty:&unk_284E7E688 forKey:v34];
            [v12 setProperty:@"DuckingAmountIdentifier" forKey:v6];
          }

          [v12 setProperty:v10 forKey:v7];
          [v12 setProperty:v10 forKey:v8];
          [v12 setProperty:@"com.apple.Accessibility" forKey:v9];
        }

        v5 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v5);
    }

    v29 = *(&selfCopy->super.super.super.super.super.super.isa + v32);
    *(&selfCopy->super.super.super.super.super.super.isa + v32) = obj;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v32);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v3;
}

- (int64_t)_selectedDuckingMode
{
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v3 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE7FA0]];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v26.receiver = self;
  v26.super_class = VoiceOverAudioDuckingController;
  v8 = [(VoiceOverAudioDuckingController *)&v26 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  v9 = [(VoiceOverAudioDuckingController *)self specifierAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v11 = [specifier propertyForKey:@"DuckingModeValue"];

  if (v11)
  {
    [v8 setChecked:{-[VoiceOverAudioDuckingController _selectedDuckingMode](self, "_selectedDuckingMode") == objc_msgSend(v11, "intValue")}];
  }

  else
  {
    v12 = [v9 propertyForKey:*MEMORY[0x277D3FFB8]];
    v13 = [v12 isEqualToString:@"DuckingAmountIdentifier"];

    if (v13)
    {
      v14 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        control = [v14 control];
        objc_initWeak(&location, control);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __67__VoiceOverAudioDuckingController_tableView_cellForRowAtIndexPath___block_invoke;
        v23[3] = &unk_278B90AA0;
        objc_copyWeak(&v24, &location);
        [control setAccessibilityValueBlock:v23];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __67__VoiceOverAudioDuckingController_tableView_cellForRowAtIndexPath___block_invoke_2;
        v20[3] = &unk_278B90AC8;
        objc_copyWeak(&v21, &location);
        v22 = 1028443341;
        [v14 _setAccessibilityIncrementBlock:v20];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __67__VoiceOverAudioDuckingController_tableView_cellForRowAtIndexPath___block_invoke_3;
        v17[3] = &unk_278B90AC8;
        objc_copyWeak(&v18, &location);
        v19 = 1028443341;
        [v14 _setAccessibilityDecrementBlock:v17];
        objc_destroyWeak(&v18);
        objc_destroyWeak(&v21);
        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }
    }
  }

  return v8;
}

id __67__VoiceOverAudioDuckingController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained value];
  v2 = AXFormatFloatWithPercentage();

  return v2;
}

void __67__VoiceOverAudioDuckingController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained value];
  v4 = v3 + *(a1 + 40);

  v6 = objc_loadWeakRetained((a1 + 32));
  *&v5 = v4;
  [v6 setValue:0 animated:v5];
}

void __67__VoiceOverAudioDuckingController_tableView_cellForRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained value];
  v4 = v3 - *(a1 + 40);

  v6 = objc_loadWeakRetained((a1 + 32));
  *&v5 = v4;
  [v6 setValue:0 animated:v5];
}

- (id)voiceOverDuckingAmount:(id)amount
{
  v3 = MEMORY[0x277CCABB0];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [accessibilityDomainAccessor floatForKey:*MEMORY[0x277CE7FA8]];
  v5 = [v3 numberWithFloat:?];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = VoiceOverAudioDuckingController;
  [(VoiceOverAudioDuckingController *)&v13 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v12.receiver = self;
  v12.super_class = VoiceOverAudioDuckingController;
  v8 = [(VoiceOverAudioDuckingController *)&v12 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:@"DuckingModeValue"];

  if (v10)
  {
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v10 forKey:*MEMORY[0x277CE7FA0]];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    [(VoiceOverAudioDuckingController *)self updateTableCheckedSelection:pathCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"AXVoiceOverReloadNotification" object:0];
  }
}

- (void)updateTableCheckedSelection:(id)selection
{
  selectionCopy = selection;
  v5 = *MEMORY[0x277D3FC60];
  v11 = selectionCopy;
  v6 = [*(&self->super.super.super.super.super.super.isa + v5) numberOfRowsInSection:{objc_msgSend(selectionCopy, "section")}];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:{objc_msgSend(v11, "section")}];
      v10 = [*(&self->super.super.super.super.super.super.isa + v5) cellForRowAtIndexPath:v9];
      [v10 setChecked:{objc_msgSend(v9, "isEqual:", v11)}];
    }
  }
}

@end