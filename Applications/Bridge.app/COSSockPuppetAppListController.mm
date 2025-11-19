@interface COSSockPuppetAppListController
- (COSSockPuppetAppListController)init;
- (id)addShowOnWatchSectionToSpecifiers:(id)a3;
- (id)deleteAppOnGizmoSpecifier;
- (id)device;
- (id)puppetAppShows:(id)a3;
- (id)showOnWatchSpecifier;
- (id)specifiers;
- (void)_resetAfterAppDeletionResponse:(int64_t)a3;
- (void)_resetAfterSockPuppetResponseWithState:(int64_t)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)dealloc;
- (void)deleteAppAlert:(id)a3;
- (void)deleteAppOnGizmo:(id)a3;
- (void)launchTestFlight:(id)a3;
- (void)presentACError:(id)a3;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)recheckWatchAppInstallState:(int64_t)a3;
- (void)restrictShowOnWatchSpecifierIfNecessary:(id)a3;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)setPuppetAppShows:(id)a3 specifier:(id)a4;
- (void)updateInstallStateForApplication:(id)a3 installState:(int64_t)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSSockPuppetAppListController

- (COSSockPuppetAppListController)init
{
  v6.receiver = self;
  v6.super_class = COSSockPuppetAppListController;
  v2 = [(COSSockPuppetAppListController *)&v6 init];
  if (v2)
  {
    v3 = +[ACXDeviceConnection sharedDeviceConnection];
    [v3 addObserver:v2];

    v4 = +[MCProfileConnection sharedConnection];
    [v4 addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[ACXDeviceConnection sharedDeviceConnection];
  [v3 removeObserver:self];

  v4 = +[MCProfileConnection sharedConnection];
  [v4 removeObserver:self];

  v5 = +[LSApplicationWorkspace defaultWorkspace];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = COSSockPuppetAppListController;
  [(COSSockPuppetAppListController *)&v6 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = COSSockPuppetAppListController;
  [(COSSockPuppetAppListController *)&v16 viewWillAppear:a3];
  v4 = OBJC_IVAR___PSViewController__specifier;
  v5 = [*&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSAppSettingsBundleIDKey];
  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 bundleURL];

    v8 = [_NSLocalizedStringResource alloc];
    v9 = [*&self->PSAppListController_opaque[v4] name];
    v10 = +[NSLocale currentLocale];
    v11 = [v8 initWithKey:v9 table:0 locale:v10 bundleURL:v7];

    v12 = [*&self->PSAppListController_opaque[v4] identifier];
    v13 = [@"bridge:root=" stringByAppendingString:v5];
    v14 = [NSURL URLWithString:v13];
    [BPSWatchSettingsNavigationDonation emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:v12 title:v11 localizedNavigationComponents:&__NSArray0__struct deepLink:v14];
  }

  else
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*&self->PSAppListController_opaque[v4] identifier];
      *buf = 138412290;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping donation for identifier: %@", buf, 0xCu);
    }
  }
}

- (id)specifiers
{
  v2 = self;
  v3 = OBJC_IVAR___PSViewController__specifier;
  v4 = PSAppSettingsBundleIDKey;
  v5 = [*&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSAppSettingsBundleIDKey];
  v6 = sub_10002D914(v5);

  v63 = v4;
  v7 = [*&v2->PSAppListController_opaque[v3] propertyForKey:v4];
  v71 = 0;
  v8 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v7 allowPlaceholder:0 error:&v71];
  v9 = v71;
  if (v9)
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v74 = v7;
      v75 = 2112;
      v76 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error while retrieving application record %@ with error %@", buf, 0x16u);
    }
  }

  if (v8)
  {
    v11 = [v8 URL];
    v12 = v11;
    if (v11)
    {
      [v11 URLByAppendingPathComponent:@"Settings-Watch.bundle"];
      v14 = v13 = v6;
      v15 = [NSBundle bundleWithURL:v14];

      v6 = v13;
      [*&v2->PSAppListController_opaque[v3] setProperty:v15 forKey:PSAppSettingsBundleKey];
    }
  }

  v70.receiver = v2;
  v70.super_class = COSSockPuppetAppListController;
  v16 = [(COSSockPuppetAppListController *)&v70 specifiers];
  v17 = [v16 mutableCopy];

  v18 = [*&v2->PSAppListController_opaque[v3] propertyForKey:@"COSSockPuppetWatchKitVersionKey"];
  v19 = v18;
  if (v18 && ([v18 isEqualToString:@"1.0"] & 1) == 0)
  {
    v52 = v6;
    v56 = v7;
    v57 = v19;
    v62 = v3;
    v54 = v8;
    v55 = v9;
    v20 = v2;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v53 = v17;
    obj = v17;
    v21 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v67;
      v24 = PSDefaultsKey;
      v25 = PSKeyNameKey;
      v60 = PSContainerBundleIDKey;
      v61 = PSIsPerGizmoKey;
      v59 = PSAppGroupBundleIDKey;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v67 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v66 + 1) + 8 * i);
          v28 = [v27 propertyForKey:v24];
          v29 = [v27 propertyForKey:v25];
          if (v28 | v29)
          {
            [v27 setProperty:&__kCFBooleanTrue forKey:v61];
            v30 = sub_100019D1C(*&v20->PSAppListController_opaque[v62]);
            [v27 setProperty:v30 forKey:v24];

            [v27 setProperty:0 forKey:v60];
            [v27 setProperty:0 forKey:v59];
            *&v27[OBJC_IVAR___PSSpecifier_setter] = "setPreferenceValue:specifier:";
          }

          if ([objc_msgSend(v27 "detailControllerClass")])
          {
            [v27 setDetailControllerClass:objc_opt_class()];
            v65[0] = _NSConcreteStackBlock;
            v65[1] = 3221225472;
            v65[2] = sub_100019DBC;
            v65[3] = &unk_100268530;
            v65[4] = v27;
            v65[5] = v20;
            v31 = objc_retainBlock(v65);
            (v31[2])(v31, v63);
            (v31[2])(v31, @"COSSockPuppetAppBundleIDKey");
            (v31[2])(v31, @"COSSockPuppetWatchKitVersionKey");
            (v31[2])(v31, @"COSSockPuppetAppTeamIDKey");
          }
        }

        v22 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
      }

      while (v22);
    }

    v2 = v20;
    v9 = v55;
    v7 = v56;
    v17 = v53;
    v8 = v54;
    v3 = v62;
    v19 = v57;
    v6 = v52;
  }

  v32 = [*&v2->PSAppListController_opaque[v3] propertyForKey:PSIsThirdPartyDetailKey];
  v33 = [v32 BOOLValue];

  if ((v33 & 1) == 0)
  {
    v34 = [*&v2->PSAppListController_opaque[v3] propertyForKey:@"COSSockPuppetInstallationState"];
    v35 = [v34 integerValue];

    if ((v35 - 3) < 0xFFFFFFFFFFFFFFFELL)
    {
      v36 = v6;
    }

    else
    {
      v36 = 0;
    }

    if (v36 == 1)
    {
      v37 = +[NSBundle mainBundle];
      v38 = [v37 localizedStringForKey:@"TESTFLIGHT_APP_INSTRUCTION" value:&stru_10026E598 table:@"Localizable"];

      v58 = v19;
      if ((sub_10002D754() & 1) == 0)
      {
        v39 = +[NSBundle mainBundle];
        v40 = [v39 localizedStringForKey:@"TESTFLIGHT_APP_INSTALL_INSTRUCTION" value:&stru_10026E598 table:@"Localizable"];

        v38 = v40;
      }

      v41 = [PSSpecifier preferenceSpecifierNamed:v38 target:v2 set:0 get:0 detail:0 cell:13 edit:0];
      v42 = [UIImage imageNamed:@"tf-icon"];
      [v41 setButtonAction:"launchTestFlight:"];
      v43 = NSStringFromSelector("launchTestFlight:");
      [v41 setProperty:v43 forKey:PSButtonActionKey];

      [v41 setProperty:v42 forKey:PSIconImageKey];
      [v17 insertObject:v41 atIndex:0];

      v19 = v58;
      goto LABEL_34;
    }

    if ([(COSSockPuppetAppListController *)v2 showsOnGizmoEnabled]&& v35 != 3)
    {
      [(COSSockPuppetAppListController *)v2 addShowOnWatchSectionToSpecifiers:v17];
      v17 = v38 = v17;
LABEL_34:
    }
  }

  v44 = [(COSSockPuppetAppListController *)v2 customSpecifiers];
  if ([v44 count])
  {
    v45 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v44 count]);
    [v17 insertObjects:v44 atIndexes:v45];
  }

  v46 = [*&v2->PSAppListController_opaque[v3] propertyForKey:PSIDKey];
  v47 = [v46 isEqualToString:@"VICTORY_ROW_ID"];

  if (v47)
  {
    v48 = +[LSApplicationWorkspace defaultWorkspace];
    [v48 addObserver:v2];
  }

  v49 = BPSRemoveCapabilityIncompatibleSpecifiersFromArray();
  v50 = *&v2->PSAppListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&v2->PSAppListController_opaque[OBJC_IVAR___PSListController__specifiers] = v49;

  return v17;
}

- (id)addShowOnWatchSectionToSpecifiers:(id)a3
{
  v4 = a3;
  v5 = OBJC_IVAR___PSViewController__specifier;
  v6 = [*&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"COSSockPuppetInstallationState"];
  v7 = [v6 integerValue];

  v8 = [*&self->PSAppListController_opaque[v5] propertyForKey:@"applicationMode"];
  v9 = [v8 integerValue];

  v10 = [LSApplicationRecord alloc];
  v11 = PSAppSettingsBundleIDKey;
  v12 = [*&self->PSAppListController_opaque[v5] propertyForKey:PSAppSettingsBundleIDKey];
  v29 = 0;
  v13 = [v10 initWithBundleIdentifier:v12 allowPlaceholder:0 error:&v29];
  v14 = v29;

  if (v14)
  {
    v15 = pbb_bridge_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*&self->PSAppListController_opaque[v5] propertyForKey:v11];
      *buf = 138412546;
      v31 = v16;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Error while retrieving application record %@ with error %@", buf, 0x16u);
    }
  }

  v17 = [*&self->PSAppListController_opaque[v5] propertyForKey:@"locallyAvailable"];
  if ([v17 BOOLValue])
  {
    v18 = 0;
  }

  else
  {
    v19 = [v13 applicationState];
    v20 = [v19 isInstalled];

    v18 = v20 ^ 1;
  }

  if (v7 == 2)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = [PSSpecifier groupSpecifierWithID:@"SHOW_ON_GIZMO_GROUP_ID"];
  if (v7 == 1)
  {
    v24 = @"GIZMO_APP_INSTALLING";
  }

  else
  {
    if (v7 != 4)
    {
      v26 = 0;
      goto LABEL_21;
    }

    v24 = @"GIZMO_APP_UNINSTALLING";
  }

  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:v24 value:&stru_10026E598 table:@"Localizable"];

  if (v26)
  {
    [(COSSockPuppetAppListController *)self recheckWatchAppInstallState:v7];
  }

LABEL_21:
  [v23 setProperty:v26 forKey:PSFooterTextGroupKey];
  [v4 insertObject:v23 atIndex:0];
  if (v22)
  {
    v27 = [(COSSockPuppetAppListController *)self deleteAppOnGizmoSpecifier];
    [v27 setIdentifier:@"DELETE_ON_GIZMO"];
  }

  else
  {
    v27 = [(COSSockPuppetAppListController *)self showOnWatchSpecifier];
  }

  [v4 insertObject:v27 atIndex:1];

  return v4;
}

- (void)recheckWatchAppInstallState:(int64_t)a3
{
  v5 = +[ACXDeviceConnection sharedDeviceConnection];
  v6 = sub_10000DB38();
  v7 = [*&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"COSSockPuppetAppBundleIDKey"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001A24C;
  v8[3] = &unk_100268558;
  v8[4] = self;
  v8[5] = a3;
  [v5 applicationIsInstalledOnPairedDevice:v6 withBundleID:v7 completion:v8];
}

- (id)showOnWatchSpecifier
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SHOWS_ON_GIZMO_%@" value:&stru_10026E598 table:@"Localizable"];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"APPLE_WATCH_ALL_STRING" value:&stru_10026E598 table:@"Localizable"];
  v7 = [NSString stringWithFormat:v4, v6];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setPuppetAppShows:specifier:" get:"puppetAppShows:" detail:0 cell:6 edit:0];

  [v8 setIdentifier:@"SHOWS_ON_GIZMO"];
  [(COSSockPuppetAppListController *)self restrictShowOnWatchSpecifierIfNecessary:v8];

  return v8;
}

- (id)deleteAppOnGizmoSpecifier
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"DELETE_ON_GIZMO" value:&stru_10026E598 table:@"Localizable"];
  v5 = [NSString stringWithFormat:v4];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v6 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v6 setIdentifier:@"DELETE_ON_GIZMO"];
  [v6 setButtonAction:"deleteAppAlert:"];

  return v6;
}

- (void)deleteAppAlert:(id)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"DELETE_ON_GIZMO_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"DELETE_ON_GIZMO_MESSAGE" value:&stru_10026E598 table:@"Localizable"];
  v8 = [NSString stringWithFormat:v7];
  v9 = [UIAlertController alertControllerWithTitle:v5 message:v8 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"DELETE_ON_GIZMO_ALERT_CONFIRM" value:&stru_10026E598 table:@"Localizable"];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001A8E0;
  v16[3] = &unk_100268580;
  v16[4] = self;
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:v16];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"DELETE_ON_GIZMO_ALERT_CANCEL" value:&stru_10026E598 table:@"Localizable"];
  v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:&stru_1002685C0];

  [v9 addAction:v12];
  [v9 addAction:v15];
  [(COSSockPuppetAppListController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)deleteAppOnGizmo:(id)a3
{
  v4 = OBJC_IVAR___PSViewController__specifier;
  v5 = [*&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:BPSNotificationAppBBSectionInfo];
  v6 = [v5 sectionID];

  v7 = [(COSSockPuppetAppListController *)self device];
  v8 = +[ACXDeviceConnection sharedDeviceConnection];
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*&self->PSAppListController_opaque[v4] name];
    *buf = 138412546;
    v22 = v10;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleting %@ on Gizmo with watch bundle id: %@", buf, 0x16u);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10001AB4C;
  v18 = &unk_1002685E8;
  v19 = v6;
  v20 = self;
  v11 = v6;
  [v8 removeApplication:v11 fromPairedDevice:v7 completionWithError:&v15];
  v12 = [(COSSockPuppetAppListController *)self specifierForID:@"SHOW_ON_GIZMO_GROUP_ID", v15, v16, v17, v18];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"GIZMO_APP_UNINSTALLING" value:&stru_10026E598 table:@"Localizable"];
  [v12 setProperty:v14 forKey:PSFooterTextGroupKey];

  [(COSSockPuppetAppListController *)self reloadSpecifier:v12 animated:0];
}

- (void)_resetAfterSockPuppetResponseWithState:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001ACFC;
  v3[3] = &unk_100268220;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)_resetAfterAppDeletionResponse:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001AEB0;
  v3[3] = &unk_100268220;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (id)device
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 activeWatch];

  return v3;
}

- (void)setPuppetAppShows:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OBJC_IVAR___PSViewController__specifier;
  v9 = [*&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSAppSettingsBundleIDKey];
  v10 = sub_10002D914(v9);

  v11 = [*&self->PSAppListController_opaque[v8] propertyForKey:BPSNotificationAppBBSectionInfo];
  v12 = [v11 sectionID];

  v13 = +[ACXDeviceConnection sharedDeviceConnection];
  v14 = [(COSSockPuppetAppListController *)self device];
  if ([v6 BOOLValue])
  {
    v15 = pbb_bridge_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[COSSockPuppetAppListController setPuppetAppShows:specifier:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    [*&self->PSAppListController_opaque[v8] setProperty:&__kCFBooleanTrue forKey:@"COSSockPuppetCurrentState"];
    HasCapabilityForString = BPSDeviceHasCapabilityForString();
    v17 = pbb_bridge_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (HasCapabilityForString)
    {
      if (v18)
      {
        *buf = 138412546;
        v44 = v12;
        v45 = 2112;
        v46 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Check if app %@ needs update for %@", buf, 0x16u);
      }

      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10001B5A8;
      v39[3] = &unk_100268610;
      v39[4] = self;
      v40 = v13;
      v41 = v12;
      v42 = v14;
      [v40 fetchLocallyAvailableApplicationWithBundleID:v41 forPairedDevice:v42 completion:v39];

      v19 = v40;
    }

    else
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "app update check not needed", buf, 2u);
      }

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10001BAE8;
      v36[3] = &unk_1002685E8;
      v37 = v12;
      v38 = self;
      [v13 installApplication:v37 onPairedDevice:v14 completion:v36];
      v19 = v37;
    }
  }

  else
  {
    [*&self->PSAppListController_opaque[v8] setProperty:&__kCFBooleanFalse forKey:@"COSSockPuppetCurrentState"];
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_10001BC30;
    v33 = &unk_1002685E8;
    v34 = v12;
    v35 = self;
    [v13 removeApplication:v34 fromPairedDevice:v14 completionWithError:&v30];
    v19 = v34;
  }

  [*&self->PSAppListController_opaque[v8] setProperty:&__kCFBooleanTrue forKey:@"COSSockPuppetStateChanging"];
  [(COSSockPuppetAppListController *)self restrictShowOnWatchSpecifierIfNecessary:v7];
  v20 = [(COSSockPuppetAppListController *)self specifierForID:@"SHOW_ON_GIZMO_GROUP_ID"];
  v21 = [v6 BOOLValue];
  v22 = +[NSBundle mainBundle];
  v23 = v22;
  if (v21)
  {
    v24 = @"GIZMO_APP_INSTALLING";
  }

  else
  {
    v24 = @"GIZMO_APP_UNINSTALLING";
  }

  v25 = [v22 localizedStringForKey:v24 value:&stru_10026E598 table:{@"Localizable", v30, v31, v32, v33}];
  [v20 setProperty:v25 forKey:PSFooterTextGroupKey];

  if (v10 && ![v6 BOOLValue])
  {
    if (([v6 BOOLValue] & 1) == 0)
    {
      [v7 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
      [(COSSockPuppetAppListController *)self reloadSpecifier:v7 animated:0];
    }

    v26 = self;
    v27 = v20;
    v28 = 0;
  }

  else
  {
    [(COSSockPuppetAppListController *)self reloadSpecifier:v20 animated:1];
    v26 = self;
    v27 = v7;
    v28 = 1;
  }

  [(COSSockPuppetAppListController *)v26 reloadSpecifier:v27 animated:v28];
  WeakRetained = objc_loadWeakRetained(&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifiers];
}

- (void)presentACError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"ACXUserPresentableErrorDomain"];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKey:NSLocalizedFailureReasonErrorKey];
    v9 = [v7 objectForKey:NSLocalizedDescriptionKey];
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Presenting application installation error title: %@ description: %@", buf, 0x16u);
    }

    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = pbb_bridge_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AppConduit app install error did not have a title and/or a description, userinfo: %@", buf, 0xCu);
      }
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001BFD8;
      block[3] = &unk_100268638;
      v14 = v8;
      v15 = v9;
      v16 = self;
      dispatch_async(&_dispatch_main_q, block);

      v12 = v14;
    }
  }

  else
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AppConduit installation error is not presentable: %@", buf, 0xCu);
    }
  }
}

- (id)puppetAppShows:(id)a3
{
  v4 = OBJC_IVAR___PSViewController__specifier;
  v5 = [*&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"COSSockPuppetStateChanging"];
  v6 = v5;
  if (v5 && ([v5 BOOLValue] & 1) != 0)
  {
    v7 = [*&self->PSAppListController_opaque[v4] propertyForKey:@"COSSockPuppetCurrentState"];
  }

  else
  {
    v8 = [*&self->PSAppListController_opaque[v4] propertyForKey:@"COSSockPuppetInstallationState"];
    v9 = [v8 integerValue];

    if ((v9 - 1) >= 2)
    {
      v10 = &__kCFBooleanFalse;
    }

    else
    {
      v10 = &__kCFBooleanTrue;
    }

    v7 = v10;
  }

  v11 = v7;

  return v11;
}

- (void)launchTestFlight:(id)a3
{
  if (sub_10002D754())
  {
    v4 = [*&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSIDKey];
    v5 = sub_10002D760(v4);
  }

  else
  {
    v5 = sub_10002D900();
  }

  BPSOpenSensitiveURLAsync();
}

- (void)restrictShowOnWatchSpecifierIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(COSSockPuppetAppListController *)self puppetAppShows:v4];
  v6 = [v5 BOOLValue];

  v7 = +[MCProfileConnection sharedConnection];
  v8 = [v7 isOnDeviceAppInstallationAllowed];

  v9 = +[MCProfileConnection sharedConnection];
  v10 = [v9 isAppRemovalAllowed];

  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  v12 = [NSNumber numberWithBool:v11];
  [v4 setProperty:v12 forKey:PSEnabledKey];
}

- (void)updateInstallStateForApplication:(id)a3 installState:(int64_t)a4
{
  v6 = a3;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 1024;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateInstallStateForApplication:(%@) installState:(%d)", &v10, 0x12u);
  }

  v8 = [*&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"COSSockPuppetAppBundleIDKey"];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    [(COSSockPuppetAppListController *)self _resetAfterSockPuppetResponseWithState:a4];
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [(COSSockPuppetAppListController *)self specifierForID:@"SHOWS_ON_GIZMO", a4];
  [(COSSockPuppetAppListController *)self restrictShowOnWatchSpecifierIfNecessary:v5];
  [(COSSockPuppetAppListController *)self reloadSpecifier:v5];
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COSSockPuppetAppListController *)self device];
  if (v8)
  {
    [PSRootController setPreferenceValue:v6 specifier:v7];
    v9 = OBJC_IVAR___PSViewController__specifier;
    v10 = [*&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"COSSockPuppetAppBundleIDKey"];
    v11 = [NPSDomainAccessor alloc];
    v12 = sub_100019D1C(*&self->PSAppListController_opaque[v9]);
    v13 = [v11 initWithDomain:v12 pairedDevice:v8];

    v14 = objc_opt_new();
    if (v13)
    {
      v25 = v7;
      v26 = v6;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v15 = [v13 copyKeyList];
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v28 + 1) + 8 * i);
            v21 = [v13 objectForKey:v20];
            if (v21)
            {
              [v14 setObject:v21 forKeyedSubscript:v20];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v17);
      }

      v7 = v25;
      v6 = v26;
    }

    else
    {
      v15 = pbb_bridge_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *v33 = "[COSSockPuppetAppListController setPreferenceValue:specifier:]";
        *&v33[8] = 2112;
        *&v33[10] = v10;
        v34 = 2112;
        v35 = v7;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: domainAccessor for identifier (%@) is nil! Specifier: %@", buf, 0x20u);
      }
    }

    v22 = +[ACXDeviceConnection sharedDeviceConnection];
    v27 = 0;
    [v22 updatePreferencesForApplicationWithIdentifier:v10 preferences:v14 writingToPreferencesLocation:0 forPairedDevice:v8 options:0 error:&v27];
    v23 = v27;

    if (v23)
    {
      v24 = pbb_bridge_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *v33 = "[COSSockPuppetAppListController setPreferenceValue:specifier:]";
        *&v33[8] = 2112;
        *&v33[10] = v10;
        v34 = 2112;
        v35 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: -updatePreferencesForApplicationWithIdentifier for identifier: (%@) failed with error: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v33 = 645;
      *&v33[4] = 2080;
      *&v33[6] = "[COSSockPuppetAppListController setPreferenceValue:specifier:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%d %s - Had nil Device!", buf, 0x12u);
    }
  }
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  v5 = [*&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSAppSettingsBundleIDKey];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (!v5 || ([*(*(&v14 + 1) + 8 * v10) bundleIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v5), v11, v12))
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001C9F4;
          block[3] = &unk_1002682F0;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  v5 = OBJC_IVAR___PSViewController__specifier;
  v6 = [*&self->PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"COSSockPuppetInstallationState"];
  v7 = [v6 integerValue];

  if (v7 == 2)
  {
    v8 = [*&self->PSAppListController_opaque[v5] propertyForKey:PSAppSettingsBundleIDKey];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v16 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * v13) bundleIdentifier];
          v15 = [v14 isEqualToString:v8];

          if (v15)
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10001CC50;
            block[3] = &unk_1002682F0;
            block[4] = self;
            dispatch_async(&_dispatch_main_q, block);
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v4 = v16;
  }
}

@end