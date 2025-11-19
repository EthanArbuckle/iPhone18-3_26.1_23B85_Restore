@interface CSLPRFSelectedActionApplicationCompanionListController
- (CSLPRFSelectedActionApplicationCompanionListController)init;
- (id)_makeListItemSpecifier:(id)a3;
- (id)_settingsModel;
- (id)specifiers;
- (void)reloadSpecifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CSLPRFSelectedActionApplicationCompanionListController

- (CSLPRFSelectedActionApplicationCompanionListController)init
{
  v8.receiver = self;
  v8.super_class = CSLPRFSelectedActionApplicationCompanionListController;
  v2 = [(CSLPRFSelectedActionApplicationCompanionListController *)&v8 init];
  if (v2)
  {
    v3 = [CSLPRFApplicationLibrary sharedLibraryForLocation:0];
    appLibrary = v2->_appLibrary;
    v2->_appLibrary = v3;

    v5 = [[CSLPRFStingConfiguration alloc] initWithDelegate:v2];
    stingConfiguration = v2->_stingConfiguration;
    v2->_stingConfiguration = v5;
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CSLPRFSelectedActionApplicationCompanionListController;
  [(CSLPRFSelectedActionApplicationCompanionListController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APP" value:&stru_C380 table:@"LocalizableSettings-N199"];

  [(CSLPRFSelectedActionApplicationCompanionListController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v26 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = [PSSpecifier groupSpecifierWithID:@"StingSelectedActionApplicationGroupID"];
    selectedActionApplicationGroupSpecifier = self->_selectedActionApplicationGroupSpecifier;
    self->_selectedActionApplicationGroupSpecifier = v5;

    [(PSSpecifier *)self->_selectedActionApplicationGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v4 addObject:self->_selectedActionApplicationGroupSpecifier];
    if (!self->_settingsModel)
    {
      v7 = [(CSLPRFSelectedActionApplicationCompanionListController *)self _settingsModel];
      settingsModel = self->_settingsModel;
      self->_settingsModel = v7;
    }

    v9 = [(CSLPRFStingConfiguration *)self->_stingConfiguration actionType];
    if ([(CSLPRFStingConfiguration *)self->_stingConfiguration actionType]== &dword_8 + 1)
    {
      v10 = 6;
    }

    else
    {
      v10 = v9;
    }

    v11 = [(CSLPRFStingSettingsModel *)self->_settingsModel bundleIDsForActionType:v10];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      v27 = PSRadioGroupCheckedSpecifierKey;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [(CSLPRFApplicationLibrary *)self->_appLibrary applicationWithBundleIdentifier:v16];
          v18 = v17;
          if (v17)
          {
            v19 = [v17 localizedName];

            if (v19)
            {
              v20 = [(CSLPRFSelectedActionApplicationCompanionListController *)self _makeListItemSpecifier:v18];
              [v4 addObject:v20];
              v21 = [(CSLPRFStingConfiguration *)self->_stingConfiguration bundleID];
              v22 = [v16 isEqualToString:v21];

              if (v22)
              {
                [(PSSpecifier *)self->_selectedActionApplicationGroupSpecifier setProperty:v20 forKey:v27];
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    v23 = [v4 copy];
    v24 = *&self->PSListController_opaque[v26];
    *&self->PSListController_opaque[v26] = v23;

    v3 = *&self->PSListController_opaque[v26];
  }

  return v3;
}

- (void)reloadSpecifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  v4.receiver = self;
  v4.super_class = CSLPRFSelectedActionApplicationCompanionListController;
  [(CSLPRFSelectedActionApplicationCompanionListController *)&v4 reloadSpecifiers];
}

- (id)_settingsModel
{
  model = self->_model;
  if (!model)
  {
    v4 = [(CSLPRFSelectedActionApplicationCompanionListController *)self specifier];
    v5 = [v4 propertyForKey:@"StingSettingsModel"];
    v6 = self->_model;
    self->_model = v5;

    model = self->_model;
  }

  return model;
}

- (id)_makeListItemSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 localizedName];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];

  v7 = [v4 bundleIdentifier];
  [v6 setProperty:v7 forKey:PSValueKey];

  v8 = [v4 bundleIdentifier];
  [v6 setIdentifier:v8];

  [v6 setApp:v4];
  v9 = [v4 bundleIdentifier];

  [v6 setProperty:v9 forKey:PSLazyIconAppID];
  [v6 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSLPRFSelectedActionApplicationCompanionListController *)self indexForIndexPath:v6];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  [(PSSpecifier *)self->_selectedActionApplicationGroupSpecifier setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
  v10 = [v9 propertyForKey:PSValueKey];
  v11 = [(CSLPRFStingConfiguration *)self->_stingConfiguration actionType];
  if (v11 == &dword_8 + 1 || v11 == &dword_4 + 2)
  {
    v13 = objc_alloc_init(CSLPRFStingConfigurationHistory);
    v14 = [v13 itemForWorkoutWithBundleID:v10];
    v15 = [v14 actionType];
    v16 = [v15 integerValue];

    v17 = [v14 identifier];
  }

  else
  {
    v16 = v11;
    v17 = 0;
  }

  [(CSLPRFStingConfiguration *)self->_stingConfiguration setConfigurationForBundleID:v10 actionType:v16 identifier:v17 source:1];
  v18.receiver = self;
  v18.super_class = CSLPRFSelectedActionApplicationCompanionListController;
  [(CSLPRFSelectedActionApplicationCompanionListController *)&v18 tableView:v7 didSelectRowAtIndexPath:v6];
}

@end