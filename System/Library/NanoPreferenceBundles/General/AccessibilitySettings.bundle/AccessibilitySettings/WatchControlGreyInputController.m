@interface WatchControlGreyInputController
- (BOOL)canShowActionGroup:(unint64_t)a3 forDetailController:(id)a4;
- (id)_actionValueForSpecifier:(id)a3;
- (id)activationGestureTitle;
- (id)greyQuickActionsEnabled;
- (id)inputSourceCustomizationSpecifiers;
- (id)selectedCustomActionIdentifierForCustomActionType:(int64_t)a3 forDetailController:(id)a4;
- (id)showDetectedGestureBanner;
- (id)specifierIdentifierForGreyEvent:(int64_t)a3;
- (unint64_t)selectedActionForDetailController:(id)a3;
- (void)customizeEnableInputSourceGroupSpecifier:(id)a3;
- (void)resetGreyCustomizations;
- (void)setAction:(unint64_t)a3 forDetailController:(id)a4;
- (void)setCustomActionType:(int64_t)a3 withCustomActionIdentifier:(id)a4 forDetailController:(id)a5;
- (void)setShowDetectedGestureBanner:(id)a3;
@end

@implementation WatchControlGreyInputController

- (id)specifierIdentifierForGreyEvent:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_278B90B98[a3];
  }
}

- (id)inputSourceCustomizationSpecifiers
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277D3FAD8];
  v5 = settingsLocString(@"GREY_CUSTOMIZATIONS_TITLE", @"AccessibilitySettings-watchcontrol");
  v6 = [v4 groupSpecifierWithName:v5];
  v45 = v3;
  v7 = v3;
  v8 = 0x277D3F000uLL;
  [v7 addObject:v6];

  v9 = [MEMORY[0x277D7A910] sharedInstance];
  v44 = [v9 greyEventActionCustomizations];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = WCAvailableGreyEvents();
  v46 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v46)
  {
    v43 = *v48;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v48 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v47 + 1) + 8 * i) unsignedIntegerValue];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
        v13 = [v44 objectForKeyedSubscript:v12];
        v14 = [v13 unsignedIntegerValue];

        v15 = v8;
        v16 = *(v8 + 2776);
        v17 = WCNameForGreyEvent();
        v18 = [v16 preferenceSpecifierNamed:v17 target:self set:0 get:sel__actionValueForSpecifier_ detail:objc_opt_class() cell:2 edit:0];

        v51[0] = @"GreyEvent";
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
        v52[0] = v19;
        v51[1] = @"Action";
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
        v51[2] = @"ActionDetailDelegate";
        v52[1] = v20;
        v52[2] = self;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
        [v18 setUserInfo:v21];

        v22 = [(WatchControlGreyInputController *)self specifierIdentifierForGreyEvent:v11];
        if (v22)
        {
          [v18 setIdentifier:v22];
        }

        [v45 addObject:v18];

        v8 = v15;
      }

      v46 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v46);
  }

  [*(v8 + 2776) emptyGroupSpecifier];
  v24 = v23 = v8;
  [v45 addObject:v24];

  v25 = *(v23 + 2776);
  v26 = settingsLocString(@"GREY_RESET_CUSTOMIZATIONS_TITLE", @"AccessibilitySettings-watchcontrol");
  v27 = [v25 preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v27 setButtonAction:sel_resetGreyCustomizations];
  [v45 addObject:v27];
  v28 = [*(v23 + 2776) emptyGroupSpecifier];
  v29 = settingsLocString(@"GREY_GESTURE_TO_START_FOOTER", @"AccessibilitySettings-watchcontrol");
  [v28 setProperty:v29 forKey:*MEMORY[0x277D3FF88]];

  [v45 addObject:v28];
  v30 = *(v23 + 2776);
  v31 = settingsLocString(@"GREY_GESTURE_TO_START_TITLE", @"AccessibilitySettings-watchcontrol");
  v32 = [v30 preferenceSpecifierNamed:v31 target:self set:0 get:sel_activationGestureTitle detail:objc_opt_class() cell:2 edit:0];

  [v32 setIdentifier:@"ACTIVATION_GESTURE_ID"];
  [v45 addObject:v32];
  v33 = AXGetActivePairedDevice();
  v34 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"93EA0155-DFC4-4F9D-B8F0-DECC5B9C0C1D"];
  v35 = [v33 supportsCapability:v34];

  if ((v35 & 1) == 0)
  {
    v36 = [*(v23 + 2776) emptyGroupSpecifier];
    [v45 addObject:v36];

    v37 = *(v23 + 2776);
    v38 = settingsLocString(@"GREY_QUICK_ACTIONS_SWITCH", @"AccessibilitySettings-watchcontrol");
    v39 = [v37 preferenceSpecifierNamed:v38 target:self set:0 get:sel_greyQuickActionsEnabled detail:objc_opt_class() cell:2 edit:0];
    [v45 addObject:v39];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v45;
}

- (void)customizeEnableInputSourceGroupSpecifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setProperty:v6 forKey:*MEMORY[0x277D3FF48]];

  v13 = settingsLocString(@"GREY_GESTURE_EDUCATION_ACTION", @"AccessibilitySettings-watchcontrol");
  v7 = [v13 rangeOfString:v13];
  v9 = v8;
  [v4 setProperty:v13 forKey:*MEMORY[0x277D3FF70]];
  v15.location = v7;
  v15.length = v9;
  v10 = NSStringFromRange(v15);
  [v4 setProperty:v10 forKey:*MEMORY[0x277D3FF58]];

  v11 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v4 setProperty:v11 forKey:*MEMORY[0x277D3FF68]];

  v12 = NSStringFromSelector(sel__didTapLearnMore);
  [v4 setProperty:v12 forKey:*MEMORY[0x277D3FF50]];
}

- (id)_actionValueForSpecifier:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"GreyEvent"];

  v6 = [v3 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"Action"];

  v8 = 0;
  if (v5 && v7)
  {
    if ([v7 unsignedIntegerValue] == 10020)
    {
      v9 = [MEMORY[0x277D7A910] sharedInstance];
      v10 = [v9 greyEventCustomActionCustomizations];
      v11 = [v10 objectForKey:v5];

      WCRetrieveCustomActionFromPayload();
      v8 = 0;
    }

    else
    {
      v8 = WCNameForAction();
    }
  }

  return v8;
}

- (void)resetGreyCustomizations
{
  v3 = [MEMORY[0x277D7A910] sharedInstance];
  [v3 resetGreyEventActionCustomizations];

  [(WatchControlGreyInputController *)self reloadSpecifiers];
}

- (id)activationGestureTitle
{
  v2 = [MEMORY[0x277D7A910] sharedInstance];
  [v2 greyActivationGesture];
  v3 = WCNameForGreyEvent();

  return v3;
}

- (id)greyQuickActionsEnabled
{
  v2 = [MEMORY[0x277D7A910] sharedInstance];
  v3 = [v2 greyQuickActionsEnabled];

  if (v3)
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"AccessibilitySettings");

  return v5;
}

- (id)showDetectedGestureBanner
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "showDetectedGestureBanner")}];

  return v4;
}

- (void)setShowDetectedGestureBanner:(id)a3
{
  v3 = MEMORY[0x277D7A910];
  v4 = a3;
  v6 = [v3 sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setShowDetectedGestureBanner:v5];
}

- (unint64_t)selectedActionForDetailController:(id)a3
{
  v3 = [a3 greyEvent];
  v4 = [MEMORY[0x277D7A910] sharedInstance];
  v5 = [v4 greyEventActionCustomizations];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 unsignedIntegerValue];

  return v8;
}

- (BOOL)canShowActionGroup:(unint64_t)a3 forDetailController:(id)a4
{
  if (a3 != 10002)
  {
    return 1;
  }

  v4 = AXGetActivePairedDevice();
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"A334D6D2-9BEC-414E-BD6C-8AC1E5FB8CA3"];
  v6 = [v4 supportsCapability:v5];

  return v6;
}

- (void)setAction:(unint64_t)a3 forDetailController:(id)a4
{
  v5 = [a4 greyEvent];
  v6 = [MEMORY[0x277D7A910] sharedInstance];
  [v6 setAction:a3 forGreyEvent:v5];
}

- (id)selectedCustomActionIdentifierForCustomActionType:(int64_t)a3 forDetailController:(id)a4
{
  v5 = [a4 greyEvent];
  v6 = [MEMORY[0x277D7A910] sharedInstance];
  v7 = [v6 greyEventCustomActionCustomizations];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = WCRetrieveCustomActionFromPayload();
    v11 = 0;
    v12 = v11;
    if (v10)
    {
      v13 = a3 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (void)setCustomActionType:(int64_t)a3 withCustomActionIdentifier:(id)a4 forDetailController:(id)a5
{
  v7 = a4;
  v8 = [a5 greyEvent];
  v9 = [MEMORY[0x277D7A910] sharedInstance];
  [v9 setCustomActionType:a3 withCustomActionIdentifier:v7 forGreyEvent:v8];
}

@end