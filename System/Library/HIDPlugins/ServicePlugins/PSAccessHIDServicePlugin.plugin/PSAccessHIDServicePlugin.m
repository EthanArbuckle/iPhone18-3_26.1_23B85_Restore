uint64_t sub_DC0()
{
  if (qword_16A70 != -1)
  {
    sub_79A8();
  }

  return byte_16A68;
}

id sub_E20()
{
  if (qword_16A80 != -1)
  {
    sub_79BC();
  }

  v1 = qword_16A78;

  return v1;
}

void sub_E64(id a1)
{
  v1 = os_log_create("com.apple.GameController", "default");
  v2 = qword_16A78;
  qword_16A78 = v1;
}

id sub_EA8()
{
  if (qword_16A90 != -1)
  {
    sub_79D0();
  }

  v1 = qword_16A88;

  return v1;
}

void sub_EEC(id a1)
{
  v1 = os_log_create("com.apple.GameController", "monitor");
  v2 = qword_16A88;
  qword_16A88 = v1;
}

id sub_F30()
{
  if (qword_16AA0 != -1)
  {
    sub_79E4();
  }

  v1 = qword_16A98;

  return v1;
}

void sub_F74(id a1)
{
  v1 = os_log_create("com.apple.GameController", "analytics");
  v2 = qword_16A98;
  qword_16A98 = v1;
}

id sub_FB8()
{
  if (qword_16AB0 != -1)
  {
    sub_79F8();
  }

  v1 = qword_16AA8;

  return v1;
}

void sub_FFC(id a1)
{
  v1 = os_log_create("com.apple.GameController.Daemon", "default");
  v2 = qword_16AA8;
  qword_16AA8 = v1;
}

void sub_1040(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = qword_16AB8;
  qword_16AB8 = v1;
}

id sub_1080()
{
  if (qword_16AC0 != -1)
  {
    sub_7A0C();
  }

  v1 = qword_16AB8;

  return v1;
}

void sub_10C4(id a1)
{
  if (!qword_16AB8)
  {
    objc_storeStrong(&qword_16AB8, &_os_log_default);
  }
}

id sub_10E8()
{
  if (qword_16AD0 != -1)
  {
    sub_7A20();
  }

  v1 = qword_16AC8;

  return v1;
}

void sub_112C(id a1)
{
  v1 = os_log_create("com.apple.GameController.Settings", "default");
  v2 = qword_16AC8;
  qword_16AC8 = v1;
}

id sub_1170()
{
  if (qword_16AE0 != -1)
  {
    sub_7A34();
  }

  v1 = qword_16AD8;

  return v1;
}

void sub_11B4(id a1)
{
  v1 = os_log_create("com.apple.GameController.Haptics", "default");
  v2 = qword_16AD8;
  qword_16AD8 = v1;
}

id sub_11F8()
{
  if (qword_16AF0 != -1)
  {
    sub_7A48();
  }

  v1 = qword_16AE8;

  return v1;
}

void sub_123C(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "GameController");
  v2 = qword_16AE8;
  qword_16AE8 = v1;
}

NSObject *sub_12A8(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
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

void sub_1528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1558(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1080();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_15F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1080();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", v4, 2u);
  }

  v3 = [WeakRetained remoteObjectProxy];
  [v3 driverCheckIn];
}

void sub_1D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9C(uint64_t a1)
{
  v2 = [NSString stringWithCString:dispatch_queue_get_label(*(a1 + 32)) encoding:4];
  v3 = sub_1080();
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

BOOL sub_2194(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsagePage"];
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsage"];
    v6 = (![v4 isEqual:&off_11010] || (objc_msgSend(v5, "isEqual:", &off_11028) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_11010) || (objc_msgSend(v5, "isEqual:", &off_11040) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_11010) || (objc_msgSend(v5, "isEqual:", &off_11010) & 1) == 0);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_2744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2768(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_1080();
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

void sub_29DC(uint64_t a1)
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

void sub_329C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 560);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3344;
  v7[3] = &unk_105A0;
  v7[4] = v2;
  v4 = sub_12A8(0x6FC23AC00uLL, 0x3B9ACA00uLL, v3, v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

void sub_47F8(uint64_t a1)
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
        v7[2] = sub_48E8;
        v7[3] = &unk_10510;
        objc_copyWeak(&v8, (a1 + 32));
        v5 = sub_12A8(0xF4240uLL, 0x186A0uLL, v4, v7);
        v6 = v3[66];
        v3[66] = v5;

        objc_destroyWeak(&v8);
      }
    }
  }
}

void sub_48E8(uint64_t a1)
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
      v3 = sub_1080();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        if (v4)
        {
          sub_7E84(v3);
        }

        *(WeakRetained + 121) = 0;
        [WeakRetained dispatchHapticEvent];
      }

      else
      {
        if (v4)
        {
          sub_7E40(v3);
        }

        [WeakRetained stopHaptics];
      }
    }
  }
}

uint64_t sub_4FC8()
{

  return kdebug_trace();
}

id sub_4FF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 656);

  return [a2 timestamp];
}

void sub_5018(uint64_t a1)
{
  v1[5] = a1;

  dispatch_after(v2, v3, v1);
}

void sub_61C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  os_activity_scope_leave((v22 - 80));
  _Unwind_Resume(a1);
}

void sub_61F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[696] |= 6u;
    v2 = WeakRetained;
    [WeakRetained ready];
    WeakRetained = v2;
  }
}

void sub_6248(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_6314;
  v3[3] = &unk_10610;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  sub_6370(WeakRetained, v3);

  objc_destroyWeak(&v5);
}

void sub_6314(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void sub_6370(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = _os_activity_create(&dword_0, "Refresh Firmware Info", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    inited = objc_initWeak(&location, a1);
    a1[752] &= ~1u;
    a1[752] |= 2u;
    v6 = inited;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_64D0;
    v7[3] = &unk_10638;
    objc_copyWeak(&v9, &location);
    v8 = v3;
    sub_7EC8(a1, 0, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    os_activity_scope_leave(&state);
  }
}

void sub_64AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  os_activity_scope_leave((v17 - 48));
  _Unwind_Resume(a1);
}

void sub_64D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[752] &= ~2u;
    WeakRetained[752] |= 4u;
    if (!a2 || v5)
    {
      sub_8210(v5, a1);
      goto LABEL_9;
    }

    v44 = 0;
    v46 = 0;
    *v45 = *a2;
    *&v45[7] = *(a2 + 7);
    v43 = *(a2 + 11);
    v8 = sub_1080();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a2 + 19);
      v14 = *(a2 + 21);
      v15 = *(a2 + 23);
      v16 = *(a2 + 27);
      v17 = *(a2 + 43);
      v18 = *(a2 + 45);
      v19 = 136449026;
      v20 = v45;
      v21 = 2082;
      v22 = &v43;
      v23 = 1024;
      v24 = v13;
      v25 = 1024;
      v26 = v14;
      v27 = 1024;
      v28 = v15;
      v29 = 1024;
      v30 = v16;
      v31 = 1040;
      v32 = 12;
      v33 = 2098;
      v34 = a2 + 31;
      v35 = 1024;
      v36 = v17;
      v37 = 1024;
      v38 = v18;
      v39 = 1040;
      v40 = 13;
      v41 = 2098;
      v42 = a2 + 46;
      _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "Retrieved Device Firmware Info: {\n\t buildDate = %{public}s\n\t buildTime = %{public}s\n\t firmwareType = %#hx\n\t softwareSeries = %#hx\n\t hardwareInfo = %#x\n\t mainFirmwareVersion = %#x\n\t deviceInfo = %{public}.*P\n\t updateVersion = %#hx\n\t updateCapabilityInfo = %#hhx\n\t reserved = %{public}.*P\n}", &v19, 0x5Au);
    }

    v9 = strnlen(a2, 0xBuLL);
    v10 = strnlen((a2 + 11), 8uLL);
    *(v7 + 700) = 0;
    *(v7 + 708) = 0;
    *(v7 + 713) = 0;
    __strncpy_chk();
    strncpy(&v7[v9 + 700], (a2 + 11), v10);
    *(v7 + 361) = *(a2 + 19);
    *(v7 + 362) = *(a2 + 21);
    *(v7 + 182) = *(a2 + 23);
    *(v7 + 183) = *(a2 + 27);
    v11 = *(a2 + 39);
    *(v7 + 92) = *(a2 + 31);
    *(v7 + 186) = v11;
    v7[748] = 0;
    v7[749] = *(a2 + 43) & 0xF;
    v7[750] = *(a2 + 45);
    v7[752] |= 8u;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))();
  }

LABEL_9:
}

void sub_6934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    sub_7B0C(WeakRetained);
    kdebug_trace();
    if (a5 == 49)
    {
      [v12 handleBluetoothInputPayload:49 withData:v10 timestamp:a3];
    }

    else if (a5 == 1)
    {
      [v12 handleUSBInputPayload:1 withData:v10 timestamp:a3];
    }

    else
    {
      v13 = sub_1080();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = 134218755;
        v15 = a4;
        v16 = 2048;
        v17 = a5;
        v18 = 1040;
        v19 = [v10 length];
        v20 = 2097;
        v21 = [v10 bytes];
        _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "Received unknown report: type = %li, reportID = %#lx, bytes = %{private}.*P", &v14, 0x26u);
      }
    }

    sub_7B0C(v12);
    kdebug_trace();
  }
}

void sub_6B90(void *a1, uint64_t a2, uint64_t a3, double a4, uint16x8_t a5)
{
  memset(v37, 0, sizeof(v37));
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  v7 = *(a2 + 7);
  *&v8 = *(a2 + 4);
  v9 = *&v8 / 255.0;
  LOBYTE(v8) = *(a2 + 5);
  v10 = v8 / 255.0;
  v11 = vdupq_n_s32(v7);
  v36 = *v11.i8;
  v12 = (v7 >> 13) & 1;
  a5.i32[0] = 65537;
  a5.i16[2] = 1;
  a5.i16[3] = 1;
  v35 = vcvtq_f32_u32(vmovl_u16(vand_s8(vmovn_s32(vtstq_s32(v11, xmmword_E3D0)), *a5.i8)));
  v13 = vceqz_s32(vand_s8(*v11.i8, 0x20000000100));
  __asm { FMOV            V10.2S, #1.0 }

  v19 = vbic_s8(_D10, v13);
  v13.i32[0] = *a2;
  a5.i32[0] = 8388736;
  a5.i16[2] = 128;
  a5.i16[3] = 128;
  v20 = vsubw_u8(a5, v13).u64[0];
  v11.i64[0] = 0x7F007F007F007FLL;
  v21 = vcvtq_f32_s32(vmovl_s16(vtrn2_s16(v20, vtrn1_s16(v20, *&vaddw_u8(v11, v13)))));
  v22.i64[0] = 0x3C0000003C000000;
  v22.i64[1] = 0x3C0000003C000000;
  v23 = vmulq_f32(v21, v22);
  v24 = vzip1q_s32(v23, v23);
  v25 = vzip2q_s32(v23, v23);
  v26 = vmovn_s16(vuzp1q_s16(vcgtzq_f32(v24), vcgtzq_f32(v25)));
  *v24.f32 = vmovn_s16(vuzp1q_s16(vcltzq_f32(v24), vcltzq_f32(v25)));
  v27 = vnegq_f32(v23);
  v28 = vextq_s8(v23, vnegq_f32(vdupq_laneq_s64(v23, 1)), 8uLL);
  v29 = vextq_s8(v23, v23, 4uLL);
  v30.i16[0] = v26.u8[4];
  v30.i16[1] = v24.u8[5];
  v30.i16[2] = v24.u8[6];
  v30.i16[3] = v26.u8[7];
  v31 = vandq_s8(vuzp1q_s32(v28, vextq_s8(v28, v28, 0xCuLL)), vcltzq_s32(vshlq_n_s32(vmovl_u16(v30), 0x1FuLL)));
  v28.i16[0] = v26.u8[0];
  v28.i16[1] = v24.u8[1];
  v28.i16[2] = v24.u8[2];
  v28.i16[3] = v26.u8[3];
  v33 = vandq_s8(vextq_s8(vextq_s8(v29, v27, 8uLL), v29, 4uLL), vcltzq_s32(vshlq_n_s32(vmovl_u16(*v28.i8), 0x1FuLL)));
  v34 = v31;
  v32 = a1;
  [v32 dispatchMenuButtonEventWithValue:v12 timestamp:a3];
  [v32 dispatchOptionsButtonEventWithValue:(*(a2 + 7) >> 12) & 1 timestamp:a3];
  [v32 dispatchHomeButtonEventWithValue:HIWORD(*(a2 + 7)) & 1 timestamp:a3];
  v38 = v35;
  v39 = v19;
  v41 = v34;
  v40 = v33;
  v42 = v9;
  v43 = v10;
  v44 = vbic_s8(_D10, vceqz_s32(vand_s8(v36, 0x800000004000)));
  [v32 dispatchGameControllerExtendedEventWithState:v37 timestamp:a3];
}

void sub_6E7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = sub_1080();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_8394(v6, v8);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void sub_6F14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v7 = [[NSString alloc] initWithFormat:@"I/O Error %#0.8x", a2];
    v8 = [NSError alloc];
    v23 = NSLocalizedFailureErrorKey;
    v24 = v7;
    v9 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v10 = [v8 initWithDomain:@"PSAccessError" code:1 userInfo:v9];

    v11 = sub_1080();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_842C(a1, v10);
    }

    free(*(a1 + 40));
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, 0, v10);
    }
  }

  else if (a4)
  {
    if (*(a1 + 48) > a4)
    {
      v13 = [[NSString alloc] initWithFormat:@"Report [%#0.2x] response has length [%zu bytes], which is less than the expected length [%zu bytes].", *(a1 + 56), a4, *(a1 + 48)];
      v14 = [NSError alloc];
      v19 = NSLocalizedFailureErrorKey;
      v20 = v13;
      v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v16 = [v14 initWithDomain:@"PSAccessError" code:0 userInfo:v15];

      v17 = sub_1080();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_84C8((a1 + 56), v16);
      }

      free(*(a1 + 40));
      v18 = *(a1 + 32);
      if (v18)
      {
        (*(v18 + 16))(v18, 0, 0, v16);
      }
    }

    else
    {
      v5 = *(a1 + 32);
      (*(*(a1 + 32) + 16))();
      v6 = *(a1 + 40);

      free(v6);
    }
  }

  else
  {
    sub_8564(a1, &v21, &v22);
  }
}

void sub_71DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0, 0);
  }

  else
  {
    v4 = [[NSString alloc] initWithFormat:@"Set feature report failed."];
    v5 = [NSError alloc];
    v8 = NSLocalizedFailureErrorKey;
    v9 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [v5 initWithDomain:@"PSAccessError" code:1 userInfo:v6];

    (*(v1 + 16))(v1, 0, 0, v7);
  }
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
        v6 = &stru_10B78;
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
  if (qword_16B08 != -1)
  {
    sub_8704();
  }

  return byte_16B10;
}

void sub_74C0(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  byte_16B10 = [v1 BOOLForKey:@"GCPartnersEnable"];
  v2 = sub_1080();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = byte_16B10;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v3, 8u);
  }
}

id sub_7658()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_D98();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_DAC();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_7630();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_7644();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_75A0();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_75B4();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_75E0();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_75F4();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_7608();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_761C();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_7980();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_7994();
  [v0 setInterface:v12 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v13 = sub_1280();
  [v0 setInterface:v13 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v14 = sub_1294();
  [v0 setInterface:v14 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v15 = GCGenericDeviceDriverConfigurationServiceClientInterface();
  [v0 setInterface:v15 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v16 = GCGenericDeviceDriverConfigurationServiceServerInterface();
  [v0 setInterface:v16 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

void sub_7A5C(uint64_t a1, void *a2, int a3)
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

uint64_t sub_7B0C(uint64_t result)
{
  if (result)
  {
    return *(result + 656);
  }

  return result;
}

void sub_7BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1080();
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

void sub_7CA4(uint64_t a1, void *a2)
{
  sub_4FF0(a1, a2);
  [v3 type];
  sub_4FC8();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_4FA8();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_3634;
  *(v2 + 24) = &unk_105E8;
  *(v2 + 32) = v5;
  sub_5018(v3);
}

void sub_7D54(uint64_t a1, void *a2)
{
  sub_4FF0(a1, a2);
  [v3 type];
  sub_4FC8();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_4FA8();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_36B4;
  *(v2 + 24) = &unk_105E8;
  *(v2 + 32) = v5;
  sub_5018(v3);
}

uint64_t sub_7E04(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 656);
  }

  return kdebug_trace();
}

void sub_7EC8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    v5 = sub_1080();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "Request Firmware Info", buf, 2u);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_6E7C;
    v7[3] = &unk_10688;
    v8 = v4;
    sub_7FB4(a1, 0x20u, 64, v6, v7);
  }
}

void sub_7FB4(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  if (a1)
  {
    v25 = 64;
    v9 = malloc_type_calloc(1uLL, 0x40uLL, 0xAB5D2DA5uLL);
    v10 = [a1 device];
    v24 = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_6F14;
    v19[3] = &unk_106B0;
    v23 = a2;
    v21 = v9;
    v11 = v8;
    v20 = v11;
    v22 = a3;
    v12 = [v10 getReport:v9 reportLength:&v25 withIdentifier:a2 forType:2 error:&v24 timeout:1000 callback:v19];
    v13 = v24;

    if ((v12 & 1) == 0)
    {
      v14 = sub_1080();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        v27 = a2;
        v28 = 2114;
        v29 = v13;
        _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "Get feature report %#0.2x failed: %{public}@", buf, 0x12u);
      }

      free(v9);
      if (v11)
      {
        v15 = [a1 dispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_71DC;
        block[3] = &unk_106D8;
        v18 = v11;
        v17 = v13;
        dispatch_async(v15, block);
      }
    }
  }
}

uint64_t sub_8210(void *a1, uint64_t a2)
{
  v4 = sub_1080();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [a1 localizedDescription];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Failed to retrieve firmware info. %{public}@", &v7, 0xCu);
  }

  result = *(a2 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_82EC()
{
  v0 = sub_1080();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_7340();
    sub_7330();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  }
}

void sub_8394(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Request Firmware Info Error: %{public}@", &v4, 0xCu);
}

void sub_842C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v3 = [a2 localizedDescription];
  sub_7364();
  sub_7330();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_84C8(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = [a2 localizedDescription];
  sub_7364();
  sub_7330();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_8564(uint64_t a1, NSErrorUserInfoKey *a2, void *a3)
{
  v6 = [[NSString alloc] initWithFormat:@"Report [%#0.2x] response is empty.  Expected at least %zu bytes.", *(a1 + 56), *(a1 + 48)];
  v7 = [NSError alloc];
  *a2 = NSLocalizedFailureErrorKey;
  *a3 = v6;
  v8 = [NSDictionary dictionaryWithObjects:a3 forKeys:a2 count:1];
  v9 = [v7 initWithDomain:@"PSAccessError" code:0 userInfo:v8];

  v10 = sub_1080();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 56);
    v13 = [v9 localizedDescription];
    *buf = 67109378;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Get feature report %#0.2x error: %{public}@", buf, 0x12u);
  }

  free(*(a1 + 40));
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, 0, 0, v9);
  }
}