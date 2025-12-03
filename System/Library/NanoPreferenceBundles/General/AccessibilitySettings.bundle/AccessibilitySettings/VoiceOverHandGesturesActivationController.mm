@interface VoiceOverHandGesturesActivationController
- (id)greyActivationGesture;
- (id)greyVisualIndicator;
- (id)specifiers;
- (void)setGreyVisualIndicator:(id)indicator;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation VoiceOverHandGesturesActivationController

- (id)specifiers
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v31 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v6 = array;
    v30 = emptyGroupSpecifier;
    [array addObject:emptyGroupSpecifier];
    greyActivationGesture = [(VoiceOverHandGesturesActivationController *)self greyActivationGesture];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
    eligibleGreyActivationGestures = [mEMORY[0x277D7A910] eligibleGreyActivationGestures];

    obj = eligibleGreyActivationGestures;
    v9 = [eligibleGreyActivationGestures countByEnumeratingWithState:&v35 objects:v39 count:16];
    selfCopy = self;
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
          integerValue = [v15 integerValue];
          v17 = MEMORY[0x277D3FAD8];
          v18 = WCNameForGreyEvent();
          v19 = [v17 preferenceSpecifierNamed:v18 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v20 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
          [v19 setProperty:v20 forKey:v13];

          [v6 addObject:v19];
          if ([v15 isEqualToNumber:greyActivationGesture])
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
    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v6 addObject:emptyGroupSpecifier2];

    v23 = MEMORY[0x277D3FAD8];
    v24 = settingsLocString(@"GREY_VISUAL_INDICATOR_ROW_TITLE", @"AccessibilitySettings-watchcontrol");
    v25 = [v23 preferenceSpecifierNamed:v24 target:selfCopy set:sel_setGreyVisualIndicator_ get:sel_greyVisualIndicator detail:0 cell:6 edit:0];
    [v6 addObject:v25];

    v26 = *(&selfCopy->super.super.super.super.super.super.isa + v31);
    *(&selfCopy->super.super.super.super.super.super.isa + v31) = v6;
    v27 = v6;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v31);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)greyActivationGesture
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithInteger:{objc_msgSend(mEMORY[0x277D7A910], "greyActivationGesture")}];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = VoiceOverHandGesturesActivationController;
  pathCopy = path;
  [(VoiceOverHandGesturesActivationController *)&v16 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(VoiceOverHandGesturesActivationController *)self indexForIndexPath:pathCopy, v16.receiver, v16.super_class];
  specifiers = [(VoiceOverHandGesturesActivationController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(VoiceOverHandGesturesActivationController *)self specifierAtIndex:[(VoiceOverHandGesturesActivationController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
      [mEMORY[0x277D7A910] setGreyActivationGesture:{objc_msgSend(v14, "integerValue")}];

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
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x277D7A910], "showGestureRecognizerIndicator")}];

  return v4;
}

- (void)setGreyVisualIndicator:(id)indicator
{
  v3 = MEMORY[0x277D7A910];
  indicatorCopy = indicator;
  sharedInstance = [v3 sharedInstance];
  bOOLValue = [indicatorCopy BOOLValue];

  [sharedInstance setShowGestureRecognizerIndicator:bOOLValue];
}

@end