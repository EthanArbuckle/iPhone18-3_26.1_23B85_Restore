@interface WatchControlGreyQuickActionController
- (id)greyQuickActionAutoScrollNotificationEnabled;
- (id)greyQuickActionsEnabled;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)setGreyQuickActionAutoScrollNotificationEnabled:(id)enabled;
- (void)setGreyQuickActionsEnabled:(id)enabled;
@end

@implementation WatchControlGreyQuickActionController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"GREY_QUICK_ACTIONS_FOOTER", @"AccessibilitySettings-watchcontrol");
    [emptyGroupSpecifier setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [array addObject:emptyGroupSpecifier];
    v8 = MEMORY[0x277D3FAD8];
    v9 = settingsLocString(@"GREY_QUICK_ACTIONS_SWITCH", @"AccessibilitySettings-watchcontrol");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:sel_setGreyQuickActionsEnabled_ get:sel_greyQuickActionsEnabled detail:0 cell:6 edit:0];
    [array addObject:v10];

    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [array addObject:emptyGroupSpecifier2];

    v12 = MEMORY[0x277D3FAD8];
    v13 = settingsLocString(@"GREY_QUICK_ACTION_LONG_LOOK_AUTOSCROLL_SWITCH", @"AccessibilitySettings-watchcontrol");
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:sel_setGreyQuickActionAutoScrollNotificationEnabled_ get:sel_greyQuickActionAutoScrollNotificationEnabled detail:0 cell:6 edit:0];

    [v14 setProperty:@"AutoScrollLongLookNotificationsSpecifier" forKey:*MEMORY[0x277D3FFB8]];
    greyQuickActionsEnabled = [(WatchControlGreyQuickActionController *)self greyQuickActionsEnabled];
    [v14 setProperty:greyQuickActionsEnabled forKey:*MEMORY[0x277D3FF38]];

    [v14 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    [array addObject:v14];
    v16 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = WatchControlGreyQuickActionController;
  pathCopy = path;
  v7 = [(WatchControlGreyQuickActionController *)&v12 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(WatchControlGreyQuickActionController *)self specifierAtIndexPath:pathCopy, v12.receiver, v12.super_class];

  v9 = [v8 propertyForKey:*MEMORY[0x277D3FFB8]];
  LODWORD(pathCopy) = [v9 isEqualToString:@"AutoScrollLongLookNotificationsSpecifier"];

  if (pathCopy)
  {
    textLabel = [v7 textLabel];
    [textLabel setNumberOfLines:0];
  }

  return v7;
}

- (id)greyQuickActionsEnabled
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x277D7A910], "greyQuickActionsEnabled")}];

  return v4;
}

- (void)setGreyQuickActionsEnabled:(id)enabled
{
  v4 = MEMORY[0x277D7A910];
  enabledCopy = enabled;
  sharedInstance = [v4 sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [sharedInstance setGreyQuickActionsEnabled:bOOLValue];

  [(WatchControlGreyQuickActionController *)self reloadSpecifiers];
}

- (id)greyQuickActionAutoScrollNotificationEnabled
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  if ([mEMORY[0x277D7A910] greyQuickActionsEnabled])
  {
    mEMORY[0x277D7A910]2 = [MEMORY[0x277D7A910] sharedInstance];
    v5 = [v2 numberWithInt:{objc_msgSend(mEMORY[0x277D7A910]2, "greyQuickActionAutoScrollNotificationsEnabled")}];
  }

  else
  {
    v5 = [v2 numberWithInt:0];
  }

  return v5;
}

- (void)setGreyQuickActionAutoScrollNotificationEnabled:(id)enabled
{
  v3 = MEMORY[0x277D7A910];
  enabledCopy = enabled;
  sharedInstance = [v3 sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [sharedInstance setGreyQuickActionAutoScrollNotificationsEnabled:bOOLValue];
}

@end