@interface WatchControlGreyQuickActionController
- (id)greyQuickActionAutoScrollNotificationEnabled;
- (id)greyQuickActionsEnabled;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)setGreyQuickActionAutoScrollNotificationEnabled:(id)a3;
- (void)setGreyQuickActionsEnabled:(id)a3;
@end

@implementation WatchControlGreyQuickActionController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"GREY_QUICK_ACTIONS_FOOTER", @"AccessibilitySettings-watchcontrol");
    [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [v5 addObject:v6];
    v8 = MEMORY[0x277D3FAD8];
    v9 = settingsLocString(@"GREY_QUICK_ACTIONS_SWITCH", @"AccessibilitySettings-watchcontrol");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:sel_setGreyQuickActionsEnabled_ get:sel_greyQuickActionsEnabled detail:0 cell:6 edit:0];
    [v5 addObject:v10];

    v11 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v5 addObject:v11];

    v12 = MEMORY[0x277D3FAD8];
    v13 = settingsLocString(@"GREY_QUICK_ACTION_LONG_LOOK_AUTOSCROLL_SWITCH", @"AccessibilitySettings-watchcontrol");
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:sel_setGreyQuickActionAutoScrollNotificationEnabled_ get:sel_greyQuickActionAutoScrollNotificationEnabled detail:0 cell:6 edit:0];

    [v14 setProperty:@"AutoScrollLongLookNotificationsSpecifier" forKey:*MEMORY[0x277D3FFB8]];
    v15 = [(WatchControlGreyQuickActionController *)self greyQuickActionsEnabled];
    [v14 setProperty:v15 forKey:*MEMORY[0x277D3FF38]];

    [v14 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    [v5 addObject:v14];
    v16 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = WatchControlGreyQuickActionController;
  v6 = a4;
  v7 = [(WatchControlGreyQuickActionController *)&v12 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(WatchControlGreyQuickActionController *)self specifierAtIndexPath:v6, v12.receiver, v12.super_class];

  v9 = [v8 propertyForKey:*MEMORY[0x277D3FFB8]];
  LODWORD(v6) = [v9 isEqualToString:@"AutoScrollLongLookNotificationsSpecifier"];

  if (v6)
  {
    v10 = [v7 textLabel];
    [v10 setNumberOfLines:0];
  }

  return v7;
}

- (id)greyQuickActionsEnabled
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "greyQuickActionsEnabled")}];

  return v4;
}

- (void)setGreyQuickActionsEnabled:(id)a3
{
  v4 = MEMORY[0x277D7A910];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v5 BOOLValue];

  [v6 setGreyQuickActionsEnabled:v7];

  [(WatchControlGreyQuickActionController *)self reloadSpecifiers];
}

- (id)greyQuickActionAutoScrollNotificationEnabled
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277D7A910] sharedInstance];
  if ([v3 greyQuickActionsEnabled])
  {
    v4 = [MEMORY[0x277D7A910] sharedInstance];
    v5 = [v2 numberWithInt:{objc_msgSend(v4, "greyQuickActionAutoScrollNotificationsEnabled")}];
  }

  else
  {
    v5 = [v2 numberWithInt:0];
  }

  return v5;
}

- (void)setGreyQuickActionAutoScrollNotificationEnabled:(id)a3
{
  v3 = MEMORY[0x277D7A910];
  v4 = a3;
  v6 = [v3 sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setGreyQuickActionAutoScrollNotificationsEnabled:v5];
}

@end