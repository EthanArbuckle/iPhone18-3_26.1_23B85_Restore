@interface WatchControlCustomizeActionMenuController
- (BOOL)canShowAction:(unint64_t)a3 forDetailController:(id)a4;
- (id)actionMenuLargerSize;
- (id)specifiers;
- (void)_removeActionSpecifier:(id)a3;
- (void)setAction:(unint64_t)a3 forDetailController:(id)a4;
- (void)setActionMenuLargerSize:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation WatchControlCustomizeActionMenuController

- (id)specifiers
{
  v57[1] = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v51 = *MEMORY[0x277D3FC48];
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = MEMORY[0x277D3FAD8];
    v6 = settingsLocString(@"WATCH_CONTROL_ACTION_MENU_FAVORITES", @"AccessibilitySettings-watchcontrol");
    v7 = [v5 groupSpecifierWithName:v6];
    [v4 addObject:v7];

    v8 = [MEMORY[0x277D7A910] sharedInstance];
    v9 = [v8 actionMenuFavorites];

    if ([v9 count])
    {
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __55__WatchControlCustomizeActionMenuController_specifiers__block_invoke;
      v54[3] = &unk_278B90A78;
      v54[4] = self;
      v55 = v4;
      [v9 enumerateObjectsUsingBlock:v54];
    }

    v50 = v9;
    v10 = [v9 count];
    if (v10 < *MEMORY[0x277D7A918])
    {
      v11 = MEMORY[0x277D3FAD8];
      v12 = settingsLocString(@"WATCH_CONTROL_ACTION_MENU_ADD_NEW_FAVORITE", @"AccessibilitySettings-watchcontrol");
      v13 = [v11 preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      v56 = @"ActionDetailDelegate";
      v57[0] = self;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      [v13 setUserInfo:v14];

      [v4 addObject:v13];
    }

    v53 = self;
    v15 = MEMORY[0x277D3FAD8];
    v16 = settingsLocString(@"WATCH_CONTROL_ACTION_MENU_POSITION", @"AccessibilitySettings-watchcontrol");
    v17 = [v15 groupSpecifierWithID:@"kGroupActionMenuPositionIdentifier" name:v16];

    v18 = *MEMORY[0x277D3FFE8];
    [v17 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v52 = v17;
    [v4 addObject:v17];
    v19 = [MEMORY[0x277D7A910] sharedInstance];
    v20 = [v19 actionMenuPosition];

    v21 = 0;
    v22 = 0;
    v23 = *MEMORY[0x277D401A8];
    do
    {
      v24 = MEMORY[0x277D3FAD8];
      v25 = WCNameForActionMenuPosition();
      v26 = [v24 preferenceSpecifierNamed:v25 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      v27 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
      [v26 setProperty:v27 forKey:v23];

      [v4 addObject:v26];
      if (v20 == v22)
      {
        v28 = v26;

        v21 = v28;
      }

      ++v22;
    }

    while (v22 != 3);
    v49 = *MEMORY[0x277D40090];
    [v17 setProperty:v21 forKey:?];
    v29 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v4 addObject:v29];

    v30 = MEMORY[0x277D3FAD8];
    v31 = settingsLocString(@"WATCH_CONTROL_ACTION_MENU_LARGER_SIZE", @"AccessibilitySettings-watchcontrol");
    v32 = [v30 preferenceSpecifierNamed:v31 target:v53 set:sel_setActionMenuLargerSize_ get:sel_actionMenuLargerSize detail:0 cell:6 edit:0];
    [v4 addObject:v32];

    v33 = MEMORY[0x277D3FAD8];
    v34 = settingsLocString(@"WATCH_CONTROL_AUTOSCROLL_SPEED", @"AccessibilitySettings-watchcontrol");
    v35 = [v33 groupSpecifierWithID:@"kGroupAutoScrollSpeedIdentifier" name:v34];

    [v35 setProperty:MEMORY[0x277CBEC38] forKey:v18];
    [v4 addObject:v35];
    v36 = [MEMORY[0x277D7A910] sharedInstance];
    v37 = [v36 defaultAutoScrollSpeed];

    v38 = 0;
    v39 = 0;
    do
    {
      v40 = MEMORY[0x277D3FAD8];
      v41 = WCNameForAutoMovementSpeed();
      v42 = [v40 preferenceSpecifierNamed:v41 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v38];
      [v42 setProperty:v43 forKey:v23];

      [v4 addObject:v42];
      if (v37 == v38)
      {
        v44 = v42;

        v39 = v44;
      }

      ++v38;
    }

    while (v38 != 3);
    [v35 setProperty:v39 forKey:v49];
    v45 = *(&v53->super.super.super.super.super.super.isa + v51);
    *(&v53->super.super.super.super.super.super.isa + v51) = v4;
    v46 = v4;

    v3 = *(&v53->super.super.super.super.super.super.isa + v51);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v3;
}

void __55__WatchControlCustomizeActionMenuController_specifiers__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 unsignedIntegerValue];
  v6 = MEMORY[0x277D3F9C8];
  v7 = WCNameForAction();
  v17 = [v6 preferenceSpecifierNamed:v7 target:*(a1 + 32) set:0 get:0 detail:0 cell:13 edit:0];

  [v17 setButtonAction:sel__removeActionSpecifier_];
  [v17 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FE80]];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v17 setProperty:v8 forKey:@"kWCActionIndexSpecKey"];

  v9 = MEMORY[0x277CCACA8];
  v10 = settingsLocString(@"WATCH_CONTROL_ACTION_MENU_REMOVE_FAVORITE_CONFIRM_TITLE", @"AccessibilitySettings-watchcontrol");
  v11 = WCNameForAction();
  v12 = [v9 localizedStringWithFormat:v10, v11];
  [v17 setPrompt:v12];

  v13 = settingsLocString(@"WATCH_CONTROL_ACTION_MENU_REMOVE_FAVORITE_OK_ACTION", @"AccessibilitySettings-watchcontrol");
  [v17 setTitle:v13];

  v14 = settingsLocString(@"WATCH_CONTROL_ACTION_MENU_REMOVE_FAVORITE_CANCEL_ACTION", @"AccessibilitySettings-watchcontrol");
  [v17 setCancelButton:v14];

  v15 = WCImageForAction();
  [v17 setProperty:v15 forKey:*MEMORY[0x277D3FFC0]];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  [v17 setProperty:v16 forKey:*MEMORY[0x277D401A8]];

  [*(a1 + 40) addObject:v17];
}

- (void)_removeActionSpecifier:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = MEMORY[0x277D7A910];
  v6 = a3;
  v7 = [v5 sharedInstance];
  v8 = [v7 actionMenuFavorites];
  v12 = [v4 arrayWithArray:v8];

  v9 = [v6 propertyForKey:@"kWCActionIndexSpecKey"];

  v10 = [v9 unsignedIntegerValue];
  if (v10 < [v12 count])
  {
    [v12 removeObjectAtIndex:v10];
    v11 = [MEMORY[0x277D7A910] sharedInstance];
    [v11 setActionMenuFavorites:v12];

    [(WatchControlCustomizeActionMenuController *)self reloadSpecifiers];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = WatchControlCustomizeActionMenuController;
  [(WatchControlCustomizeActionMenuController *)&v20 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(WatchControlCustomizeActionMenuController *)self indexForIndexPath:v7];
  v9 = [(WatchControlCustomizeActionMenuController *)self specifiers];
  v10 = [v9 objectAtIndex:v8];

  v11 = -[WatchControlCustomizeActionMenuController specifierAtIndex:](self, "specifierAtIndex:", -[WatchControlCustomizeActionMenuController indexOfGroup:](self, "indexOfGroup:", [v7 section]));
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v11 identifier];
    v15 = [v14 isEqualToString:@"kGroupAutoScrollSpeedIdentifier"];

    if (v15)
    {
      v16 = [v10 propertyForKey:*MEMORY[0x277D401A8]];
      if (v16)
      {
        v17 = [MEMORY[0x277D7A910] sharedInstance];
        [v17 setDefaultAutoScrollSpeed:{objc_msgSend(v16, "unsignedIntegerValue")}];
LABEL_8:

        [(WatchControlCustomizeActionMenuController *)self reloadSpecifiers];
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v18 = [v11 identifier];
    v19 = [v18 isEqualToString:@"kGroupActionMenuPositionIdentifier"];

    if (v19)
    {
      v16 = [v10 propertyForKey:*MEMORY[0x277D401A8]];
      if (v16)
      {
        v17 = [MEMORY[0x277D7A910] sharedInstance];
        [v17 setActionMenuPosition:{objc_msgSend(v16, "integerValue")}];
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];
}

- (id)actionMenuLargerSize
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "actionMenuLargerSize")}];

  return v4;
}

- (void)setActionMenuLargerSize:(id)a3
{
  v3 = MEMORY[0x277D7A910];
  v4 = a3;
  v6 = [v3 sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setActionMenuLargerSize:v5];
}

- (BOOL)canShowAction:(unint64_t)a3 forDetailController:(id)a4
{
  v5 = [MEMORY[0x277D7A910] sharedInstance];
  v6 = [v5 actionMenuFavorites];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = 0;
  }

  else if (a3 <= 0x15)
  {
    v9 = 0x1FFBFEu >> a3;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

- (void)setAction:(unint64_t)a3 forDetailController:(id)a4
{
  v12 = a4;
  if (a3)
  {
    v5 = [MEMORY[0x277D7A910] sharedInstance];
    v6 = [v5 actionMenuFavorites];

    v7 = [MEMORY[0x277D7A910] sharedInstance];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v9 = [v6 arrayByAddingObject:v8];
    [v7 setActionMenuFavorites:v9];
  }

  v10 = [v12 navigationController];
  v11 = [v10 popViewControllerAnimated:1];
}

@end