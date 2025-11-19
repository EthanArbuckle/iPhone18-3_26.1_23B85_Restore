uint64_t sub_ED8()
{
  if (qword_16B38 != -1)
  {
    sub_775C();
  }

  return byte_16B30;
}

id sub_F38()
{
  if (qword_16B48 != -1)
  {
    sub_7770();
  }

  v1 = qword_16B40;

  return v1;
}

void sub_F7C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "default");
  v2 = qword_16B40;
  qword_16B40 = v1;
}

id sub_FC0()
{
  if (qword_16B58 != -1)
  {
    sub_7784();
  }

  v1 = qword_16B50;

  return v1;
}

void sub_1004(id a1)
{
  v1 = os_log_create("com.apple.GameController", "monitor");
  v2 = qword_16B50;
  qword_16B50 = v1;
}

id sub_1048()
{
  if (qword_16B68 != -1)
  {
    sub_7798();
  }

  v1 = qword_16B60;

  return v1;
}

void sub_108C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "analytics");
  v2 = qword_16B60;
  qword_16B60 = v1;
}

id sub_10D0()
{
  if (qword_16B78 != -1)
  {
    sub_77AC();
  }

  v1 = qword_16B70;

  return v1;
}

void sub_1114(id a1)
{
  v1 = os_log_create("com.apple.GameController.Daemon", "default");
  v2 = qword_16B70;
  qword_16B70 = v1;
}

void sub_1158(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = qword_16B80;
  qword_16B80 = v1;
}

id sub_1198()
{
  if (qword_16B88 != -1)
  {
    sub_77C0();
  }

  v1 = qword_16B80;

  return v1;
}

void sub_11DC(id a1)
{
  if (!qword_16B80)
  {
    objc_storeStrong(&qword_16B80, &_os_log_default);
  }
}

id sub_1200()
{
  if (qword_16B98 != -1)
  {
    sub_77D4();
  }

  v1 = qword_16B90;

  return v1;
}

void sub_1244(id a1)
{
  v1 = os_log_create("com.apple.GameController.Settings", "default");
  v2 = qword_16B90;
  qword_16B90 = v1;
}

id sub_1288()
{
  if (qword_16BA8 != -1)
  {
    sub_77E8();
  }

  v1 = qword_16BA0;

  return v1;
}

void sub_12CC(id a1)
{
  v1 = os_log_create("com.apple.GameController.Haptics", "default");
  v2 = qword_16BA0;
  qword_16BA0 = v1;
}

id sub_1310()
{
  if (qword_16BB8 != -1)
  {
    sub_77FC();
  }

  v1 = qword_16BB0;

  return v1;
}

void sub_1354(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "GameController");
  v2 = qword_16BB0;
  qword_16BB0 = v1;
}

void sub_287C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_28A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_47;
  }

  sub_7918(WeakRetained);
  kdebug_trace();
  if (a5 != 1)
  {
    if (a5 == 2)
    {
      [v11 dispatchAlternateHomeButtonEventWithValue:*(objc_msgSend(v9 timestamp:{"bytes") + 1) & 1, a3}];
    }

    else if (a5 == 4)
    {
      [v9 bytes];
      buf[0] = 0;
      [v9 length];
      __memcpy_chk();
      [v11 updateBatteryStats:0];
    }

    goto LABEL_47;
  }

  v12 = [v9 bytes];
  v15 = 0;
  v16 = 0.0;
  __asm { FMOV            V10.2S, #1.0 }

  if ((*(v11 + 88) - 1) > 1)
  {
    goto LABEL_21;
  }

  v22 = [v9 length];
  v23 = 19;
  if (v22 == &stru_20.segname[15])
  {
    v23 = 35;
  }

  v24 = v12[v23] & 7;
  if (v24 != v11[712])
  {
    v11[712] = v24;
    v25 = sub_1198();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v11[712];
      *buf = 67109120;
      *&buf[4] = v26;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "profile changed to %d", buf, 8u);
    }
  }

  if (*(v11 + 88) == 1)
  {
    v27 = 0.0;
    if (!v11[712])
    {
      v28 = [v9 length];
      v29 = 33;
      if (v28 == &stru_20.cmdsize + 3)
      {
        v29 = 17;
      }

      v30 = v12[v29];
      v16 = (v30 & 1);
      v15 = vbic_s8(_D10, vceqz_s32(vand_s8(vdup_n_s32(v30), 0x400000002)));
      v27 = 0.0;
      if ((v30 & 8) != 0)
      {
        v27 = 1.0;
      }
    }
  }

  else
  {
LABEL_21:
    v27 = 0.0;
  }

  v82 = v16;
  v80 = _D10;
  v81 = v15;
  v79 = v27;
  if (v11[698] == 1)
  {
    v31 = v12[15];
    if (v11[700] == 1)
    {
      v32 = (v31 >> 2) & 1;
      if (v11[701] == 1)
      {
        [v11 dispatchShareButtonEventWithValue:v12[16] & 1 timestamp:a3];
        v33 = v12[15];
LABEL_29:
        v34 = v12[14];
        [v11 dispatchHomeButtonEventWithValue:(v33 >> 4) & 1 timestamp:a3];
        v35 = (v31 >> 3) & 1;
        v36 = v34 >> 31;
        v37 = vand_s8(vdup_n_s32(v34), 0x1000000008);
        v38 = v34 & 0x40;
        v39 = (v33 >> 5) & 1;
        v40 = v33 & 0x40;
        goto LABEL_30;
      }
    }

    else
    {
      LOBYTE(v32) = v12[16];
    }

    v33 = v12[15];
    goto LABEL_29;
  }

  v34 = v12[14];
  v35 = v34 >> 31;
  v36 = (v34 >> 5) & 1;
  v37 = vand_s8(vdup_n_s32(v34), 0x800000004);
  v38 = v34 & 0x10;
  LOBYTE(v39) = v12[15];
  v40 = v39 & 2;
  v32 = (v34 >> 6) & 1;
LABEL_30:
  v50 = vand_s8(v37, 0xFF000000FFLL);
  v41 = vceqz_s32(v50);
  v42 = (v12 + 1);
  v43 = (v12 + 2);
  v44 = (v12 + 3);
  v45 = (v12 + 4);
  v46 = (v12 + 5);
  v47 = (v12 + 6);
  v48 = (v12 + 7);
  v49 = (v12 + 8);
  v50.i16[0] = *(v12 + 9);
  *v50.i32 = v50.u32[0] / 1023.0;
  v78 = v50.i32[0];
  v50.i16[0] = *(v12 + 11);
  *v50.i32 = v50.u32[0];
  v51 = v12[13];
  v52 = v51 & 0xF;
  v53 = 0.0;
  if ((v51 & 0xD) == 4)
  {
    *v14.i32 = 1.0;
  }

  else
  {
    *v14.i32 = 0.0;
  }

  if (v52 == 5)
  {
    v54 = 1.0;
  }

  else
  {
    v54 = *v14.i32;
  }

  if ((v34 & 2) != 0)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = 0.0;
  }

  if (v38)
  {
    v56 = 1.0;
  }

  else
  {
    v56 = 0.0;
  }

  v57 = v36;
  if (v40)
  {
    v53 = 1.0;
  }

  v76 = v53;
  v77 = (v39 & 1);
  v14.i8[6] = *v46;
  v58 = *v50.i32 / 1023.0;
  v50.i8[0] = *v45;
  v50.i8[2] = *v43;
  v50.i8[4] = *v49;
  v50.i8[6] = *v47;
  v14.i8[0] = *v44;
  v14.i8[2] = *v42;
  v14.i8[4] = *v48;
  v75 = v14;
  [v11 dispatchMenuButtonEventWithValue:v35 timestamp:{a3, *&v50, v13}];
  [v11 dispatchOptionsButtonEventWithValue:v32 & 1 timestamp:a3];
  v59 = vdup_n_s32(v52);
  v60 = vceq_s32(v59, 0x400000008);
  v61 = vceq_s32(v59, 0x200000006);
  v62 = (vorr_s8(v60, vdup_lane_s32(v61, 1)).u32[0] & 1);
  if (v52 == 1)
  {
    v62 = 1.0;
  }

  *buf = 0;
  v84 = v62;
  v85 = v54;
  v86 = vbsl_s8(vceq_s32(v59, 0x300000007), v80, vcvt_f32_u32(vand_s8(vorr_s8(v61, v60), 0x100000001)));
  v87 = (v34 & 1);
  v88 = v55;
  v89 = vbic_s8(v80, v41);
  v90 = v56;
  v91 = v57;
  v63.i64[0] = 0xBF000000BF000000;
  v63.i64[1] = 0xBF000000BF000000;
  v64 = vaddq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(vsli_n_s16(v75, v74, 8uLL))), vdupq_n_s32(0x37800000u)), v63);
  v63.i64[0] = 0xC0000000C0000000;
  v63.i64[1] = 0xC0000000C0000000;
  v65 = vmulq_f32(v64, vnegq_f64(v63));
  v66 = vzip1q_s32(v65, v65);
  v67 = vzip2q_s32(v65, v65);
  v68 = vmovn_s16(vuzp1q_s16(vcgtzq_f32(v66), vcgtzq_f32(v67)));
  *v66.f32 = vmovn_s16(vuzp1q_s16(vcltzq_f32(v66), vcltzq_f32(v67)));
  v69 = vnegq_f32(v65);
  v70 = vextq_s8(v65, vnegq_f32(vdupq_laneq_s64(v65, 1)), 8uLL);
  v71 = vextq_s8(v65, v65, 4uLL);
  v72 = vextq_s8(vextq_s8(v71, v69, 8uLL), v71, 4uLL);
  v69.i16[0] = v68.u8[4];
  v69.i16[1] = v66.u8[5];
  v69.i16[2] = v66.u8[6];
  v69.i16[3] = v68.u8[7];
  v73.i16[0] = v68.u8[0];
  v73.i16[1] = v66.u8[1];
  v73.i16[2] = v66.u8[2];
  v73.i16[3] = v68.u8[3];
  v92 = vandq_s8(v72, vcltzq_s32(vshlq_n_s32(vmovl_u16(v73), 0x1FuLL)));
  v93 = vandq_s8(vuzp1q_s32(v70, vextq_s8(v70, v70, 0xCuLL)), vcltzq_s32(vshlq_n_s32(vmovl_u16(*v69.i8), 0x1FuLL)));
  v94 = v78;
  v95 = v58;
  v96 = v77;
  v97 = v76;
  v98 = 0;
  v99 = 0;
  v100 = v82;
  v101 = v81;
  v102 = v79;
  memset(v106, 0, sizeof(v106));
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  [v11 dispatchGameControllerExtendedEventWithState:buf timestamp:a3];
LABEL_47:
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
        v6 = &stru_109C8;
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
  if (qword_16BC0 != -1)
  {
    sub_7854();
  }

  return byte_16BC8;
}

void sub_3524(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  byte_16BC8 = [v1 BOOLForKey:@"GCPartnersEnable"];
  v2 = sub_1198();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = byte_16BC8;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v3, 8u);
  }
}

id sub_362C()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_E88();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_E9C();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_397C();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_3990();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_1F54();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_1F68();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_3604();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_3618();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_3954();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_3968();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_7734();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_7748();
  [v0 setInterface:v12 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v13 = sub_EB0();
  [v0 setInterface:v13 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v14 = sub_EC4();
  [v0 setInterface:v14 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v15 = GCGenericDeviceDriverConfigurationServiceClientInterface();
  [v0 setInterface:v15 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v16 = GCGenericDeviceDriverConfigurationServiceServerInterface();
  [v0 setInterface:v16 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

NSObject *sub_39A4(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
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

void sub_3C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3C54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1198();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_3CEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1198();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", v4, 2u);
  }

  v3 = [WeakRetained remoteObjectProxy];
  [v3 driverCheckIn];
}

void sub_4460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4480(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_4498(uint64_t a1)
{
  v2 = [NSString stringWithCString:dispatch_queue_get_label(*(a1 + 32)) encoding:4];
  v3 = sub_1198();
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

BOOL sub_4890(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsagePage"];
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsage"];
    v6 = (![v4 isEqual:&off_11030] || (objc_msgSend(v5, "isEqual:", &off_11048) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_11030) || (objc_msgSend(v5, "isEqual:", &off_11060) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_11030) || (objc_msgSend(v5, "isEqual:", &off_11030) & 1) == 0);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_4E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4E64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_1198();
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

void sub_50D8(uint64_t a1)
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

void sub_5998(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 560);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5A40;
  v7[3] = &unk_105C0;
  v7[4] = v2;
  v4 = sub_39A4(0x6FC23AC00uLL, 0x3B9ACA00uLL, v3, v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

void sub_6EF4(uint64_t a1)
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
        v7[2] = sub_6FE4;
        v7[3] = &unk_10530;
        objc_copyWeak(&v8, (a1 + 32));
        v5 = sub_39A4(0xF4240uLL, 0x186A0uLL, v4, v7);
        v6 = v3[66];
        v3[66] = v5;

        objc_destroyWeak(&v8);
      }
    }
  }
}

void sub_6FE4(uint64_t a1)
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
      v3 = sub_1198();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        if (v4)
        {
          sub_7C90(v3);
        }

        *(WeakRetained + 121) = 0;
        [WeakRetained dispatchHapticEvent];
      }

      else
      {
        if (v4)
        {
          sub_7C4C(v3);
        }

        [WeakRetained stopHaptics];
      }
    }
  }
}

uint64_t sub_76C4()
{

  return kdebug_trace();
}

id sub_76EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 656);

  return [a2 timestamp];
}

void sub_7714(uint64_t a1)
{
  v1[5] = a1;

  dispatch_after(v2, v3, v1);
}

void sub_7868(uint64_t a1, void *a2, int a3)
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

uint64_t sub_7918(uint64_t result)
{
  if (result)
  {
    return *(result + 656);
  }

  return result;
}

void sub_79CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1198();
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

void sub_7AB0(uint64_t a1, void *a2)
{
  sub_76EC(a1, a2);
  [v3 type];
  sub_76C4();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_76A4();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_5D30;
  *(v2 + 24) = &unk_10608;
  *(v2 + 32) = v5;
  sub_7714(v3);
}

void sub_7B60(uint64_t a1, void *a2)
{
  sub_76EC(a1, a2);
  [v3 type];
  sub_76C4();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_76A4();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_5DB0;
  *(v2 + 24) = &unk_10608;
  *(v2 + 32) = v5;
  sub_7714(v3);
}

uint64_t sub_7C10(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 656);
  }

  return kdebug_trace();
}