@interface VoiceOverHandGesturesController
- (id)_actionValueForSpecifier:(id)a3;
- (id)_greyEventActionCustomizations;
- (id)activationGestureTitle;
- (id)handGesturesEnabled:(id)a3;
- (id)selectedActionForDetailController:(id)a3;
- (id)specifierIdentifierForHandGestureEvent:(int64_t)a3;
- (id)specifiers;
- (void)_updateGreyEventActionCustomizations:(id)a3;
- (void)resetGreyCustomizations;
- (void)setAction:(id)a3 forDetailController:(id)a4;
- (void)setHandGestures:(id)a3 specifier:(id)a4;
@end

@implementation VoiceOverHandGesturesController

- (id)specifiers
{
  v50[3] = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v48 = *MEMORY[0x277D3FC48];
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v5 setProperty:v7 forKey:*MEMORY[0x277D3FF48]];

    v8 = settingsLocString(@"GREY_GESTURE_EDUCATION_ACTION", @"AccessibilitySettings-watchcontrol");
    v9 = [v8 rangeOfString:v8];
    v11 = v10;
    v46 = v8;
    [v5 setProperty:v8 forKey:*MEMORY[0x277D3FF70]];
    v52.location = v9;
    v52.length = v11;
    v12 = NSStringFromRange(v52);
    [v5 setProperty:v12 forKey:*MEMORY[0x277D3FF58]];

    v13 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v5 setProperty:v13 forKey:*MEMORY[0x277D3FF68]];

    v14 = NSStringFromSelector(sel__didTapLearnMore);
    [v5 setProperty:v14 forKey:*MEMORY[0x277D3FF50]];

    v47 = v5;
    [v4 addObject:v5];
    v15 = MEMORY[0x277D3FAD8];
    v16 = settingsLocString(@"HAND_GESTURES", @"VoiceOverSettings");
    v17 = [v15 preferenceSpecifierNamed:v16 target:self set:sel_setHandGestures_specifier_ get:sel_handGesturesEnabled_ detail:0 cell:6 edit:0];

    [v4 addObject:v17];
    v18 = MEMORY[0x277D3FAD8];
    v19 = settingsLocString(@"GREY_CUSTOMIZATIONS_TITLE", @"AccessibilitySettings-watchcontrol");
    v20 = [v18 groupSpecifierWithName:v19];

    v45 = v20;
    [v4 addObject:v20];
    v21 = [(VoiceOverHandGesturesController *)self _greyEventActionCustomizations];
    v22 = *MEMORY[0x277D798C0];
    if (*MEMORY[0x277D798C0] <= *MEMORY[0x277D798C8])
    {
      do
      {
        v23 = MEMORY[0x277D3FAD8];
        WCGreyEventForAXHandGestureEventUsage();
        v24 = WCNameForGreyEvent();
        v25 = [v23 preferenceSpecifierNamed:v24 target:self set:0 get:sel__actionValueForSpecifier_ detail:objc_opt_class() cell:2 edit:0];

        v26 = [MEMORY[0x277CCABB0] numberWithLong:v22];
        v27 = [v21 objectForKeyedSubscript:v26];

        v49[0] = @"VoiceOverHandGesturesGreyEventKey";
        v28 = [MEMORY[0x277CCABB0] numberWithLong:v22];
        v50[0] = v28;
        v50[1] = v27;
        v49[1] = @"VoiceOverHandGesturesActionKey";
        v49[2] = @"VoiceOverHandGesturesActionDetailDelegate";
        v50[2] = self;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
        [v25 setUserInfo:v29];

        v30 = [(VoiceOverHandGesturesController *)self specifierIdentifierForHandGestureEvent:v22];
        if (v30)
        {
          [v25 setIdentifier:v30];
        }

        [v4 addObject:v25];
      }

      while (v22++ < *MEMORY[0x277D798C8]);
    }

    v32 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v4 addObject:v32];

    v33 = MEMORY[0x277D3FAD8];
    v34 = settingsLocString(@"GREY_RESET_CUSTOMIZATIONS_TITLE", @"AccessibilitySettings-watchcontrol");
    v35 = [v33 preferenceSpecifierNamed:v34 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v35 setButtonAction:sel_resetGreyCustomizations];
    [v4 addObject:v35];
    v36 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v37 = settingsLocString(@"HAND_GESTURE_TO_START_FOOTER", @"AccessibilitySettings-watchcontrol");
    [v36 setProperty:v37 forKey:*MEMORY[0x277D3FF88]];

    [v4 addObject:v36];
    v38 = MEMORY[0x277D3FAD8];
    v39 = settingsLocString(@"GREY_GESTURE_TO_START_TITLE", @"AccessibilitySettings-watchcontrol");
    v40 = [v38 preferenceSpecifierNamed:v39 target:self set:0 get:sel_activationGestureTitle detail:objc_opt_class() cell:2 edit:0];

    [v40 setIdentifier:@"ACTIVATION_GESTURE_ID"];
    [v4 addObject:v40];
    v41 = [v4 copy];
    v42 = *(&self->super.super.super.super.super.super.isa + v48);
    *(&self->super.super.super.super.super.super.isa + v48) = v41;

    v3 = *(&self->super.super.super.super.super.super.isa + v48);
  }

  v43 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)specifierIdentifierForHandGestureEvent:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_278B90CF8[a3 - 1];
  }
}

- (void)setHandGestures:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x277D81E88];
  v8 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v9 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v7 domainAccessor:v8];
  v10 = [v9 BOOLValue];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __61__VoiceOverHandGesturesController_setHandGestures_specifier___block_invoke;
  v17 = &unk_278B909B0;
  v18 = self;
  v19 = v5;
  v11 = v5;
  v12 = _Block_copy(&v14);
  if (AXActivePairedDeviceSupportsHasEltonEnabled() && v6 && v10)
  {
    v13 = settingsLocString(@"GREY_FEATURE_NAME_VOICEOVER", @"AccessibilitySettings-elton");
    [(AccessibilityBridgeBaseController *)self presentDisableEltonAlert:v13 greyOptional:1 confirmBlock:v12 disableGreyBlock:0, v14, v15, v16, v17, v18, v19];
  }

  else
  {
    v12[2](v12);
  }
}

- (id)handGesturesEnabled:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 objectForKey:*MEMORY[0x277CE8028]];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEC28];
  }

  return v5;
}

- (id)_actionValueForSpecifier:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"VoiceOverHandGesturesActionKey"];

  if (v4)
  {
    v5 = [MEMORY[0x277D798D0] nameForAction:v4];
    v6 = settingsLocString(v5, @"VoiceOverSettings");
    if (([v5 isEqualToString:*MEMORY[0x277D79908]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277D79900]))
    {
      v7 = WCNameForAction();

      v6 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)resetGreyCustomizations
{
  v3 = [MEMORY[0x277D798D0] defaultCustomizeGestures];
  [(VoiceOverHandGesturesController *)self _updateGreyEventActionCustomizations:v3];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__VoiceOverHandGesturesController_resetGreyCustomizations__block_invoke;
  block[3] = &unk_278B90C98;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_greyEventActionCustomizations
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [MEMORY[0x277D798D0] defaultCustomizeGestures];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v7 = [v6 objectForKey:*MEMORY[0x277CE8030]];

  if (v7)
  {
    v8 = MEMORY[0x277CCAAC8];
    v9 = objc_opt_class();
    v10 = [v8 unarchivedDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() fromData:v7 error:0];
    if ([v10 count])
    {
      [v5 addEntriesFromDictionary:v10];
    }
  }

  v11 = [v5 copy];

  return v11;
}

- (void)_updateGreyEventActionCustomizations:(id)a3
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v4 forKey:*MEMORY[0x277CE8030]];
}

- (id)activationGestureTitle
{
  v2 = [MEMORY[0x277D7A910] sharedInstance];
  [v2 greyActivationGesture];
  v3 = WCNameForGreyEvent();

  return v3;
}

- (id)selectedActionForDetailController:(id)a3
{
  v4 = [a3 specifier];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"VoiceOverHandGesturesGreyEventKey"];

  v7 = [(VoiceOverHandGesturesController *)self _greyEventActionCustomizations];
  v8 = [v7 objectForKey:v6];

  return v8;
}

- (void)setAction:(id)a3 forDetailController:(id)a4
{
  v6 = a3;
  v7 = [a4 specifier];
  v8 = [v7 userInfo];
  v12 = [v8 objectForKeyedSubscript:@"VoiceOverHandGesturesGreyEventKey"];

  v9 = MEMORY[0x277CBEB38];
  v10 = [(VoiceOverHandGesturesController *)self _greyEventActionCustomizations];
  v11 = [v9 dictionaryWithDictionary:v10];

  [v11 setObject:v6 forKeyedSubscript:v12];
  [(VoiceOverHandGesturesController *)self _updateGreyEventActionCustomizations:v11];
}

@end