uint64_t sub_DE8()
{
  if (qword_1F168 != -1)
  {
    sub_B238();
  }

  return byte_1F160;
}

id sub_E48()
{
  if (qword_1F178 != -1)
  {
    sub_B24C();
  }

  v1 = qword_1F170;

  return v1;
}

void sub_E8C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "default");
  v2 = qword_1F170;
  qword_1F170 = v1;
}

id sub_ED0()
{
  if (qword_1F188 != -1)
  {
    sub_B260();
  }

  v1 = qword_1F180;

  return v1;
}

void sub_F14(id a1)
{
  v1 = os_log_create("com.apple.GameController", "monitor");
  v2 = qword_1F180;
  qword_1F180 = v1;
}

id sub_F58()
{
  if (qword_1F198 != -1)
  {
    sub_B274();
  }

  v1 = qword_1F190;

  return v1;
}

void sub_F9C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "analytics");
  v2 = qword_1F190;
  qword_1F190 = v1;
}

id sub_FE0()
{
  if (qword_1F1A8 != -1)
  {
    sub_B288();
  }

  v1 = qword_1F1A0;

  return v1;
}

void sub_1024(id a1)
{
  v1 = os_log_create("com.apple.GameController.Daemon", "default");
  v2 = qword_1F1A0;
  qword_1F1A0 = v1;
}

void sub_1068(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = qword_1F1B0;
  qword_1F1B0 = v1;
}

id sub_10A8()
{
  if (qword_1F1B8 != -1)
  {
    sub_B29C();
  }

  v1 = qword_1F1B0;

  return v1;
}

void sub_10EC(id a1)
{
  if (!qword_1F1B0)
  {
    objc_storeStrong(&qword_1F1B0, &_os_log_default);
  }
}

id sub_1110()
{
  if (qword_1F1C8 != -1)
  {
    sub_B2B0();
  }

  v1 = qword_1F1C0;

  return v1;
}

void sub_1154(id a1)
{
  v1 = os_log_create("com.apple.GameController.Settings", "default");
  v2 = qword_1F1C0;
  qword_1F1C0 = v1;
}

id sub_1198()
{
  if (qword_1F1D8 != -1)
  {
    sub_B2C4();
  }

  v1 = qword_1F1D0;

  return v1;
}

void sub_11DC(id a1)
{
  v1 = os_log_create("com.apple.GameController.Haptics", "default");
  v2 = qword_1F1D0;
  qword_1F1D0 = v1;
}

id sub_1220()
{
  if (qword_1F1E8 != -1)
  {
    sub_B2D8();
  }

  v1 = qword_1F1E0;

  return v1;
}

void sub_1264(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "GameController");
  v2 = qword_1F1E0;
  qword_1F1E0 = v1;
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
        v6 = &stru_189A0;
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
  if (qword_1F1F0 != -1)
  {
    sub_B2EC();
  }

  return byte_1F1F8;
}

void sub_2020(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  byte_1F1F8 = [v1 BOOLForKey:@"GCPartnersEnable"];
  v2 = sub_10A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = byte_1F1F8;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v3, 8u);
  }
}

id sub_2100()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_19B8();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_19CC();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_B1E8();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_B1FC();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_1EB4();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_1EC8();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_2428();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_243C();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_B1C0();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_B1D4();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_B210();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_B224();
  [v0 setInterface:v12 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v13 = sub_12A8();
  [v0 setInterface:v13 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v14 = sub_12BC();
  [v0 setInterface:v14 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v15 = GCGenericDeviceDriverConfigurationServiceClientInterface();
  [v0 setInterface:v15 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v16 = GCGenericDeviceDriverConfigurationServiceServerInterface();
  [v0 setInterface:v16 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

NSObject *sub_2450(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
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

void sub_26D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2700(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_10A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_2798(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_10A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", v4, 2u);
  }

  v3 = [WeakRetained remoteObjectProxy];
  [v3 driverCheckIn];
}

void sub_2F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2F2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2F44(uint64_t a1)
{
  v2 = [NSString stringWithCString:dispatch_queue_get_label(*(a1 + 32)) encoding:4];
  v3 = sub_10A8();
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

BOOL sub_333C(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsagePage"];
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsage"];
    v6 = (![v4 isEqual:&off_19698] || (objc_msgSend(v5, "isEqual:", &off_196B0) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_19698) || (objc_msgSend(v5, "isEqual:", &off_196C8) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_19698) || (objc_msgSend(v5, "isEqual:", &off_19698) & 1) == 0);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_38EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3910(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_10A8();
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

void sub_3B84(uint64_t a1)
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

void sub_4444(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 560);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_44EC;
  v7[3] = &unk_185B0;
  v7[4] = v2;
  v4 = sub_2450(0x6FC23AC00uLL, 0x3B9ACA00uLL, v3, v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

void sub_59A0(uint64_t a1)
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
        v7[2] = sub_5A90;
        v7[3] = &unk_18520;
        objc_copyWeak(&v8, (a1 + 32));
        v5 = sub_2450(0xF4240uLL, 0x186A0uLL, v4, v7);
        v6 = v3[66];
        v3[66] = v5;

        objc_destroyWeak(&v8);
      }
    }
  }
}

void sub_5A90(uint64_t a1)
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
      v3 = sub_10A8();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        if (v4)
        {
          sub_B728(v3);
        }

        *(WeakRetained + 121) = 0;
        [WeakRetained dispatchHapticEvent];
      }

      else
      {
        if (v4)
        {
          sub_B6E4(v3);
        }

        [WeakRetained stopHaptics];
      }
    }
  }
}

uint64_t sub_6170()
{

  return kdebug_trace();
}

id sub_6198(uint64_t a1, void *a2)
{
  v3 = *(a1 + 656);

  return [a2 timestamp];
}

void sub_61C0(uint64_t a1)
{
  v1[5] = a1;

  dispatch_after(v2, v3, v1);
}

void sub_6938(uint64_t a1, int a2, const void *a3, unint64_t a4)
{
  v8 = *(a1 + 40);
  kdebug_trace();
  if (a2)
  {
    v9 = sub_10A8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_B7DC();
    }
  }

  else
  {
    if (a4 >= 0x40)
    {
      v10 = 64;
    }

    else
    {
      v10 = a4;
    }

    memcpy((*(a1 + 32) + 904), a3, v10);
    v9 = sub_10A8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_6A84((*(a1 + 32) + 904));
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "(Async) Firmware Info = %@", &v12, 0xCu);
    }
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
}

id sub_6A84(const char *a1)
{
  v1 = *a1;
  if (*a1)
  {
    __dst[11] = 0;
    strncpy(__dst, a1 + 1, 0xBuLL);
    v27[8] = 0;
    strncpy(v27, a1 + 12, 8uLL);
    v25[0] = @"ReportID";
    v24 = [NSNumber numberWithUnsignedChar:v1];
    v26[0] = v24;
    v25[1] = @"Build Date";
    v3 = [NSString stringWithUTF8String:__dst];
    v23 = v3;
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = @"<invalid>";
    }

    v26[1] = v4;
    v25[2] = @"Build Time";
    v5 = [NSString stringWithUTF8String:v27];
    v22 = v5;
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"<invalid>";
    }

    v26[2] = v6;
    v25[3] = @"Firmware Type";
    v21 = [NSNumber numberWithUnsignedShort:*(a1 + 10)];
    v26[3] = v21;
    v25[4] = @"Software Series";
    v20 = [NSNumber numberWithUnsignedShort:*(a1 + 11)];
    v26[4] = v20;
    v25[5] = @"Hardware Info";
    v19 = [NSNumber numberWithUnsignedInt:*(a1 + 6)];
    v26[5] = v19;
    v25[6] = @"Main Firmware Version";
    v18 = [NSNumber numberWithUnsignedInt:*(a1 + 7)];
    v26[6] = v18;
    v25[7] = @"Device Info [0]";
    v7 = [NSNumber numberWithUnsignedInt:*(a1 + 8)];
    v26[7] = v7;
    v25[8] = @"Device Info [1]";
    v8 = [NSNumber numberWithUnsignedInt:*(a1 + 9)];
    v26[8] = v8;
    v25[9] = @"Device Info [2]";
    v9 = [NSNumber numberWithUnsignedInt:*(a1 + 10)];
    v26[9] = v9;
    v25[10] = @"Device Info [3]";
    v10 = [NSNumber numberWithUnsignedInt:*(a1 + 11)];
    v26[10] = v10;
    v25[11] = @"Update Version";
    v11 = [NSNumber numberWithUnsignedShort:*(a1 + 22)];
    v26[11] = v11;
    v25[12] = @"Update Capability Info";
    v12 = [NSNumber numberWithUnsignedChar:*(a1 + 46)];
    v26[12] = v12;
    v25[13] = @"Audio Sig Proc FW Version";
    v13 = [NSNumber numberWithUnsignedInt:*(a1 + 13)];
    v26[13] = v13;
    v25[14] = @"Audio Codec FW Version";
    v14 = [NSNumber numberWithUnsignedInt:*(a1 + 14)];
    v26[14] = v14;
    v25[15] = @"CRC 32";
    v15 = [NSNumber numberWithUnsignedInt:*(a1 + 15)];
    v26[15] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:16];
  }

  else
  {
    v16 = +[NSDictionary dictionary];
  }

  return v16;
}

void sub_706C(uint64_t a1, int a2, const void *a3, unint64_t a4)
{
  v8 = *(a1 + 40);
  kdebug_trace();
  if (a2)
  {
    v9 = sub_10A8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_B8BC();
    }

LABEL_4:

    goto LABEL_27;
  }

  v10 = a1 + 32;
  if (a4 >= 0x29)
  {
    v11 = 41;
  }

  else
  {
    v11 = a4;
  }

  memcpy((*(a1 + 32) + 727), a3, v11);
  if (sub_DE8())
  {
    sub_B92C();
  }

  v12 = vcvtd_n_f64_s32(*(*v10 + 748) + *(*v10 + 746), 1uLL);
  *(*v10 + 768) = v12 / ((fabs((*(*v10 + 734) - *(*v10 + 728))) + fabs((*(*v10 + 736) - *(*v10 + 728)))) * 0.5);
  *(*v10 + 768) = *(*v10 + 768) * 0.0174532925;
  *(*v10 + 776) = v12 / ((fabs((*(*v10 + 738) - *(*v10 + 730))) + fabs((*(*v10 + 740) - *(*v10 + 730)))) * 0.5);
  *(*v10 + 776) = *(*v10 + 776) * 0.0174532925;
  *(*v10 + 784) = v12 / ((fabs((*(*v10 + 742) - *(*v10 + 732))) + fabs((*(*v10 + 744) - *(*v10 + 732)))) * 0.5);
  *(*v10 + 784) = *(*v10 + 784) * 0.0174532925;
  *(*v10 + 792) = vcvtd_n_f64_s32(*(*v10 + 752) + *(*v10 + 750), 1uLL);
  *(*v10 + 800) = vcvtd_n_f64_s32(*(*v10 + 756) + *(*v10 + 754), 1uLL);
  *(*v10 + 808) = vcvtd_n_f64_s32(*(*v10 + 760) + *(*v10 + 758), 1uLL);
  *(*v10 + 816) = 2.0 / (*(*v10 + 750) - *(*v10 + 752));
  *(*v10 + 824) = 2.0 / (*(*v10 + 754) - *(*v10 + 756));
  *(*v10 + 832) = 2.0 / (*(*v10 + 758) - *(*v10 + 760));
  if (sub_DE8())
  {
    sub_B9F8();
  }

  if (sub_DE8())
  {
    sub_BA94();
  }

  if (sub_DE8())
  {
    sub_BB30();
  }

  if (sub_DE8())
  {
    sub_BBCC();
  }

  if (sub_DE8())
  {
    sub_BC68();
  }

  if (sub_DE8())
  {
    sub_BD04();
  }

  if (sub_DE8())
  {
    sub_BDA0();
  }

  if (sub_DE8())
  {
    sub_BE3C();
  }

  if (sub_DE8())
  {
    v9 = sub_10A8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = *(*v10 + 832);
      *buf = 134217984;
      v15 = v13;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "(Async) Accelerometer Z Sensitivity = %f", buf, 0xCu);
    }

    goto LABEL_4;
  }

LABEL_27:
  free(*(a1 + 48));
  free(*(a1 + 56));
}

id sub_74B4(uint64_t a1)
{
  if (*a1)
  {
    v24[0] = @"ReportID";
    v23 = [NSNumber numberWithUnsignedChar:?];
    v25[0] = v23;
    v24[1] = @"gyroPitchBias";
    v22 = [NSNumber numberWithShort:*(a1 + 1)];
    v25[1] = v22;
    v24[2] = @"gyroYawBias";
    v21 = [NSNumber numberWithShort:*(a1 + 3)];
    v25[2] = v21;
    v24[3] = @"gyroRollBias";
    v20 = [NSNumber numberWithShort:*(a1 + 5)];
    v25[3] = v20;
    v24[4] = @"gyroRefPitchPlus";
    v19 = [NSNumber numberWithShort:*(a1 + 7)];
    v25[4] = v19;
    v24[5] = @"gyroRefPitchMinus";
    v18 = [NSNumber numberWithShort:*(a1 + 9)];
    v25[5] = v18;
    v24[6] = @"gyroRefYawPlus";
    v17 = [NSNumber numberWithShort:*(a1 + 11)];
    v25[6] = v17;
    v24[7] = @"gyroRefYawMinus";
    v16 = [NSNumber numberWithShort:*(a1 + 13)];
    v25[7] = v16;
    v24[8] = @"gyroRefRollPlus";
    v15 = [NSNumber numberWithShort:*(a1 + 15)];
    v25[8] = v15;
    v24[9] = @"gyroRefRollMinus";
    v14 = [NSNumber numberWithShort:*(a1 + 17)];
    v25[9] = v14;
    v24[10] = @"gyroRefSpeedPlus";
    v13 = [NSNumber numberWithShort:*(a1 + 19)];
    v25[10] = v13;
    v24[11] = @"gyroRefSpeedMinus";
    v2 = [NSNumber numberWithShort:*(a1 + 21)];
    v25[11] = v2;
    v24[12] = @"accelRefXPlus";
    v3 = [NSNumber numberWithShort:*(a1 + 23)];
    v25[12] = v3;
    v24[13] = @"accelRefXMinus";
    v4 = [NSNumber numberWithShort:*(a1 + 25)];
    v25[13] = v4;
    v24[14] = @"accelRefYPlus";
    v5 = [NSNumber numberWithShort:*(a1 + 27)];
    v25[14] = v5;
    v24[15] = @"accelRefYMinus";
    v6 = [NSNumber numberWithShort:*(a1 + 29)];
    v25[15] = v6;
    v24[16] = @"accelRefZPlus";
    v7 = [NSNumber numberWithShort:*(a1 + 31)];
    v25[16] = v7;
    v24[17] = @"accelRefZMinus";
    v8 = [NSNumber numberWithShort:*(a1 + 33)];
    v25[17] = v8;
    v24[18] = @"calibrationTemp";
    v9 = [NSNumber numberWithUnsignedShort:*(a1 + 35)];
    v25[18] = v9;
    v24[19] = @"CRC 32";
    v10 = [NSNumber numberWithUnsignedInt:*(a1 + 37)];
    v25[19] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:20];
  }

  else
  {
    v11 = +[NSDictionary dictionary];
  }

  return v11;
}

void sub_7CA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_7CC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v80 = a2;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    sub_B3B0(WeakRetained);
    kdebug_trace();
    v108 = 0u;
    memset(v109, 0, 28);
    memset(v107, 0, sizeof(v107));
    if (a5 == 49)
    {
      [v12 bytes];
      if ((*(v14 + 1029) & 1) == 0)
      {
        [(dispatch_once_t *)v14 setExtendedSupportEnabled:1];
      }

      [v12 length];
      __memcpy_chk();
LABEL_10:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_8854;
      block[3] = &unk_18648;
      v15 = v14;
      v82 = v15;
      objc_copyWeak(&v83, (a1 + 32));
      if (v14[87] != -1)
      {
        dispatch_once(v14 + 87, block);
      }

      [v15 updateBatteryLevel:v109[2] & 0xF chargeStatus:LOBYTE(v109[2]) >> 4];
      if (*(v15 + 721) == 1)
      {
        v74 = *(v15 + 97) * (*(&v107[1] + 1) - *(v15 + 365));
        v75 = *(v15 + 96) * (*(v107 + 15) - *(v15 + 364));
        v72 = -((*(&v107[1] + 5) - *(v15 + 99)) * *(v15 + 102));
        v73 = *(v15 + 98) * (*(v15 + 366) - *(&v107[1] + 3));
        v70 = -((*(&v107[1] + 7) - *(v15 + 100)) * *(v15 + 103));
        v71 = (*(&v107[1] + 9) - *(v15 + 101)) * *(v15 + 104);
        v69 = 1;
      }

      else
      {
        v69 = 0;
        v70 = 0.0;
        v71 = 0.0;
        v72 = 0.0;
        v73 = 0.0;
        v74 = 0.0;
        v75 = 0.0;
      }

      v16 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      if ((v108 & 0x80000000) == 0)
      {
        v21 = (((*(&v108 + 1) & 0xFFF) / 1919.0) + ((*(&v108 + 1) & 0xFFF) / 1919.0)) + -1.0;
        v22 = (*(&v108 + 1) | (BYTE3(v108) << 16)) >> 12;
        v23 = ((v22 / 1079.0) + (v22 / 1079.0)) + -1.0;
        v17 = fmaxf(-v23, 0.0);
        v18 = fmaxf(v23, 0.0);
        if (v21 >= 0.0)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = -v21;
        }

        v20 = fmaxf(v21, 0.0);
      }

      v77 = v17;
      v76 = v12;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      if ((SBYTE4(v108) & 0x80000000) == 0)
      {
        v27 = (((*(&v108 + 5) & 0xFFF) / 1919.0) + ((*(&v108 + 5) & 0xFFF) / 1919.0)) + -1.0;
        v28 = (*(&v108 + 5) | (BYTE7(v108) << 16)) >> 12;
        v29 = ((v28 / 1079.0) + (v28 / 1079.0)) + -1.0;
        v16 = fmaxf(-v29, 0.0);
        v24 = fmaxf(v29, 0.0);
        if (v27 >= 0.0)
        {
          v25 = 0.0;
        }

        else
        {
          v25 = -v27;
        }

        v26 = fmaxf(v27, 0.0);
      }

      v78 = v16;
      v30 = LOBYTE(v107[0]);
      v31 = BYTE2(v107[0]);
      v32 = BYTE1(v107[0]);
      v33 = BYTE3(v107[0]);
      v34 = BYTE9(v107[0]);
      v35 = *(v107 + 7);
      LOBYTE(v6) = BYTE5(v107[0]);
      LOBYTE(v7) = BYTE4(v107[0]);
      [v15 dispatchHomeButtonEventWithValue:BYTE9(v107[0]) & 1 timestamp:a3];
      [v15 dispatchMenuButtonEventWithValue:(*(v107 + 7) >> 13) & 1 timestamp:a3];
      [v15 dispatchOptionsButtonEventWithValue:(*(v107 + 7) >> 12) & 1 timestamp:a3];
      v36.i64[0] = v30;
      v36.i64[1] = v32;
      v37 = v36;
      v38 = vdupq_n_s64(0xC05FE00000000000);
      v39 = vdup_n_s32(v35 & 0xF);
      v36.i64[0] = v31;
      v36.i64[1] = v33;
      *v37.i8 = vcvt_f32_f64(vdivq_f64(vaddq_f64(vcvtq_f64_u64(v37), v38), xmmword_13300));
      v40 = vcvt_f32_f64(vdivq_f64(vaddq_f64(vcvtq_f64_u64(v36), v38), xmmword_13300));
      *&v38.f64[0] = vrev64_s32(*v37.i8);
      v41 = vrev64_s32(v40);
      __asm { FMOV            V7.4S, #1.0 }

      v46 = vdup_n_s32(v35);
      __asm { FMOV            V18.2S, #1.0 }

      v85 = vbslq_s8(vmovl_s16(vceq_s16(vdup_n_s16(v35 & 0xF), 0x2000600040000)), _Q7, vcvtq_f32_u32(vmovl_u16(vand_s8(vuzp1_s16(vorr_s8(vceq_s32(v39, 0x500000001), vceq_s32(v39, 0x300000007)), vceq_s32(vdup_n_s32(v35 & 0xD), 0x100000005)), 0x1000100010001))));
      *buf = 0;
      v86 = vcvt_f32_u32((*&vshl_u32((*&v46 & 0xFFFF00FFFFFF00FFLL), 0xFFFFFFFAFFFFFFFBLL) & 0xFFFFFFF1FFFFFFF1));
      *&v87 = ((v35 >> 4) & 1);
      *(&v87 + 1) = ((v35 >> 7) & 1);
      v88 = vbic_s8(_D18, vceqz_s32(vand_s8(v46, 0x20000000100)));
      LODWORD(v89) = fmaxf(*&v37.i32[1], 0.0);
      *(&v89 + 4) = vand_s8(vneg_f32(*&v38.f64[0]), vcltz_f32(*&v38.f64[0]));
      HIDWORD(v89) = fmaxf(*v37.i32, 0.0);
      LODWORD(v90) = fmaxf(*&v40.i32[1], 0.0);
      *(&v90 + 4) = vand_s8(vneg_f32(v41), vcltz_f32(v41));
      HIDWORD(v90) = fmaxf(*v40.i32, 0.0);
      *&v91 = v7 / 255.0;
      *(&v91 + 1) = v6 / 255.0;
      *(&v91 + 2) = ((v35 >> 14) & 1);
      *(&v91 + 3) = (v35 >> 15);
      v92 = 0;
      v93 = 0;
      v94 = v77;
      v95 = v18;
      v96 = v19;
      v97 = v20;
      v98 = v78;
      v99 = v24;
      v100 = v25;
      v101 = v26;
      v102 = ((v34 >> 1) & 1);
      v106 = 0;
      v104 = 0u;
      v105 = 0u;
      v103 = 0u;
      [v15 dispatchGameControllerExtendedEventWithState:buf timestamp:a3];
      if (*(v15 + 721) == 1)
      {
        buf[0] = v69;
        *&buf[1] = 0;
        *&buf[4] = 0;
        *v85.i64 = v75;
        *&v85.i64[1] = v73;
        v86 = *&v74;
        LOBYTE(v87) = v69;
        *(&v87 + 1) = 0;
        HIDWORD(v87) = 0;
        v88 = *&v72;
        *&v89 = v71;
        *(&v89 + 1) = v70;
        v90 = 0u;
        v91 = 0u;
        v92 = 0;
        [v15 dispatchMotionEventWithState:buf timestamp:a3];
      }

      v48 = HIBYTE(v108);
      v49 = HIBYTE(v108) & 0xF;
      v50 = BYTE9(v108);
      v79 = BYTE10(v108);
      v51 = *(v15 + 901);
      v52 = v49 != v51;
      v12 = v76;
      if (v49 != v51)
      {
        v53 = sub_10A8();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v49;
          _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "(Right Trigger) Working Mode = %d", buf, 8u);
        }

        *(v15 + 901) = v49;
      }

      if ((v50 & 0xF) != *(v15 + 902))
      {
        v54 = sub_10A8();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v50 & 0xF;
          _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "(Right Trigger) Arm Position = %d", buf, 8u);
        }

        *(v15 + 902) = v50 & 0xF;
        v52 = 1;
      }

      v56 = v49 == 1 || v49 == 4;
      v57 = *(v15 + 903);
      if (v50 >> 4 != v57 || v49 == 4 || v49 == 1)
      {
        if ((v50 >> 4) != 1)
        {
          v56 = 0;
        }

        if (v56 && BYTE5(v107[0]) == 0)
        {
          v58 = 0;
        }

        else
        {
          v58 = v50 >> 4;
        }

        if (v57 != v58)
        {
          v59 = sub_10A8();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *&buf[4] = v58;
            _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, "(Right Trigger) AD-T Control Status = %d", buf, 8u);
          }

          v52 = 1;
        }

        *(v15 + 903) = v58;
      }

      v60 = v48 >> 4;
      if (v48 >> 4 != *(v15 + 869))
      {
        v61 = sub_10A8();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v48 >> 4;
          _os_log_impl(&dword_0, v61, OS_LOG_TYPE_INFO, "(Left Trigger) Working Mode = %d", buf, 8u);
        }

        *(v15 + 869) = v60;
        v52 = 1;
      }

      v62 = v79 & 0xF;
      if (v62 != *(v15 + 870))
      {
        v63 = sub_10A8();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v79 & 0xF;
          _os_log_impl(&dword_0, v63, OS_LOG_TYPE_INFO, "(Left Trigger) Arm Position = %d", buf, 8u);
        }

        *(v15 + 870) = v62;
        v52 = 1;
      }

      v64 = v79 >> 4;
      v66 = v60 == 1 || v60 == 4;
      v67 = *(v15 + 871);
      if (v64 != v67 || v60 == 4 || v60 == 1)
      {
        if ((v79 >> 4) != 1)
        {
          v66 = 0;
        }

        if (v66 && BYTE4(v107[0]) == 0)
        {
          LOBYTE(v64) = 0;
        }

        if (v67 == v64)
        {
          if (!v52)
          {
LABEL_88:
            objc_destroyWeak(&v83);

            goto LABEL_89;
          }

          LOBYTE(v64) = *(v15 + 871);
        }

        else
        {
          v68 = sub_10A8();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *&buf[4] = v64;
            _os_log_impl(&dword_0, v68, OS_LOG_TYPE_INFO, "(Left Trigger) AD-T Control Status = %d", buf, 8u);
          }

          *(v15 + 871) = v64;
          v62 = *(v15 + 870);
        }
      }

      else if (!v52)
      {
        goto LABEL_88;
      }

      [v15[126] updateAdaptiveTriggerStatusWithLeftMode:*(v15 + 848) leftStatus:v64 leftArmPosition:v62 rightMode:*(v15 + 880) rightStatus:*(v15 + 903) rightArmPosition:*(v15 + 902)];
      goto LABEL_88;
    }

    if (a5 == 1)
    {
      [v12 bytes];
      if (-[dispatch_once_t isBluetoothClassic](v14, "isBluetoothClassic") && [v12 length] == &dword_8 + 2)
      {
        v85.i8[0] = 0;
        *buf = 0;
        [v12 length];
        __memcpy_chk();
        LODWORD(v107[0]) = 0;
        *(v107 + 7) = 0;
        BYTE9(v107[0]) = 0;
        WORD2(v107[0]) = 0;
LABEL_17:
        if (-[dispatch_once_t isBluetoothClassic](v14, "isBluetoothClassic") && [v12 length] == &dword_8 + 2)
        {
          v109[2] = v109[2] & 0xFFF0 | 0xA;
        }

        goto LABEL_10;
      }

      if ((-[dispatch_once_t isBluetoothClassic](v14, "isBluetoothClassic") & 1) == 0 && [v12 length] == &stru_20.vmsize)
      {
        [v12 length];
        __memcpy_chk();
        goto LABEL_17;
      }
    }
  }

LABEL_89:
}

void sub_8854(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchQueue];
  if (v2)
  {
    v3 = dispatch_time(0, 2500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8930;
    block[3] = &unk_18520;
    objc_copyWeak(&v5, (a1 + 40));
    dispatch_after(v3, v2, block);
    objc_destroyWeak(&v5);
  }

  else
  {
    *(*(a1 + 32) + 708) = 1;
  }
}

void sub_8930(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v3[708] = 1;
    [v3 sendBatteryReport];
  }
}

void sub_90E4(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  kdebug_trace();
  if (a2)
  {
    v4 = sub_10A8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_BF88();
    }
  }
}

void sub_9150(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  kdebug_trace();
  if (a2)
  {
    v4 = sub_10A8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_BFF8();
    }
  }
}

id sub_99F0(uint64_t a1)
{
  v2 = sub_10A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 41);
    v5 = *(a1 + 42);
    v6 = *(a1 + 43);
    v7 = *(a1 + 44);
    v11[0] = 67110144;
    v11[1] = v3;
    v12 = 1024;
    v13 = v4;
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "setPlayerLights: %d%d%d%d%d", v11, 0x20u);
  }

  v8 = *(a1 + 32) + 1024;
  v9 = *(a1 + 44);
  *v8 = *(a1 + 40);
  *(v8 + 4) = v9;
  result = [*(a1 + 32) isHapticsActive];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) dispatchOutputReport];
  }

  return result;
}

id sub_A0D4(uint64_t a1)
{
  v2 = sub_10A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 44);
    v5 = *(a1 + 48);
    v8 = 134218496;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "updateLightWithRed:%f green:%f blue:%f", &v8, 0x20u);
  }

  v6 = *(a1 + 32);
  if ((v6[1029] & 1) == 0)
  {
    [v6 setExtendedSupportEnabled:1];
    v6 = *(a1 + 32);
  }

  v6[722] = (*(a1 + 40) * 255.0);
  *(*(a1 + 32) + 723) = (*(a1 + 44) * 255.0);
  *(*(a1 + 32) + 724) = (*(a1 + 48) * 255.0);
  result = [*(a1 + 32) isHapticsActive];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) dispatchOutputReport];
  }

  return result;
}

void sub_A4C0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if ((v2[1029] & 1) == 0)
    {
      [v2 setExtendedSupportEnabled:1];
    }
  }

  v3 = sub_10A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "updateSensorsEnabled %d", v5, 8u);
  }

  *(*(a1 + 32) + 721) = *(a1 + 40);
}

void sub_AF44(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = 872;
  }

  else
  {
    if (v2)
    {
LABEL_6:

      [v3 setAdaptiveTriggerWithMode:0 enabledPositions:0 resistiveStrengths:0 frequency:0 forIndex:0];
      return;
    }

    v4 = 840;
  }

  if (*&v3[v4 + 8])
  {
    goto LABEL_6;
  }

  v5 = sub_10A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7[0] = 67109120;
    v7[1] = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Received request to turn off adaptive trigger at index %d, but it is already off. Ignoring.", v7, 8u);
  }
}

BOOL sub_B190(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_B300(uint64_t a1, void *a2, int a3)
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

uint64_t sub_B3B0(uint64_t result)
{
  if (result)
  {
    return *(result + 656);
  }

  return result;
}

void sub_B464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10A8();
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

void sub_B548(uint64_t a1, void *a2)
{
  sub_6198(a1, a2);
  [v3 type];
  sub_6170();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_6150();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_47DC;
  *(v2 + 24) = &unk_185F8;
  *(v2 + 32) = v5;
  sub_61C0(v3);
}

void sub_B5F8(uint64_t a1, void *a2)
{
  sub_6198(a1, a2);
  [v3 type];
  sub_6170();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_6150();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_485C;
  *(v2 + 24) = &unk_185F8;
  *(v2 + 32) = v5;
  sub_61C0(v3);
}

uint64_t sub_B6A8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 656);
  }

  return kdebug_trace();
}

void sub_B76C()
{
  sub_B1B4();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B7DC()
{
  sub_B1A8();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_B84C()
{
  sub_B1B4();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B8BC()
{
  sub_B1A8();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_B92C()
{
  sub_B16C();
  v3 = sub_10A8();
  if (sub_B190(v3))
  {
    v4 = (*v2 + v1);
    v11 = *v4;
    v12[0] = v4[1];
    *(v12 + 9) = *(v4 + 25);
    v5 = sub_74B4(&v11);
    sub_B1B4();
    sub_B150();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
  }
}

void sub_B9F8()
{
  sub_B16C();
  v1 = sub_10A8();
  if (sub_B190(v1))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_BA94()
{
  sub_B16C();
  v1 = sub_10A8();
  if (sub_B190(v1))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_BB30()
{
  sub_B16C();
  v1 = sub_10A8();
  if (sub_B190(v1))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_BBCC()
{
  sub_B16C();
  v1 = sub_10A8();
  if (sub_B190(v1))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_BC68()
{
  sub_B16C();
  v1 = sub_10A8();
  if (sub_B190(v1))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_BD04()
{
  sub_B16C();
  v1 = sub_10A8();
  if (sub_B190(v1))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_BDA0()
{
  sub_B16C();
  v1 = sub_10A8();
  if (sub_B190(v1))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_BE3C()
{
  sub_B16C();
  v1 = sub_10A8();
  if (sub_B190(v1))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_BF18()
{
  sub_B1B4();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BF88()
{
  sub_B1A8();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_BFF8()
{
  sub_B1A8();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_C068()
{
  v1 = sub_10A8();
  if (sub_B190(v1))
  {
    sub_B160();
    sub_B150();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_C110(uint64_t *a1)
{
  v3 = sub_10A8();
  if (sub_B190(v3))
  {
    v4 = *a1;
    sub_B160();
    sub_B150();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_C1A4(unsigned __int8 *a1)
{
  v3 = sub_10A8();
  if (sub_B190(v3))
  {
    v9 = *a1;
    sub_B150();
    _os_log_impl(v4, v5, v6, v7, v8, 8u);
  }
}

void sub_C23C(unsigned __int16 *a1)
{
  v3 = sub_10A8();
  if (sub_B190(v3))
  {
    v9 = *a1;
    sub_B150();
    _os_log_impl(v4, v5, v6, v7, v8, 8u);
  }
}

void sub_C2D4()
{
  sub_B16C();
  v3 = sub_10A8();
  if (sub_B190(v3))
  {
    v9 = *v2;
    v10 = v1[19];
    v11 = v1[20];
    v12 = v1[21];
    v13 = v1[22];
    v14 = v1[23];
    v15 = v1[24];
    v16 = v1[25];
    v17 = v1[26];
    v18 = v1[27];
    sub_B150();
    _os_log_impl(v4, v5, v6, v7, v8, 0x3Eu);
  }
}