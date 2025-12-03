@interface MapsApplicationDebugController
+ (BOOL)hasRoutingInternalModeFlag:(id)flag;
+ (void)setRoutingInternalModeFlag:(id)flag enabled:(BOOL)enabled;
- (void)_promptForRestart;
- (void)_recursivelySetHidden:(BOOL)hidden forView:(id)view;
- (void)_requestRouteWithWaypoints:(id)waypoints traits:(id)traits completion:(id)completion;
- (void)_searchForWaypointsWithCompletion:(id)completion;
- (void)addAppUISectionTo:(id)to;
- (void)addCarPlaySectionTo:(id)to;
- (void)addChromeSettingsTo:(id)to;
- (void)addCollectionSettingsTo:(id)to;
- (void)addContaineeSettingsTo:(id)to;
- (void)addDOoMSettingsTo:(id)to;
- (void)addEnhancedBusinessSettingsTo:(id)to;
- (void)addLookAroundSettingsTo:(id)to;
- (void)addMapsResetLaunchAlertsTo:(id)to;
- (void)addOthersTo:(id)to;
- (void)addRoutePlanningSettingsTo:(id)to;
- (void)addShareETASettingsTo:(id)to;
- (void)addUGCSettingsTo:(id)to;
- (void)addVisitedPlacesDebugSettingTo:(id)to;
- (void)addVisualEffectSettingsTo:(id)to;
- (void)addWarmingSheetSettingTo:(id)to;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)prepareContent;
- (void)promptCLReset;
- (void)refreshVPMapItemsWithCompletion:(id)completion;
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

- (void)refreshVPMapItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(MSVisitedLocationRequest);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EE27CC;
  v6[3] = &unk_10165EB78;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 fetchWithCompletionHandler:v6];
}

- (void)addVisitedPlacesDebugSettingTo:(id)to
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EE30D0;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [to addNavigationRowWithTitle:@"Visited Places" viewControllerContent:v4];
}

- (void)addUGCSettingsTo:(id)to
{
  toCopy = to;
  v5 = [[MapsUGCEnvironmentSectionController alloc] initWithSubmissionURL:53];
  ugcEnvironmentController = self->_ugcEnvironmentController;
  self->_ugcEnvironmentController = v5;

  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100EE4288;
  v8[3] = &unk_101658C70;
  objc_copyWeak(&v9, &location);
  v7 = [toCopy addNavigationRowWithTitle:@"User Generated Content" viewControllerContent:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)addEnhancedBusinessSettingsTo:(id)to
{
  toCopy = to;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EE5088;
  v6[3] = &unk_101658C70;
  objc_copyWeak(&v7, &location);
  v5 = [toCopy addNavigationRowWithTitle:@"Enhanced Business Place Card" viewControllerContent:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)addWarmingSheetSettingTo:(id)to
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EE5A68;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [to addNavigationRowWithTitle:@"Warming Sheet" viewControllerContent:v4];
}

- (void)addContaineeSettingsTo:(id)to
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EE64F0;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [to addNavigationRowWithTitle:@"Containee" viewControllerContent:v4];
}

- (void)_requestRouteWithWaypoints:(id)waypoints traits:(id)traits completion:(id)completion
{
  waypointsCopy = waypoints;
  traitsCopy = traits;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11 = [waypointsCopy copy];
  v12 = [NanoRoutePlanningRequest requestWithWaypoints:v11 viaTransportType:0 traits:traitsCopy companionRouteContext:0];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EE6A94;
  v15[3] = &unk_10165BCC8;
  objc_copyWeak(&v18, &location);
  v13 = waypointsCopy;
  v16 = v13;
  v14 = completionCopy;
  v17 = v14;
  [NanoRoutePlanningSession processRequest:v12 withCompletion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_searchForWaypointsWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v10 = completionCopy;
  v12 = v10;
  [v9 startWithCompletionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)addRoutePlanningSettingsTo:(id)to
{
  toCopy = to;
  if (qword_10195F640 != -1)
  {
    dispatch_once(&qword_10195F640, &stru_10165BAC0);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EE70EC;
  v6[3] = &unk_101658F18;
  v6[4] = self;
  v5 = [toCopy addNavigationRowWithTitle:@"Route Planning" viewControllerContent:v6];
}

- (void)contactPickerDidCancel:(id)cancel
{
  shareTripContactPicker = self->_shareTripContactPicker;
  if (shareTripContactPicker == cancel)
  {
    self->_shareTripContactPicker = 0;
  }
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  if (self->_shareTripContactPicker == picker)
  {
    v5 = [MSPSharedTripContact contactsFromCNContact:contact];
    firstObject = [v5 firstObject];

    v7 = +[MSPSharedTripService sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100EE8864;
    v10[3] = &unk_10165BA60;
    v11 = firstObject;
    selfCopy = self;
    v8 = firstObject;
    [v7 startSharingWithContact:v8 completion:v10];

    shareTripContactPicker = self->_shareTripContactPicker;
    self->_shareTripContactPicker = 0;
  }
}

- (void)addShareETASettingsTo:(id)to
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EE8A84;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [to addNavigationRowWithTitle:@"Share ETA" viewControllerContent:v4];
}

- (void)addCollectionSettingsTo:(id)to
{
  toCopy = to;
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
  v5 = [toCopy addNavigationRowWithTitle:@"Guides" viewControllerContent:v6];
  _Block_object_dispose(v7, 8);
}

- (void)addLookAroundSettingsTo:(id)to
{
  toCopy = to;
  v3 = +[GEOResourceManifestManager modernManager];
  isMuninEnabled = [v3 isMuninEnabled];

  if (isMuninEnabled)
  {
    v5 = [toCopy addNavigationRowWithTitle:@"Look Around" viewControllerContent:&stru_10165B6E0];
  }
}

- (void)addOthersTo:(id)to
{
  toCopy = to;
  v3 = [toCopy addNavigationRowWithTitle:@"Location Simulation" viewControllerContent:&stru_10165B5C0];
  v4 = [toCopy addNavigationRowWithTitle:@"Routing Apps" viewControllerContent:&stru_10165B660];
  v5 = [toCopy addNavigationRowWithTitle:@"Performance throttling" viewControllerContent:&stru_10165B6A0];
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

- (void)addMapsResetLaunchAlertsTo:(id)to
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EEB28C;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [to addNavigationRowWithTitle:@"Launch Alerts" viewControllerContent:v4];
}

- (void)addDOoMSettingsTo:(id)to
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EEDAC4;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [to addNavigationRowWithTitle:@"DOoM" viewControllerContent:v4];
}

- (void)addCarPlaySectionTo:(id)to
{
  toCopy = to;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EF0A08;
  v6[3] = &unk_101658C70;
  objc_copyWeak(&v7, &location);
  v5 = [toCopy addNavigationRowWithTitle:@"CarPlay" viewControllerContent:v6];
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

- (void)addChromeSettingsTo:(id)to
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EF858C;
  v4[3] = &unk_101658F18;
  v4[4] = self;
  v3 = [to addNavigationRowWithTitle:@"Chrome" viewControllerContent:v4];
}

- (void)_recursivelySetHidden:(BOOL)hidden forView:(id)view
{
  hiddenCopy = hidden;
  viewCopy = view;
  v7 = objc_getAssociatedObject(viewCopy, &off_101939E18);
  [v7 cgFloatValue];
  v9 = v8;
  layer = [viewCopy layer];
  [layer zPosition];
  v12 = v11;

  if (hiddenCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      superview = [viewCopy superview];
      if (superview)
      {
        v14 = superview;
        do
        {
          layer2 = [v14 layer];
          [layer2 setZPosition:v9];

          objc_setAssociatedObject(v14, &off_101939E18, 0, 1);
          superview2 = [v14 superview];

          v14 = superview2;
        }

        while (superview2);
      }

      goto LABEL_19;
    }

    layer3 = [viewCopy layer];
    [layer3 setZPosition:-10000.0];

    v19 = [NSNumber numberWithDouble:v12];
    objc_setAssociatedObject(viewCopy, &off_101939E18, v19, 1);
  }

  else
  {
    if (v7)
    {
      layer4 = [viewCopy layer];
      [layer4 setZPosition:v9];
    }

    objc_setAssociatedObject(viewCopy, &off_101939E18, 0, 1);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  subviews = [viewCopy subviews];
  v21 = [subviews countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [(MapsApplicationDebugController *)self _recursivelySetHidden:hiddenCopy forView:*(*(&v25 + 1) + 8 * i)];
      }

      v22 = [subviews countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v22);
  }

LABEL_19:
}

- (void)addAppUISectionTo:(id)to
{
  toCopy = to;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EFB02C;
  v6[3] = &unk_101658DA0;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v5 = [toCopy addNavigationRowWithTitle:@"App UI" viewControllerContent:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)addVisualEffectSettingsTo:(id)to
{
  toCopy = to;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EFC0FC;
  v6[3] = &unk_10165E0A8;
  objc_copyWeak(&v7, &location);
  v5 = [toCopy addSectionWithTitle:0 content:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

+ (void)setRoutingInternalModeFlag:(id)flag enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  flagCopy = flag;
  v5 = GEOConfigGetDictionary();
  v6 = [v5 objectForKeyedSubscript:@"InternalModes.enable"];
  v7 = [v6 componentsSeparatedByString:{@", "}];
  v8 = [NSMutableArray arrayWithArray:v7];

  if ([v8 containsObject:flagCopy] != enabledCopy)
  {
    if (enabledCopy)
    {
      [v8 addObject:flagCopy];
    }

    else
    {
      [v8 removeObject:flagCopy];
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

+ (BOOL)hasRoutingInternalModeFlag:(id)flag
{
  flagCopy = flag;
  v4 = GEOConfigGetDictionary();
  v5 = [v4 objectForKeyedSubscript:@"InternalModes.enable"];
  v6 = [v5 componentsSeparatedByString:{@", "}];
  v7 = [v6 containsObject:flagCopy];

  return v7;
}

@end