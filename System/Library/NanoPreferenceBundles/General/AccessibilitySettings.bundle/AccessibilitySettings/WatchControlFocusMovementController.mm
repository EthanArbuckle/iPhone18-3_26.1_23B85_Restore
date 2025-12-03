@interface WatchControlFocusMovementController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WatchControlFocusMovementController

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v38 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
    v6 = *MEMORY[0x277D3FFE8];
    [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    [array addObject:v5];
    selfCopy = self;
    v40 = v5;
    objc_storeStrong(&self->_focusMovementStyleGroup, v5);
    mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
    focusMovementStyle = [mEMORY[0x277D7A910] focusMovementStyle];

    v9 = 0;
    v10 = 0;
    v11 = *MEMORY[0x277D401A8];
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = MEMORY[0x277D3FAD8];
      v15 = WCNameForFocusMovementStyle();
      v16 = [v14 preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
      [v16 setProperty:v17 forKey:v11];

      [array addObject:v16];
      if (v10 == focusMovementStyle)
      {
        v18 = v16;

        v9 = v18;
      }

      v12 = 0;
      v10 = 1;
    }

    while ((v13 & 1) != 0);
    v19 = *MEMORY[0x277D40090];
    [v40 setProperty:v9 forKey:*MEMORY[0x277D40090]];
    mEMORY[0x277D7A910]2 = [MEMORY[0x277D7A910] sharedInstance];
    focusMovementStyle2 = [mEMORY[0x277D7A910]2 focusMovementStyle];

    if (focusMovementStyle2 == 1)
    {
      v37 = v19;
      v22 = MEMORY[0x277D3FAD8];
      v23 = settingsLocString(@"WATCH_CONTROL_AUTO_FOCUS_NAVIGATION_SPEED", @"AccessibilitySettings-watchcontrol");
      v24 = [v22 preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:0 edit:0];

      [v24 setProperty:MEMORY[0x277CBEC38] forKey:v6];
      [array addObject:v24];
      objc_storeStrong(&self->_autoSpeedGroupSpecifier, v24);
      mEMORY[0x277D7A910]3 = [MEMORY[0x277D7A910] sharedInstance];
      autoFocusNavigationSpeed = [mEMORY[0x277D7A910]3 autoFocusNavigationSpeed];

      v27 = 0;
      v28 = 0;
      do
      {
        v29 = MEMORY[0x277D3FAD8];
        v30 = WCNameForAutoMovementSpeed();
        v31 = [v29 preferenceSpecifierNamed:v30 target:0 set:0 get:0 detail:0 cell:3 edit:0];

        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
        [v31 setProperty:v32 forKey:v11];

        [array addObject:v31];
        if (autoFocusNavigationSpeed == v27)
        {
          v33 = v31;

          v28 = v33;
        }

        ++v27;
      }

      while (v27 != 3);
      [v24 setProperty:v28 forKey:v37];
    }

    v34 = *(&self->super.super.super.super.super.super.isa + v38);
    *(&selfCopy->super.super.super.super.super.super.isa + v38) = array;
    v35 = array;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v38);
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = WatchControlFocusMovementController;
  pathCopy = path;
  [(WatchControlFocusMovementController *)&v16 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(WatchControlFocusMovementController *)self indexForIndexPath:pathCopy, v16.receiver, v16.super_class];
  specifiers = [(WatchControlFocusMovementController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(WatchControlFocusMovementController *)self specifierAtIndex:[(WatchControlFocusMovementController *)self indexOfGroup:section]];
  v12 = [(PSSpecifier *)v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      if (v11 == self->_focusMovementStyleGroup)
      {
        mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
        [mEMORY[0x277D7A910] setFocusMovementStyle:{objc_msgSend(v14, "integerValue")}];
        goto LABEL_7;
      }

      if (v11 == self->_autoSpeedGroupSpecifier)
      {
        mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
        [mEMORY[0x277D7A910] setAutoFocusNavigationSpeed:{objc_msgSend(v14, "integerValue")}];
LABEL_7:

        [(WatchControlFocusMovementController *)self reloadSpecifiers];
      }
    }
  }
}

@end