id MAPSGetCameraLog()
{
  if (qword_C308 != -1)
  {
    sub_4484();
  }

  v1 = qword_C300;

  return v1;
}

void sub_B14(id a1)
{
  qword_C300 = os_log_create("com.apple.Maps", "Camera");

  _objc_release_x1();
}

id MAPSGetCollectionsLog()
{
  if (qword_C318 != -1)
  {
    sub_4498();
  }

  v1 = qword_C310;

  return v1;
}

void sub_B9C(id a1)
{
  qword_C310 = os_log_create("com.apple.Maps", "Collections");

  _objc_release_x1();
}

id MAPSGetContainerVCLog()
{
  if (qword_C328 != -1)
  {
    sub_44AC();
  }

  v1 = qword_C320;

  return v1;
}

void sub_C24(id a1)
{
  qword_C320 = os_log_create("com.apple.Maps", "ContainerVC");

  _objc_release_x1();
}

id MAPSGetCuratedCollectionsLog()
{
  if (qword_C338 != -1)
  {
    sub_44C0();
  }

  v1 = qword_C330;

  return v1;
}

void sub_CAC(id a1)
{
  qword_C330 = os_log_create("com.apple.Maps", "CuratedCollections");

  _objc_release_x1();
}

id MAPSGetEVOnboardingLog()
{
  if (qword_C348 != -1)
  {
    sub_44D4();
  }

  v1 = qword_C340;

  return v1;
}

void sub_D34(id a1)
{
  qword_C340 = os_log_create("com.apple.Maps", "EVOnboarding");

  _objc_release_x1();
}

id MAPSGetLightLevelProvidingLog()
{
  if (qword_C358 != -1)
  {
    sub_44E8();
  }

  v1 = qword_C350;

  return v1;
}

void sub_DBC(id a1)
{
  qword_C350 = os_log_create("com.apple.Maps", "LightLevelProviding");

  _objc_release_x1();
}

id MAPSGetMapModeLog()
{
  if (qword_C368 != -1)
  {
    sub_44FC();
  }

  v1 = qword_C360;

  return v1;
}

void sub_E44(id a1)
{
  qword_C360 = os_log_create("com.apple.Maps", "MapMode");

  _objc_release_x1();
}

id MAPSGetMapsActivityLog()
{
  if (qword_C378 != -1)
  {
    sub_4510();
  }

  v1 = qword_C370;

  return v1;
}

void sub_ECC(id a1)
{
  qword_C370 = os_log_create("com.apple.Maps", "MapsActivity");

  _objc_release_x1();
}

id MAPSGetMapsAssertLog()
{
  if (qword_C388 != -1)
  {
    sub_4524();
  }

  v1 = qword_C380;

  return v1;
}

void sub_F54(id a1)
{
  qword_C380 = os_log_create("com.apple.Maps", "MapsAssert");

  _objc_release_x1();
}

id MAPSGetMapsChromeLog()
{
  if (qword_C398 != -1)
  {
    sub_4538();
  }

  v1 = qword_C390;

  return v1;
}

void sub_FDC(id a1)
{
  qword_C390 = os_log_create("com.apple.Maps", "MapsChrome");

  _objc_release_x1();
}

id MAPSGetMapsDefaultLog()
{
  if (qword_C3A8 != -1)
  {
    sub_454C();
  }

  v1 = qword_C3A0;

  return v1;
}

void sub_1064(id a1)
{
  qword_C3A0 = os_log_create("com.apple.Maps", "MapsDefault");

  _objc_release_x1();
}

id MAPSGetMapsLaunchLog()
{
  if (qword_C3B8 != -1)
  {
    sub_4560();
  }

  v1 = qword_C3B0;

  return v1;
}

void sub_10EC(id a1)
{
  qword_C3B0 = os_log_create("com.apple.Maps", "MapsLaunch");

  _objc_release_x1();
}

id MAPSGetMapsNotificationsLog()
{
  if (qword_C3C8 != -1)
  {
    sub_4574();
  }

  v1 = qword_C3C0;

  return v1;
}

void sub_1174(id a1)
{
  qword_C3C0 = os_log_create("com.apple.Maps", "MapsNotifications");

  _objc_release_x1();
}

id MAPSGetMapsPerformanceLog()
{
  if (qword_C3D8 != -1)
  {
    sub_4588();
  }

  v1 = qword_C3D0;

  return v1;
}

void sub_11FC(id a1)
{
  qword_C3D0 = os_log_create("com.apple.Maps", "MapsPerformance");

  _objc_release_x1();
}

id MAPSGetLookAroundLog()
{
  if (qword_C3E8 != -1)
  {
    sub_459C();
  }

  v1 = qword_C3E0;

  return v1;
}

void sub_1284(id a1)
{
  qword_C3E0 = os_log_create("com.apple.Maps", "LookAround");

  _objc_release_x1();
}

id MAPSGetNavigationLog()
{
  if (qword_C3F8 != -1)
  {
    sub_45B0();
  }

  v1 = qword_C3F0;

  return v1;
}

void sub_130C(id a1)
{
  qword_C3F0 = os_log_create("com.apple.Maps", "Navigation");

  _objc_release_x1();
}

id MAPSGetNavigationBannersLog()
{
  if (qword_C408 != -1)
  {
    sub_45C4();
  }

  v1 = qword_C400;

  return v1;
}

void sub_1394(id a1)
{
  qword_C400 = os_log_create("com.apple.Maps", "NavigationBanners");

  _objc_release_x1();
}

id MAPSGetNearbyTransitLog()
{
  if (qword_C418 != -1)
  {
    sub_45D8();
  }

  v1 = qword_C410;

  return v1;
}

void sub_141C(id a1)
{
  qword_C410 = os_log_create("com.apple.Maps", "NearbyTransit");

  _objc_release_x1();
}

id MAPSGetOfflineLog()
{
  if (qword_C428 != -1)
  {
    sub_45EC();
  }

  v1 = qword_C420;

  return v1;
}

void sub_14A4(id a1)
{
  qword_C420 = os_log_create("com.apple.Maps", "Offline");

  _objc_release_x1();
}

id MAPSGetPlaceCardLog()
{
  if (qword_C438 != -1)
  {
    sub_4600();
  }

  v1 = qword_C430;

  return v1;
}

void sub_152C(id a1)
{
  qword_C430 = os_log_create("com.apple.Maps", "PlaceCard");

  _objc_release_x1();
}

id MAPSGetPPTLog()
{
  if (qword_C448 != -1)
  {
    sub_4614();
  }

  v1 = qword_C440;

  return v1;
}

void sub_15B4(id a1)
{
  qword_C440 = os_log_create("com.apple.Maps", "PPT");

  _objc_release_x1();
}

id MAPSGetPreferencesSyncLog()
{
  if (qword_C458 != -1)
  {
    sub_4628();
  }

  v1 = qword_C450;

  return v1;
}

void sub_163C(id a1)
{
  qword_C450 = os_log_create("com.apple.Maps", "PreferencesSync");

  _objc_release_x1();
}

id MAPSGetPrintLog()
{
  if (qword_C468 != -1)
  {
    sub_463C();
  }

  v1 = qword_C460;

  return v1;
}

void sub_16C4(id a1)
{
  qword_C460 = os_log_create("com.apple.Maps", "Print");

  _objc_release_x1();
}

id MAPSGetRAPLayoutLog()
{
  if (qword_C478 != -1)
  {
    sub_4650();
  }

  v1 = qword_C470;

  return v1;
}

void sub_174C(id a1)
{
  qword_C470 = os_log_create("com.apple.Maps", "RAPLayout");

  _objc_release_x1();
}

id MAPSGetRAPNavigationLog()
{
  if (qword_C488 != -1)
  {
    sub_4664();
  }

  v1 = qword_C480;

  return v1;
}

void sub_17D4(id a1)
{
  qword_C480 = os_log_create("com.apple.Maps", "RAPNavigation");

  _objc_release_x1();
}

id MAPSGetRAPSubmissionLog()
{
  if (qword_C498 != -1)
  {
    sub_4678();
  }

  v1 = qword_C490;

  return v1;
}

void sub_185C(id a1)
{
  qword_C490 = os_log_create("com.apple.Maps", "RAPSubmission");

  _objc_release_x1();
}

id MAPSGetRecentsLog()
{
  if (qword_C4A8 != -1)
  {
    sub_468C();
  }

  v1 = qword_C4A0;

  return v1;
}

void sub_18E4(id a1)
{
  qword_C4A0 = os_log_create("com.apple.Maps", "Recents");

  _objc_release_x1();
}

id MAPSGetRouteCreationLog()
{
  if (qword_C4B8 != -1)
  {
    sub_46A0();
  }

  v1 = qword_C4B0;

  return v1;
}

void sub_196C(id a1)
{
  qword_C4B0 = os_log_create("com.apple.Maps", "RouteCreation");

  _objc_release_x1();
}

id MAPSGetRoutePlanningLog()
{
  if (qword_C4C8 != -1)
  {
    sub_46B4();
  }

  v1 = qword_C4C0;

  return v1;
}

void sub_19F4(id a1)
{
  qword_C4C0 = os_log_create("com.apple.Maps", "RoutePlanning");

  _objc_release_x1();
}

id MAPSGetRoutePlanningFeatureDiscoveryLog()
{
  if (qword_C4D8 != -1)
  {
    sub_46C8();
  }

  v1 = qword_C4D0;

  return v1;
}

void sub_1A7C(id a1)
{
  qword_C4D0 = os_log_create("com.apple.Maps", "RoutePlanningFeatureDiscovery");

  _objc_release_x1();
}

id MAPSGetSearchACLog()
{
  if (qword_C4E8 != -1)
  {
    sub_46DC();
  }

  v1 = qword_C4E0;

  return v1;
}

void sub_1B04(id a1)
{
  qword_C4E0 = os_log_create("com.apple.Maps", "SearchAC");

  _objc_release_x1();
}

id MAPSGetSearchACFindMyLog()
{
  if (qword_C4F8 != -1)
  {
    sub_46F0();
  }

  v1 = qword_C4F0;

  return v1;
}

void sub_1B8C(id a1)
{
  qword_C4F0 = os_log_create("com.apple.Maps", "SearchACFindMy");

  _objc_release_x1();
}

id MAPSGetSearchHomeLog()
{
  if (qword_C508 != -1)
  {
    sub_4704();
  }

  v1 = qword_C500;

  return v1;
}

void sub_1C14(id a1)
{
  qword_C500 = os_log_create("com.apple.Maps", "SearchHome");

  _objc_release_x1();
}

id MAPSGetSharedTripLog()
{
  if (qword_C518 != -1)
  {
    sub_4718();
  }

  v1 = qword_C510;

  return v1;
}

void sub_1C9C(id a1)
{
  qword_C510 = os_log_create("com.apple.Maps", "SharedTrip");

  _objc_release_x1();
}

id MAPSGetSharingLog()
{
  if (qword_C528 != -1)
  {
    sub_472C();
  }

  v1 = qword_C520;

  return v1;
}

void sub_1D24(id a1)
{
  qword_C520 = os_log_create("com.apple.Maps", "Sharing");

  _objc_release_x1();
}

id MAPSGetShortcutsLog()
{
  if (qword_C538 != -1)
  {
    sub_4740();
  }

  v1 = qword_C530;

  return v1;
}

void sub_1DAC(id a1)
{
  qword_C530 = os_log_create("com.apple.Maps", "Shortcuts");

  _objc_release_x1();
}

id MAPSGetTileStateCaptureLog()
{
  if (qword_C548 != -1)
  {
    sub_4754();
  }

  v1 = qword_C540;

  return v1;
}

void sub_1E34(id a1)
{
  qword_C540 = os_log_create("com.apple.Maps", "TileStateCapture");

  _objc_release_x1();
}

id MAPSGetTransitLog()
{
  if (qword_C558 != -1)
  {
    sub_4768();
  }

  v1 = qword_C550;

  return v1;
}

void sub_1EBC(id a1)
{
  qword_C550 = os_log_create("com.apple.Maps", "Transit");

  _objc_release_x1();
}

id MAPSGetTransitPayLog()
{
  if (qword_C568 != -1)
  {
    sub_477C();
  }

  v1 = qword_C560;

  return v1;
}

void sub_1F44(id a1)
{
  qword_C560 = os_log_create("com.apple.Maps", "TransitPay");

  _objc_release_x1();
}

id MAPSGetTransitSchedulesLog()
{
  if (qword_C578 != -1)
  {
    sub_4790();
  }

  v1 = qword_C570;

  return v1;
}

void sub_1FCC(id a1)
{
  qword_C570 = os_log_create("com.apple.Maps", "TransitSchedules");

  _objc_release_x1();
}

id MAPSGetUserProfileLog()
{
  if (qword_C588 != -1)
  {
    sub_47A4();
  }

  v1 = qword_C580;

  return v1;
}

void sub_2054(id a1)
{
  qword_C580 = os_log_create("com.apple.Maps", "UserProfile");

  _objc_release_x1();
}

id MAPSGetVehicleDisambiguatorLog()
{
  if (qword_C598 != -1)
  {
    sub_47B8();
  }

  v1 = qword_C590;

  return v1;
}

void sub_20DC(id a1)
{
  qword_C590 = os_log_create("com.apple.Maps", "VehicleDisambiguator");

  _objc_release_x1();
}

id MAPSGetVirtualGarageLog()
{
  if (qword_C5A8 != -1)
  {
    sub_47CC();
  }

  v1 = qword_C5A0;

  return v1;
}

void sub_2164(id a1)
{
  qword_C5A0 = os_log_create("com.apple.Maps", "VirtualGarage");

  _objc_release_x1();
}

id MAPSGetWeatherLog()
{
  if (qword_C5B8 != -1)
  {
    sub_47E0();
  }

  v1 = qword_C5B0;

  return v1;
}

void sub_21EC(id a1)
{
  qword_C5B0 = os_log_create("com.apple.Maps", "Weather");

  _objc_release_x1();
}

id MAPSGetXPCLog()
{
  if (qword_C5C8 != -1)
  {
    sub_47F4();
  }

  v1 = qword_C5C0;

  return v1;
}

void sub_2274(id a1)
{
  qword_C5C0 = os_log_create("com.apple.Maps", "XPC");

  _objc_release_x1();
}

id MAPSGetUGCBAAUtilitiesLog()
{
  if (qword_C5D8 != -1)
  {
    sub_4808();
  }

  v1 = qword_C5D0;

  return v1;
}

void sub_22FC(id a1)
{
  qword_C5D0 = os_log_create("com.apple.Maps", "UGCBAAUtilities");

  _objc_release_x1();
}

id MAPSGetIncidentsReportingLog()
{
  if (qword_C5E8 != -1)
  {
    sub_481C();
  }

  v1 = qword_C5E0;

  return v1;
}

void sub_2384(id a1)
{
  qword_C5E0 = os_log_create("com.apple.Maps", "IncidentsReporting");

  _objc_release_x1();
}

id MAPSGetWatermarkingLog()
{
  if (qword_C5F8 != -1)
  {
    sub_4830();
  }

  v1 = qword_C5F0;

  return v1;
}

void sub_240C(id a1)
{
  qword_C5F0 = os_log_create("com.apple.Maps", "Watermarking");

  _objc_release_x1();
}

id MAPSGetWaypointRequestLog()
{
  if (qword_C608 != -1)
  {
    sub_4844();
  }

  v1 = qword_C600;

  return v1;
}

void sub_2494(id a1)
{
  qword_C600 = os_log_create("com.apple.Maps", "WaypointRequest");

  _objc_release_x1();
}

id MAPSGetWebBundleLog()
{
  if (qword_C618 != -1)
  {
    sub_4858();
  }

  v1 = qword_C610;

  return v1;
}

void sub_251C(id a1)
{
  qword_C610 = os_log_create("com.apple.Maps", "WebBundle");

  _objc_release_x1();
}

id MAPSGetRAPRecordsManagerLog()
{
  if (qword_C628 != -1)
  {
    sub_486C();
  }

  v1 = qword_C620;

  return v1;
}

void sub_25A4(id a1)
{
  qword_C620 = os_log_create("com.apple.Maps", "RAPRecordsManager");

  _objc_release_x1();
}

id MAPSGetUGCPhotoAttributionLog()
{
  if (qword_C638 != -1)
  {
    sub_4880();
  }

  v1 = qword_C630;

  return v1;
}

void sub_262C(id a1)
{
  qword_C630 = os_log_create("com.apple.Maps", "UGCPhotoAttribution");

  _objc_release_x1();
}

id MAPSGetSearchResultsImpressionsLog()
{
  if (qword_C648 != -1)
  {
    sub_4894();
  }

  v1 = qword_C640;

  return v1;
}

void sub_26B4(id a1)
{
  qword_C640 = os_log_create("com.apple.Maps", "SearchResultsImpressions");

  _objc_release_x1();
}

id MAPSGetSearchRedoLog()
{
  if (qword_C658 != -1)
  {
    sub_48A8();
  }

  v1 = qword_C650;

  return v1;
}

void sub_273C(id a1)
{
  qword_C650 = os_log_create("com.apple.Maps", "SearchRedo");

  _objc_release_x1();
}

id MAPSGetStaleTimeBug_105865770Log()
{
  if (qword_C668 != -1)
  {
    sub_48BC();
  }

  v1 = qword_C660;

  return v1;
}

void sub_27C4(id a1)
{
  qword_C660 = os_log_create("com.apple.Maps", "StaleTimeBug_105865770");

  _objc_release_x1();
}

id MAPSGetCustomPOIsControllerLog()
{
  if (qword_C678 != -1)
  {
    sub_48D0();
  }

  v1 = qword_C670;

  return v1;
}

void sub_284C(id a1)
{
  qword_C670 = os_log_create("com.apple.Maps", "CustomPOIsController");

  _objc_release_x1();
}

id MAPSGetPOSIXSignalsLog()
{
  if (qword_C688 != -1)
  {
    sub_48E4();
  }

  v1 = qword_C680;

  return v1;
}

void sub_28D4(id a1)
{
  qword_C680 = os_log_create("com.apple.Maps", "POSIXSignals");

  _objc_release_x1();
}

id MAPSGetCoalescingSchedulerLog()
{
  if (qword_C698 != -1)
  {
    sub_48F8();
  }

  v1 = qword_C690;

  return v1;
}

void sub_295C(id a1)
{
  qword_C690 = os_log_create("com.apple.Maps", "CoalescingScheduler");

  _objc_release_x1();
}

id MAPSGetDeviceConnectionLog()
{
  if (qword_C6A8 != -1)
  {
    sub_490C();
  }

  v1 = qword_C6A0;

  return v1;
}

void sub_29E4(id a1)
{
  qword_C6A0 = os_log_create("com.apple.Maps", "DeviceConnection");

  _objc_release_x1();
}

id MAPSGetDictationLog()
{
  if (qword_C6B8 != -1)
  {
    sub_4920();
  }

  v1 = qword_C6B0;

  return v1;
}

void sub_2A6C(id a1)
{
  qword_C6B0 = os_log_create("com.apple.Maps", "Dictation");

  _objc_release_x1();
}

id MAPSGetElevationGraphLog()
{
  if (qword_C6C8 != -1)
  {
    sub_4934();
  }

  v1 = qword_C6C0;

  return v1;
}

void sub_2AF4(id a1)
{
  qword_C6C0 = os_log_create("com.apple.Maps", "ElevationGraph");

  _objc_release_x1();
}

id MAPSGetIncidentReportingLog()
{
  if (qword_C6D8 != -1)
  {
    sub_4948();
  }

  v1 = qword_C6D0;

  return v1;
}

void sub_2B7C(id a1)
{
  qword_C6D0 = os_log_create("com.apple.Maps", "IncidentReporting");

  _objc_release_x1();
}

id MAPSGetLightLevelLog()
{
  if (qword_C6E8 != -1)
  {
    sub_495C();
  }

  v1 = qword_C6E0;

  return v1;
}

void sub_2C04(id a1)
{
  qword_C6E0 = os_log_create("com.apple.Maps", "LightLevel");

  _objc_release_x1();
}

id MAPSGetMapRegionLog()
{
  if (qword_C6F8 != -1)
  {
    sub_4970();
  }

  v1 = qword_C6F0;

  return v1;
}

void sub_2C8C(id a1)
{
  qword_C6F0 = os_log_create("com.apple.Maps", "MapRegion");

  _objc_release_x1();
}

id MAPSGetNavigationSimulationPromptLog()
{
  if (qword_C708 != -1)
  {
    sub_4984();
  }

  v1 = qword_C700;

  return v1;
}

void sub_2D14(id a1)
{
  qword_C700 = os_log_create("com.apple.Maps", "NavigationSimulationPrompt");

  _objc_release_x1();
}

id MAPSGetNavIndicatorsLog()
{
  if (qword_C718 != -1)
  {
    sub_4998();
  }

  v1 = qword_C710;

  return v1;
}

void sub_2D9C(id a1)
{
  qword_C710 = os_log_create("com.apple.Maps", "NavIndicators");

  _objc_release_x1();
}

id MAPSGetProactiveTrayLog()
{
  if (qword_C728 != -1)
  {
    sub_49AC();
  }

  v1 = qword_C720;

  return v1;
}

void sub_2E24(id a1)
{
  qword_C720 = os_log_create("com.apple.Maps", "ProactiveTray");

  _objc_release_x1();
}

id MAPSGetRAPPresenterLog()
{
  if (qword_C738 != -1)
  {
    sub_49C0();
  }

  v1 = qword_C730;

  return v1;
}

void sub_2EAC(id a1)
{
  qword_C730 = os_log_create("com.apple.Maps", "RAPPresenter");

  _objc_release_x1();
}

id MAPSGetRoutePlanningOutlineLog()
{
  if (qword_C748 != -1)
  {
    sub_49D4();
  }

  v1 = qword_C740;

  return v1;
}

void sub_2F34(id a1)
{
  qword_C740 = os_log_create("com.apple.Maps", "RoutePlanningOutline");

  _objc_release_x1();
}

id MAPSGetStatusIndicatorLog()
{
  if (qword_C758 != -1)
  {
    sub_49E8();
  }

  v1 = qword_C750;

  return v1;
}

void sub_2FBC(id a1)
{
  qword_C750 = os_log_create("com.apple.Maps", "StatusIndicator");

  _objc_release_x1();
}

id MAPSGetTransitNavigationLog()
{
  if (qword_C768 != -1)
  {
    sub_49FC();
  }

  v1 = qword_C760;

  return v1;
}

void sub_3044(id a1)
{
  qword_C760 = os_log_create("com.apple.Maps", "TransitNavigation");

  _objc_release_x1();
}

id MAPSGetTurnAlertsLog()
{
  if (qword_C778 != -1)
  {
    sub_4A10();
  }

  v1 = qword_C770;

  return v1;
}

void sub_30CC(id a1)
{
  qword_C770 = os_log_create("com.apple.Maps", "TurnAlerts");

  _objc_release_x1();
}

id MAPSGetUGCCallToActionViewProviderLog()
{
  if (qword_C788 != -1)
  {
    sub_4A24();
  }

  v1 = qword_C780;

  return v1;
}

void sub_3154(id a1)
{
  qword_C780 = os_log_create("com.apple.Maps", "UGCCallToActionViewProvider");

  _objc_release_x1();
}

id MAPSGetUGCPhotoDownloadManagerLog()
{
  if (qword_C798 != -1)
  {
    sub_4A38();
  }

  v1 = qword_C790;

  return v1;
}

void sub_31DC(id a1)
{
  qword_C790 = os_log_create("com.apple.Maps", "UGCPhotoDownloadManager");

  _objc_release_x1();
}

id MAPSGetUGCReviewedPlacesManagerLog()
{
  if (qword_C7A8 != -1)
  {
    sub_4A4C();
  }

  v1 = qword_C7A0;

  return v1;
}

void sub_3264(id a1)
{
  qword_C7A0 = os_log_create("com.apple.Maps", "UGCReviewedPlacesManager");

  _objc_release_x1();
}

id MAPSGetUGCPhotoViewerDataProviderLog()
{
  if (qword_C7B8 != -1)
  {
    sub_4A60();
  }

  v1 = qword_C7B0;

  return v1;
}

void sub_32EC(id a1)
{
  qword_C7B0 = os_log_create("com.apple.Maps", "UGCPhotoViewerDataProvider");

  _objc_release_x1();
}

id MAPSGetCarBlurViewLog()
{
  if (qword_C7C8 != -1)
  {
    sub_4A74();
  }

  v1 = qword_C7C0;

  return v1;
}

void sub_3374(id a1)
{
  qword_C7C0 = os_log_create("com.apple.Maps", "CarBlurView");

  _objc_release_x1();
}

id MAPSGetCarCardsLog()
{
  if (qword_C7D8 != -1)
  {
    sub_4A88();
  }

  v1 = qword_C7D0;

  return v1;
}

void sub_33FC(id a1)
{
  qword_C7D0 = os_log_create("com.apple.Maps", "CarCards");

  _objc_release_x1();
}

id MAPSGetCarClusterSuggestionLog()
{
  if (qword_C7E8 != -1)
  {
    sub_4A9C();
  }

  v1 = qword_C7E0;

  return v1;
}

void sub_3484(id a1)
{
  qword_C7E0 = os_log_create("com.apple.Maps", "CarClusterSuggestion");

  _objc_release_x1();
}

id MAPSGetCarCompressionLog()
{
  if (qword_C7F8 != -1)
  {
    sub_4AB0();
  }

  v1 = qword_C7F0;

  return v1;
}

void sub_350C(id a1)
{
  qword_C7F0 = os_log_create("com.apple.Maps", "CarCompression");

  _objc_release_x1();
}

id MAPSGetCarFocusLog()
{
  if (qword_C808 != -1)
  {
    sub_4AC4();
  }

  v1 = qword_C800;

  return v1;
}

void sub_3594(id a1)
{
  qword_C800 = os_log_create("com.apple.Maps", "CarFocus");

  _objc_release_x1();
}

id MAPSGetCarInstrumentClusterLog()
{
  if (qword_C818 != -1)
  {
    sub_4AD8();
  }

  v1 = qword_C810;

  return v1;
}

void sub_361C(id a1)
{
  qword_C810 = os_log_create("com.apple.Maps", "CarInstrumentCluster");

  _objc_release_x1();
}

id MAPSGetCarGuidanceLog()
{
  if (qword_C828 != -1)
  {
    sub_4AEC();
  }

  v1 = qword_C820;

  return v1;
}

void sub_36A4(id a1)
{
  qword_C820 = os_log_create("com.apple.Maps", "CarGuidance");

  _objc_release_x1();
}

id MAPSGetCarMapWidgetLog()
{
  if (qword_C838 != -1)
  {
    sub_4B00();
  }

  v1 = qword_C830;

  return v1;
}

void sub_372C(id a1)
{
  qword_C830 = os_log_create("com.apple.Maps", "CarMapWidget");

  _objc_release_x1();
}

id MAPSGetCarPlayLog()
{
  if (qword_C848 != -1)
  {
    sub_4B14();
  }

  v1 = qword_C840;

  return v1;
}

void sub_37B4(id a1)
{
  qword_C840 = os_log_create("com.apple.Maps", "CarPlay");

  _objc_release_x1();
}

id MAPSGetCarRouteGeniusLog()
{
  if (qword_C858 != -1)
  {
    sub_4B28();
  }

  v1 = qword_C850;

  return v1;
}

void sub_383C(id a1)
{
  qword_C850 = os_log_create("com.apple.Maps", "CarRouteGenius");

  _objc_release_x1();
}

id MAPSGetCarSessionControllerLog()
{
  if (qword_C868 != -1)
  {
    sub_4B3C();
  }

  v1 = qword_C860;

  return v1;
}

void sub_38C4(id a1)
{
  qword_C860 = os_log_create("com.apple.Maps", "CarSessionController");

  _objc_release_x1();
}

id MAPSGetCarSmallWidgetLog()
{
  if (qword_C878 != -1)
  {
    sub_4B50();
  }

  v1 = qword_C870;

  return v1;
}

void sub_394C(id a1)
{
  qword_C870 = os_log_create("com.apple.Maps", "CarSmallWidget");

  _objc_release_x1();
}

id MAPSGetCompanionControllerLog()
{
  if (qword_C888 != -1)
  {
    sub_4B64();
  }

  v1 = qword_C880;

  return v1;
}

void sub_39D4(id a1)
{
  qword_C880 = os_log_create("com.apple.Maps", "CompanionController");

  _objc_release_x1();
}

id MAPSGetHydrateGeoMapItemLog()
{
  if (qword_C898 != -1)
  {
    sub_4B78();
  }

  v1 = qword_C890;

  return v1;
}

void sub_3A5C(id a1)
{
  qword_C890 = os_log_create("com.apple.Maps", "HydrateGeoMapItem");

  _objc_release_x1();
}

id MAPSGetIdleTimerLog()
{
  if (qword_C8A8 != -1)
  {
    sub_4B8C();
  }

  v1 = qword_C8A0;

  return v1;
}

void sub_3AE4(id a1)
{
  qword_C8A0 = os_log_create("com.apple.Maps", "IdleTimer");

  _objc_release_x1();
}

id MAPSGetPedestrianARLog()
{
  if (qword_C8B8 != -1)
  {
    sub_4BA0();
  }

  v1 = qword_C8B0;

  return v1;
}

void sub_3B6C(id a1)
{
  qword_C8B0 = os_log_create("com.apple.Maps", "PedestrianAR");

  _objc_release_x1();
}

id MAPSGetPuckTrackingLog()
{
  if (qword_C8C8 != -1)
  {
    sub_4BB4();
  }

  v1 = qword_C8C0;

  return v1;
}

void sub_3BF4(id a1)
{
  qword_C8C0 = os_log_create("com.apple.Maps", "PuckTracking");

  _objc_release_x1();
}