@interface WatchControlGreyActivationController
- (id)greyVisualIndicator;
- (id)specifiers;
- (void)setGreyVisualIndicator:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation WatchControlGreyActivationController

- (id)specifiers
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v32 = *MEMORY[0x277D3FC48];
    v33 = self;
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v6 = v4;
    v31 = v5;
    [v4 addObject:v5];
    v7 = [MEMORY[0x277D7A910] sharedInstance];
    v8 = [v7 greyActivationGesture];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = [MEMORY[0x277D7A910] sharedInstance];
    v10 = [v9 eligibleGreyActivationGestures];

    obj = v10;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v36;
      v15 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [*(*(&v35 + 1) + 8 * i) integerValue];
          v18 = MEMORY[0x277D3FAD8];
          v19 = WCNameForGreyEvent();
          v20 = [v18 preferenceSpecifierNamed:v19 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v21 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
          [v20 setProperty:v21 forKey:v15];

          [v6 addObject:v20];
          if (v17 == v8)
          {
            v22 = v20;

            v13 = v22;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    [v31 setProperty:v13 forKey:*MEMORY[0x277D40090]];
    v23 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v6 addObject:v23];

    v24 = MEMORY[0x277D3FAD8];
    v25 = settingsLocString(@"GREY_VISUAL_INDICATOR_ROW_TITLE", @"AccessibilitySettings-watchcontrol");
    v26 = [v24 preferenceSpecifierNamed:v25 target:v33 set:sel_setGreyVisualIndicator_ get:sel_greyVisualIndicator detail:0 cell:6 edit:0];
    [v6 addObject:v26];

    v27 = *(&v33->super.super.super.super.super.super.isa + v32);
    *(&v33->super.super.super.super.super.super.isa + v32) = v6;
    v28 = v6;

    v3 = *(&v33->super.super.super.super.super.super.isa + v32);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16.receiver = self;
  v16.super_class = WatchControlGreyActivationController;
  v6 = a4;
  [(WatchControlGreyActivationController *)&v16 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(WatchControlGreyActivationController *)self indexForIndexPath:v6, v16.receiver, v16.super_class];
  v8 = [(WatchControlGreyActivationController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(WatchControlGreyActivationController *)self specifierAtIndex:[(WatchControlGreyActivationController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      v15 = [MEMORY[0x277D7A910] sharedInstance];
      [v15 setGreyActivationGesture:{objc_msgSend(v14, "integerValue")}];

      [(WatchControlGreyActivationController *)self reloadSpecifiers];
      if ([v14 integerValue] == 3)
      {
        [(AccessibilityBridgeBaseController *)self presentQuickActionsDisabledAlertIfNeeded];
      }
    }
  }
}

- (id)greyVisualIndicator
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "showGestureRecognizerIndicator")}];

  return v4;
}

- (void)setGreyVisualIndicator:(id)a3
{
  v3 = MEMORY[0x277D7A910];
  v4 = a3;
  v6 = [v3 sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setShowGestureRecognizerIndicator:v5];
}

@end