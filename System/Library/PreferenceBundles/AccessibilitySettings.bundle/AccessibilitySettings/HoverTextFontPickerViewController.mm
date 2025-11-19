@interface HoverTextFontPickerViewController
- (BOOL)_isDisallowedFontFamily:(id)a3;
- (BOOL)_isLargeTextTypingController;
- (id)specifiers;
- (void)_updateCheckmarkForCell:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateTableCheckedSelection:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HoverTextFontPickerViewController

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HoverTextFontPickerViewController;
  [(HoverTextFontPickerViewController *)&v8 viewWillAppear:a3];
  v4 = [(HoverTextFontPickerViewController *)self _isLargeTextTypingController];
  v5 = +[AXSettings sharedInstance];
  v6 = v5;
  if (v4)
  {
    [v5 hoverTextTypingFontName];
  }

  else
  {
    [v5 hoverTextFontName];
  }
  v7 = ;

  [(HoverTextFontPickerViewController *)self setSelectedFont:v7];
  [(HoverTextFontPickerViewController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v21 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [PSSpecifier groupSpecifierWithID:@"DefaultGroup"];
    [v4 addObject:v5];
    v6 = settingsLocString(@"DEFAULT", @"Accessibility");
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v22 = PSIDKey;
    [v7 setProperty:@"DefaultFontCellID" forKey:?];
    [v4 addObject:v7];
    v8 = [PSSpecifier groupSpecifierWithID:@"OtherFontsGroup"];

    v23 = v4;
    [v4 addObject:v8];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = +[UIFont familyNames];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      v13 = PSCellClassKey;
      v14 = PSTitleKey;
      do
      {
        v15 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v24 + 1) + 8 * v15);
          if (![(HoverTextFontPickerViewController *)self _isDisallowedFontFamily:v16])
          {
            v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

            [v17 setProperty:objc_opt_class() forKey:v13];
            [v17 setProperty:v16 forKey:v22];
            [v17 setProperty:v16 forKey:v14];
            [v17 setCellType:3];
            [v23 addObject:v17];
            v8 = v17;
          }

          v15 = v15 + 1;
        }

        while (v11 != v15);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v18 = *&self->AXUISettingsBaseListController_opaque[v21];
    *&self->AXUISettingsBaseListController_opaque[v21] = v23;
    v19 = v23;

    v3 = *&self->AXUISettingsBaseListController_opaque[v21];
  }

  return v3;
}

- (BOOL)_isDisallowedFontFamily:(id)a3
{
  v3 = _isDisallowedFontFamily__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [HoverTextFontPickerViewController _isDisallowedFontFamily:];
  }

  v5 = [_isDisallowedFontFamily__IrregularFontNames containsObject:v4];

  return v5;
}

void __61__HoverTextFontPickerViewController__isDisallowedFontFamily___block_invoke(id a1)
{
  v1 = [NSSet setWithArray:&off_27CC20];
  v2 = _isDisallowedFontFamily__IrregularFontNames;
  _isDisallowedFontFamily__IrregularFontNames = v1;

  _objc_release_x1(v1, v2);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = HoverTextFontPickerViewController;
  [(HoverTextFontPickerViewController *)&v14 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(HoverTextFontPickerViewController *)self specifierAtIndex:[(HoverTextFontPickerViewController *)self indexForIndexPath:v6]];
  v8 = [v7 propertyForKey:PSIDKey];
  if ([v8 isEqualToString:@"DefaultFontCellID"])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  [(HoverTextFontPickerViewController *)self setSelectedFont:v9];
  v10 = [(HoverTextFontPickerViewController *)self _isLargeTextTypingController];
  v11 = [(HoverTextFontPickerViewController *)self selectedFont];
  v12 = +[AXSettings sharedInstance];
  v13 = v12;
  if (v10)
  {
    [v12 setHoverTextTypingFontName:v11];
  }

  else
  {
    [v12 setHoverTextFontName:v11];
  }

  [(HoverTextFontPickerViewController *)self updateTableCheckedSelection:v6];
}

- (void)updateTableCheckedSelection:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] visibleCells];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(HoverTextFontPickerViewController *)self _updateCheckmarkForCell:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateCheckmarkForCell:(id)a3
{
  v9 = a3;
  v4 = [v9 specifier];
  v5 = [v4 propertyForKey:PSIDKey];

  v6 = [(HoverTextFontPickerViewController *)self selectedFont];
  if ([v5 isEqualToString:v6])
  {

LABEL_3:
    v7 = 1;
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"DefaultFontCellID"])
  {
    v8 = [(HoverTextFontPickerViewController *)self selectedFont];

    if (!v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_9:
  [v9 setChecked:v7];
}

- (BOOL)_isLargeTextTypingController
{
  v3 = AXHasCapability();
  if (v3)
  {
    v4 = [(HoverTextFontPickerViewController *)self specifier];
    v5 = [v4 propertyForKey:PSIDKey];
    v6 = [v5 isEqualToString:@"HoverTypingStyle"];

    LOBYTE(v3) = v6;
  }

  return v3;
}

@end