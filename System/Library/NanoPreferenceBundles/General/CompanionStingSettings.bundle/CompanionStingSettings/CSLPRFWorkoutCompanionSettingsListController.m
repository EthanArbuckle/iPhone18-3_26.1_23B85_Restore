@interface CSLPRFWorkoutCompanionSettingsListController
- (CSLPRFWorkoutCompanionSettingsListController)init;
- (id)_makeActionItemSpecifier:(id)a3 actionType:(unint64_t)a4;
- (id)_makeListItemSpecifier:(id)a3 actionType:(unint64_t)a4;
- (id)_settingsModel;
- (id)specifiers;
- (void)reloadSpecifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CSLPRFWorkoutCompanionSettingsListController

- (CSLPRFWorkoutCompanionSettingsListController)init
{
  v6.receiver = self;
  v6.super_class = CSLPRFWorkoutCompanionSettingsListController;
  v2 = [(CSLPRFWorkoutCompanionSettingsListController *)&v6 init];
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
  v8.receiver = self;
  v8.super_class = CSLPRFWorkoutCompanionSettingsListController;
  [(CSLPRFWorkoutCompanionSettingsListController *)&v8 viewDidLoad];
  v3 = [(CSLPRFWorkoutCompanionSettingsListController *)self table];
  v4 = objc_opt_class();
  v5 = +[CSLPRFStingTitleSubtitleCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FIRST_PRESS" value:&stru_C380 table:@"LocalizableSettings-N199"];
  [(CSLPRFWorkoutCompanionSettingsListController *)self setTitle:v7];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v53 = [(CSLPRFWorkoutCompanionSettingsListController *)self _settingsModel];
    v6 = [(CSLPRFStingConfiguration *)self->_stingConfiguration bundleID];
    v56 = [(CSLPRFStingConfiguration *)self->_stingConfiguration workoutIdentifier];
    v55 = [(CSLPRFStingConfiguration *)self->_stingConfiguration actionType];
    v7 = [PSSpecifier groupSpecifierWithID:@"StingWorkoutAppActionTypeGroupID"];
    v48 = PSIsRadioGroupKey;
    [v7 setProperty:&__kCFBooleanTrue forKey:?];
    v8 = [NSNumber numberWithUnsignedInteger:[(CSLPRFStingConfiguration *)self->_stingConfiguration actionType]];
    [v7 setProperty:v8 forKey:PSValueKey];

    [v5 addObject:v7];
    v57 = self;
    v51 = v7;
    objc_storeStrong(&self->_selectedActionGroupSpecifier, v7);
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v54 = [v9 localizedStringForKey:@"OPEN_APP" value:&stru_C380 table:@"LocalizableSettings-N199"];

    if (!v6)
    {
      goto LABEL_6;
    }

    v10 = [CSLPRFApplicationLibrary sharedLibraryForLocation:0];
    v11 = [v10 applicationWithBundleIdentifier:v6];
    v12 = [v11 localizedName];

    if (v12)
    {
      v50 = v12;
      if ([v12 length])
      {
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        [v13 localizedStringForKey:@"OPEN_APP_NAME" value:&stru_C380 table:@"LocalizableSettings-N199"];
        v15 = v14 = v6;
        v16 = [NSString stringWithFormat:v15, v12];

        v6 = v14;
        v54 = v16;
      }
    }

    else
    {
LABEL_6:
      v50 = 0;
    }

    v17 = [(CSLPRFWorkoutCompanionSettingsListController *)v57 _makeActionItemSpecifier:v54 actionType:9];
    [v5 addObject:v17];
    v52 = [v53 startWorkoutsListForBundleID:v6];
    if ([v52 count])
    {
      v18 = [NSBundle bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"START_WORKOUT" value:&stru_C380 table:@"LocalizableSettings-N199"];

      v20 = [(CSLPRFWorkoutCompanionSettingsListController *)v57 _makeActionItemSpecifier:v19 actionType:6];
      [v5 addObject:v20];
    }

    else
    {
      v20 = 0;
    }

    if ([(CSLPRFStingConfiguration *)v57->_stingConfiguration actionType]== &dword_4 + 2)
    {
      v21 = v52;
      if (v20)
      {
        [(PSSpecifier *)v57->_selectedActionGroupSpecifier setProperty:v20 forKey:PSRadioGroupCheckedSpecifierKey];
      }

      v22 = v57;
      if (![v52 count])
      {
        goto LABEL_34;
      }

      v46 = v20;
      v47 = v17;
      v23 = [NSBundle bundleForClass:objc_opt_class()];
      [v23 localizedStringForKey:@"WORKOUT" value:&stru_C380 table:@"LocalizableSettings-N199"];
      v25 = v24 = v6;
      v26 = [PSSpecifier groupSpecifierWithID:@"StingStartWorkoutGroupID" name:v25];

      [v26 setProperty:&__kCFBooleanTrue forKey:v48];
      v49 = v24;
      if ([v24 isEqualToString:@"com.apple.SessionTrackerApp"])
      {
        v27 = [NSBundle bundleForClass:objc_opt_class()];
        v28 = [v27 localizedStringForKey:@"RECENT_WORKOUT_FOOTER" value:&stru_C380 table:@"LocalizableSettings-N199"];
        [v26 setProperty:v28 forKey:PSFooterTextGroupKey];
      }

      objc_storeStrong(&v57->_selectedStartWorkoutsGroupSpecifier, v26);
      v29 = v5;
      v45 = v26;
      [v5 addObject:v26];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v30 = v52;
      v31 = [v30 countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v59;
        v34 = PSRadioGroupCheckedSpecifierKey;
        do
        {
          for (i = 0; i != v32; i = i + 1)
          {
            if (*v59 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v36 = *(*(&v58 + 1) + 8 * i);
            v37 = [v36 title];

            if (v37)
            {
              v38 = [(CSLPRFWorkoutCompanionSettingsListController *)v22 _makeListItemSpecifier:v36 actionType:6];
              v39 = [v36 workoutIdentifier];
              v40 = [v39 isEqualToString:v56];

              v41 = v40 == 0;
              v22 = v57;
              v41 = !v41 && v55 == &dword_4 + 2;
              if (v41)
              {
                [(PSSpecifier *)v57->_selectedStartWorkoutsGroupSpecifier setProperty:v38 forKey:v34];
              }

              [v29 addObject:v38];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v58 objects:v62 count:16];
        }

        while (v32);
      }

      v6 = v49;
      v5 = v29;
      v20 = v46;
      v17 = v47;
    }

    else
    {
      [(PSSpecifier *)v57->_selectedActionGroupSpecifier setProperty:v17 forKey:PSRadioGroupCheckedSpecifierKey];
      v22 = v57;
    }

    v21 = v52;
LABEL_34:
    v42 = [v5 copy];
    v43 = *&v22->PSListController_opaque[v3];
    *&v22->PSListController_opaque[v3] = v42;

    v4 = *&v22->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_makeListItemSpecifier:(id)a3 actionType:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 title];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];

  v9 = [v6 subtitle];

  if (v9)
  {
    v10 = [v6 subtitle];
    [v8 setProperty:v10 forKey:PSTableCellSubtitleTextKey];
  }

  v11 = [v6 workoutIdentifier];

  if (v11)
  {
    v12 = [v6 workoutIdentifier];
    [v8 setProperty:v12 forKey:@"CSLPRFWorkoutIdentifier"];
  }

  v13 = [NSNumber numberWithUnsignedInteger:a4];
  [v8 setProperty:v13 forKey:@"CSLPRFActionType"];

  [v8 setProperty:&off_CF48 forKey:@"CSLPRFCellTypeKey"];
  [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];

  return v8;
}

- (id)_makeActionItemSpecifier:(id)a3 actionType:(unint64_t)a4
{
  v5 = [PSSpecifier preferenceSpecifierNamed:a3 target:self set:0 get:0 detail:0 cell:3 edit:0];
  v6 = [NSNumber numberWithUnsignedInteger:a4];
  [v5 setProperty:v6 forKey:@"CSLPRFActionType"];

  [v5 setProperty:&off_CF60 forKey:@"CSLPRFCellTypeKey"];

  return v5;
}

- (void)reloadSpecifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  v4.receiver = self;
  v4.super_class = CSLPRFWorkoutCompanionSettingsListController;
  [(CSLPRFWorkoutCompanionSettingsListController *)&v4 reloadSpecifiers];
}

- (id)_settingsModel
{
  model = self->_model;
  if (!model)
  {
    v4 = [(CSLPRFWorkoutCompanionSettingsListController *)self specifier];
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
  v8 = [(CSLPRFWorkoutCompanionSettingsListController *)self indexForIndexPath:v6];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 propertyForKey:@"CSLPRFCellTypeKey"];
  v11 = [v9 propertyForKey:@"CSLPRFActionType"];
  v12 = [v11 integerValue];
  v13 = [(CSLPRFStingConfiguration *)self->_stingConfiguration bundleID];
  if ([v10 integerValue] == &dword_0 + 1)
  {
    if (v12 == &dword_4 + 2)
    {
      v19 = [(CSLPRFWorkoutCompanionSettingsListController *)self _settingsModel];
      v18 = [v19 startWorkoutsListForBundleID:v13];
      v14 = [v18 firstObject];
      stingConfiguration = self->_stingConfiguration;
      v16 = [v14 workoutIdentifier];
      [(CSLPRFStingConfiguration *)stingConfiguration setConfigurationForBundleID:v13 actionType:6 identifier:v16 source:1];
    }

    else
    {
      [(CSLPRFStingConfiguration *)self->_stingConfiguration setConfigurationForBundleID:v13 actionType:9 identifier:0 source:1];
    }
  }

  else
  {
    v17 = [v9 propertyForKey:@"CSLPRFWorkoutIdentifier"];
    [(CSLPRFStingConfiguration *)self->_stingConfiguration setConfigurationForBundleID:v13 actionType:6 identifier:v17 source:1];
    [(PSSpecifier *)self->_selectedStartWorkoutsGroupSpecifier setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  v20.receiver = self;
  v20.super_class = CSLPRFWorkoutCompanionSettingsListController;
  [(CSLPRFWorkoutCompanionSettingsListController *)&v20 tableView:v7 didSelectRowAtIndexPath:v6];
}

@end