id MAPSGetCameraLog()
{
  if (qword_10C90 != -1)
  {
    sub_686C();
  }

  v1 = qword_10C88;

  return v1;
}

void sub_13CC(id a1)
{
  qword_10C88 = os_log_create("com.apple.Maps", "Camera");

  _objc_release_x1();
}

id MAPSGetCollectionsLog()
{
  if (qword_10CA0 != -1)
  {
    sub_6880();
  }

  v1 = qword_10C98;

  return v1;
}

void sub_1454(id a1)
{
  qword_10C98 = os_log_create("com.apple.Maps", "Collections");

  _objc_release_x1();
}

id MAPSGetContainerVCLog()
{
  if (qword_10CB0 != -1)
  {
    sub_6894();
  }

  v1 = qword_10CA8;

  return v1;
}

void sub_14DC(id a1)
{
  qword_10CA8 = os_log_create("com.apple.Maps", "ContainerVC");

  _objc_release_x1();
}

id MAPSGetCuratedCollectionsLog()
{
  if (qword_10CC0 != -1)
  {
    sub_68A8();
  }

  v1 = qword_10CB8;

  return v1;
}

void sub_1564(id a1)
{
  qword_10CB8 = os_log_create("com.apple.Maps", "CuratedCollections");

  _objc_release_x1();
}

id MAPSGetEVOnboardingLog()
{
  if (qword_10CD0 != -1)
  {
    sub_68BC();
  }

  v1 = qword_10CC8;

  return v1;
}

void sub_15EC(id a1)
{
  qword_10CC8 = os_log_create("com.apple.Maps", "EVOnboarding");

  _objc_release_x1();
}

id MAPSGetLightLevelProvidingLog()
{
  if (qword_10CE0 != -1)
  {
    sub_68D0();
  }

  v1 = qword_10CD8;

  return v1;
}

void sub_1674(id a1)
{
  qword_10CD8 = os_log_create("com.apple.Maps", "LightLevelProviding");

  _objc_release_x1();
}

id MAPSGetMapModeLog()
{
  if (qword_10CF0 != -1)
  {
    sub_68E4();
  }

  v1 = qword_10CE8;

  return v1;
}

void sub_16FC(id a1)
{
  qword_10CE8 = os_log_create("com.apple.Maps", "MapMode");

  _objc_release_x1();
}

id MAPSGetMapsActivityLog()
{
  if (qword_10D00 != -1)
  {
    sub_68F8();
  }

  v1 = qword_10CF8;

  return v1;
}

void sub_1784(id a1)
{
  qword_10CF8 = os_log_create("com.apple.Maps", "MapsActivity");

  _objc_release_x1();
}

id MAPSGetMapsAssertLog()
{
  if (qword_10D10 != -1)
  {
    sub_690C();
  }

  v1 = qword_10D08;

  return v1;
}

void sub_180C(id a1)
{
  qword_10D08 = os_log_create("com.apple.Maps", "MapsAssert");

  _objc_release_x1();
}

id MAPSGetMapsChromeLog()
{
  if (qword_10D20 != -1)
  {
    sub_6920();
  }

  v1 = qword_10D18;

  return v1;
}

void sub_1894(id a1)
{
  qword_10D18 = os_log_create("com.apple.Maps", "MapsChrome");

  _objc_release_x1();
}

id MAPSGetMapsDefaultLog()
{
  if (qword_10D30 != -1)
  {
    sub_6934();
  }

  v1 = qword_10D28;

  return v1;
}

void sub_191C(id a1)
{
  qword_10D28 = os_log_create("com.apple.Maps", "MapsDefault");

  _objc_release_x1();
}

id MAPSGetMapsLaunchLog()
{
  if (qword_10D40 != -1)
  {
    sub_6948();
  }

  v1 = qword_10D38;

  return v1;
}

void sub_19A4(id a1)
{
  qword_10D38 = os_log_create("com.apple.Maps", "MapsLaunch");

  _objc_release_x1();
}

id MAPSGetMapsNotificationsLog()
{
  if (qword_10D50 != -1)
  {
    sub_695C();
  }

  v1 = qword_10D48;

  return v1;
}

void sub_1A2C(id a1)
{
  qword_10D48 = os_log_create("com.apple.Maps", "MapsNotifications");

  _objc_release_x1();
}

id MAPSGetMapsPerformanceLog()
{
  if (qword_10D60 != -1)
  {
    sub_6970();
  }

  v1 = qword_10D58;

  return v1;
}

void sub_1AB4(id a1)
{
  qword_10D58 = os_log_create("com.apple.Maps", "MapsPerformance");

  _objc_release_x1();
}

id MAPSGetLookAroundLog()
{
  if (qword_10D70 != -1)
  {
    sub_6984();
  }

  v1 = qword_10D68;

  return v1;
}

void sub_1B3C(id a1)
{
  qword_10D68 = os_log_create("com.apple.Maps", "LookAround");

  _objc_release_x1();
}

id MAPSGetNavigationLog()
{
  if (qword_10D80 != -1)
  {
    sub_6998();
  }

  v1 = qword_10D78;

  return v1;
}

void sub_1BC4(id a1)
{
  qword_10D78 = os_log_create("com.apple.Maps", "Navigation");

  _objc_release_x1();
}

id MAPSGetNavigationBannersLog()
{
  if (qword_10D90 != -1)
  {
    sub_69AC();
  }

  v1 = qword_10D88;

  return v1;
}

void sub_1C4C(id a1)
{
  qword_10D88 = os_log_create("com.apple.Maps", "NavigationBanners");

  _objc_release_x1();
}

id MAPSGetNearbyTransitLog()
{
  if (qword_10DA0 != -1)
  {
    sub_69C0();
  }

  v1 = qword_10D98;

  return v1;
}

void sub_1CD4(id a1)
{
  qword_10D98 = os_log_create("com.apple.Maps", "NearbyTransit");

  _objc_release_x1();
}

id MAPSGetOfflineLog()
{
  if (qword_10DB0 != -1)
  {
    sub_69D4();
  }

  v1 = qword_10DA8;

  return v1;
}

void sub_1D5C(id a1)
{
  qword_10DA8 = os_log_create("com.apple.Maps", "Offline");

  _objc_release_x1();
}

id MAPSGetPlaceCardLog()
{
  if (qword_10DC0 != -1)
  {
    sub_69E8();
  }

  v1 = qword_10DB8;

  return v1;
}

void sub_1DE4(id a1)
{
  qword_10DB8 = os_log_create("com.apple.Maps", "PlaceCard");

  _objc_release_x1();
}

id MAPSGetPPTLog()
{
  if (qword_10DD0 != -1)
  {
    sub_69FC();
  }

  v1 = qword_10DC8;

  return v1;
}

void sub_1E6C(id a1)
{
  qword_10DC8 = os_log_create("com.apple.Maps", "PPT");

  _objc_release_x1();
}

id MAPSGetPreferencesSyncLog()
{
  if (qword_10DE0 != -1)
  {
    sub_6A10();
  }

  v1 = qword_10DD8;

  return v1;
}

void sub_1EF4(id a1)
{
  qword_10DD8 = os_log_create("com.apple.Maps", "PreferencesSync");

  _objc_release_x1();
}

id MAPSGetPrintLog()
{
  if (qword_10DF0 != -1)
  {
    sub_6A24();
  }

  v1 = qword_10DE8;

  return v1;
}

void sub_1F7C(id a1)
{
  qword_10DE8 = os_log_create("com.apple.Maps", "Print");

  _objc_release_x1();
}

id MAPSGetRAPLayoutLog()
{
  if (qword_10E00 != -1)
  {
    sub_6A38();
  }

  v1 = qword_10DF8;

  return v1;
}

void sub_2004(id a1)
{
  qword_10DF8 = os_log_create("com.apple.Maps", "RAPLayout");

  _objc_release_x1();
}

id MAPSGetRAPNavigationLog()
{
  if (qword_10E10 != -1)
  {
    sub_6A4C();
  }

  v1 = qword_10E08;

  return v1;
}

void sub_208C(id a1)
{
  qword_10E08 = os_log_create("com.apple.Maps", "RAPNavigation");

  _objc_release_x1();
}

id MAPSGetRAPSubmissionLog()
{
  if (qword_10E20 != -1)
  {
    sub_6A60();
  }

  v1 = qword_10E18;

  return v1;
}

void sub_2114(id a1)
{
  qword_10E18 = os_log_create("com.apple.Maps", "RAPSubmission");

  _objc_release_x1();
}

id MAPSGetRecentsLog()
{
  if (qword_10E30 != -1)
  {
    sub_6A74();
  }

  v1 = qword_10E28;

  return v1;
}

void sub_219C(id a1)
{
  qword_10E28 = os_log_create("com.apple.Maps", "Recents");

  _objc_release_x1();
}

id MAPSGetRouteCreationLog()
{
  if (qword_10E40 != -1)
  {
    sub_6A88();
  }

  v1 = qword_10E38;

  return v1;
}

void sub_2224(id a1)
{
  qword_10E38 = os_log_create("com.apple.Maps", "RouteCreation");

  _objc_release_x1();
}

id MAPSGetRoutePlanningLog()
{
  if (qword_10E50 != -1)
  {
    sub_6A9C();
  }

  v1 = qword_10E48;

  return v1;
}

void sub_22AC(id a1)
{
  qword_10E48 = os_log_create("com.apple.Maps", "RoutePlanning");

  _objc_release_x1();
}

id MAPSGetRoutePlanningFeatureDiscoveryLog()
{
  if (qword_10E60 != -1)
  {
    sub_6AB0();
  }

  v1 = qword_10E58;

  return v1;
}

void sub_2334(id a1)
{
  qword_10E58 = os_log_create("com.apple.Maps", "RoutePlanningFeatureDiscovery");

  _objc_release_x1();
}

id MAPSGetSearchACLog()
{
  if (qword_10E70 != -1)
  {
    sub_6AC4();
  }

  v1 = qword_10E68;

  return v1;
}

void sub_23BC(id a1)
{
  qword_10E68 = os_log_create("com.apple.Maps", "SearchAC");

  _objc_release_x1();
}

id MAPSGetSearchACFindMyLog()
{
  if (qword_10E80 != -1)
  {
    sub_6AD8();
  }

  v1 = qword_10E78;

  return v1;
}

void sub_2444(id a1)
{
  qword_10E78 = os_log_create("com.apple.Maps", "SearchACFindMy");

  _objc_release_x1();
}

id MAPSGetSearchHomeLog()
{
  if (qword_10E90 != -1)
  {
    sub_6AEC();
  }

  v1 = qword_10E88;

  return v1;
}

void sub_24CC(id a1)
{
  qword_10E88 = os_log_create("com.apple.Maps", "SearchHome");

  _objc_release_x1();
}

id MAPSGetSharedTripLog()
{
  if (qword_10EA0 != -1)
  {
    sub_6B00();
  }

  v1 = qword_10E98;

  return v1;
}

void sub_2554(id a1)
{
  qword_10E98 = os_log_create("com.apple.Maps", "SharedTrip");

  _objc_release_x1();
}

id MAPSGetSharingLog()
{
  if (qword_10EB0 != -1)
  {
    sub_6B14();
  }

  v1 = qword_10EA8;

  return v1;
}

void sub_25DC(id a1)
{
  qword_10EA8 = os_log_create("com.apple.Maps", "Sharing");

  _objc_release_x1();
}

id MAPSGetShortcutsLog()
{
  if (qword_10EC0 != -1)
  {
    sub_6B28();
  }

  v1 = qword_10EB8;

  return v1;
}

void sub_2664(id a1)
{
  qword_10EB8 = os_log_create("com.apple.Maps", "Shortcuts");

  _objc_release_x1();
}

id MAPSGetTileStateCaptureLog()
{
  if (qword_10ED0 != -1)
  {
    sub_6B3C();
  }

  v1 = qword_10EC8;

  return v1;
}

void sub_26EC(id a1)
{
  qword_10EC8 = os_log_create("com.apple.Maps", "TileStateCapture");

  _objc_release_x1();
}

id MAPSGetTransitLog()
{
  if (qword_10EE0 != -1)
  {
    sub_6B50();
  }

  v1 = qword_10ED8;

  return v1;
}

void sub_2774(id a1)
{
  qword_10ED8 = os_log_create("com.apple.Maps", "Transit");

  _objc_release_x1();
}

id MAPSGetTransitPayLog()
{
  if (qword_10EF0 != -1)
  {
    sub_6B64();
  }

  v1 = qword_10EE8;

  return v1;
}

void sub_27FC(id a1)
{
  qword_10EE8 = os_log_create("com.apple.Maps", "TransitPay");

  _objc_release_x1();
}

id MAPSGetTransitSchedulesLog()
{
  if (qword_10F00 != -1)
  {
    sub_6B78();
  }

  v1 = qword_10EF8;

  return v1;
}

void sub_2884(id a1)
{
  qword_10EF8 = os_log_create("com.apple.Maps", "TransitSchedules");

  _objc_release_x1();
}

id MAPSGetUserProfileLog()
{
  if (qword_10F10 != -1)
  {
    sub_6B8C();
  }

  v1 = qword_10F08;

  return v1;
}

void sub_290C(id a1)
{
  qword_10F08 = os_log_create("com.apple.Maps", "UserProfile");

  _objc_release_x1();
}

id MAPSGetVehicleDisambiguatorLog()
{
  if (qword_10F20 != -1)
  {
    sub_6BA0();
  }

  v1 = qword_10F18;

  return v1;
}

void sub_2994(id a1)
{
  qword_10F18 = os_log_create("com.apple.Maps", "VehicleDisambiguator");

  _objc_release_x1();
}

id MAPSGetVirtualGarageLog()
{
  if (qword_10F30 != -1)
  {
    sub_6BB4();
  }

  v1 = qword_10F28;

  return v1;
}

void sub_2A1C(id a1)
{
  qword_10F28 = os_log_create("com.apple.Maps", "VirtualGarage");

  _objc_release_x1();
}

id MAPSGetWeatherLog()
{
  if (qword_10F40 != -1)
  {
    sub_6BC8();
  }

  v1 = qword_10F38;

  return v1;
}

void sub_2AA4(id a1)
{
  qword_10F38 = os_log_create("com.apple.Maps", "Weather");

  _objc_release_x1();
}

id MAPSGetXPCLog()
{
  if (qword_10F50 != -1)
  {
    sub_6BDC();
  }

  v1 = qword_10F48;

  return v1;
}

void sub_2B2C(id a1)
{
  qword_10F48 = os_log_create("com.apple.Maps", "XPC");

  _objc_release_x1();
}

id MAPSGetUGCBAAUtilitiesLog()
{
  if (qword_10F60 != -1)
  {
    sub_6BF0();
  }

  v1 = qword_10F58;

  return v1;
}

void sub_2BB4(id a1)
{
  qword_10F58 = os_log_create("com.apple.Maps", "UGCBAAUtilities");

  _objc_release_x1();
}

id MAPSGetIncidentsReportingLog()
{
  if (qword_10F70 != -1)
  {
    sub_6C04();
  }

  v1 = qword_10F68;

  return v1;
}

void sub_2C3C(id a1)
{
  qword_10F68 = os_log_create("com.apple.Maps", "IncidentsReporting");

  _objc_release_x1();
}

id MAPSGetWatermarkingLog()
{
  if (qword_10F80 != -1)
  {
    sub_6C18();
  }

  v1 = qword_10F78;

  return v1;
}

void sub_2CC4(id a1)
{
  qword_10F78 = os_log_create("com.apple.Maps", "Watermarking");

  _objc_release_x1();
}

id MAPSGetWaypointRequestLog()
{
  if (qword_10F90 != -1)
  {
    sub_6C2C();
  }

  v1 = qword_10F88;

  return v1;
}

void sub_2D4C(id a1)
{
  qword_10F88 = os_log_create("com.apple.Maps", "WaypointRequest");

  _objc_release_x1();
}

id MAPSGetWebBundleLog()
{
  if (qword_10FA0 != -1)
  {
    sub_6C40();
  }

  v1 = qword_10F98;

  return v1;
}

void sub_2DD4(id a1)
{
  qword_10F98 = os_log_create("com.apple.Maps", "WebBundle");

  _objc_release_x1();
}

id MAPSGetRAPRecordsManagerLog()
{
  if (qword_10FB0 != -1)
  {
    sub_6C54();
  }

  v1 = qword_10FA8;

  return v1;
}

void sub_2E5C(id a1)
{
  qword_10FA8 = os_log_create("com.apple.Maps", "RAPRecordsManager");

  _objc_release_x1();
}

id MAPSGetUGCPhotoAttributionLog()
{
  if (qword_10FC0 != -1)
  {
    sub_6C68();
  }

  v1 = qword_10FB8;

  return v1;
}

void sub_2EE4(id a1)
{
  qword_10FB8 = os_log_create("com.apple.Maps", "UGCPhotoAttribution");

  _objc_release_x1();
}

id MAPSGetSearchResultsImpressionsLog()
{
  if (qword_10FD0 != -1)
  {
    sub_6C7C();
  }

  v1 = qword_10FC8;

  return v1;
}

void sub_2F6C(id a1)
{
  qword_10FC8 = os_log_create("com.apple.Maps", "SearchResultsImpressions");

  _objc_release_x1();
}

id MAPSGetSearchRedoLog()
{
  if (qword_10FE0 != -1)
  {
    sub_6C90();
  }

  v1 = qword_10FD8;

  return v1;
}

void sub_2FF4(id a1)
{
  qword_10FD8 = os_log_create("com.apple.Maps", "SearchRedo");

  _objc_release_x1();
}

id MAPSGetStaleTimeBug_105865770Log()
{
  if (qword_10FF0 != -1)
  {
    sub_6CA4();
  }

  v1 = qword_10FE8;

  return v1;
}

void sub_307C(id a1)
{
  qword_10FE8 = os_log_create("com.apple.Maps", "StaleTimeBug_105865770");

  _objc_release_x1();
}

id MAPSGetCustomPOIsControllerLog()
{
  if (qword_11000 != -1)
  {
    sub_6CB8();
  }

  v1 = qword_10FF8;

  return v1;
}

void sub_3104(id a1)
{
  qword_10FF8 = os_log_create("com.apple.Maps", "CustomPOIsController");

  _objc_release_x1();
}

id MAPSGetPOSIXSignalsLog()
{
  if (qword_11010 != -1)
  {
    sub_6CCC();
  }

  v1 = qword_11008;

  return v1;
}

void sub_318C(id a1)
{
  qword_11008 = os_log_create("com.apple.Maps", "POSIXSignals");

  _objc_release_x1();
}

id MAPSGetCoalescingSchedulerLog()
{
  if (qword_11020 != -1)
  {
    sub_6CE0();
  }

  v1 = qword_11018;

  return v1;
}

void sub_3214(id a1)
{
  qword_11018 = os_log_create("com.apple.Maps", "CoalescingScheduler");

  _objc_release_x1();
}

id MAPSGetDeviceConnectionLog()
{
  if (qword_11030 != -1)
  {
    sub_6CF4();
  }

  v1 = qword_11028;

  return v1;
}

void sub_329C(id a1)
{
  qword_11028 = os_log_create("com.apple.Maps", "DeviceConnection");

  _objc_release_x1();
}

id MAPSGetDictationLog()
{
  if (qword_11040 != -1)
  {
    sub_6D08();
  }

  v1 = qword_11038;

  return v1;
}

void sub_3324(id a1)
{
  qword_11038 = os_log_create("com.apple.Maps", "Dictation");

  _objc_release_x1();
}

id MAPSGetElevationGraphLog()
{
  if (qword_11050 != -1)
  {
    sub_6D1C();
  }

  v1 = qword_11048;

  return v1;
}

void sub_33AC(id a1)
{
  qword_11048 = os_log_create("com.apple.Maps", "ElevationGraph");

  _objc_release_x1();
}

id MAPSGetIncidentReportingLog()
{
  if (qword_11060 != -1)
  {
    sub_6D30();
  }

  v1 = qword_11058;

  return v1;
}

void sub_3434(id a1)
{
  qword_11058 = os_log_create("com.apple.Maps", "IncidentReporting");

  _objc_release_x1();
}

id MAPSGetLightLevelLog()
{
  if (qword_11070 != -1)
  {
    sub_6D44();
  }

  v1 = qword_11068;

  return v1;
}

void sub_34BC(id a1)
{
  qword_11068 = os_log_create("com.apple.Maps", "LightLevel");

  _objc_release_x1();
}

id MAPSGetMapRegionLog()
{
  if (qword_11080 != -1)
  {
    sub_6D58();
  }

  v1 = qword_11078;

  return v1;
}

void sub_3544(id a1)
{
  qword_11078 = os_log_create("com.apple.Maps", "MapRegion");

  _objc_release_x1();
}

id MAPSGetNavigationSimulationPromptLog()
{
  if (qword_11090 != -1)
  {
    sub_6D6C();
  }

  v1 = qword_11088;

  return v1;
}

void sub_35CC(id a1)
{
  qword_11088 = os_log_create("com.apple.Maps", "NavigationSimulationPrompt");

  _objc_release_x1();
}

id MAPSGetNavIndicatorsLog()
{
  if (qword_110A0 != -1)
  {
    sub_6D80();
  }

  v1 = qword_11098;

  return v1;
}

void sub_3654(id a1)
{
  qword_11098 = os_log_create("com.apple.Maps", "NavIndicators");

  _objc_release_x1();
}

id MAPSGetProactiveTrayLog()
{
  if (qword_110B0 != -1)
  {
    sub_6D94();
  }

  v1 = qword_110A8;

  return v1;
}

void sub_36DC(id a1)
{
  qword_110A8 = os_log_create("com.apple.Maps", "ProactiveTray");

  _objc_release_x1();
}

id MAPSGetRAPPresenterLog()
{
  if (qword_110C0 != -1)
  {
    sub_6DA8();
  }

  v1 = qword_110B8;

  return v1;
}

void sub_3764(id a1)
{
  qword_110B8 = os_log_create("com.apple.Maps", "RAPPresenter");

  _objc_release_x1();
}

id MAPSGetRoutePlanningOutlineLog()
{
  if (qword_110D0 != -1)
  {
    sub_6DBC();
  }

  v1 = qword_110C8;

  return v1;
}

void sub_37EC(id a1)
{
  qword_110C8 = os_log_create("com.apple.Maps", "RoutePlanningOutline");

  _objc_release_x1();
}

id MAPSGetStatusIndicatorLog()
{
  if (qword_110E0 != -1)
  {
    sub_6DD0();
  }

  v1 = qword_110D8;

  return v1;
}

void sub_3874(id a1)
{
  qword_110D8 = os_log_create("com.apple.Maps", "StatusIndicator");

  _objc_release_x1();
}

id MAPSGetTransitNavigationLog()
{
  if (qword_110F0 != -1)
  {
    sub_6DE4();
  }

  v1 = qword_110E8;

  return v1;
}

void sub_38FC(id a1)
{
  qword_110E8 = os_log_create("com.apple.Maps", "TransitNavigation");

  _objc_release_x1();
}

id MAPSGetTurnAlertsLog()
{
  if (qword_11100 != -1)
  {
    sub_6DF8();
  }

  v1 = qword_110F8;

  return v1;
}

void sub_3984(id a1)
{
  qword_110F8 = os_log_create("com.apple.Maps", "TurnAlerts");

  _objc_release_x1();
}

id MAPSGetUGCCallToActionViewProviderLog()
{
  if (qword_11110 != -1)
  {
    sub_6E0C();
  }

  v1 = qword_11108;

  return v1;
}

void sub_3A0C(id a1)
{
  qword_11108 = os_log_create("com.apple.Maps", "UGCCallToActionViewProvider");

  _objc_release_x1();
}

id MAPSGetUGCPhotoDownloadManagerLog()
{
  if (qword_11120 != -1)
  {
    sub_6E20();
  }

  v1 = qword_11118;

  return v1;
}

void sub_3A94(id a1)
{
  qword_11118 = os_log_create("com.apple.Maps", "UGCPhotoDownloadManager");

  _objc_release_x1();
}

id MAPSGetUGCReviewedPlacesManagerLog()
{
  if (qword_11130 != -1)
  {
    sub_6E34();
  }

  v1 = qword_11128;

  return v1;
}

void sub_3B1C(id a1)
{
  qword_11128 = os_log_create("com.apple.Maps", "UGCReviewedPlacesManager");

  _objc_release_x1();
}

id MAPSGetUGCPhotoViewerDataProviderLog()
{
  if (qword_11140 != -1)
  {
    sub_6E48();
  }

  v1 = qword_11138;

  return v1;
}

void sub_3BA4(id a1)
{
  qword_11138 = os_log_create("com.apple.Maps", "UGCPhotoViewerDataProvider");

  _objc_release_x1();
}

id MAPSGetCarBlurViewLog()
{
  if (qword_11150 != -1)
  {
    sub_6E5C();
  }

  v1 = qword_11148;

  return v1;
}

void sub_3C2C(id a1)
{
  qword_11148 = os_log_create("com.apple.Maps", "CarBlurView");

  _objc_release_x1();
}

id MAPSGetCarCardsLog()
{
  if (qword_11160 != -1)
  {
    sub_6E70();
  }

  v1 = qword_11158;

  return v1;
}

void sub_3CB4(id a1)
{
  qword_11158 = os_log_create("com.apple.Maps", "CarCards");

  _objc_release_x1();
}

id MAPSGetCarClusterSuggestionLog()
{
  if (qword_11170 != -1)
  {
    sub_6E84();
  }

  v1 = qword_11168;

  return v1;
}

void sub_3D3C(id a1)
{
  qword_11168 = os_log_create("com.apple.Maps", "CarClusterSuggestion");

  _objc_release_x1();
}

id MAPSGetCarCompressionLog()
{
  if (qword_11180 != -1)
  {
    sub_6E98();
  }

  v1 = qword_11178;

  return v1;
}

void sub_3DC4(id a1)
{
  qword_11178 = os_log_create("com.apple.Maps", "CarCompression");

  _objc_release_x1();
}

id MAPSGetCarFocusLog()
{
  if (qword_11190 != -1)
  {
    sub_6EAC();
  }

  v1 = qword_11188;

  return v1;
}

void sub_3E4C(id a1)
{
  qword_11188 = os_log_create("com.apple.Maps", "CarFocus");

  _objc_release_x1();
}

id MAPSGetCarInstrumentClusterLog()
{
  if (qword_111A0 != -1)
  {
    sub_6EC0();
  }

  v1 = qword_11198;

  return v1;
}

void sub_3ED4(id a1)
{
  qword_11198 = os_log_create("com.apple.Maps", "CarInstrumentCluster");

  _objc_release_x1();
}

id MAPSGetCarGuidanceLog()
{
  if (qword_111B0 != -1)
  {
    sub_6ED4();
  }

  v1 = qword_111A8;

  return v1;
}

void sub_3F5C(id a1)
{
  qword_111A8 = os_log_create("com.apple.Maps", "CarGuidance");

  _objc_release_x1();
}

id MAPSGetCarMapWidgetLog()
{
  if (qword_111C0 != -1)
  {
    sub_6EE8();
  }

  v1 = qword_111B8;

  return v1;
}

void sub_3FE4(id a1)
{
  qword_111B8 = os_log_create("com.apple.Maps", "CarMapWidget");

  _objc_release_x1();
}

id MAPSGetCarPlayLog()
{
  if (qword_111D0 != -1)
  {
    sub_6EFC();
  }

  v1 = qword_111C8;

  return v1;
}

void sub_406C(id a1)
{
  qword_111C8 = os_log_create("com.apple.Maps", "CarPlay");

  _objc_release_x1();
}

id MAPSGetCarRouteGeniusLog()
{
  if (qword_111E0 != -1)
  {
    sub_6F10();
  }

  v1 = qword_111D8;

  return v1;
}

void sub_40F4(id a1)
{
  qword_111D8 = os_log_create("com.apple.Maps", "CarRouteGenius");

  _objc_release_x1();
}

id MAPSGetCarSessionControllerLog()
{
  if (qword_111F0 != -1)
  {
    sub_6F24();
  }

  v1 = qword_111E8;

  return v1;
}

void sub_417C(id a1)
{
  qword_111E8 = os_log_create("com.apple.Maps", "CarSessionController");

  _objc_release_x1();
}

id MAPSGetCarSmallWidgetLog()
{
  if (qword_11200 != -1)
  {
    sub_6F38();
  }

  v1 = qword_111F8;

  return v1;
}

void sub_4204(id a1)
{
  qword_111F8 = os_log_create("com.apple.Maps", "CarSmallWidget");

  _objc_release_x1();
}

id MAPSGetCompanionControllerLog()
{
  if (qword_11210 != -1)
  {
    sub_6F4C();
  }

  v1 = qword_11208;

  return v1;
}

void sub_428C(id a1)
{
  qword_11208 = os_log_create("com.apple.Maps", "CompanionController");

  _objc_release_x1();
}

id MAPSGetHydrateGeoMapItemLog()
{
  if (qword_11220 != -1)
  {
    sub_6F60();
  }

  v1 = qword_11218;

  return v1;
}

void sub_4314(id a1)
{
  qword_11218 = os_log_create("com.apple.Maps", "HydrateGeoMapItem");

  _objc_release_x1();
}

id MAPSGetIdleTimerLog()
{
  if (qword_11230 != -1)
  {
    sub_6F74();
  }

  v1 = qword_11228;

  return v1;
}

void sub_439C(id a1)
{
  qword_11228 = os_log_create("com.apple.Maps", "IdleTimer");

  _objc_release_x1();
}

id MAPSGetPedestrianARLog()
{
  if (qword_11240 != -1)
  {
    sub_6F88();
  }

  v1 = qword_11238;

  return v1;
}

void sub_4424(id a1)
{
  qword_11238 = os_log_create("com.apple.Maps", "PedestrianAR");

  _objc_release_x1();
}

id MAPSGetPuckTrackingLog()
{
  if (qword_11250 != -1)
  {
    sub_6F9C();
  }

  v1 = qword_11248;

  return v1;
}

void sub_44AC(id a1)
{
  qword_11248 = os_log_create("com.apple.Maps", "PuckTracking");

  _objc_release_x1();
}

id sub_47FC()
{
  if (qword_11260 != -1)
  {
    sub_6FB0();
  }

  v1 = qword_11258;

  return v1;
}

void sub_4840(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_47FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"actively sharing";
    if (!v5)
    {
      v8 = @"not sharing";
    }

    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "- Fetched active sharing: %{public}@", &v9, 0xCu);
  }

  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_4948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_47FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v5 count];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "- Fetched %lu Favorites", &v8, 0xCu);
  }

  [*(a1 + 32) addObjectsFromArray:v5];
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_50FC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = sub_47FC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "- Stopping active trip sharing with participant", buf, 2u);
  }

  v11 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5220;
  v14[3] = &unk_CE48;
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  [v9 _ds_stopSharingWithParticipant:v11 completion:v14];
}

void sub_5220(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_5264(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v19 = a3;
  v18 = a4;
  v10 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = sub_47FC();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "- Removing participant from Favorite (if exists)", buf, 2u);
        }

        [v15 _ds_stopSharingWithParticipant:*(a1 + 32)];
      }

      v12 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v20 = 0;
  [v19 saveWithObjects:v9 error:&v20];
  v17 = v20;
  if (v17)
  {
    [v18 addObject:v17];
  }

  dispatch_group_leave(v10);
}

void sub_542C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_47FC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Sharing stopped with specified participant", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_5630(id a1, MSPSharedTripService *a2, NSMutableArray *a3, OS_dispatch_group *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a2;
  v9 = sub_47FC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "- Stopping all active trip sharing", buf, 2u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_5740;
  v12[3] = &unk_CE48;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(MSPSharedTripService *)v8 _ds_stopSharingWithCompletion:v12];
}

void sub_5740(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_5784(id a1, NSArray *a2, _TtC8MapsSync13MapsSyncStore *a3, NSMutableArray *a4, OS_dispatch_group *a5)
{
  v8 = a2;
  v28 = a3;
  v27 = a4;
  group = a5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    v12 = &dword_0;
    v29 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        v15 = sub_47FC();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = v14;
          if (v16)
          {
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_12;
            }

            v19 = v12;
            v20 = v8;
            v21 = [v16 performSelector:"accessibilityIdentifier"];
            v22 = v21;
            if (v21 && ![v21 isEqualToString:v18])
            {
              v23 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v22];

              v8 = v20;
              v12 = v19;
              v11 = v29;
            }

            else
            {

              v8 = v20;
              v12 = v19;
              v11 = v29;
LABEL_12:
              v23 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
            }
          }

          else
          {
            v23 = @"<nil>";
          }

          *buf = 138543362;
          v36 = v23;
          _os_log_impl(v12, v15, OS_LOG_TYPE_INFO, "- Removing all sharing from Favorite %{public}@", buf, 0xCu);
        }

        [v14 _ds_stopSharing];
        v13 = v13 + 1;
      }

      while (v10 != v13);
      v24 = [(NSArray *)v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
      v10 = v24;
    }

    while (v24);
  }

  v30 = 0;
  [(_TtC8MapsSync13MapsSyncStore *)v28 saveWithObjects:v8 error:&v30];
  v25 = v30;
  if (v25)
  {
    [(NSMutableArray *)v27 addObject:v25];
  }

  dispatch_group_leave(group);
}

void sub_5A4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_47FC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "All sharing stopped", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_5C14(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = sub_47FC();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Cannot load favorites: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Sync store is ready, will now fetch Favorites...", buf, 2u);
    }

    objc_storeStrong((*(a1 + 32) + 8), a2);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_5DC4;
    v12[3] = &unk_CF68;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = 0;
    v14 = v11;
    [v10 _fetchFavoritesWithStore:v6 withCompletion:v12];
  }
}

uint64_t sub_5DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    a3 = *(a1 + 32);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), a2, a3);
}

void sub_5EDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = sub_47FC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543362;
      v18 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Error getting trip service: %{public}@", &v17, 0xCu);
    }

    v9 = [*(a1 + 32) _shouldReportSharedTripServiceError:v7];
    v10 = sub_47FC();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Will report error, active sharing status cannot be determined", &v17, 2u);
      }
    }

    else
    {
      if (v11)
      {
        v16 = [v7 code];
        v17 = 134217984;
        v18 = v16;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Will not report error, sharing is unlikely to be active based on error code %ld", &v17, 0xCu);
      }

      v10 = v7;
      v7 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = [v5 receivers];
    v13 = [v12 count];

    v14 = sub_47FC();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v15)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Trip-sharing is active, will add service as resource", &v17, 2u);
      }
    }

    else if (v15)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Trip-sharing is not active", &v17, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_62B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_47FC();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v6;
      v9 = "Error fetching Favorites from sync: %{public}@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_0, v10, v11, v9, &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = [v5 count];
    v9 = "Fetched %lu Favorites from sync";
    v10 = v8;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
}

void sub_6604(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v9)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_6690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) addObject:?];
    v4 = *(a1 + 40);

    dispatch_group_leave(v4);
  }

  else
  {
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(v6 + 8);
    v8 = *(*(a1 + 56) + 16);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);

    v8();
  }
}

void sub_6700(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  if ([*(a1 + 32) count] >= 2)
  {
    v3 = DSSourceNameMaps;
    v7 = NSMultipleUnderlyingErrorsKey;
    v4 = [*(a1 + 32) copy];
    v8 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [NSError errorWithDomain:v3 code:0 userInfo:v5];

    v2 = v6;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_6828(id a1)
{
  qword_11258 = os_log_create("com.apple.Maps", "DigitalSeparation");

  _objc_release_x1();
}