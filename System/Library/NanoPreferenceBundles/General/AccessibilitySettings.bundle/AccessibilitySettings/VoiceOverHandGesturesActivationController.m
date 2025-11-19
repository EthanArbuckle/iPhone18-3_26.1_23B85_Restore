@interface VoiceOverHandGesturesActivationController
- (id)greyActivationGesture;
- (id)greyVisualIndicator;
- (id)specifiers;
- (void)setGreyVisualIndicator:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation VoiceOverHandGesturesActivationController

- (id)specifiers
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v31 = *MEMORY[0x277D3FC48];
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v6 = v4;
    v30 = v5;
    [v4 addObject:v5];
    v34 = [(VoiceOverHandGesturesActivationController *)self greyActivationGesture];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v7 = [MEMORY[0x277D7A910] sharedInstance];
    v8 = [v7 eligibleGreyActivationGestures];

    obj = v8;
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    v32 = self;
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v36;
      v13 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v16 = [v15 integerValue];
          v17 = MEMORY[0x277D3FAD8];
          v18 = WCNameForGreyEvent();
          v19 = [v17 preferenceSpecifierNamed:v18 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v20 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
          [v19 setProperty:v20 forKey:v13];

          [v6 addObject:v19];
          if ([v15 isEqualToNumber:v34])
          {
            v21 = v19;

            v11 = v21;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    [v30 setProperty:v11 forKey:*MEMORY[0x277D40090]];
    v22 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v6 addObject:v22];

    v23 = MEMORY[0x277D3FAD8];
    v24 = settingsLocString(@"GREY_VISUAL_INDICATOR_ROW_TITLE", @"AccessibilitySettings-watchcontrol");
    v25 = [v23 preferenceSpecifierNamed:v24 target:v32 set:sel_setGreyVisualIndicator_ get:sel_greyVisualIndicator detail:0 cell:6 edit:0];
    [v6 addObject:v25];

    v26 = *(&v32->super.super.super.super.super.super.isa + v31);
    *(&v32->super.super.super.super.super.super.isa + v31) = v6;
    v27 = v6;

    v3 = *(&v32->super.super.super.super.super.super.isa + v31);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)greyActivationGesture
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithInteger:{objc_msgSend(v3, "greyActivationGesture")}];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16.receiver = self;
  v16.super_class = VoiceOverHandGesturesActivationController;
  v6 = a4;
  [(VoiceOverHandGesturesActivationController *)&v16 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(VoiceOverHandGesturesActivationController *)self indexForIndexPath:v6, v16.receiver, v16.super_class];
  v8 = [(VoiceOverHandGesturesActivationController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(VoiceOverHandGesturesActivationController *)self specifierAtIndex:[(VoiceOverHandGesturesActivationController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      v15 = [MEMORY[0x277D7A910] sharedInstance];
      [v15 setGreyActivationGesture:{objc_msgSend(v14, "integerValue")}];

      [(VoiceOverHandGesturesActivationController *)self reloadSpecifiers];
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