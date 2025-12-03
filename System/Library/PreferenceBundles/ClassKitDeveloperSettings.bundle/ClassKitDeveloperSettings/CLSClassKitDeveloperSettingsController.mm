@interface CLSClassKitDeveloperSettingsController
- (id)specifiers;
- (void)resetDevelopmentData:(id)data;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCheckedSpecifierFromPreferences;
@end

@implementation CLSClassKitDeveloperSettingsController

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v42 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ACT_AS" value:&stru_42E8 table:@"ClassKitDeveloperSettings"];
    v7 = [PSSpecifier groupSpecifierWithID:@"CLSSettingsActAsGroupID" name:v6];
    [(CLSClassKitDeveloperSettingsController *)self setActAsGroupSpecifier:v7];

    actAsGroupSpecifier = [(CLSClassKitDeveloperSettingsController *)self actAsGroupSpecifier];
    v41 = PSIsRadioGroupKey;
    [actAsGroupSpecifier setProperty:&__kCFBooleanTrue forKey:?];

    actAsGroupSpecifier2 = [(CLSClassKitDeveloperSettingsController *)self actAsGroupSpecifier];
    [v4 addObject:actAsGroupSpecifier2];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"ACT_AS_OFF" value:&stru_42E8 table:@"ClassKitDeveloperSettings"];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];
    [(CLSClassKitDeveloperSettingsController *)self setActAsOffSpecifier:v12];

    actAsOffSpecifier = [(CLSClassKitDeveloperSettingsController *)self actAsOffSpecifier];
    [v4 addObject:actAsOffSpecifier];

    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"ACT_AS_TEACHER" value:&stru_42E8 table:@"ClassKitDeveloperSettings"];
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];
    [(CLSClassKitDeveloperSettingsController *)self setActAsTeacherSpecifier:v16];

    actAsTeacherSpecifier = [(CLSClassKitDeveloperSettingsController *)self actAsTeacherSpecifier];
    [v4 addObject:actAsTeacherSpecifier];

    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"ACT_AS_STUDENT" value:&stru_42E8 table:@"ClassKitDeveloperSettings"];
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:3 edit:0];
    [(CLSClassKitDeveloperSettingsController *)self setActAsStudentSpecifier:v20];

    actAsStudentSpecifier = [(CLSClassKitDeveloperSettingsController *)self actAsStudentSpecifier];
    [v4 addObject:actAsStudentSpecifier];

    v40 = [PSSpecifier groupSpecifierWithID:@"CLSSettingsResetDataGroupID"];
    [v4 addObject:v40];
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"RESET_DATA" value:&stru_42E8 table:@"ClassKitDeveloperSettings"];
    v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v24 setButtonAction:"resetDevelopmentData:"];
    [v4 addObject:v24];
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"CLASSKIT_CATALOG_ENVIRONMENT" value:&stru_42E8 table:@"ClassKitDeveloperSettings"];
    v27 = [PSSpecifier groupSpecifierWithID:@"CLSSettingsCatalogEnvGroupID" name:v26];
    [(CLSClassKitDeveloperSettingsController *)self setCatalogEnvGroupSpecifier:v27];

    catalogEnvGroupSpecifier = [(CLSClassKitDeveloperSettingsController *)self catalogEnvGroupSpecifier];
    [catalogEnvGroupSpecifier setProperty:&__kCFBooleanTrue forKey:v41];

    catalogEnvGroupSpecifier2 = [(CLSClassKitDeveloperSettingsController *)self catalogEnvGroupSpecifier];
    [v4 addObject:catalogEnvGroupSpecifier2];

    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"CLASSKIT_CATALOG_ENVIRONMENT_PROD" value:&stru_42E8 table:@"ClassKitDeveloperSettings"];
    v32 = [PSSpecifier preferenceSpecifierNamed:v31 target:self set:0 get:0 detail:0 cell:3 edit:0];
    [(CLSClassKitDeveloperSettingsController *)self setCatalogEnvProdSpecifier:v32];

    catalogEnvProdSpecifier = [(CLSClassKitDeveloperSettingsController *)self catalogEnvProdSpecifier];
    [v4 addObject:catalogEnvProdSpecifier];

    v34 = [NSBundle bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"CLASSKIT_CATALOG_ENVIRONMENT_DEV" value:&stru_42E8 table:@"ClassKitDeveloperSettings"];
    v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:self set:0 get:0 detail:0 cell:3 edit:0];
    [(CLSClassKitDeveloperSettingsController *)self setCatalogEnvDevSpecifier:v36];

    catalogEnvDevSpecifier = [(CLSClassKitDeveloperSettingsController *)self catalogEnvDevSpecifier];
    [v4 addObject:catalogEnvDevSpecifier];

    v38 = *&self->PSListController_opaque[v42];
    *&self->PSListController_opaque[v42] = v4;

    [(CLSClassKitDeveloperSettingsController *)self updateCheckedSpecifierFromPreferences];
    v3 = *&self->PSListController_opaque[v42];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v31.receiver = self;
  v31.super_class = CLSClassKitDeveloperSettingsController;
  [(CLSClassKitDeveloperSettingsController *)&v31 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(CLSClassKitDeveloperSettingsController *)self specifierAtIndex:[(CLSClassKitDeveloperSettingsController *)self indexForIndexPath:pathCopy]];
  actAsOffSpecifier = [(CLSClassKitDeveloperSettingsController *)self actAsOffSpecifier];

  if (v8 == actAsOffSpecifier)
  {
    v16 = 0;
    v15 = 0;
    v17 = 0;
LABEL_9:
    v14 = 1;
    goto LABEL_10;
  }

  actAsTeacherSpecifier = [(CLSClassKitDeveloperSettingsController *)self actAsTeacherSpecifier];

  if (v8 == actAsTeacherSpecifier)
  {
    v16 = 0;
    v17 = 0;
    v15 = 2;
    goto LABEL_9;
  }

  actAsStudentSpecifier = [(CLSClassKitDeveloperSettingsController *)self actAsStudentSpecifier];

  if (v8 == actAsStudentSpecifier)
  {
    v16 = 0;
    v17 = 0;
    v14 = 1;
    v15 = 1;
  }

  else
  {
    catalogEnvProdSpecifier = [(CLSClassKitDeveloperSettingsController *)self catalogEnvProdSpecifier];

    if (v8 == catalogEnvProdSpecifier)
    {
      v14 = 0;
      v15 = 0;
      v17 = 0;
      v16 = 1;
    }

    else
    {
      catalogEnvDevSpecifier = [(CLSClassKitDeveloperSettingsController *)self catalogEnvDevSpecifier];

      if (v8 != catalogEnvDevSpecifier)
      {
        goto LABEL_15;
      }

      v14 = 0;
      v15 = 0;
      v16 = 1;
      v17 = 1;
    }
  }

LABEL_10:
  v18 = +[CLSUtilityService sharedInstance];
  objc_initWeak(&location, self);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1500;
  v28 = sub_1510;
  v29 = dispatch_group_create();
  if (v14)
  {
    dispatch_group_enter(v25[5]);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1518;
    v23[3] = &unk_4168;
    v23[4] = &v24;
    [v18 setDevMode:v15 completion:v23];
  }

  if (v16)
  {
    dispatch_group_enter(v25[5]);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1528;
    v22[3] = &unk_4168;
    v22[4] = &v24;
    [v18 setClassKitCatalogEnvironment:v17 completion:v22];
  }

  v19 = v25[5];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1538;
  block[3] = &unk_4190;
  objc_copyWeak(&v21, &location);
  dispatch_group_notify(v19, &_dispatch_main_q, block);
  objc_destroyWeak(&v21);
  _Block_object_dispose(&v24, 8);

  objc_destroyWeak(&location);
LABEL_15:
}

- (void)updateCheckedSpecifierFromPreferences
{
  v3 = +[CLSUtilityService sharedInstance];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_16C8;
  v6[3] = &unk_41E0;
  objc_copyWeak(&v7, &location);
  [v3 getDevModeWithCompletion:v6];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_186C;
  v4[3] = &unk_4208;
  objc_copyWeak(&v5, &location);
  [v3 getClassKitCatalogEnvironmentWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)resetDevelopmentData:(id)data
{
  v3 = +[CLSUtilityService sharedInstance];
  [v3 recreateDevelopmentDatabaseWithCompletion:&stru_4248];
}

@end