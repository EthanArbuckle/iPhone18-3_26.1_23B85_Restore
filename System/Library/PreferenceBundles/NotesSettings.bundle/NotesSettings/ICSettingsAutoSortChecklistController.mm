@interface ICSettingsAutoSortChecklistController
- (id)settingsBundle;
- (id)specifiers;
- (id)stateSpecifierNamed:(id)named isChecked:(BOOL)checked group:(id)group;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ICSettingsAutoSortChecklistController

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  [v3 addObject:v4];
  v5 = [ICSettingsUtilities BOOLForKey:@"ICChecklistAutoSortEnabledDefaultsKey"];
  settingsBundle = [(ICSettingsAutoSortChecklistController *)self settingsBundle];
  v7 = [settingsBundle localizedStringForKey:@"AUTO_SORT_CHECKLIST_OFF" value:@"Manually" table:@"Settings"];
  v8 = [(ICSettingsAutoSortChecklistController *)self stateSpecifierNamed:v7 isChecked:v5 ^ 1 group:v4];

  v19 = @"ICAutoSortSpecifierOn";
  v20 = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v8 setUserInfo:v9];

  [v3 addObject:v8];
  settingsBundle2 = [(ICSettingsAutoSortChecklistController *)self settingsBundle];
  v11 = [settingsBundle2 localizedStringForKey:@"AUTO_SORT_CHECKLIST_ON" value:@"Automatically" table:@"Settings"];
  v12 = [(ICSettingsAutoSortChecklistController *)self stateSpecifierNamed:v11 isChecked:v5 group:v4];

  v17 = @"ICAutoSortSpecifierOn";
  v18 = &__kCFBooleanTrue;
  v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v12 setUserInfo:v13];

  [v3 addObject:v12];
  settingsBundle3 = [(ICSettingsAutoSortChecklistController *)self settingsBundle];
  v15 = [settingsBundle3 localizedStringForKey:@"SORT_CHECKED_ITEMS_FOOTER" value:@"Automatically move checklist items to the bottom of the list as they are checked." table:@"Settings"];
  [v4 setProperty:v15 forKey:PSFooterTextGroupKey];

  [(ICSettingsAutoSortChecklistController *)self setSpecifiers:v3];

  return v3;
}

- (id)settingsBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)stateSpecifierNamed:(id)named isChecked:(BOOL)checked group:(id)group
{
  checkedCopy = checked;
  groupCopy = group;
  v9 = [PSSpecifier preferenceSpecifierNamed:named target:self set:0 get:0 detail:0 cell:3 edit:0];
  if (checkedCopy)
  {
    [groupCopy setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = ICSettingsAutoSortChecklistController;
  [(ICSettingsAutoSortChecklistController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(ICSettingsAutoSortChecklistController *)self specifierAtIndexPath:pathCopy];
  objc_opt_class();
  userInfo = [v7 userInfo];
  v9 = ICDynamicCast();

  if (![pathCopy section] || objc_msgSend(pathCopy, "section") == &dword_0 + 1)
  {
    v10 = [v9 objectForKeyedSubscript:@"ICAutoSortSpecifierOn"];
    bOOLValue = [v10 BOOLValue];

    [ICInstrumentationUtilities incrementAutoSortSelectionChangeCountForState:bOOLValue];
    [ICSettingsUtilities setBool:bOOLValue forKey:@"ICChecklistAutoSortEnabledDefaultsKey"];
  }

  [(ICSettingsAutoSortChecklistController *)self reloadSpecifiers];
}

@end