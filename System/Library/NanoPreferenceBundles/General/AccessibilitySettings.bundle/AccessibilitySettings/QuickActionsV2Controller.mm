@interface QuickActionsV2Controller
- (id)quickActionSwitchState;
- (id)specifiers;
- (void)setQuickActionSwitchState:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation QuickActionsV2Controller

- (id)specifiers
{
  v2 = self;
  v80 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    goto LABEL_40;
  }

  v62 = *MEMORY[0x277D3FC48];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v6 = settingsLocString(@"QUICK_ACTIONS_INSTRUCTIONS_FOOTER", @"AccessibilitySettings-elton");
  v7 = *MEMORY[0x277D3FF88];
  [v5 setProperty:v6 forKey:*MEMORY[0x277D3FF88]];

  v69 = v4;
  v61 = v5;
  [v4 addObject:v5];
  v67 = AXActivePairedDeviceIsNapiliBOrLater() && AXActivePairedDeviceHasDoubleTapActivationGesture();
  v8 = AXActivePairedDeviceSupportsQuickActionsAlwaysOnState();
  v9 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v10 = v9;
  v11 = MEMORY[0x277D3FFE8];
  v12 = MEMORY[0x277D3FFB8];
  v63 = v2;
  if (v8)
  {
    [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    [v10 setProperty:@"QuickActionsStateGroupID" forKey:*v12];
    if (v67)
    {
      v13 = settingsLocString(@"QUICK_ACTIONS_DISABLED_FOOTER_TEXT", @"AccessibilitySettings-quickactions");
      [v10 setProperty:v13 forKey:v7];
    }

    [v4 addObject:v10];
    v14 = [(AccessibilityBridgeBaseController *)v2 accessibilityDomainAccessor];
    v15 = [v14 objectForKey:*MEMORY[0x277D81EB8]];
    v16 = [v15 intValue];

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
    v22 = v67 ? 2 : v16;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v75 != v64)
        {
          objc_enumerationMutation(&unk_284E7E748);
        }

        v24 = *(*(&v74 + 1) + 8 * i);
        v25 = [v24 intValue];
        v26 = v25;
        v27 = MEMORY[0x277D3FAD8];
        v28 = AXLocalizedStringForQuickActionsState(v25);
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
    v2 = v63;
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

    [v4 addObject:v10];
    v34 = MEMORY[0x277D3FAD8];
    v35 = settingsLocString(@"QUICK_ACTIONS_ROW_TITLE", @"AccessibilitySettings-quickactions");
    v32 = [v34 preferenceSpecifierNamed:v35 target:v2 set:sel_setQuickActionSwitchState_ get:sel_quickActionSwitchState detail:0 cell:6 edit:0];

    v36 = [MEMORY[0x277CCABB0] numberWithInt:!v67];
    [v32 setProperty:v36 forKey:*MEMORY[0x277D3FF38]];

    [v4 addObject:v32];
  }

LABEL_25:
  if ((AXActivePairedDeviceSupportsQuickActionsAlwaysOnState() & 1) != 0 || (-[QuickActionsV2Controller quickActionSwitchState](v2, "quickActionSwitchState"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 BOOLValue], v37, v38))
  {
    v39 = MEMORY[0x277D3FAD8];
    v40 = settingsLocString(@"QUICK_ACTIONS_BANNER_HEADER", @"AccessibilitySettings-quickactions");
    v41 = [v39 preferenceSpecifierNamed:v40 target:v2 set:0 get:0 detail:0 cell:0 edit:0];

    [v41 setProperty:MEMORY[0x277CBEC38] forKey:*v11];
    [v41 setProperty:@"QuickActionsBannerAppearanceGroupID" forKey:*v12];
    v66 = v41;
    [v69 addObject:v41];
    v42 = [(AccessibilityBridgeBaseController *)v2 accessibilityDomainAccessor];
    v43 = [v42 objectForKey:*MEMORY[0x277D81EB0]];
    v68 = [v43 intValue];

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
          v52 = [v51 intValue];
          v53 = MEMORY[0x277D3FAD8];
          v54 = AXLocalizedStringForQuickActionBannerAppearance(v52);
          v55 = [v53 preferenceSpecifierNamed:v54 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v55 setProperty:v51 forKey:v48];
          [v55 setProperty:MEMORY[0x277CBEC38] forKey:v49];
          [v69 addObject:v55];
          if (v52 == v68)
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

    v2 = v63;
  }

  v57 = *(&v2->super.super.super.super.super.super.isa + v62);
  *(&v2->super.super.super.super.super.super.isa + v62) = v69;

  v3 = *(&v2->super.super.super.super.super.super.isa + v62);
LABEL_40:
  v58 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v20.receiver = self;
  v20.super_class = QuickActionsV2Controller;
  v6 = a4;
  [(QuickActionsV2Controller *)&v20 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(QuickActionsV2Controller *)self indexForIndexPath:v6, v20.receiver, v20.super_class];
  v8 = [(QuickActionsV2Controller *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(QuickActionsV2Controller *)self specifierAtIndex:[(QuickActionsV2Controller *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v11 identifier];
    v15 = [v14 isEqualToString:@"QuickActionsStateGroupID"];

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

    v18 = [v11 identifier];
    v19 = [v18 isEqualToString:@"QuickActionsBannerAppearanceGroupID"];

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
    v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v5 = [v4 objectForKey:*MEMORY[0x277D81EB8]];
    v6 = [v5 intValue];

    v3 = [MEMORY[0x277CCABB0] numberWithInt:v6 != 2];
  }

  return v3;
}

- (void)setQuickActionSwitchState:(id)a3
{
  if ([a3 BOOLValue])
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