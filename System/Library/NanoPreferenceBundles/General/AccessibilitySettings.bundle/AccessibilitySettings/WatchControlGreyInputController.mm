@interface WatchControlGreyInputController
- (BOOL)canShowActionGroup:(unint64_t)group forDetailController:(id)controller;
- (id)_actionValueForSpecifier:(id)specifier;
- (id)activationGestureTitle;
- (id)greyQuickActionsEnabled;
- (id)inputSourceCustomizationSpecifiers;
- (id)selectedCustomActionIdentifierForCustomActionType:(int64_t)type forDetailController:(id)controller;
- (id)showDetectedGestureBanner;
- (id)specifierIdentifierForGreyEvent:(int64_t)event;
- (unint64_t)selectedActionForDetailController:(id)controller;
- (void)customizeEnableInputSourceGroupSpecifier:(id)specifier;
- (void)resetGreyCustomizations;
- (void)setAction:(unint64_t)action forDetailController:(id)controller;
- (void)setCustomActionType:(int64_t)type withCustomActionIdentifier:(id)identifier forDetailController:(id)controller;
- (void)setShowDetectedGestureBanner:(id)banner;
@end

@implementation WatchControlGreyInputController

- (id)specifierIdentifierForGreyEvent:(int64_t)event
{
  if (event > 3)
  {
    return 0;
  }

  else
  {
    return off_278B90B98[event];
  }
}

- (id)inputSourceCustomizationSpecifiers
{
  v54 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277D3FAD8];
  v5 = settingsLocString(@"GREY_CUSTOMIZATIONS_TITLE", @"AccessibilitySettings-watchcontrol");
  v6 = [v4 groupSpecifierWithName:v5];
  v45 = array;
  v7 = array;
  v8 = 0x277D3F000uLL;
  [v7 addObject:v6];

  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  greyEventActionCustomizations = [mEMORY[0x277D7A910] greyEventActionCustomizations];

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

        unsignedIntegerValue = [*(*(&v47 + 1) + 8 * i) unsignedIntegerValue];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:unsignedIntegerValue];
        v13 = [greyEventActionCustomizations objectForKeyedSubscript:v12];
        unsignedIntegerValue2 = [v13 unsignedIntegerValue];

        v15 = v8;
        v16 = *(v8 + 2776);
        v17 = WCNameForGreyEvent();
        v18 = [v16 preferenceSpecifierNamed:v17 target:self set:0 get:sel__actionValueForSpecifier_ detail:objc_opt_class() cell:2 edit:0];

        v51[0] = @"GreyEvent";
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:unsignedIntegerValue];
        v52[0] = v19;
        v51[1] = @"Action";
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
        v51[2] = @"ActionDetailDelegate";
        v52[1] = v20;
        v52[2] = self;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
        [v18 setUserInfo:v21];

        v22 = [(WatchControlGreyInputController *)self specifierIdentifierForGreyEvent:unsignedIntegerValue];
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
  emptyGroupSpecifier = [*(v23 + 2776) emptyGroupSpecifier];
  v29 = settingsLocString(@"GREY_GESTURE_TO_START_FOOTER", @"AccessibilitySettings-watchcontrol");
  [emptyGroupSpecifier setProperty:v29 forKey:*MEMORY[0x277D3FF88]];

  [v45 addObject:emptyGroupSpecifier];
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
    emptyGroupSpecifier2 = [*(v23 + 2776) emptyGroupSpecifier];
    [v45 addObject:emptyGroupSpecifier2];

    v37 = *(v23 + 2776);
    v38 = settingsLocString(@"GREY_QUICK_ACTIONS_SWITCH", @"AccessibilitySettings-watchcontrol");
    v39 = [v37 preferenceSpecifierNamed:v38 target:self set:0 get:sel_greyQuickActionsEnabled detail:objc_opt_class() cell:2 edit:0];
    [v45 addObject:v39];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v45;
}

- (void)customizeEnableInputSourceGroupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [specifierCopy setProperty:v6 forKey:*MEMORY[0x277D3FF48]];

  v13 = settingsLocString(@"GREY_GESTURE_EDUCATION_ACTION", @"AccessibilitySettings-watchcontrol");
  v7 = [v13 rangeOfString:v13];
  v9 = v8;
  [specifierCopy setProperty:v13 forKey:*MEMORY[0x277D3FF70]];
  v15.location = v7;
  v15.length = v9;
  v10 = NSStringFromRange(v15);
  [specifierCopy setProperty:v10 forKey:*MEMORY[0x277D3FF58]];

  v11 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [specifierCopy setProperty:v11 forKey:*MEMORY[0x277D3FF68]];

  v12 = NSStringFromSelector(sel__didTapLearnMore);
  [specifierCopy setProperty:v12 forKey:*MEMORY[0x277D3FF50]];
}

- (id)_actionValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"GreyEvent"];

  userInfo2 = [specifierCopy userInfo];

  v7 = [userInfo2 objectForKeyedSubscript:@"Action"];

  v8 = 0;
  if (v5 && v7)
  {
    if ([v7 unsignedIntegerValue] == 10020)
    {
      mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
      greyEventCustomActionCustomizations = [mEMORY[0x277D7A910] greyEventCustomActionCustomizations];
      v11 = [greyEventCustomActionCustomizations objectForKey:v5];

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
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] resetGreyEventActionCustomizations];

  [(WatchControlGreyInputController *)self reloadSpecifiers];
}

- (id)activationGestureTitle
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] greyActivationGesture];
  v3 = WCNameForGreyEvent();

  return v3;
}

- (id)greyQuickActionsEnabled
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  greyQuickActionsEnabled = [mEMORY[0x277D7A910] greyQuickActionsEnabled];

  if (greyQuickActionsEnabled)
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
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x277D7A910], "showDetectedGestureBanner")}];

  return v4;
}

- (void)setShowDetectedGestureBanner:(id)banner
{
  v3 = MEMORY[0x277D7A910];
  bannerCopy = banner;
  sharedInstance = [v3 sharedInstance];
  bOOLValue = [bannerCopy BOOLValue];

  [sharedInstance setShowDetectedGestureBanner:bOOLValue];
}

- (unint64_t)selectedActionForDetailController:(id)controller
{
  greyEvent = [controller greyEvent];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  greyEventActionCustomizations = [mEMORY[0x277D7A910] greyEventActionCustomizations];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:greyEvent];
  v7 = [greyEventActionCustomizations objectForKey:v6];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)canShowActionGroup:(unint64_t)group forDetailController:(id)controller
{
  if (group != 10002)
  {
    return 1;
  }

  v4 = AXGetActivePairedDevice();
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"A334D6D2-9BEC-414E-BD6C-8AC1E5FB8CA3"];
  v6 = [v4 supportsCapability:v5];

  return v6;
}

- (void)setAction:(unint64_t)action forDetailController:(id)controller
{
  greyEvent = [controller greyEvent];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] setAction:action forGreyEvent:greyEvent];
}

- (id)selectedCustomActionIdentifierForCustomActionType:(int64_t)type forDetailController:(id)controller
{
  greyEvent = [controller greyEvent];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  greyEventCustomActionCustomizations = [mEMORY[0x277D7A910] greyEventCustomActionCustomizations];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:greyEvent];
  v9 = [greyEventCustomActionCustomizations objectForKey:v8];

  if (v9)
  {
    v10 = WCRetrieveCustomActionFromPayload();
    v11 = 0;
    v12 = v11;
    if (v10)
    {
      v13 = type == 0;
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

- (void)setCustomActionType:(int64_t)type withCustomActionIdentifier:(id)identifier forDetailController:(id)controller
{
  identifierCopy = identifier;
  greyEvent = [controller greyEvent];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] setCustomActionType:type withCustomActionIdentifier:identifierCopy forGreyEvent:greyEvent];
}

@end