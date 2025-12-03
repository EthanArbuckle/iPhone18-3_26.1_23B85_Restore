@interface CSLPRFAccessibilityCompanionSettingsListController
- (CSLPRFAccessibilityCompanionSettingsListController)init;
- (id)_makeListItemSpecifier:(id)specifier value:(id)value;
- (id)_settingsModel;
- (id)specifiers;
- (void)reloadSpecifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CSLPRFAccessibilityCompanionSettingsListController

- (CSLPRFAccessibilityCompanionSettingsListController)init
{
  v6.receiver = self;
  v6.super_class = CSLPRFAccessibilityCompanionSettingsListController;
  v2 = [(CSLPRFAccessibilityCompanionSettingsListController *)&v6 init];
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
  v5.super_class = CSLPRFAccessibilityCompanionSettingsListController;
  [(CSLPRFAccessibilityCompanionSettingsListController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ACCESSIBILITY_TITLE" value:&stru_C380 table:@"LocalizableSettings-N199"];
  [(CSLPRFAccessibilityCompanionSettingsListController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v22 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    workoutIdentifier = [(CSLPRFStingConfiguration *)self->_stingConfiguration workoutIdentifier];
    v6 = [PSSpecifier groupSpecifierWithID:@"StingAccessibilityGroupID"];
    selectedGroupSpecifier = self->_selectedGroupSpecifier;
    self->_selectedGroupSpecifier = v6;

    [(PSSpecifier *)self->_selectedGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v4 addObject:self->_selectedGroupSpecifier];
    _settingsModel = [(CSLPRFAccessibilityCompanionSettingsListController *)self _settingsModel];
    accessibilityItems = [_settingsModel accessibilityItems];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = accessibilityItems;
    v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      v23 = PSRadioGroupCheckedSpecifierKey;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          title = [v14 title];
          identifier = [v14 identifier];
          v17 = [(CSLPRFAccessibilityCompanionSettingsListController *)self _makeListItemSpecifier:title value:identifier];

          identifier2 = [v14 identifier];
          LODWORD(title) = [identifier2 isEqualToString:workoutIdentifier];

          if (title)
          {
            [(PSSpecifier *)self->_selectedGroupSpecifier setProperty:v17 forKey:v23];
          }

          [v4 addObject:v17];
        }

        v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    v19 = [v4 copy];
    v20 = *&self->PSListController_opaque[v22];
    *&self->PSListController_opaque[v22] = v19;

    v3 = *&self->PSListController_opaque[v22];
  }

  return v3;
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
  v4.super_class = CSLPRFAccessibilityCompanionSettingsListController;
  [(CSLPRFAccessibilityCompanionSettingsListController *)&v4 reloadSpecifiers];
}

- (id)_settingsModel
{
  model = self->_model;
  if (!model)
  {
    specifier = [(CSLPRFAccessibilityCompanionSettingsListController *)self specifier];
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
  v8 = [(CSLPRFAccessibilityCompanionSettingsListController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 propertyForKey:PSValueKey];
  [(CSLPRFStingConfiguration *)self->_stingConfiguration setConfigurationForBundleID:@"com.apple.accessibility" actionType:38 identifier:v10 source:1];
  [(PSSpecifier *)self->_selectedGroupSpecifier setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
  v11.receiver = self;
  v11.super_class = CSLPRFAccessibilityCompanionSettingsListController;
  [(CSLPRFAccessibilityCompanionSettingsListController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

@end