uint64_t start(int a1, char **a2)
{
  NSLog(@"Maps application main() started");
  v4 = objc_autoreleasePoolPush();
  UIApplicationMain(a1, a2, @"MapsApp", @"MapsAppDelegate");
  objc_autoreleasePoolPop(v4);
  return 0;
}

id sub_100005610()
{
  if (qword_10195D338 != -1)
  {
    dispatch_once(&qword_10195D338, &stru_1016292A0);
  }

  v1 = qword_10195D330;

  return v1;
}

void sub_100005664(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsLaunch");
  v2 = qword_10195D330;
  qword_10195D330 = v1;
}

void sub_1000056FC(id a1)
{
  v1 = [[MapsOfflineHelper alloc] init_internal];
  v2 = qword_10195CD40;
  qword_10195CD40 = v1;
}

void sub_1000057CC()
{
  if (qword_10195E938 != -1)
  {
    dispatch_once(&qword_10195E938, &stru_1016467B8);
  }
}

void sub_100005930(id a1)
{
  v1 = objc_alloc_init(SearchVirtualGarageManager);
  v2 = qword_10195E8E8;
  qword_10195E8E8 = v1;
}

void sub_100005A94(id a1)
{
  v1 = [NavigationFeedbackCollector alloc];
  v4 = +[MNNavigationService sharedService];
  v2 = [(NavigationFeedbackCollector *)v1 initWithNavigationService:v4];
  v3 = qword_10195F110;
  qword_10195F110 = v2;
}

void sub_100005C68(uint64_t a1)
{
  v2 = +[GEOPlatform sharedPlatform];
  v3 = [v2 supportsNavigation];

  if ((v3 & 1) != 0 || MGGetBoolAnswer())
  {
    v4 = objc_alloc_init(*(a1 + 32));
    v5 = qword_10195CE30;
    qword_10195CE30 = v4;
  }
}

void sub_100006324(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1000063B4(id a1)
{
  v1 = objc_alloc_init(CarSessionController);
  v2 = qword_10195E1C0;
  qword_10195E1C0 = v1;
}

void sub_100006460(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195F628;
  qword_10195F628 = v1;
}

id sub_10000649C()
{
  if (qword_10195F638 != -1)
  {
    dispatch_once(&qword_10195F638, &stru_101658C28);
  }

  v1 = qword_10195F630;

  return v1;
}

void sub_1000064F0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsCarPlayExternalDeviceMonitor");
  v2 = qword_10195F630;
  qword_10195F630 = v1;
}

void sub_10000676C(uint64_t a1)
{
  if ([*(a1 + 32) isCarPlayAvailable])
  {
    v2 = objc_alloc_init(*(a1 + 32));
  }

  else
  {
    v2 = 0;
  }

  v3 = qword_10195F908;
  qword_10195F908 = v2;
}

id sub_100006E1C()
{
  if (qword_10195D738 != -1)
  {
    dispatch_once(&qword_10195D738, &stru_101629AA0);
  }

  v1 = qword_10195D730;

  return v1;
}

void sub_100006E70(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarPlay");
  v2 = qword_10195D730;
  qword_10195D730 = v1;
}

uint64_t sub_100007430(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007494(id a1)
{
  v1 = objc_alloc_init(MapsXPCConnectionsManager);
  v2 = qword_10195F198;
  qword_10195F198 = v1;
}

void sub_100007794(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  objc_destroyWeak((v3 - 64));
  _Unwind_Resume(a1);
}

void sub_10000803C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000080F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 1);
    if (v3)
    {
      v4 = [v3 remoteObjectProxy];
      v5 = sub_100E9E6E8();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
      if (v4)
      {
        if (v6)
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsXPCConnectionsManager Maps broker fetching endpoints.", v7, 2u);
        }

        [v4 listenerEndpointForIdentifer:@"kSiriPluginXPCEndpointIdentifier" reply:&stru_1016541D0];
        [v4 listenerEndpointForIdentifer:@"kCompanionDaemonXPCEndpointIdentifier" reply:&stru_1016541F0];
        [v4 listenerEndpointForIdentifer:@"kPushDaemonXPCEndpointIdentifier" reply:&stru_101654210];
      }

      else
      {
        if (v6)
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsXPCConnectionsManager Maps broker connection remote object is nil, unable to fetch endpoints.", v8, 2u);
        }

        v4 = 0;
      }
    }

    else
    {
      v4 = sub_100E9E6E8();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MapsXPCConnectionsManager Maps broker connection is nil, unable to fetch endpoints.", buf, 2u);
      }
    }
  }
}

void sub_100008254(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[IPCServer sharedServer];
  [v2 setSiriPluginListenerEndpoint:v1];
}

void sub_1000082AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[IPCServer sharedServer];
  [v2 setCompanionDaemonListenerEndpoint:v1];
}

void sub_100008304(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[IPCServer sharedServer];
  [v2 setPushDaemonListenerEndpoint:v1];
}

void sub_10000835C(id a1)
{
  v1 = objc_alloc_init(MapsSiriContextProvider);
  v2 = qword_10195F0D0;
  qword_10195F0D0 = v1;
}

void sub_100008454(id a1)
{
  if (objc_opt_class() && objc_opt_class())
  {
    v3 = objc_alloc_init(NSMutableArray);
    v1 = +[CNContactContentViewController descriptorForRequiredKeys];
    [v3 addObject:v1];

    v2 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:1];
    [v3 addObject:v2];

    [MSPSharedTripContact setAdditionalKeyDescriptorsForContactFetching:v3];
  }
}

id sub_100008614()
{
  if (qword_10195F010 != -1)
  {
    dispatch_once(&qword_10195F010, &stru_1016513B8);
  }

  v1 = qword_10195F008;

  return v1;
}

void sub_1000088D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100008970(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195CB78;
  qword_10195CB78 = v1;
}

void sub_100008DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100008F18()
{
  if (qword_10195CB90 != -1)
  {
    dispatch_once(&qword_10195CB90, &stru_101623020);
  }

  v1 = qword_10195CB88;

  return v1;
}

void sub_100008F6C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsRadarController");
  v2 = qword_10195CB88;
  qword_10195CB88 = v1;
}

id sub_100009038()
{
  if (qword_10195EF88 != -1)
  {
    dispatch_once(&qword_10195EF88, &stru_101650F58);
  }

  v1 = qword_10195EF80;

  return v1;
}

void sub_100009550()
{
  sub_1000095FC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000095FC()
{
  if (!qword_10190D4A8)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10190D4A8);
    }
  }
}

void sub_100009968(uint64_t a1)
{
  v5 = [*(a1 + 32) stack];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100009F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_100009FCC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsChrome");
  v2 = qword_10195D310;
  qword_10195D310 = v1;
}

void sub_10000A3B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_10000A3E8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PlatformController");
  v2 = qword_10195F008;
  qword_10195F008 = v1;
}

void sub_10000A490(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195EF60;
  qword_10195EF60 = v1;
}

void sub_10000A820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A8A8(id a1)
{
  v1 = qword_10195EF70;
  qword_10195EF70 = &off_1016EE560;
}

uint64_t type metadata accessor for NavigationProgressCapturingTask()
{
  result = qword_101925398;
  if (!qword_101925398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10000B11C()
{
  if (qword_10195D318 != -1)
  {
    dispatch_once(&qword_10195D318, &stru_101629260);
  }

  v1 = qword_10195D310;

  return v1;
}

id sub_10000B170()
{
  if (qword_10195F960 != -1)
  {
    dispatch_once(&qword_10195F960, &stru_101660028);
  }

  v1 = qword_10195F958;

  return v1;
}

void sub_10000B1C4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsToken");
  v2 = qword_10195F958;
  qword_10195F958 = v1;
}

void sub_10000B39C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195E738;
  qword_10195E738 = v1;
}

void sub_10000B484(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithCarPlay:0];
  v2 = qword_10195E690;
  qword_10195E690 = v1;
}

void sub_10000B518(id a1)
{
  v1 = objc_alloc_init(CollectionManager);
  v2 = qword_10195EB80;
  qword_10195EB80 = v1;
}

void sub_10000B554(id a1)
{
  v1 = os_log_create("com.apple.Maps", "Collections");
  v2 = qword_10195D290;
  qword_10195D290 = v1;
}

void sub_10000B808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B950(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsThermalPressureController");
  v2 = qword_10195EF80;
  qword_10195EF80 = v1;
}

void sub_10000BD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000BDA4()
{
  if (qword_10195D298 != -1)
  {
    dispatch_once(&qword_10195D298, &stru_101629160);
  }

  v1 = qword_10195D290;

  return v1;
}

id sub_10000BDF8()
{
  if (qword_10195DF48 != -1)
  {
    dispatch_once(&qword_10195DF48, &stru_101630580);
  }

  v1 = qword_10195DF40;

  return v1;
}

void sub_10000BE4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _run];
}

void sub_10000D060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D0A4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsThrottler");
  v2 = qword_10195DF40;
  qword_10195DF40 = v1;
}

void sub_10000D4C8(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
  v2 = +[NSDate date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  *(*(a1 + 32) + 40) = 0;
  *(*(a1 + 32) + 41) = 0;
  *(*(a1 + 32) + 42) = 1;
}

void sub_10000D9D0(id a1)
{
  v1 = [[MapsTheme alloc] initWithMapsThemeStyle:0 visualEffectStyle:0];
  v2 = qword_10195DF88;
  qword_10195DF88 = v1;

  [MKInfoCardThemeManager setTintColorProvider:&stru_101630A70];
}

void sub_10000DA80(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 integerForKey:@"__internal__keyColorOverride"];

  if (v2 <= 3)
  {
    if (v2 <= 1)
    {
      if (v2 == 1)
      {
        v3 = +[UIColor systemRedColor];
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v2 != 2)
    {
LABEL_11:
      v3 = +[UIColor systemBlueColor];
      goto LABEL_19;
    }

    v3 = +[UIColor systemGreenColor];
  }

  else
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {
        +[UIColor systemOrangeColor];
      }

      else
      {
        +[UIColor systemYellowColor];
      }
      v3 = ;
      goto LABEL_19;
    }

    switch(v2)
    {
      case 6:
        v3 = +[UIColor systemTealColor];
        break;
      case 7:
        v3 = +[UIColor systemPinkColor];
        break;
      case 8:
        v3 = +[UIColor systemGrayColor];
        break;
      default:
        goto LABEL_11;
    }
  }

LABEL_19:
  v4 = qword_10195CC60;
  qword_10195CC60 = v3;
}

void sub_10000DE78(id a1)
{
  v1 = [NSOrderedSet orderedSetWithObject:&OBJC_PROTOCOL___MKMapViewDelegatePrivate];
  v2 = qword_10195F048;
  qword_10195F048 = v1;
}

id sub_10000E5D0()
{
  if (qword_10195F460 != -1)
  {
    dispatch_once(&qword_10195F460, &stru_101657268);
  }

  v1 = qword_10195F458;

  return v1;
}

void sub_10000E624(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ChromeDelegateProxy");
  v2 = qword_10195F458;
  qword_10195F458 = v1;
}

void sub_10000E6FC(id a1)
{
  if (MGGetBoolAnswer())
  {
    if (MGGetSInt32Answer() == 1)
    {
      if (MGGetBoolAnswer())
      {
        if (([ARGeoTrackingConfiguration isSupportedWithOptions:4]& 1) != 0)
        {
          v1 = sub_10000E8B0();
          if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
          {
            v4 = 0;
            v2 = "VLF is supported on the current device";
            v3 = &v4;
LABEL_15:
            _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
          }
        }

        else
        {
          byte_10195CFF0 = 1;
          v1 = sub_10000E8B0();
          if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v2 = "VLF is not supported because the current device does not support geo tracking";
            v3 = buf;
            goto LABEL_15;
          }
        }
      }

      else
      {
        byte_10195CFF0 = 1;
        v1 = sub_10000E8B0();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 0;
          v2 = "VLF is not supported because the current device does not support the DeviceSupportsMapsOpticalHeading gestalt key";
          v3 = &v6;
          goto LABEL_15;
        }
      }
    }

    else
    {
      byte_10195CFF0 = 1;
      v1 = sub_10000E8B0();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 0;
        v2 = "VLF is not supported because the current device is not an iPhone";
        v3 = &v7;
        goto LABEL_15;
      }
    }
  }

  else
  {
    byte_10195CFF0 = 1;
    v1 = sub_10000E8B0();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v2 = "VLF is not supported because the current device does not support ARKit";
      v3 = &v8;
      goto LABEL_15;
    }
  }
}

id sub_10000E8B0()
{
  if (qword_10195D008 != -1)
  {
    dispatch_once(&qword_10195D008, &stru_101627300);
  }

  v1 = qword_10195D000;

  return v1;
}

void sub_10000E904(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFAvailability");
  v2 = qword_10195D000;
  qword_10195D000 = v1;
}

void sub_10000E9F8(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.Maps.MapsAnalyticStateProvider", attr);
  v3 = qword_10195EB90;
  qword_10195EB90 = v2;
}

void sub_10000EA8C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapRegion");
  v2 = qword_10195D5F0;
  qword_10195D5F0 = v1;
}

id sub_10000EAD0()
{
  if (qword_10195F388 != -1)
  {
    dispatch_once(&qword_10195F388, &stru_101656228);
  }

  v1 = qword_10195F380;

  return v1;
}

void sub_10000EB24(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsRegionChange");
  v2 = qword_10195F380;
  qword_10195F380 = v1;
}

id sub_10000EBC4()
{
  if (qword_10195F490 != -1)
  {
    dispatch_once(&qword_10195F490, &stru_1016573B8);
  }

  v1 = qword_10195F488;

  return v1;
}

id sub_10000F504()
{
  if (qword_10195EA70 != -1)
  {
    dispatch_once(&qword_10195EA70, &stru_10164D390);
  }

  v1 = qword_10195EA68;

  return v1;
}

uint64_t sub_10000F558()
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  return byte_10195DF08;
}

void sub_10000F964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_10000F9AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchCollectionsWithCompletion:v5];
}

uint64_t sub_10000FA08(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  return v2;
}

void sub_10000FBAC(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_10195DF78;
  qword_10195DF78 = v1;

  v59[0] = @"ControlBackgroundColorKey";
  v54 = [UIColor colorWithWhite:0.968627453 alpha:1.0];
  v60[0] = v54;
  v59[1] = @"controlTintColorKey";
  v52 = +[UIColor _maps_keyColor];
  v60[1] = v52;
  v59[2] = @"HairLineColorKey";
  v50 = +[UIColor separatorColor];
  v60[2] = v50;
  v59[3] = @"GreenButtonColorKey";
  v48 = [UIColor colorWithRed:"colorWithRed:green:blue:alpha:" green:? blue:? alpha:?];
  v60[3] = v48;
  v59[4] = @"GreenButtonHighlightedColorKey";
  v46 = [UIColor colorWithRed:0.268235296 green:0.765882313 blue:0.352941185 alpha:1.0];
  v60[4] = v46;
  v59[5] = @"GroupTableViewBackgroundColorKey";
  v44 = [UIColor colorWithRed:0.937254906 green:0.937254906 blue:0.956862748 alpha:1.0];
  v60[5] = v44;
  v59[6] = @"GroupTableViewCellBackgroundColorKey";
  v42 = [UIColor colorWithWhite:1.0 alpha:1.0];
  v60[6] = v42;
  v59[7] = @"BlueButtonHighlightedColorKey";
  v40 = +[UIColor _maps_keyColor];
  v38 = [UIColor colorWithWhite:0.0 alpha:?];
  v37 = [v40 _colorBlendedWithColor:v38];
  v60[7] = v37;
  v59[8] = @"kNavEndButtonBackgroundColor";
  v3 = [UIColor colorWithRed:1.0 green:0.282352954 blue:0.282352954 alpha:1.0];
  v60[8] = v3;
  v59[9] = @"NavResumeButtonHighlightedColor";
  v4 = [UIColor colorWithWhite:0.0 alpha:0.0500000007];
  v5 = [UIColor colorWithWhite:0.0 alpha:0.100000001];
  v6 = [v4 _colorBlendedWithColor:v5];
  v60[9] = v6;
  v59[10] = @"kNavTraySecondaryTextColor";
  v7 = [UIColor colorWithRed:0.392156869 green:0.392156869 blue:0.392156869 alpha:1.0];
  v60[10] = v7;
  v59[11] = @"VibrantTopColorKey";
  v8 = [UIColor colorWithRed:0.203921571 green:0.223529413 blue:0.313725501 alpha:0.150000006];
  v60[11] = v8;
  v59[12] = @"VibrantBackgroundColorKey";
  v9 = [UIColor colorWithWhite:0.479999989 alpha:1.0];
  v60[12] = v9;
  v60[13] = kCAFilterPlusD;
  v59[13] = @"VibrantTopFilterKey";
  v59[14] = @"VibrantBackgroundFilterKey";
  v60[14] = kCAFilterColorBurnBlendMode;
  v59[15] = @"StatusIndicatorHighlightedColorKey";
  v10 = [UIColor colorWithRed:0.0 green:0.419607848 blue:0.874509811 alpha:1.0];
  v60[15] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:16];

  [qword_10195DF78 setObject:v11 forKeyedSubscript:@"StandardTheme"];
  v12 = [qword_10195DF78 objectForKeyedSubscript:@"StandardTheme"];
  v13 = [v12 copy];

  [qword_10195DF78 setObject:v13 forKeyedSubscript:@"StandardThemeWithoutVisualEffect"];
  v57[0] = @"ControlBackgroundColorKey";
  v55 = [UIColor colorWithRed:0.172549024 green:0.168627456 blue:0.168627456 alpha:1.0];
  v58[0] = v55;
  v57[1] = @"controlTintColorKey";
  v53 = +[UIColor whiteColor];
  v58[1] = v53;
  v57[2] = @"HairLineColorKey";
  v51 = +[UIColor separatorColor];
  v58[2] = v51;
  v57[3] = @"GreenButtonColorKey";
  v56 = [UIColor colorWithRed:0.298039228 green:0.850980401 blue:0.392156869 alpha:1.0];
  v58[3] = v56;
  v57[4] = @"GreenButtonHighlightedColorKey";
  v49 = [UIColor colorWithRed:0.268235296 green:0.765882313 blue:0.352941185 alpha:1.0];
  v58[4] = v49;
  v57[5] = @"GroupTableViewBackgroundColorKey";
  v47 = [UIColor colorWithRed:0.752941191 green:0.768627465 blue:0.78039217 alpha:1.0];
  v58[5] = v47;
  v57[6] = @"GroupTableViewCellBackgroundColorKey";
  v45 = [UIColor colorWithRed:0.811764717 green:0.827450991 blue:0.843137264 alpha:1.0];
  v58[6] = v45;
  v57[7] = @"BlueButtonHighlightedColorKey";
  v43 = +[UIColor _maps_keyColor];
  v41 = [UIColor colorWithWhite:0.0 alpha:0.100000001];
  v39 = [v43 _colorBlendedWithColor:v41];
  v58[7] = v39;
  v57[8] = @"kNavEndButtonBackgroundColor";
  v14 = [UIColor colorWithRed:1.0 green:0.23137255 blue:0.188235298 alpha:1.0];
  v58[8] = v14;
  v57[9] = @"NavResumeButtonHighlightedColor";
  v15 = [UIColor colorWithWhite:1.0 alpha:0.0500000007];
  v16 = [UIColor colorWithWhite:0.0 alpha:0.100000001];
  v17 = [v15 _colorBlendedWithColor:v16];
  v58[9] = v17;
  v57[10] = @"kNavTraySecondaryTextColor";
  v18 = [UIColor colorWithRed:0.392156869 green:0.392156869 blue:0.392156869 alpha:1.0];
  v58[10] = v18;
  v57[11] = @"VibrantTopColorKey";
  v19 = [UIColor colorWithWhite:1.0 alpha:0.0399999991];
  v58[11] = v19;
  v57[12] = @"VibrantBackgroundColorKey";
  v20 = [UIColor colorWithWhite:1.0 alpha:0.519999981];
  v58[12] = v20;
  v58[13] = kCAFilterPlusL;
  v57[13] = @"VibrantTopFilterKey";
  v57[14] = @"VibrantBackgroundFilterKey";
  v58[14] = kCAFilterOverlayBlendMode;
  v57[15] = @"StatusIndicatorHighlightedColorKey";
  v21 = [UIColor colorWithRed:0.0235294122 green:0.360784322 blue:0.698039234 alpha:1.0];
  v58[15] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:16];

  [qword_10195DF78 setObject:v22 forKeyedSubscript:@"DarkTheme"];
  v23 = [qword_10195DF78 objectForKeyedSubscript:@"DarkTheme"];
  v24 = [v23 mutableCopy];

  v25 = [UIColor colorWithRed:0.152941182 green:0.184313729 blue:0.215686277 alpha:1.0];
  [v24 setObject:v25 forKeyedSubscript:@"ControlBackgroundColorKey"];

  v26 = +[UIColor separatorColor];
  [v24 setObject:v26 forKeyedSubscript:@"HairLineColorKey"];

  v27 = [UIColor colorWithRed:0.113725491 green:0.686274529 blue:0.925490201 alpha:1.0];
  [v24 setObject:v27 forKeyedSubscript:@"controlTintColorKey"];

  v28 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.439999998];
  [v24 setObject:v28 forKeyedSubscript:@"kNavTraySecondaryTextColor"];

  v29 = [UIColor colorWithRed:0.90196079 green:0.20784314 blue:0.168627456 alpha:1.0];
  [v24 setObject:v29 forKeyedSubscript:@"kNavEndButtonBackgroundColor"];

  v30 = [UIColor colorWithRed:0.278431386 green:0.31764707 blue:0.360784322 alpha:1.0];
  [v24 setObject:v30 forKeyedSubscript:@"VibrantBackgroundColorKey"];

  v31 = [UIColor colorWithRed:0.278431386 green:0.31764707 blue:0.360784322 alpha:1.0];
  [v24 setObject:v31 forKeyedSubscript:@"VibrantTopColorKey"];

  v32 = [UIColor colorWithRed:0.243137255 green:0.776470602 blue:0.333333343 alpha:1.0];
  [v24 setObject:v32 forKeyedSubscript:@"GreenButtonColorKey"];

  v33 = [UIColor colorWithRed:0.218823522 green:0.698823512 blue:0.300000012 alpha:1.0];
  [v24 setObject:v33 forKeyedSubscript:@"GreenButtonHighlightedColorKey"];

  v34 = [UIColor colorWithRed:0.125490203 green:0.152941182 blue:0.180392161 alpha:1.0];
  [v24 setObject:v34 forKeyedSubscript:@"GroupTableViewBackgroundColorKey"];

  v35 = [UIColor colorWithRed:0.152941182 green:0.184313729 blue:0.215686277 alpha:1.0];
  [v24 setObject:v35 forKeyedSubscript:@"GroupTableViewCellBackgroundColorKey"];

  v36 = [v24 copy];
  [qword_10195DF78 setObject:v36 forKeyedSubscript:@"DarkThemeWithoutVisualEffect"];
}

uint64_t sub_100010C34(uint64_t a1, Protocol *a2)
{
  v3 = objc_opt_class();
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  if (qword_10195E840 != -1)
  {
    dispatch_once(&qword_10195E840, &stru_10163B3E8);
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_16:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_4:
  v5 = atomic_load(dword_1019316B8);
  os_unfair_lock_lock(&unk_10195E848);
  v6 = [qword_10195E838 objectForKey:v4];
  if (!v6)
  {
    v6 = [NSMapTable mapTableWithKeyOptions:256 valueOptions:0];
    [qword_10195E838 setObject:v6 forKey:v4];
  }

  v7 = [objc_msgSend(v6 objectForKey:{a2), "unsignedIntegerValue"}];
  os_unfair_lock_unlock(&unk_10195E848);
  if (v5 != v7 >> 1)
  {
    v7 = [v4 conformsToProtocol:a2];
    if (qword_10195E858 != -1)
    {
      dispatch_once(&qword_10195E858, &stru_10163B408);
    }

    v8 = qword_10195E850;
    if (os_log_type_enabled(qword_10195E850, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = NSStringFromClass(v4);
      if (v7)
      {
        v11 = "conforms to";
      }

      else
      {
        v11 = "does not conform to";
      }

      v12 = NSStringFromProtocol(a2);
      v15 = 138544130;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@ %s %{public}@ (gen: %u)", &v15, 0x26u);
    }

    os_unfair_lock_lock(&unk_10195E848);
    v13 = [NSNumber numberWithUnsignedInt:v7 | (2 * v5)];
    [v6 setObject:v13 forKey:a2];

    os_unfair_lock_unlock(&unk_10195E848);
  }

  return v7 & 1;
}

void sub_100011364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10001158C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000116B0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UserLocationView");
  v2 = qword_10195F488;
  qword_10195F488 = v1;
}

void sub_100011DCC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ContainerTransitionManager");
  v2 = qword_10195EA68;
  qword_10195EA68 = v1;
}

void sub_100011E10(id a1)
{
  v1 = +[UIDevice currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    BOOL = GEOConfigGetBOOL();
  }

  else
  {
    BOOL = 1;
  }

  byte_10195DF08 = BOOL;
  v4 = sub_10000B11C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [NSNumber numberWithBool:byte_10195DF08];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "UIKitCardsAreAvailable: %@", &v6, 0xCu);
  }
}

id sub_100013558()
{
  if (qword_10195F378 != -1)
  {
    dispatch_once(&qword_10195F378, &stru_101656208);
  }

  v1 = qword_10195F370;

  return v1;
}

void sub_1000135AC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsChromeComponentUpdates");
  v2 = qword_10195F370;
  qword_10195F370 = v1;
}

void sub_1000136E0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "GroupAnimation");
  v2 = qword_10195F360;
  qword_10195F360 = v1;
}

void sub_100013F20(id a1)
{
  v1 = [[FloatingButtonItem alloc] initWithButton:0 option:0];
  v2 = qword_10195CD70;
  qword_10195CD70 = v1;

  *(qword_10195CD70 + 17) = 1;
}

void sub_100014028(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_ButtonsGroupViewController alloc] initWithFloatingButtonItems:v3 visualEffectDisabled:*(a1 + 48)];

  [(_ButtonsGroupViewController *)v4 setBlurGroupName:*(a1 + 32)];
  [*(a1 + 40) addObject:v4];
}

void sub_1000140B0(uint64_t a1, void *a2)
{
  v3 = [a2 button];
  if (v3)
  {
    v8 = v3;
    if ([*(a1 + 32) count])
    {
      v4 = [*(a1 + 40) count];
      v5 = *(a1 + 32);
      if (v4)
      {
        v6 = [*(a1 + 40) firstObject];
        [v5 addObject:v6];

        [*(a1 + 40) removeObjectAtIndex:0];
      }

      else
      {
        v7 = objc_opt_new();
        [v5 addObject:v7];
      }
    }

    [*(a1 + 32) addObject:v8];
    v3 = v8;
  }
}

void sub_100014804(double *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CAGradientLayer);
  [v4 setBounds:{a1[4], a1[5], a1[6], a1[7]}];
  v5 = +[UIColor whiteColor];
  v10[0] = [v5 CGColor];
  v6 = +[UIColor whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.0];
  v10[1] = [v7 CGColor];
  v8 = [NSArray arrayWithObjects:v10 count:2];
  [v4 setColors:v8];

  v9 = [v3 CGContext];
  [v4 renderInContext:v9];
}

id sub_100014B3C(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 isInternalInstall]);

  return v2;
}

uint64_t sub_100014C84(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_100014CCC()
{
  result = [objc_opt_self() mainBundle];
  qword_1019600D8 = result;
  return result;
}

void sub_100014D94(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsRingBuffer");
  v2 = qword_10195F6F8;
  qword_10195F6F8 = v1;
}

id sub_100014EFC()
{
  if (qword_10195D2D8 != -1)
  {
    dispatch_once(&qword_10195D2D8, &stru_1016291E0);
  }

  v1 = qword_10195D2D0;

  return v1;
}

void sub_100015AAC(id a1)
{
  v1 = [NSOrderedSet orderedSetWithObject:&OBJC_PROTOCOL___FloatingControlsOverlayDelegate];
  v2 = qword_10195D840;
  qword_10195D840 = v1;
}

id sub_100015F58()
{
  if (qword_10195EBF8 != -1)
  {
    dispatch_once(&qword_10195EBF8, &stru_10164E440);
  }

  v1 = qword_10195EBF0;

  return v1;
}

void sub_100015FAC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchPins");
  v2 = qword_10195EBF0;
  qword_10195EBF0 = v1;
}

void sub_100016170(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100016524(id a1)
{
  v1 = objc_alloc_init(ParkedCarManager);
  v2 = qword_10195F768;
  qword_10195F768 = v1;
}

id MapsSuggestionsEngineForMapsProcess()
{
  if (qword_10195F5B8 != -1)
  {
    dispatch_once(&qword_10195F5B8, &stru_101658850);
  }

  v1 = qword_10195F5A8;

  return v1;
}

void sub_1000166B4(id a1)
{
  if (qword_10195F5C0 != -1)
  {
    dispatch_once(&qword_10195F5C0, &stru_101658870);
  }

  v1 = qword_10195F5C8;
  v2 = objc_alloc_init(MapsSuggestionsMKLocationManagerAdapter);
  v3 = qword_10195F5B0;
  qword_10195F5B0 = v2;

  v25 = objc_opt_class();
  v4 = [NSArray arrayWithObjects:&v25 count:1];
  v5 = [v1 withSourceClasses:v4];

  if (MapsFeature_IsEnabled_VisitedPlaces() && +[_TtC4Maps36MapsSuggestionsCurrentLocationSource isEnabled])
  {
    v24 = objc_opt_class();
    v6 = [NSArray arrayWithObjects:&v24 count:1];
    v7 = [v5 withSourceClasses:v6];

    v5 = v7;
  }

  if (GEOConfigGetBOOL())
  {
    v23 = objc_opt_class();
    v8 = [NSArray arrayWithObjects:&v23 count:1];
    v9 = [v5 withSourceClasses:v8];

    v5 = v9;
  }

  v10 = [v5 withFavorites];

  v11 = [v10 withLocationUpdater:qword_10195F5B0];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100ECE638;
  v21 = sub_100ECE648;
  v12 = v11;
  v22 = v12;
  v16 = objc_alloc_init(MapsSuggestionsShortcutTitleFormatter);
  MapsSuggestionsEntryTypeEnumerate();
  v13 = v18[5];

  _Block_object_dispose(&v17, 8);
  v14 = [v13 build];
  v15 = qword_10195F5A8;
  qword_10195F5A8 = v14;
}

void sub_1000169A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016AD4(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x19)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEngineForMapsProcess.m";
      v13 = 1024;
      v14 = 84;
      v15 = 2082;
      v16 = "MapsSuggestionsEngineBuilder *_setPinnedPlaceTitleFormatters(MapsSuggestionsEngineBuilder *__strong)_block_invoke";
      v17 = 2082;
      v18 = "YES";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsEntryType!", &v11, 0x26u);
    }

    return 0;
  }

  else
  {
    if (((1 << a2) & 0x3F3FFF9) == 0)
    {
      v4 = *(a1 + 32);
      v5 = *(*(*(a1 + 40) + 8) + 40);
      if (((1 << a2) & 0x80006) != 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = 18;
      }

      v7 = [v5 withTitleFormatter:v4 forType:v6];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    return 1;
  }
}

id sub_100016C50()
{
  v0 = +[RideBookingUtils sharedUtils];
  v1 = [v0 isEnabled];

  return v1;
}

void sub_100016E54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_1000177D0()
{
  if (qword_10195D5B8 != -1)
  {
    dispatch_once(&qword_10195D5B8, &stru_1016297A0);
  }

  v1 = qword_10195D5B0;

  return v1;
}

void sub_100017824(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CustomPOIsController");
  v2 = qword_10195D5B0;
  qword_10195D5B0 = v1;
}

void sub_100017868(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 registerDefaults:&off_1016EE6C8];
}

void sub_10001790C(id a1)
{
  v1 = objc_alloc_init(UserInformationManager);
  v2 = qword_10195E5B0;
  qword_10195E5B0 = v1;
}

void sub_100017ACC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100026900;
    v3[3] = &unk_1016378F8;
    objc_copyWeak(&v4, (a1 + 32));
    [WeakRetained _retrieveUserProfilePictureWithImageCreationCompletion:v3];
    objc_destroyWeak(&v4);
  }
}

void sub_100017BF4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];
  if (!v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000269B0;
    block[3] = &unk_101660648;
    objc_copyWeak(&v41, a1 + 6);
    v40 = a1[5];
    dispatch_async(&_dispatch_main_q, block);

    v27 = &v41;
    goto LABEL_9;
  }

  if ([a1[4] isAuthorizedForPreciseLocation])
  {
    v8 = [v7 location];
    [v8 latitude];
    v10 = v9;
    v11 = [v7 location];
    [v11 longitude];
    if (([GEOLocationShifter isLocationShiftRequiredForCoordinate:v10, v12]& 1) != 0)
    {
      v13 = [v7 location];
      v14 = [v13 referenceFrame];

      if (v14 != 2)
      {
        v15 = objc_alloc_init(GEOLocationShifter);
        v16 = [GEOLatLng alloc];
        v17 = [v7 location];
        [v17 latitude];
        v19 = v18;
        v20 = [v7 location];
        [v20 longitude];
        v22 = [v16 initWithLatitude:v19 longitude:v21];

        [v22 setGtLog:1];
        v23 = [v7 location];
        [v23 horizontalUncertainty];
        v25 = v24;
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100F3F728;
        v35[3] = &unk_10165DC50;
        objc_copyWeak(&v38, a1 + 6);
        v36 = v7;
        v37 = a1[5];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100F3F7A4;
        v32[3] = &unk_10165DC78;
        objc_copyWeak(&v34, a1 + 6);
        v33 = a1[5];
        v26 = &_dispatch_main_q;
        [v15 shiftLatLng:v22 accuracy:v35 withCompletionHandler:0 mustGoToNetworkCallback:v32 errorHandler:&_dispatch_main_q callbackQueue:v25];

        objc_destroyWeak(&v34);
        objc_destroyWeak(&v38);

        goto LABEL_10;
      }
    }

    else
    {
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100F3F818;
    v28[3] = &unk_10165DEA0;
    objc_copyWeak(&v31, a1 + 6);
    v29 = v7;
    v30 = a1[5];
    dispatch_async(&_dispatch_main_q, v28);

    v27 = &v31;
LABEL_9:
    objc_destroyWeak(v27);
  }

LABEL_10:
}

void sub_100017FB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

uint64_t sub_100017FE8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 _backlightLuminance];
  v5 = [v3 _backlightLuminance];

  if (v4 == -1)
  {
    return 0;
  }

  v7 = v4 == 2 && v5 == 1;
  v8 = v5 == 2 && v4 == 1;
  result = 1;
  if (!v8)
  {
    if (v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5 == 1;
    }

    v11 = v10;
    if (v4 == 1 && v5 == 0)
    {
      v11 = 1;
    }

    if (v7)
    {
      return 1;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

void sub_100018348(id a1)
{
  v1 = objc_alloc_init(CustomSearchManager);
  v2 = qword_10195CBD8;
  qword_10195CBD8 = v1;
}

void sub_1000188D0(id a1)
{
  v1 = objc_alloc_init(MapsOfflineUIHelper);
  v2 = qword_10195E7E0;
  qword_10195E7E0 = v1;
}

void sub_100018B80(id a1)
{
  v1 = os_log_create("com.apple.Maps", "StatusIndicator");
  v2 = qword_10195D650;
  qword_10195D650 = v1;
}

id sub_100018D38()
{
  if (qword_10195CBB8 != -1)
  {
    dispatch_once(&qword_10195CBB8, &stru_101623128);
  }

  v1 = qword_10195CBB0;

  return v1;
}

void sub_100019410(uint64_t a1)
{
  [PPTNotificationCenter setEnabled:1];
  v3 = [*(a1 + 32) mainVKMapView];
  v2 = +[UIApplication sharedApplication];
  [_MapsApplicationDelegateTestingCoordinator doPostLauchTestSetupWithMapView:v3 mapsAppTesting:v2];
}

double sub_100019A44()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = _UISolariumEnabled();
  result = 10.0;
  if (v2)
  {
    result = 16.0;
  }

  v4 = 13.0;
  if (v2)
  {
    v4 = 8.0;
  }

  if (v1 == 5)
  {
    return v4;
  }

  return result;
}

id sub_100019CDC()
{
  if (qword_10195F368 != -1)
  {
    dispatch_once(&qword_10195F368, &stru_101655E80);
  }

  v1 = qword_10195F360;

  return v1;
}

uint64_t *sub_10001A848(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_10001B770(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10001B7B8()
{
  v1 = sub_1000CE6B8(&qword_101922F58);
  __chkstk_darwin(v1 - 8);
  v46 = &v46 - v2;
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_recenterButton] = 0;
  *&v0[OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_host] = 0;
  v0[OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_isHidden] = 0;
  v9 = type metadata accessor for IOSRecenterButtonOverlay();
  v51.receiver = v0;
  v51.super_class = v9;
  v10 = objc_msgSendSuper2(&v51, "init");
  sub_100014C84(0, &unk_101922F60);
  sub_100014C84(0, &unk_101923740);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = v10;
  v52.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v12.super.super.super.super.isa = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v52).super.super.super.super.isa;
  v13 = OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_recenterButton;
  v14 = *&v11[OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_recenterButton];
  *&v11[OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_recenterButton] = v12;
  v15 = v12.super.super.super.super.isa;

  [(objc_class *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = *&v11[v13];
  if (!v16)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = qword_101906768;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v53._object = 0x800000010123AB50;
  v19._countAndFlagsBits = 0x7265746E65636552;
  v20._object = 0x800000010123AB30;
  v53._countAndFlagsBits = 0xD000000000000057;
  v20._countAndFlagsBits = 0xD000000000000015;
  v19._object = 0xE800000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, qword_1019600D8, v19, v53);
  v21 = String._bridgeToObjectiveC()();

  [v18 setAccessibilityLabel:v21];

  v22 = *&v11[v13];
  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = [v22 layer];
  [v23 setCornerRadius:30.0];

  v24 = *&v11[v13];
  if (!v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = [v24 layer];
  LODWORD(v26) = 1045220557;
  [v25 setShadowOpacity:v26];

  v27 = *&v11[v13];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = [v27 layer];
  [v28 setShadowOffset:{0.0, 0.0}];

  v29 = *&v11[v13];
  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = [v29 layer];
  [v30 setShadowRadius:1.0];

  v31 = *&v11[v13];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = [v31 layer];
  [v32 setShadowPathIsBounds:1];

  v33 = *&v11[v13];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v33 _setTouchInsets:{-8.0, -8.0, -8.0, -8.0}];
  static UIButton.Configuration.borderless()();
  v34 = [objc_opt_self() configurationWithPointSize:5 weight:22.0];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v35 = String._bridgeToObjectiveC()();
  v36 = [objc_opt_self() colorNamed:v35];

  v37 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v37(v50, 0);
  v38 = *&v11[v13];
  if (!v38)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = [v38 layer];
  [v39 cornerRadius];

  v40 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v40(v50, 0);
  (*(v48 + 104))(v47, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v49);
  UIButton.Configuration.cornerStyle.setter();
  v41 = String._bridgeToObjectiveC()();
  v42 = [objc_opt_self() _systemImageNamed:v41];

  UIButton.Configuration.image.setter();
  v43 = *&v11[v13];
  if (v43)
  {
    v44 = v46;
    (*(v6 + 16))(v46, v8, v5);
    (*(v6 + 56))(v44, 0, 1, v5);
    v45 = v43;
    UIButton.configuration.setter();

    (*(v6 + 8))(v8, v5);
    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_10001BED0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10001BFB4()
{
  v1 = OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_recenterButton;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_recenterButton);
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v2 removeFromSuperview];
  v3 = *(v0 + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_host);
  if (!v3)
  {
    return;
  }

  v4 = [swift_unknownObjectRetain() layoutGuideForOverlay:v0];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 overlayContentView];
    if (*(v0 + v1))
    {
      v7 = v6;
      [v6 addSubview:?];
      sub_1000CE6B8(&qword_101908400);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1011E5C00;
      v9 = *(v0 + v1);
      if (v9)
      {
        v10 = [v9 widthAnchor];
        v11 = [v10 constraintEqualToConstant:60.0];

        *(v8 + 32) = v11;
        v12 = *(v0 + v1);
        if (v12)
        {
          v13 = [v12 heightAnchor];
          v14 = [v13 constraintEqualToConstant:60.0];

          *(v8 + 40) = v14;
          v15 = *(v0 + v1);
          if (v15)
          {
            v16 = [v15 leadingAnchor];
            v17 = [v5 leadingAnchor];
            v18 = [v16 constraintEqualToAnchor:v17];

            *(v8 + 48) = v18;
            v19 = *(v0 + v1);
            if (v19)
            {
              v20 = [v19 bottomAnchor];
              v21 = [v5 bottomAnchor];
              v22 = [v20 constraintEqualToAnchor:v21];

              *(v8 + 56) = v22;
              v23 = objc_opt_self();
              sub_100014C84(0, &qword_10190B720);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v23 activateConstraints:isa];
              swift_unknownObjectRelease();

              return;
            }

LABEL_21:
            __break(1u);
            return;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_unknownObjectRelease();
}

void sub_10001C334(id a1)
{
  v1 = [[MapsLightLevelController alloc] initWithWindowScene:0];
  v2 = qword_10195DC18;
  qword_10195DC18 = v1;
}

id sub_10001C3F0()
{
  if (qword_10195F700 != -1)
  {
    dispatch_once(&qword_10195F700, &stru_10165D410);
  }

  v1 = qword_10195F6F8;

  return v1;
}

void sub_10001C444(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195EDF8;
  qword_10195EDF8 = v1;
}

void sub_10001C480(id a1)
{
  v1 = os_log_create("com.apple.Maps", "LightLevelProviding");
  v2 = qword_10195D2D0;
  qword_10195D2D0 = v1;
}

void sub_10001CCA8(id a1)
{
  v1 = objc_alloc_init(MapsPinsController);
  v2 = qword_10195E608;
  qword_10195E608 = v1;
}

id sub_10001CDEC()
{
  if (qword_10195DD38 != -1)
  {
    dispatch_once(&qword_10195DD38, &stru_10162ED28);
  }

  v1 = qword_10195DD30;

  return v1;
}

void sub_10001CE40(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ActionCoordinator");
  v2 = qword_10195DD30;
  qword_10195DD30 = v1;
}

void sub_10001D394(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_10001D4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001D5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001D74C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_10001D858()
{
  if (qword_10195D658 != -1)
  {
    dispatch_once(&qword_10195D658, &stru_1016298E0);
  }

  v1 = qword_10195D650;

  return v1;
}

void sub_10001DAC0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ChromeContextCoordination");
  v2 = qword_10195CBB0;
  qword_10195CBB0 = v1;
}

void sub_10001DD38(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained view];
    v6 = [v5 window];
    v7 = [v6 windowScene];

    if (v7)
    {
      v8 = [v4 mapView];

      if (v8)
      {
        v9 = [v12 object];
        if (v9 == v7)
        {
          v10 = +[NSDate date];
          v11 = v4[39];
          v4[39] = v10;
        }
      }
    }
  }
}

void sub_10001E538(uint64_t a1)
{
  v2 = [*(a1 + 32) carSessionStatus];
  v3 = [v2 currentSession];

  if (v3)
  {
    v4 = [*(a1 + 32) mapsSuggestionsController];

    if (!v4)
    {
      v5 = objc_opt_new();
      [*(a1 + 32) setMapsSuggestionsController:v5];
    }
  }
}

id sub_10001EA64()
{
  if (qword_10195F190 != -1)
  {
    dispatch_once(&qword_10195F190, &stru_101654120);
  }

  v1 = qword_10195F188;

  return v1;
}

void sub_10001EAB8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFPuckModeCircleView");
  v2 = qword_10195F188;
  qword_10195F188 = v1;
}

void sub_10001F03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001F628(id a1, NSXPCListenerEndpoint *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000082AC;
  block[3] = &unk_101661B18;
  v4 = a2;
  v2 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10001F6BC(id a1, NSXPCListenerEndpoint *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008304;
  block[3] = &unk_101661B18;
  v4 = a2;
  v2 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10001F760(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _createAuxiliaryTasksIfNecessaryForPreference:1];
}

void sub_10001F9FC(id a1)
{
  v1 = qword_10195CEB8;
  qword_10195CEB8 = &off_1016EC878;
}

id sub_10001FA1C()
{
  if (qword_10195CEC8 != -1)
  {
    dispatch_once(&qword_10195CEC8, &stru_101625DB0);
  }

  v1 = qword_10195CEC0;

  return v1;
}

void sub_10001FA70(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavigationSettingsMonitor");
  v2 = qword_10195CEC0;
  qword_10195CEC0 = v1;
}

id sub_1000207C4()
{
  if (qword_10195D3D8 != -1)
  {
    dispatch_once(&qword_10195D3D8, &stru_1016293E0);
  }

  v1 = qword_10195D3D0;

  return v1;
}

void sub_100020818(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PreferencesSync");
  v2 = qword_10195D3D0;
  qword_10195D3D0 = v1;
}

void sub_100020A50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = +[NSNull null];

        if (v13 == v6)
        {
          [v12 removeObjectForKey:v5];
        }

        else
        {
          [v12 setObject:v6 forKey:v5];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

id sub_100020C94(void *a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_audioKey];
  *v7 = 0xD000000000000023;
  v7[1] = 0x800000010121FF00;
  v8 = &v3[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_persistedConfigurationKey];
  *v8 = 0xD000000000000019;
  v8[1] = 0x800000010121FE10;
  v3[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_isApplyingConfiguration] = 0;
  *&v3[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_initialGuidanceConfiguration] = 0;
  v3[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userModifiedConfigurationDuringNavigation] = 0;
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userDefaults] = a2;
  *&v3[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_audioPreferences] = a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for NavigationAlertsOnlyOverrideSynchronizationTask();
  v9 = a2;
  v10 = a3;
  v11 = objc_msgSendSuper2(&v15, "init");
  sub_100020E98();

  v12 = String._bridgeToObjectiveC()();

  [v9 addObserver:v11 forKeyPath:v12 options:1 context:{0, v15.receiver, v15.super_class}];

  v13 = [objc_opt_self() defaultCenter];
  [v13 addObserver:v11 selector:"applicationWillTerminate" name:UIApplicationWillTerminateNotification object:0];

  return v11;
}

void sub_100020E98()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 dataForKey:v2];

  if (!v3)
  {
    if (qword_101906590 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100021540(v8, qword_10190DC18);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "There was no persisted configuration, will continue regular setup", v11, 2u);
    }

    goto LABEL_7;
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_10017A658();
  type metadata accessor for NavigationModeGuidanceConfiguration();
  v7 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v12 = v7;
  if (!v7)
  {
    if (qword_101906590 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100021540(v20, qword_10190DC18);
    sub_10017A6A4(v4, v6);
    v9 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_1000D41B4(v4, v6);
    if (!os_log_type_enabled(v9, v21))
    {

      sub_1000D41B4(v4, v6);
      goto LABEL_15;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29 = v23;
    *v22 = 136315138;
    sub_10017A6A4(v4, v6);
    v24 = Data.description.getter();
    v26 = v25;
    sub_1000D41B4(v4, v6);
    v27 = sub_10004DEB8(v24, v26, &v29);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v9, v21, "Failed to unarchive persisted configuration: %s", v22, 0xCu);
    sub_10004E3D0(v23);

    sub_1000D41B4(v4, v6);
LABEL_7:

    goto LABEL_15;
  }

  if (qword_101906590 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100021540(v13, qword_10190DC18);
  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v12;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "Task was launched and we've detected a configuration: %@ from previous app session. Will apply it.", v17, 0xCu);
    sub_100024F64(v18, &qword_1019144F0);
  }

  sub_100179190(v14);
  sub_1000D41B4(v4, v6);

LABEL_15:
  v28 = String._bridgeToObjectiveC()();
  [v1 setURL:0 forKey:v28];
}

uint64_t sub_100021498()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10190DC18);
  sub_100021540(v0, qword_10190DC18);
  type metadata accessor for NavigationAlertsOnlyOverrideSynchronizationTask();
  sub_1000CE6B8(&qword_10190DD38);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100021540(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100021578(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100021630(id a1)
{
  v1 = [[TrafficIncidentLayoutManager alloc] initWithFormType:7];
  v2 = qword_10195EBC8;
  qword_10195EBC8 = v1;
}

void sub_1000216C8(id a1)
{
  v1 = objc_alloc_init(TrafficIncidentLayoutStorage);
  v2 = qword_10195D248;
  qword_10195D248 = v1;
}

id sub_10002171C()
{
  if (qword_10195D528 != -1)
  {
    dispatch_once(&qword_10195D528, &stru_101629680);
  }

  v1 = qword_10195D520;

  return v1;
}

void sub_100021770(id a1)
{
  v1 = os_log_create("com.apple.Maps", "IncidentsReporting");
  v2 = qword_10195D520;
  qword_10195D520 = v1;
}

void sub_100021808(id a1)
{
  v1 = objc_alloc_init(TrafficIncidentAuthenticationManager);
  v2 = qword_10195E8F8;
  qword_10195E8F8 = v1;
}

void sub_10002198C(id a1)
{
  v1 = objc_alloc_init(TrafficIncidentsStorageManager);
  v2 = qword_10195CAF0;
  qword_10195CAF0 = v1;
}

void sub_100021D38(uint64_t a1)
{
  v2 = +[DCAppAttestService sharedService];
  *(*(a1 + 32) + 8) = [v2 isSupported];

  v3 = [*(a1 + 40) submissionManager];
  [v3 addObserver:*(a1 + 32)];
}

id sub_100021DB0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = v4[2](v4, *(*(&v15 + 1) + 8 * i), v9);
          if (v12)
          {
            [v5 addObject:{v12, v15}];
          }

          ++v9;
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

void sub_100022014(id a1)
{
  v1 = objc_alloc_init(RAPRecordManagerTrafficIncidentReportSaver);
  v2 = qword_10195E238;
  qword_10195E238 = v1;
}

void sub_1000224A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

id sub_1000224F8()
{
  if (qword_10195D778 != -1)
  {
    dispatch_once(&qword_10195D778, &stru_101629B20);
  }

  v1 = qword_10195D770;

  return v1;
}

void sub_10002254C(id a1)
{
  v1 = +[NRPairedDeviceRegistry sharedInstance];
}

void sub_100022580(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CompanionController");
  v2 = qword_10195D770;
  qword_10195D770 = v1;
}

void sub_100022734(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = sub_1000224F8();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (WeakRetained)
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "XPC connection invalidated; clearing connection ivar: %@", &v6, 0xCu);
    }

    v4 = WeakRetained[2];
    WeakRetained[2] = 0;
  }

  else if (v5)
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "XPC connection invalidated; NanoCompanionController is gone: %@", &v6, 0xCu);
  }
}

void sub_1000228A0(id a1)
{
  v1 = objc_alloc_init(RAPWebBundleConfigurationManager);
  v4 = [(RAPWebBundleConfigurationManager *)v1 configuration];

  v2 = [[RAPWebBundleDownloadManager alloc] initWithConfiguration:v4];
  v3 = qword_10195F298;
  qword_10195F298 = v2;
}

void sub_100022AE8(uint64_t a1)
{
  if (MapsFeature_IsEnabled_EVRouting())
  {
    IsEnabled_Alberta = 1;
  }

  else
  {
    IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
  }

  v3 = sub_100022C48();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (IsEnabled_Alberta)
    {
      v4 = @"will";
    }

    else
    {
      v4 = @"won't";
    }

    if (MapsFeature_IsEnabled_EVRouting())
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = v5;
    if (MapsFeature_IsEnabled_Alberta())
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = v7;
    v10 = 138412802;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_setupVirtualGarageIfNeeded %@ launch VG logic. evRoutingEnabled: %@, albertaEnabled: %@", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUsesVirtualGarage:IsEnabled_Alberta];
}

id sub_100022C48()
{
  if (qword_10195D508 != -1)
  {
    dispatch_once(&qword_10195D508, &stru_101629640);
  }

  v1 = qword_10195D500;

  return v1;
}

void sub_100022C9C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VirtualGarage");
  v2 = qword_10195D500;
  qword_10195D500 = v1;
}

id sub_10002325C()
{
  if (qword_10195CB70 != -1)
  {
    dispatch_once(&qword_10195CB70, &stru_101622F78);
  }

  v1 = qword_10195CB68;

  return v1;
}

void sub_1000232B0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarDisplayConfigAuxiliaryTask");
  v2 = qword_10195CB68;
  qword_10195CB68 = v1;
}

uint64_t sub_1000243F0()
{
  result = MapsFeature_IsEnabled_MyPlacesFeatures();
  byte_101960110 = result;
  return result;
}

id FavoriteCollectionHandler.init()()
{
  *&v0[OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_queryContents] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler____lazy_storage____glyphImage] = 1;
  *&v0[OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_modficationCount] = 0;
  v1 = &v0[OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_placeCount];
  *v1 = 0;
  v1[8] = 1;
  v2 = OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_storeSubscriptionTypes;
  sub_100024578();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E1D30;
  *(v3 + 32) = type metadata accessor for CollectionPlaceItem();
  *&v0[v2] = v3;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for FavoriteCollectionHandler();
  v4 = objc_msgSendSuper2(&v7, "init");
  sub_1004CC348();
  type metadata accessor for MapsSyncStore();
  v5 = static MapsSyncStore.sharedStore.getter();
  dispatch thunk of MapsSyncStore.subscribe(_:)();

  _s4Maps25FavoriteCollectionHandlerC14storeDidChangeyySay0A4Sync0aH6ObjectCmGF_0();
  return v4;
}

uint64_t sub_100024578()
{
  v0 = sub_1000CE6B8(&qword_1019083F0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1019083F8;
  }

  else
  {
    v2 = &qword_101908400;
  }

  return sub_1000CE6B8(v2);
}

void sub_1000248C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100024A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _s4Maps25FavoriteCollectionHandlerC14storeDidChangeyySay0A4Sync0aH6ObjectCmGF_0()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CE6B8(&unk_10190D5C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E1D30;
  *(v5 + 56) = &type metadata for Int16;
  *(v5 + 64) = &protocol witness table for Int16;
  *(v5 + 32) = 1;
  static MapsSyncQueryPredicate.withFormat(_:_:)();

  v6 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v7 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v1;
  v10 = v1;
  sub_10020AAE4(0, 0, v4, &unk_10120B4C8, v9);
}

uint64_t sub_100024C0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100024D6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

id sub_100024D88()
{
  if (qword_10195DAC0 != -1)
  {
    dispatch_once(&qword_10195DAC0, &stru_10162C9B0);
  }

  v1 = qword_10195DAB8;

  return v1;
}

void sub_100024DDC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavigationFeedbackEVBadTripCollector");
  v2 = qword_10195DAB8;
  qword_10195DAB8 = v1;
}

void sub_100024F40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

uint64_t sub_100024F64(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000CE6B8(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100024FC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC40;

  return sub_10002517C(a1, v4, v5, v7, v6);
}

uint64_t sub_100025084(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10003B534;

  return v6(a1);
}

uint64_t sub_10002517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_1000252DC, 0, 0);
}

uint64_t sub_1000252DC()
{
  v1 = v0[11];
  type metadata accessor for CollectionPlaceItemRequest();
  v0[13] = CollectionPlaceItemRequest.__allocating_init()();
  v4 = (&async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:) + async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:));
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_100028460;

  return v4(v1);
}

uint64_t sub_1000254D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003AC4C;

  return sub_100025084(a1, v4);
}

void sub_1000257DC(id a1)
{
  v1 = objc_alloc_init(CuratedCollectionSyncManager);
  v2 = qword_10195D0A8;
  qword_10195D0A8 = v1;
}

void sub_100025D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100025DB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    geo_isolate_sync();
  }
}

void *sub_100025E58(void *result)
{
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = sub_10000BDF8();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
LABEL_12:

      *(*(v1[6] + 8) + 24) = 1;
      *(v1[5] + 42) = 0;
      return [v1[5] _dispatchIfNeeded];
    }

    v3 = v1[4];
    if (!v3)
    {
      v8 = @"<nil>";
      goto LABEL_11;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 performSelector:"accessibilityIdentifier"];
      v7 = v6;
      if (v6 && ![v6 isEqualToString:v5])
      {
        v8 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v3, v7];

        goto LABEL_9;
      }
    }

    v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_9:

LABEL_11:
    *buf = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}@] completion handler called", buf, 0xCu);

    goto LABEL_12;
  }

  return result;
}

void sub_1000261A8(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 invalidateIntrinsicContentSize];
}

void sub_1000261EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[MKLocationManager sharedLocationManager];
    v3 = WeakRetained[1];
    WeakRetained[1] = v2;
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsMKLocationManagerAdapter.m";
      v7 = 1026;
      v8 = 37;
      v9 = 2082;
      v10 = "[MapsSuggestionsMKLocationManagerAdapter init]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

id sub_1000263B0(uint64_t a1)
{
  v1 = [*(a1 + 32) collection];
  v2 = [v1 fetchPlaces];

  return v2;
}

id sub_100026868()
{
  if (qword_10195D4E8 != -1)
  {
    dispatch_once(&qword_10195D4E8, &stru_101629600);
  }

  v1 = qword_10195D4E0;

  return v1;
}

void sub_1000268BC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "UserProfile");
  v2 = qword_10195D4E0;
  qword_10195D4E0 = v1;
}

void sub_100026900(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = sub_100026868();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Assigning profile picture to userIcon and notifying observers", v7, 2u);
    }

    objc_storeStrong(WeakRetained + 8, a2);
    [WeakRetained _updateAndNotifyObservers:1];
  }
}

void sub_1000269B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setParkedCarWithMapItem:0 overrideCoordinate:0 referenceFrame:0 vehicleEvent:{kCLLocationCoordinate2DInvalid.latitude, kCLLocationCoordinate2DInvalid.longitude}];
  (*(*(a1 + 32) + 16))();
}

void sub_100026A24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[40] = 0;
  }
}

void sub_100027024(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[24] allKeys];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v19 = *v23;
      obj = v3;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v22 + 1) + 8 * i);
          v8 = [v2[24] objectForKey:v7];
          v9 = objc_opt_new();
          v10 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
            v12 = [[NSString alloc] initWithFormat:@"completedRideIdentifiersAndDates: %@", v8];
            *buf = 136315394;
            v28 = v11;
            v29 = 2112;
            *v30 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
          }

          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100858D84;
          v20[3] = &unk_10162BB50;
          v13 = v9;
          v21 = v13;
          [v8 enumerateKeysAndObjectsUsingBlock:v20];
          v14 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
            v16 = [[NSString alloc] initWithFormat:@"flushedCompletedRideIdentifiersAndDates: %@", v13];
            *buf = 136315394;
            v28 = v15;
            v29 = 2112;
            *v30 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
          }

          [v2[24] setObject:v13 forKey:v7];
        }

        v3 = obj;
        v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v5);
    }

    v17 = +[NSUserDefaults standardUserDefaults];
    [v17 setObject:v2[24] forKey:@"RideBookingCompletedRideIdentifiersAndDates"];
  }

  else
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "RideBookingDataCoordinator.m";
      v29 = 1026;
      *v30 = 140;
      *&v30[4] = 2082;
      *&v30[6] = "[RideBookingDataCoordinator _flushCompletedRideIdentifiersAndDatesMap]_block_invoke";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v17;
  }
}

void sub_100027E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000282CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v17;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v15 = 0;
        if (v4[2](v4, v12, v9, &v15))
        {
          [v5 addObject:v12];
        }

        if (v15)
        {
          break;
        }

        ++v9;
        if (v8 == ++v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

uint64_t sub_100028460(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1004CCA2C;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_100028590;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100028590()
{
  type metadata accessor for MainActor();
  *(v0 + 136) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003AA78, v2, v1);
}

void sub_100028624(uint64_t a1)
{
  v2 = sub_100028730();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138477827;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "updateUserActivity %{private}@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) _mapsUserActivity];
  v5 = [v4 title];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if ((v6 & 1) == 0)
  {
    [v4 setTitle:*(a1 + 32)];
  }

  [v4 becomeCurrent];
  [v4 setNeedsSave:1];
}

id sub_100028730()
{
  if (qword_10195D2F8 != -1)
  {
    dispatch_once(&qword_10195D2F8, &stru_101629220);
  }

  v1 = qword_10195D2F0;

  return v1;
}

void sub_100028784(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsActivity");
  v2 = qword_10195D2F0;
  qword_10195D2F0 = v1;
}

void sub_1000287C8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v10 = sub_10003D9F4();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[MapsOfflineUIHelper] refresh last update for paired date error: %@", &v11, 0xCu);
      }
    }

    else
    {
      objc_storeStrong(WeakRetained + 8, a2);
      [v9[1] lastUpdatedDateForPairedDeviceDidChange:v9[8]];
    }
  }
}

void sub_100028958(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v10 = sub_10003D9F4();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[MapsOfflineUIHelper] refresh last update date error: %@", &v11, 0xCu);
      }
    }

    else
    {
      objc_storeStrong(WeakRetained + 7, a2);
      [v9[1] lastUpdatedDateDidChange:v9[7]];
    }
  }
}

void sub_100029604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029640(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      [WeakRetained setExpiredSubscriptionsCount:{objc_msgSend(v6, "count")}];
    }
  }
}

void sub_1000296B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      [WeakRetained setTotalOfflineDataSize:a2];
    }
  }
}

id sub_100029734()
{
  if (qword_10195F4B0 != -1)
  {
    dispatch_once(&qword_10195F4B0, &stru_101657588);
  }

  v1 = qword_10195F4A8;

  return v1;
}

void sub_100029788(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ChromeContextTransition");
  v2 = qword_10195F4A8;
  qword_10195F4A8 = v1;
}

void sub_100029A5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10002A130(uint64_t a1)
{
  v1 = GEOConfigGetArray();
  if (v1)
  {
    v2 = [GEOSortPriorityMapping sortPriorityMappingFromDefaultsValue:v1];
    if (v2)
    {
      v3 = [PersonalizedItemPriorityFunction priorityFunctionForGEOSortPriorityMapping:v2];
      v4 = qword_10195CC10;
      qword_10195CC10 = v3;
    }
  }

  v19 = [PersonalizedItemPriorityFunctionEntry entryWithPriority:400 sourceType:1 matchBlock:&stru_1016239A0];
  v21[0] = v19;
  v18 = [PersonalizedItemPriorityFunctionEntry entryWithPriority:350 sourceType:1 matchBlock:&stru_1016239C0];
  v21[1] = v18;
  v5 = [PersonalizedItemPriorityFunctionEntry entryWithPriority:350 sourceType:6 sourceSubtype:7];
  v21[2] = v5;
  v6 = [PersonalizedItemPriorityFunctionEntry entryWithPriority:350 sourceType:6 sourceSubtype:9];
  v21[3] = v6;
  v7 = [PersonalizedItemPriorityFunctionEntry entryWithPriority:300 sourceType:3 sourceSubtype:2];
  v21[4] = v7;
  v8 = [PersonalizedItemPriorityFunctionEntry entryWithPriority:300 sourceType:9];
  v21[5] = v8;
  v9 = [PersonalizedItemPriorityFunctionEntry entryWithPriority:250 sourceType:2];
  v21[6] = v9;
  v10 = [PersonalizedItemPriorityFunctionEntry entryWithPriority:200 sourceType:3 sourceSubtype:1];
  v21[7] = v10;
  [PersonalizedItemPriorityFunctionEntry entryWithPriority:150 sourceType:8];
  v11 = v17 = v1;
  v21[8] = v11;
  v12 = [PersonalizedItemPriorityFunctionEntry entryWithPriority:100 sourceType:1];
  v21[9] = v12;
  v13 = [PersonalizedItemPriorityFunctionEntry defaultEntryWithPriority:200];
  v21[10] = v13;
  v14 = [NSArray arrayWithObjects:v21 count:11];

  v15 = [objc_alloc(*(a1 + 32)) initWithEntries:v14];
  v16 = qword_10195CC18;
  qword_10195CC18 = v15;
}

void sub_10002A654(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 77);
  if (v3)
  {
    v4 = &__NSArray0__struct;
  }

  else
  {
    v4 = [*(v2 + 40) copy];
  }

  v5 = v4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if ((v3 & 1) == 0)
  {
  }
}

void sub_10002A7CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 77);
  if (v3)
  {
    v4 = &__NSArray0__struct;
  }

  else
  {
    v4 = [*(v2 + 48) copy];
  }

  v5 = v4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if ((v3 & 1) == 0)
  {
  }
}

id sub_10002A8B8()
{
  if (qword_10195D2A8 != -1)
  {
    dispatch_once(&qword_10195D2A8, &stru_101629180);
  }

  v1 = qword_10195D2A0;

  return v1;
}

void sub_10002A90C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ContainerVC");
  v2 = qword_10195D2A0;
  qword_10195D2A0 = v1;
}

uint64_t sub_10002B22C()
{
  if (GEOConfigGetBOOL())
  {
    return 1;
  }

  result = GEOConfigGetBOOL();
  if (result)
  {
    result = [objc_opt_self() sharedPlatform];
    if (result)
    {
      v1 = result;
      v2 = [result isInternalInstall];

      if (v2)
      {
        return 0;
      }

      else
      {
        return GEOConfigGetBOOL() ^ 1;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10002B624(id a1)
{
  objc_addLoadImageFunc(sub_10002B680);
  v1 = [NSMapTable mapTableWithKeyOptions:256 valueOptions:0];
  v2 = qword_10195E838;
  qword_10195E838 = v1;
}

void sub_10002B694(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsProtocolConformance");
  v2 = qword_10195E850;
  qword_10195E850 = v1;
}

id sub_10002B7E8(uint64_t a1)
{
  [*(a1 + 32) prepare];
  [*(a1 + 32) animate];
  v2 = *(a1 + 32);

  return [v2 complete:1];
}

void sub_10002B830(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_10002CAFC(id a1)
{
  v1 = _os_feature_enabled_impl();
  v2 = 9.0;
  if (v1)
  {
    v2 = 24.0;
  }

  qword_10195DFA8 = *&v2;
}

void sub_10002CECC(void *a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [a1 uniqueName];
    v4 = NSStringFromMapsSuggestionsCurrentBestLocation();
    *buf = 138412802;
    v13 = v3;
    v14 = 2112;
    v15 = @"ALL";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", buf, 0x20u);
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [a1 uniqueName];
    *buf = 138412546;
    v13 = v6;
    v14 = 2080;
    v15 = "_updateRideBookingRideStatuses";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_updateRideBookingRideStatuses", "", buf, 2u);
  }

  v8 = a1;
  objc_sync_enter(v8);
  [v8 setRefreshing:1];
  objc_sync_exit(v8);

  objc_initWeak(buf, v8);
  v9 = v8[5];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D180;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v11, buf);
  dispatch_async(v9, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void sub_10002D180(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[6] updateRideStatusMap];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsRidesharingSource.m";
      v6 = 1026;
      v7 = 186;
      v8 = 2082;
      v9 = "[MapsSuggestionsRidesharingSource _updateRideBookingRideStatuses]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

char *sub_10002DD14()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC4Maps21MapScaleChromeOverlay_host] = 0;
  v2 = [objc_opt_self() scaleViewWithMapView:0];
  *&v0[OBJC_IVAR____TtC4Maps21MapScaleChromeOverlay_scaleView] = v2;
  v0[OBJC_IVAR____TtC4Maps21MapScaleChromeOverlay_isHidden] = 0;
  *&v0[OBJC_IVAR____TtC4Maps21MapScaleChromeOverlay_scaleVisibility] = 0;
  v3 = v2;
  if (_UISolariumEnabled())
  {
    v4 = xmmword_1011E1D30;
  }

  else
  {
    [PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v3);
    v4 = xmmword_1011FCCA0;
  }

  *&v0[OBJC_IVAR____TtC4Maps21MapScaleChromeOverlay_positioning] = v4;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, "init");
  v6 = *&v5[OBJC_IVAR____TtC4Maps21MapScaleChromeOverlay_positioning + 8];
  v7 = v5;
  [v3 setLegendAlignment:v6];
  [v3 setScaleVisibility:0];

  return v7;
}

void sub_10002DE9C()
{
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + OBJC_IVAR____TtC4Maps21MapScaleChromeOverlay_scaleView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong mapView];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  [v1 setMapView:v3];
}

void sub_10002DFCC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC4Maps21MapScaleChromeOverlay_host;
  v3 = *(v0 + OBJC_IVAR____TtC4Maps21MapScaleChromeOverlay_host);
  if (v3)
  {
    v4 = [v3 overlayContentView];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC4Maps21MapScaleChromeOverlay_scaleView);
  v6 = [v5 superview];
  v7 = v6;
  if (v4)
  {
    if (v6)
    {
      sub_1001F4AE8();
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }

      goto LABEL_12;
    }

    v7 = v4;
  }

  else if (!v6)
  {
    return;
  }

LABEL_12:
  [v5 removeFromSuperview];
  v9 = *(v1 + v2);
  if (v9)
  {
    v10 = [v9 overlayContentView];
    v11 = *(v1 + v2);
    if (v11 && (v12 = [v11 layoutGuideForOverlay:v1]) != 0)
    {
      v13 = v12;
      [v10 addSubview:v5];
      [v10 sendSubviewToBack:v5];
      type metadata accessor for EdgeLayout();
      v14 = v5;
      v15 = v13;
      v17 = EdgeLayout.__allocating_init(item:container:)();
      if (_UISolariumEnabled() && [PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v14))
      {
        dispatch thunk of EdgeLayout.insets.setter();
      }

      dispatch thunk of EdgeLayout.edges.setter();
      ConstraintLayout.activate()();

      v16 = v17;
    }

    else
    {
      v16 = v10;
    }
  }
}

id sub_10002E398(void *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [a1 objectForKeyedSubscript:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = objc_opt_class();
      v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
      v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v2 error:0];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *sub_10002E640(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_observers;
  *&v2[v4] = [objc_allocWithZone(NSHashTable) init];
  v5 = OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_weatherService;
  type metadata accessor for WeatherService();
  *&v2[v5] = WeatherService.__allocating_init()();
  *&v2[OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_weatherConditions] = 0;
  *&v2[OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_currentLocaleBlockObserver] = 0;
  *&v2[OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_updatingTimer] = 0;
  *&v2[OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_lastSavedLocation] = 0;
  v2[OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_enabled] = 1;
  *&v2[OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_traitEnvironment] = a1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for WeatherConditionsDataProvider();
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v16, "init");
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  v10 = [objc_opt_self() mainQueue];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = sub_100391E58;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1004DFC88;
  v15[3] = &unk_101614D80;
  v12 = _Block_copy(v15);

  v13 = [v9 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v10 usingBlock:v12];
  swift_unknownObjectRelease();
  _Block_release(v12);

  *&v8[OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_currentLocaleBlockObserver] = v13;
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_10002E888()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10002E924()
{
  if (qword_10195D408 != -1)
  {
    dispatch_once(&qword_10195D408, &stru_101629440);
  }

  v1 = qword_10195D400;

  return v1;
}

void sub_10002E978(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RAPSubmission");
  v2 = qword_10195D400;
  qword_10195D400 = v1;
}

uint64_t sub_10002EA50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EA60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EA70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EA80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EA90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EAA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EAB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EAC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EAD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EAE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EAF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EB00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EB10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EB20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EB30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EB40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EB50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EB60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EB80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EB90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EBA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EBB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EBC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EBD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EBF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EC00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EC10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EC20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EC30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EC40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EC50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EC60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EC70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EC80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EC90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ECA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ECB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ECC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ECD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ECE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ECF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ED00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ED10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ED20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ED30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ED40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ED50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ED60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ED80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002ED90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EDA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EDB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EDC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EDD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EDE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EDF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EE00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EE10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EE20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EE30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EE40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EE50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EE60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EE70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EE80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EE90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EEA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EEB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EEC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EEF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EF00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EF10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EF20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EF30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EF40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EF60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EF80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EF90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EFA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EFB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EFC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EFD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EFE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EFF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F000(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F010(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F070(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F090(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F0C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F0D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F0E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F0F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F1A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F1C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F1D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F1F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F260(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F2A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F2B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F2C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F2D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F2E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F2F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F300(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F340(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F350(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F380(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F390(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F3A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F3B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F3C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F3D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F3E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F3F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10002F418()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_observers;
  *&v1[v2] = [objc_allocWithZone(NSHashTable) init];
  *&v1[OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_airQualityConditions] = 0;
  *&v1[OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_updatingTimer] = 0;
  *&v1[OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_lastSavedLocation] = 0;
  v3 = OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_weatherService;
  type metadata accessor for WeatherService();
  *&v1[v3] = WeatherService.__allocating_init()();
  v1[OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_enabled] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AirQualityConditionsDataProvider();
  return objc_msgSendSuper2(&v5, "init");
}

void sub_10002F5E0(id a1)
{
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Maps" allowPlaceholder:0 error:0];
  v1 = [v3 dataContainerURL];
  v2 = qword_10195CE40;
  qword_10195CE40 = v1;
}

void sub_100030540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL sub_1000306BC(id a1, UIScene *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(UIScene *)v4 session];
  v6 = [v5 role];
  if ([v6 isEqualToString:_UIWindowSceneSessionRoleCarPlay])
  {
    v7 = [(UIScene *)v4 delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

id sub_100030774(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v14 = 0;
          if (v4[2](v4, v11, v8, &v14))
          {
            v12 = v11;
            goto LABEL_15;
          }

          if (v14)
          {
            goto LABEL_12;
          }

          ++v8;
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v12 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_12:
      v12 = 0;
    }

LABEL_15:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_100031460(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained weatherConditions];
    if (!v3)
    {
      goto LABEL_9;
    }

    if (sub_10000FA08(v2) == 5 && (_UISolariumEnabled() & 1) == 0)
    {
      v4 = [UIFont systemFontOfSize:14.0 weight:UIFontWeightMedium];
      v8 = [v4 fontDescriptor];
      v5 = [v8 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

      v6 = [UIFont fontWithDescriptor:v5 size:0.0];
      v9 = [v3 name];
      v10 = [UIImageSymbolConfiguration configurationWithFont:v6];
      v7 = [UIImage systemImageNamed:v9 withConfiguration:v10];
    }

    else
    {
      v4 = [v3 name];
      v5 = [v3 palette];
      v6 = [UIImageSymbolConfiguration configurationWithPaletteColors:v5];
      v7 = [UIImage systemImageNamed:v4 withConfiguration:v6];
    }

    if (!v7)
    {
LABEL_9:
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100031940(id a1)
{
  v1 = [[WeatherSettingsManager alloc] initSharedManager];
  v2 = qword_10195E4F0;
  qword_10195E4F0 = v1;
}

id sub_100032C3C()
{
  if (qword_10195D388 != -1)
  {
    dispatch_once(&qword_10195D388, &stru_101629340);
  }

  v1 = qword_10195D380;

  return v1;
}

void sub_10003335C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavigationBanners");
  v2 = qword_10195D380;
  qword_10195D380 = v1;
}

id sub_100033B24()
{
  if (qword_10195D518 != -1)
  {
    dispatch_once(&qword_10195D518, &stru_101629660);
  }

  v1 = qword_10195D510;

  return v1;
}

void sub_100033B78(id a1)
{
  v1 = os_log_create("com.apple.Maps", "Weather");
  v2 = qword_10195D510;
  qword_10195D510 = v1;
}

void sub_100034E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100035368(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = sub_100022C48();
    v9 = v8;
    if (!v5 || v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[SearchVirtualGarageManager] error getting garage: %@", &v10, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[SearchVirtualGarageManager] got garage", &v10, 2u);
      }

      [WeakRetained setVirtualGarage:v5];
    }
  }
}

void sub_10003549C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = *(WeakRetained + 5);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000357C0;
      v10[3] = &unk_101661A90;
      v10[4] = WeakRetained;
      v11 = v5;
      dispatch_async(v9, v10);
    }
  }

  else
  {
    v8 = sub_100024D88();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed to fetch garage with error: %@", buf, 0xCu);
    }
  }
}

void sub_1000355E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get virtualGarage with error: %@.", buf, 0xCu);
      }
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100035760;
      v11[3] = &unk_1016532F0;
      v8 = v5;
      v12 = v8;
      [WeakRetained _runAsyncBlockOnLocalQueue:v11];
      v9 = [v8 vehicles];
      [WeakRetained _captureVirtualGarageAnalytics:v9];

      v10 = v12;
    }
  }
}

void sub_100035760(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedVehicle];
  v5 = v3[18];
  v3[18] = v4;
}

void sub_1000357C0(uint64_t a1)
{
  v3 = [*(a1 + 40) selectedVehicle];
  v2 = [v3 currentVehicleState];
  [*(a1 + 32) setCurrentVehicleState:v2];
}

double sub_100035D80(void *a1)
{
  v1 = a1;
  if (_UISolariumEnabled())
  {
    if (sub_10000FA08(v1) == 5)
    {
      +[MapsTheme macButtonCornerRadius];
    }

    else
    {
      +[MapsTheme buttonCornerRadius];
    }

    v3 = v2 + v2;
  }

  else
  {
    v3 = 44.0;
  }

  return v3;
}

id sub_100035E6C()
{
  if (qword_10195D378 != -1)
  {
    dispatch_once(&qword_10195D378, &stru_101629320);
  }

  v1 = qword_10195D370;

  return v1;
}

void sub_100035EC0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "Navigation");
  v2 = qword_10195D370;
  qword_10195D370 = v1;
}

uint64_t sub_1000363A8()
{
  result = MapsFeature_IsEnabled_VisitedPlaces();
  byte_1019601D0 = result;
  return result;
}

uint64_t sub_1000363C8(uint64_t result, uint64_t a2)
{
  v2 = a2 == 2;
  v3 = *(result + 32);
  if (*(v3 + 144) != v2)
  {
    *(v3 + 144) = v2;
  }

  return result;
}

id sub_1000366F0()
{
  *&v0[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController] = 0;
  *&v0[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_bottomConstraint] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_constraints] = 0;
  v0[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayHidden] = 0;
  *&v0[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayAlpha] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_animationCount] = 0;
  v1 = &v0[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_containerStyle];
  *v1 = 0;
  v1[8] = 1;
  *&v0[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_host] = 0;
  v0[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_isHidden] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RedoSearchChromeOverlay();
  v2 = objc_msgSendSuper2(&v4, "init");
  sub_100036824(1, 0);

  return v2;
}

void sub_100036824(char a1, char a2)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayHidden;
  if (*(v2 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayHidden) != (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayHidden) = v3;
    *(v2 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_isHidden) = v3;
    v5 = OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController;
    v6 = *(v2 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController);
    if (v6)
    {
      v8 = [v6 view];
      if (v8)
      {
        v9 = v8;
        v10 = *(v2 + v5);
        if (v10)
        {
          v11 = [v10 view];
          if (v11)
          {
            v12 = 0.0;
            if ((*(v2 + v4) & 1) == 0)
            {
              v12 = *(v2 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayAlpha);
            }

            v13 = v11;
            [v11 setAlpha:v12];
          }
        }

        v14 = [objc_allocWithZone(GroupAnimation) init];
        [v14 setAnimated:a2 & 1];
        [v14 setDuration:0.3];
        [v14 setOptions:4];
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *(v16 + 24) = v3;
        *(v16 + 32) = v9;
        v29 = sub_100173F34;
        v30 = v16;
        v25 = _NSConcreteStackBlock;
        v26 = 1107296256;
        v27 = sub_100039C64;
        v28 = &unk_101606DF0;
        v17 = _Block_copy(&v25);
        v18 = v9;

        [v14 addPreparation:v17];
        _Block_release(v17);
        v19 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v29 = sub_100173F44;
        v30 = v19;
        v25 = _NSConcreteStackBlock;
        v26 = 1107296256;
        v27 = sub_100039C64;
        v28 = &unk_101606E18;
        v20 = _Block_copy(&v25);

        [v14 addAnimations:v20];
        _Block_release(v20);
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = v18;
        v29 = sub_100173F4C;
        v30 = v22;
        v25 = _NSConcreteStackBlock;
        v26 = 1107296256;
        v27 = sub_1002ABAC8;
        v28 = &unk_101606E68;
        v23 = _Block_copy(&v25);
        v24 = v18;

        [v14 addCompletion:v23];
        _Block_release(v23);
        [v14 runWithCurrentOptions];
      }
    }
  }
}

uint64_t sub_100036BAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036BEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100036CC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_host);
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController;
  v4 = *(v0 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController);
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    v6 = v5;
    v7 = [v6 parentViewController];
    if (v7)
    {

      [v6 willMoveToParentViewController:0];
      v8 = v6;
      if ([v6 isViewLoaded])
      {
        v8 = [v6 view];

        if (!v8)
        {
          __break(1u);
          return;
        }

        [v8 removeFromSuperview];
      }

      [v6 removeFromParentViewController];
      sub_100173F54();
    }

    else
    {
    }

    v9 = *(v2 + v3);
    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(type metadata accessor for RedoSearchContainerViewController());
  v12 = sub_1000370B4(sub_100174108, v10);
  v13 = *(v2 + v3);
  *(v2 + v3) = v12;

  v9 = *(v2 + v3);
  if (v9)
  {
LABEL_13:
    v14 = v9;
    v27 = [v1 containingViewController];
    [v14 willMoveToParentViewController:?];
    v15 = [v1 overlayContentView];
    v16 = *(v2 + v3);
    if (v16 && (v17 = [v16 view]) != 0)
    {
      v18 = v17;
      v19 = [v17 superview];
      if (!v19 || (v20 = v19, sub_100014C84(0, &qword_10190CA10), v21 = v15, v22 = static NSObject.== infix(_:_:)(), v21, v20, (v22 & 1) == 0))
      {
        [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v15 addSubview:v18];
        sub_10003B82C();
        v21 = v15;
      }
    }

    else
    {
      v18 = v15;
    }

    [v14 didMoveToParentViewController:v27];
    v23 = *(v2 + v3);
    if (v23)
    {
      v24 = [v23 view];
      if (v24)
      {
        v25 = 0.0;
        if ((*(v2 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayHidden) & 1) == 0)
        {
          v25 = *(v2 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayAlpha);
        }

        v26 = v24;
        [v24 setAlpha:v25];
      }
    }

    swift_unknownObjectRelease();

    return;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100037058()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000370B4(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_state] = 1;
  v3 = &v2[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_buttonActionHandler];
  *v3 = 0;
  v3[1] = 0;
  *&v2[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_redoSearchButtonSizeHeight] = 0x4048000000000000;
  *&v2[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_cardView] = 0;
  *&v2[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_constraints] = 0;
  v4 = &v2[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_containerStyle];
  *v4 = 0;
  v4[8] = 1;
  *&v2[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___redoSearchButton] = 0;
  *&v2[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___stackView] = 0;
  *&v2[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___activityIndicator] = 0;
  *v3 = a1;
  v3[1] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for RedoSearchContainerViewController();
  return objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
}

void sub_1000371C4()
{
  v1 = sub_1000CE6B8(&qword_10191BE78);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = type metadata accessor for RedoSearchContainerViewController();
  v24.receiver = v0;
  v24.super_class = v4;
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v5 = [objc_allocWithZone(CardView) initAllowingBlurredForButton:1 buttonBackgroundType:0];
  v6 = *&v0[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_cardView];
  *&v0[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_cardView] = v5;
  v7 = v5;

  if (v7)
  {
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setLayoutStyle:6];
    v8 = [v0 view];
    if (v8)
    {
      v9 = v8;
      [v8 addSubview:v7];

      v10 = [v7 contentView];
      if (v10)
      {
        v11 = v10;
        v12 = v0;
        v13 = sub_10003758C();
        [v11 addSubview:v13];

        v14 = OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___stackView;
        v15 = *&v12[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___stackView];
        v16 = sub_1000375EC();
        [v15 addArrangedSubview:v16];

        v17 = *&v12[v14];
        v18 = sub_1000376BC();
        [v17 addArrangedSubview:v18];

        v19 = OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___redoSearchButton;
        [*&v12[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___redoSearchButton] setHoverStyle:0];
        v20 = *&v12[v14];
        sub_100014C84(0, &unk_10191BE80);
        v21 = v20;
        static UIShape.rect.getter();
        v22 = type metadata accessor for UIShape();
        (*(*(v22 - 8) + 56))(v3, 0, 1, v22);
        v23 = UIHoverStyle.init(shape:)();
        [v21 setHoverStyle:v23];

        [*&v12[v19] addTarget:v12 action:"redoSearchButtonClicked:" forControlEvents:64];
        sub_100037794();
        sub_10003AD50();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_100037498()
{
  v0 = [objc_allocWithZone(UIStackView) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v1];

  [v0 setAxis:0];
  [v0 setSpacing:8.0];
  v2 = v0;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  [v2 setLayoutMarginsRelativeArrangement:1];
  return v2;
}

id sub_10003758C()
{
  v1 = OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___stackView);
  }

  else
  {
    v4 = sub_100037498();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000375EC()
{
  v1 = OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___activityIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___activityIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___activityIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 setAccessibilityIdentifier:v6];

    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1000376BC()
{
  v1 = OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___redoSearchButton;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___redoSearchButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___redoSearchButton);
  }

  else
  {
    v4 = [objc_opt_self() buttonWithType:0];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 setAccessibilityIdentifier:v6];

    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100037794()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_state);
  if (v1 == 2)
  {
    v15 = sub_1000375EC();
    [v15 stopAnimating];

    [*(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___activityIndicator) setHidden:1];
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v40._object = 0x80000001012405B0;
    v16._countAndFlagsBits = 0xD000000000000020;
    v16._object = 0x8000000101240560;
    v17._countAndFlagsBits = 0xD00000000000001ELL;
    v17._object = 0x8000000101240590;
    v40._countAndFlagsBits = 0xD000000000000038;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, qword_1019600D8, v17, v40);
    v18 = sub_1000376BC();
    sub_100377980();
    v19 = objc_allocWithZone(NSAttributedString);
    v20 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_100377E48(&qword_10190EEE0, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v22 = [v19 initWithString:v20 attributes:isa];

    [v18 setAttributedTitle:v22 forState:0];
    v23 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___redoSearchButton);
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 grayColor];
  }

  else
  {
    if (v1 == 1)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v39._object = 0x8000000101240610;
      v2._countAndFlagsBits = 0x6820686372616553;
      v2._object = 0xEB00000000657265;
      v3._object = 0x80000001012405F0;
      v39._countAndFlagsBits = 0xD000000000000027;
      v3._countAndFlagsBits = 0xD00000000000001ALL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v2, v39);
      v4 = sub_1000376BC();
      sub_100377980();
      v5 = objc_allocWithZone(NSAttributedString);
      v6 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100377E48(&qword_10190EEE0, type metadata accessor for Key);
      v7 = Dictionary._bridgeToObjectiveC()().super.isa;

      v8 = [v5 initWithString:v6 attributes:v7];

      [v4 setAttributedTitle:v8 forState:0];
      v9 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___redoSearchButton);
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 labelColor];
      [v11 setTitleColor:v12 forState:0];

      v13 = sub_1000375EC();
      [v13 stopAnimating];

      v14 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___activityIndicator);

      [v14 setHidden:1];
      return;
    }

    if (*(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_state))
    {
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    v27 = sub_1000375EC();
    [v27 setHidden:0];

    [*(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___activityIndicator) startAnimating];
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v41._object = 0x8000000101240660;
    v28._countAndFlagsBits = 0x6E69686372616553;
    v28._object = 0xEE00657265682067;
    v29._countAndFlagsBits = 0xD00000000000001DLL;
    v29._object = 0x8000000101240640;
    v41._countAndFlagsBits = 0xD000000000000037;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, qword_1019600D8, v28, v41);
    v30 = sub_1000376BC();
    sub_100377980();
    v31 = objc_allocWithZone(NSAttributedString);
    v32 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_100377E48(&qword_10190EEE0, type metadata accessor for Key);
    v33 = Dictionary._bridgeToObjectiveC()().super.isa;

    v34 = [v31 initWithString:v32 attributes:v33];

    [v30 setAttributedTitle:v34 forState:0];
    v35 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___redoSearchButton);
    v36 = objc_opt_self();
    v25 = v35;
    v26 = [v36 grayColor];
  }

  v37 = v26;
  [v25 setTitleColor:v37 forState:0];
}

void sub_100037E58(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained cachedCuratedCollections];
  v8 = [v7 isEqualToArray:v10];

  if ((v8 & 1) == 0)
  {
    [WeakRetained setCachedCuratedCollections:v10];
    v9 = [WeakRetained observers];
    [v9 curatedCollectionSyncManagerDidUpdateCachedCollections:WeakRetained];
  }

  if ([v5 count])
  {
    [WeakRetained _cacheSyncedCollections:v5];
  }
}

id sub_100037F3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setHasDefaultImage:1];
  [*(a1 + 32) setCachedImage:v4];

  v5 = *(a1 + 32);

  return [v5 notifyObserversInfoUpdated];
}

id sub_100038318()
{
  if (qword_10195D558 != -1)
  {
    dispatch_once(&qword_10195D558, &stru_1016296E0);
  }

  v1 = qword_10195D550;

  return v1;
}

void sub_10003836C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "WebBundle");
  v2 = qword_10195D550;
  qword_10195D550 = v1;
}

id sub_100038438()
{
  if (qword_10195E968 != -1)
  {
    dispatch_once(&qword_10195E968, &stru_10164C748);
  }

  v1 = qword_10195E960;

  return v1;
}

void sub_10003848C(id a1)
{
  if (qword_10195CFF8 != -1)
  {
    dispatch_once(&qword_10195CFF8, &stru_1016272E0);
  }

  if (byte_10195CFF0 == 1)
  {
    byte_10195E950 = 1;
    v1 = sub_100038438();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 0;
      v2 = "Pedestrian AR is not supported because the current device does not support VLF";
      v3 = &v6;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
    }
  }

  else if ((+[ARGeoTrackingConfiguration isSupported]& 1) != 0)
  {
    v1 = sub_100038438();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 0;
      v2 = "Pedestrian AR is supported on the current device";
      v3 = &v4;
      goto LABEL_11;
    }
  }

  else
  {
    byte_10195E950 = 1;
    v1 = sub_100038438();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v2 = "Pedestrian AR is not supported because the current device does not support geo tracking";
      v3 = buf;
      goto LABEL_11;
    }
  }
}

void sub_1000385BC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARAvailability");
  v2 = qword_10195E960;
  qword_10195E960 = v1;
}

void sub_100038600(uint64_t a1)
{
  if (qword_10195E958 != -1)
  {
    dispatch_once(&qword_10195E958, &stru_10164C728);
  }

  v2 = byte_10195E950;
  v3 = sub_100038720();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v8 = 134349056;
      v9 = v5;
      v6 = "[%{public}p] The current hardware does not support Pedestrian AR";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }
  }

  else if (v4)
  {
    v7 = *(a1 + 32);
    v8 = 134349056;
    v9 = v7;
    v6 = "[%{public}p] Pedestrian AR is supported";
    goto LABEL_8;
  }

  byte_10195D0B8 = v2 ^ 1;
}

id sub_100038720()
{
  if (qword_10195D0D0 != -1)
  {
    dispatch_once(&qword_10195D0D0, &stru_101627D00);
  }

  v1 = qword_10195D0C8;

  return v1;
}

void sub_100038774(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionTask");
  v2 = qword_10195D0C8;
  qword_10195D0C8 = v1;
}

Class sub_100038868(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

char *sub_1000388D8()
{
  swift_beginAccess();

  v1 = sub_100038944(v0);

  return v1;
}

char *sub_10003895C(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v15 = _swiftEmptyArrayStorage;
  result = sub_100511184(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        a2(0);
        swift_dynamicCast();
        v15 = v5;
        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          sub_100511184((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        v5[2] = v9 + 1;
        sub_1000D2BE0(v14, &v5[4 * v9 + 4]);
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          sub_100511184((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        v5[2] = v13 + 1;
        sub_1000D2BE0(v14, &v5[4 * v13 + 4]);
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void sub_100038B34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[4] count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v3 = [v2[4] allValues];
      v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v27;
        do
        {
          v7 = 0;
          v25 = v5;
          do
          {
            if (*v27 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v26 + 1) + 8 * v7);
            if ([v8 enabled])
            {
              [v2 _updateRideStatusMapForApplication:v8];
            }

            else
            {
              v9 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
              {
                v10 = v6;
                v11 = v2;
                v12 = v3;
                v13 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
                v14 = [NSString alloc];
                v15 = NSStringFromSelector(*(a1 + 40));
                v16 = [v8 identifier];
                v17 = [v14 initWithFormat:@"%@, Application %@ is not enabled", v15, v16];
                *buf = 136315394;
                v32 = v13;
                v3 = v12;
                v2 = v11;
                v6 = v10;
                v33 = 2112;
                *v34 = v17;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);

                v5 = v25;
              }

              v18 = v2[23];
              v19 = [v8 identifier];
              [v18 removeObjectForKey:v19];

              [v2 _broadcastRideStatusDidChange];
            }

            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v5);
      }
    }

    else
    {
      v21 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/RideBookingDataCoordinator.m");
        v23 = [[NSString alloc] initWithFormat:@"No Ridebooking applications exist on this device. Broadcasting so and returning."];
        *buf = 136315394;
        v32 = v22;
        v33 = 2112;
        *v34 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }

      [v2 _broadcastRideStatusDidChange];
    }
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v32 = "RideBookingDataCoordinator.m";
      v33 = 1026;
      *v34 = 841;
      *&v34[4] = 2082;
      *&v34[6] = "[RideBookingDataCoordinator updateRideStatusMap]_block_invoke";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

id sub_100039B58(uint64_t a1)
{
  [MapsAnalyticStateProvider updateMapSettingsInformationLabels:*(a1 + 32) traffic:*(a1 + 33)];

  return +[MapsAnalyticStateProvider updateSettingsInformation];
}

id sub_100039BA8(id a1, SEL a2)
{
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CE6B8(&unk_10190D5C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E1D30;
  *(v2 + 56) = &type metadata for Int16;
  *(v2 + 64) = &protocol witness table for Int16;
  *(v2 + 32) = 6;
  v3 = static MapsSyncQueryPredicate.withFormat(_:_:)();

  return v3;
}

uint64_t sub_100039C64(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100039CA8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for MapsSyncStore();
    v5 = static MapsSyncStore.sharedStore.getter();
    v6 = v4;
    dispatch thunk of MapsSyncStore.subscribe(_:)();

    sub_10004A4E0(a2);
    sub_10004A634(1);
  }
}

id sub_100039D48()
{
  if (qword_10195E190 != -1)
  {
    dispatch_once(&qword_10195E190, &stru_101631EF8);
  }

  v1 = qword_10195E188;

  return v1;
}

void sub_100039EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CollectionPlaceItem.updatedMapItemStorage()()
{
  v1 = [v0 mapItemStorage];
  if (v1)
  {
    v2 = [v0 customName];
    if (v2)
    {
      v3 = v2;
      v4 = [v1 userValues];
      if (!v4)
      {
        v5 = [objc_allocWithZone(GEOMapItemStorageUserValues) init];
        [v1 setUserValues:v5];
        v4 = v5;
      }

      v6 = [v1 userValues];
      [v6 setName:v3];
    }
  }

  return v1;
}

id sub_10003A5B0(id a1, SEL a2)
{
  v2 = a1;
  v3 = CollectionPlaceItem.updatedMapItemStorage()();

  return v3;
}

uint64_t sub_10003AA78()
{
  v1 = v0[16];
  v2 = v0[12];

  v3 = OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_queryContents;
  swift_beginAccess();
  *(v2 + v3) = v1;

  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v0[12];
  v7 = &v6[OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_placeCount];
  *v7 = v5;
  v7[8] = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v0[6] = sub_1004CE09C;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100038868;
  v0[5] = &unk_10161DE28;
  v9 = _Block_copy(v0 + 2);
  v10 = v6;

  [v10 rebuildContent:v9];
  _Block_release(v9);
  v11 = v0[1];

  return v11();
}

uint64_t sub_10003ABF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AC4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10003AD50()
{
  v1 = OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_constraints;
  if (!*&v0[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_constraints])
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v73.origin.x = v4;
    v73.origin.y = v6;
    v73.size.width = v8;
    v73.size.height = v10;
    CGRectGetWidth(v73);
    v11 = *&v0[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_cardView];
    if (v11)
    {
      sub_1000CE6B8(&qword_101908400);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1011E5C00;
      v13 = v11;
      v14 = [v13 topAnchor];
      v15 = [v0 view];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 topAnchor];

        v18 = [v14 constraintEqualToAnchor:v17];
        *(v12 + 32) = v18;
        v19 = [v13 leadingAnchor];
        v20 = [v0 view];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 leadingAnchor];

          v23 = [v19 constraintEqualToAnchor:v22];
          *(v12 + 40) = v23;
          v24 = [v13 trailingAnchor];
          v25 = [v0 view];
          if (v25)
          {
            v26 = v25;
            v27 = [v25 trailingAnchor];

            v28 = [v24 constraintEqualToAnchor:v27];
            *(v12 + 48) = v28;
            v29 = [v13 bottomAnchor];
            v30 = [v0 view];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 bottomAnchor];

              v33 = [v29 constraintEqualToAnchor:v32];
              *(v12 + 56) = v33;
              v72 = v12;
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_101206BB0;
              v35 = [v13 heightAnchor];

              v36 = [v35 constraintEqualToConstant:48.0];
              *(inited + 32) = v36;
              v37 = v0;
              v38 = sub_10003758C();
              v39 = [v38 leadingAnchor];

              v40 = [v13 contentView];
              if (v40)
              {
                v41 = v40;
                v42 = [v40 leadingAnchor];

                v43 = [v39 constraintEqualToAnchor:v42];
                *(inited + 40) = v43;
                v44 = OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___stackView;
                v45 = [*&v37[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___stackView] trailingAnchor];
                v46 = [v13 contentView];
                if (v46)
                {
                  v47 = v46;
                  v48 = [v46 trailingAnchor];

                  v49 = [v45 constraintEqualToAnchor:v48];
                  *(inited + 48) = v49;
                  v50 = [*&v37[v44] topAnchor];
                  v51 = [v13 contentView];
                  if (v51)
                  {
                    v52 = v51;
                    v53 = [v51 topAnchor];

                    v54 = [v50 constraintEqualToAnchor:v53];
                    *(inited + 56) = v54;
                    v55 = [*&v37[v44] bottomAnchor];
                    v56 = [v13 contentView];
                    if (v56)
                    {
                      v57 = v56;
                      v58 = [v56 bottomAnchor];

                      v59 = [v55 constraintEqualToAnchor:v58];
                      *(inited + 64) = v59;
                      v60 = [*&v37[v44] bottomAnchor];
                      v61 = [v13 contentView];
                      if (v61)
                      {
                        v62 = v61;
                        v63 = [v61 bottomAnchor];

                        v64 = [v60 constraintEqualToAnchor:v63];
                        *(inited + 72) = v64;
                        v65 = sub_1000376BC();
                        v66 = [v65 centerYAnchor];

                        v67 = sub_1000375EC();
                        v68 = [v67 centerYAnchor];

                        v69 = [v66 constraintEqualToAnchor:v68];
                        *(inited + 80) = v69;
                        sub_10003B62C(inited);
                        *&v37[v1] = v72;

                        v70 = objc_opt_self();
                        sub_100014C84(0, &qword_10190B720);
                        isa = Array._bridgeToObjectiveC()().super.isa;

                        [v70 activateConstraints:isa];

                        return;
                      }

LABEL_22:
                      __break(1u);
                      return;
                    }

LABEL_21:
                    __break(1u);
                    goto LABEL_22;
                  }

LABEL_20:
                  __break(1u);
                  goto LABEL_21;
                }

LABEL_19:
                __break(1u);
                goto LABEL_20;
              }

LABEL_18:
              __break(1u);
              goto LABEL_19;
            }

LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_16;
    }
  }
}

uint64_t sub_10003B43C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100248E04(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10003B534()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10003B644(id a1)
{
  v1 = +[RideBookingAccessProxy coordinator];
  [v1 updateRideStatusMap];
}

uint64_t sub_10003B68C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10024A62C(&unk_101915208, &qword_101915200);
          for (i = 0; i != v6; ++i)
          {
            sub_1000CE6B8(&qword_101915200);
            v9 = sub_10012EC14(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100014C84(0, &qword_10190B720);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10003B82C()
{
  v1 = OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_constraints;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_7;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    v3 = objc_opt_self();
    sub_100014C84(0, &qword_10190B720);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 deactivateConstraints:isa];

    v6 = sub_100173740();
    if (*v5)
    {
      *v5 = &_swiftEmptyArrayStorage;
    }

    (v6)(v7, 0);
    *(v0 + v1) = 0;
  }

LABEL_7:
  sub_10003BC64();
}

uint64_t sub_10003BB00(char *a1)
{
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__hasInitialData;
  swift_beginAccess();
  v6 = *&a1[v5];

  os_unfair_lock_lock((v6 + 20));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 20));

  if (v7 == 1)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a1;
    v11 = a1;
    sub_10020AAE4(0, 0, v4, &unk_1011F93F8, v10);
  }

  return result;
}

void sub_10003BC64()
{
  v1 = OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_constraints;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_host);
  if (v3)
  {
    v4 = [v3 layoutGuideForOverlay:v0];
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController);
      if (v6)
      {
        v7 = [v6 view];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 bottomAnchor];
          v10 = [(objc_class *)v5 bottomAnchor];
          v11 = [v9 constraintEqualToAnchor:v10 constant:0.0];

          v12 = *(v0 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_bottomConstraint);
          *(v0 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_bottomConstraint) = v11;
          v13 = v11;

          sub_1000CE6B8(&qword_101908400);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_1011E47C0;
          v15 = [v8 centerXAnchor];
          v16 = [(objc_class *)v5 centerXAnchor];
          v17 = [v15 constraintEqualToAnchor:v16];

          *(v14 + 32) = v17;
          v18 = [v8 bottomAnchor];
          v19 = [(objc_class *)v5 bottomAnchor];
          v20 = [v18 constraintEqualToAnchor:v19];

          *(v14 + 40) = v20;
          *(v14 + 48) = v13;
          *(v0 + v1) = v14;
          v21 = v13;

          v22 = objc_opt_self();
          sub_100014C84(0, &qword_10190B720);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v22 activateConstraints:isa];

          v5 = isa;
        }
      }
    }
  }
}

id sub_10003BF64()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_currentVenue] = 0;
  *&v0[OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_displayedMapType] = 0;
  *&v0[OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_view] = 0;
  *&v0[OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_button] = 0;
  *&v0[OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_host] = 0;
  v0[OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_isHidden] = 1;
  v1 = [objc_allocWithZone(BrowseVenueBusinessController) init];
  *&v0[OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_browseVenueController] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BrowseVenueChromeOverlay();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_10003C020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_10003C0D4(a1, v4, v5, v6);
}

uint64_t sub_10003C0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = a4;
  v5 = swift_task_alloc();
  *(v4 + 176) = v5;
  *v5 = v4;
  v5[1] = sub_1002E5D44;

  return sub_10003C164();
}

uint64_t sub_10003C164()
{
  v0[3] = type metadata accessor for MainActor();
  v0[4] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[5] = v2;
  v0[6] = v1;

  return _swift_task_switch(sub_1002EDB78, v2, v1);
}

char *sub_10003C5F4(char *result)
{
  v2 = (result - 1) < 4 || result == 107;
  v3 = OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_displayedMapType;
  v4 = *(v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_displayedMapType);
  if ((v4 - 1) < 4 || v4 == 107)
  {
    if (v2)
    {
      return result;
    }
  }

  else if (!v2)
  {
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_currentVenue))
    {
      v5 = *(v1 + v3);
      v6 = v5 - 1;
      v7 = v5 != 107;
      v8 = v6 >= 4 && v7;
    }

    else
    {
      v8 = 0;
    }

    [result browseVenueChromeOverlay:v1 didUpdateVisibility:v8];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10003C910()
{
  v1 = OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_view;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_view);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;

    v4 = *(v0 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_button);
    *(v0 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_button) = 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_host);
  if (v5)
  {
    v6 = [swift_unknownObjectRetain() layoutGuideForOverlay:v0];
    if (v6)
    {
      v7 = v6;
      sub_10003CCA0();
      v8 = *(v0 + v1);
      *(v0 + v1) = v9;
      v10 = v9;

      v22 = [v5 overlayContentView];
      [v22 addSubview:v10];
      v11 = objc_opt_self();
      sub_1000CE6B8(&qword_101908400);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1011E47C0;
      v13 = [v10 bottomAnchor];
      v14 = [v7 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];

      *(v12 + 32) = v15;
      v16 = [v10 centerXAnchor];
      v17 = [v7 centerXAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];

      *(v12 + 40) = v18;
      v19 = [v10 heightAnchor];
      v20 = [v19 constraintEqualToConstant:48.0];

      *(v12 + 48) = v20;
      sub_100014C84(0, &qword_10190B720);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v11 activateConstraints:isa];

      [v10 setHidden:*(v0 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_isHidden)];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_10003CCA0()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_10191BE78);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = [objc_allocWithZone(CardView) initAllowingBlurredForButton:1 buttonBackgroundType:0];
  if (v5)
  {
    v6 = v5;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setLayoutStyle:6];
    v7 = [objc_opt_self() buttonWithType:0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    [v8 setAccessibilityIdentifier:v9];

    [v8 addTarget:v1 action:"buttonTapped" forControlEvents:64];
    sub_100014C84(0, &unk_10191BE80);
    static UIShape.rect.getter();
    v10 = type metadata accessor for UIShape();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
    v11 = UIHoverStyle.init(shape:)();
    [v8 setHoverStyle:v11];

    v12 = [objc_opt_self() labelColor];
    [v8 setTitleColor:v12 forState:0];

    v13 = [v6 contentView];
    if (v13)
    {
      v14 = v13;
      [v13 addSubview:v8];

      v15 = [v6 contentView];
      LODWORD(v16) = 1148846080;
      v17 = [v8 _maps_constraintsEqualToEdgesOfView:v15 insets:0.0 priority:{16.0, 0.0, 16.0, v16}];

      if (v17)
      {
        v18 = [v17 allConstraints];
        if (v18)
        {
          v19 = v18;

          [objc_opt_self() activateConstraints:v19];
          v20 = *(v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_button);
          *(v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_button) = v8;

          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v21 = objc_allocWithZone(UIView);

  [v21 init];
}

id sub_10003D020()
{
  if (qword_10195D4C8 != -1)
  {
    dispatch_once(&qword_10195D4C8, &stru_1016295C0);
  }

  v1 = qword_10195D4C0;

  return v1;
}

uint64_t sub_10003D4B0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions()
{
  result = qword_101911710;
  if (!qword_101911710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003D6A0()
{
  type metadata accessor for UIHostingControllerSizingOptions();
  if (v0 <= 0x3F)
  {
    sub_10003D72C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003D72C()
{
  if (!qword_101911720)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101911720);
    }
  }
}

uint64_t sub_10003D7E0()
{
  sub_100014C84(0, &unk_10190B9E0);
  result = NSString.init(stringLiteral:)();
  qword_10195FAE0 = result;
  return result;
}

id sub_10003D8C4()
{
  if (qword_10195F848 != -1)
  {
    dispatch_once(&qword_10195F848, &stru_10165EC90);
  }

  v1 = qword_10195F840;

  return v1;
}

void sub_10003D918(id a1)
{
  v1 = os_log_create("com.apple.Maps", "OfflineMapsPairedDeviceDiskSpaceTipSource");
  v2 = qword_10195F840;
  qword_10195F840 = v1;
}

id sub_10003D9F4()
{
  if (qword_10195D3A8 != -1)
  {
    dispatch_once(&qword_10195D3A8, &stru_101629380);
  }

  v1 = qword_10195D3A0;

  return v1;
}

void sub_10003DA48(id a1)
{
  v1 = os_log_create("com.apple.Maps", "Offline");
  v2 = qword_10195D3A0;
  qword_10195D3A0 = v1;
}

void sub_10003DB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003DD30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10003DF50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id sub_10003E34C(uint64_t a1)
{
  v2 = [objc_allocWithZone(FeatureDiscoveryDataProvider) init];
  v3 = OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
  sub_10003E48C(a1 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v9);
  if (Strong)
  {
    v5 = [Strong homeTransitPayActionDelegate];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  [v2 setTransitPayActionDelegate:v5];
  swift_unknownObjectRelease();
  sub_10003E48C(a1 + v3, v9);
  v6 = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v9);
  if (v6)
  {
    v7 = [v6 homeOfflineMapsDiscoveryActionDelegate];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  [v2 setOfflineMapsDiscoveryActionDelegate:v7];
  swift_unknownObjectRelease();
  return v2;
}

id sub_10003E578()
{
  v1 = OBJC_IVAR____TtC4Maps41HomeListFeatureDiscoverySectionController____lazy_storage___featureDiscoveryDataProvider;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps41HomeListFeatureDiscoverySectionController____lazy_storage___featureDiscoveryDataProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps41HomeListFeatureDiscoverySectionController____lazy_storage___featureDiscoveryDataProvider);
  }

  else
  {
    v4 = sub_10003E34C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10003E6A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_10003E6DC(uint64_t result)
{
  v2 = OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive;
  if (v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive] == (result & 1))
  {
    return result;
  }

  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (!v5)
  {
    goto LABEL_41;
  }

  v6 = v5;
  v7 = *(v5 + 8);
  v8 = v1;
  v9 = v7(ObjectType, v6);

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
LABEL_33:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v9 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v12 setActive:*(v3 + v2)];
    swift_unknownObjectRelease();
  }

LABEL_13:

  v13 = *(v3 + v2);
  v14 = swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  v16 = v15;
  if (v13 != 1)
  {
    if (v15)
    {
      v22 = *(v15 + 8);
      v23 = v8;
      v24 = v22(v14, v16);

      if (v24 >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
        if (!v25)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v25)
        {
          goto LABEL_36;
        }
      }

      if (v25 >= 1)
      {
        v26 = 0;
        do
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v27 = *(v24 + 8 * v26 + 32);
            swift_unknownObjectRetain();
          }

          ++v26;
          v28 = [v27 observers];
          [v28 unregisterObserver:v23];
          swift_unknownObjectRelease();
        }

        while (v25 != v26);
        goto LABEL_36;
      }

LABEL_40:
      __break(1u);
    }

LABEL_41:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!v15)
  {
    goto LABEL_41;
  }

  v17 = *(v15 + 8);
  v8 = v8;
  v3 = v17(v14, v16);

  if (v3 >> 62)
  {
    goto LABEL_33;
  }

  v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
LABEL_17:
    if (v18 >= 1)
    {
      v19 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v20 = *(v3 + 8 * v19 + 32);
          swift_unknownObjectRetain();
        }

        ++v19;
        v21 = [v20 observers];
        [v21 registerObserver:v8];
        swift_unknownObjectRelease();
      }

      while (v18 != v19);
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_36:
}

void sub_10003EF94(uint64_t a1)
{
  v2 = sub_1002E2C5C();
  [v2 registerObserver:a1];
}

uint64_t sub_10003F238()
{
  v1 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  swift_beginAccess();
  v2 = *(v0 + v1);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  if (v3 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v6 = 0xED00007469736E61;
    v7 = v3 & 0xC000000000000001;
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v9 = &selRef_traceControlView_setPlaying_;
    v25 = v3;
    while (1)
    {
      if (v7)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v8 + 16))
        {
          goto LABEL_22;
        }

        v10 = *(v3 + 8 * v5 + 32);
      }

      v11 = v10;
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v10 v9[270]] == 6 && (v13 = objc_msgSend(v11, "identifier")) != 0)
      {
        v14 = v8;
        v15 = v7;
        v16 = i;
        v17 = v13;
        v18 = v6;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        if (v19 == 0x725479627261654ELL && v21 == v18)
        {

          return 1;
        }

        v6 = v18;
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        i = v16;
        v7 = v15;
        v8 = v14;
        v3 = v25;
        v9 = &selRef_traceControlView_setPlaying_;
        if (v23)
        {

          return 1;
        }
      }

      else
      {
      }

      ++v5;
      if (v12 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  return 0;
}

void sub_10003FA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003FFE4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100040280(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10195DDA0;
  qword_10195DDA0 = v1;
}

void sub_100040600(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100040654(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    v4 = *(*(a1 + 32) + 40);
    v3 = [NSArray arrayWithObjects:&v4 count:1];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v2)
  {
  }
}

void sub_10004077C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_1000407DC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource__allItems);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = &_swiftEmptyArrayStorage;
LABEL_5:
    *a2 = v5;
    return result;
  }

  v5 = sub_10005EFF0(*(v3 + 16), 0);
  v6 = sub_100416A0C(&v7, v5 + 4, v4, v3);

  result = sub_10005F150();
  if (v6 == v4)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_100040BD4(uint64_t a1)
{
  if ([*(a1 + 32) shouldBypassViewControllerHeightCalculation])
  {
    v2 = sub_100C6180C();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
LABEL_30:

      return;
    }

    v3 = *(a1 + 32);
    v4 = [v3 containerViewController];
    v5 = [v4 currentOrPendingViewController];
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_29;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_9;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_9:

LABEL_29:
    *buf = 134349314;
    v37 = v3;
    v38 = 2114;
    v39 = *&v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}p] Our VC is not the current or pending one (%{public}@); ignoring small detent height request", buf, 0x16u);

    goto LABEL_30;
  }

  v11 = [*(a1 + 32) viewController];
  [v11 heightForLayout:1];
  v13 = v12;

  if (([*(a1 + 32) _fullHeightFixed] & 1) != 0 || v13 == -1.0)
  {
    v26 = sub_100C6180C();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
LABEL_33:

      v34.n128_f64[0] = UISheetPresentationControllerDetentInactive;
      (*(*(a1 + 40) + 16))(v34);
      return;
    }

    v27 = *(a1 + 32);
    v28 = [v27 viewController];
    if (!v28)
    {
      v33 = @"<nil>";
      goto LABEL_32;
    }

    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    if (objc_opt_respondsToSelector())
    {
      v31 = [v28 performSelector:"accessibilityIdentifier"];
      v32 = v31;
      if (v31 && ![v31 isEqualToString:v30])
      {
        v33 = [NSString stringWithFormat:@"%@<%p, %@>", v30, v28, v32];

        goto LABEL_27;
      }
    }

    v33 = [NSString stringWithFormat:@"%@<%p>", v30, v28];
LABEL_27:

LABEL_32:
    *buf = 134349314;
    v37 = v27;
    v38 = 2114;
    v39 = *&v33;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%{public}p] Small detent is inactive for VC %{public}@", buf, 0x16u);

    goto LABEL_33;
  }

  [*(a1 + 32) bottomSafeOffset];
  v15 = v13 - v14;
  [*(a1 + 32) grabberSafeAreaHeight];
  v17 = v16 + v15;
  v18 = sub_100C6180C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 32);
    v20 = [v19 viewController];
    if (!v20)
    {
      v25 = @"<nil>";
      goto LABEL_35;
    }

    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [v20 performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

        goto LABEL_19;
      }
    }

    v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_19:

LABEL_35:
    *buf = 134349570;
    v37 = v19;
    v38 = 2048;
    v39 = v17;
    v40 = 2114;
    v41 = v25;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Calculated small height (%f) for VC %{public}@", buf, 0x20u);
  }

  v35.n128_f64[0] = v17;
  (*(*(a1 + 40) + 16))(v35);
}

id sub_1000410AC()
{
  if (qword_10195D628 != -1)
  {
    dispatch_once(&qword_10195D628, &stru_101629880);
  }

  v1 = qword_10195D620;

  return v1;
}

uint64_t sub_100041288(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000412D0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100041318(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100041360(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000413A8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000413F0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100041438(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100041480(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000414C8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100041544(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_10004166C(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive;
  v4 = v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive];
  v1[OBJC_IVAR____TtC4Maps25HomeListSectionController_isActive] = result;
  if (v4 != (result & 1))
  {
    v35 = v4;
    ObjectType = swift_getObjectType();
    v6 = &protocol descriptor for HomeListSectionControllerSubclassing;
    v7 = swift_conformsToProtocol2();
    if (!v7)
    {
      goto LABEL_43;
    }

    v8 = v7;
    v9 = *(v7 + 8);
    v10 = v1;
    v11 = v9(ObjectType, v8);

    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (v12)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_5:
        if (v12 < 1)
        {
          __break(1u);
          goto LABEL_32;
        }

        for (i = 0; i != v12; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v14 = *(v11 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [v14 setActive:v2[v3]];
          swift_unknownObjectRelease();
        }
      }
    }

    v15 = v2[v3];
    v16 = swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    v18 = v17;
    if (v15 == 1)
    {
      if (v17)
      {
        v19 = *(v17 + 8);
        v6 = v10;
        v10 = v19(v16, v18);

        if (!(v10 >> 62))
        {
          v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
LABEL_16:
            if (v20 >= 1)
            {
              v21 = 0;
              do
              {
                if ((v10 & 0xC000000000000001) != 0)
                {
                  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v22 = *(v10 + 8 * v21 + 32);
                  swift_unknownObjectRetain();
                }

                ++v21;
                v23 = [v22 observers];
                [v23 registerObserver:v6];
                swift_unknownObjectRelease();
              }

              while (v20 != v21);
              goto LABEL_35;
            }

            __break(1u);
            goto LABEL_42;
          }

LABEL_35:

          v4 = v35;
          goto LABEL_36;
        }

LABEL_32:
        v20 = _CocoaArrayWrapper.endIndex.getter();
        if (v20)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }
    }

    else if (v17)
    {
      v24 = *(v17 + 8);
      v25 = v10;
      v26 = v24(v16, v18);

      if (v26 >> 62)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
        if (!v27)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          goto LABEL_35;
        }
      }

      if (v27 >= 1)
      {
        v28 = 0;
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(v26 + 8 * v28 + 32);
            swift_unknownObjectRetain();
          }

          ++v28;
          v30 = [v29 observers];
          [v30 unregisterObserver:v25];
          swift_unknownObjectRelease();
        }

        while (v27 != v28);
        goto LABEL_35;
      }

LABEL_42:
      __break(1u);
    }

LABEL_43:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_36:
  v31 = v2[v3];
  if (v4 != v31)
  {
    v32 = *&v2[OBJC_IVAR____TtC4Maps32HomeListRecentsSectionController_cellModelProvider];
    v33 = *(v32 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active);
    if (v31 == v33)
    {
      *(v32 + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active) = v31;
      return sub_1000D4A58(v33);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100527570(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

id sub_1000421A8()
{
  if (qword_10195E830 != -1)
  {
    dispatch_once(&qword_10195E830, &stru_10163B3C8);
  }

  v1 = qword_10195E828;

  return v1;
}

void sub_1000421FC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RouteOverlay");
  v2 = qword_10195E828;
  qword_10195E828 = v1;
}

void sub_100042364(id a1)
{
  v1 = objc_alloc_init(TrafficIncidentsSourceManager);
  v2 = qword_10195E2E8;
  qword_10195E2E8 = v1;
}

id sub_100042750()
{
  if (qword_10195E300 != -1)
  {
    dispatch_once(&qword_10195E300, &stru_101632A88);
  }

  v1 = qword_10195E2F8;

  return v1;
}

void sub_1000427A4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "TrafficIncidentsSourceManager");
  v2 = qword_10195E2F8;
  qword_10195E2F8 = v1;
}

void sub_100043414(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(a1[5] + 16))();
  v8 = sub_100039D48();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Reset counter has been reset, abandoning update", buf, 2u);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Notifying observers of new items: %@ itemGroups: %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v59 = sub_100A1379C;
    v60 = sub_100A137AC;
    v61 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = sub_100A1379C;
    v53 = sub_100A137AC;
    v54 = 0;
    v10 = *(a1[4] + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000438E4;
    block[3] = &unk_101631E50;
    v30 = *(a1 + 5);
    v11 = v30;
    v46 = v30;
    block[4] = a1[4];
    v12 = v5;
    v44 = v12;
    v13 = v6;
    v45 = v13;
    v47 = buf;
    v48 = &v49;
    dispatch_sync(v10, block);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = *(*(a1[6] + 8) + 40);
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v57 count:16];
    if (v15)
    {
      v16 = *v40;
      do
      {
        v17 = 0;
        do
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v39 + 1) + 8 * v17) personalizedItemManager:a1[4] didChangeItems:v12 itemGroups:{v13, v30}];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v39 objects:v57 count:16];
      }

      while (v15);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = *(*&buf[8] + 40);
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v56 count:16];
    if (v19)
    {
      v20 = *v36;
      do
      {
        v21 = 0;
        do
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v35 + 1) + 8 * v21);
          v23 = [v12 copy];
          (*(v22 + 16))(v22, v23);

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v35 objects:v56 count:16];
      }

      while (v19);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v50[5];
    v25 = [v24 countByEnumeratingWithState:&v31 objects:v55 count:16];
    if (v25)
    {
      v26 = *v32;
      do
      {
        v27 = 0;
        do
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v31 + 1) + 8 * v27);
          v29 = [v13 copy];
          (*(v28 + 16))(v28, v29);

          v27 = v27 + 1;
        }

        while (v25 != v27);
        v25 = [v24 countByEnumeratingWithState:&v31 objects:v55 count:16];
      }

      while (v25);
    }

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(buf, 8);
  }
}

void sub_100043898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000438E4(uint64_t a1)
{
  v2 = *(*(a1 + 64) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = (*(*(a1 + 56) + 16))();
  if ((result & 1) == 0)
  {
    v5 = [*(a1 + 40) copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(a1 + 48) copy];
    v9 = *(a1 + 32);
    v10 = *(v9 + 48);
    *(v9 + 48) = v8;

    *(*(a1 + 32) + 77) = 0;
    v11 = [*(*(a1 + 32) + 32) copy];
    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [*(*(a1 + 32) + 56) copy];
    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [*(*(a1 + 32) + 64) copy];
    v18 = *(*(a1 + 80) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    [*(*(a1 + 32) + 56) removeAllObjects];
    v20 = *(*(a1 + 32) + 64);

    return [v20 removeAllObjects];
  }

  return result;
}

void sub_100043A08(uint64_t a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000427F0;
  v8[3] = &unk_101631E28;
  v9 = *(a1 + 32);
  v2 = objc_retainBlock(v8);
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100043414;
  v5[3] = &unk_101631E78;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  v4 = v2;
  [v3 _gatherItemsWithShouldCancel:v4 completion:v5];
}

void sub_1000443E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100044848(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v6 = v5;
LABEL_11:
      v12 = *(a1 + 32);
      v13 = [NSString stringWithFormat:@"%@: %@", v14, v6];
      [v12 addObject:v13];

      goto LABEL_12;
    }

    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v6 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_10;
      }
    }

    v6 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_10:

    goto LABEL_11;
  }

LABEL_12:
}

uint64_t sub_100044AE0(void *a1)
{
  v1 = a1;
  v2 = [v1 title];
  v3 = [v2 value];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1016631F0;
  }

  v6 = v5;

  v7 = [v1 subtitle];
  v8 = [v7 value];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1016631F0;
  }

  v11 = v10;

  [v1 coordinate];
  v13 = v12;
  v15 = v14;
  v16 = [v1 styleAttributes];
  v17 = [v16 styleAttributes];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [GEOFeatureStyleAttributes init];
  }

  v20 = v19;

  v21 = [(__CFString *)v6 hash];
  v22 = [(__CFString *)v11 hash];

  v23 = [NSNumber numberWithInt:(v13 * 10000.0)];
  v24 = [v23 hash];

  v25 = [NSNumber numberWithInt:(v15 * 10000.0)];
  v26 = [v25 hash];

  v27 = [v20 hash];
  if (objc_opt_respondsToSelector())
  {
    if ([v1 isRouteStartOrEnd])
    {
      v28 = 32;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v21 ^ (2 * v22) ^ (4 * v24) ^ (8 * v26) ^ (16 * v27) ^ v28;
}

objc_class *sub_1000460B4(void *a1)
{
  v2 = v1;
  v45 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  __chkstk_darwin(v3);
  v46 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v41 - 8);
  __chkstk_darwin(v41);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_storeSubscriptionTypes;
  sub_100024578();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1011E1D30;
  *(v14 + 32) = type metadata accessor for FavoriteItem();
  *&v2[v13] = v14;
  v15 = OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_viewPortBuffer;
  GEOConfigGetDouble();
  *&v2[v15] = v16;
  v17 = OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_itemLimit;
  *&v2[v17] = GEOConfigGetInteger();
  v18 = OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_isFetchConfinementEnabled;
  v2[v18] = GEOConfigGetBOOL();
  v19 = OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource__allItems;
  *&v2[v19] = sub_100046AD4(&_swiftEmptyArrayStorage);
  v20 = &v2[OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_northeast];
  *v20 = CLLocationCoordinate2DMake(90.0, 180.0);
  v21 = &v2[OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_southwest];
  *v21 = CLLocationCoordinate2DMake(-90.0, -180.0);
  *&v2[OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource____lazy_storage___updateQueue] = 0;
  v43 = OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_lockQueue;
  v38[1] = sub_100014C84(0, &qword_10190B4F0);
  v39 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v22 = *(v10 + 104);
  v40 = v10 + 104;
  v42 = v22;
  v22(v12);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  v38[0] = sub_1000413A8(&qword_101909890, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000CE6B8(&unk_101917C30);
  sub_10004EC58(&qword_1019098A0, &unk_101917C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v2[v43] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v43 = OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_queryQueue;
  v42(v12, v39, v41);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v9;
  v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25 = ObjectType;
  *&v2[v43] = v24;
  v53.receiver = v2;
  v53.super_class = v25;
  v26 = objc_msgSendSuper2(&v53, "init");
  v27 = *&v26[OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource_queryQueue];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v30 = v45;
  *(v29 + 16) = v28;
  *(v29 + 24) = v30;
  aBlock[4] = sub_100039D40;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_10160F020;
  v31 = _Block_copy(aBlock);
  ObjectType = v26;
  v32 = v27;

  v33 = v30;
  static DispatchQoS.unspecified.getter();
  v51 = &_swiftEmptyArrayStorage;
  sub_1000413A8(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_10004EC58(&qword_1019097E0, &unk_10190B500);
  v34 = v46;
  v35 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  v36 = ObjectType;
  (*(v50 + 8))(v34, v35);
  (*(v47 + 8))(v23, v48);

  return v36;
}

uint64_t sub_1000467DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046814()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100046AD4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_1019081A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000CE6B8(&qword_1019081B0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000D2DFC(v9, v5, &qword_1019081A8);
      result = sub_1002972F8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_1000471B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:?];
    v2 = *(a1 + 32);
  }

  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = *(v2 + 48);

  return [v3 addObjectsFromArray:v4];
}

void sub_100047228(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 64) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100047298()
{
  v2 = *(v0 + 152);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = *(v0 + 120);
  v4 = *(v0 + 72);
  [*(v0 + 24) setMapFeatureLibraryGuidesSavedPlacesCount:?];
  *(v0 + 168) = CollectionPlaceItemRequest.__allocating_init()();
  v5 = objc_allocWithZone(v4);
  v6 = v3;
  v7 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  *(v0 + 176) = v7;
  v9 = (&async function pointer to dispatch thunk of MapsSyncRequest.count(options:) + async function pointer to dispatch thunk of MapsSyncRequest.count(options:));
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_1000473C8;

  v9(v7);
}

uint64_t sub_1000473C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  v5 = v3[22];
  v6 = v3[21];
  if (v1)
  {
    v7 = v4[3];

    v8 = sub_1004A72C8;
  }

  else
  {

    v8 = sub_10004752C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10004752C()
{
  v2 = *(v0 + 192);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    v23 = v1;
    v3 = *(v0 + 24);
    [v3 setMapFeatureLibraryFavoritesGuideSavedPlacesCount:?];

    if (qword_1019066E8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_4:
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_100021540(v5, qword_10195FF58);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v20 = *(v0 + 152);
    v21 = *(v0 + 192);
    v9 = *(v0 + 112);
    v22 = *(v0 + 120);
    v10 = *(v0 + 96);
    v11 = *(v0 + 48);
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    v14 = *(v0 + 16);
    v15 = swift_slowAlloc();
    *v15 = 134218752;
    *(v15 + 4) = *&v14[v12];

    *(v15 + 12) = 2048;
    *(v15 + 14) = v10;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v20;
    *(v15 + 32) = 2048;
    *(v15 + 34) = v21;
    v16 = v8;
    v17 = v22;
    _os_log_impl(&_mh_execute_header, v7, v16, "LibraryItemsCountManager: Count for analytics: All places: %ld | places with notes: %ld | places in guides: %ld | places in fav Guide: %ld", v15, 0x2Au);
  }

  else
  {
    v9 = *(v0 + 112);
    v17 = *(v0 + 120);
    v11 = *(v0 + 48);
    v13 = *(v0 + 24);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100047728(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100021578(v3, a2);
  sub_100021540(v3, a2);
  return Logger.init(subsystem:category:)();
}

char *sub_10004782C()
{
  v1 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  *&v0[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts] = 0;
  *&v0[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_observerToken] = 0;
  v4 = OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_observers;
  *&v0[v4] = [objc_allocWithZone(GEOObserverHashTable) initWithProtocol:&OBJC_PROTOCOL____TtP4Maps32LibraryItemsCountManagerObserver_ queue:0];
  v0[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching] = 0;
  v5 = OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_storeSubscriptionTypes;
  sub_100024578();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D30;
  *(v6 + 32) = type metadata accessor for FavoriteItem();
  *&v0[v5] = v6;
  v7 = type metadata accessor for LibraryItemsCountManager();
  v25.receiver = v0;
  v25.super_class = v7;
  v8 = objc_msgSendSuper2(&v25, "init");
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 sharedManager];
  [v11 addObserver:v10];

  v12 = [objc_opt_self() defaultCenter];
  v13 = [objc_opt_self() mainQueue];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004A9548;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004DFC88;
  aBlock[3] = &unk_10161C850;
  v15 = _Block_copy(aBlock);
  v16 = v10;

  v17 = [v12 addObserverForName:@"MapsSavedRoutesDidUpdateNotification" object:0 queue:v13 usingBlock:v15];
  _Block_release(v15);

  *&v16[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_observerToken] = v17;
  swift_unknownObjectRelease();
  if (qword_101906800 != -1)
  {
    swift_once();
  }

  [*(static VisitedPlacesCountsManager.shared + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_observers) registerObserver:v16];

  if ((v16[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching] & 1) == 0)
  {
    v16[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching] = 1;
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v16;
    v20 = v16;
    sub_10020AAE4(0, 0, v3, &unk_10120A678, v19);
  }

  type metadata accessor for MapsSyncStore();
  v21 = static MapsSyncStore.sharedStore.getter();
  v22 = v16;
  dispatch thunk of MapsSyncStore.subscribe(_:)();

  return v22;
}

uint64_t sub_100047C30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047C6C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = type metadata accessor for TaskPriority();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v1;
    sub_10020AAE4(0, 0, v2, &unk_10120A698, v4);
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_100047D70(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PersonalizedItemManager");
  v2 = qword_10195E188;
  qword_10195E188 = v1;
}

uint64_t sub_100047DB4()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100047E2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100047E6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100047EB4()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100047F20()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100047F60()
{
  v1 = (type metadata accessor for PlaceItemsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for EditMode();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000CE6B8(&qword_10190CA30);

  v7 = v1[14];
  sub_1000CE6B8(&qword_10190CBC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for InterfaceIdiom();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004816C()
{
  v1 = type metadata accessor for VisitHistoryFilterView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1000A1574(*(v5 + 72), *(v5 + 80));
  v6 = *(v1 + 36);
  sub_1000CE6B8(&qword_10190CBC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for InterfaceIdiom();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000482E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100048320()
{
  v1 = *(type metadata accessor for MapsElevationChart() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for MapsElevationChartViewModel(0);
  v6 = v5[11];
  v7 = sub_1000CE6B8(&qword_10191B3A0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100048494()
{
  v1 = (type metadata accessor for GuidesPickerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000485C8()
{
  v1 = *(type metadata accessor for VisitHistoryCategoryPickerView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1000CE6B8(&qword_10191DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}