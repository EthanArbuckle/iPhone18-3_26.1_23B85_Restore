@interface MapsAnalyticStateProvider
+ (OS_dispatch_queue)serialQueue;
+ (void)clearSharedState;
+ (void)setUserProfileAvailableActions:(id)a3;
+ (void)setUserProfileUserIsLoggedIntoICloud:(BOOL)a3;
+ (void)updateButtonsInformationAQI:(BOOL)a3 weather:(BOOL)a4;
+ (void)updateButtonsInformationLookAround:(BOOL)a3;
+ (void)updateCycleOptionsInformation:(id)a3;
+ (void)updateDriveOptionsInformation:(id)a3;
+ (void)updateLayoutInformation:(id)a3;
+ (void)updateLocaleInformation:(id)a3;
+ (void)updateMapSettingsInformationLabels:(BOOL)a3 traffic:(BOOL)a4;
+ (void)updateMapViewInformation:(id)a3;
+ (void)updateMapViewViewMode:(int64_t)a3;
+ (void)updateNotificationsStateInformation;
+ (void)updatePreciseLocationInformation;
+ (void)updateSettingsInformation;
+ (void)updateSuggestionSearchInformation:(id)a3 searchText:(id)a4 searchIndex:(int)a5 searchfieldType:(int)a6 suggestionsAcSequenceNumber:(int)a7;
+ (void)updateTouristInformation;
+ (void)updateWalkOptionsInformation:(id)a3;
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
  v3 = [v2 isLocationServicesAuthorizationNeeded];

  v4 = +[MKLocationManager sharedLocationManager];
  v5 = [v4 isLocationServicesApproved];

  v6 = +[MKLocationManager sharedLocationManager];
  v7 = [v6 isAuthorizedForPreciseLocation];

  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  if (v3 & 1 | ((v5 & 1) == 0))
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
  v4 = [v3 isFindMyCarAllowed];

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
  [v19 setMapSettingsFindMyCarEnabled:v4];

  v20 = +[GEOAPSharedStateData sharedData];
  [v20 setMapSettingsTransportMode:v6];

  v21 = GEOConfigGetBOOL();
  v22 = +[GEOAPSharedStateData sharedData];
  [v22 setMapSettingsHeadingEnabled:v21];

  v23 = GEOConfigGetBOOL();
  v24 = +[GEOAPSharedStateData sharedData];
  [v24 setMapSettingsSpeedLimitEnabled:v23];

  [a1 updateDriveOptionsInformation:v35];
  [a1 updateWalkOptionsInformation:v35];
  [a1 updateCycleOptionsInformation:v35];
  v25 = +[MapsSuggestionsSiri isEnabled];
  v26 = +[GEOAPSharedStateData sharedData];
  [v26 setSuggestionsSiriEnabled:v25];

  if (qword_10195EBA8 != -1)
  {
    dispatch_once(&qword_10195EBA8, &stru_10164DCC8);
  }

  v27 = [qword_10195EBA0 path];
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

    v30 = [v28 BOOLValue];
  }

  else
  {
    v30 = GEOConfigGetBOOL();
  }

  v31 = v30;

  v32 = +[GEOAPSharedStateData sharedData];
  [v32 setMapSettingsIsHandsFreeProfileEnabled:v31];

  [a1 updateiCloudStateInformation];
  [a1 updateNotificationsStateInformation];
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
  v5 = [v2 notificationSettings];

  v3 = [v5 authorizationStatus] == 2 || objc_msgSend(v5, "authorizationStatus") == 3;
  v4 = +[GEOAPSharedStateData sharedData];
  [v4 setMapSettingsNotificationsEnabled:v3];
}

+ (void)setUserProfileAvailableActions:(id)a3
{
  v3 = a3;
  v4 = +[GEOAPSharedStateData sharedData];
  [v4 setUserProfileAvailableActions:v3];
}

+ (void)setUserProfileUserIsLoggedIntoICloud:(BOOL)a3
{
  v3 = a3;
  v4 = +[GEOAPSharedStateData sharedData];
  [v4 setUserProfileUserIsLoggedIntoICloud:v3];
}

+ (void)updateCycleOptionsInformation:(id)a3
{
  v3 = a3;
  v10 = [[CyclePreferences alloc] initWithDefaults:v3];

  v4 = [(CyclePreferences *)v10 avoidHills];
  v5 = +[GEOAPSharedStateData sharedData];
  [v5 setMapSettingsAvoidHills:v4];

  v6 = [(CyclePreferences *)v10 avoidBusyRoads];
  v7 = +[GEOAPSharedStateData sharedData];
  [v7 setMapSettingsAvoidBusyRoads:v6];

  v8 = [(CyclePreferences *)v10 ebike];
  v9 = +[GEOAPSharedStateData sharedData];
  [v9 setMapSettingsEBike:v8];
}

+ (void)updateWalkOptionsInformation:(id)a3
{
  v3 = a3;
  v10 = [[WalkPreferences alloc] initWithDefaults:v3];

  v4 = [(WalkPreferences *)v10 avoidHills];
  v5 = +[GEOAPSharedStateData sharedData];
  [v5 setMapSettingsWalkingAvoidHills:v4];

  v6 = [(WalkPreferences *)v10 avoidBusyRoads];
  v7 = +[GEOAPSharedStateData sharedData];
  [v7 setMapSettingsWalkingAvoidBusyRoads:v6];

  v8 = [(WalkPreferences *)v10 avoidStairs];
  v9 = +[GEOAPSharedStateData sharedData];
  [v9 setMapSettingsWalkingAvoidStairs:v8];
}

+ (void)updateDriveOptionsInformation:(id)a3
{
  v3 = a3;
  v8 = [[DrivePreferences alloc] initWithDefaults:v3];

  v4 = [(DrivePreferences *)v8 avoidTolls];
  v5 = +[GEOAPSharedStateData sharedData];
  [v5 setMapSettingsAvoidTolls:v4];

  v6 = [(DrivePreferences *)v8 avoidHighways];
  v7 = +[GEOAPSharedStateData sharedData];
  [v7 setMapSettingsAvoidHighways:v6];
}

+ (void)updateButtonsInformationLookAround:(BOOL)a3
{
  v3 = a3;
  v4 = +[GEOAPSharedStateData sharedData];
  [v4 setLookAroundEntryIconShown:v3];
}

+ (void)updateButtonsInformationAQI:(BOOL)a3 weather:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[GEOAPSharedStateData sharedData];
  [v6 setMapUiShownAqiShown:v5];

  v7 = +[GEOAPSharedStateData sharedData];
  [v7 setMapUiShownWeatherShown:v4];
}

+ (void)updateMapSettingsInformationLabels:(BOOL)a3 traffic:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[GEOAPSharedStateData sharedData];
  [v6 setMapSettingsLabelEnabled:v5];

  v7 = +[GEOAPSharedStateData sharedData];
  [v7 setMapSettingsTrafficEnabled:v4];
}

+ (void)updateLayoutInformation:(id)a3
{
  v33 = a3;
  v3 = [v33 containerStyle];
  v4 = [v33 currentViewController];
  v5 = [v4 cardPresentationController];
  v6 = [v5 containeeLayout];

  if ((v6 - 1) > 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_1012156C8[(v6 - 1)];
  }

  v8 = +[GEOAPSharedStateData sharedData];
  [v8 setMapUiLayoutInfo:v7];

  if ((v3 - 1) > 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_1012156DC[(v3 - 1)];
  }

  v10 = +[GEOAPSharedStateData sharedData];
  [v10 setMapUiLayoutStyle:v9];

  v11 = [v33 view];
  [v11 frame];
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
  v25 = [v33 view];
  v26 = [v25 window];
  v27 = [v26 screen];

  [v27 bounds];
  v28 = CGRectGetHeight(v37);
  [v27 bounds];
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

+ (void)updateSuggestionSearchInformation:(id)a3 searchText:(id)a4 searchIndex:(int)a5 searchfieldType:(int)a6 suggestionsAcSequenceNumber:(int)a7
{
  v7 = *&a7;
  v8 = *&a6;
  v9 = *&a5;
  v11 = a3;
  v12 = a4;
  v13 = +[GEOAPSharedStateData sharedData];
  [v13 setSuggestionsSearchString:v12];
  [v13 setSuggestionsSelectedIndex:v9];
  [v13 setSuggestionsSearchFieldType:v8];
  [v13 setSuggestionsAcSequenceNumber:v7];
  [v13 clearSuggestionsDisplayedResults];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v11;
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
  v2 = [a1 serialQueue];
  dispatch_async(v2, &stru_10164DC88);
}

+ (void)updateMapViewViewMode:(int64_t)a3
{
  if (a3 > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1012156A8[a3];
  }

  v4 = [a1 serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C1484C;
  block[3] = &unk_10164DC68;
  v6 = v3;
  dispatch_async(v4, block);
}

+ (void)updateMapViewInformation:(id)a3
{
  v4 = a3;
  v5 = [v4 mapType];
  v6 = 1;
  if (v5 > 2)
  {
    if (v5 <= 101)
    {
      if (v5 != 3)
      {
        if (v5 != 4)
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

LABEL_13:
      v6 = 2;
      goto LABEL_15;
    }

    if (v5 == 102)
    {
      goto LABEL_15;
    }

    if (v5 == 104)
    {
      v6 = 4;
      goto LABEL_15;
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      goto LABEL_13;
    }

    if (v5 == 2)
    {
LABEL_9:
      v6 = 3;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
  v7 = [v4 mapRegion];
  v8 = [v7 copy];

  [v4 _zoomLevel];
  v10 = v9;
  [v4 _vectorKitTileZoomLevelForMapKitZoomLevel:?];
  v12 = v11;
  LOBYTE(v7) = [v4 hasUserLocation];
  v13 = [v4 isUserLocationVisible];
  v14 = [v4 camera];
  [v14 pitch];
  v16 = v15;

  v17 = [a1 serialQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100C14ACC;
  v20[3] = &unk_10164DC20;
  v26 = v6;
  v23 = v10;
  v24 = v12;
  v27 = v7;
  v28 = v13;
  v25 = v16;
  v21 = v8;
  v22 = v4;
  v18 = v4;
  v19 = v8;
  dispatch_async(v17, v20);
}

+ (void)updateLocaleInformation:(id)a3
{
  v11 = a3;
  v4 = +[MNNavigationService sharedService];
  v5 = [v4 currentVoiceLanguage];

  if ([v5 length])
  {
    v6 = +[GEOAPSharedStateData sharedData];
    [v6 setDeviceOutputLocale:v5];
  }

  if ([v11 length])
  {
    v7 = +[GEOAPSharedStateData sharedData];
    [v7 setDeviceInputLocale:v11];
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  [a1 updateDriveOptionsInformation:v8];

  v9 = +[NSUserDefaults standardUserDefaults];
  [a1 updateWalkOptionsInformation:v9];

  v10 = +[NSUserDefaults standardUserDefaults];
  [a1 updateCycleOptionsInformation:v10];
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