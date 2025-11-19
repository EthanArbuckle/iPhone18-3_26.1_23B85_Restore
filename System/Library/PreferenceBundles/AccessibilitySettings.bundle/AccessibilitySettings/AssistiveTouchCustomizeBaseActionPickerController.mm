@interface AssistiveTouchCustomizeBaseActionPickerController
- (id)_formattedTextForLocalizedIconString:(id)a3;
- (id)astTitleForSection:(int64_t)a3;
- (id)createASTIconSpecifier:(id)a3;
- (id)formattedTextForIconAtIndexPath:(id)a3;
- (id)iconForIndexPath:(id)a3;
- (id)iconSpecifiers;
- (id)localizedIconForIndexPath:(id)a3;
- (id)localizedSortedIcons:(id)a3;
- (int64_t)astNumberOfRowsInSection:(int64_t)a3;
- (void)astTableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)astTableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)loadView;
- (void)reloadASTDataSource;
- (void)reloadSpecifiers;
@end

@implementation AssistiveTouchCustomizeBaseActionPickerController

- (id)iconSpecifiers
{
  v3 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_shownIconSections;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"title"];
        v10 = [PSSpecifier groupSpecifierWithName:v9];
        [v3 addObject:v10];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = [v8 objectForKeyedSubscript:@"icons"];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [(AssistiveTouchCustomizeBaseActionPickerController *)self createASTIconSpecifier:*(*(&v19 + 1) + 8 * j)];
              [v3 addObject:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = AssistiveTouchCustomizeBaseActionPickerController;
  [(AssistiveTouchCustomizeBaseActionPickerController *)&v4 loadView];
  v3 = [(AssistiveTouchCustomizeBaseActionPickerController *)self table];
  [v3 setRowHeight:UITableViewAutomaticDimension];

  [(AssistiveTouchCustomizeBaseActionPickerController *)self reloadASTDataSource];
}

- (id)createASTIconSpecifier:(id)a3
{
  v4 = a3;
  v5 = AXUIAssistiveTouchStringForName();
  if ([v4 isEqualToString:@"__NONE__"])
  {
    v6 = settingsLocString(@"NONE", @"HandSettings");

    v5 = v6;
  }

  v7 = [(AssistiveTouchCustomizeBaseActionPickerController *)self _formattedTextForLocalizedIconString:v5];

  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  [v8 setProperty:v4 forKey:PSIDKey];

  return v8;
}

- (id)localizedSortedIcons:(id)a3
{
  v3 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __74__AssistiveTouchCustomizeBaseActionPickerController_localizedSortedIcons___block_invoke;
  v10[3] = &unk_258738;
  v4 = objc_alloc_init(NSMutableDictionary);
  v11 = v4;
  [v3 enumerateObjectsUsingBlock:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __74__AssistiveTouchCustomizeBaseActionPickerController_localizedSortedIcons___block_invoke_2;
  v8[3] = &unk_256AC8;
  v9 = v4;
  v5 = v4;
  v6 = [v3 sortedArrayUsingComparator:v8];

  return v6;
}

void __74__AssistiveTouchCustomizeBaseActionPickerController_localizedSortedIcons___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXUIAssistiveTouchStringForName();
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
}

id __74__AssistiveTouchCustomizeBaseActionPickerController_localizedSortedIcons___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 localizedCaseInsensitiveCompare:v8];
  return v9;
}

- (id)formattedTextForIconAtIndexPath:(id)a3
{
  v4 = [(AssistiveTouchCustomizeBaseActionPickerController *)self localizedIconForIndexPath:a3];
  v5 = [(AssistiveTouchCustomizeBaseActionPickerController *)self _formattedTextForLocalizedIconString:v4];

  return v5;
}

- (id)_formattedTextForLocalizedIconString:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"-\n"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  }

  else
  {
    [v3 stringByReplacingCharactersInRange:v4 withString:{v5, &stru_25D420}];
  }
  v6 = ;

  return v6;
}

- (void)reloadASTDataSource
{
  v3 = objc_alloc_init(NSMutableArray);
  shownIconSections = self->_shownIconSections;
  self->_shownIconSections = v3;

  v5 = +[NSMutableArray array];
  for (i = 0; i != 10; ++i)
  {
    if (i <= 7)
    {
      v7 = [NSNumber numberWithUnsignedInteger:i];
      [v5 addObject:v7];
    }
  }

  if ([(AssistiveTouchCustomizeBaseActionPickerController *)self prependEyeTrackingIcons])
  {
    [v5 insertObject:&off_27AF98 atIndex:0];
  }

  if ([(AssistiveTouchCustomizeBaseActionPickerController *)self prependHeadTrackingIcons])
  {
    [v5 insertObject:&off_27AFB0 atIndex:0];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __72__AssistiveTouchCustomizeBaseActionPickerController_reloadASTDataSource__block_invoke;
  v8[3] = &unk_258788;
  v8[4] = self;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __72__AssistiveTouchCustomizeBaseActionPickerController_reloadASTDataSource__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 unsignedIntegerValue];
  if (v7 >= 0xA)
  {
    *a4 = 1;
    goto LABEL_29;
  }

  v8 = v7;
  v9 = [*(a1 + 32) prependedTopIcons];
  v10 = v9;
  if (v8 > 4)
  {
    if (v8 <= 6)
    {
      if (v8 == 5)
      {
        v11 = settingsLocString(@"AssistiveTouchHeading", @"HandSettings");
        v12 = *(a1 + 32);
        AXAssistiveTouchSpecificActionIcons();
      }

      else
      {
        v11 = settingsLocString(@"DwellHeading", @"HandSettings");
        v12 = *(a1 + 32);
        AXAssistiveTouchDwellIcons();
      }
    }

    else
    {
      if (v8 == 7)
      {
        v11 = settingsLocString(@"SiriShortcutsHeading", @"HandSettings");
        v12 = *(a1 + 32);
        v14 = AXAssistiveTouchSiriShortcutsIcons();
        goto LABEL_23;
      }

      if (v8 == 8)
      {
        v11 = settingsLocString(@"EyeTrackingHeading", @"HandSettings");
        v12 = *(a1 + 32);
        AXAssistiveTouchEyeTrackingIcons();
      }

      else
      {
        v11 = settingsLocString(@"HeadTrackingHeading", @"HandSettings");
        v12 = *(a1 + 32);
        AXAssistiveTouchHeadTrackingIcons();
      }
    }
  }

  else
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        v11 = settingsLocString(@"SystemHeading", @"HandSettings");
        v15 = [*(a1 + 32) prependedSystemIcons];
        v16 = *(a1 + 32);
        v17 = AXAssistiveTouchSystemIcons();
        v18 = [v16 localizedSortedIcons:v17];
        v13 = [v15 arrayByAddingObjectsFromArray:v18];
      }

      else
      {
        v13 = v9;
        v11 = 0;
      }

      goto LABEL_24;
    }

    if (v8 == 2)
    {
      v11 = settingsLocString(@"Accessibility", @"HandSettings");
      v12 = *(a1 + 32);
      v14 = AXAssistiveTouchAccessibilityIcons();
      goto LABEL_23;
    }

    if (v8 == 3)
    {
      v11 = settingsLocString(@"CustomGestureHeading", @"HandSettings");
      v12 = *(a1 + 32);
      AXAssistiveTouchCustomGesturesIcons();
    }

    else
    {
      v11 = settingsLocString(@"ScrollHeading", @"HandSettings");
      v12 = *(a1 + 32);
      AXAssistiveTouchScrollIcons();
    }
  }
  v14 = ;
LABEL_23:
  v19 = v14;
  v13 = [v12 localizedSortedIcons:v14];

LABEL_24:
  if ([v13 count])
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __72__AssistiveTouchCustomizeBaseActionPickerController_reloadASTDataSource__block_invoke_2;
    v22[3] = &unk_258760;
    v22[4] = *(a1 + 32);
    v24 = v8;
    v23 = v10;
    v20 = [v13 axFilterObjectsUsingBlock:v22];
    if ([v20 count])
    {
      v21 = +[NSMutableDictionary dictionary];
      [v21 setObject:v20 forKeyedSubscript:@"icons"];
      [v21 setObject:v11 forKeyedSubscript:@"title"];
      [*(*(a1 + 32) + 144) addObject:v21];
    }
  }

LABEL_29:
}

uint64_t __72__AssistiveTouchCustomizeBaseActionPickerController_reloadASTDataSource__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) inSetup])
  {
    if ([v3 isEqualToString:AXAssistiveTouchIconTypeCommandAndControl])
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = +[CACPreferences sharedPreferences];
    if ([v4 didShowOnboarding])
    {
    }

    else
    {
      v5 = [v3 isEqualToString:AXAssistiveTouchIconTypeCommandAndControl];

      if (v5)
      {
LABEL_11:
        v8 = 0;
        goto LABEL_12;
      }
    }
  }

  if (*(a1 + 48) && ([*(a1 + 40) containsObject:v3] & 1) != 0)
  {
    goto LABEL_11;
  }

  v6 = [*(a1 + 32) iconFilter];

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [*(a1 + 32) iconFilter];
  v8 = (v7)[2](v7, v3);

LABEL_12:
  return v8;
}

- (void)reloadSpecifiers
{
  [(AssistiveTouchCustomizeBaseActionPickerController *)self reloadASTDataSource];
  v3.receiver = self;
  v3.super_class = AssistiveTouchCustomizeBaseActionPickerController;
  [(AssistiveTouchCustomizeBaseActionPickerController *)&v3 reloadSpecifiers];
}

- (id)astTitleForSection:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->_shownIconSections objectAtIndexedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"title"];

  return v4;
}

- (int64_t)astNumberOfRowsInSection:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->_shownIconSections objectAtIndexedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"icons"];
  v5 = [v4 count];

  return v5;
}

- (id)iconForIndexPath:(id)a3
{
  shownIconSections = self->_shownIconSections;
  v4 = a3;
  v5 = -[NSMutableArray objectAtIndexedSubscript:](shownIconSections, "objectAtIndexedSubscript:", [v4 section]);
  v6 = [v5 objectForKeyedSubscript:@"icons"];
  v7 = [v4 row];

  v8 = [v6 objectAtIndexedSubscript:v7];

  return v8;
}

- (id)localizedIconForIndexPath:(id)a3
{
  v3 = [(AssistiveTouchCustomizeBaseActionPickerController *)self iconForIndexPath:a3];
  v4 = AXUIAssistiveTouchStringForName();

  return v4;
}

- (void)astTableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(AssistiveTouchCustomizeBaseActionPickerController *)self iconForIndexPath:v6];
  v8 = [(AssistiveTouchCustomizeBaseActionPickerController *)self _isIconTypeEnabled:v7];

  if (v8)
  {
    v9 = [(AssistiveTouchCustomizeBaseActionPickerController *)self iconForIndexPath:v6];
    [(AssistiveTouchCustomizeBaseActionPickerController *)self setSelectedPopoverIcon:v9];

    v10 = [(AssistiveTouchCustomizeBaseActionPickerController *)self selectedPopoverIcon];
    v11 = [v10 isEqualToString:AXAssistiveTouchIconTypeMagnifier];

    if (v11)
    {
      v12 = +[AXSettings sharedInstance];
      [v12 setMagnifierEnabled:1];
    }

    [v13 deselectRowAtIndexPath:v6 animated:1];
    if (*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] == v13)
    {
      [(AssistiveTouchCustomizeBaseActionPickerController *)self reloadSpecifiers];
    }

    else
    {
      [v13 reloadData];
    }
  }
}

- (void)astTableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v14 = a4;
  v7 = [(AssistiveTouchCustomizeBaseActionPickerController *)self iconForIndexPath:a5];
  v8 = [(AssistiveTouchCustomizeBaseActionPickerController *)self selectedPopoverIcon];
  v9 = [v7 isEqualToString:v8];

  v10 = 3;
  if (v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v14 setAccessoryType:v11];
  v12 = [(AssistiveTouchCustomizeBaseActionPickerController *)self _isIconTypeEnabled:v7];
  if (!v12)
  {
    v10 = 0;
  }

  v13 = [v14 textLabel];
  [v13 setEnabled:v12];

  [v14 setSelectionStyle:v10];
}

@end