@interface MapsDebugController
+ (id)debug_createGEODaemonToMapsPushDaemonConnection;
+ (void)applyAllPendingDebugSettings;
+ (void)debug_withMapsPushDaemon:(id)a3 errorHandler:(id)a4;
- (BOOL)_hasShortcuts;
- (MapsDebugController)init;
- (id)indexPathForRow:(id)a3;
- (id)rowForIndexPath:(id)a3;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (void)_addAuthTokenSectionTo:(id)a3;
- (void)_addCopyDiagnosticsToSection:(id)a3;
- (void)_addFeatureFlagsSettingsToSection:(id)a3;
- (void)_addGeoServicesSettingsToSection:(id)a3;
- (void)_addMiscellaneousSection;
- (void)_addRadarEntriesToSection:(id)a3;
- (void)_addServerConfigSettingsToSection:(id)a3;
- (void)_addStateSnapshotToSection:(id)a3;
- (void)_rebuildAuthSections;
- (void)_rebuildOfflineSections;
- (void)dealloc;
- (void)mapsAuthTokenRequestDidFinish:(id)a3;
- (void)prepareContent;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3;
- (void)valueChangedForGEOConfigKey:(id)a3;
- (void)valueChangedForMapsFeature:(id)a3 enabled:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MapsDebugController

- (void)valueChangedForMapsFeature:(id)a3 enabled:(BOOL)a4
{
  if (a3.var0.var0 == MapsFeaturesConfig_StandaloneWatchOffline && a3.var0.var1 == *(&MapsFeaturesConfig_StandaloneWatchOffline + 1))
  {
    [(MapsDebugController *)self _rebuildOfflineSections];
  }
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  v3 = GeoServicesConfig_MapsAuthToken == a3.var0 && *(&GeoServicesConfig_MapsAuthToken + 1) == a3.var1;
  if (v3 || (GeoServicesConfig_MapsRefreshToken == a3.var0 ? (v4 = *(&GeoServicesConfig_MapsRefreshToken + 1) == a3.var1) : (v4 = 0), v4))
  {
    [(MapsDebugController *)self _rebuildAuthSections];
  }
}

- (void)_rebuildOfflineSections
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableSet *)self->_viewControllersToReloadOnOfflineChange copy];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) rebuildSections];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_rebuildAuthSections
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableSet *)self->_viewControllersToReloadOnAuthFinish copy];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) rebuildSections];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)mapsAuthTokenRequestDidFinish:(id)a3
{
  v4 = a3;
  v5 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  [v5 removeMapsAuthDidFinishObserver:self];

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:GEOMapsAuthRequestTypeKey];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"success"];
  v10 = [v9 BOOLValue];

  if ([v7 isEqualToString:GEOMapsAuthEnvironmentSwitch])
  {
    goto LABEL_17;
  }

  v11 = [v4 userInfo];
  v12 = [v11 objectForKeyedSubscript:GEOMapsAuthFailReasonKey];
  v13 = [v12 integerValue];

  if (v10)
  {
    v14 = @"Successful Auth Request";
    v15 = @"Your auth request succeeded.";
    goto LABEL_8;
  }

  if (v13 + 1 > 7)
  {
    v15 = 0;
    goto LABEL_7;
  }

  if (((1 << (v13 + 1)) & 0xB7) != 0)
  {
    v15 = [NSString stringWithFormat:@"Your auth request failed for an unexpected reason (%d).", v13];
LABEL_7:
    v14 = @"Failed Auth Request";
    goto LABEL_8;
  }

  v14 = @"Failed Auth Request";
  if (v13 == 2)
  {
    v15 = @"Could not renew a non-existent token. Try performing an Apple Connect auth first.";
  }

  else
  {
    v15 = @"Your auth request failed. Make sure your environment has the proper URL(s) for authentication.";
  }

LABEL_8:
  v16 = [UIAlertController alertControllerWithTitle:v14 message:v15 preferredStyle:1];
  v17 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:&stru_101652858];
  [v16 addAction:v17];
  if ((v10 & 1) == 0 && (([v7 isEqualToString:GEOMapsAuthMRT] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", GEOMapsAuthFeatureFlags)) && v13 != 5)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100D437C4;
    v23[3] = &unk_10165F220;
    v23[4] = self;
    v18 = [UIAlertAction actionWithTitle:@"Try with AppleConnect" style:0 handler:v23];
    [v16 addAction:v18];
  }

  v19 = [(MapsDebugController *)self presentedViewController];

  if (v19)
  {
    v20 = [(MapsDebugController *)self presentedViewController];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100D43830;
    v21[3] = &unk_101661A90;
    v21[4] = self;
    v22 = v16;
    [v20 dismissViewControllerAnimated:1 completion:v21];
  }

  else
  {
    [(MapsDebugController *)self presentViewController:v16 animated:1 completion:0];
  }

LABEL_17:
  [(MapsDebugController *)self _rebuildAuthSections];
}

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableSet *)self->_viewControllersToReloadOnTileGroupChange copy:a3];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) rebuildSections];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)prepareContent
{
  objc_initWeak(&location, self);
  v3 = +[NSMutableSet set];
  viewControllersToReloadOnOfflineChange = self->_viewControllersToReloadOnOfflineChange;
  self->_viewControllersToReloadOnOfflineChange = v3;

  v5 = self->_viewControllersToReloadOnOfflineChange;
  v6 = +[MapsDebugPanelShortcutController sharedInstance];
  v7 = [v6 shortcuts];

  if ([v7 count])
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100D43C80;
    v24[3] = &unk_101658D78;
    v25 = v7;
    objc_copyWeak(&v26, &location);
    v8 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Shortcuts" content:v24];
    objc_destroyWeak(&v26);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100D43E40;
  v21[3] = &unk_101658D78;
  v9 = v5;
  v22 = v9;
  objc_copyWeak(&v23, &location);
  v10 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Main Components" content:v21];
  v11 = +[NSMutableSet set];
  viewControllersToReloadOnAuthFinish = self->_viewControllersToReloadOnAuthFinish;
  self->_viewControllersToReloadOnAuthFinish = v11;

  v13 = +[NSMutableSet set];
  viewControllersToReloadOnTileGroupChange = self->_viewControllersToReloadOnTileGroupChange;
  self->_viewControllersToReloadOnTileGroupChange = v13;

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100D43FBC;
  v19[3] = &unk_10165E0A8;
  objc_copyWeak(&v20, &location);
  v15 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Configuration" content:v19];
  [(MapsDebugController *)self _addMiscellaneousSection];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100D44050;
  v17[3] = &unk_10165E0A8;
  objc_copyWeak(&v18, &location);
  v16 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Diagnostics" content:v17];
  [(MapsDebugController *)self _addBuildInfoSection];
  [(MapsDebugController *)self _addMapsBundleInfoSection];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[MapsDebugController _hasShortcuts](self, "_hasShortcuts") && ![v7 section])
  {
    v10 = +[MapsDebugPanelShortcutController sharedInstance];
    v11 = [v10 shortcuts];
    v12 = [v11 objectAtIndex:{objc_msgSend(v7, "row")}];

    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100D44C00;
    v16[3] = &unk_101652738;
    v13 = v12;
    v17 = v13;
    objc_copyWeak(&v18, &location);
    v14 = [UIContextualAction contextualActionWithStyle:1 title:@"Delete" handler:v16];
    v21 = v14;
    v15 = [NSArray arrayWithObjects:&v21 count:1];
    v8 = [UISwipeActionsConfiguration configurationWithActions:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = MapsDebugController;
    v8 = [(MapsDebugValuesViewController *)&v20 tableView:v6 trailingSwipeActionsConfigurationForRowAtIndexPath:v7];
  }

  return v8;
}

- (id)indexPathForRow:(id)a3
{
  v8.receiver = self;
  v8.super_class = MapsDebugController;
  v4 = [(MapsDebugValuesViewController *)&v8 indexPathForRow:a3];
  if (![(MapsDebugController *)self _hasShortcuts])
  {
    v5 = v4;
    goto LABEL_5;
  }

  if ([v4 section])
  {
    v5 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v4 row], objc_msgSend(v4, "section") - 1);
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)rowForIndexPath:(id)a3
{
  v4 = a3;
  if ([(MapsDebugController *)self _hasShortcuts])
  {
    v5 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v4 row], objc_msgSend(v4, "section") + 1);
    v8.receiver = self;
    v8.super_class = MapsDebugController;
    v6 = [(MapsDebugValuesViewController *)&v8 rowForIndexPath:v5];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MapsDebugController;
    v6 = [(MapsDebugValuesViewController *)&v9 rowForIndexPath:v4];
  }

  return v6;
}

- (BOOL)_hasShortcuts
{
  v2 = +[MapsDebugPanelShortcutController sharedInstance];
  v3 = [v2 shortcuts];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)_addRadarEntriesToSection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100D45994;
  v12[3] = &unk_101661B98;
  objc_copyWeak(&v13, &location);
  v5 = [v4 addButtonRowWithTitle:@"File a Radar" action:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100D45A50;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, &location);
  v6 = [v4 addButtonRowWithTitle:@"Collect Radar attachments" action:v10];
  [v6 setSubtitle:@"Collect and share Radar diagnostic attachments."];

  v7 = +[GEOPlatform sharedPlatform];
  v8 = [v7 isInternalInstall];

  if (v8)
  {
    NSClassFromString(@"MapsRecordAnIssueDebugController");
    v9 = [v4 addNavigationRowForViewControllerClass:objc_opt_class()];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_addCopyDiagnosticsToSection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100D4671C;
  v9 = &unk_101661B98;
  objc_copyWeak(&v10, &location);
  v5 = [v4 addButtonRowWithTitle:@"Copy Diagnostics" action:&v6];
  [v5 setSubtitle:{@"Copy diagnostic information to the pasteboard.", v6, v7, v8, v9}];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_addStateSnapshotToSection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D46BC4;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  v5 = [v4 addButtonRowWithTitle:@"Capture State Snapshot" action:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_addMiscellaneousSection
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v3 getDevices];

  if ([v5 count])
  {
    v4 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Miscellaneous" content:&stru_101652460];
  }
}

- (void)_addServerConfigSettingsToSection:(id)a3
{
  v4 = a3;
  v5 = self->_viewControllersToReloadOnTileGroupChange;
  v6 = self->_viewControllersToReloadOnAuthFinish;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100D46F5C;
  v12[3] = &unk_101652440;
  v7 = v6;
  v13 = v7;
  v8 = v5;
  v14 = v8;
  objc_copyWeak(&v16, &location);
  v15 = self;
  v9 = [v4 addNavigationRowWithTitle:@"Server Config" viewControllerContent:v12];
  viewControllersToReloadOnTileGroupChange = self->_viewControllersToReloadOnTileGroupChange;
  self->_viewControllersToReloadOnTileGroupChange = v8;
  v11 = v8;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_addFeatureFlagsSettingsToSection:(id)a3
{
  v4 = a3;
  v5 = self->_viewControllersToReloadOnAuthFinish;
  v6 = self->_viewControllersToReloadOnTileGroupChange;
  featuresController = self->_featuresController;
  if (!featuresController)
  {
    v8 = objc_alloc_init(GEOFeaturesController);
    v9 = self->_featuresController;
    self->_featuresController = v8;

    [(GEOFeaturesController *)self->_featuresController setDelegate:self];
    featuresController = self->_featuresController;
  }

  v10 = featuresController;
  objc_initWeak(&location, self);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100D48E8C;
  v19 = &unk_101651FF8;
  v11 = v6;
  v20 = v11;
  v12 = v5;
  v21 = v12;
  objc_copyWeak(&v24, &location);
  v13 = v10;
  v22 = v13;
  v23 = self;
  v14 = [v4 addNavigationRowWithTitle:@"Authenticated Feature Flags" viewControllerContent:&v16];
  v15 = [v4 addNavigationRowForViewControllerClass:{objc_opt_class(), v16, v17, v18, v19}];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_addAuthTokenSectionTo:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D494D8;
  v6[3] = &unk_10165E0A8;
  objc_copyWeak(&v7, &location);
  v5 = [v4 addSectionWithTitle:@"Maps Auth Service Tokens" content:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_addGeoServicesSettingsToSection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100D49BD4;
  v21[3] = &unk_101661B98;
  objc_copyWeak(&v22, &location);
  v5 = [v4 addNavigationRowWithTitle:@"Cell Data Saver" action:v21];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100D49C4C;
  v19[3] = &unk_101661B98;
  objc_copyWeak(&v20, &location);
  v6 = [v4 addNavigationRowWithTitle:@"geod Request Counters" action:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100D49CCC;
  v17[3] = &unk_101661B98;
  objc_copyWeak(&v18, &location);
  v7 = [v4 addNavigationRowWithTitle:@"Request Response Logs" action:v17];
  v8 = [v4 addNavigationRowWithTitle:@"Placedata Cache" viewControllerContent:&stru_101651D78];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100D49D4C;
  v15[3] = &unk_101661B98;
  objc_copyWeak(&v16, &location);
  v9 = [v4 addNavigationRowWithTitle:@"Data Subscriptions" action:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100D49DCC;
  v14[3] = &unk_101658F18;
  v14[4] = self;
  v10 = [v4 addNavigationRowWithTitle:@"Offline" viewControllerContent:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100D4A07C;
  v12[3] = &unk_101658C70;
  objc_copyWeak(&v13, &location);
  v11 = [v4 addNavigationRowWithTitle:@"Analytics" viewControllerContent:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MapsDebugController;
  [(MapsDebugValuesViewController *)&v4 viewWillAppear:a3];
  if (self->_didInitialLoad && [(MapsDebugController *)self _hasShortcuts])
  {
    [(MapsDebugValuesViewController *)self rebuildSections];
  }

  self->_didInitialLoad = 1;
}

- (void)dealloc
{
  v3 = +[GEOResourceManifestManager modernManager];
  [v3 removeTileGroupObserver:self];

  GEOConfigRemoveDelegateListenerForAllKeys();
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = MapsDebugController;
  [(MapsDebugValuesViewController *)&v5 dealloc];
}

- (MapsDebugController)init
{
  v7.receiver = self;
  v7.super_class = MapsDebugController;
  v2 = [(MapsDebugValuesViewController *)&v7 init];
  if (v2)
  {
    v3 = +[GEOResourceManifestManager modernManager];
    [v3 addTileGroupObserver:v2 queue:&_dispatch_main_q];

    _GEOConfigAddDelegateListenerForKey();
    _GEOConfigAddDelegateListenerForKey();

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_rebuildOfflineSections" name:GEOOfflineStateChangedNotification object:0];

    MapsFeature_AddDelegateListener();
    v5 = v2;
  }

  return v2;
}

+ (void)debug_withMapsPushDaemon:(id)a3 errorHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 debug_createGEODaemonToMapsPushDaemonConnection];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100D4ADBC;
  v11[3] = &unk_1016610B8;
  v12 = v6;
  v9 = v6;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v11];
  v7[2](v7, v10);
}

+ (id)debug_createGEODaemonToMapsPushDaemonConnection
{
  if (qword_10195F0B8 != -1)
  {
    dispatch_once(&qword_10195F0B8, &stru_101652878);
  }

  v3 = qword_10195F0B0;

  return v3;
}

+ (void)applyAllPendingDebugSettings
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v2 = [v4 BOOLForKey:@"LogLocationStartStop"];
  v3 = +[MKLocationManager sharedLocationManager];
  [v3 setLogStartStopLocationUpdates:v2];
}

@end