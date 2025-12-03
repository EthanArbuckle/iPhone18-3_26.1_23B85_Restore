@interface MapsAnalyticStateProvider
+ (OS_dispatch_queue)serialQueue;
+ (void)clearSharedState;
+ (void)setUserProfileAvailableActions:(id)actions;
+ (void)setUserProfileUserIsLoggedIntoICloud:(BOOL)cloud;
+ (void)updateButtonsInformationAQI:(BOOL)i weather:(BOOL)weather;
+ (void)updateButtonsInformationLookAround:(BOOL)around;
+ (void)updateCycleOptionsInformation:(id)information;
+ (void)updateDriveOptionsInformation:(id)information;
+ (void)updateLayoutInformation:(id)information;
+ (void)updateLocaleInformation:(id)information;
+ (void)updateMapSettingsInformationLabels:(BOOL)labels traffic:(BOOL)traffic;
+ (void)updateMapViewInformation:(id)information;
+ (void)updateMapViewViewMode:(int64_t)mode;
+ (void)updateNotificationsStateInformation;
+ (void)updatePreciseLocationInformation;
+ (void)updateSettingsInformation;
+ (void)updateSuggestionSearchInformation:(id)information searchText:(id)text searchIndex:(int)index searchfieldType:(int)type suggestionsAcSequenceNumber:(int)number;
+ (void)updateTouristInformation;
+ (void)updateWalkOptionsInformation:(id)information;
+ (void)updateiCloudStateInformation;
@end

@implementation MapsAnalyticStateProvider

+ (OS_dispatch_queue)serialQueue
{
  if (qword_10195EB98 != -1)
  {
    dispatch_once(&qword_10195EB98, &stru_10164DBD0);
  }

  v3 = qword_10195EB90;

  return v3;
}

+ (void)updatePreciseLocationInformation
{
  v2 = +[MKLocationManager sharedLocationManager];
  isLocationServicesAuthorizationNeeded = [v2 isLocationServicesAuthorizationNeeded];

  v4 = +[MKLocationManager sharedLocationManager];
  isLocationServicesApproved = [v4 isLocationServicesApproved];

  v6 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v6 isAuthorizedForPreciseLocation];

  if (isAuthorizedForPreciseLocation)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  if (isLocationServicesAuthorizationNeeded & 1 | ((isLocationServicesApproved & 1) == 0))
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = +[GEOAPSharedStateData sharedData];
  [v10 setMapSettingsLocationPrecisionType:v9];
}

+ (void)updateSettingsInformation
{
  v3 = +[MCProfileConnection sharedConnection];
  isFindMyCarAllowed = [v3 isFindMyCarAllowed];

  v5 = GEOGetUserTransportTypePreference();
  if (v5 < 5)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  v35 = +[NSUserDefaults standardUserDefaults];
  BOOL = GEOConfigGetBOOL();
  v8 = [[AudioPreferences alloc] initWithDefaults:v35];
  v9 = +[GEOAPSharedStateData sharedData];
  v10 = [(AudioPreferences *)v8 drivingVoiceGuidance]+ 1;
  if (v10 >= 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  [v9 setNavVoiceGuidanceLevel:v11 forTransportMode:1];

  v12 = +[GEOAPSharedStateData sharedData];
  v13 = [(AudioPreferences *)v8 walkingVoiceGuidance]+ 1;
  if (v13 >= 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  [v12 setNavVoiceGuidanceLevel:v14 forTransportMode:2];

  v15 = +[GEOAPSharedStateData sharedData];
  v16 = [(AudioPreferences *)v8 cyclingVoiceGuidance]+ 1;
  if (v16 >= 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  [v15 setNavVoiceGuidanceLevel:v17 forTransportMode:5];

  v18 = +[GEOAPSharedStateData sharedData];
  [v18 setMapSettingsPauseSpokenAudioEnabled:BOOL];

  v19 = +[GEOAPSharedStateData sharedData];
  [v19 setMapSettingsFindMyCarEnabled:isFindMyCarAllowed];

  v20 = +[GEOAPSharedStateData sharedData];
  [v20 setMapSettingsTransportMode:v6];

  v21 = GEOConfigGetBOOL();
  v22 = +[GEOAPSharedStateData sharedData];
  [v22 setMapSettingsHeadingEnabled:v21];

  v23 = GEOConfigGetBOOL();
  v24 = +[GEOAPSharedStateData sharedData];
  [v24 setMapSettingsSpeedLimitEnabled:v23];

  [self updateDriveOptionsInformation:v35];
  [self updateWalkOptionsInformation:v35];
  [self updateCycleOptionsInformation:v35];
  v25 = +[MapsSuggestionsSiri isEnabled];
  v26 = +[GEOAPSharedStateData sharedData];
  [v26 setSuggestionsSiriEnabled:v25];

  if (qword_10195EBA8 != -1)
  {
    dispatch_once(&qword_10195EBA8, &stru_10164DCC8);
  }

  path = [qword_10195EBA0 path];
  v28 = _CFPreferencesCopyAppValueWithContainer();

  if (v28)
  {
    if ((_GEOConfigHasValue() & 1) == 0)
    {
      [v28 BOOLValue];
      GEOConfigSetBOOL();
    }

    v29 = +[MSPMapsPaths mapsApplicationContainerPaths];
    [v29 homeDirectory];
    _CFPreferencesSetValueWithContainer();

    bOOLValue = [v28 BOOLValue];
  }

  else
  {
    bOOLValue = GEOConfigGetBOOL();
  }

  v31 = bOOLValue;

  v32 = +[GEOAPSharedStateData sharedData];
  [v32 setMapSettingsIsHandsFreeProfileEnabled:v31];

  [self updateiCloudStateInformation];
  [self updateNotificationsStateInformation];
  v33 = GEOConfigGetBOOL();
  v34 = +[GEOAPSharedStateData sharedData];
  [v34 setMapSettingsReportingIncidentsEnabled:v33];
}

+ (void)updateiCloudStateInformation
{
  v2 = +[_TtC8MapsSync15MapsSyncService shared];
  [v2 cloudKitSyncAllowedWithCompletionHandler:&stru_10164DCA8];
}

+ (void)updateNotificationsStateInformation
{
  v2 = +[UNUserNotificationCenter currentNotificationCenter];
  notificationSettings = [v2 notificationSettings];

  v3 = [notificationSettings authorizationStatus] == 2 || objc_msgSend(notificationSettings, "authorizationStatus") == 3;
  v4 = +[GEOAPSharedStateData sharedData];
  [v4 setMapSettingsNotificationsEnabled:v3];
}

+ (void)setUserProfileAvailableActions:(id)actions
{
  actionsCopy = actions;
  v4 = +[GEOAPSharedStateData sharedData];
  [v4 setUserProfileAvailableActions:actionsCopy];
}

+ (void)setUserProfileUserIsLoggedIntoICloud:(BOOL)cloud
{
  cloudCopy = cloud;
  v4 = +[GEOAPSharedStateData sharedData];
  [v4 setUserProfileUserIsLoggedIntoICloud:cloudCopy];
}

+ (void)updateCycleOptionsInformation:(id)information
{
  informationCopy = information;
  v10 = [[CyclePreferences alloc] initWithDefaults:informationCopy];

  avoidHills = [(CyclePreferences *)v10 avoidHills];
  v5 = +[GEOAPSharedStateData sharedData];
  [v5 setMapSettingsAvoidHills:avoidHills];

  avoidBusyRoads = [(CyclePreferences *)v10 avoidBusyRoads];
  v7 = +[GEOAPSharedStateData sharedData];
  [v7 setMapSettingsAvoidBusyRoads:avoidBusyRoads];

  ebike = [(CyclePreferences *)v10 ebike];
  v9 = +[GEOAPSharedStateData sharedData];
  [v9 setMapSettingsEBike:ebike];
}

+ (void)updateWalkOptionsInformation:(id)information
{
  informationCopy = information;
  v10 = [[WalkPreferences alloc] initWithDefaults:informationCopy];

  avoidHills = [(WalkPreferences *)v10 avoidHills];
  v5 = +[GEOAPSharedStateData sharedData];
  [v5 setMapSettingsWalkingAvoidHills:avoidHills];

  avoidBusyRoads = [(WalkPreferences *)v10 avoidBusyRoads];
  v7 = +[GEOAPSharedStateData sharedData];
  [v7 setMapSettingsWalkingAvoidBusyRoads:avoidBusyRoads];

  avoidStairs = [(WalkPreferences *)v10 avoidStairs];
  v9 = +[GEOAPSharedStateData sharedData];
  [v9 setMapSettingsWalkingAvoidStairs:avoidStairs];
}

+ (void)updateDriveOptionsInformation:(id)information
{
  informationCopy = information;
  v8 = [[DrivePreferences alloc] initWithDefaults:informationCopy];

  avoidTolls = [(DrivePreferences *)v8 avoidTolls];
  v5 = +[GEOAPSharedStateData sharedData];
  [v5 setMapSettingsAvoidTolls:avoidTolls];

  avoidHighways = [(DrivePreferences *)v8 avoidHighways];
  v7 = +[GEOAPSharedStateData sharedData];
  [v7 setMapSettingsAvoidHighways:avoidHighways];
}

+ (void)updateButtonsInformationLookAround:(BOOL)around
{
  aroundCopy = around;
  v4 = +[GEOAPSharedStateData sharedData];
  [v4 setLookAroundEntryIconShown:aroundCopy];
}

+ (void)updateButtonsInformationAQI:(BOOL)i weather:(BOOL)weather
{
  weatherCopy = weather;
  iCopy = i;
  v6 = +[GEOAPSharedStateData sharedData];
  [v6 setMapUiShownAqiShown:iCopy];

  v7 = +[GEOAPSharedStateData sharedData];
  [v7 setMapUiShownWeatherShown:weatherCopy];
}

+ (void)updateMapSettingsInformationLabels:(BOOL)labels traffic:(BOOL)traffic
{
  trafficCopy = traffic;
  labelsCopy = labels;
  v6 = +[GEOAPSharedStateData sharedData];
  [v6 setMapSettingsLabelEnabled:labelsCopy];

  v7 = +[GEOAPSharedStateData sharedData];
  [v7 setMapSettingsTrafficEnabled:trafficCopy];
}

+ (void)updateLayoutInformation:(id)information
{
  informationCopy = information;
  containerStyle = [informationCopy containerStyle];
  currentViewController = [informationCopy currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if ((containeeLayout - 1) > 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_1012156C8[(containeeLayout - 1)];
  }

  v8 = +[GEOAPSharedStateData sharedData];
  [v8 setMapUiLayoutInfo:v7];

  if ((containerStyle - 1) > 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_1012156DC[(containerStyle - 1)];
  }

  v10 = +[GEOAPSharedStateData sharedData];
  [v10 setMapUiLayoutStyle:v9];

  view = [informationCopy view];
  [view frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = +[GEOAPSharedStateData sharedData];
  [v20 setLandscape:v19 < v17];

  v21 = +[UIApplication _maps_numberOfApplicationScenes];
  v22 = +[GEOAPSharedStateData sharedData];
  [v22 setMapUiNumberOfMapsWindows:v21];

  v35.origin.x = v13;
  v35.origin.y = v15;
  v35.size.width = v17;
  v35.size.height = v19;
  Height = CGRectGetHeight(v35);
  v36.origin.x = v13;
  v36.origin.y = v15;
  v36.size.width = v17;
  v36.size.height = v19;
  v24 = CGRectGetWidth(v36) * Height;
  view2 = [informationCopy view];
  window = [view2 window];
  screen = [window screen];

  [screen bounds];
  v28 = CGRectGetHeight(v37);
  [screen bounds];
  v29 = v24 / (CGRectGetWidth(v38) * v28);
  if (v29 <= 0.5)
  {
    v30 = 3;
  }

  else
  {
    v30 = 2;
  }

  if (v29 > 0.7 && v29 < 0.9)
  {
    v30 = 1;
  }

  if (v29 <= 0.9)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = +[GEOAPSharedStateData sharedData];
  [v32 setWindowSize:v31];
}

+ (void)updateSuggestionSearchInformation:(id)information searchText:(id)text searchIndex:(int)index searchfieldType:(int)type suggestionsAcSequenceNumber:(int)number
{
  v7 = *&number;
  v8 = *&type;
  v9 = *&index;
  informationCopy = information;
  textCopy = text;
  v13 = +[GEOAPSharedStateData sharedData];
  [v13 setSuggestionsSearchString:textCopy];
  [v13 setSuggestionsSelectedIndex:v9];
  [v13 setSuggestionsSearchFieldType:v8];
  [v13 setSuggestionsAcSequenceNumber:v7];
  [v13 clearSuggestionsDisplayedResults];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = informationCopy;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v13 addSuggestionsDisplayedResults:{*(*(&v19 + 1) + 8 * v18), v19}];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

+ (void)updateTouristInformation
{
  serialQueue = [self serialQueue];
  dispatch_async(serialQueue, &stru_10164DC88);
}

+ (void)updateMapViewViewMode:(int64_t)mode
{
  if (mode > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1012156A8[mode];
  }

  serialQueue = [self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C1484C;
  block[3] = &unk_10164DC68;
  v6 = v3;
  dispatch_async(serialQueue, block);
}

+ (void)updateMapViewInformation:(id)information
{
  informationCopy = information;
  mapType = [informationCopy mapType];
  v6 = 1;
  if (mapType > 2)
  {
    if (mapType <= 101)
    {
      if (mapType != 3)
      {
        if (mapType != 4)
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

LABEL_13:
      v6 = 2;
      goto LABEL_15;
    }

    if (mapType == 102)
    {
      goto LABEL_15;
    }

    if (mapType == 104)
    {
      v6 = 4;
      goto LABEL_15;
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if (mapType)
  {
    if (mapType == 1)
    {
      goto LABEL_13;
    }

    if (mapType == 2)
    {
LABEL_9:
      v6 = 3;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
  mapRegion = [informationCopy mapRegion];
  v8 = [mapRegion copy];

  [informationCopy _zoomLevel];
  v10 = v9;
  [informationCopy _vectorKitTileZoomLevelForMapKitZoomLevel:?];
  v12 = v11;
  LOBYTE(mapRegion) = [informationCopy hasUserLocation];
  isUserLocationVisible = [informationCopy isUserLocationVisible];
  camera = [informationCopy camera];
  [camera pitch];
  v16 = v15;

  serialQueue = [self serialQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100C14ACC;
  v20[3] = &unk_10164DC20;
  v26 = v6;
  v23 = v10;
  v24 = v12;
  v27 = mapRegion;
  v28 = isUserLocationVisible;
  v25 = v16;
  v21 = v8;
  v22 = informationCopy;
  v18 = informationCopy;
  v19 = v8;
  dispatch_async(serialQueue, v20);
}

+ (void)updateLocaleInformation:(id)information
{
  informationCopy = information;
  v4 = +[MNNavigationService sharedService];
  currentVoiceLanguage = [v4 currentVoiceLanguage];

  if ([currentVoiceLanguage length])
  {
    v6 = +[GEOAPSharedStateData sharedData];
    [v6 setDeviceOutputLocale:currentVoiceLanguage];
  }

  if ([informationCopy length])
  {
    v7 = +[GEOAPSharedStateData sharedData];
    [v7 setDeviceInputLocale:informationCopy];
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  [self updateDriveOptionsInformation:v8];

  v9 = +[NSUserDefaults standardUserDefaults];
  [self updateWalkOptionsInformation:v9];

  v10 = +[NSUserDefaults standardUserDefaults];
  [self updateCycleOptionsInformation:v10];
}

+ (void)clearSharedState
{
  v2 = +[GEOAPSharedStateData sharedData];
  [v2 setMapLaunchSourceAppId:0];

  v3 = +[GEOAPSharedStateData sharedData];
  [v3 setMapLaunchLaunchUri:0];

  v4 = +[GEOAPSharedStateData sharedData];
  [v4 setMapLaunchReferringWebsite:0];

  v5 = +[GEOAPSharedStateData sharedData];
  [v5 setMapLaunchIsHandoff:0];

  v6 = +[GEOAPSharedStateData sharedData];
  [v6 setMapLaunchSourceHandoffDevice:0];

  v7 = +[GEOAPSharedStateData sharedData];
  [v7 setHasMapLaunchAction:0];
}

@end