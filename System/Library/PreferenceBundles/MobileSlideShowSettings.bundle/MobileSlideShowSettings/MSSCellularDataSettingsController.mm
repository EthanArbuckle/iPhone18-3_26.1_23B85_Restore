@interface MSSCellularDataSettingsController
+ (BOOL)shouldShowCellularDataSettings;
- (id)_labelForCellularData;
- (id)deepLinkURL;
- (id)paneTitleLocalizedResource;
- (id)pathComponentsLocalizedResource;
- (id)specifiers;
- (id)unlimitedUpdatesForSpecifier:(id)a3;
- (void)_validateUnlimitedUpdatesSpecifiers;
- (void)setUnlimitedUpdates:(id)a3 forSpecifier:(id)a4;
@end

@implementation MSSCellularDataSettingsController

- (void)_validateUnlimitedUpdatesSpecifiers
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  invocations = self->_invocations;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_15874;
  v6[3] = &unk_2D218;
  v6[4] = v7;
  [(NSArray *)invocations enumerateObjectsUsingBlock:v6];
  [(MSSCellularDataSettingsController *)self beginUpdates];
  unlimitedUpdatesSpecifiers = self->_unlimitedUpdatesSpecifiers;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_158B8;
  v5[3] = &unk_2D240;
  v5[4] = self;
  v5[5] = v7;
  [(NSArray *)unlimitedUpdatesSpecifiers enumerateObjectsUsingBlock:v5];
  [(MSSCellularDataSettingsController *)self endUpdates];
  _Block_object_dispose(v7, 8);
}

- (void)setUnlimitedUpdates:(id)a3 forSpecifier:(id)a4
{
  v4 = [a3 BOOLValue];

  _PLCPLSetAllowsUnlimitedSyncOverCellular(v4);
}

- (id)unlimitedUpdatesForSpecifier:(id)a3
{
  v3 = PLCPLAllowsUnlimitedSyncOverCellular();

  return [NSNumber numberWithBool:v3];
}

- (id)_labelForCellularData
{
  if (+[MSSCellularDataSettingsController shouldShowCellularDataSettings]&& (MGGetBoolAnswer() & 1) != 0)
  {
    return @"USE_CELLULAR_DATA_LABEL_WLAN";
  }

  else
  {
    return @"USE_CELLULAR_DATA_LABEL";
  }
}

- (id)pathComponentsLocalizedResource
{
  v3 = +[MSSSettingsUtilities photosMainPaneLocalizedResource];
  v7[0] = v3;
  v4 = [(MSSCellularDataSettingsController *)self paneTitleLocalizedResource];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (id)deepLinkURL
{
  v2 = [NSString stringWithFormat:@"%@/%@/%@", @"settings-navigation://com.apple.Settings.Apps", @"com.apple.mobileslideshow", @"CellularDataGroup"];
  v3 = [NSURL URLWithString:v2];

  return v3;
}

- (id)paneTitleLocalizedResource
{
  v3 = [_NSLocalizedStringResource alloc];
  v4 = [(MSSCellularDataSettingsController *)self _labelForCellularData];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 bundleURL];
  v8 = [v3 initWithKey:v4 table:@"Photos" locale:v5 bundleURL:v7];

  return v8;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = MGGetBoolAnswer();
    if (v6)
    {
      v7 = @"USE_CELLULAR_DATA_FOOTER_WLAN";
    }

    else
    {
      v7 = @"USE_CELLULAR_DATA_FOOTER";
    }

    if (v6)
    {
      v8 = @"UNLIMITED_UPLOADS_AND_DOWNLOADS_FOOTER_WLAN";
    }

    else
    {
      v8 = @"UNLIMITED_UPLOADS_AND_DOWNLOADS_FOOTER_WIFI";
    }

    v32 = [v5 localizedStringForKey:v7 value:&stru_2D398 table:@"Photos"];
    v31 = [PSSpecifier groupSpecifierWithID:@"UseCellularDataGroup"];
    v9 = PSFooterTextGroupKey;
    [v31 setObject:v32 forKeyedSubscript:PSFooterTextGroupKey];
    v10 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.mobileslideshow"];
    appPolicy = self->_appPolicy;
    self->_appPolicy = v10;

    v12 = +[NSMutableArray array];
    v13 = +[NSMutableArray array];
    v14 = [(PSSystemPolicyForApp *)self->_appPolicy specifiersForPolicyOptions:0x8000 force:0];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_160E8;
    v33[3] = &unk_2D1F0;
    v34 = v12;
    v35 = self;
    v36 = v13;
    v29 = v13;
    v30 = v12;
    [v14 enumerateObjectsUsingBlock:v33];

    v15 = [v30 copy];
    cellularSpecifiers = self->_cellularSpecifiers;
    self->_cellularSpecifiers = v15;

    v17 = [v29 copy];
    invocations = self->_invocations;
    self->_invocations = v17;

    v19 = [v5 localizedStringForKey:v8 value:&stru_2D398 table:@"Photos"];
    v20 = [PSSpecifier groupSpecifierWithID:@"AutomaticUploadsAndDownloadsGroup"];
    [v20 setObject:v19 forKeyedSubscript:v9];
    v21 = [v5 localizedStringForKey:@"UNLIMITED_UPLOADS_AND_DOWNLOADS_LABEL" value:&stru_2D398 table:@"Photos"];
    v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:"setUnlimitedUpdates:forSpecifier:" get:"unlimitedUpdatesForSpecifier:" detail:0 cell:6 edit:0];
    v37[0] = v20;
    v37[1] = v22;
    v23 = [NSArray arrayWithObjects:v37 count:2];
    unlimitedUpdatesSpecifiers = self->_unlimitedUpdatesSpecifiers;
    self->_unlimitedUpdatesSpecifiers = v23;

    v25 = +[NSMutableArray array];
    [v25 addObject:v31];
    [v25 addObjectsFromArray:self->_cellularSpecifiers];
    [v25 addObjectsFromArray:self->_unlimitedUpdatesSpecifiers];
    v26 = [v25 copy];
    v27 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v26;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

+ (BOOL)shouldShowCellularDataSettings
{
  v2 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.mobileslideshow"];
  v3 = [v2 specifiersForPolicyOptions:0x8000 force:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end