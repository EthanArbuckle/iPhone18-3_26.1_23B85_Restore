@interface WatchControlDwellControlController
- (id)dwellControlEnabled;
- (id)dwellControlShakeToStartEnabled;
- (id)specifiers;
- (void)setDwellControlEnabled:(id)enabled;
- (void)setDwellControlShakeToStartEnabled:(id)enabled;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WatchControlDwellControlController

- (id)specifiers
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v36 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [array addObject:emptyGroupSpecifier];

    v6 = MEMORY[0x277D3FAD8];
    v7 = settingsLocString(@"WATCH_CONTROL_DWELL_CONTROL_TITLE", @"AccessibilitySettings-watchcontrol");
    selfCopy = self;
    v8 = [v6 preferenceSpecifierNamed:v7 target:self set:sel_setDwellControlEnabled_ get:sel_dwellControlEnabled detail:0 cell:6 edit:0];
    [array addObject:v8];

    v9 = MEMORY[0x277D3FAD8];
    v10 = settingsLocString(@"WATCH_CONTROL_DWELL_CONTROL_TIMER_ACTION", @"AccessibilitySettings-watchcontrol");
    v11 = [v9 groupSpecifierWithID:@"GroupDefaultAction" name:v10];

    [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v12 = array;
    v35 = v11;
    [array addObject:v11];
    mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
    dwellControlTimerAction = [mEMORY[0x277D7A910] dwellControlTimerAction];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = [&unk_284E7E730 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v39;
      v19 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(&unk_284E7E730);
          }

          unsignedIntegerValue = [*(*(&v38 + 1) + 8 * i) unsignedIntegerValue];
          v22 = MEMORY[0x277D3FAD8];
          v23 = WCNameForAction();
          v24 = [v22 preferenceSpecifierNamed:v23 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
          [v24 setProperty:v25 forKey:v19];

          [v12 addObject:v24];
          if (unsignedIntegerValue == dwellControlTimerAction)
          {
            v26 = v24;

            v17 = v26;
          }
        }

        v16 = [&unk_284E7E730 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    [v35 setProperty:v17 forKey:*MEMORY[0x277D40090]];
    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v12 addObject:emptyGroupSpecifier2];

    v28 = MEMORY[0x277D3FAD8];
    v29 = settingsLocString(@"WATCH_CONTROL_DWELL_CONTROL_SHAKE_TO_START", @"AccessibilitySettings-watchcontrol");
    v30 = [v28 preferenceSpecifierNamed:v29 target:selfCopy set:sel_setDwellControlShakeToStartEnabled_ get:sel_dwellControlShakeToStartEnabled detail:0 cell:6 edit:0];
    [v12 addObject:v30];

    v31 = *(&selfCopy->super.super.super.super.super.super.isa + v36);
    *(&selfCopy->super.super.super.super.super.super.isa + v36) = v12;
    v32 = v12;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v36);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = WatchControlDwellControlController;
  pathCopy = path;
  [(WatchControlDwellControlController *)&v18 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(WatchControlDwellControlController *)self indexForIndexPath:pathCopy, v18.receiver, v18.super_class];
  specifiers = [(WatchControlDwellControlController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(WatchControlDwellControlController *)self specifierAtIndex:[(WatchControlDwellControlController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    identifier = [v11 identifier];
    v15 = [identifier isEqualToString:@"GroupDefaultAction"];

    if (v15)
    {
      v16 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
      if (v16)
      {
        mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
        [mEMORY[0x277D7A910] setDwellControlTimerAction:{objc_msgSend(v16, "unsignedIntegerValue")}];

        [(WatchControlDwellControlController *)self reloadSpecifiers];
      }
    }
  }
}

- (id)dwellControlEnabled
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x277D7A910], "dwellControlEnabled")}];

  return v4;
}

- (void)setDwellControlEnabled:(id)enabled
{
  v3 = MEMORY[0x277D7A910];
  enabledCopy = enabled;
  sharedInstance = [v3 sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [sharedInstance setDwellControlEnabled:bOOLValue];
}

- (id)dwellControlShakeToStartEnabled
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x277D7A910], "dwellControlShakeToStart")}];

  return v4;
}

- (void)setDwellControlShakeToStartEnabled:(id)enabled
{
  v3 = MEMORY[0x277D7A910];
  enabledCopy = enabled;
  sharedInstance = [v3 sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [sharedInstance setDwellControlShakeToStart:bOOLValue];
}

@end