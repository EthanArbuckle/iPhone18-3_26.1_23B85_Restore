id MAPSGetCameraLog()
{
  if (qword_C570 != -1)
  {
    sub_5584();
  }

  v1 = qword_C568;

  return v1;
}

void sub_1D6C(id a1)
{
  qword_C568 = os_log_create("com.apple.Maps", "Camera");

  _objc_release_x1();
}

id MAPSGetCollectionsLog()
{
  if (qword_C580 != -1)
  {
    sub_5598();
  }

  v1 = qword_C578;

  return v1;
}

void sub_1DF4(id a1)
{
  qword_C578 = os_log_create("com.apple.Maps", "Collections");

  _objc_release_x1();
}

id MAPSGetContainerVCLog()
{
  if (qword_C590 != -1)
  {
    sub_55AC();
  }

  v1 = qword_C588;

  return v1;
}

void sub_1E7C(id a1)
{
  qword_C588 = os_log_create("com.apple.Maps", "ContainerVC");

  _objc_release_x1();
}

id MAPSGetCuratedCollectionsLog()
{
  if (qword_C5A0 != -1)
  {
    sub_55C0();
  }

  v1 = qword_C598;

  return v1;
}

void sub_1F04(id a1)
{
  qword_C598 = os_log_create("com.apple.Maps", "CuratedCollections");

  _objc_release_x1();
}

id MAPSGetEVOnboardingLog()
{
  if (qword_C5B0 != -1)
  {
    sub_55D4();
  }

  v1 = qword_C5A8;

  return v1;
}

void sub_1F8C(id a1)
{
  qword_C5A8 = os_log_create("com.apple.Maps", "EVOnboarding");

  _objc_release_x1();
}

id MAPSGetLightLevelProvidingLog()
{
  if (qword_C5C0 != -1)
  {
    sub_55E8();
  }

  v1 = qword_C5B8;

  return v1;
}

void sub_2014(id a1)
{
  qword_C5B8 = os_log_create("com.apple.Maps", "LightLevelProviding");

  _objc_release_x1();
}

id MAPSGetMapModeLog()
{
  if (qword_C5D0 != -1)
  {
    sub_55FC();
  }

  v1 = qword_C5C8;

  return v1;
}

void sub_209C(id a1)
{
  qword_C5C8 = os_log_create("com.apple.Maps", "MapMode");

  _objc_release_x1();
}

id MAPSGetMapsActivityLog()
{
  if (qword_C5E0 != -1)
  {
    sub_5610();
  }

  v1 = qword_C5D8;

  return v1;
}

void sub_2124(id a1)
{
  qword_C5D8 = os_log_create("com.apple.Maps", "MapsActivity");

  _objc_release_x1();
}

id MAPSGetMapsAssertLog()
{
  if (qword_C5F0 != -1)
  {
    sub_5624();
  }

  v1 = qword_C5E8;

  return v1;
}

void sub_21AC(id a1)
{
  qword_C5E8 = os_log_create("com.apple.Maps", "MapsAssert");

  _objc_release_x1();
}

id MAPSGetMapsChromeLog()
{
  if (qword_C600 != -1)
  {
    sub_5638();
  }

  v1 = qword_C5F8;

  return v1;
}

void sub_2234(id a1)
{
  qword_C5F8 = os_log_create("com.apple.Maps", "MapsChrome");

  _objc_release_x1();
}

id MAPSGetMapsDefaultLog()
{
  if (qword_C610 != -1)
  {
    sub_564C();
  }

  v1 = qword_C608;

  return v1;
}

void sub_22BC(id a1)
{
  qword_C608 = os_log_create("com.apple.Maps", "MapsDefault");

  _objc_release_x1();
}

id MAPSGetMapsLaunchLog()
{
  if (qword_C620 != -1)
  {
    sub_5660();
  }

  v1 = qword_C618;

  return v1;
}

void sub_2344(id a1)
{
  qword_C618 = os_log_create("com.apple.Maps", "MapsLaunch");

  _objc_release_x1();
}

id MAPSGetMapsNotificationsLog()
{
  if (qword_C630 != -1)
  {
    sub_5674();
  }

  v1 = qword_C628;

  return v1;
}

void sub_23CC(id a1)
{
  qword_C628 = os_log_create("com.apple.Maps", "MapsNotifications");

  _objc_release_x1();
}

id MAPSGetMapsPerformanceLog()
{
  if (qword_C640 != -1)
  {
    sub_5688();
  }

  v1 = qword_C638;

  return v1;
}

void sub_2454(id a1)
{
  qword_C638 = os_log_create("com.apple.Maps", "MapsPerformance");

  _objc_release_x1();
}

id MAPSGetLookAroundLog()
{
  if (qword_C650 != -1)
  {
    sub_569C();
  }

  v1 = qword_C648;

  return v1;
}

void sub_24DC(id a1)
{
  qword_C648 = os_log_create("com.apple.Maps", "LookAround");

  _objc_release_x1();
}

id MAPSGetNavigationLog()
{
  if (qword_C660 != -1)
  {
    sub_56B0();
  }

  v1 = qword_C658;

  return v1;
}

void sub_2564(id a1)
{
  qword_C658 = os_log_create("com.apple.Maps", "Navigation");

  _objc_release_x1();
}

id MAPSGetNavigationBannersLog()
{
  if (qword_C670 != -1)
  {
    sub_56C4();
  }

  v1 = qword_C668;

  return v1;
}

void sub_25EC(id a1)
{
  qword_C668 = os_log_create("com.apple.Maps", "NavigationBanners");

  _objc_release_x1();
}

id MAPSGetNearbyTransitLog()
{
  if (qword_C680 != -1)
  {
    sub_56D8();
  }

  v1 = qword_C678;

  return v1;
}

void sub_2674(id a1)
{
  qword_C678 = os_log_create("com.apple.Maps", "NearbyTransit");

  _objc_release_x1();
}

id MAPSGetOfflineLog()
{
  if (qword_C690 != -1)
  {
    sub_56EC();
  }

  v1 = qword_C688;

  return v1;
}

void sub_26FC(id a1)
{
  qword_C688 = os_log_create("com.apple.Maps", "Offline");

  _objc_release_x1();
}

id MAPSGetPlaceCardLog()
{
  if (qword_C6A0 != -1)
  {
    sub_5700();
  }

  v1 = qword_C698;

  return v1;
}

void sub_2784(id a1)
{
  qword_C698 = os_log_create("com.apple.Maps", "PlaceCard");

  _objc_release_x1();
}

id MAPSGetPPTLog()
{
  if (qword_C6B0 != -1)
  {
    sub_5714();
  }

  v1 = qword_C6A8;

  return v1;
}

void sub_280C(id a1)
{
  qword_C6A8 = os_log_create("com.apple.Maps", "PPT");

  _objc_release_x1();
}

id MAPSGetPreferencesSyncLog()
{
  if (qword_C6C0 != -1)
  {
    sub_5728();
  }

  v1 = qword_C6B8;

  return v1;
}

void sub_2894(id a1)
{
  qword_C6B8 = os_log_create("com.apple.Maps", "PreferencesSync");

  _objc_release_x1();
}

id MAPSGetPrintLog()
{
  if (qword_C6D0 != -1)
  {
    sub_573C();
  }

  v1 = qword_C6C8;

  return v1;
}

void sub_291C(id a1)
{
  qword_C6C8 = os_log_create("com.apple.Maps", "Print");

  _objc_release_x1();
}

id MAPSGetRAPLayoutLog()
{
  if (qword_C6E0 != -1)
  {
    sub_5750();
  }

  v1 = qword_C6D8;

  return v1;
}

void sub_29A4(id a1)
{
  qword_C6D8 = os_log_create("com.apple.Maps", "RAPLayout");

  _objc_release_x1();
}

id MAPSGetRAPNavigationLog()
{
  if (qword_C6F0 != -1)
  {
    sub_5764();
  }

  v1 = qword_C6E8;

  return v1;
}

void sub_2A2C(id a1)
{
  qword_C6E8 = os_log_create("com.apple.Maps", "RAPNavigation");

  _objc_release_x1();
}

id MAPSGetRAPSubmissionLog()
{
  if (qword_C700 != -1)
  {
    sub_5778();
  }

  v1 = qword_C6F8;

  return v1;
}

void sub_2AB4(id a1)
{
  qword_C6F8 = os_log_create("com.apple.Maps", "RAPSubmission");

  _objc_release_x1();
}

id MAPSGetRecentsLog()
{
  if (qword_C710 != -1)
  {
    sub_578C();
  }

  v1 = qword_C708;

  return v1;
}

void sub_2B3C(id a1)
{
  qword_C708 = os_log_create("com.apple.Maps", "Recents");

  _objc_release_x1();
}

id MAPSGetRouteCreationLog()
{
  if (qword_C720 != -1)
  {
    sub_57A0();
  }

  v1 = qword_C718;

  return v1;
}

void sub_2BC4(id a1)
{
  qword_C718 = os_log_create("com.apple.Maps", "RouteCreation");

  _objc_release_x1();
}

id MAPSGetRoutePlanningLog()
{
  if (qword_C730 != -1)
  {
    sub_57B4();
  }

  v1 = qword_C728;

  return v1;
}

void sub_2C4C(id a1)
{
  qword_C728 = os_log_create("com.apple.Maps", "RoutePlanning");

  _objc_release_x1();
}

id MAPSGetRoutePlanningFeatureDiscoveryLog()
{
  if (qword_C740 != -1)
  {
    sub_57C8();
  }

  v1 = qword_C738;

  return v1;
}

void sub_2CD4(id a1)
{
  qword_C738 = os_log_create("com.apple.Maps", "RoutePlanningFeatureDiscovery");

  _objc_release_x1();
}

id MAPSGetSearchACLog()
{
  if (qword_C750 != -1)
  {
    sub_57DC();
  }

  v1 = qword_C748;

  return v1;
}

void sub_2D5C(id a1)
{
  qword_C748 = os_log_create("com.apple.Maps", "SearchAC");

  _objc_release_x1();
}

id MAPSGetSearchACFindMyLog()
{
  if (qword_C760 != -1)
  {
    sub_57F0();
  }

  v1 = qword_C758;

  return v1;
}

void sub_2DE4(id a1)
{
  qword_C758 = os_log_create("com.apple.Maps", "SearchACFindMy");

  _objc_release_x1();
}

id MAPSGetSearchHomeLog()
{
  if (qword_C770 != -1)
  {
    sub_5804();
  }

  v1 = qword_C768;

  return v1;
}

void sub_2E6C(id a1)
{
  qword_C768 = os_log_create("com.apple.Maps", "SearchHome");

  _objc_release_x1();
}

id MAPSGetSharedTripLog()
{
  if (qword_C780 != -1)
  {
    sub_5818();
  }

  v1 = qword_C778;

  return v1;
}

void sub_2EF4(id a1)
{
  qword_C778 = os_log_create("com.apple.Maps", "SharedTrip");

  _objc_release_x1();
}

id MAPSGetSharingLog()
{
  if (qword_C790 != -1)
  {
    sub_582C();
  }

  v1 = qword_C788;

  return v1;
}

void sub_2F7C(id a1)
{
  qword_C788 = os_log_create("com.apple.Maps", "Sharing");

  _objc_release_x1();
}

id MAPSGetShortcutsLog()
{
  if (qword_C7A0 != -1)
  {
    sub_5840();
  }

  v1 = qword_C798;

  return v1;
}

void sub_3004(id a1)
{
  qword_C798 = os_log_create("com.apple.Maps", "Shortcuts");

  _objc_release_x1();
}

id MAPSGetTileStateCaptureLog()
{
  if (qword_C7B0 != -1)
  {
    sub_5854();
  }

  v1 = qword_C7A8;

  return v1;
}

void sub_308C(id a1)
{
  qword_C7A8 = os_log_create("com.apple.Maps", "TileStateCapture");

  _objc_release_x1();
}

id MAPSGetTransitLog()
{
  if (qword_C7C0 != -1)
  {
    sub_5868();
  }

  v1 = qword_C7B8;

  return v1;
}

void sub_3114(id a1)
{
  qword_C7B8 = os_log_create("com.apple.Maps", "Transit");

  _objc_release_x1();
}

id MAPSGetTransitPayLog()
{
  if (qword_C7D0 != -1)
  {
    sub_587C();
  }

  v1 = qword_C7C8;

  return v1;
}

void sub_319C(id a1)
{
  qword_C7C8 = os_log_create("com.apple.Maps", "TransitPay");

  _objc_release_x1();
}

id MAPSGetTransitSchedulesLog()
{
  if (qword_C7E0 != -1)
  {
    sub_5890();
  }

  v1 = qword_C7D8;

  return v1;
}

void sub_3224(id a1)
{
  qword_C7D8 = os_log_create("com.apple.Maps", "TransitSchedules");

  _objc_release_x1();
}

id MAPSGetUserProfileLog()
{
  if (qword_C7F0 != -1)
  {
    sub_58A4();
  }

  v1 = qword_C7E8;

  return v1;
}

void sub_32AC(id a1)
{
  qword_C7E8 = os_log_create("com.apple.Maps", "UserProfile");

  _objc_release_x1();
}

id MAPSGetVehicleDisambiguatorLog()
{
  if (qword_C800 != -1)
  {
    sub_58B8();
  }

  v1 = qword_C7F8;

  return v1;
}

void sub_3334(id a1)
{
  qword_C7F8 = os_log_create("com.apple.Maps", "VehicleDisambiguator");

  _objc_release_x1();
}

id MAPSGetVirtualGarageLog()
{
  if (qword_C810 != -1)
  {
    sub_58CC();
  }

  v1 = qword_C808;

  return v1;
}

void sub_33BC(id a1)
{
  qword_C808 = os_log_create("com.apple.Maps", "VirtualGarage");

  _objc_release_x1();
}

id MAPSGetWeatherLog()
{
  if (qword_C820 != -1)
  {
    sub_58E0();
  }

  v1 = qword_C818;

  return v1;
}

void sub_3444(id a1)
{
  qword_C818 = os_log_create("com.apple.Maps", "Weather");

  _objc_release_x1();
}

id MAPSGetXPCLog()
{
  if (qword_C830 != -1)
  {
    sub_58F4();
  }

  v1 = qword_C828;

  return v1;
}

void sub_34CC(id a1)
{
  qword_C828 = os_log_create("com.apple.Maps", "XPC");

  _objc_release_x1();
}

id MAPSGetUGCBAAUtilitiesLog()
{
  if (qword_C840 != -1)
  {
    sub_5908();
  }

  v1 = qword_C838;

  return v1;
}

void sub_3554(id a1)
{
  qword_C838 = os_log_create("com.apple.Maps", "UGCBAAUtilities");

  _objc_release_x1();
}

id MAPSGetIncidentsReportingLog()
{
  if (qword_C850 != -1)
  {
    sub_591C();
  }

  v1 = qword_C848;

  return v1;
}

void sub_35DC(id a1)
{
  qword_C848 = os_log_create("com.apple.Maps", "IncidentsReporting");

  _objc_release_x1();
}

id MAPSGetWatermarkingLog()
{
  if (qword_C860 != -1)
  {
    sub_5930();
  }

  v1 = qword_C858;

  return v1;
}

void sub_3664(id a1)
{
  qword_C858 = os_log_create("com.apple.Maps", "Watermarking");

  _objc_release_x1();
}

id MAPSGetWaypointRequestLog()
{
  if (qword_C870 != -1)
  {
    sub_5944();
  }

  v1 = qword_C868;

  return v1;
}

void sub_36EC(id a1)
{
  qword_C868 = os_log_create("com.apple.Maps", "WaypointRequest");

  _objc_release_x1();
}

id MAPSGetWebBundleLog()
{
  if (qword_C880 != -1)
  {
    sub_5958();
  }

  v1 = qword_C878;

  return v1;
}

void sub_3774(id a1)
{
  qword_C878 = os_log_create("com.apple.Maps", "WebBundle");

  _objc_release_x1();
}

id MAPSGetRAPRecordsManagerLog()
{
  if (qword_C890 != -1)
  {
    sub_596C();
  }

  v1 = qword_C888;

  return v1;
}

void sub_37FC(id a1)
{
  qword_C888 = os_log_create("com.apple.Maps", "RAPRecordsManager");

  _objc_release_x1();
}

id MAPSGetUGCPhotoAttributionLog()
{
  if (qword_C8A0 != -1)
  {
    sub_5980();
  }

  v1 = qword_C898;

  return v1;
}

void sub_3884(id a1)
{
  qword_C898 = os_log_create("com.apple.Maps", "UGCPhotoAttribution");

  _objc_release_x1();
}

id MAPSGetSearchResultsImpressionsLog()
{
  if (qword_C8B0 != -1)
  {
    sub_5994();
  }

  v1 = qword_C8A8;

  return v1;
}

void sub_390C(id a1)
{
  qword_C8A8 = os_log_create("com.apple.Maps", "SearchResultsImpressions");

  _objc_release_x1();
}

id MAPSGetSearchRedoLog()
{
  if (qword_C8C0 != -1)
  {
    sub_59A8();
  }

  v1 = qword_C8B8;

  return v1;
}

void sub_3994(id a1)
{
  qword_C8B8 = os_log_create("com.apple.Maps", "SearchRedo");

  _objc_release_x1();
}

id MAPSGetStaleTimeBug_105865770Log()
{
  if (qword_C8D0 != -1)
  {
    sub_59BC();
  }

  v1 = qword_C8C8;

  return v1;
}

void sub_3A1C(id a1)
{
  qword_C8C8 = os_log_create("com.apple.Maps", "StaleTimeBug_105865770");

  _objc_release_x1();
}

id MAPSGetCustomPOIsControllerLog()
{
  if (qword_C8E0 != -1)
  {
    sub_59D0();
  }

  v1 = qword_C8D8;

  return v1;
}

void sub_3AA4(id a1)
{
  qword_C8D8 = os_log_create("com.apple.Maps", "CustomPOIsController");

  _objc_release_x1();
}

id MAPSGetPOSIXSignalsLog()
{
  if (qword_C8F0 != -1)
  {
    sub_59E4();
  }

  v1 = qword_C8E8;

  return v1;
}

void sub_3B2C(id a1)
{
  qword_C8E8 = os_log_create("com.apple.Maps", "POSIXSignals");

  _objc_release_x1();
}

id MAPSGetCoalescingSchedulerLog()
{
  if (qword_C900 != -1)
  {
    sub_59F8();
  }

  v1 = qword_C8F8;

  return v1;
}

void sub_3BB4(id a1)
{
  qword_C8F8 = os_log_create("com.apple.Maps", "CoalescingScheduler");

  _objc_release_x1();
}

id MAPSGetDeviceConnectionLog()
{
  if (qword_C910 != -1)
  {
    sub_5A0C();
  }

  v1 = qword_C908;

  return v1;
}

void sub_3C3C(id a1)
{
  qword_C908 = os_log_create("com.apple.Maps", "DeviceConnection");

  _objc_release_x1();
}

id MAPSGetDictationLog()
{
  if (qword_C920 != -1)
  {
    sub_5A20();
  }

  v1 = qword_C918;

  return v1;
}

void sub_3CC4(id a1)
{
  qword_C918 = os_log_create("com.apple.Maps", "Dictation");

  _objc_release_x1();
}

id MAPSGetElevationGraphLog()
{
  if (qword_C930 != -1)
  {
    sub_5A34();
  }

  v1 = qword_C928;

  return v1;
}

void sub_3D4C(id a1)
{
  qword_C928 = os_log_create("com.apple.Maps", "ElevationGraph");

  _objc_release_x1();
}

id MAPSGetIncidentReportingLog()
{
  if (qword_C940 != -1)
  {
    sub_5A48();
  }

  v1 = qword_C938;

  return v1;
}

void sub_3DD4(id a1)
{
  qword_C938 = os_log_create("com.apple.Maps", "IncidentReporting");

  _objc_release_x1();
}

id MAPSGetLightLevelLog()
{
  if (qword_C950 != -1)
  {
    sub_5A5C();
  }

  v1 = qword_C948;

  return v1;
}

void sub_3E5C(id a1)
{
  qword_C948 = os_log_create("com.apple.Maps", "LightLevel");

  _objc_release_x1();
}

id MAPSGetMapRegionLog()
{
  if (qword_C960 != -1)
  {
    sub_5A70();
  }

  v1 = qword_C958;

  return v1;
}

void sub_3EE4(id a1)
{
  qword_C958 = os_log_create("com.apple.Maps", "MapRegion");

  _objc_release_x1();
}

id MAPSGetNavigationSimulationPromptLog()
{
  if (qword_C970 != -1)
  {
    sub_5A84();
  }

  v1 = qword_C968;

  return v1;
}

void sub_3F6C(id a1)
{
  qword_C968 = os_log_create("com.apple.Maps", "NavigationSimulationPrompt");

  _objc_release_x1();
}

id MAPSGetNavIndicatorsLog()
{
  if (qword_C980 != -1)
  {
    sub_5A98();
  }

  v1 = qword_C978;

  return v1;
}

void sub_3FF4(id a1)
{
  qword_C978 = os_log_create("com.apple.Maps", "NavIndicators");

  _objc_release_x1();
}

id MAPSGetProactiveTrayLog()
{
  if (qword_C990 != -1)
  {
    sub_5AAC();
  }

  v1 = qword_C988;

  return v1;
}

void sub_407C(id a1)
{
  qword_C988 = os_log_create("com.apple.Maps", "ProactiveTray");

  _objc_release_x1();
}

id MAPSGetRAPPresenterLog()
{
  if (qword_C9A0 != -1)
  {
    sub_5AC0();
  }

  v1 = qword_C998;

  return v1;
}

void sub_4104(id a1)
{
  qword_C998 = os_log_create("com.apple.Maps", "RAPPresenter");

  _objc_release_x1();
}

id MAPSGetRoutePlanningOutlineLog()
{
  if (qword_C9B0 != -1)
  {
    sub_5AD4();
  }

  v1 = qword_C9A8;

  return v1;
}

void sub_418C(id a1)
{
  qword_C9A8 = os_log_create("com.apple.Maps", "RoutePlanningOutline");

  _objc_release_x1();
}

id MAPSGetStatusIndicatorLog()
{
  if (qword_C9C0 != -1)
  {
    sub_5AE8();
  }

  v1 = qword_C9B8;

  return v1;
}

void sub_4214(id a1)
{
  qword_C9B8 = os_log_create("com.apple.Maps", "StatusIndicator");

  _objc_release_x1();
}

id MAPSGetTransitNavigationLog()
{
  if (qword_C9D0 != -1)
  {
    sub_5AFC();
  }

  v1 = qword_C9C8;

  return v1;
}

void sub_429C(id a1)
{
  qword_C9C8 = os_log_create("com.apple.Maps", "TransitNavigation");

  _objc_release_x1();
}

id MAPSGetTurnAlertsLog()
{
  if (qword_C9E0 != -1)
  {
    sub_5B10();
  }

  v1 = qword_C9D8;

  return v1;
}

void sub_4324(id a1)
{
  qword_C9D8 = os_log_create("com.apple.Maps", "TurnAlerts");

  _objc_release_x1();
}

id MAPSGetUGCCallToActionViewProviderLog()
{
  if (qword_C9F0 != -1)
  {
    sub_5B24();
  }

  v1 = qword_C9E8;

  return v1;
}

void sub_43AC(id a1)
{
  qword_C9E8 = os_log_create("com.apple.Maps", "UGCCallToActionViewProvider");

  _objc_release_x1();
}

id MAPSGetUGCPhotoDownloadManagerLog()
{
  if (qword_CA00 != -1)
  {
    sub_5B38();
  }

  v1 = qword_C9F8;

  return v1;
}

void sub_4434(id a1)
{
  qword_C9F8 = os_log_create("com.apple.Maps", "UGCPhotoDownloadManager");

  _objc_release_x1();
}

id MAPSGetUGCReviewedPlacesManagerLog()
{
  if (qword_CA10 != -1)
  {
    sub_5B4C();
  }

  v1 = qword_CA08;

  return v1;
}

void sub_44BC(id a1)
{
  qword_CA08 = os_log_create("com.apple.Maps", "UGCReviewedPlacesManager");

  _objc_release_x1();
}

id MAPSGetUGCPhotoViewerDataProviderLog()
{
  if (qword_CA20 != -1)
  {
    sub_5B60();
  }

  v1 = qword_CA18;

  return v1;
}

void sub_4544(id a1)
{
  qword_CA18 = os_log_create("com.apple.Maps", "UGCPhotoViewerDataProvider");

  _objc_release_x1();
}

id MAPSGetCarBlurViewLog()
{
  if (qword_CA30 != -1)
  {
    sub_5B74();
  }

  v1 = qword_CA28;

  return v1;
}

void sub_45CC(id a1)
{
  qword_CA28 = os_log_create("com.apple.Maps", "CarBlurView");

  _objc_release_x1();
}

id MAPSGetCarCardsLog()
{
  if (qword_CA40 != -1)
  {
    sub_5B88();
  }

  v1 = qword_CA38;

  return v1;
}

void sub_4654(id a1)
{
  qword_CA38 = os_log_create("com.apple.Maps", "CarCards");

  _objc_release_x1();
}

id MAPSGetCarClusterSuggestionLog()
{
  if (qword_CA50 != -1)
  {
    sub_5B9C();
  }

  v1 = qword_CA48;

  return v1;
}

void sub_46DC(id a1)
{
  qword_CA48 = os_log_create("com.apple.Maps", "CarClusterSuggestion");

  _objc_release_x1();
}

id MAPSGetCarCompressionLog()
{
  if (qword_CA60 != -1)
  {
    sub_5BB0();
  }

  v1 = qword_CA58;

  return v1;
}

void sub_4764(id a1)
{
  qword_CA58 = os_log_create("com.apple.Maps", "CarCompression");

  _objc_release_x1();
}

id MAPSGetCarFocusLog()
{
  if (qword_CA70 != -1)
  {
    sub_5BC4();
  }

  v1 = qword_CA68;

  return v1;
}

void sub_47EC(id a1)
{
  qword_CA68 = os_log_create("com.apple.Maps", "CarFocus");

  _objc_release_x1();
}

id MAPSGetCarInstrumentClusterLog()
{
  if (qword_CA80 != -1)
  {
    sub_5BD8();
  }

  v1 = qword_CA78;

  return v1;
}

void sub_4874(id a1)
{
  qword_CA78 = os_log_create("com.apple.Maps", "CarInstrumentCluster");

  _objc_release_x1();
}

id MAPSGetCarGuidanceLog()
{
  if (qword_CA90 != -1)
  {
    sub_5BEC();
  }

  v1 = qword_CA88;

  return v1;
}

void sub_48FC(id a1)
{
  qword_CA88 = os_log_create("com.apple.Maps", "CarGuidance");

  _objc_release_x1();
}

id MAPSGetCarMapWidgetLog()
{
  if (qword_CAA0 != -1)
  {
    sub_5C00();
  }

  v1 = qword_CA98;

  return v1;
}

void sub_4984(id a1)
{
  qword_CA98 = os_log_create("com.apple.Maps", "CarMapWidget");

  _objc_release_x1();
}

id MAPSGetCarPlayLog()
{
  if (qword_CAB0 != -1)
  {
    sub_5C14();
  }

  v1 = qword_CAA8;

  return v1;
}

void sub_4A0C(id a1)
{
  qword_CAA8 = os_log_create("com.apple.Maps", "CarPlay");

  _objc_release_x1();
}

id MAPSGetCarRouteGeniusLog()
{
  if (qword_CAC0 != -1)
  {
    sub_5C28();
  }

  v1 = qword_CAB8;

  return v1;
}

void sub_4A94(id a1)
{
  qword_CAB8 = os_log_create("com.apple.Maps", "CarRouteGenius");

  _objc_release_x1();
}

id MAPSGetCarSessionControllerLog()
{
  if (qword_CAD0 != -1)
  {
    sub_5C3C();
  }

  v1 = qword_CAC8;

  return v1;
}

void sub_4B1C(id a1)
{
  qword_CAC8 = os_log_create("com.apple.Maps", "CarSessionController");

  _objc_release_x1();
}

id MAPSGetCarSmallWidgetLog()
{
  if (qword_CAE0 != -1)
  {
    sub_5C50();
  }

  v1 = qword_CAD8;

  return v1;
}

void sub_4BA4(id a1)
{
  qword_CAD8 = os_log_create("com.apple.Maps", "CarSmallWidget");

  _objc_release_x1();
}

id MAPSGetCompanionControllerLog()
{
  if (qword_CAF0 != -1)
  {
    sub_5C64();
  }

  v1 = qword_CAE8;

  return v1;
}

void sub_4C2C(id a1)
{
  qword_CAE8 = os_log_create("com.apple.Maps", "CompanionController");

  _objc_release_x1();
}

id MAPSGetHydrateGeoMapItemLog()
{
  if (qword_CB00 != -1)
  {
    sub_5C78();
  }

  v1 = qword_CAF8;

  return v1;
}

void sub_4CB4(id a1)
{
  qword_CAF8 = os_log_create("com.apple.Maps", "HydrateGeoMapItem");

  _objc_release_x1();
}

id MAPSGetIdleTimerLog()
{
  if (qword_CB10 != -1)
  {
    sub_5C8C();
  }

  v1 = qword_CB08;

  return v1;
}

void sub_4D3C(id a1)
{
  qword_CB08 = os_log_create("com.apple.Maps", "IdleTimer");

  _objc_release_x1();
}

id MAPSGetPedestrianARLog()
{
  if (qword_CB20 != -1)
  {
    sub_5CA0();
  }

  v1 = qword_CB18;

  return v1;
}

void sub_4DC4(id a1)
{
  qword_CB18 = os_log_create("com.apple.Maps", "PedestrianAR");

  _objc_release_x1();
}

id MAPSGetPuckTrackingLog()
{
  if (qword_CB30 != -1)
  {
    sub_5CB4();
  }

  v1 = qword_CB28;

  return v1;
}

void sub_4E4C(id a1)
{
  qword_CB28 = os_log_create("com.apple.Maps", "PuckTracking");

  _objc_release_x1();
}

void sub_4F98(id a1)
{
  v1 = dispatch_queue_create("com.apple.NanoMaps.domainAccessor", 0);
  v2 = qword_CB40;
  qword_CB40 = v1;

  v3 = +[NSNotificationCenter defaultCenter];
  v4 = NRPairedDeviceRegistryDeviceDidBecomeActive;
  v5 = +[NSOperationQueue currentQueue];
  v6 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:&stru_8E50];

  v10 = +[NSNotificationCenter defaultCenter];
  v7 = NRPairedDeviceRegistryDeviceDidUnpairNotification;
  v8 = +[NSOperationQueue currentQueue];
  v9 = [v10 addObserverForName:v7 object:0 queue:v8 usingBlock:&stru_8E90];
}

void sub_50C8(id a1)
{
  v1 = qword_CB48;
  qword_CB48 = 0;
}

void sub_50EC(id a1)
{
  v1 = qword_CB48;
  qword_CB48 = 0;
}

uint64_t sub_50FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5114(uint64_t a1)
{
  v2 = qword_CB48;
  if (!qword_CB48)
  {
    v3 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.NanoMaps"];
    v4 = qword_CB48;
    qword_CB48 = v3;

    v2 = qword_CB48;
  }

  v5 = (*(*(a1 + 32) + 8) + 40);

  objc_storeStrong(v5, v2);
}