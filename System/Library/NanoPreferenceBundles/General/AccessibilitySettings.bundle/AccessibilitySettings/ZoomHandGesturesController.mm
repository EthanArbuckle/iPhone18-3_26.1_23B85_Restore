@interface ZoomHandGesturesController
- (ZoomHandGesturesController)init;
- (id)_actionValueForSpecifier:(id)specifier;
- (id)_greyEventActionCustomizations;
- (id)activationGestureTitle;
- (id)handGesturesEnabled:(id)enabled;
- (id)selectedActionForDetailController:(id)controller;
- (id)specifierIdentifierForGreyEvent:(int64_t)event;
- (id)specifiers;
- (void)_updateGreyEventActionCustomizations:(id)customizations;
- (void)resetGreyCustomizations;
- (void)setAction:(id)action forDetailController:(id)controller;
- (void)setHandGestures:(id)gestures specifier:(id)specifier;
@end

@implementation ZoomHandGesturesController

- (ZoomHandGesturesController)init
{
  v7.receiver = self;
  v7.super_class = ZoomHandGesturesController;
  v2 = [(AccessibilityBridgeBaseController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D2BA58]);
    v4 = [v3 initWithDomain:*MEMORY[0x277D81ED0]];
    zoomDomainAccessor = v2->_zoomDomainAccessor;
    v2->_zoomDomainAccessor = v4;
  }

  return v2;
}

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
    v16 = settingsLocString(@"HAND_GESTURES", @"ZoomSettings");
    v17 = [v15 preferenceSpecifierNamed:v16 target:self set:sel_setHandGestures_specifier_ get:sel_handGesturesEnabled_ detail:0 cell:6 edit:0];

    [array addObject:v17];
    v18 = MEMORY[0x277D3FAD8];
    v19 = settingsLocString(@"GREY_CUSTOMIZATIONS_TITLE", @"AccessibilitySettings-watchcontrol");
    v20 = [v18 groupSpecifierWithName:v19];

    v45 = v20;
    [array addObject:v20];
    _greyEventActionCustomizations = [(ZoomHandGesturesController *)self _greyEventActionCustomizations];
    v22 = *MEMORY[0x277D7EA20];
    if (*MEMORY[0x277D7EA20] <= *MEMORY[0x277D7EA28])
    {
      do
      {
        v23 = MEMORY[0x277D3FAD8];
        WCGreyEventForAXHandGestureEventUsage();
        v24 = WCNameForGreyEvent();
        v25 = [v23 preferenceSpecifierNamed:v24 target:self set:0 get:sel__actionValueForSpecifier_ detail:objc_opt_class() cell:2 edit:0];

        v26 = [MEMORY[0x277CCABB0] numberWithLong:v22];
        v27 = [_greyEventActionCustomizations objectForKeyedSubscript:v26];

        v49[0] = @"ZoomHandGesturesGreyEventKey";
        v28 = [MEMORY[0x277CCABB0] numberWithLong:v22];
        v50[0] = v28;
        v50[1] = v27;
        v49[1] = @"ZoomHandGesturesActionKey";
        v49[2] = @"ZoomHandGesturesActionDetailDelegate";
        v50[2] = self;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
        [v25 setUserInfo:v29];

        v30 = [(ZoomHandGesturesController *)self specifierIdentifierForGreyEvent:v22];
        if (v30)
        {
          [v25 setIdentifier:v30];
        }

        [array addObject:v25];
      }

      while (v22++ < *MEMORY[0x277D7EA28]);
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

- (id)specifierIdentifierForGreyEvent:(int64_t)event
{
  if ((event - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_278B90D68[event - 1];
  }
}

- (void)setHandGestures:(id)gestures specifier:(id)specifier
{
  gesturesCopy = gestures;
  bOOLValue = [gesturesCopy BOOLValue];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v8 = [accessibilityDomainAccessor BOOLForKey:@"ZoomTouchEnabled"];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __56__ZoomHandGesturesController_setHandGestures_specifier___block_invoke;
  v15 = &unk_278B909B0;
  selfCopy = self;
  v17 = gesturesCopy;
  v9 = gesturesCopy;
  v10 = _Block_copy(&v12);
  if (AXActivePairedDeviceSupportsHasEltonEnabled() && bOOLValue && v8)
  {
    v11 = settingsLocString(@"GREY_FEATURE_NAME_ZOOM", @"AccessibilitySettings-elton");
    [(AccessibilityBridgeBaseController *)self presentDisableEltonAlert:v11 greyOptional:1 confirmBlock:v10 disableGreyBlock:0, v12, v13, v14, v15, selfCopy, v17];
  }

  else
  {
    v10[2](v10);
  }
}

void __56__ZoomHandGesturesController_setHandGestures_specifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *MEMORY[0x277CE8038];
  v4 = [v1 zoomDomainAccessor];
  [v1 setGizmoPref:v2 forKey:v3 domainAccessor:v4];
}

- (id)handGesturesEnabled:(id)enabled
{
  v4 = *MEMORY[0x277CE8038];
  zoomDomainAccessor = [(ZoomHandGesturesController *)self zoomDomainAccessor];
  v6 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v4 domainAccessor:zoomDomainAccessor];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  return v7;
}

- (id)_actionValueForSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"ZoomHandGesturesActionKey"];

  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
    v6 = [MEMORY[0x277D7EA40] nameForAction:unsignedIntegerValue];
    v7 = settingsLocString(v6, @"ZoomSettings");
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)resetGreyCustomizations
{
  defaultCustomizeGestures = [MEMORY[0x277D7EA40] defaultCustomizeGestures];
  [(ZoomHandGesturesController *)self _updateGreyEventActionCustomizations:defaultCustomizeGestures];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ZoomHandGesturesController_resetGreyCustomizations__block_invoke;
  block[3] = &unk_278B90C98;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_greyEventActionCustomizations
{
  v3 = MEMORY[0x277CBEB38];
  defaultCustomizeGestures = [MEMORY[0x277D7EA40] defaultCustomizeGestures];
  v5 = [v3 dictionaryWithDictionary:defaultCustomizeGestures];

  v6 = *MEMORY[0x277CE8040];
  zoomDomainAccessor = [(ZoomHandGesturesController *)self zoomDomainAccessor];
  v8 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v6 domainAccessor:zoomDomainAccessor];

  if (v8)
  {
    v9 = MEMORY[0x277CCAAC8];
    v10 = objc_opt_class();
    v11 = [v9 unarchivedDictionaryWithKeysOfClass:v10 objectsOfClass:objc_opt_class() fromData:v8 error:0];
    if ([v11 count])
    {
      [v5 addEntriesFromDictionary:v11];
    }
  }

  v12 = [v5 copy];

  return v12;
}

- (void)_updateGreyEventActionCustomizations:(id)customizations
{
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:customizations requiringSecureCoding:1 error:0];
  v4 = *MEMORY[0x277CE8040];
  zoomDomainAccessor = [(ZoomHandGesturesController *)self zoomDomainAccessor];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:v6 forKey:v4 domainAccessor:zoomDomainAccessor];
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
  v6 = [userInfo objectForKeyedSubscript:@"ZoomHandGesturesGreyEventKey"];

  _greyEventActionCustomizations = [(ZoomHandGesturesController *)self _greyEventActionCustomizations];
  v8 = [_greyEventActionCustomizations objectForKey:v6];

  return v8;
}

- (void)setAction:(id)action forDetailController:(id)controller
{
  actionCopy = action;
  specifier = [controller specifier];
  userInfo = [specifier userInfo];
  v12 = [userInfo objectForKeyedSubscript:@"ZoomHandGesturesGreyEventKey"];

  v9 = MEMORY[0x277CBEB38];
  _greyEventActionCustomizations = [(ZoomHandGesturesController *)self _greyEventActionCustomizations];
  v11 = [v9 dictionaryWithDictionary:_greyEventActionCustomizations];

  [v11 setObject:actionCopy forKeyedSubscript:v12];
  [(ZoomHandGesturesController *)self _updateGreyEventActionCustomizations:v11];
}

@end