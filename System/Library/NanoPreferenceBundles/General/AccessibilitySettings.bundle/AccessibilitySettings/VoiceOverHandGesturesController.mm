@interface VoiceOverHandGesturesController
- (id)_actionValueForSpecifier:(id)specifier;
- (id)_greyEventActionCustomizations;
- (id)activationGestureTitle;
- (id)handGesturesEnabled:(id)enabled;
- (id)selectedActionForDetailController:(id)controller;
- (id)specifierIdentifierForHandGestureEvent:(int64_t)event;
- (id)specifiers;
- (void)_updateGreyEventActionCustomizations:(id)customizations;
- (void)resetGreyCustomizations;
- (void)setAction:(id)action forDetailController:(id)controller;
- (void)setHandGestures:(id)gestures specifier:(id)specifier;
@end

@implementation VoiceOverHandGesturesController

- (id)specifiers
{
  v50[3] = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v48 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [emptyGroupSpecifier setProperty:v7 forKey:*MEMORY[0x277D3FF48]];

    v8 = settingsLocString(@"GREY_GESTURE_EDUCATION_ACTION", @"AccessibilitySettings-watchcontrol");
    v9 = [v8 rangeOfString:v8];
    v11 = v10;
    v46 = v8;
    [emptyGroupSpecifier setProperty:v8 forKey:*MEMORY[0x277D3FF70]];
    v52.location = v9;
    v52.length = v11;
    v12 = NSStringFromRange(v52);
    [emptyGroupSpecifier setProperty:v12 forKey:*MEMORY[0x277D3FF58]];

    v13 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [emptyGroupSpecifier setProperty:v13 forKey:*MEMORY[0x277D3FF68]];

    v14 = NSStringFromSelector(sel__didTapLearnMore);
    [emptyGroupSpecifier setProperty:v14 forKey:*MEMORY[0x277D3FF50]];

    v47 = emptyGroupSpecifier;
    [array addObject:emptyGroupSpecifier];
    v15 = MEMORY[0x277D3FAD8];
    v16 = settingsLocString(@"HAND_GESTURES", @"VoiceOverSettings");
    v17 = [v15 preferenceSpecifierNamed:v16 target:self set:sel_setHandGestures_specifier_ get:sel_handGesturesEnabled_ detail:0 cell:6 edit:0];

    [array addObject:v17];
    v18 = MEMORY[0x277D3FAD8];
    v19 = settingsLocString(@"GREY_CUSTOMIZATIONS_TITLE", @"AccessibilitySettings-watchcontrol");
    v20 = [v18 groupSpecifierWithName:v19];

    v45 = v20;
    [array addObject:v20];
    _greyEventActionCustomizations = [(VoiceOverHandGesturesController *)self _greyEventActionCustomizations];
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
        v27 = [_greyEventActionCustomizations objectForKeyedSubscript:v26];

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

        [array addObject:v25];
      }

      while (v22++ < *MEMORY[0x277D798C8]);
    }

    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [array addObject:emptyGroupSpecifier2];

    v33 = MEMORY[0x277D3FAD8];
    v34 = settingsLocString(@"GREY_RESET_CUSTOMIZATIONS_TITLE", @"AccessibilitySettings-watchcontrol");
    v35 = [v33 preferenceSpecifierNamed:v34 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v35 setButtonAction:sel_resetGreyCustomizations];
    [array addObject:v35];
    emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v37 = settingsLocString(@"HAND_GESTURE_TO_START_FOOTER", @"AccessibilitySettings-watchcontrol");
    [emptyGroupSpecifier3 setProperty:v37 forKey:*MEMORY[0x277D3FF88]];

    [array addObject:emptyGroupSpecifier3];
    v38 = MEMORY[0x277D3FAD8];
    v39 = settingsLocString(@"GREY_GESTURE_TO_START_TITLE", @"AccessibilitySettings-watchcontrol");
    v40 = [v38 preferenceSpecifierNamed:v39 target:self set:0 get:sel_activationGestureTitle detail:objc_opt_class() cell:2 edit:0];

    [v40 setIdentifier:@"ACTIVATION_GESTURE_ID"];
    [array addObject:v40];
    v41 = [array copy];
    v42 = *(&self->super.super.super.super.super.super.isa + v48);
    *(&self->super.super.super.super.super.super.isa + v48) = v41;

    v3 = *(&self->super.super.super.super.super.super.isa + v48);
  }

  v43 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)specifierIdentifierForHandGestureEvent:(int64_t)event
{
  if ((event - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_278B90CF8[event - 1];
  }
}

- (void)setHandGestures:(id)gestures specifier:(id)specifier
{
  gesturesCopy = gestures;
  bOOLValue = [gesturesCopy BOOLValue];
  v7 = *MEMORY[0x277D81E88];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v9 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v7 domainAccessor:accessibilityDomainAccessor];
  bOOLValue2 = [v9 BOOLValue];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __61__VoiceOverHandGesturesController_setHandGestures_specifier___block_invoke;
  v17 = &unk_278B909B0;
  selfCopy = self;
  v19 = gesturesCopy;
  v11 = gesturesCopy;
  v12 = _Block_copy(&v14);
  if (AXActivePairedDeviceSupportsHasEltonEnabled() && bOOLValue && bOOLValue2)
  {
    v13 = settingsLocString(@"GREY_FEATURE_NAME_VOICEOVER", @"AccessibilitySettings-elton");
    [(AccessibilityBridgeBaseController *)self presentDisableEltonAlert:v13 greyOptional:1 confirmBlock:v12 disableGreyBlock:0, v14, v15, v16, v17, selfCopy, v19];
  }

  else
  {
    v12[2](v12);
  }
}

- (id)handGesturesEnabled:(id)enabled
{
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE8028]];

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

- (id)_actionValueForSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VoiceOverHandGesturesActionKey"];

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
  defaultCustomizeGestures = [MEMORY[0x277D798D0] defaultCustomizeGestures];
  [(VoiceOverHandGesturesController *)self _updateGreyEventActionCustomizations:defaultCustomizeGestures];

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
  defaultCustomizeGestures = [MEMORY[0x277D798D0] defaultCustomizeGestures];
  v5 = [v3 dictionaryWithDictionary:defaultCustomizeGestures];

  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v7 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE8030]];

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

- (void)_updateGreyEventActionCustomizations:(id)customizations
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:customizations requiringSecureCoding:1 error:0];
  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v4 forKey:*MEMORY[0x277CE8030]];
}

- (id)activationGestureTitle
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] greyActivationGesture];
  v3 = WCNameForGreyEvent();

  return v3;
}

- (id)selectedActionForDetailController:(id)controller
{
  specifier = [controller specifier];
  userInfo = [specifier userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"VoiceOverHandGesturesGreyEventKey"];

  _greyEventActionCustomizations = [(VoiceOverHandGesturesController *)self _greyEventActionCustomizations];
  v8 = [_greyEventActionCustomizations objectForKey:v6];

  return v8;
}

- (void)setAction:(id)action forDetailController:(id)controller
{
  actionCopy = action;
  specifier = [controller specifier];
  userInfo = [specifier userInfo];
  v12 = [userInfo objectForKeyedSubscript:@"VoiceOverHandGesturesGreyEventKey"];

  v9 = MEMORY[0x277CBEB38];
  _greyEventActionCustomizations = [(VoiceOverHandGesturesController *)self _greyEventActionCustomizations];
  v11 = [v9 dictionaryWithDictionary:_greyEventActionCustomizations];

  [v11 setObject:actionCopy forKeyedSubscript:v12];
  [(VoiceOverHandGesturesController *)self _updateGreyEventActionCustomizations:v11];
}

@end