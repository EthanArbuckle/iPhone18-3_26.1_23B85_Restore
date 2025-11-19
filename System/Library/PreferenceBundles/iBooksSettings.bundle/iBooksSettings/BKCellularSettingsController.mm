@interface BKCellularSettingsController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation BKCellularSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v29 = [(BKCellularSettingsController *)self _formattedNetworkLimit];
    v5 = +[BKCellularSettingsUtilities cellularSettingsForCurrentIdentity];
    [(BKCellularSettingsController *)self setSettings:v5];

    v6 = objc_alloc_init(NSMutableArray);
    v7 = [PSSpecifier groupSpecifierWithID:@"CELLULAR_GROUP_ID"];
    v8 = BKSettingsBundle();
    v9 = [v8 localizedStringForKey:@"Choose whether books and audiobooks can automatically download over a cellular network." value:&stru_14E68 table:@"Settings"];
    [v7 setProperty:v9 forKey:PSFooterTextGroupKey];

    v10 = [NSNumber numberWithBool:1];
    [v7 setProperty:v10 forKey:PSIsRadioGroupKey];

    [v6 addObject:v7];
    v11 = BKSettingsBundle();
    v12 = [v11 localizedStringForKey:@"Always Allow" value:&stru_14E68 table:@"Settings"];
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v13 setIdentifier:@"ALWAYS_ALLOW"];
    [v6 addObject:v13];
    v14 = [(BKCellularSettingsController *)self settings];
    v15 = [v14 cellularDataPrompt];

    if (v15 == &dword_0 + 2)
    {
      [v7 setProperty:v13 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v16 = BKSettingsBundle();
    v17 = [v16 localizedStringForKey:@"Ask If Over %@" value:&stru_14E68 table:@"Settings"];
    v18 = [NSString stringWithFormat:v17, v29];
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v19 setIdentifier:@"ASK_IF_OVER_XXX_MB_ID"];
    [v6 addObject:v19];
    v20 = [(BKCellularSettingsController *)self settings];
    v21 = [v20 cellularDataPrompt];

    if (!v21)
    {
      [v7 setProperty:v19 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v22 = BKSettingsBundle();
    v23 = [v22 localizedStringForKey:@"Always Ask" value:&stru_14E68 table:@"Settings"];
    v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v24 setIdentifier:@"ALWAYS_ASK_ID"];
    [v6 addObject:v24];
    v25 = [(BKCellularSettingsController *)self settings];
    v26 = [v25 cellularDataPrompt];

    if (v26 == &dword_0 + 1)
    {
      [v7 setProperty:v24 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v27 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v6;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = BKCellularSettingsController;
  v6 = a4;
  [(BKCellularSettingsController *)&v18 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(BKCellularSettingsController *)self indexForIndexPath:v6, v18.receiver, v18.super_class];

  v8 = [(BKCellularSettingsController *)self specifierAtIndex:v7];
  v9 = [(BKCellularSettingsController *)self specifierForID:@"CELLULAR_GROUP_ID"];
  v10 = [v8 identifier];
  v11 = [v10 isEqualToString:@"ALWAYS_ALLOW"];

  if (v11)
  {
    v12 = 2;
LABEL_7:
    v17 = [(BKCellularSettingsController *)self settings];
    [v17 setCellularDataPrompt:v12];

    [v9 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];
    goto LABEL_8;
  }

  v13 = [v8 identifier];
  v14 = [v13 isEqualToString:@"ASK_IF_OVER_XXX_MB_ID"];

  if (v14)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v15 = [v8 identifier];
  v16 = [v15 isEqualToString:@"ALWAYS_ASK_ID"];

  if (v16)
  {
    v12 = 1;
    goto LABEL_7;
  }

LABEL_8:
  [(BKCellularSettingsController *)self reload];
}

@end