@interface MapsApplicationDebugController
+ (BOOL)hasRoutingInternalModeFlag:(id)a3;
+ (void)setRoutingInternalModeFlag:(id)a3 enabled:(BOOL)a4;
- (void)_promptForRestart;
- (void)_recursivelySetHidden:(BOOL)a3 forView:(id)a4;
- (void)_requestRouteWithWaypoints:(id)a3 traits:(id)a4 completion:(id)a5;
- (void)_searchForWaypointsWithCompletion:(id)a3;
- (void)addAppUISectionTo:(id)a3;
- (void)addCarPlaySectionTo:(id)a3;
- (void)addChromeSettingsTo:(id)a3;
- (void)addCollectionSettingsTo:(id)a3;
- (void)addContaineeSettingsTo:(id)a3;
- (void)addDOoMSettingsTo:(id)a3;
- (void)addEnhancedBusinessSettingsTo:(id)a3;
- (void)addLookAroundSettingsTo:(id)a3;
- (void)addMapsResetLaunchAlertsTo:(id)a3;
- (void)addOthersTo:(id)a3;
- (void)addRoutePlanningSettingsTo:(id)a3;
- (void)addShareETASettingsTo:(id)a3;
- (void)addUGCSettingsTo:(id)a3;
- (void)addVisitedPlacesDebugSettingTo:(id)a3;
- (void)addVisualEffectSettingsTo:(id)a3;
- (void)addWarmingSheetSettingTo:(id)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)prepareContent;
- (void)promptCLReset;
- (void)refreshVPMapItemsWithCompletion:(id)a3;
@end

@implementation MapsApplicationDebugController

- (void)prepareContent
{
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100EE21E0;
  v10[3] = &unk_10165E0A8;
  objc_copyWeak(&v11, &location);
  v3 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EE22E0;
  v8[3] = &unk_10165E0A8;
  objc_copyWeak(&v9, &location);
  v4 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EE25AC;
  v6[3] = &unk_10165E0A8;
  objc_copyWeak(&v7, &location);
  v5 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)refreshVPMapItemsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSVisitedLocationRequest);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EE27CC;
  v6[3] = &unk_10165EB78;
  v7 = v3;
  v5 = v3;
  [v4 fetchWithCompletionHandler:v6];
}

- (void)addVisitedPlacesDebugSettingTo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EE30D0;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [a3 addNavigationRowWithTitle:@"Visited Places" viewControllerContent:v4];
}

- (void)addUGCSettingsTo:(id)a3
{
  v4 = a3;
  v5 = [[MapsUGCEnvironmentSectionController alloc] initWithSubmissionURL:53];
  ugcEnvironmentController = self->_ugcEnvironmentController;
  self->_ugcEnvironmentController = v5;

  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EE4288;
  v8[3] = &unk_101658C70;
  objc_copyWeak(&v9, &location);
  v7 = [v4 addNavigationRowWithTitle:@"User Generated Content" viewControllerContent:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)addEnhancedBusinessSettingsTo:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EE5088;
  v6[3] = &unk_101658C70;
  objc_copyWeak(&v7, &location);
  v5 = [v4 addNavigationRowWithTitle:@"Enhanced Business Place Card" viewControllerContent:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)addWarmingSheetSettingTo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EE5A68;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [a3 addNavigationRowWithTitle:@"Warming Sheet" viewControllerContent:v4];
}

- (void)addContaineeSettingsTo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EE64F0;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [a3 addNavigationRowWithTitle:@"Containee" viewControllerContent:v4];
}

- (void)_requestRouteWithWaypoints:(id)a3 traits:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [v8 copy];
  v12 = [NanoRoutePlanningRequest requestWithWaypoints:v11 viaTransportType:0 traits:v9 companionRouteContext:0];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EE6A94;
  v15[3] = &unk_10165BCC8;
  objc_copyWeak(&v18, &location);
  v13 = v8;
  v16 = v13;
  v14 = v10;
  v17 = v14;
  [NanoRoutePlanningSession processRequest:v12 withCompletion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_searchForWaypointsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MKLocalSearchRequest alloc];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 stringForKey:@"__internal_ResumeRouteTestSearchQuery"];
  v8 = [v5 initWithNaturalLanguageQuery:v7];

  v9 = [[MKLocalSearch alloc] initWithRequest:v8];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100EE6E34;
  v11[3] = &unk_10165BCA0;
  objc_copyWeak(&v13, &location);
  v10 = v4;
  v12 = v10;
  [v9 startWithCompletionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)addRoutePlanningSettingsTo:(id)a3
{
  v4 = a3;
  if (qword_10195F640 != -1)
  {
    dispatch_once(&qword_10195F640, &stru_10165BAC0);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EE70EC;
  v6[3] = &unk_101658F18;
  v6[4] = self;
  v5 = [v4 addNavigationRowWithTitle:@"Route Planning" viewControllerContent:v6];
}

- (void)contactPickerDidCancel:(id)a3
{
  shareTripContactPicker = self->_shareTripContactPicker;
  if (shareTripContactPicker == a3)
  {
    self->_shareTripContactPicker = 0;
  }
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  if (self->_shareTripContactPicker == a3)
  {
    v5 = [MSPSharedTripContact contactsFromCNContact:a4];
    v6 = [v5 firstObject];

    v7 = +[MSPSharedTripService sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100EE8864;
    v10[3] = &unk_10165BA60;
    v11 = v6;
    v12 = self;
    v8 = v6;
    [v7 startSharingWithContact:v8 completion:v10];

    shareTripContactPicker = self->_shareTripContactPicker;
    self->_shareTripContactPicker = 0;
  }
}

- (void)addShareETASettingsTo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EE8A84;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [a3 addNavigationRowWithTitle:@"Share ETA" viewControllerContent:v4];
}

- (void)addCollectionSettingsTo:(id)a3
{
  v4 = a3;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_100EE7DD4;
  v7[4] = sub_100EE7DE4;
  v8 = &stru_1016631F0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EEA85C;
  v6[3] = &unk_10165B728;
  v6[4] = self;
  v6[5] = v7;
  v5 = [v4 addNavigationRowWithTitle:@"Guides" viewControllerContent:v6];
  _Block_object_dispose(v7, 8);
}

- (void)addLookAroundSettingsTo:(id)a3
{
  v6 = a3;
  v3 = +[GEOResourceManifestManager modernManager];
  v4 = [v3 isMuninEnabled];

  if (v4)
  {
    v5 = [v6 addNavigationRowWithTitle:@"Look Around" viewControllerContent:&stru_10165B6E0];
  }
}

- (void)addOthersTo:(id)a3
{
  v6 = a3;
  v3 = [v6 addNavigationRowWithTitle:@"Location Simulation" viewControllerContent:&stru_10165B5C0];
  v4 = [v6 addNavigationRowWithTitle:@"Routing Apps" viewControllerContent:&stru_10165B660];
  v5 = [v6 addNavigationRowWithTitle:@"Performance throttling" viewControllerContent:&stru_10165B6A0];
}

- (void)promptCLReset
{
  v3 = [UIAlertController alertControllerWithTitle:@"Reset CoreLocation Auth?" message:@"Resetting CL Auth will immediately trigger all necessary launch alerts/prompts" preferredStyle:1];
  v4 = [UIAlertAction actionWithTitle:@"Reset" style:1 handler:&stru_10165B580];
  [v3 addAction:v4];

  v5 = [UIAlertAction actionWithTitle:@"Reset and Quit" style:1 handler:&stru_10165B5A0];
  [v3 addAction:v5];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EEB15C;
  v8[3] = &unk_10165F220;
  v9 = v3;
  v6 = v3;
  v7 = [UIAlertAction actionWithTitle:@"Don't Reset CL" style:1 handler:v8];
  [v6 addAction:v7];

  [(MapsApplicationDebugController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)addMapsResetLaunchAlertsTo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EEB28C;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [a3 addNavigationRowWithTitle:@"Launch Alerts" viewControllerContent:v4];
}

- (void)addDOoMSettingsTo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EEDAC4;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [a3 addNavigationRowWithTitle:@"DOoM" viewControllerContent:v4];
}

- (void)addCarPlaySectionTo:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EF0A08;
  v6[3] = &unk_101658C70;
  objc_copyWeak(&v7, &location);
  v5 = [v4 addNavigationRowWithTitle:@"CarPlay" viewControllerContent:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_promptForRestart
{
  v5 = objc_alloc_init(UIAlertController);
  [v5 setTitle:@"This change will be effective once Maps restarts"];
  v3 = [UIAlertAction actionWithTitle:@"Later" style:1 handler:0];
  [v5 addAction:v3];

  v4 = [UIAlertAction actionWithTitle:@"Quit Maps" style:2 handler:&stru_101658F58];
  [v5 addAction:v4];

  [(MapsApplicationDebugController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)addChromeSettingsTo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EF858C;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [a3 addNavigationRowWithTitle:@"Chrome" viewControllerContent:v4];
}

- (void)_recursivelySetHidden:(BOOL)a3 forView:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = objc_getAssociatedObject(v6, &off_101939E18);
  [v7 cgFloatValue];
  v9 = v8;
  v10 = [v6 layer];
  [v10 zPosition];
  v12 = v11;

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v6 superview];
      if (v13)
      {
        v14 = v13;
        do
        {
          v15 = [v14 layer];
          [v15 setZPosition:v9];

          objc_setAssociatedObject(v14, &off_101939E18, 0, 1);
          v16 = [v14 superview];

          v14 = v16;
        }

        while (v16);
      }

      goto LABEL_19;
    }

    v18 = [v6 layer];
    [v18 setZPosition:-10000.0];

    v19 = [NSNumber numberWithDouble:v12];
    objc_setAssociatedObject(v6, &off_101939E18, v19, 1);
  }

  else
  {
    if (v7)
    {
      v17 = [v6 layer];
      [v17 setZPosition:v9];
    }

    objc_setAssociatedObject(v6, &off_101939E18, 0, 1);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = [v6 subviews];
  v21 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(MapsApplicationDebugController *)self _recursivelySetHidden:v4 forView:*(*(&v25 + 1) + 8 * i)];
      }

      v22 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v22);
  }

LABEL_19:
}

- (void)addAppUISectionTo:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EFB02C;
  v6[3] = &unk_101658DA0;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v5 = [v4 addNavigationRowWithTitle:@"App UI" viewControllerContent:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)addVisualEffectSettingsTo:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EFC0FC;
  v6[3] = &unk_10165E0A8;
  objc_copyWeak(&v7, &location);
  v5 = [v4 addSectionWithTitle:0 content:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

+ (void)setRoutingInternalModeFlag:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v5 = GEOConfigGetDictionary();
  v6 = [v5 objectForKeyedSubscript:@"InternalModes.enable"];
  v7 = [v6 componentsSeparatedByString:{@", "}];
  v8 = [NSMutableArray arrayWithArray:v7];

  if ([v8 containsObject:v11] != v4)
  {
    if (v4)
    {
      [v8 addObject:v11];
    }

    else
    {
      [v8 removeObject:v11];
    }

    v9 = [v8 componentsJoinedByString:{@", "}];
    v10 = [NSMutableDictionary dictionaryWithDictionary:v5];
    if ([v8 count])
    {
      [v10 setObject:v9 forKeyedSubscript:@"InternalModes.enable"];
    }

    else
    {
      [v10 removeObjectForKey:@"InternalModes.enable"];
    }

    GEOConfigSetDictionary();
  }
}

+ (BOOL)hasRoutingInternalModeFlag:(id)a3
{
  v3 = a3;
  v4 = GEOConfigGetDictionary();
  v5 = [v4 objectForKeyedSubscript:@"InternalModes.enable"];
  v6 = [v5 componentsSeparatedByString:{@", "}];
  v7 = [v6 containsObject:v3];

  return v7;
}

@end