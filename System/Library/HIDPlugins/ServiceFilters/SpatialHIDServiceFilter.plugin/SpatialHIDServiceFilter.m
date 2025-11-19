uint64_t sub_E60()
{
  if (qword_1ADF0 != -1)
  {
    sub_812C();
  }

  return byte_1ADE8;
}

id sub_EC0()
{
  if (qword_1AE00 != -1)
  {
    sub_8140();
  }

  v1 = qword_1ADF8;

  return v1;
}

void sub_F04(id a1)
{
  v1 = os_log_create("com.apple.GameController", "default");
  v2 = qword_1ADF8;
  qword_1ADF8 = v1;
}

id sub_F48()
{
  if (qword_1AE10 != -1)
  {
    sub_8154();
  }

  v1 = qword_1AE08;

  return v1;
}

void sub_F8C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "monitor");
  v2 = qword_1AE08;
  qword_1AE08 = v1;
}

id sub_FD0()
{
  if (qword_1AE20 != -1)
  {
    sub_8168();
  }

  v1 = qword_1AE18;

  return v1;
}

void sub_1014(id a1)
{
  v1 = os_log_create("com.apple.GameController", "analytics");
  v2 = qword_1AE18;
  qword_1AE18 = v1;
}

id sub_1058()
{
  if (qword_1AE30 != -1)
  {
    sub_817C();
  }

  v1 = qword_1AE28;

  return v1;
}

void sub_109C(id a1)
{
  v1 = os_log_create("com.apple.GameController.Daemon", "default");
  v2 = qword_1AE28;
  qword_1AE28 = v1;
}

void sub_10E0(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = qword_1AE38;
  qword_1AE38 = v1;
}

id sub_1120()
{
  if (qword_1AE40 != -1)
  {
    sub_8190();
  }

  v1 = qword_1AE38;

  return v1;
}

void sub_1164(id a1)
{
  if (!qword_1AE38)
  {
    objc_storeStrong(&qword_1AE38, &_os_log_default);
  }
}

id sub_1188()
{
  if (qword_1AE50 != -1)
  {
    sub_81A4();
  }

  v1 = qword_1AE48;

  return v1;
}

void sub_11CC(id a1)
{
  v1 = os_log_create("com.apple.GameController.Settings", "default");
  v2 = qword_1AE48;
  qword_1AE48 = v1;
}

id sub_1210()
{
  if (qword_1AE60 != -1)
  {
    sub_81B8();
  }

  v1 = qword_1AE58;

  return v1;
}

void sub_1254(id a1)
{
  v1 = os_log_create("com.apple.GameController.Haptics", "default");
  v2 = qword_1AE58;
  qword_1AE58 = v1;
}

id sub_1298()
{
  if (qword_1AE70 != -1)
  {
    sub_81CC();
  }

  v1 = qword_1AE68;

  return v1;
}

void sub_12DC(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "GameController");
  v2 = qword_1AE68;
  qword_1AE68 = v1;
}

NSObject *sub_1348(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
{
  v7 = a4;
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  if (v8)
  {
    v9 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(v8, v9, a1, a2);
    dispatch_source_set_event_handler(v8, v7);
    dispatch_resume(v8);
  }

  return v8;
}

void sub_15C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_15F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1120();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_1690(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1120();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", v4, 2u);
  }

  v3 = [WeakRetained remoteObjectProxy];
  [v3 driverCheckIn];
}

void sub_1E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E3C(uint64_t a1)
{
  v2 = [NSString stringWithCString:dispatch_queue_get_label(*(a1 + 32)) encoding:4];
  v3 = sub_1120();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Freeing HIDDevice on %@", &v6, 0xCu);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

BOOL sub_2234(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsagePage"];
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsage"];
    v6 = (![v4 isEqual:&off_14FB0] || (objc_msgSend(v5, "isEqual:", &off_14FC8) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_14FB0) || (objc_msgSend(v5, "isEqual:", &off_14FE0) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_14FB0) || (objc_msgSend(v5, "isEqual:", &off_14FB0) & 1) == 0);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_27E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2808(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_1120();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "calling cancel handler", v4, 2u);
    }

    (*(WeakRetained[1] + 16))();
    v3 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

void sub_2A7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 528);
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = 0;
  }
}

void sub_333C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 560);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_33E4;
  v7[3] = &unk_145A0;
  v7[4] = v2;
  v4 = sub_1348(0x6FC23AC00uLL, 0x3B9ACA00uLL, v3, v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

void sub_4898(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[480] & 1) == 0)
    {
      WeakRetained[480] = 1;
      if (!*(WeakRetained + 66))
      {
        clock_gettime(_CLOCK_MONOTONIC_RAW, (WeakRetained + 504));
        v4 = v3[70];
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_4988;
        v7[3] = &unk_14510;
        objc_copyWeak(&v8, (a1 + 32));
        v5 = sub_1348(0xF4240uLL, 0x186A0uLL, v4, v7);
        v6 = v3[66];
        v3[66] = v5;

        objc_destroyWeak(&v8);
      }
    }
  }
}

void sub_4988(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = 0uLL;
    clock_gettime(_CLOCK_MONOTONIC_RAW, &v5);
    if ((*(&v5 + 1) + v5 * 1000000000.0 - (*(WeakRetained + 64) + *(WeakRetained + 63) * 1000000000.0)) * 0.000000001 >= *(WeakRetained + 122))
    {
      *(WeakRetained + 504) = v5;
      v2 = [WeakRetained isAnyHapticMotorEnabled];
      v3 = sub_1120();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        if (v4)
        {
          sub_8608(v3);
        }

        *(WeakRetained + 121) = 0;
        [WeakRetained dispatchHapticEvent];
      }

      else
      {
        if (v4)
        {
          sub_85C4(v3);
        }

        [WeakRetained stopHaptics];
      }
    }
  }
}

uint64_t sub_5068()
{

  return kdebug_trace();
}

id sub_5090(uint64_t a1, void *a2)
{
  v3 = *(a1 + 656);

  return [a2 timestamp];
}

void sub_50B8(uint64_t a1)
{
  v1[5] = a1;

  dispatch_after(v2, v3, v1);
}

void sub_6168(uint64_t a1)
{
  if (a1)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v2 = _os_activity_create(&dword_0, "Connect To Daemon", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);
    v3 = *(a1 + 56);
    v4 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.GameController.gamecontrollerd.driver" options:4096];
    v5 = *(a1 + 72);
    *(a1 + 72) = v4;

    objc_initWeak(&location, *(a1 + 72));
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_6BEC;
    v16[3] = &unk_14510;
    objc_copyWeak(&v17, &location);
    [*(a1 + 72) setInvalidationHandler:v16];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_6C84;
    v13 = &unk_14610;
    objc_copyWeak(&v15, &location);
    v6 = v3;
    v14 = v6;
    [*(a1 + 72) setInterruptionHandler:&v10];
    v7 = sub_80F0();
    [*(a1 + 72) setRemoteObjectInterface:{v7, v10, v11, v12, v13}];

    v8 = sub_7DDC();
    [*(a1 + 72) setExportedInterface:v8];

    [*(a1 + 72) setExportedObject:a1];
    [*(a1 + 72) _setQueue:*(a1 + 56)];
    [*(a1 + 72) resume];
    v9 = [*(a1 + 72) remoteObjectProxy];
    [v9 driverCheckIn];

    os_activity_scope_leave(&state);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void sub_6378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6BEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1120();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_6C84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_1120();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", buf, 2u);
  }

  v4 = dispatch_time(0, 500000000);
  v5 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6D88;
  block[3] = &unk_145A0;
  v8 = WeakRetained;
  v6 = WeakRetained;
  dispatch_after(v4, v5, block);
}

void sub_6D88(uint64_t a1)
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_6E18;
  activity_block[3] = &unk_145A0;
  v2 = *(a1 + 32);
  _os_activity_initiate(&dword_0, "Resume Connection To Game Controller Daemon", OS_ACTIVITY_FLAG_DETACHED, activity_block);
}

void sub_6E18(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteObjectProxy];
  [v1 driverCheckIn];
}

void sub_6F04(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t *sub_6F2C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

id hexStringFromByteArray(uint64_t a1, int a2)
{
  v4 = [NSMutableString stringWithCapacity:2 * a2];
  if (a2 >= 1)
  {
    v5 = a2 - 1;
    do
    {
      if (v5)
      {
        v6 = @":";
      }

      else
      {
        v6 = &stru_14AB0;
      }

      v7 = [NSString stringWithFormat:@"%02x%@", *(a1 + v5), v6];
      [v4 appendString:v7];

      v8 = v5-- + 1;
    }

    while (v8 > 1);
  }

  v9 = [NSString stringWithString:v4];
  v10 = [v9 uppercaseString];

  return v10;
}

uint64_t isPartnerSupportEnabled()
{
  if (qword_1AE88 != -1)
  {
    sub_9234();
  }

  return byte_1AE90;
}

void sub_7C44(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  byte_1AE90 = [v1 BOOLForKey:@"GCPartnersEnable"];
  v2 = sub_1120();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = byte_1AE90;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v3, 8u);
  }
}

id sub_7DDC()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_E38();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_E4C();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_7DB4();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_7DC8();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_7D24();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_7D38();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_7D64();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_7D78();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_7D8C();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_7DA0();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_8104();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_8118();
  [v0 setInterface:v12 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v13 = sub_1320();
  [v0 setInterface:v13 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v14 = sub_1334();
  [v0 setInterface:v14 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v15 = GCGenericDeviceDriverConfigurationServiceClientInterface();
  [v0 setInterface:v15 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v16 = GCGenericDeviceDriverConfigurationServiceServerInterface();
  [v0 setInterface:v16 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

void sub_81E0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    v8 = v5;
    if (a3)
    {
      *(a1 + 664) = [v5 timestamp];
    }

    v6 = *(a1 + 656);
    [v8 timestamp];
    [v8 type];
    kdebug_trace();
    WeakRetained = objc_loadWeakRetained((a1 + 624));
    [WeakRetained dispatchEvent:v8];

    v5 = v8;
  }
}

uint64_t sub_8290(uint64_t result)
{
  if (result)
  {
    return *(result + 656);
  }

  return result;
}

void sub_8344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1120();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 656);
    v8 = 134218498;
    v9 = v7;
    v10 = 2112;
    v11 = a2;
    v12 = 2112;
    v13 = a3;
    _os_log_debug_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[%#010llx] setProperty: %@ forKey: %@", &v8, 0x20u);
  }
}

void sub_8428(uint64_t a1, void *a2)
{
  sub_5090(a1, a2);
  [v3 type];
  sub_5068();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_5048();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_36D4;
  *(v2 + 24) = &unk_145E8;
  *(v2 + 32) = v5;
  sub_50B8(v3);
}

void sub_84D8(uint64_t a1, void *a2)
{
  sub_5090(a1, a2);
  [v3 type];
  sub_5068();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_5048();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_3754;
  *(v2 + 24) = &unk_145E8;
  *(v2 + 32) = v5;
  sub_50B8(v3);
}

uint64_t sub_8588(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 656);
  }

  return kdebug_trace();
}

void sub_8734(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6EDC();
  sub_6EF4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_87A4(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6EDC();
  sub_6EF4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_8814(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6EDC();
  sub_6EF4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_8884(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6EDC();
  sub_6EF4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_88F4(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "[%#llx] Mismatch between waveform & duration elements.", v3, v4, v5, v6, v7);
}

void sub_895C(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6EF4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_89D8(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "[%#llx] Does not support rumble.", v3, v4, v5, v6, v7);
}

void sub_8A40(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "[%#llx] Multiple intensity elements found.  This is not supported.", v3, v4, v5, v6, v7);
}

void sub_8AA8(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "[%#llx] Missing intensity.", v3, v4, v5, v6, v7);
}

void sub_8B10(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "[%#llx] Multiple manual trigger elements found.  This is not supported.", v3, v4, v5, v6, v7);
}

void sub_8B78(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "[%#llx] Missing manual trigger.", v3, v4, v5, v6, v7);
}

void sub_8BE0(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "[%#llx] Multiple waveform cutoff time elements found.  This is not supported.", v3, v4, v5, v6, v7);
}

void sub_8C48(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "[%#llx] Missing waveform cutoff time.", v3, v4, v5, v6, v7);
}

void sub_8CB0(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "[%#llx] Multiple duration list collections found.  This is not supported.", v3, v4, v5, v6, v7);
}

void sub_8D18(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "[%#llx] Missing duration list", v3, v4, v5, v6, v7);
}

void sub_8D80(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "[%#llx] Multiple waveform list collections found.  This is not supported.", v3, v4, v5, v6, v7);
}

void sub_8DE8(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "[%#llx] Missing waveform list", v3, v4, v5, v6, v7);
}

void sub_8E50(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F38();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_8EC0(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F38();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_8F30(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "Failed to create HIDDevice for <Kernel/IOHIDDevice serviceID='%#010llx'>.", v3, v4, v5, v6, v7);
}

void sub_8F98(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "Did not find Kernel/IOHIDDevice with serviceID (%#llx).", v3, v4, v5, v6, v7);
}

void sub_9000(uint64_t *a1)
{
  sub_6F2C(a1, __stack_chk_guard);
  sub_6F20();
  sub_6F04(&dword_0, v1, v2, "No Kernel/IOHIDDevice ancestor of <Kernel/IOHIDComplexEventDriver serviceID='%#010llx'>.", v3, v4, v5, v6, v7);
}

void sub_9068()
{
  sub_6F44();
  sub_6EF4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_90D8()
{
  sub_6F44();
  sub_6EF4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}