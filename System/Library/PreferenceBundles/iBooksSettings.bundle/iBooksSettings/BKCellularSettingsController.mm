@interface BKCellularSettingsController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation BKCellularSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    _formattedNetworkLimit = [(BKCellularSettingsController *)self _formattedNetworkLimit];
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
    settings = [(BKCellularSettingsController *)self settings];
    cellularDataPrompt = [settings cellularDataPrompt];

    if (cellularDataPrompt == &dword_0 + 2)
    {
      [v7 setProperty:v13 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v16 = BKSettingsBundle();
    v17 = [v16 localizedStringForKey:@"Ask If Over %@" value:&stru_14E68 table:@"Settings"];
    v18 = [NSString stringWithFormat:v17, _formattedNetworkLimit];
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v19 setIdentifier:@"ASK_IF_OVER_XXX_MB_ID"];
    [v6 addObject:v19];
    settings2 = [(BKCellularSettingsController *)self settings];
    cellularDataPrompt2 = [settings2 cellularDataPrompt];

    if (!cellularDataPrompt2)
    {
      [v7 setProperty:v19 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v22 = BKSettingsBundle();
    v23 = [v22 localizedStringForKey:@"Always Ask" value:&stru_14E68 table:@"Settings"];
    v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v24 setIdentifier:@"ALWAYS_ASK_ID"];
    [v6 addObject:v24];
    settings3 = [(BKCellularSettingsController *)self settings];
    cellularDataPrompt3 = [settings3 cellularDataPrompt];

    if (cellularDataPrompt3 == &dword_0 + 1)
    {
      [v7 setProperty:v24 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v27 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v6;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = BKCellularSettingsController;
  pathCopy = path;
  [(BKCellularSettingsController *)&v18 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(BKCellularSettingsController *)self indexForIndexPath:pathCopy, v18.receiver, v18.super_class];

  v8 = [(BKCellularSettingsController *)self specifierAtIndex:v7];
  v9 = [(BKCellularSettingsController *)self specifierForID:@"CELLULAR_GROUP_ID"];
  identifier = [v8 identifier];
  v11 = [identifier isEqualToString:@"ALWAYS_ALLOW"];

  if (v11)
  {
    v12 = 2;
LABEL_7:
    settings = [(BKCellularSettingsController *)self settings];
    [settings setCellularDataPrompt:v12];

    [v9 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];
    goto LABEL_8;
  }

  identifier2 = [v8 identifier];
  v14 = [identifier2 isEqualToString:@"ASK_IF_OVER_XXX_MB_ID"];

  if (v14)
  {
    v12 = 0;
    goto LABEL_7;
  }

  identifier3 = [v8 identifier];
  v16 = [identifier3 isEqualToString:@"ALWAYS_ASK_ID"];

  if (v16)
  {
    v12 = 1;
    goto LABEL_7;
  }

LABEL_8:
  [(BKCellularSettingsController *)self reload];
}

@end