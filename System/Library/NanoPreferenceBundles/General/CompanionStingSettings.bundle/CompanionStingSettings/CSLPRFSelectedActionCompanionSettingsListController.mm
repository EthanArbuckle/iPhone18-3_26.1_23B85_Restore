@interface CSLPRFSelectedActionCompanionSettingsListController
- (CSLPRFSelectedActionCompanionSettingsListController)init;
- (id)_makeListItemSpecifier:(id)specifier label:(id)label systemImageName:(id)name value:(unint64_t)value;
- (id)_settingsModel;
- (id)specifiers;
- (void)reloadSpecifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CSLPRFSelectedActionCompanionSettingsListController

- (CSLPRFSelectedActionCompanionSettingsListController)init
{
  v6.receiver = self;
  v6.super_class = CSLPRFSelectedActionCompanionSettingsListController;
  v2 = [(CSLPRFSelectedActionCompanionSettingsListController *)&v6 init];
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
  v5.super_class = CSLPRFSelectedActionCompanionSettingsListController;
  [(CSLPRFSelectedActionCompanionSettingsListController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ACTION" value:&stru_C380 table:@"LocalizableSettings-N199"];
  [(CSLPRFSelectedActionCompanionSettingsListController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v27 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    [(CSLPRFStingConfiguration *)self->_stingConfiguration actionType];
    v30 = CSLActionTypeToSettingsActionType();
    v5 = [PSSpecifier groupSpecifierWithID:@"StingSystemSettingsSelectedActionTypeGroupID"];
    selectedActionGroupSpecifier = self->_selectedActionGroupSpecifier;
    self->_selectedActionGroupSpecifier = v5;

    [(PSSpecifier *)self->_selectedActionGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v7 = v4;
    [v4 addObject:self->_selectedActionGroupSpecifier];
    _settingsModel = [(CSLPRFSelectedActionCompanionSettingsListController *)self _settingsModel];
    quickActionItems = [_settingsModel quickActionItems];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = quickActionItems;
    v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      v28 = PSRadioGroupCheckedSpecifierKey;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          actionType = [v14 actionType];
          [actionType unsignedIntegerValue];
          v16 = CSLActionTypeToSettingsActionType();

          title = [v14 title];
          assetName = [v14 assetName];
          v19 = [(CSLPRFSelectedActionCompanionSettingsListController *)self _makeListItemSpecifier:@"StingSystemSettingsSelectedActionTypeItem" label:title systemImageName:assetName value:v16];

          [v7 addObject:v19];
          if (v30 == v16)
          {
            [(PSSpecifier *)self->_selectedActionGroupSpecifier setProperty:v19 forKey:v28];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    v20 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:18];
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"NONE_ACTION" value:&stru_C380 table:@"LocalizableSettings-N199"];
    v23 = [(CSLPRFSelectedActionCompanionSettingsListController *)self _makeListItemSpecifier:@"StingSystemSettingsSelectedActionTypeItem" label:v22 systemImageName:v20 value:7];

    [v7 addObject:v23];
    if (v30 == 7)
    {
      [(PSSpecifier *)self->_selectedActionGroupSpecifier setProperty:v23 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v24 = [v7 copy];
    v25 = *&self->PSListController_opaque[v27];
    *&self->PSListController_opaque[v27] = v24;

    v3 = *&self->PSListController_opaque[v27];
  }

  return v3;
}

- (void)reloadSpecifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  v4.receiver = self;
  v4.super_class = CSLPRFSelectedActionCompanionSettingsListController;
  [(CSLPRFSelectedActionCompanionSettingsListController *)&v4 reloadSpecifiers];
}

- (id)_settingsModel
{
  model = self->_model;
  if (!model)
  {
    specifier = [(CSLPRFSelectedActionCompanionSettingsListController *)self specifier];
    v5 = [specifier propertyForKey:@"StingSettingsModel"];
    v6 = self->_model;
    self->_model = v5;

    model = self->_model;
  }

  return model;
}

- (id)_makeListItemSpecifier:(id)specifier label:(id)label systemImageName:(id)name value:(unint64_t)value
{
  specifierCopy = specifier;
  nameCopy = name;
  v12 = [PSSpecifier preferenceSpecifierNamed:label target:self set:0 get:0 detail:0 cell:3 edit:0];
  if (nameCopy)
  {
    v13 = [UIImage _systemImageNamed:nameCopy];
    v14 = +[UIColor systemWhiteColor];
    v15 = [v13 imageWithTintColor:v14 renderingMode:1];

    if (v15)
    {
      [v12 setProperty:v15 forKey:PSIconImageKey];
    }
  }

  [v12 setIdentifier:specifierCopy];
  v16 = [NSNumber numberWithUnsignedInteger:value];
  [v12 setProperty:v16 forKey:PSValueKey];

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CSLPRFSelectedActionCompanionSettingsListController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 propertyForKey:PSValueKey];
  [v10 integerValue];

  v11 = CSLSettingsActionTypeToLinkActionType();
  [(PSSpecifier *)self->_selectedActionGroupSpecifier setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
  if (v11 != [(CSLPRFStingConfiguration *)self->_stingConfiguration actionType])
  {
    [(CSLPRFStingConfiguration *)self->_stingConfiguration setExpectedConfigurationForAction:v11 source:1];
    v12.receiver = self;
    v12.super_class = CSLPRFSelectedActionCompanionSettingsListController;
    [(CSLPRFSelectedActionCompanionSettingsListController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

@end