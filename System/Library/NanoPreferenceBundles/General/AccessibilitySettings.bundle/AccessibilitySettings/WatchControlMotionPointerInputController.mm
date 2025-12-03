@interface WatchControlMotionPointerInputController
- (double)maximumValueForSpecifier:(id)specifier;
- (double)minimumValueForSpecifier:(id)specifier;
- (double)valueForSpecifier:(id)specifier;
- (id)_actionValueForSpecifier:(id)specifier;
- (id)inputSourceCustomizationSpecifiers;
- (id)motionPointerSensitivity;
- (id)specifierIdentifierForPointerEdge:(int64_t)edge;
- (id)stringValueForSpecifier:(id)specifier;
- (unint64_t)selectedActionForDetailController:(id)controller;
- (void)resetMotionPointerEdgeCustomizations;
- (void)setAction:(unint64_t)action forDetailController:(id)controller;
- (void)setMotionPointerSensitivity:(id)sensitivity;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WatchControlMotionPointerInputController

- (id)inputSourceCustomizationSpecifiers
{
  v74[4] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277D3FAD8];
  v5 = settingsLocString(@"WATCH_CONTROL_MOTION_POINTER_SENSITIVITY", @"AccessibilitySettings-watchcontrol");
  v6 = [v4 groupSpecifierWithName:v5];
  [array addObject:v6];

  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:sel_setMotionPointerSensitivity_ get:sel_motionPointerSensitivity detail:0 cell:5 edit:0];
  v8 = MEMORY[0x277CBEC38];
  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D400C8]];
  v9 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] motionPointerSensitivityMin];
  v11 = [v9 numberWithFloat:?];
  [v7 setProperty:v11 forKey:*MEMORY[0x277D3FEC0]];

  v12 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910]2 = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910]2 motionPointerSensitivityMax];
  v14 = [v12 numberWithFloat:?];
  [v7 setProperty:v14 forKey:*MEMORY[0x277D3FEB8]];

  v15 = AXTortoiseImage();
  [v7 setProperty:v15 forKey:*MEMORY[0x277D400D0]];

  v16 = AXHareImage();
  [v7 setProperty:v16 forKey:*MEMORY[0x277D400E0]];

  v68 = v7;
  [array addObject:v7];
  v17 = MEMORY[0x277D3FAD8];
  v18 = settingsLocString(@"WATCH_CONTROL_MOTION_POINTER_ACTIVATION_DURATION", @"AccessibilitySettings-watchcontrol");
  v19 = [v17 groupSpecifierWithName:v18];
  [array addObject:v19];

  selfCopy = self;
  v20 = [MEMORY[0x277D3FAD8] ax_stepperSpecifierWithDelegate:self];
  [v20 setIdentifier:@"ActivationDurationSpecifier"];
  v67 = v20;
  [array addObject:v20];
  v21 = MEMORY[0x277D3FAD8];
  v22 = settingsLocString(@"WATCH_CONTROL_MOTION_POINTER_MOVEMENT_TOLERANCE", @"AccessibilitySettings-watchcontrol");
  v23 = [v21 groupSpecifierWithName:v22];

  v24 = v8;
  v25 = array;
  [v23 setProperty:v24 forKey:*MEMORY[0x277D3FFE8]];
  [array addObject:v23];
  mEMORY[0x277D7A910]3 = [MEMORY[0x277D7A910] sharedInstance];
  motionPointerMovementTolerance = [mEMORY[0x277D7A910]3 motionPointerMovementTolerance];

  v28 = 0;
  v29 = 0;
  v71 = *MEMORY[0x277D401A8];
  do
  {
    v30 = MEMORY[0x277D3FAD8];
    v31 = WCNameForMotionPointerMovementTolerance();
    v32 = [v30 preferenceSpecifierNamed:v31 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
    [v32 setProperty:v33 forKey:v71];

    [v25 addObject:v32];
    if (motionPointerMovementTolerance == v29)
    {
      v34 = v32;

      v28 = v34;
    }

    ++v29;
  }

  while (v29 != 3);
  v65 = v28;
  v66 = v23;
  [v23 setProperty:v28 forKey:*MEMORY[0x277D40090]];
  v35 = MEMORY[0x277D3FAD8];
  v36 = settingsLocString(@"WATCH_CONTROL_MOTION_POINTER_EDGE_BEHAVIOR_TITLE", @"AccessibilitySettings-watchcontrol");
  v37 = [v35 preferenceSpecifierNamed:v36 target:selfCopy set:0 get:0 detail:0 cell:0 edit:0];
  [v25 addObject:v37];

  mEMORY[0x277D7A910]4 = [MEMORY[0x277D7A910] sharedInstance];
  motionPointerEdgeActionCustomizations = [mEMORY[0x277D7A910]4 motionPointerEdgeActionCustomizations];

  for (i = 0; i != 4; ++i)
  {
    v40 = v25;
    v41 = [MEMORY[0x277CCABB0] numberWithInteger:i];
    v42 = [motionPointerEdgeActionCustomizations objectForKeyedSubscript:v41];
    unsignedIntegerValue = [v42 unsignedIntegerValue];

    v44 = MEMORY[0x277D3FAD8];
    v45 = WCNameForMotionPointerEdge();
    v46 = [v44 preferenceSpecifierNamed:v45 target:selfCopy set:0 get:sel__actionValueForSpecifier_ detail:objc_opt_class() cell:2 edit:0];

    v47 = WCNameForAction();
    [v46 setProperty:v47 forKey:v71];

    v73[0] = @"MotionPointerEdge";
    v48 = [MEMORY[0x277CCABB0] numberWithInteger:i];
    v74[0] = v48;
    v73[1] = @"Action";
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    v74[1] = v49;
    v74[2] = selfCopy;
    v73[2] = @"ActionDetailDelegate";
    v73[3] = @"AdditionalActions";
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:WCDefaultActionForMotionPointerEdge()];
    v72 = v50;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
    v74[3] = v51;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:4];
    [v46 setUserInfo:v52];

    v53 = [(WatchControlMotionPointerInputController *)selfCopy specifierIdentifierForPointerEdge:i];
    if (v53)
    {
      [v46 setIdentifier:v53];
    }

    v25 = v40;
    [v40 addObject:v46];
  }

  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v40 addObject:emptyGroupSpecifier];

  v55 = MEMORY[0x277D3FAD8];
  v56 = settingsLocString(@"WATCH_CONTROL_MOTION_POINTER_EDGE_RESET_CUSTOMIZATIONS", @"AccessibilitySettings-watchcontrol");
  v57 = [v55 preferenceSpecifierNamed:v56 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];

  [v57 setButtonAction:sel_resetMotionPointerEdgeCustomizations];
  [v40 addObject:v57];
  emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v40 addObject:emptyGroupSpecifier2];

  v59 = MEMORY[0x277D3FAD8];
  v60 = settingsLocString(@"WATCH_CONTROL_DWELL_CONTROL_TITLE", @"AccessibilitySettings-watchcontrol");
  v61 = [v59 preferenceSpecifierNamed:v60 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v61 setIdentifier:@"DWELL_CONTROL_ID"];
  [v25 addObject:v61];
  v62 = v25;

  v63 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)specifierIdentifierForPointerEdge:(int64_t)edge
{
  if (edge > 3)
  {
    return 0;
  }

  else
  {
    return off_278B90D88[edge];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = WatchControlMotionPointerInputController;
  pathCopy = path;
  [(WatchControlMotionPointerInputController *)&v16 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(WatchControlMotionPointerInputController *)self indexForIndexPath:pathCopy, v16.receiver, v16.super_class];
  specifiers = [(WatchControlInputSourceController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(WatchControlMotionPointerInputController *)self specifierAtIndex:[(WatchControlMotionPointerInputController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
      [mEMORY[0x277D7A910] setMotionPointerMovementTolerance:{objc_msgSend(v14, "unsignedIntegerValue")}];

      [(WatchControlMotionPointerInputController *)self reloadSpecifiers];
    }
  }
}

- (id)_actionValueForSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"Action"];

  if (v4)
  {
    [v4 unsignedIntegerValue];
    v5 = WCNameForAction();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)motionPointerSensitivity
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] motionPointerSensitivity];
  v4 = [v2 numberWithFloat:?];

  return v4;
}

- (void)setMotionPointerSensitivity:(id)sensitivity
{
  v3 = MEMORY[0x277D7A910];
  sensitivityCopy = sensitivity;
  sharedInstance = [v3 sharedInstance];
  [sensitivityCopy floatValue];
  v6 = v5;

  LODWORD(v7) = v6;
  [sharedInstance setMotionPointerSensitivity:v7];
}

- (void)resetMotionPointerEdgeCustomizations
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] resetMotionPointerEdgeActionCustomizations];
}

- (unint64_t)selectedActionForDetailController:(id)controller
{
  motionPointerEdge = [controller motionPointerEdge];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  motionPointerEdgeActionCustomizations = [mEMORY[0x277D7A910] motionPointerEdgeActionCustomizations];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:motionPointerEdge];
  v7 = [motionPointerEdgeActionCustomizations objectForKey:v6];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setAction:(unint64_t)action forDetailController:(id)controller
{
  motionPointerEdge = [controller motionPointerEdge];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] setAction:action forMotionPointerEdge:motionPointerEdge];
}

- (double)valueForSpecifier:(id)specifier
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] motionPointerActivationDuration];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  *&v5 = value;
  [mEMORY[0x277D7A910] setMotionPointerActivationDuration:v5];
}

- (double)minimumValueForSpecifier:(id)specifier
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] motionPointerActivationDurationMin];
  v5 = v4;

  return v5;
}

- (double)maximumValueForSpecifier:(id)specifier
{
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  [mEMORY[0x277D7A910] motionPointerActivationDurationMax];
  v5 = v4;

  return v5;
}

- (id)stringValueForSpecifier:(id)specifier
{
  v3 = MEMORY[0x277CCABB0];
  [(WatchControlMotionPointerInputController *)self valueForSpecifier:specifier];
  v4 = [v3 numberWithDouble:?];
  v5 = AXFormatNumberWithOptions();

  return v5;
}

@end