uint64_t sub_DE8()
{
  if (qword_169D8 != -1)
  {
    sub_67F8();
  }

  return byte_169D0;
}

id sub_E48()
{
  if (qword_169E8 != -1)
  {
    sub_680C();
  }

  v1 = qword_169E0;

  return v1;
}

void sub_E8C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "default");
  v2 = qword_169E0;
  qword_169E0 = v1;
}

id sub_ED0()
{
  if (qword_169F8 != -1)
  {
    sub_6820();
  }

  v1 = qword_169F0;

  return v1;
}

void sub_F14(id a1)
{
  v1 = os_log_create("com.apple.GameController", "monitor");
  v2 = qword_169F0;
  qword_169F0 = v1;
}

id sub_F58()
{
  if (qword_16A08 != -1)
  {
    sub_6834();
  }

  v1 = qword_16A00;

  return v1;
}

void sub_F9C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "analytics");
  v2 = qword_16A00;
  qword_16A00 = v1;
}

id sub_FE0()
{
  if (qword_16A18 != -1)
  {
    sub_6848();
  }

  v1 = qword_16A10;

  return v1;
}

void sub_1024(id a1)
{
  v1 = os_log_create("com.apple.GameController.Daemon", "default");
  v2 = qword_16A10;
  qword_16A10 = v1;
}

void sub_1068(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = qword_16A20;
  qword_16A20 = v1;
}

id sub_10A8()
{
  if (qword_16A28 != -1)
  {
    sub_685C();
  }

  v1 = qword_16A20;

  return v1;
}

void sub_10EC(id a1)
{
  if (!qword_16A20)
  {
    objc_storeStrong(&qword_16A20, &_os_log_default);
  }
}

id sub_1110()
{
  if (qword_16A38 != -1)
  {
    sub_6870();
  }

  v1 = qword_16A30;

  return v1;
}

void sub_1154(id a1)
{
  v1 = os_log_create("com.apple.GameController.Settings", "default");
  v2 = qword_16A30;
  qword_16A30 = v1;
}

id sub_1198()
{
  if (qword_16A48 != -1)
  {
    sub_6884();
  }

  v1 = qword_16A40;

  return v1;
}

void sub_11DC(id a1)
{
  v1 = os_log_create("com.apple.GameController.Haptics", "default");
  v2 = qword_16A40;
  qword_16A40 = v1;
}

id sub_1220()
{
  if (qword_16A58 != -1)
  {
    sub_6898();
  }

  v1 = qword_16A50;

  return v1;
}

void sub_1264(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "GameController");
  v2 = qword_16A50;
  qword_16A50 = v1;
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
        v6 = &stru_10818;
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
  if (qword_16A60 != -1)
  {
    sub_68AC();
  }

  return byte_16A68;
}

void sub_2020(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  byte_16A68 = [v1 BOOLForKey:@"GCPartnersEnable"];
  v2 = sub_10A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = byte_16A68;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v3, 8u);
  }
}

void sub_2300(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    sub_6970(WeakRetained);
    kdebug_trace();
    [v9 bytes];
    if (a5 == 2)
    {
      LOWORD(v51) = 0;
      [v9 length];
      __memcpy_chk();
      [v11 dispatchHomeButtonEventWithValue:0 timestamp:a3];
    }

    else if (a5 == 1)
    {
      memset(v77, 0, 17);
      [v9 length];
      __memcpy_chk();
      v12 = vdup_n_s32(0x477E0000u);
      v13 = vmul_f32(vadd_f32(vdiv_f32(vcvt_f32_u32(0), v12), 0xBF000000BF000000), COERCE_FLOAT32X2_T(-2.00000048));
      v14.i32[0] = 0;
      v14.i32[1] = *(v77 + 7);
      v15 = vrev64_s32(v13);
      v16 = vmul_f32(vadd_f32(vdiv_f32(vcvt_f32_u32(v14), v12), 0xBF000000BF000000), COERCE_FLOAT32X2_T(-2.00000048));
      v17 = vrev64_s32(v16);
      v18 = HIDWORD(*(&v77[1] + 1)) & 0xFLL;
      v19 = 1.0;
      v20 = 1.0;
      if (v18 != 1 && v18 != 8)
      {
        if (v18 == 2)
        {
          v20 = 1.0;
        }

        else
        {
          v20 = 0.0;
        }
      }

      v21 = BYTE5(v77[1]) & 0xE;
      if (v18 == 4)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      if (v21 != 2)
      {
        v19 = v22;
      }

      *(&v48 + 1) = v19;
      *&v48 = ((*(&v77[1] + 1) >> 40) & 1);
      *&v44 = ((*(&v77[1] + 1) >> 43) & 1);
      *(&v44 + 1) = ((*(&v77[1] + 1) >> 41) & 1);
      *&v41 = ((*(&v77[1] + 1) >> 46) & 1);
      *(&v41 + 1) = ((*(&v77[1] + 1) >> 44) & 1);
      v23 = vcltz_f32(v15);
      v24 = vneg_f32(v15);
      v25 = fmaxf(*v13.i32, 0.0);
      v26 = fmaxf(*&v16.i32[1], 0.0);
      v27 = vcltz_f32(v17);
      v28 = vneg_f32(v17);
      v29 = fmaxf(*v16.i32, 0.0);
      *&v38 = ((*(&v77[1] + 1) >> 47) & 1);
      *(&v38 + 1) = ((*(&v77[1] + 1) >> 53) & 1);
      LODWORD(v35) = fmaxf(*&v13.i32[1], 0.0);
      *(&v35 + 1) = ((*(&v77[1] + 1) >> 54) & 1);
      [v11 dispatchMenuButtonEventWithValue:(*(&v77[1] + 1) >> 51) & 1 timestamp:{a3, v35, v38, v41, v44, vceq_s32(vdup_n_s32(v18), 0x800000006), v48}];
      [v11 dispatchOptionsButtonEventWithValue:HIBYTE(*(&v77[1] + 1)) & 1 timestamp:a3];
      v51 = 0;
      v52 = v20;
      __asm { FMOV            V1.2S, #1.0 }

      v53 = vbsl_s8(vceq_s32(vdup_n_s32(v21), 0x600000004), _D1, vand_s8(v47, _D1));
      v54 = v50;
      v55 = v49;
      v56 = v46;
      v57 = v45;
      v58 = v43;
      v59 = v42;
      v60 = v39;
      v61 = v36;
      v62 = vand_s8(v24, v23);
      v63 = v25;
      v64 = v26;
      v65 = vand_s8(v28, v27);
      v66 = v29;
      v67 = vdiv_f32(vcvt_f32_u32(vand_s8(0, 0x300000003)), vdup_n_s32(0x447FC000u));
      v68 = v40;
      v69 = v37;
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      [v11 dispatchGameControllerExtendedEventWithState:&v51 timestamp:a3];
    }
  }
}

id sub_26C8()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_19B8();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_19CC();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_67A8();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_67BC();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_1EB4();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_1EC8();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_26A0();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_26B4();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_6780();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_6794();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_67D0();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_67E4();
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

NSObject *sub_29F0(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
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

void sub_2C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2CA0(uint64_t a1)
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

void sub_2D38(uint64_t a1)
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

void sub_34AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_34CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_34E4(uint64_t a1)
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

BOOL sub_38DC(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsagePage"];
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsage"];
    v6 = (![v4 isEqual:&off_10E90] || (objc_msgSend(v5, "isEqual:", &off_10EA8) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_10E90) || (objc_msgSend(v5, "isEqual:", &off_10EC0) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_10E90) || (objc_msgSend(v5, "isEqual:", &off_10E90) & 1) == 0);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_3E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3EB0(uint64_t a1)
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

void sub_4124(uint64_t a1)
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

void sub_49E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 560);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4A8C;
  v7[3] = &unk_105B0;
  v7[4] = v2;
  v4 = sub_29F0(0x6FC23AC00uLL, 0x3B9ACA00uLL, v3, v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

void sub_5F40(uint64_t a1)
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
        v7[2] = sub_6030;
        v7[3] = &unk_10520;
        objc_copyWeak(&v8, (a1 + 32));
        v5 = sub_29F0(0xF4240uLL, 0x186A0uLL, v4, v7);
        v6 = v3[66];
        v3[66] = v5;

        objc_destroyWeak(&v8);
      }
    }
  }
}

void sub_6030(uint64_t a1)
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
          sub_6CE8(v3);
        }

        *(WeakRetained + 121) = 0;
        [WeakRetained dispatchHapticEvent];
      }

      else
      {
        if (v4)
        {
          sub_6CA4(v3);
        }

        [WeakRetained stopHaptics];
      }
    }
  }
}

uint64_t sub_6710()
{

  return kdebug_trace();
}

id sub_6738(uint64_t a1, void *a2)
{
  v3 = *(a1 + 656);

  return [a2 timestamp];
}

void sub_6760(uint64_t a1)
{
  v1[5] = a1;

  dispatch_after(v2, v3, v1);
}

void sub_68C0(uint64_t a1, void *a2, int a3)
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

uint64_t sub_6970(uint64_t result)
{
  if (result)
  {
    return *(result + 656);
  }

  return result;
}

void sub_6A24(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_6B08(uint64_t a1, void *a2)
{
  sub_6738(a1, a2);
  [v3 type];
  sub_6710();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_66F0();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_4D7C;
  *(v2 + 24) = &unk_105F8;
  *(v2 + 32) = v5;
  sub_6760(v3);
}

void sub_6BB8(uint64_t a1, void *a2)
{
  sub_6738(a1, a2);
  [v3 type];
  sub_6710();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_66F0();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_4DFC;
  *(v2 + 24) = &unk_105F8;
  *(v2 + 32) = v5;
  sub_6760(v3);
}

uint64_t sub_6C68(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 656);
  }

  return kdebug_trace();
}