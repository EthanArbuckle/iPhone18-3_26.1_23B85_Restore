@interface ASTCursorColorSelectionController
- (ASTCursorColorSelectionControllerDelegate)delegate;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation ASTCursorColorSelectionController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ASTCursorColorSelectionController;
  [(ASTCursorColorSelectionController *)&v6 viewDidLoad];
  v3 = [(ASTCursorColorSelectionController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXColorChooserCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v23 = OBJC_IVAR___PSListController__specifiers;
    v26 = objc_opt_new();
    v4 = 0;
    v25 = PSCellClassKey;
    v24 = PSSpecifierIsSearchableKey;
    do
    {
      v5 = [(ASTCursorColorSelectionController *)self delegate];
      if (!v5 || (v6 = v5, -[ASTCursorColorSelectionController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) == 0) || (-[ASTCursorColorSelectionController delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 cursorColorSelectionController:self allowsCursorColor:v4], v9, v10))
      {
        v11 = AXAssistiveTouchScannerColorDescription();
        v12 = AXSAssistiveTouchCursorColor();
        Components = CGColorGetComponents(v12);
        v14 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v14 setProperty:objc_opt_class() forKey:v25];
        v15 = [NSNumber numberWithDouble:*Components];
        v27[0] = v15;
        v16 = [NSNumber numberWithDouble:Components[1]];
        v27[1] = v16;
        v17 = [NSNumber numberWithDouble:Components[2]];
        v27[2] = v17;
        v18 = [NSNumber numberWithDouble:Components[3]];
        v27[3] = v18;
        v19 = [NSArray arrayWithObjects:v27 count:4];
        [v14 setProperty:v19 forKey:@"rgb"];

        [v14 setProperty:&off_279A98 forKey:@"colorType"];
        v20 = [NSNumber numberWithInteger:v4];
        [v14 setProperty:v20 forKey:@"cursorColor"];

        [v14 setProperty:&__kCFBooleanFalse forKey:v24];
        [v14 setCellType:3];
        [v26 addObject:v14];
      }

      ++v4;
    }

    while (v4 != 8);
    v21 = *&self->AXUISettingsBaseListController_opaque[v23];
    *&self->AXUISettingsBaseListController_opaque[v23] = v26;

    v3 = *&self->AXUISettingsBaseListController_opaque[v23];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = ASTCursorColorSelectionController;
  v5 = [(ASTCursorColorSelectionController *)&v12 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 specifier];
  v7 = [v6 propertyForKey:@"cursorColor"];
  v8 = [v7 integerValue];

  v9 = [(ASTCursorColorSelectionController *)self delegate];

  if (v9)
  {
    v10 = [(ASTCursorColorSelectionController *)self delegate];
    [v5 setChecked:{objc_msgSend(v10, "selectedColorForSelectionController:", self) == v8}];
  }

  else
  {
    [v5 setChecked:0];
  }

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = ASTCursorColorSelectionController;
  v6 = a4;
  v7 = a3;
  v8 = [(ASTCursorColorSelectionController *)&v14 tableView:v7 cellForRowAtIndexPath:v6];
  v9 = [v8 specifier];
  v10 = [v9 propertyForKey:@"cursorColor"];
  v11 = [v10 integerValue];

  v12 = [(ASTCursorColorSelectionController *)self delegate];

  if (v12)
  {
    v13 = [(ASTCursorColorSelectionController *)self delegate];
    [v13 cursorColorSelectionController:self selectedCursorColor:v11];
  }

  [(ASTCursorColorSelectionController *)self updateTableCheckedSelection:v6];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (ASTCursorColorSelectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end