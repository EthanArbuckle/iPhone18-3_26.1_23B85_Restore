@interface CSLPRFShortcutCompanionSettingsListController
- (CSLPRFShortcutCompanionSettingsListController)init;
- (id)_makeListItemSpecifier:(id)a3 value:(id)a4;
- (id)_settingsModel;
- (id)specifiers;
- (void)reloadSpecifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CSLPRFShortcutCompanionSettingsListController

- (CSLPRFShortcutCompanionSettingsListController)init
{
  v6.receiver = self;
  v6.super_class = CSLPRFShortcutCompanionSettingsListController;
  v2 = [(CSLPRFShortcutCompanionSettingsListController *)&v6 init];
  if (v2)
  {
    v3 = [[CSLPRFStingConfiguration alloc] initWithDelegate:v2];
    stingConfiguration = v2->_stingConfiguration;
    v2->_stingConfiguration = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CSLPRFShortcutCompanionSettingsListController;
  [(CSLPRFShortcutCompanionSettingsListController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SHORTCUT_TITLE" value:&stru_C380 table:@"LocalizableSettings-N199"];
  [(CSLPRFShortcutCompanionSettingsListController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [(CSLPRFStingConfiguration *)self->_stingConfiguration workoutIdentifier];
    v7 = [PSSpecifier groupSpecifierWithID:@"StingShortcutGroupID"];
    selectedGroupSpecifier = self->_selectedGroupSpecifier;
    self->_selectedGroupSpecifier = v7;

    [(PSSpecifier *)self->_selectedGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v5 addObject:self->_selectedGroupSpecifier];
    v9 = [(CSLPRFShortcutCompanionSettingsListController *)self _settingsModel];
    v10 = [v9 shortcutItems];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_5BBC;
    v16[3] = &unk_C340;
    v16[4] = self;
    v17 = v6;
    v18 = v5;
    v11 = v5;
    v12 = v6;
    [v10 enumerateKeysAndObjectsUsingBlock:v16];
    v13 = [v11 copy];
    v14 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v13;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_makeListItemSpecifier:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = [PSSpecifier preferenceSpecifierNamed:a3 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v7 setIdentifier:v6];
  [v7 setProperty:v6 forKey:PSValueKey];

  return v7;
}

- (void)reloadSpecifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  v4.receiver = self;
  v4.super_class = CSLPRFShortcutCompanionSettingsListController;
  [(CSLPRFShortcutCompanionSettingsListController *)&v4 reloadSpecifiers];
}

- (id)_settingsModel
{
  model = self->_model;
  if (!model)
  {
    v4 = [(CSLPRFShortcutCompanionSettingsListController *)self specifier];
    v5 = [v4 propertyForKey:@"StingSettingsModel"];
    v6 = self->_model;
    self->_model = v5;

    model = self->_model;
  }

  return model;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSLPRFShortcutCompanionSettingsListController *)self indexForIndexPath:v6];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 propertyForKey:PSValueKey];
  [(CSLPRFStingConfiguration *)self->_stingConfiguration setConfigurationForBundleID:0 actionType:2 identifier:v10 source:1];
  [(PSSpecifier *)self->_selectedGroupSpecifier setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
  v11.receiver = self;
  v11.super_class = CSLPRFShortcutCompanionSettingsListController;
  [(CSLPRFShortcutCompanionSettingsListController *)&v11 tableView:v7 didSelectRowAtIndexPath:v6];
}

@end