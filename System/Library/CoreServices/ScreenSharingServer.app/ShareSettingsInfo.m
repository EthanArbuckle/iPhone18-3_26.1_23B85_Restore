@interface ShareSettingsInfo
- (ShareSettingsInfo)init;
- (id)gatherSystemInfo;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)dealloc;
@end

@implementation ShareSettingsInfo

- (ShareSettingsInfo)init
{
  v6.receiver = self;
  v6.super_class = ShareSettingsInfo;
  v2 = [(ShareSettingsInfo *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    stateSemaphore = v2->_stateSemaphore;
    v2->_stateSemaphore = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(ShareSettingsInfo *)self setStateSemaphore:0];
  v3.receiver = self;
  v3.super_class = ShareSettingsInfo;
  [(ShareSettingsInfo *)&v3 dealloc];
}

- (id)gatherSystemInfo
{
  v412 = objc_alloc_init(NSMutableDictionary);
  context = objc_autoreleasePoolPush();
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[ShareSettingsInfo gatherSystemInfo]";
      *&buf[12] = 1024;
      *&buf[14] = 140;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] gather system info", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 140, "[ShareSettingsInfo gatherSystemInfo]", 7, 0, "gather system info");
  v4 = self;
  v5 = +[NSProcessInfo processInfo];
  v6 = [v5 isLowPowerModeEnabled];

  if (v6)
  {
    if (sub_1000423E0())
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 257;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] low power", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 257, "GetMiscFlags", 7, 0, "low power");
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = TMIsAutomaticTimeEnabled();
  if (sub_1000423E0())
  {
    v10 = sub_100042E68();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "DateTimeServerEnabled";
      *&buf[12] = 1024;
      *&buf[14] = 726;
      *&buf[18] = 1024;
      *&buf[20] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] time server enabled %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 726, "DateTimeServerEnabled", 7, 0, "time server enabled %d", v9);
  if (v9)
  {
    if (sub_1000423E0())
    {
      v11 = sub_100042E68();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 263;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] date and time server", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 263, "GetMiscFlags", 7, 0, "date and time server");
    v8 = v8 | 8;
  }

  v12 = +[CLLocationManager locationServicesEnabled];
  if (sub_1000423E0())
  {
    v13 = sub_100042E68();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "LocationServicesEnabled";
      *&buf[12] = 1024;
      *&buf[14] = 733;
      *&buf[18] = 1024;
      *&buf[20] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] location services enabled %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 733, "LocationServicesEnabled", 7, 0, "location services enabled %d", v12);
  if (v12)
  {
    if (sub_1000423E0())
    {
      v14 = sub_100042E68();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 269;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] location services", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 269, "GetMiscFlags", 7, 0, "location services");
    v8 = v8 | 2;
  }

  v15 = objc_opt_new();
  v16 = [v15 crossAppTrackingAllowed];
  if (sub_1000423E0())
  {
    v17 = sub_100042E68();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "CrossAppTrackingEnabled";
      *&buf[12] = 1024;
      *&buf[14] = 742;
      *&buf[18] = 1024;
      *&buf[20] = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] cross-app tracking enabled %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 742, "CrossAppTrackingEnabled", 7, 0, "cross-app tracking enabled %d", v16);

  if (v16)
  {
    if (sub_1000423E0())
    {
      v18 = sub_100042E68();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 275;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] cross-app tracking", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 275, "GetMiscFlags", 7, 0, "cross-app tracking");
    v8 = v8 | 4;
  }

  v19 = v4;
  v20 = [CBCentralManager alloc];
  v21 = dispatch_get_global_queue(17, 0);
  *v454 = CBCentralManagerOptionShowPowerAlertKey;
  v22 = [NSNumber numberWithBool:0];
  *&v448 = v22;
  v23 = [NSDictionary dictionaryWithObjects:&v448 forKeys:v454 count:1];
  v24 = [v20 initWithDelegate:v19 queue:v21 options:v23];

  *&v444 = 0;
  *(&v444 + 1) = &v444;
  *&v445 = 0x2020000000;
  BYTE8(v445) = 0;
  v25 = dispatch_time(0, 5000000000);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10003FF04;
  *&buf[24] = &unk_100068E70;
  *&buf[32] = &v444;
  dispatch_after(v25, &_dispatch_main_q, buf);
  if (*(*(&v444 + 1) + 24))
  {
    goto LABEL_47;
  }

  while (1)
  {
    v26 = [(ShareSettingsInfo *)v19 stateSemaphore];
    v27 = dispatch_time(0, 10000000);
    v28 = dispatch_semaphore_wait(v26, v27) == 0;

    if (v28)
    {
      break;
    }

    v29 = +[NSRunLoop currentRunLoop];
    v30 = [NSDate dateWithTimeIntervalSinceNow:0.01];
    [v29 runUntilDate:v30];

    if (*(*(&v444 + 1) + 24))
    {
      goto LABEL_47;
    }
  }

  if (*(*(&v444 + 1) + 24))
  {
LABEL_47:
    if (sub_1000423E0())
    {
      v31 = sub_100042E68();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *v452 = 136315394;
        *&v452[4] = "BluetoothEnabled";
        *&v452[12] = 1024;
        *&v452[14] = 883;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%s:%d] CBCentralManager did not update state", v452, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 883, "BluetoothEnabled", 3, 0, "CBCentralManager did not update state");
    [v24 setDelegate:0];
    v32 = 0;
    goto LABEL_52;
  }

  v81 = [v24 state];
  v32 = 0;
  if (v81 > 2)
  {
    if (v81 != 3)
    {
      if (v81 != 4)
      {
        if (v81 == 5)
        {
          if (sub_1000423E0())
          {
            v321 = sub_100042E68();
            if (os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
            {
              *v452 = 136315394;
              *&v452[4] = "BluetoothEnabled";
              *&v452[12] = 1024;
              *&v452[14] = 894;
              _os_log_impl(&_mh_execute_header, v321, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth state is CBManagerStatePoweredOn", v452, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 894, "BluetoothEnabled", 7, 0, "Bluetooth state is CBManagerStatePoweredOn");
          v32 = 1;
        }

        goto LABEL_547;
      }

      if (sub_1000423E0())
      {
        v389 = sub_100042E68();
        if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
        {
          *v452 = 136315394;
          *&v452[4] = "BluetoothEnabled";
          *&v452[12] = 1024;
          *&v452[14] = 899;
          _os_log_impl(&_mh_execute_header, v389, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth state is CBManagerStatePoweredOff", v452, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 899, "BluetoothEnabled", 7, 0, "Bluetooth state is CBManagerStatePoweredOff");
LABEL_544:
      v32 = 0;
      goto LABEL_547;
    }

    if (sub_1000423E0())
    {
      v82 = sub_100042E68();
      v83 = 908;
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *v452 = 136315394;
        *&v452[4] = "BluetoothEnabled";
        *&v452[12] = 1024;
        *&v452[14] = 908;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth state is CBManagerStateUnauthorized", v452, 0x12u);
      }

      v84 = "Bluetooth state is CBManagerStateUnauthorized";
      goto LABEL_521;
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 908, "BluetoothEnabled", 7, 0, "Bluetooth state is CBManagerStateUnauthorized");
    goto LABEL_532;
  }

  switch(v81)
  {
    case 0:
      if (sub_1000423E0())
      {
        v82 = sub_100042E68();
        v83 = 918;
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *v452 = 136315394;
          *&v452[4] = "BluetoothEnabled";
          *&v452[12] = 1024;
          *&v452[14] = 918;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth state is CBManagerStateUnknown", v452, 0x12u);
        }

        v84 = "Bluetooth state is CBManagerStateUnknown";
        goto LABEL_521;
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 918, "BluetoothEnabled", 7, 0, "Bluetooth state is CBManagerStateUnknown");
      goto LABEL_532;
    case 1:
      if (!sub_1000423E0())
      {
        v84 = "Bluetooth state is CBManagerStateResetting";
        v83 = 903;
        goto LABEL_531;
      }

      v82 = sub_100042E68();
      v83 = 903;
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *v452 = 136315394;
        *&v452[4] = "BluetoothEnabled";
        *&v452[12] = 1024;
        *&v452[14] = 903;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth state is CBManagerStateResetting", v452, 0x12u);
      }

      v84 = "Bluetooth state is CBManagerStateResetting";
LABEL_521:

LABEL_531:
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, v83, "BluetoothEnabled", 7, 0, v84);
      goto LABEL_532;
    case 2:
      if (sub_1000423E0())
      {
        v82 = sub_100042E68();
        v83 = 913;
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *v452 = 136315394;
          *&v452[4] = "BluetoothEnabled";
          *&v452[12] = 1024;
          *&v452[14] = 913;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth state is CBManagerStateUnsupported", v452, 0x12u);
        }

        v84 = "Bluetooth state is CBManagerStateUnsupported";
        goto LABEL_521;
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 913, "BluetoothEnabled", 7, 0, "Bluetooth state is CBManagerStateUnsupported");
LABEL_532:
      v390 = SCDynamicStoreCreate(0, @"com.apple.ScreenSharing", 0, 0);
      v391 = v390;
      if (v390)
      {
        v392 = SCDynamicStoreCopyValue(v390, @"com.apple.MobileBluetooth");
        if (sub_1000423E0())
        {
          v393 = sub_100042E68();
          if (os_log_type_enabled(v393, OS_LOG_TYPE_DEFAULT))
          {
            v394 = [v392 description];
            v395 = v394;
            v396 = [v394 UTF8String];
            *v452 = 136315650;
            *&v452[4] = "BluetoothEnabled";
            *&v452[12] = 1024;
            *&v452[14] = 928;
            *&v452[18] = 2080;
            *&v452[20] = v396;
            _os_log_impl(&_mh_execute_header, v393, OS_LOG_TYPE_DEFAULT, "[%s:%d] SCDynamicStore shows: %s", v452, 0x1Cu);
          }
        }

        v397 = [v392 description];
        v398 = v397;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 928, "BluetoothEnabled", 7, 0, "SCDynamicStore shows: %s", [v397 UTF8String]);

        v399 = [v392 objectForKey:@"Powered"];
        v400 = v399;
        if (v399)
        {
          v32 = [v399 BOOLValue];
        }

        else
        {
          v32 = 0;
        }

        CFRelease(v391);

        break;
      }

      if (sub_1000423E0())
      {
        v401 = sub_100042E68();
        if (os_log_type_enabled(v401, OS_LOG_TYPE_ERROR))
        {
          *v452 = 136315394;
          *&v452[4] = "BluetoothEnabled";
          *&v452[12] = 1024;
          *&v452[14] = 937;
          _os_log_impl(&_mh_execute_header, v401, OS_LOG_TYPE_ERROR, "[%s:%d] unable to access SCDynamicStore", v452, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 937, "BluetoothEnabled", 3, 0, "unable to access SCDynamicStore");
      goto LABEL_544;
  }

LABEL_547:
  if (sub_1000423E0())
  {
    v402 = sub_100042E68();
    if (os_log_type_enabled(v402, OS_LOG_TYPE_DEFAULT))
    {
      *v452 = 136315650;
      *&v452[4] = "BluetoothEnabled";
      *&v452[12] = 1024;
      *&v452[14] = 941;
      *&v452[18] = 1024;
      *&v452[20] = v32;
      _os_log_impl(&_mh_execute_header, v402, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth enabled: %d", v452, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 941, "BluetoothEnabled", 7, 0, "Bluetooth enabled: %d", v32);
LABEL_52:
  _Block_object_dispose(&v444, 8);

  if (v32)
  {
    if (sub_1000423E0())
    {
      v33 = sub_100042E68();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 281;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%s:%d] bluetooth enabled", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 281, "GetMiscFlags", 7, 0, "bluetooth enabled");
    v8 = v8 | 0x80;
  }

  v34 = objc_alloc_init(CWFInterface);
  [v34 activate];
  v35 = [v34 powerOn];

  if (v35)
  {
    if (sub_1000423E0())
    {
      v36 = sub_100042E68();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 287;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%s:%d] Wifi power state", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 287, "GetMiscFlags", 7, 0, "Wifi power state");
    v8 = v8 | 0x40;
  }

  v37 = dispatch_get_global_queue(0, 0);
  v38 = [[IDSSignInController alloc] initWithQueue:v37];
  v39 = [v38 isFaceTimeEnabled];
  if (sub_1000423E0())
  {
    v40 = sub_100042E68();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "FaceTimeEnabled";
      *&buf[12] = 1024;
      *&buf[14] = 966;
      *&buf[18] = 1024;
      *&buf[20] = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%s:%d] FaceTimeEnabled returning %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 966, "FaceTimeEnabled", 7, 0, "FaceTimeEnabled returning %d", v39);

  if (v39)
  {
    if (sub_1000423E0())
    {
      v41 = sub_100042E68();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 293;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%s:%d] FaceTime enabled", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 293, "GetMiscFlags", 7, 0, "FaceTime enabled");
    v8 = v8 | 0x100;
  }

  v42 = objc_alloc_init(RadiosPreferences);
  v43 = [v42 airplaneMode];

  if (v43)
  {
    if (sub_1000423E0())
    {
      v44 = sub_100042E68();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 298;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%s:%d] Share Settings - Airplane mode is on", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 298, "GetMiscFlags", 7, 0, "Share Settings - Airplane mode is on");
    v8 = v8 | 0x20;
  }

  v45 = [[UISUserInterfaceStyleMode alloc] initWithDelegate:0];
  [v45 modeValue];
  IsAutomatic = UISUserInterfaceStyleModeValueIsAutomatic();

  if (IsAutomatic)
  {
    if (sub_1000423E0())
    {
      v47 = sub_100042E68();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 303;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%s:%d] Share Settings - Automatic appearance is on", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 303, "GetMiscFlags", 7, 0, "Share Settings - Automatic appearance is on");
    v8 = v8 | 0x10;
  }

  v411 = [NSNumber numberWithUnsignedInt:v8];
  [v412 setObject:v411 forKeyedSubscript:@"iOS-Misc"];
  v48 = [DNDStateService serviceForClientIdentifier:@"com.apple.screensharingserver"];
  *&v444 = 0;
  v49 = [v48 queryCurrentStateWithError:&v444];
  v50 = v444;
  if (v50)
  {
    if (sub_1000423E0())
    {
      v51 = sub_100042E68();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [v50 code];
        v53 = [v50 description];
        v54 = v53;
        v55 = [v53 UTF8String];
        *buf = 136315906;
        *&buf[4] = "IsDNDEnabled";
        *&buf[12] = 1024;
        *&buf[14] = 644;
        *&buf[18] = 2048;
        *&buf[20] = v52;
        *&buf[28] = 2080;
        *&buf[30] = v55;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[%s:%d] dnd state error code %ld  %s", buf, 0x26u);
      }
    }

    v56 = [v50 code];
    v57 = [v50 description];
    v58 = v57;
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 644, "IsDNDEnabled", 7, 0, "dnd state error code %ld  %s", v56, [v57 UTF8String]);
  }

  if (v49)
  {
    if (sub_1000423E0())
    {
      v59 = sub_100042E68();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [v49 isActive];
        *buf = 136315650;
        *&buf[4] = "IsDNDEnabled";
        *&buf[12] = 1024;
        *&buf[14] = 647;
        *&buf[18] = 1024;
        *&buf[20] = v60;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "[%s:%d] dnd active %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 647, "IsDNDEnabled", 7, 0, "dnd active %d", [v49 isActive]);
    if ([v49 isActive])
    {
      v61 = 2;
    }

    else
    {
      v61 = 0;
    }

    v432 = v61;
  }

  else
  {
    v432 = 0;
  }

  v62 = [DNDModeConfigurationService serviceForClientIdentifier:@"com.apple.screensharingserver"];
  v63 = v62;
  if (v62)
  {
    v436 = 0;
    v428 = [v62 modeConfigurationsReturningError:&v436];
    v64 = v436;
    if (v64)
    {
      if (sub_1000423E0())
      {
        v65 = sub_100042E68();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = [v64 description];
          v67 = v66;
          v68 = [v66 UTF8String];
          *v454 = 136315650;
          *&v454[4] = "IsDNDScheduled";
          v455 = 1024;
          v456 = 668;
          v457 = 2080;
          v458 = v68;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "[%s:%d] Error getting the mode configs %s", v454, 0x1Cu);
        }
      }

      v69 = [v64 description];
      v70 = v69;
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 668, "IsDNDScheduled", 7, 0, "Error getting the mode configs %s", [v69 UTF8String]);

      v71 = 1;
    }

    else
    {
      v453 = 0u;
      memset(v452, 0, sizeof(v452));
      obj = [v428 allValues];
      v420 = [obj countByEnumeratingWithState:v452 objects:buf count:16];
      if (v420)
      {
        v419 = **&v452[16];
        do
        {
          for (i = 0; i != v420; i = i + 1)
          {
            if (**&v452[16] != v419)
            {
              objc_enumerationMutation(obj);
            }

            v74 = [*(*&v452[8] + 8 * i) triggers];
            if ([v74 count])
            {
              v450 = 0u;
              v451 = 0u;
              v448 = 0u;
              v449 = 0u;
              v75 = v74;
              v76 = [v75 countByEnumeratingWithState:&v448 objects:&v444 count:16];
              if (v76)
              {
                v77 = *v449;
                while (2)
                {
                  for (j = 0; j != v76; j = j + 1)
                  {
                    if (*v449 != v77)
                    {
                      objc_enumerationMutation(v75);
                    }

                    v79 = *(*(&v448 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass() & 1) != 0 && ([v79 isEnabled])
                    {

                      v71 = 0;
                      v80 = 1;
                      goto LABEL_143;
                    }
                  }

                  v76 = [v75 countByEnumeratingWithState:&v448 objects:&v444 count:16];
                  if (v76)
                  {
                    continue;
                  }

                  break;
                }
              }
            }
          }

          v420 = [obj countByEnumeratingWithState:v452 objects:buf count:16];
          v80 = 0;
          v71 = 1;
        }

        while (v420);
      }

      else
      {
        v80 = 0;
        v71 = 1;
      }

LABEL_143:

      if (sub_1000423E0())
      {
        v85 = sub_100042E68();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          *v454 = 136315650;
          *&v454[4] = "IsDNDScheduled";
          v455 = 1024;
          v456 = 693;
          v457 = 1024;
          LODWORD(v458) = v80;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "[%s:%d] IsDNDScheduled = %d", v454, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 693, "IsDNDScheduled", 7, 0, "IsDNDScheduled = %d", v80);
    }

    if (!v71)
    {
      v432 |= 1u;
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v72 = sub_100042E68();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *v454 = 136315394;
        *&v454[4] = "IsDNDScheduled";
        v455 = 1024;
        v456 = 661;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to get the mode service", v454, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 661, "IsDNDScheduled", 7, 0, "Unable to get the mode service");
  }

  v86 = [DNDSettingsService serviceForClientIdentifier:@"com.apple.screensharingserver"];
  *&v444 = 0;
  v87 = [v86 behaviorSettingsReturningError:&v444];
  v88 = v444;
  if (v88)
  {
    if (sub_1000423E0())
    {
      v89 = sub_100042E68();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v90 = [v88 code];
        v91 = [v88 description];
        v92 = v91;
        v93 = [v91 UTF8String];
        *buf = 136315906;
        *&buf[4] = "IsDNDLockScreenOnly";
        *&buf[12] = 1024;
        *&buf[14] = 707;
        *&buf[18] = 2048;
        *&buf[20] = v90;
        *&buf[28] = 2080;
        *&buf[30] = v93;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "[%s:%d] Error getting behavior settings error = %ld  %s", buf, 0x26u);
      }
    }

    v94 = [v88 code];
    v95 = [v88 description];
    v96 = v95;
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 707, "IsDNDLockScreenOnly", 7, 0, "Error getting behavior settings error = %ld  %s", v94, [v95 UTF8String]);

    v97 = 1;
  }

  else
  {
    [v87 interruptionBehaviorSetting];
    v98 = DNDResolvedInterruptionBehaviorSetting();
    if (sub_1000423E0())
    {
      v99 = sub_100042E68();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "IsDNDLockScreenOnly";
        *&buf[12] = 1024;
        *&buf[14] = 712;
        *&buf[18] = 2048;
        *&buf[20] = v98;
        *&buf[28] = 2048;
        *&buf[30] = 2;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "[%s:%d] behaviorSettings %ld InterruptWhenDeviceIsUnlocked %ld", buf, 0x26u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 712, "IsDNDLockScreenOnly", 7, 0, "behaviorSettings %ld InterruptWhenDeviceIsUnlocked %ld", v98, 2);
    v97 = v98 != 2;
  }

  if (v97)
  {
    v100 = v432;
  }

  else
  {
    v100 = v432 | 4;
  }

  v410 = [NSNumber numberWithUnsignedInt:v100];
  [v412 setObject:v410 forKeyedSubscript:@"iOS-DND"];
  if (sub_1000423E0())
  {
    v101 = sub_100042E68();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      v102 = _AXSVoiceOverTouchEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 399;
      *&buf[18] = 1024;
      *&buf[20] = v102;
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "[%s:%d] VoiceOverEnabled %d", buf, 0x18u);
    }
  }

  v103 = _AXSVoiceOverTouchEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 399, "GetAccessibilityFlags", 7, 0, "VoiceOverEnabled %d", v103);
  v104 = _AXSVoiceOverTouchEnabled();
  if (sub_1000423E0())
  {
    v105 = sub_100042E68();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      v106 = _AXSZoomTouchEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 403;
      *&buf[18] = 1024;
      *&buf[20] = v106;
      _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "[%s:%d] _AXSZoomTouchEnabled %d", buf, 0x18u);
    }
  }

  v107 = _AXSZoomTouchEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 403, "GetAccessibilityFlags", 7, 0, "_AXSZoomTouchEnabled %d", v107);
  v108 = _AXSZoomTouchEnabled();
  v109 = _AXSTripleClickCopyOptions();
  v110 = [v109 containsObject:&off_10006B208];

  if (sub_1000423E0())
  {
    v111 = sub_100042E68();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      v112 = _AXSAssistiveTouchEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 410;
      *&buf[18] = 1024;
      *&buf[20] = v112;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "[%s:%d] AssistiveTouchEnabled %d", buf, 0x18u);
    }
  }

  v113 = _AXSAssistiveTouchEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 410, "GetAccessibilityFlags", 7, 0, "AssistiveTouchEnabled %d", v113);
  v114 = _AXSAssistiveTouchEnabled();
  if (sub_1000423E0())
  {
    v115 = sub_100042E68();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      v116 = _AXSAssistiveTouchEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 414;
      *&buf[18] = 1024;
      *&buf[20] = v116;
      _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "[%s:%d] _AXSAssistiveTouchEnabled %d", buf, 0x18u);
    }
  }

  v117 = _AXSAssistiveTouchEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 414, "GetAccessibilityFlags", 7, 0, "_AXSAssistiveTouchEnabled %d", v117);
  if (sub_1000423E0())
  {
    v118 = sub_100042E68();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      v119 = _AXSCommandAndControlEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 415;
      *&buf[18] = 1024;
      *&buf[20] = v119;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "[%s:%d] CommandAndControlEnabled() %d", buf, 0x18u);
    }
  }

  v120 = _AXSCommandAndControlEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 415, "GetAccessibilityFlags", 7, 0, "CommandAndControlEnabled() %d", v120);
  v121 = _AXSCommandAndControlEnabled();
  if (sub_1000423E0())
  {
    v122 = sub_100042E68();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v123 = _AXSGuidedAccessEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 419;
      *&buf[18] = 1024;
      *&buf[20] = v123;
      _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "[%s:%d] GuidedAccessEnabled %d", buf, 0x18u);
    }
  }

  v124 = _AXSGuidedAccessEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 419, "GetAccessibilityFlags", 7, 0, "GuidedAccessEnabled %d", v124);
  v125 = _AXSGuidedAccessEnabled();
  if (sub_1000423E0())
  {
    v126 = sub_100042E68();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      v127 = _AXSAutoBrightnessEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 427;
      *&buf[18] = 1024;
      *&buf[20] = v127;
      _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "[%s:%d] Share settings - AutoBrightnessEnabled: %d", buf, 0x18u);
    }
  }

  v128 = v104 != 0;
  if (v104)
  {
    v129 = 3;
  }

  else
  {
    v129 = 2;
  }

  if (v108)
  {
    v128 = v129;
  }

  if (v110)
  {
    v128 |= 4u;
  }

  if (v114)
  {
    v128 |= 8u;
  }

  if (v121)
  {
    v128 |= 0x10u;
  }

  if (v125)
  {
    v130 = v128 | 0x20;
  }

  else
  {
    v130 = v128;
  }

  v131 = _AXSAutoBrightnessEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 427, "GetAccessibilityFlags", 7, 0, "Share settings - AutoBrightnessEnabled: %d", v131);
  if (_AXSAutoBrightnessEnabled())
  {
    v132 = v130 | 0x40;
  }

  else
  {
    v132 = v130;
  }

  v409 = [NSNumber numberWithUnsignedInt:v132];
  [v412 setObject:v409 forKeyedSubscript:@"iOS-Access"];
  v133 = [[CoreTelephonyClient alloc] initWithQueue:0];
  *&v444 = 0;
  *(&v444 + 1) = &v444;
  *&v445 = 0x2020000000;
  DWORD2(v445) = 1;
  if (v133)
  {
    v134 = dispatch_group_create();
    v135 = [NSSet alloc];
    v136 = [v135 initWithObjects:{off_100070718, 0}];
    dispatch_group_enter(v134);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10003FF18;
    *&buf[24] = &unk_100068E98;
    v460 = &v444;
    v137 = v134;
    *&buf[32] = v137;
    [v133 getLocalPolicies:v136 completion:buf];
    v138 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v137, v138))
    {
      if (sub_1000423E0())
      {
        v139 = sub_100042E68();
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
        {
          *v452 = 136315394;
          *&v452[4] = "MailUseCellularData";
          *&v452[12] = 1024;
          *&v452[14] = 831;
          _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "[%s:%d] Timed out trying to get cellular data state", v452, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 831, "MailUseCellularData", 7, 0, "Timed out trying to get cellular data state");
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v140 = sub_100042E68();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "MailUseCellularData";
        *&buf[12] = 1024;
        *&buf[14] = 836;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to contact the CoreTelephonyClient", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 836, "MailUseCellularData", 7, 0, "Failed to contact the CoreTelephonyClient");
  }

  v407 = *(*(&v444 + 1) + 24);
  _Block_object_dispose(&v444, 8);

  v433 = objc_alloc_init(ACAccountStore);
  v404 = ACAccountDataclassMail;
  v141 = [v433 accountIdentifiersEnabledForDataclass:?];
  if (sub_1000423E0())
  {
    v142 = sub_100042E68();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
    {
      v143 = [v141 count];
      *buf = 136315650;
      *&buf[4] = "GetMailAccountsInfo";
      *&buf[12] = 1024;
      *&buf[14] = 523;
      *&buf[18] = 2048;
      *&buf[20] = v143;
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "[%s:%d] accounts size %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 523, "GetMailAccountsInfo", 7, 0, "accounts size %ld", [v141 count]);
  v446 = 0u;
  v447 = 0u;
  v444 = 0u;
  v445 = 0u;
  obja = v141;
  v144 = [obja countByEnumeratingWithState:&v444 objects:buf count:16];
  if (v144)
  {
    v416 = 0;
    v417 = 0;
    v413 = 0;
    v429 = *v445;
    v421 = ACAccountTypeIdentifierSMTP;
    do
    {
      for (k = 0; k != v144; k = k + 1)
      {
        if (*v445 != v429)
        {
          objc_enumerationMutation(obja);
        }

        v146 = [v433 accountWithIdentifier:*(*(&v444 + 1) + 8 * k)];
        if (sub_1000423E0())
        {
          v147 = sub_100042E68();
          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
          {
            v148 = [v146 accountType];
            v149 = [v148 identifier];
            v150 = v149;
            v151 = [v149 UTF8String];
            *v452 = 136315650;
            *&v452[4] = "GetMailAccountsInfo";
            *&v452[12] = 1024;
            *&v452[14] = 529;
            *&v452[18] = 2080;
            *&v452[20] = v151;
            _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "[%s:%d] id %s", v452, 0x1Cu);
          }
        }

        v152 = [v146 accountType];
        v153 = [v152 identifier];
        v154 = v153;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 529, "GetMailAccountsInfo", 7, 0, "id %s", [v153 UTF8String]);

        v155 = [v146 enabledDataclasses];
        if ([v155 containsObject:@"com.apple.Dataclass.Mail"])
        {
          v156 = [v146 accountType];
          v157 = [v156 identifier];
          v158 = [v157 isEqualToString:v421];

          v159 = sub_1000423E0();
          if (v158)
          {
            if (v159)
            {
              v160 = sub_100042E68();
              if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
              {
                v161 = [v146 accountDescription];
                v162 = v161;
                v163 = [v161 UTF8String];
                *v452 = 136315650;
                *&v452[4] = "GetMailAccountsInfo";
                *&v452[12] = 1024;
                *&v452[14] = 535;
                *&v452[18] = 2080;
                *&v452[20] = v163;
                _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "[%s:%d] %s ignore this smtp account", v452, 0x1Cu);
              }
            }

            v164 = [v146 accountDescription];
            v165 = v164;
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 535, "GetMailAccountsInfo", 7, 0, "%s ignore this smtp account", [v164 UTF8String]);
          }

          else
          {
            if (v159)
            {
              v166 = sub_100042E68();
              if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
              {
                v167 = [v146 accountDescription];
                v168 = v167;
                v169 = [v167 UTF8String];
                v170 = [v146 accountType];
                v171 = [v170 identifier];
                v172 = v171;
                v173 = [v171 UTF8String];
                *v452 = 136315906;
                *&v452[4] = "GetMailAccountsInfo";
                *&v452[12] = 1024;
                *&v452[14] = 539;
                *&v452[18] = 2080;
                *&v452[20] = v169;
                *&v452[28] = 2080;
                *&v452[30] = v173;
                _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "[%s:%d] %s identifier %s contains mail", v452, 0x26u);
              }
            }

            v174 = [v146 accountDescription];
            v175 = v174;
            v176 = [v174 UTF8String];
            v177 = [v146 accountType];
            v178 = [v177 identifier];
            v179 = v178;
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 539, "GetMailAccountsInfo", 7, 0, "%s identifier %s contains mail", v176, [v178 UTF8String]);

            v180 = [v146 accountType];
            v181 = [v180 identifier];
            LODWORD(v174) = [v181 isEqualToString:@"com.apple.account.Yahoo"];

            if (v174)
            {
              if (sub_1000423E0())
              {
                v182 = sub_100042E68();
                if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                {
                  *v452 = 136315394;
                  *&v452[4] = "GetMailAccountsInfo";
                  *&v452[12] = 1024;
                  *&v452[14] = 543;
                  _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "[%s:%d] Yahoo mail account", v452, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 543, "GetMailAccountsInfo", 7, 0, "Yahoo mail account");
              v417 = 1;
            }

            else
            {
              v183 = [v146 accountType];
              v184 = [v183 identifier];
              v185 = [v184 isEqualToString:@"com.apple.account.Google"];

              if (v185)
              {
                if (sub_1000423E0())
                {
                  v186 = sub_100042E68();
                  if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
                  {
                    *v452 = 136315394;
                    *&v452[4] = "GetMailAccountsInfo";
                    *&v452[12] = 1024;
                    *&v452[14] = 548;
                    _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "[%s:%d] Gmail mail account", v452, 0x12u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 548, "GetMailAccountsInfo", 7, 0, "Gmail mail account");
                v416 = 1;
              }

              else
              {
                v187 = [v146 accountType];
                v188 = [v187 identifier];
                v189 = [v188 isEqualToString:@"com.apple.account.OnMyDevice"];

                if ((v189 & 1) == 0)
                {
                  if (sub_1000423E0())
                  {
                    v190 = sub_100042E68();
                    if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
                    {
                      *v452 = 136315394;
                      *&v452[4] = "GetMailAccountsInfo";
                      *&v452[12] = 1024;
                      *&v452[14] = 553;
                      _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_DEFAULT, "[%s:%d] other mail account", v452, 0x12u);
                    }
                  }

                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 553, "GetMailAccountsInfo", 7, 0, "other mail account");
                  v413 = 1;
                }
              }
            }
          }
        }
      }

      v144 = [obja countByEnumeratingWithState:&v444 objects:buf count:16];
    }

    while (v144);
    v414 = v413 == 0;
    v405 = v416 == 0;
    v406 = v417 == 0;
  }

  else
  {
    v405 = 1;
    v406 = 1;
    v414 = 1;
  }

  v434 = objc_alloc_init(ACAccountStore);
  v403 = ACAccountDataclassContacts;
  v191 = [v434 accountIdentifiersEnabledForDataclass:?];
  if (sub_1000423E0())
  {
    v192 = sub_100042E68();
    if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
    {
      v193 = [v191 count];
      *buf = 136315650;
      *&buf[4] = "GetContactsAccountsInfo";
      *&buf[12] = 1024;
      *&buf[14] = 592;
      *&buf[18] = 2048;
      *&buf[20] = v193;
      _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_DEFAULT, "[%s:%d] accounts size %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 592, "GetContactsAccountsInfo", 7, 0, "accounts size %ld", [v191 count]);
  v446 = 0u;
  v447 = 0u;
  v444 = 0u;
  v445 = 0u;
  objb = v191;
  v194 = [objb countByEnumeratingWithState:&v444 objects:buf count:16];
  if (v194)
  {
    v418 = 0;
    v422 = 0;
    v415 = 0;
    v430 = *v445;
    do
    {
      for (m = 0; m != v194; m = m + 1)
      {
        if (*v445 != v430)
        {
          objc_enumerationMutation(objb);
        }

        v196 = [v434 accountWithIdentifier:*(*(&v444 + 1) + 8 * m)];
        if (sub_1000423E0())
        {
          v197 = sub_100042E68();
          if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
          {
            v198 = [v196 accountType];
            v199 = [v198 identifier];
            v200 = v199;
            v201 = [v199 UTF8String];
            *v452 = 136315650;
            *&v452[4] = "GetContactsAccountsInfo";
            *&v452[12] = 1024;
            *&v452[14] = 596;
            *&v452[18] = 2080;
            *&v452[20] = v201;
            _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "[%s:%d] id %s", v452, 0x1Cu);
          }
        }

        v202 = [v196 accountType];
        v203 = [v202 identifier];
        v204 = v203;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 596, "GetContactsAccountsInfo", 7, 0, "id %s", [v203 UTF8String]);

        v205 = [v196 enabledDataclasses];
        if ([v205 containsObject:@"com.apple.Dataclass.Contacts"])
        {
          if (sub_1000423E0())
          {
            v206 = sub_100042E68();
            if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
            {
              v207 = [v196 accountDescription];
              v208 = v207;
              v209 = [v207 UTF8String];
              v210 = [v196 accountType];
              v211 = [v210 identifier];
              v212 = v211;
              v213 = [v211 UTF8String];
              *v452 = 136315906;
              *&v452[4] = "GetContactsAccountsInfo";
              *&v452[12] = 1024;
              *&v452[14] = 600;
              *&v452[18] = 2080;
              *&v452[20] = v209;
              *&v452[28] = 2080;
              *&v452[30] = v213;
              _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_DEFAULT, "[%s:%d] %s identifier %s contains contacts", v452, 0x26u);
            }
          }

          v214 = [v196 accountDescription];
          v215 = v214;
          v216 = [v214 UTF8String];
          v217 = [v196 accountType];
          v218 = [v217 identifier];
          v219 = v218;
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 600, "GetContactsAccountsInfo", 7, 0, "%s identifier %s contains contacts", v216, [v218 UTF8String]);

          v220 = [v196 accountType];
          v221 = [v220 identifier];
          LODWORD(v216) = [v221 isEqualToString:@"com.apple.account.Yahoo"];

          if (v216)
          {
            if (sub_1000423E0())
            {
              v222 = sub_100042E68();
              if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
              {
                *v452 = 136315394;
                *&v452[4] = "GetContactsAccountsInfo";
                *&v452[12] = 1024;
                *&v452[14] = 604;
                _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_DEFAULT, "[%s:%d] Yahoo contacts account", v452, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 604, "GetContactsAccountsInfo", 7, 0, "Yahoo contacts account");
            v422 = 1;
          }

          else
          {
            v223 = [v196 accountType];
            v224 = [v223 identifier];
            v225 = [v224 isEqualToString:@"com.apple.account.Google"];

            if (v225)
            {
              if (sub_1000423E0())
              {
                v226 = sub_100042E68();
                if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
                {
                  *v452 = 136315394;
                  *&v452[4] = "GetContactsAccountsInfo";
                  *&v452[12] = 1024;
                  *&v452[14] = 609;
                  _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_DEFAULT, "[%s:%d] Gmail contacts account", v452, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 609, "GetContactsAccountsInfo", 7, 0, "Gmail contacts account");
              v418 = 1;
            }

            else
            {
              v227 = [v196 accountType];
              v228 = [v227 identifier];
              v229 = [v228 isEqualToString:@"com.apple.account.OnMyDevice"];

              if ((v229 & 1) == 0)
              {
                if (sub_1000423E0())
                {
                  v230 = sub_100042E68();
                  if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
                  {
                    *v452 = 136315394;
                    *&v452[4] = "GetContactsAccountsInfo";
                    *&v452[12] = 1024;
                    *&v452[14] = 614;
                    _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, "[%s:%d] other contacts account", v452, 0x12u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 614, "GetContactsAccountsInfo", 7, 0, "other contacts account");
                v415 = 1;
              }
            }
          }
        }
      }

      v194 = [objb countByEnumeratingWithState:&v444 objects:buf count:16];
    }

    while (v194);
    v231 = v418 == 0;
    v232 = v422 == 0;
    v233 = v415 == 0;
  }

  else
  {
    v231 = 1;
    v232 = 1;
    v233 = 1;
  }

  v234 = v407 != 0;
  if (v407)
  {
    v235 = 3;
  }

  else
  {
    v235 = 2;
  }

  if (!v405)
  {
    v234 = v235;
  }

  if (!v406)
  {
    v234 |= 8u;
  }

  if (v414)
  {
    v236 = v234;
  }

  else
  {
    v236 = v234 | 0x20;
  }

  v237 = v236 | 4;
  if (v231)
  {
    v237 = v236;
  }

  if (!v232)
  {
    v237 |= 0x10u;
  }

  if (v233)
  {
    v238 = v237;
  }

  else
  {
    v238 = v237 | 0x40;
  }

  v431 = [NSNumber numberWithUnsignedInt:v238];
  [v412 setObject:v431 forKeyedSubscript:@"iOS-Accounts"];
  v239 = objc_alloc_init(ACAccountStore);
  v240 = [v239 aa_primaryAppleAccountWithPreloadedDataclasses];
  v241 = v240;
  if (v240)
  {
    v242 = [v240 enabledDataclasses];
    v243 = [v242 containsObject:ACAccountDataclassUbiquity];

    v244 = [v241 enabledDataclasses];
    v245 = [v244 containsObject:ACAccountDataclassCloudPhotos];

    if (v245)
    {
      v246 = v243 | 2;
    }

    else
    {
      v246 = v243;
    }

    v247 = [v241 enabledDataclasses];
    v248 = [v247 containsObject:v404];

    if (v248)
    {
      v246 |= 4u;
    }

    v249 = [v241 enabledDataclasses];
    v250 = [v249 containsObject:v403];

    if (v250)
    {
      v246 |= 8u;
    }

    v251 = [v241 enabledDataclasses];
    v252 = [v251 containsObject:ACAccountDataclassCalendars];

    if (v252)
    {
      v246 |= 0x10u;
    }

    v253 = [v241 enabledDataclasses];
    v254 = [v253 containsObject:ACAccountDataclassReminders];

    if (v254)
    {
      v246 |= 0x20u;
    }

    v255 = [v241 enabledDataclasses];
    v256 = [v255 containsObject:ACAccountDataclassMessages];

    if (v256)
    {
      v246 |= 0x40u;
    }

    v257 = [v241 enabledDataclasses];
    v258 = [v257 containsObject:ACAccountDataclassBookmarks];

    if (v258)
    {
      v246 |= 0x80u;
    }

    v259 = [v241 enabledDataclasses];
    v260 = [v259 containsObject:ACAccountDataclassBackup];

    if (v260)
    {
      v261 = v246 | 0x100;
    }

    else
    {
      v261 = v246;
    }

    v262 = objc_alloc_init(OTConfigurationContext);
    [v262 setContext:OTDefaultContext];
    v263 = [[OTClique alloc] initWithContextData:v262];
    v264 = v263;
    if (v263)
    {
      *&v444 = 0;
      v265 = [v263 fetchUserControllableViewsSyncingEnabled:&v444];
      v266 = v444;
      if (v266)
      {
        if (sub_1000423E0())
        {
          v267 = sub_100042E68();
          if (os_log_type_enabled(v267, OS_LOG_TYPE_ERROR))
          {
            v268 = [v266 description];
            v269 = v268;
            v270 = [v268 UTF8String];
            *buf = 136315650;
            *&buf[4] = "CloudKeychainEnabled";
            *&buf[12] = 1024;
            *&buf[14] = 763;
            *&buf[18] = 2080;
            *&buf[20] = v270;
            _os_log_impl(&_mh_execute_header, v267, OS_LOG_TYPE_ERROR, "[%s:%d] fetchUserControllableViewsSyncingEnabled failed %s", buf, 0x1Cu);
          }
        }

        v271 = [v266 description];
        v272 = v271;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 763, "CloudKeychainEnabled", 3, 0, "fetchUserControllableViewsSyncingEnabled failed %s", [v271 UTF8String]);
      }

      if (v265)
      {
        v261 |= 0x200u;
      }
    }

    else
    {
      if (sub_1000423E0())
      {
        v275 = sub_100042E68();
        if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "CloudKeychainEnabled";
          *&buf[12] = 1024;
          *&buf[14] = 757;
          _os_log_impl(&_mh_execute_header, v275, OS_LOG_TYPE_ERROR, "[%s:%d] failed to create an OTClique, unable to return keychain sync info", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 757, "CloudKeychainEnabled", 3, 0, "failed to create an OTClique, unable to return keychain sync info");
    }

    v276 = [v241 enabledDataclasses];
    v277 = [v276 containsObject:ACAccountDataclassNotes];

    if (v277)
    {
      v278 = v261 | 0x400;
    }

    else
    {
      v278 = v261;
    }

    *&v444 = 0;
    *(&v444 + 1) = &v444;
    *&v445 = 0x2020000000;
    *(&v445 + 1) = 4;
    v279 = dispatch_group_create();
    dispatch_group_enter(v279);
    v280 = +[FMDFMIPManager sharedInstance];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000400E4;
    *&buf[24] = &unk_100068EC0;
    v460 = &v444;
    v281 = v279;
    *&buf[32] = v281;
    [v280 fmipStateWithCompletion:buf];

    v282 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v281, v282))
    {
      if (sub_1000423E0())
      {
        v283 = sub_100042E68();
        if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
        {
          *v452 = 136315394;
          *&v452[4] = "FindMyDeviceEnabled";
          *&v452[12] = 1024;
          *&v452[14] = 789;
          _os_log_impl(&_mh_execute_header, v283, OS_LOG_TYPE_DEFAULT, "[%s:%d] Timed out trying to get FMD state", v452, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 789, "FindMyDeviceEnabled", 7, 0, "Timed out trying to get FMD state");
    }

    v284 = *(*(&v444 + 1) + 24) == 1;

    _Block_object_dispose(&v444, 8);
    if (v284)
    {
      v274 = v278 | 0x800;
    }

    else
    {
      v274 = v278;
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v273 = sub_100042E68();
      if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetICloudFlags";
        *&buf[12] = 1024;
        *&buf[14] = 470;
        _os_log_impl(&_mh_execute_header, v273, OS_LOG_TYPE_DEFAULT, "[%s:%d] No iCloud Account set up", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 470, "GetICloudFlags", 7, 0, "No iCloud Account set up");
    v274 = 0;
  }

  objc = [NSNumber numberWithUnsignedInt:v274];
  [v412 setObject:objc forKeyedSubscript:@"iOS-iCloud"];
  v285 = _CTServerConnectionCreateWithIdentifier();
  if (!v285)
  {
    if (sub_1000423E0())
    {
      v290 = sub_100042E68();
      if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CellularDataEnabled";
        *&buf[12] = 1024;
        *&buf[14] = 1035;
        _os_log_impl(&_mh_execute_header, v290, OS_LOG_TYPE_ERROR, "[%s:%d] failed to make a connection to CTServer", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1035, "CellularDataEnabled", 3, 0, "failed to make a connection to CTServer");
    goto LABEL_387;
  }

  LOBYTE(v444) = 0;
  IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
  if (IsEnabled)
  {
    v287 = IsEnabled;
    v288 = HIDWORD(IsEnabled);
    if (sub_1000423E0())
    {
      v289 = sub_100042E68();
      if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "CellularDataEnabled";
        *&buf[12] = 1024;
        *&buf[14] = 1029;
        *&buf[18] = 1024;
        *&buf[20] = v287;
        *&buf[24] = 1024;
        *&buf[26] = v288;
        _os_log_impl(&_mh_execute_header, v289, OS_LOG_TYPE_ERROR, "[%s:%d] _CTServerConnectionGetCellularDataIsEnabled returns %d:%d", buf, 0x1Eu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1029, "CellularDataEnabled", 3, 0, "_CTServerConnectionGetCellularDataIsEnabled returns %d:%d", v287, v288);
    CFRelease(v285);
    goto LABEL_387;
  }

  v319 = v444;
  CFRelease(v285);
  if (!v319)
  {
LABEL_387:
    v291 = 0;
    goto LABEL_388;
  }

  if (sub_1000423E0())
  {
    v320 = sub_100042E68();
    if (os_log_type_enabled(v320, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "GetCellularFlags";
      *&buf[12] = 1024;
      *&buf[14] = 625;
      _os_log_impl(&_mh_execute_header, v320, OS_LOG_TYPE_DEFAULT, "[%s:%d] Cellular Data Enabled", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 625, "GetCellularFlags", 7, 0, "Cellular Data Enabled");
  v291 = 1;
LABEL_388:
  v292 = objc_alloc_init(CoreTelephonyClient);
  v293 = v292;
  if (v292)
  {
    *&v444 = 0;
    v294 = [v292 getCurrentDataServiceDescriptorSync:&v444];
    v295 = v444;
    v296 = v295;
    if (!v294 || v295)
    {
      if (sub_1000423E0())
      {
        v313 = sub_100042E68();
        if (os_log_type_enabled(v313, OS_LOG_TYPE_DEFAULT))
        {
          v314 = [v296 description];
          v315 = v314;
          v316 = [v314 UTF8String];
          *buf = 136315650;
          *&buf[4] = "SelectedPlanDataRoamingEnabled";
          *&buf[12] = 1024;
          *&buf[14] = 1085;
          *&buf[18] = 2080;
          *&buf[20] = v316;
          _os_log_impl(&_mh_execute_header, v313, OS_LOG_TYPE_DEFAULT, "[%s:%d] SelectedPlanDataRoamingEnabled: no data service descriptor available, error = %s", buf, 0x1Cu);
        }
      }

      v317 = [v296 description];
      v318 = v317;
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1085, "SelectedPlanDataRoamingEnabled", 6, 0, "SelectedPlanDataRoamingEnabled: no data service descriptor available, error = %s", [v317 UTF8String]);
    }

    else
    {
      *v452 = 0;
      v297 = [v293 getInternationalDataAccessSync:v294 error:v452];
      v298 = *v452;
      if (v298)
      {
        if (sub_1000423E0())
        {
          v299 = sub_100042E68();
          if (os_log_type_enabled(v299, OS_LOG_TYPE_ERROR))
          {
            v300 = [v298 description];
            v301 = v300;
            v302 = [v300 UTF8String];
            *buf = 136315650;
            *&buf[4] = "SelectedPlanDataRoamingEnabled";
            *&buf[12] = 1024;
            *&buf[14] = 1079;
            *&buf[18] = 2080;
            *&buf[20] = v302;
            _os_log_impl(&_mh_execute_header, v299, OS_LOG_TYPE_ERROR, "[%s:%d] SelectedPlanDataRoamingEnabled: failed to get the roaming enabled value, error = %s", buf, 0x1Cu);
          }
        }

        v303 = [v298 description];
        v304 = v303;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1079, "SelectedPlanDataRoamingEnabled", 3, 0, "SelectedPlanDataRoamingEnabled: failed to get the roaming enabled value, error = %s", [v303 UTF8String]);
      }

      if (v297)
      {
        v305 = objc_alloc_init(CoreTelephonyClient);
        v306 = v305;
        if (v305)
        {
          *&v444 = 0;
          v307 = [v305 getActiveContexts:&v444];
          v308 = v444;
          if (v307)
          {
            v309 = [v307 subscriptions];
            v310 = [v309 count] > 1;

            if (v310)
            {

              v311 = 4;
LABEL_438:
              v291 = v311 | v291;
              goto LABEL_439;
            }
          }

          else
          {
            if (sub_1000423E0())
            {
              v323 = sub_100042E68();
              if (os_log_type_enabled(v323, OS_LOG_TYPE_ERROR))
              {
                v324 = [v308 description];
                v325 = v324;
                v326 = [v324 UTF8String];
                *buf = 136315650;
                *&buf[4] = "isMultiSim";
                *&buf[12] = 1024;
                *&buf[14] = 1057;
                *&buf[18] = 2080;
                *&buf[20] = v326;
                _os_log_impl(&_mh_execute_header, v323, OS_LOG_TYPE_ERROR, "[%s:%d] isMultiSim: error getting activeContexts, error = %s", buf, 0x1Cu);
              }
            }

            v327 = [v308 description];
            v328 = v327;
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1057, "isMultiSim", 3, 0, "isMultiSim: error getting activeContexts, error = %s", [v327 UTF8String]);
          }
        }

        else
        {
          if (sub_1000423E0())
          {
            v322 = sub_100042E68();
            if (os_log_type_enabled(v322, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "isMultiSim";
              *&buf[12] = 1024;
              *&buf[14] = 1062;
              _os_log_impl(&_mh_execute_header, v322, OS_LOG_TYPE_ERROR, "[%s:%d] isMultiSim: Failed to get the CoreTelephonyClient", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1062, "isMultiSim", 3, 0, "isMultiSim: Failed to get the CoreTelephonyClient");
        }

        v311 = 2;
        goto LABEL_438;
      }
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v312 = sub_100042E68();
      if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "SelectedPlanDataRoamingEnabled";
        *&buf[12] = 1024;
        *&buf[14] = 1090;
        _os_log_impl(&_mh_execute_header, v312, OS_LOG_TYPE_ERROR, "[%s:%d] SelectedPlanDataRoamingEnabled: Failed to get the CoreTelephonyClient", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1090, "SelectedPlanDataRoamingEnabled", 3, 0, "SelectedPlanDataRoamingEnabled: Failed to get the CoreTelephonyClient");
  }

LABEL_439:
  v423 = [NSNumber numberWithUnsignedInt:v291];
  [v412 setObject:v423 forKeyedSubscript:@"iOS-Cellular"];
  [v412 setObject:&off_10006B1F0 forKeyedSubscript:@"version"];
  v435 = MGCopyAnswer();
  if ([v435 length] < 0x33)
  {
    [v412 setObject:v435 forKeyedSubscript:@"ComputerName"];
  }

  else
  {
    v329 = [v435 rangeOfComposedCharacterSequencesForRange:{0, 50}];
    v331 = [v435 substringWithRange:{v329, v330}];
    [v412 setObject:v331 forKeyedSubscript:@"ComputerName"];
  }

  [v412 setObject:@"iOS" forKeyedSubscript:@"os"];
  v332 = +[NSProcessInfo processInfo];
  v333 = [v332 operatingSystemVersionString];
  [v412 setObject:v333 forKeyedSubscript:@"OSVersion"];

  v334 = MGCopyAnswer();
  [v412 setObject:v334 forKeyedSubscript:@"ComputerName"];

  v335 = MGCopyAnswer();
  [v412 setObject:v335 forKeyedSubscript:@"ComputerModel"];

  [v412 setObject:@"mobile" forKeyedSubscript:@"ShortUserName"];
  v336 = sub_100040228();
  if (v336)
  {
    [v412 setObject:v336 forKeyedSubscript:@"SerialNumber"];
    CFRelease(v336);
  }

  else
  {
    if (sub_1000423E0())
    {
      v337 = sub_100042E68();
      if (os_log_type_enabled(v337, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[ShareSettingsInfo gatherSystemInfo]";
        *&buf[12] = 1024;
        *&buf[14] = 206;
        _os_log_impl(&_mh_execute_header, v337, OS_LOG_TYPE_DEFAULT, "[%s:%d] unable to get serial number", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 206, "[ShareSettingsInfo gatherSystemInfo]", 7, 0, "unable to get serial number");
  }

  if (CKMadridSendAsSMSEnabled())
  {
    if (sub_1000423E0())
    {
      v338 = sub_100042E68();
      if (os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMessagesFlags";
        *&buf[12] = 1024;
        *&buf[14] = 566;
        _os_log_impl(&_mh_execute_header, v338, OS_LOG_TYPE_DEFAULT, "[%s:%d] messages - send as SMS", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 566, "GetMessagesFlags", 7, 0, "messages - send as SMS");
    v339 = 2;
  }

  else
  {
    v339 = 0;
  }

  if (CKMessageUnknownFilteringEnabled())
  {
    if (sub_1000423E0())
    {
      v340 = sub_100042E68();
      if (os_log_type_enabled(v340, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMessagesFlags";
        *&buf[12] = 1024;
        *&buf[14] = 571;
        _os_log_impl(&_mh_execute_header, v340, OS_LOG_TYPE_DEFAULT, "[%s:%d] messages - filter unknown", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 571, "GetMessagesFlags", 7, 0, "messages - filter unknown");
    v339 = v339 | 4;
  }

  v341 = +[IMCTSubscriptionUtilities sharedInstance];
  HasMultipleSubscriptions = IMSharedHelperDeviceHasMultipleSubscriptions();
  v343 = sub_1000423E0();
  if (HasMultipleSubscriptions)
  {
    if (v343)
    {
      v344 = sub_100042E68();
      if (os_log_type_enabled(v344, OS_LOG_TYPE_DEFAULT))
      {
        *v452 = 136315394;
        *&v452[4] = "GetMMSEnabled";
        *&v452[12] = 1024;
        *&v452[14] = 981;
        _os_log_impl(&_mh_execute_header, v344, OS_LOG_TYPE_DEFAULT, "[%s:%d] Has multiple SIMs", v452, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 981, "GetMMSEnabled", 7, 0, "Has multiple SIMs");
    v345 = [v341 ctServiceSubscriptions];
    v446 = 0u;
    v447 = 0u;
    v444 = 0u;
    v445 = 0u;
    v346 = v345;
    v347 = [v346 countByEnumeratingWithState:&v444 objects:buf count:16];
    if (v347)
    {
      v348 = *v445;
      while (2)
      {
        for (n = 0; n != v347; n = n + 1)
        {
          if (*v445 != v348)
          {
            objc_enumerationMutation(v346);
          }

          v350 = *(*(&v444 + 1) + 8 * n);
          v351 = [v350 phoneNumber];
          v352 = [v350 labelID];
          v353 = [IMCTSMSUtilities IMMMSEnabledForPhoneNumber:v351 simID:v352];

          if (v353)
          {

            goto LABEL_485;
          }
        }

        v347 = [v346 countByEnumeratingWithState:&v444 objects:buf count:16];
        if (v347)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_496;
  }

  if (v343)
  {
    v354 = sub_100042E68();
    if (os_log_type_enabled(v354, OS_LOG_TYPE_DEFAULT))
    {
      *v452 = 136315394;
      *&v452[4] = "GetMMSEnabled";
      *&v452[12] = 1024;
      *&v452[14] = 992;
      _os_log_impl(&_mh_execute_header, v354, OS_LOG_TYPE_DEFAULT, "[%s:%d] Has a single SIM", v452, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 992, "GetMMSEnabled", 7, 0, "Has a single SIM");
  *&v448 = 0;
  v355 = [v341 ctSubscriptionInfoWithError:&v448];
  v356 = v448;
  if (!v355)
  {
    if (sub_1000423E0())
    {
      v363 = sub_100042E68();
      if (os_log_type_enabled(v363, OS_LOG_TYPE_ERROR))
      {
        v364 = [v356 description];
        v365 = v364;
        v366 = [v364 UTF8String];
        *v452 = 136315650;
        *&v452[4] = "GetMMSEnabled";
        *&v452[12] = 1024;
        *&v452[14] = 1006;
        *&v452[18] = 2080;
        *&v452[20] = v366;
        _os_log_impl(&_mh_execute_header, v363, OS_LOG_TYPE_ERROR, "[%s:%d] error getting the active subscription %s", v452, 0x1Cu);
      }
    }

    v358 = [v356 description];
    v367 = v358;
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1006, "GetMMSEnabled", 3, 0, "error getting the active subscription %s", [v358 UTF8String]);
    goto LABEL_495;
  }

  v357 = [v355 preferredOrDefaultSubscriptionContext];
  v358 = v357;
  if (!v357)
  {
LABEL_495:

    goto LABEL_496;
  }

  v359 = [v357 phoneNumber];
  v360 = [v358 labelID];
  v361 = [IMCTSMSUtilities IMMMSEnabledForPhoneNumber:v359 simID:v360];

  if (v361)
  {
LABEL_485:
    if (sub_1000423E0())
    {
      v362 = sub_100042E68();
      if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMessagesFlags";
        *&buf[12] = 1024;
        *&buf[14] = 576;
        _os_log_impl(&_mh_execute_header, v362, OS_LOG_TYPE_DEFAULT, "[%s:%d] messages - MMS enabled", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 576, "GetMessagesFlags", 7, 0, "messages - MMS enabled");
    v339 = v339 | 8;
  }

LABEL_496:
  v368 = [NSNumber numberWithUnsignedInt:v339];
  [v412 setObject:v368 forKeyedSubscript:@"iOS-Messages"];
  v441[0] = @"type";
  v441[1] = @"identifier";
  v442[0] = @"Storage";
  v442[1] = &stru_100069830;
  v369 = [NSDictionary dictionaryWithObjects:v442 forKeys:v441 count:2];
  v443[0] = v369;
  v439[0] = @"type";
  v439[1] = @"identifier";
  v440[0] = @"System";
  v440[1] = &stru_100069830;
  v370 = [NSDictionary dictionaryWithObjects:v440 forKeys:v439 count:2];
  v443[1] = v370;
  v437[0] = @"type";
  v437[1] = @"identifier";
  v438[0] = @"Battery";
  v438[1] = @"Internal";
  v371 = [NSDictionary dictionaryWithObjects:v438 forKeys:v437 count:2];
  v443[2] = v371;
  v372 = [NSArray arrayWithObjects:v443 count:3];

  if (sub_1000423E0())
  {
    v373 = sub_100042E68();
    if (os_log_type_enabled(v373, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[ShareSettingsInfo gatherSystemInfo]";
      *&buf[12] = 1024;
      *&buf[14] = 217;
      _os_log_impl(&_mh_execute_header, v373, OS_LOG_TYPE_DEFAULT, "[%s:%d] start getting DLC", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 217, "[ShareSettingsInfo gatherSystemInfo]", 7, 0, "start getting DLC");
  v374 = objc_alloc_init(SharedSettingsDiagnosticsInterface);
  v375 = [(SharedSettingsDiagnosticsInterface *)v374 getDiagnosticsSystemReport:v372];
  if (sub_1000423E0())
  {
    v376 = sub_100042E68();
    if (os_log_type_enabled(v376, OS_LOG_TYPE_DEFAULT))
    {
      v377 = [v375 description];
      v378 = v377;
      v379 = [v377 UTF8String];
      *buf = 136315650;
      *&buf[4] = "[ShareSettingsInfo gatherSystemInfo]";
      *&buf[12] = 1024;
      *&buf[14] = 220;
      *&buf[18] = 2080;
      *&buf[20] = v379;
      _os_log_impl(&_mh_execute_header, v376, OS_LOG_TYPE_DEFAULT, "[%s:%d] DLC %s", buf, 0x1Cu);
    }
  }

  v380 = [v375 description];
  v381 = v380;
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 220, "-[ShareSettingsInfo gatherSystemInfo]", 7, 0, "DLC %s", [v380 UTF8String]);

  [v412 setObject:v375 forKeyedSubscript:@"DLC"];
  objc_autoreleasePoolPop(context);
  if (sub_1000423E0())
  {
    v382 = sub_100042E68();
    if (os_log_type_enabled(v382, OS_LOG_TYPE_DEFAULT))
    {
      v383 = [v412 description];
      v384 = v383;
      v385 = [v383 UTF8String];
      *buf = 136315650;
      *&buf[4] = "[ShareSettingsInfo gatherSystemInfo]";
      *&buf[12] = 1024;
      *&buf[14] = 223;
      *&buf[18] = 2080;
      *&buf[20] = v385;
      _os_log_impl(&_mh_execute_header, v382, OS_LOG_TYPE_DEFAULT, "[%s:%d] system info %s", buf, 0x1Cu);
    }
  }

  v386 = [v412 description];
  v387 = v386;
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 223, "-[ShareSettingsInfo gatherSystemInfo]", 7, 0, "system info %s", [v386 UTF8String]);

  return v412;
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v3 = [(ShareSettingsInfo *)self stateSemaphore];
  dispatch_semaphore_signal(v3);
}

@end