@interface CSLPRFShortcutCompanionSettingsListController
- (CSLPRFShortcutCompanionSettingsListController)init;
- (id)_makeListItemSpecifier:(id)specifier value:(id)value;
- (id)_settingsModel;
- (id)specifiers;
- (void)reloadSpecifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
    workoutIdentifier = [(CSLPRFStingConfiguration *)self->_stingConfiguration workoutIdentifier];
    v7 = [PSSpecifier groupSpecifierWithID:@"StingShortcutGroupID"];
    selectedGroupSpecifier = self->_selectedGroupSpecifier;
    self->_selectedGroupSpecifier = v7;

    [(PSSpecifier *)self->_selectedGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v5 addObject:self->_selectedGroupSpecifier];
    _settingsModel = [(CSLPRFShortcutCompanionSettingsListController *)self _settingsModel];
    shortcutItems = [_settingsModel shortcutItems];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_5BBC;
    v16[3] = &unk_C340;
    v16[4] = self;
    v17 = workoutIdentifier;
    v18 = v5;
    v11 = v5;
    v12 = workoutIdentifier;
    [shortcutItems enumerateKeysAndObjectsUsingBlock:v16];
    v13 = [v11 copy];
    v14 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v13;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_makeListItemSpecifier:(id)specifier value:(id)value
{
  valueCopy = value;
  v7 = [PSSpecifier preferenceSpecifierNamed:specifier target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v7 setIdentifier:valueCopy];
  [v7 setProperty:valueCopy forKey:PSValueKey];

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
    specifier = [(CSLPRFShortcutCompanionSettingsListController *)self specifier];
    v5 = [specifier propertyForKey:@"StingSettingsModel"];
    v6 = self->_model;
    self->_model = v5;

    model = self->_model;
  }

  return model;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(CSLPRFShortcutCompanionSettingsListController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 propertyForKey:PSValueKey];
  [(CSLPRFStingConfiguration *)self->_stingConfiguration setConfigurationForBundleID:0 actionType:2 identifier:v10 source:1];
  [(PSSpecifier *)self->_selectedGroupSpecifier setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
  v11.receiver = self;
  v11.super_class = CSLPRFShortcutCompanionSettingsListController;
  [(CSLPRFShortcutCompanionSettingsListController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

@end