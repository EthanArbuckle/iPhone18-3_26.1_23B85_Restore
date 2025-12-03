@interface QuickActionsV2Controller
- (id)quickActionSwitchState;
- (id)specifiers;
- (void)setQuickActionSwitchState:(id)state;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation QuickActionsV2Controller

- (id)specifiers
{
  selfCopy = self;
  v80 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    goto LABEL_40;
  }

  v62 = *MEMORY[0x277D3FC48];
  array = [MEMORY[0x277CBEB18] array];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v6 = settingsLocString(@"QUICK_ACTIONS_INSTRUCTIONS_FOOTER", @"AccessibilitySettings-elton");
  v7 = *MEMORY[0x277D3FF88];
  [emptyGroupSpecifier setProperty:v6 forKey:*MEMORY[0x277D3FF88]];

  v69 = array;
  v61 = emptyGroupSpecifier;
  [array addObject:emptyGroupSpecifier];
  v67 = AXActivePairedDeviceIsNapiliBOrLater() && AXActivePairedDeviceHasDoubleTapActivationGesture();
  v8 = AXActivePairedDeviceSupportsQuickActionsAlwaysOnState();
  emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v10 = emptyGroupSpecifier2;
  v11 = MEMORY[0x277D3FFE8];
  v12 = MEMORY[0x277D3FFB8];
  v63 = selfCopy;
  if (v8)
  {
    [emptyGroupSpecifier2 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    [v10 setProperty:@"QuickActionsStateGroupID" forKey:*v12];
    if (v67)
    {
      v13 = settingsLocString(@"QUICK_ACTIONS_DISABLED_FOOTER_TEXT", @"AccessibilitySettings-quickactions");
      [v10 setProperty:v13 forKey:v7];
    }

    [array addObject:v10];
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)selfCopy accessibilityDomainAccessor];
    v15 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277D81EB8]];
    intValue = [v15 intValue];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v17 = [&unk_284E7E748 countByEnumeratingWithState:&v74 objects:v79 count:16];
    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = v17;
    v60 = v10;
    v64 = *v75;
    v65 = 0;
    v19 = *MEMORY[0x277D401A8];
    v20 = *MEMORY[0x277D3FD80];
    v21 = *MEMORY[0x277D3FF38];
    v22 = v67 ? 2 : intValue;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v75 != v64)
        {
          objc_enumerationMutation(&unk_284E7E748);
        }

        v24 = *(*(&v74 + 1) + 8 * i);
        intValue2 = [v24 intValue];
        v26 = intValue2;
        v27 = MEMORY[0x277D3FAD8];
        v28 = AXLocalizedStringForQuickActionsState(intValue2);
        v29 = [v27 preferenceSpecifierNamed:v28 target:0 set:0 get:0 detail:0 cell:3 edit:0];

        [v29 setProperty:v24 forKey:v19];
        [v29 setProperty:MEMORY[0x277CBEC38] forKey:v20];
        v30 = [MEMORY[0x277CCABB0] numberWithInt:!v67];
        [v29 setProperty:v30 forKey:v21];

        [v69 addObject:v29];
        if (v26 == v22)
        {
          v31 = v29;

          v65 = v31;
        }
      }

      v18 = [&unk_284E7E748 countByEnumeratingWithState:&v74 objects:v79 count:16];
    }

    while (v18);
    selfCopy = v63;
    v12 = MEMORY[0x277D3FFB8];
    v11 = MEMORY[0x277D3FFE8];
    v10 = v60;
    v32 = v65;
    if (!v65)
    {
      goto LABEL_25;
    }

    [v60 setProperty:v65 forKey:*MEMORY[0x277D40090]];
  }

  else
  {
    if (v67)
    {
      v33 = settingsLocString(@"QUICK_ACTIONS_DISABLED_FOOTER_TEXT", @"AccessibilitySettings-quickactions");
      [v10 setProperty:v33 forKey:v7];
    }

    [array addObject:v10];
    v34 = MEMORY[0x277D3FAD8];
    v35 = settingsLocString(@"QUICK_ACTIONS_ROW_TITLE", @"AccessibilitySettings-quickactions");
    v32 = [v34 preferenceSpecifierNamed:v35 target:selfCopy set:sel_setQuickActionSwitchState_ get:sel_quickActionSwitchState detail:0 cell:6 edit:0];

    v36 = [MEMORY[0x277CCABB0] numberWithInt:!v67];
    [v32 setProperty:v36 forKey:*MEMORY[0x277D3FF38]];

    [array addObject:v32];
  }

LABEL_25:
  if ((AXActivePairedDeviceSupportsQuickActionsAlwaysOnState() & 1) != 0 || (-[QuickActionsV2Controller quickActionSwitchState](selfCopy, "quickActionSwitchState"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 BOOLValue], v37, v38))
  {
    v39 = MEMORY[0x277D3FAD8];
    v40 = settingsLocString(@"QUICK_ACTIONS_BANNER_HEADER", @"AccessibilitySettings-quickactions");
    v41 = [v39 preferenceSpecifierNamed:v40 target:selfCopy set:0 get:0 detail:0 cell:0 edit:0];

    [v41 setProperty:MEMORY[0x277CBEC38] forKey:*v11];
    [v41 setProperty:@"QuickActionsBannerAppearanceGroupID" forKey:*v12];
    v66 = v41;
    [v69 addObject:v41];
    accessibilityDomainAccessor2 = [(AccessibilityBridgeBaseController *)selfCopy accessibilityDomainAccessor];
    v43 = [accessibilityDomainAccessor2 objectForKey:*MEMORY[0x277D81EB0]];
    intValue3 = [v43 intValue];

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v44 = [&unk_284E7E760 countByEnumeratingWithState:&v70 objects:v78 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = 0;
      v47 = *v71;
      v48 = *MEMORY[0x277D401A8];
      v49 = *MEMORY[0x277D3FD80];
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v71 != v47)
          {
            objc_enumerationMutation(&unk_284E7E760);
          }

          v51 = *(*(&v70 + 1) + 8 * j);
          intValue4 = [v51 intValue];
          v53 = MEMORY[0x277D3FAD8];
          v54 = AXLocalizedStringForQuickActionBannerAppearance(intValue4);
          v55 = [v53 preferenceSpecifierNamed:v54 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v55 setProperty:v51 forKey:v48];
          [v55 setProperty:MEMORY[0x277CBEC38] forKey:v49];
          [v69 addObject:v55];
          if (intValue4 == intValue3)
          {
            v56 = v55;

            v46 = v56;
          }
        }

        v45 = [&unk_284E7E760 countByEnumeratingWithState:&v70 objects:v78 count:16];
      }

      while (v45);
    }

    else
    {
      v46 = 0;
    }

    [v66 setProperty:v46 forKey:*MEMORY[0x277D40090]];

    selfCopy = v63;
  }

  v57 = *(&selfCopy->super.super.super.super.super.super.isa + v62);
  *(&selfCopy->super.super.super.super.super.super.isa + v62) = v69;

  v3 = *(&selfCopy->super.super.super.super.super.super.isa + v62);
LABEL_40:
  v58 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v20.receiver = self;
  v20.super_class = QuickActionsV2Controller;
  pathCopy = path;
  [(QuickActionsV2Controller *)&v20 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(QuickActionsV2Controller *)self indexForIndexPath:pathCopy, v20.receiver, v20.super_class];
  specifiers = [(QuickActionsV2Controller *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(QuickActionsV2Controller *)self specifierAtIndex:[(QuickActionsV2Controller *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    identifier = [v11 identifier];
    v15 = [identifier isEqualToString:@"QuickActionsStateGroupID"];

    if (v15)
    {
      v16 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
      if (v16)
      {
        v17 = MEMORY[0x277D81EB8];
LABEL_8:
        [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v16 forKey:*v17];
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    identifier2 = [v11 identifier];
    v19 = [identifier2 isEqualToString:@"QuickActionsBannerAppearanceGroupID"];

    if (v19)
    {
      v16 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
      if (v16)
      {
        v17 = MEMORY[0x277D81EB0];
        goto LABEL_8;
      }

LABEL_9:
    }
  }
}

- (id)quickActionSwitchState
{
  if (AXActivePairedDeviceIsNapiliBOrLater() && AXActivePairedDeviceHasDoubleTapActivationGesture())
  {
    v3 = MEMORY[0x277CBEC28];
  }

  else
  {
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v5 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277D81EB8]];
    intValue = [v5 intValue];

    v3 = [MEMORY[0x277CCABB0] numberWithInt:intValue != 2];
  }

  return v3;
}

- (void)setQuickActionSwitchState:(id)state
{
  if ([state BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v5 forKey:*MEMORY[0x277D81EB8]];

  [(QuickActionsV2Controller *)self reloadSpecifiers];
}

@end