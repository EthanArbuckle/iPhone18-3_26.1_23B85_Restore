@interface DisplayFilterController
- (id)_blueCorrectionIntensity;
- (id)_greenCorrectionIntensity;
- (id)_redCorrectionIntensity;
- (id)_subtitleForSpec:(id)a3;
- (id)_titleForFilter:(unint64_t)a3;
- (id)globalColorFilterEnabled;
- (id)specifiers;
- (unint64_t)_selectedFilter;
- (void)setGlobalColorFilterEnabled:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation DisplayFilterController

- (id)specifiers
{
  v2 = self;
  v54 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v5 addObject:v6];
    v7 = MEMORY[0x277D3FAD8];
    v8 = settingsLocString(@"COLOR_FILTERS_ROW_TITLE", @"AccessibilitySettings");
    v9 = [v7 preferenceSpecifierNamed:v8 target:v2 set:sel_setGlobalColorFilterEnabled_ get:sel_globalColorFilterEnabled detail:0 cell:6 edit:0];

    v10 = MEMORY[0x277CBEC38];
    v46 = *MEMORY[0x277D3FFE0];
    [v9 setProperty:MEMORY[0x277CBEC38] forKey:?];
    v45 = *MEMORY[0x277D40068];
    [v9 setProperty:v10 forKey:?];
    v44 = *MEMORY[0x277D3FEF8];
    [v9 setProperty:@"com.apple.Accessibility" forKey:?];
    [v5 addObject:v9];
    v11 = [(DisplayFilterController *)v2 globalColorFilterEnabled];
    LODWORD(v8) = [v11 BOOLValue];

    if (!v8)
    {
LABEL_32:
      v36 = *(&v2->super.super.super.super.super.super.isa + v3);
      *(&v2->super.super.super.super.super.super.isa + v3) = v5;

      v4 = *(&v2->super.super.super.super.super.super.isa + v3);
      goto LABEL_33;
    }

    v39 = v9;
    v40 = v5;
    v41 = v6;
    v42 = v3;
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[DisplayFilterController _selectedFilter](v2, "_selectedFilter")}];
    v48 = [MEMORY[0x277CBEB18] array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v12 = v2;
    obj = [(DisplayFilterController *)v2 _supportedDisplayFilters];
    v13 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v50;
      v17 = *MEMORY[0x277D401A8];
      v18 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v50 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v49 + 1) + 8 * i);
          v21 = -[DisplayFilterController _titleForFilter:](v12, "_titleForFilter:", [v20 unsignedIntegerValue]);
          v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:v12 set:0 get:0 detail:0 cell:3 edit:0];
          [v22 setProperty:v20 forKey:v17];
          [v22 setProperty:v18 forKey:v46];
          [v22 setProperty:v18 forKey:v45];
          [v22 setProperty:@"com.apple.Accessibility" forKey:v44];
          if ([v20 isEqualToNumber:v47])
          {
            v23 = v22;

            v15 = v23;
          }

          [v48 addObject:v22];
        }

        v14 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    v2 = v12;
    v5 = v40;
    v6 = v41;
    v9 = v39;
    if ([v48 count])
    {
      v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:v2 set:0 get:0 detail:0 cell:0 edit:0];
      [v24 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
      [v40 addObject:v24];
      if (v15)
      {
        [v24 setProperty:v15 forKey:*MEMORY[0x277D40090]];
      }

      [v40 addObjectsFromArray:v48];
    }

    if (![(DisplayFilterController *)v2 _shouldShowColorIntensitySlider])
    {
LABEL_31:

      v3 = v42;
      goto LABEL_32;
    }

    v25 = [(DisplayFilterController *)v2 _selectedFilter];
    switch(v25)
    {
      case 2:
        v26 = &selRef__setRedCorrectionIntensity_;
        v27 = &selRef__redCorrectionIntensity;
        break;
      case 8:
        v26 = &selRef__setBlueCorrectionIntensity_;
        v27 = &selRef__blueCorrectionIntensity;
        break;
      case 4:
        v26 = &selRef__setGreenCorrectionIntensity_;
        v27 = &selRef__greenCorrectionIntensity;
        break;
      default:
        v32 = AXLogSettings();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [(DisplayFilterController *)v32 specifiers];
        }

LABEL_30:

        goto LABEL_31;
    }

    v28 = *v26;
    if (!*v26)
    {
      goto LABEL_31;
    }

    v29 = *v27;
    if (!*v27)
    {
      goto LABEL_31;
    }

    v30 = MEMORY[0x277D3FAD8];
    v31 = settingsLocString(@"COLOR_INTENSITY_TITLE", @"AccessibilitySettings");
    v32 = [v30 groupSpecifierWithName:v31];

    [v40 addObject:v32];
    v33 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:v2 set:v28 get:v29 detail:0 cell:5 edit:0];
    v34 = [MEMORY[0x277CCABB0] numberWithDouble:0.25];
    [v33 setProperty:v34 forKey:*MEMORY[0x277D3FEC0]];

    v35 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
    [v33 setProperty:v35 forKey:*MEMORY[0x277D3FEB8]];

    [v40 addObject:v33];
    goto LABEL_30;
  }

LABEL_33:
  v37 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setGlobalColorFilterEnabled:(id)a3
{
  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:a3 forKey:@"ColorFiltersEnabled"];

  [(DisplayFilterController *)self reloadSpecifiers];
}

- (id)globalColorFilterEnabled
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "BOOLForKey:", @"ColorFiltersEnabled"}];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v21.receiver = self;
  v21.super_class = DisplayFilterController;
  v6 = a4;
  [(DisplayFilterController *)&v21 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(DisplayFilterController *)self indexForIndexPath:v6, v21.receiver, v21.super_class];
  v8 = [(DisplayFilterController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(DisplayFilterController *)self specifierAtIndex:[(DisplayFilterController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 unsignedIntegerValue];
      v17 = [MEMORY[0x277CCABB0] numberWithInt:v16 == 2];
      [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v17 forKey:@"RedGreenDisplay"];

      v18 = [MEMORY[0x277CCABB0] numberWithInt:v16 == 4];
      [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v18 forKey:@"GreenRedDisplay"];

      v19 = [MEMORY[0x277CCABB0] numberWithInt:v16 == 8];
      [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v19 forKey:@"BlueYellowDisplay"];

      v20 = [MEMORY[0x277CCABB0] numberWithInt:v16 == 1];
      [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v20 forKey:@"GrayscaleDisplay"];

      [(DisplayFilterController *)self reloadSpecifiers];
    }
  }
}

- (unint64_t)_selectedFilter
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 synchronize];

  v5 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v6 = [v5 BOOLForKey:@"GrayscaleDisplay"];

  if (v6)
  {
    return 1;
  }

  v8 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v9 = [v8 BOOLForKey:@"RedGreenDisplay"];

  if (v9)
  {
    return 2;
  }

  v10 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v11 = [v10 BOOLForKey:@"GreenRedDisplay"];

  if (v11)
  {
    return 4;
  }

  v12 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v13 = [v12 BOOLForKey:@"BlueYellowDisplay"];

  if (v13)
  {
    return 8;
  }

  else
  {
    return 0;
  }
}

- (id)_titleForFilter:(unint64_t)a3
{
  v4 = a3 - 1;
  if (a3 - 1 <= 7 && ((0x8Bu >> v4) & 1) != 0)
  {
    v5 = settingsLocString(off_278B90B10[v4], @"AccessibilitySettings");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_subtitleForSpec:(id)a3
{
  v3 = [a3 propertyForKey:*MEMORY[0x277D401A8]];
  v4 = [v3 unsignedIntegerValue];
  switch(v4)
  {
    case 2:
      v5 = @"RED_GREEN_ROW_SUBTITLE";
      goto LABEL_7;
    case 8:
      v5 = @"BLUE_YELLOW_ROW_SUBTITLE";
      goto LABEL_7;
    case 4:
      v5 = @"GREEN_RED_ROW_SUBTITLE";
LABEL_7:
      v6 = settingsLocString(v5, @"AccessibilitySettings");
      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)_redCorrectionIntensity
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [v3 floatForKey:@"RedGreenColorIntensity"];
  v4 = [v2 numberWithFloat:?];

  return v4;
}

- (id)_greenCorrectionIntensity
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [v3 floatForKey:@"GreenRedColorIntensity"];
  v4 = [v2 numberWithFloat:?];

  return v4;
}

- (id)_blueCorrectionIntensity
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [v3 floatForKey:@"BlueYellowColorIntensity"];
  v4 = [v2 numberWithFloat:?];

  return v4;
}

@end