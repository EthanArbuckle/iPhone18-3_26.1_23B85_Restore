@interface WatchControlController
- (Class)_detailClassForInputSourceType:(unint64_t)type;
- (id)_descriptionForInputSource:(id)source;
- (id)_identifierForInputSourceType:(unint64_t)type;
- (id)_watchQuickActionsV2SwitchDescription;
- (id)focusMovementStyleDescription;
- (id)focusRingColorDescription;
- (id)highContrastFocusRingEnabled;
- (id)sideButtonConfirmWithWatchControl;
- (id)sleepOnWristDownEnabled;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)watchControlEnabled;
- (int)_accessibilitySecureIntentProvider;
- (void)_requestOnboardingEnrollment:(id)enrollment;
- (void)connectedDevicesDidChange:(id)change;
- (void)dealloc;
- (void)didCancelOnboarding;
- (void)didConfirmFromOnboarding;
- (void)didReceiveIncomingData:(id)data;
- (void)setHighContrastFocusRingEnabled:(id)enabled;
- (void)setSideButtonConfirmWithWatchControl:(id)control specifier:(id)specifier;
- (void)setWatchControlEnabled:(id)enabled;
- (void)viewDidLoad;
@end

@implementation WatchControlController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WatchControlController;
  [(AccessibilityBridgeBaseController *)&v4 viewDidLoad];
  mEMORY[0x277CE6A88] = [MEMORY[0x277CE6A88] sharedInstance];
  [mEMORY[0x277CE6A88] registerForIncomingData:self];
}

- (void)dealloc
{
  mEMORY[0x277CE6A88] = [MEMORY[0x277CE6A88] sharedInstance];
  [mEMORY[0x277CE6A88] deregisterForIncomingData:self];

  v4.receiver = self;
  v4.super_class = WatchControlController;
  [(AccessibilityBridgeBaseController *)&v4 dealloc];
}

- (id)specifiers
{
  v97[2] = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v93 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v6 = settingsLocString(@"WATCH_CONTROL_SWITCH_SECTION_FOOTER", @"AccessibilitySettings-watchcontrol");
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v8 = [accessibilityDomainAccessor BOOLForKey:@"VoiceOverTouchEnabled"];

    if (v8 && (-[WatchControlController watchControlEnabled](self, "watchControlEnabled"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 BOOLValue], v9, (v10 & 1) == 0))
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = settingsLocString(@"WATCH_CONTROL_VOICEOVER_INSTRUCTION", @"AccessibilitySettings-watchcontrol");
      v14 = [v12 stringWithFormat:@"%@\n\n%@", v13, v6];

      v11 = 0;
      v6 = v14;
    }

    else
    {
      v11 = 1;
    }

    v91 = v6;
    v94 = *MEMORY[0x277D3FF88];
    [emptyGroupSpecifier setProperty:v6 forKey:?];
    v92 = emptyGroupSpecifier;
    [array addObject:emptyGroupSpecifier];
    v15 = MEMORY[0x277D3FAD8];
    v16 = settingsLocString(@"WATCH_CONTROL_ROW_TITLE", @"AccessibilitySettings-watchcontrol");
    v17 = [v15 preferenceSpecifierNamed:v16 target:self set:sel_setWatchControlEnabled_ get:sel_watchControlEnabled detail:0 cell:6 edit:0];

    v18 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    v88 = *MEMORY[0x277D3FF38];
    [v17 setProperty:v18 forKey:?];

    v90 = v17;
    [array addObject:v17];
    v19 = MEMORY[0x277D3FAD8];
    v20 = settingsLocString(@"WATCH_CONTROL_INPUTS_SECTION", @"AccessibilitySettings-watchcontrol");
    v21 = [v19 groupSpecifierWithName:v20];
    v22 = array;
    [array addObject:v21];

    mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
    enabledInputSourceTypes = [mEMORY[0x277D7A910] enabledInputSourceTypes];

    v24 = 0;
    v25 = 1;
    do
    {
      v26 = v25;
      v27 = AXGetActivePairedDevice();
      IsSupportedOnDevice = WCInputSourceTypeIsSupportedOnDevice();

      if (IsSupportedOnDevice)
      {
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
        v30 = [enabledInputSourceTypes objectForKeyedSubscript:v29];
        bOOLValue = [v30 BOOLValue];

        v32 = MEMORY[0x277D3FAD8];
        v33 = WCNameForInputSourceType();
        v34 = [v32 preferenceSpecifierNamed:v33 target:self set:0 get:sel__descriptionForInputSource_ detail:-[WatchControlController _detailClassForInputSourceType:](self cell:"_detailClassForInputSourceType:" edit:{v24), 2, 0}];

        v96[0] = @"InputSource";
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
        v96[1] = @"InputSourceEnabled";
        v97[0] = v35;
        v36 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
        v97[1] = v36;
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];
        [v34 setUserInfo:v37];

        v38 = [(WatchControlController *)self _identifierForInputSourceType:v24];
        [v34 setIdentifier:v38];

        [v22 addObject:v34];
      }

      v25 = 0;
      v24 = 1;
    }

    while ((v26 & 1) != 0);
    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v22 addObject:emptyGroupSpecifier2];

    v40 = MEMORY[0x277D3FAD8];
    v41 = settingsLocString(@"WATCH_CONTROL_MOVEMENT_STYLE", @"AccessibilitySettings-watchcontrol");
    v42 = [v40 preferenceSpecifierNamed:v41 target:self set:0 get:sel_focusMovementStyleDescription detail:objc_opt_class() cell:2 edit:0];

    [v42 setIdentifier:@"SCANNING_STYLE_ID"];
    [v22 addObject:v42];
    if (AXActivePairedDeviceIsLighthouseOrLater())
    {
      emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      [v22 addObject:emptyGroupSpecifier3];

      v44 = MEMORY[0x277D3FAD8];
      v45 = settingsLocString(@"WATCH_CONTROL_SLEEP_ON_WRIST_DOWN", @"AccessibilitySettings-watchcontrol");
      v46 = [v44 preferenceSpecifierNamed:v45 target:self set:sel_setSleepOnWristDownEnabled_ get:sel_sleepOnWristDownEnabled detail:0 cell:6 edit:0];

      [v46 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
      [v22 addObject:v46];
    }

    v47 = MEMORY[0x277D3FAD8];
    v48 = settingsLocString(@"WATCH_CONTROL_APPEARANCE_SECTION", @"AccessibilitySettings-watchcontrol");
    v49 = [v47 groupSpecifierWithName:v48];
    [v22 addObject:v49];

    v50 = MEMORY[0x277D3FAD8];
    v51 = settingsLocString(@"WATCH_CONTROL_FOCUS_RING_HIGH_CONTRAST", @"AccessibilitySettings-watchcontrol");
    v52 = [v50 preferenceSpecifierNamed:v51 target:self set:sel_setHighContrastFocusRingEnabled_ get:sel_highContrastFocusRingEnabled detail:0 cell:6 edit:0];
    [v22 addObject:v52];

    v53 = MEMORY[0x277D3FAD8];
    v54 = settingsLocString(@"WATCH_CONTROL_FOCUS_RING_COLOR", @"AccessibilitySettings-watchcontrol");
    v55 = [v53 preferenceSpecifierNamed:v54 target:self set:0 get:sel_focusRingColorDescription detail:objc_opt_class() cell:2 edit:0];

    [v55 setIdentifier:@"COLOR_ID"];
    [v22 addObject:v55];
    emptyGroupSpecifier4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v22 addObject:emptyGroupSpecifier4];

    v57 = MEMORY[0x277D3FAD8];
    v58 = settingsLocString(@"WATCH_CONTROL_CUSTOMIZE_ACTION_MENU", @"AccessibilitySettings-watchcontrol");
    v59 = [v57 preferenceSpecifierNamed:v58 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v59 setIdentifier:@"CUSTOMIZE_ACTION_ID"];
    [v22 addObject:v59];
    v60 = MEMORY[0x277D3FAD8];
    v61 = settingsLocString(@"SIDE_BUTTON_CONFIRM_SECTION_TITLE", @"AccessibilitySettings-watchcontrol");
    v62 = [v60 groupSpecifierWithName:v61];

    v63 = settingsLocString(@"SIDE_BUTTON_CONFIRM_SECTION_FOOTER", @"AccessibilitySettings-watchcontrol");
    [v62 setProperty:v63 forKey:v94];

    [v22 addObject:v62];
    mEMORY[0x277CE6A88] = [MEMORY[0x277CE6A88] sharedInstance];
    connectedDevices = [mEMORY[0x277CE6A88] connectedDevices];
    v66 = [connectedDevices count];

    _accessibilitySecureIntentProvider = [(WatchControlController *)self _accessibilitySecureIntentProvider];
    v68 = MEMORY[0x277D3FAD8];
    if (_accessibilitySecureIntentProvider)
    {
      v87 = v55;
      v69 = v42;
      v70 = settingsLocString(@"SIDE_BUTTON_CONFIRM_WITH_WATCH_CONTROL", @"AccessibilitySettings-watchcontrol");
      v71 = [v68 preferenceSpecifierNamed:v70 target:self set:sel_setSideButtonConfirmWithWatchControl_specifier_ get:sel_sideButtonConfirmWithWatchControl detail:0 cell:6 edit:0];

      v72 = [MEMORY[0x277CCABB0] numberWithBool:v66 != 0];
      [v71 setProperty:v72 forKey:v88];

      v73 = *MEMORY[0x277D3FFB8];
      [v71 setProperty:@"SideButtonOptOutSpecifier" forKey:*MEMORY[0x277D3FFB8]];
      [v22 addObject:v71];
      if (v66)
      {
        accessibilityDomainAccessor2 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
        v75 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:@"WatchControlDisableSideButtonConfirm" domainAccessor:accessibilityDomainAccessor2];
        bOOLValue2 = [v75 BOOLValue];

        if (bOOLValue2)
        {
          [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:MEMORY[0x277CBEC28] forKey:@"WatchControlDisableSideButtonConfirm" reloadSpecifiers:0];
        }
      }

      v77 = 0x277D3F000;
      v42 = v69;
      v55 = v87;
    }

    else
    {
      v78 = settingsLocString(@"SIDE_BUTTON_CONFIRM_ENROLLMENT_WITH_WATCH_CONTROL", @"AccessibilitySettings-watchcontrol");
      v71 = [v68 preferenceSpecifierNamed:v78 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v71 setButtonAction:sel__requestOnboardingEnrollment_];
      v79 = [MEMORY[0x277CCABB0] numberWithBool:v66 != 0];
      [v71 setProperty:v79 forKey:v88];

      v73 = *MEMORY[0x277D3FFB8];
      [v71 setProperty:@"SideButtonEnrollmentSpecifier" forKey:*MEMORY[0x277D3FFB8]];
      [v71 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
      [v22 addObject:v71];
      v77 = 0x277D3F000uLL;
    }

    if (AXActivePairedDeviceSupportsWatchQuickActionsV2() && (AXActivePairedDeviceSupportsQuickActionsAlwaysOnState() & 1) == 0)
    {
      emptyGroupSpecifier5 = [*(v77 + 2776) emptyGroupSpecifier];
      v80 = settingsLocString(@"QUICK_ACTIONS_SWITCH_FOOTER", @"AccessibilitySettings-elton");
      [emptyGroupSpecifier5 setProperty:v80 forKey:v94];

      [v22 addObject:emptyGroupSpecifier5];
      v81 = *(v77 + 2776);
      v82 = settingsLocString(@"QUICK_ACTIONS_ROW_TITLE", @"AccessibilitySettings-quickactions");
      v83 = [v81 preferenceSpecifierNamed:v82 target:self set:0 get:sel__watchQuickActionsV2SwitchDescription detail:objc_opt_class() cell:2 edit:0];

      [v83 setProperty:@"QUICK_ACTIONS" forKey:v73];
      [v22 addObject:v83];
    }

    v84 = *(&self->super.super.super.super.super.super.isa + v93);
    *(&self->super.super.super.super.super.super.isa + v93) = v22;

    v3 = *(&self->super.super.super.super.super.super.isa + v93);
  }

  v85 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = WatchControlController;
  pathCopy = path;
  v7 = [(WatchControlController *)&v15 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(WatchControlController *)self specifierAtIndexPath:pathCopy, v15.receiver, v15.super_class];

  v9 = *MEMORY[0x277D3FFB8];
  v10 = [v8 propertyForKey:*MEMORY[0x277D3FFB8]];
  if ([v10 isEqualToString:@"SideButtonEnrollmentSpecifier"])
  {
  }

  else
  {
    v11 = [v8 propertyForKey:v9];
    v12 = [v11 isEqualToString:@"SideButtonOptOutSpecifier"];

    if (!v12)
    {
      goto LABEL_5;
    }
  }

  textLabel = [v7 textLabel];
  [textLabel setNumberOfLines:0];

LABEL_5:

  return v7;
}

- (Class)_detailClassForInputSourceType:(unint64_t)type
{
  v3 = off_278B8FFB0;
  v4 = off_278B8FFC8;
  if (type != 1)
  {
    v4 = off_278B8FFC0;
  }

  if (type)
  {
    v3 = v4;
  }

  v5 = *v3;
  v6 = objc_opt_class();

  return v6;
}

- (id)_identifierForInputSourceType:(unint64_t)type
{
  v3 = @"INPUT_SOURCE_ID";
  if (type == 1)
  {
    v3 = @"MOTION_POINTER_ID";
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"GREY_INPUT_ID";
  }
}

- (id)_descriptionForInputSource:(id)source
{
  sourceCopy = source;
  userInfo = [sourceCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"InputSource"];

  userInfo2 = [sourceCopy userInfo];

  v7 = [userInfo2 objectForKeyedSubscript:@"InputSourceEnabled"];

  v8 = 0;
  if (v5 && v7)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    bOOLValue = [v7 BOOLValue];
    if (unsignedIntegerValue == 1)
    {
      mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
      dwellControlEnabled = [mEMORY[0x277D7A910] dwellControlEnabled];

      if (!dwellControlEnabled)
      {
        v8 = 0;
        goto LABEL_12;
      }

      v13 = @"WATCH_CONTROL_DWELL_CONTROL_ENABLED_STATE";
      v14 = @"AccessibilitySettings-watchcontrol";
    }

    else
    {
      if (bOOLValue)
      {
        v13 = @"ON";
      }

      else
      {
        v13 = @"OFF";
      }

      v14 = @"AccessibilitySettings";
    }

    v8 = settingsLocString(v13, v14);
  }

LABEL_12:

  return v8;
}

- (id)watchControlEnabled
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x277D7A910], "featureEnabled")}];

  return v4;
}

- (void)setWatchControlEnabled:(id)enabled
{
  bOOLValue = [enabled BOOLValue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__WatchControlController_setWatchControlEnabled___block_invoke;
  v7[3] = &unk_278B90CD8;
  v8 = bOOLValue;
  v7[4] = self;
  v5 = _Block_copy(v7);
  if (AXActivePairedDeviceSupportsHasEltonEnabled() && bOOLValue)
  {
    v6 = settingsLocString(@"GREY_FEATURE_NAME_WATCH_CONTROL", @"AccessibilitySettings-elton");
    [(AccessibilityBridgeBaseController *)self presentDisableEltonAlert:v6 greyOptional:0 confirmBlock:v5 disableGreyBlock:0];
  }

  else
  {
    v5[2](v5);
  }
}

void __49__WatchControlController_setWatchControlEnabled___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [MEMORY[0x277D7A910] sharedInstance];
    v3 = [v2 hasShownInitialOnboarding];

    if ((v3 & 1) == 0)
    {
      v4 = [MEMORY[0x277D7A910] sharedInstance];
      [v4 setHasShownInitialOnboarding:1];

      [MEMORY[0x277D7A908] presentOnboardingFromViewController:*(a1 + 32) withObserver:*(a1 + 32)];
    }
  }

  v5 = [MEMORY[0x277D7A910] sharedInstance];
  [v5 setFeatureEnabled:*(a1 + 40)];
}

- (void)setHighContrastFocusRingEnabled:(id)enabled
{
  v3 = MEMORY[0x277D7A910];
  enabledCopy = enabled;
  sharedInstance = [v3 sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [sharedInstance setFocusRingHighContrastEnabled:bOOLValue];
}

- (id)highContrastFocusRingEnabled
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x277D7A910], "focusRingHighContrastEnabled")}];

  return v4;
}

- (id)focusRingColorDescription
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] focusRingColor];
  v3 = WCNameForCursorColor();

  return v3;
}

- (id)focusMovementStyleDescription
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] focusMovementStyle];
  v3 = WCNameForFocusMovementStyle();

  return v3;
}

- (id)sleepOnWristDownEnabled
{
  v3 = *MEMORY[0x277CE7ED0];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v3 domainAccessor:accessibilityDomainAccessor];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &unk_284E7E558;
  }

  v8 = v7;

  return v7;
}

- (void)setSideButtonConfirmWithWatchControl:(id)control specifier:(id)specifier
{
  if ([control BOOLValue])
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23BCCF000, v5, OS_LOG_TYPE_DEFAULT, "cannot enable this from Bridge", v7, 2u);
    }
  }

  else
  {
    v6 = MEMORY[0x277CBEC38];

    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v6 forKey:@"WatchControlDisableSideButtonConfirm" reloadSpecifiers:0];
  }
}

- (id)sideButtonConfirmWithWatchControl
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(WatchControlController *)self _accessibilitySecureIntentProvider]!= 0;

  return [v2 numberWithInt:v3];
}

- (int)_accessibilitySecureIntentProvider
{
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v3 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277D81E10]];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)_requestOnboardingEnrollment:(id)enrollment
{
  v4 = objc_opt_new();
  [v4 setModalInPresentation:1];
  [(WatchControlController *)self presentModalViewController:v4 withTransition:3];
}

- (id)_watchQuickActionsV2SwitchDescription
{
  if (AXActivePairedDeviceIsNapiliBOrLater() && AXActivePairedDeviceHasDoubleTapActivationGesture())
  {
    v3 = @"OFF";
  }

  else
  {
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v5 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277D81EB8]];
    intValue = [v5 intValue];

    if (intValue == 2)
    {
      v3 = @"OFF";
    }

    else
    {
      v3 = @"ON";
    }
  }

  v7 = settingsLocString(v3, @"AccessibilitySettings");

  return v7;
}

- (void)didReceiveIncomingData:(id)data
{
  v3 = [data objectForKeyedSubscript:*MEMORY[0x277CE6A78]];
  v4 = [v3 objectForKeyedSubscript:@"ASTDisableEnrollment"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

- (void)connectedDevicesDidChange:(id)change
{
  presentedViewController = [(WatchControlController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

- (void)didConfirmFromOnboarding
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] setHasShownInitialOnboarding:1];
}

- (void)didCancelOnboarding
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] setFeatureEnabled:0];

  [(WatchControlController *)self reloadSpecifiers];
}

@end