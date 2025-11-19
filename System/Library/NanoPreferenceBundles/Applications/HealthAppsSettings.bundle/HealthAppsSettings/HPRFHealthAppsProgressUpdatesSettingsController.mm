@interface HPRFHealthAppsProgressUpdatesSettingsController
+ (id)progressUpdateFrequency;
- (HPRFHealthAppsProgressUpdatesSettingsController)init;
- (NPSDomainAccessor)domainAccessor;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation HPRFHealthAppsProgressUpdatesSettingsController

+ (id)progressUpdateFrequency
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanolifestyle"];
  v3 = [v2 synchronize];
  v4 = [v2 objectForKey:@"ProgressUpdateFrequency"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
    if (!v6)
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"PROGRESS_UPDATE_NONE" value:&stru_86F0 table:@"ProgressUpdateFrequency"];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 14400;
  }

  v9 = [NSNumber numberWithInteger:v6 / 3600];
  v7 = [NSNumberFormatter localizedStringFromNumber:v9 numberStyle:0];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"SELECTED_PROGRESS_UPDATE_%@" value:&stru_86F0 table:@"ProgressUpdateFrequency"];

  v8 = [NSString stringWithFormat:v11, v7];

LABEL_6:

  return v8;
}

- (HPRFHealthAppsProgressUpdatesSettingsController)init
{
  v6.receiver = self;
  v6.super_class = HPRFHealthAppsProgressUpdatesSettingsController;
  v2 = [(HPRFHealthAppsProgressUpdatesSettingsController *)&v6 init];
  v3 = objc_opt_new();
  syncManager = v2->_syncManager;
  v2->_syncManager = v3;

  return v2;
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PROGRESS_UPDATE_PANE_TITLE" value:&stru_86F0 table:@"ProgressUpdateFrequency"];

  return v3;
}

- (id)specifiers
{
  v3 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v47 = OBJC_IVAR___PSListController__specifiers;
    v4 = [(HPRFHealthAppsProgressUpdatesSettingsController *)self loadSpecifiersFromPlistName:@"ProgressUpdateFrequency" target:self];
    v5 = [v4 specifierForID:@"ZERO_HOURS_ID"];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"PROGRESS_UPDATE_NONE" value:&stru_86F0 table:@"ProgressUpdateFrequency"];
    v8 = [NSString stringWithFormat:v7];

    v58 = v5;
    v50 = v8;
    [v5 setName:v8];
    v9 = [v4 specifierForID:@"TWO_HOURS_ID"];
    v10 = [NSNumberFormatter localizedStringFromNumber:&off_8BE0 numberStyle:0];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"PROGRESS_UPDATE_%@" value:&stru_86F0 table:@"ProgressUpdateFrequency"];
    v56 = v10;
    v13 = [NSString stringWithFormat:v12, v10];

    v57 = v9;
    v49 = v13;
    [v9 setName:v13];
    v14 = [v4 specifierForID:@"FOUR_HOURS_ID"];
    v15 = [NSNumberFormatter localizedStringFromNumber:&off_8BF8 numberStyle:0];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"PROGRESS_UPDATE_%@" value:&stru_86F0 table:@"ProgressUpdateFrequency"];
    v54 = v15;
    v18 = [NSString stringWithFormat:v17, v15];

    v55 = v14;
    v48 = v18;
    [v14 setName:v18];
    v19 = [v4 specifierForID:@"SIX_HOURS_ID"];
    v20 = [NSNumberFormatter localizedStringFromNumber:&off_8C10 numberStyle:0];
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"PROGRESS_UPDATE_%@" value:&stru_86F0 table:@"ProgressUpdateFrequency"];
    v52 = v20;
    v23 = [NSString stringWithFormat:v22, v20];

    v53 = v19;
    v46 = v23;
    [v19 setName:v23];
    v24 = [v4 specifierForID:@"EIGHT_HOURS_ID"];
    v25 = [NSNumberFormatter localizedStringFromNumber:&off_8C28 numberStyle:0];
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"PROGRESS_UPDATE_%@" value:&stru_86F0 table:@"ProgressUpdateFrequency"];
    v51 = v25;
    v28 = [NSString stringWithFormat:v27, v25];

    v29 = v24;
    v45 = v28;
    [v24 setName:v28];
    v30 = [(HPRFHealthAppsProgressUpdatesSettingsController *)self domainAccessor];
    v31 = [v30 synchronize];
    v32 = [v30 objectForKey:@"ProgressUpdateFrequency"];
    v33 = v32;
    if (v32)
    {
      v34 = [v32 integerValue];
    }

    else
    {
      v34 = &loc_3840;
    }

    v35 = [NSBundle bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:@"PROGRESS_UPDATE_GROUP_FOOTER_FORMAT_%@" value:&stru_86F0 table:@"ProgressUpdateFrequency"];

    if (v34 <= 14399)
    {
      if (!v34)
      {
        v39 = [NSBundle bundleForClass:objc_opt_class()];
        v37 = [v39 localizedStringForKey:@"PROGRESS_UPDATE_GROUP_FOOTER_NONE" value:&stru_86F0 table:@"ProgressUpdateFrequency"];

        v38 = v58;
        goto LABEL_16;
      }

      if (v34 == &loc_1C20)
      {
        v37 = [NSString stringWithFormat:v36, v56];
        v38 = v57;
        goto LABEL_16;
      }
    }

    else
    {
      if (v34 == &loc_3840)
      {
        v37 = [NSString stringWithFormat:v36, v54];
        v38 = v55;
        goto LABEL_16;
      }

      if (v34 == objc_msgSend_meterUnitWithMetricPrefix_)
      {
        v37 = [NSString stringWithFormat:v36, v20];
        v38 = v53;
        goto LABEL_16;
      }

      if (v34 == "HealthAppsSettingsController failed to load FitnessJr value; semaphore timed out")
      {
        v37 = [NSString stringWithFormat:v36, v51];
        v38 = v29;
LABEL_16:
        v40 = v38;
        v41 = [v4 specifierForID:@"PROGRESS_UPDATE_GROUP_ID"];
        [v41 setProperty:v40 forKey:PSRadioGroupCheckedSpecifierKey];
        [v41 setProperty:v37 forKey:PSFooterTextGroupKey];
        v42 = [(HPRFHealthAppsProgressUpdatesSettingsController *)self localizedPaneTitle];
        [(HPRFHealthAppsProgressUpdatesSettingsController *)self setTitle:v42];

        v43 = *&self->BPSNotificationAppController_opaque[v47];
        *&self->BPSNotificationAppController_opaque[v47] = v4;

        v3 = *&self->BPSNotificationAppController_opaque[v47];
        goto LABEL_17;
      }
    }

    sub_439C();
  }

LABEL_17:

  return v3;
}

- (NPSDomainAccessor)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanolifestyle"];
    v5 = self->_domainAccessor;
    self->_domainAccessor = v4;

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HPRFHealthAppsProgressUpdatesSettingsController *)self indexForIndexPath:v6];
  v9 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [(HPRFHealthAppsProgressUpdatesSettingsController *)self domainAccessor];
  v11 = [v9 identifier];
  v12 = [v11 isEqualToString:@"ZERO_HOURS_ID"];

  v31 = v6;
  if (v12)
  {
    v13 = v7;
    v14 = 0;
LABEL_11:
    v23 = [NSNumber numberWithInteger:v14];
    [v10 setObject:v23 forKey:@"ProgressUpdateFrequency"];

    v24 = [v10 synchronize];
    syncManager = self->_syncManager;
    v33 = @"ProgressUpdateFrequency";
    v26 = [NSArray arrayWithObjects:&v33 count:1];
    v27 = [NSSet setWithArray:v26];
    [(NPSManager *)syncManager synchronizeNanoDomain:@"com.apple.nanolifestyle" keys:v27];

    v28 = [NSNumber numberWithBool:v12 ^ 1];
    FIActivityAnalyticsSubmission();

    v7 = v13;
    v6 = v31;
    goto LABEL_12;
  }

  v15 = [v9 identifier];
  v16 = [v15 isEqualToString:@"TWO_HOURS_ID"];

  if (v16)
  {
    v13 = v7;
    v14 = 7200;
    goto LABEL_11;
  }

  v17 = [v9 identifier];
  v18 = [v17 isEqualToString:@"FOUR_HOURS_ID"];

  if (v18)
  {
    v13 = v7;
    v14 = 14400;
    goto LABEL_11;
  }

  v19 = [v9 identifier];
  v20 = [v19 isEqualToString:@"SIX_HOURS_ID"];

  if (v20)
  {
    v13 = v7;
    v14 = 21600;
    goto LABEL_11;
  }

  v21 = [v9 identifier];
  v22 = [v21 isEqualToString:@"EIGHT_HOURS_ID"];

  if (v22)
  {
    v13 = v7;
    v14 = 28800;
    goto LABEL_11;
  }

LABEL_12:
  [(HPRFHealthAppsProgressUpdatesSettingsController *)self reloadSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSViewController__parentController]);
  v30 = [(HPRFHealthAppsProgressUpdatesSettingsController *)self specifier];
  [WeakRetained reloadSpecifier:v30];

  v32.receiver = self;
  v32.super_class = HPRFHealthAppsProgressUpdatesSettingsController;
  [(HPRFHealthAppsProgressUpdatesSettingsController *)&v32 tableView:v7 didSelectRowAtIndexPath:v6];
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  v2 = [(HPRFHealthAppsProgressUpdatesSettingsController *)self bundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

@end