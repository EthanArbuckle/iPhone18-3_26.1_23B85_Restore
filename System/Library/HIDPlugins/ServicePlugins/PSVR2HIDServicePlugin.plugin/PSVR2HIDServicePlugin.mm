uint64_t sub_E60()
{
  if (qword_1B038 != -1)
  {
    sub_9F1C();
  }

  return byte_1B030;
}

id sub_EC0()
{
  if (qword_1B048 != -1)
  {
    sub_9F30();
  }

  v1 = qword_1B040;

  return v1;
}

void sub_F04(id a1)
{
  v1 = os_log_create("com.apple.GameController", "default");
  v2 = qword_1B040;
  qword_1B040 = v1;
}

id sub_F48()
{
  if (qword_1B058 != -1)
  {
    sub_9F44();
  }

  v1 = qword_1B050;

  return v1;
}

void sub_F8C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "monitor");
  v2 = qword_1B050;
  qword_1B050 = v1;
}

id sub_FD0()
{
  if (qword_1B068 != -1)
  {
    sub_9F58();
  }

  v1 = qword_1B060;

  return v1;
}

void sub_1014(id a1)
{
  v1 = os_log_create("com.apple.GameController", "analytics");
  v2 = qword_1B060;
  qword_1B060 = v1;
}

id sub_1058()
{
  if (qword_1B078 != -1)
  {
    sub_9F6C();
  }

  v1 = qword_1B070;

  return v1;
}

void sub_109C(id a1)
{
  v1 = os_log_create("com.apple.GameController.Daemon", "default");
  v2 = qword_1B070;
  qword_1B070 = v1;
}

void sub_10E0(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = qword_1B080;
  qword_1B080 = v1;
}

id sub_1120()
{
  if (qword_1B088 != -1)
  {
    sub_9F80();
  }

  v1 = qword_1B080;

  return v1;
}

void sub_1164(id a1)
{
  if (!qword_1B080)
  {
    objc_storeStrong(&qword_1B080, &_os_log_default);
  }
}

id sub_1188()
{
  if (qword_1B098 != -1)
  {
    sub_9F94();
  }

  v1 = qword_1B090;

  return v1;
}

void sub_11CC(id a1)
{
  v1 = os_log_create("com.apple.GameController.Settings", "default");
  v2 = qword_1B090;
  qword_1B090 = v1;
}

id sub_1210()
{
  if (qword_1B0A8 != -1)
  {
    sub_9FA8();
  }

  v1 = qword_1B0A0;

  return v1;
}

void sub_1254(id a1)
{
  v1 = os_log_create("com.apple.GameController.Haptics", "default");
  v2 = qword_1B0A0;
  qword_1B0A0 = v1;
}

id sub_1298()
{
  if (qword_1B0B8 != -1)
  {
    sub_9FBC();
  }

  v1 = qword_1B0B0;

  return v1;
}

void sub_12DC(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "GameController");
  v2 = qword_1B0B0;
  qword_1B0B0 = v1;
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
    v6 = (![v4 isEqual:&off_15070] || (objc_msgSend(v5, "isEqual:", &off_15088) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_15070) || (objc_msgSend(v5, "isEqual:", &off_150A0) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_15070) || (objc_msgSend(v5, "isEqual:", &off_15070) & 1) == 0);
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
  v7[3] = &unk_14708;
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
        v7[3] = &unk_14678;
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
          sub_A3F8(v3);
        }

        *(WeakRetained + 121) = 0;
        [WeakRetained dispatchHapticEvent];
      }

      else
      {
        if (v4)
        {
          sub_A3B4(v3);
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
        v6 = &stru_14C18;
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
  if (qword_1B0D0 != -1)
  {
    sub_A43C();
  }

  return byte_1B0D8;
}

void sub_5DC0(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  byte_1B0D8 = [v1 BOOLForKey:@"GCPartnersEnable"];
  v2 = sub_1120();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = byte_1B0D8;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v3, 8u);
  }
}

void sub_6788(void *a1, int a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = v7;
  if (a3 == -536870400 && a4 && *(v7 + 6) == a2)
  {
    v9 = sub_1120();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a4;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Received request to disconnect device: %lx", &v10, 0xCu);
    }

    sub_A5A4(v8);
  }
}

void sub_6874(void *a1)
{
  v1 = a1;
  v2 = 5;
  v162 = 0u;
  v163 = 0u;
  __asm { FMOV            V11.2S, #1.0 }

  while (1)
  {
    v7 = *(v1 + 8);
    NextSample = IOGCFastPathReaderReadNextSample();
    if (NextSample <= -536870169)
    {
      if (NextSample != -536870184 && NextSample != -536870169)
      {
        goto LABEL_203;
      }

      goto LABEL_13;
    }

    if (NextSample != -536870165)
    {
      break;
    }

LABEL_13:
    v15 = *(v1 + 8);
    v16 = IOGCFastPathReaderReset();
    v17 = sub_1120();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      if (v18)
      {
        *buf = 67109120;
        *&buf[4] = v16;
        _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "Input reader reset failed: %{mach.errno}d", buf, 8u);
      }
    }

    else if (v18)
    {
      sub_AF88(&v160, v161);
    }

    if (v2 < 2)
    {
      goto LABEL_206;
    }

LABEL_25:
    --v2;
  }

  if (!NextSample)
  {
    v159 = 0;
    v158 = 0;
    v157 = 0;
    SequenceID = IOGCFastPathSampleGetSequenceID();
    if (SequenceID)
    {
      v10 = SequenceID;
      v11 = sub_1120();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = v10;
        v12 = v11;
        v13 = "Could not read sequence ID: %{mach.errno}d";
        goto LABEL_39;
      }

LABEL_22:

      if (v10 == -536870165 || v10 == -536870168)
      {
        v131 = *(v1 + 8);
        if (IOGCFastPathReaderReset())
        {
          v132 = sub_1120();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
          {
            sub_AEEC();
          }
        }

        goto LABEL_206;
      }

LABEL_24:
      if (v2 <= 1)
      {
        goto LABEL_206;
      }

      goto LABEL_25;
    }

    Flags = IOGCFastPathSampleGetFlags();
    if (Flags)
    {
      v10 = Flags;
      v11 = sub_1120();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *buf = 67109120;
      *&buf[4] = v10;
      v12 = v11;
      v13 = "Could not read flags: %{mach.errno}d";
LABEL_39:
      _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, v13, buf, 8u);
      goto LABEL_22;
    }

    if ((v158 & 1) == 0)
    {
      v20 = sub_1120();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_AF5C(&v155, v156);
      }

      goto LABEL_24;
    }

    Timestamp = IOGCFastPathSampleGetTimestamp();
    if (Timestamp)
    {
      v10 = Timestamp;
      v11 = sub_1120();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *buf = 67109120;
      *&buf[4] = v10;
      v12 = v11;
      v13 = "Could not read timestamp: %{mach.errno}d";
      goto LABEL_39;
    }

    v22 = *(v1 + 4);
    kdebug_trace();
    v23 = v157;
    v24 = v1;
    v25 = v24;
    v26 = v1[104];
    if (v26 != 2)
    {
      if (v26 != 1)
      {
        goto LABEL_83;
      }

      v154 = v24;
      v169 = 0;
      v170 = 0;
      v167 = 0;
      v168 = 0;
      v165 = 0.0;
      v166 = -2;
      v164 = 0;
      Integer = IOGCFastPathSampleGetInteger();
      if (Integer)
      {
        v28 = Integer;
        sub_1120();
        *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

LABEL_82:

LABEL_83:
        v54 = v159;
        v55 = v157;
        v56 = v25;
        v57 = IOGCFastPathSampleGet3Double();
        if (v57)
        {
          v58 = v57;
          v59 = sub_1120();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
LABEL_88:
            v196.i32[0] = 67109120;
            v196.i32[1] = v58;
            _os_log_error_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "Failed to get acceleration: %{mach.errno}d", &v196, 8u);
          }
        }

        else
        {
          v60 = IOGCFastPathSampleGet3Double();
          if (v60)
          {
            v58 = v60;
            v59 = sub_1120();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_88;
            }
          }

          else
          {
            v59 = [[HIDEvent alloc] initWithType:1 timestamp:v55 senderID:*(v1 + 4)];
            [v59 setIntegerValue:65280 forField:0x10000];
            [v59 setIntegerValue:59 forField:65537];
            [v59 setIntegerValue:1 forField:65538];
            v61 = [[HIDEvent alloc] initWithType:13 timestamp:v55 senderID:*(v1 + 4)];
            IOHIDEventSetEventFlags();
            [v61 setDoubleValue:851968 forField:*buf];
            [v61 setDoubleValue:851969 forField:*&buf[8]];
            [v61 setDoubleValue:851970 forField:*&v172];
            [v61 setIntegerValue:v54 forField:851973];
            IOHIDEventAppendEvent();
            v62 = [[HIDEvent alloc] initWithType:20 timestamp:v55 senderID:*(v1 + 4)];
            IOHIDEventSetEventFlags();
            [v62 setDoubleValue:1310720 forField:v191];
            [v62 setDoubleValue:1310721 forField:v192];
            [v62 setDoubleValue:1310722 forField:v193];
            [v62 setIntegerValue:v54 forField:1310725];
            IOHIDEventAppendEvent();
            [v56 dispatchEvent:v59];
          }
        }

        v63 = v56;
        *buf = 0;
        v191 = 0.0;
        v64 = IOGCFastPathSampleGetInteger();
        if (v64)
        {
          v65 = v64;
          v66 = sub_1120();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v196.i32[0] = 67109120;
            v196.i32[1] = v65;
            v67 = v66;
            v68 = "Failed to get power charge status: %{mach.errno}d";
            goto LABEL_101;
          }

          goto LABEL_95;
        }

        Double = IOGCFastPathSampleGetDouble();
        if (Double)
        {
          v70 = Double;
          v66 = sub_1120();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v196.i32[0] = 67109120;
            v196.i32[1] = v70;
            v67 = v66;
            v68 = "Failed to get power battery level: %{mach.errno}d";
LABEL_101:
            _os_log_error_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, v68, &v196, 8u);
          }

LABEL_95:
        }

        else
        {
          v72 = *buf - 1;
          v73 = (*buf - 1) < 2;
          v74 = v191;
          if (v1[496] != v73 || v191 != *(v1 + 61))
          {
            *(v1 + 61) = v191;
            v1[496] = v73;
            [*(v1 + 16) updateBattery:(v74 * 100.0) isCharging:v72 < 2];
          }
        }

        v71 = *(v1 + 4);
        kdebug_trace();
        goto LABEL_24;
      }

      v33 = IOGCFastPathSampleGetInteger();
      if (v33)
      {
        v34 = v33;
        sub_1120();
        *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_45;
      }

      v36 = IOGCFastPathSampleGetInteger();
      if (v36)
      {
        v37 = v36;
        sub_1120();
        *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_51;
      }

      v39 = IOGCFastPathSampleGetInteger();
      if (v39)
      {
        v40 = v39;
        sub_1120();
        *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_57;
      }

      v153 = v23;
      v42 = IOGCFastPathSampleGetInteger();
      if (v42)
      {
        v43 = v42;
        v44 = sub_1120();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v43;
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "Failed to get trigger press (raw): %{mach.errno}d", buf, 8u);
        }
      }

      v45 = IOGCFastPathSampleGetDouble();
      if (v45)
      {
        v46 = v45;
        sub_1120();
        *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_67;
      }

      v51 = IOGCFastPathSampleGet2Double();
      if (v51)
      {
        v52 = v51;
        sub_1120();
        *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_80;
      }

      v75 = IOGCFastPathSampleGetInteger();
      if (v75)
      {
        v76 = v75;
        sub_1120();
        *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_197;
      }

      v78 = v164 < 1;
      v79 = *(v1 + 86);
      if (v165 <= 0.0 || v79 > 0.0)
      {
        if (v165 > 0.0 || v79 <= 0.0)
        {
          if (v165 > 0.0)
          {
            v129 = *(v1 + 4);
            kdebug_trace();
          }
        }

        else
        {
          v88 = *(v1 + 4);
          kdebug_trace();
          v82 = *(v1 + 60);
          *(v1 + 60) = 0;
LABEL_119:
        }
      }

      else
      {
        v80 = *(v1 + 4);
        kdebug_trace();
        if (os_variant_has_internal_diagnostics())
        {
          v81 = _os_activity_create(&dword_0, "[PSVR2 (L)] Trigger press", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
          v82 = *(v1 + 60);
          *(v1 + 60) = v81;
          goto LABEL_119;
        }
      }

      v152 = v78 << 15;
      if ((v169 & 0x10) != 0)
      {
        v89 = 1.0;
      }

      else
      {
        v89 = 0.0;
      }

      v136 = v169;
      if ((v169 & 0x40) != 0)
      {
        v91 = 1.0;
      }

      else
      {
        v91 = 0.0;
      }

      v90 = v165;
      v148 = v90;
      v150 = v91;
      if ((v170 & 4) != 0)
      {
        v92 = 1.0;
      }

      else
      {
        v92 = 0.0;
      }

      if ((v170 & 8) != 0)
      {
        v93 = 1.0;
      }

      else
      {
        v93 = 0.0;
      }

      v144 = v93;
      v146 = v92;
      if ((v170 & 0x10) != 0)
      {
        v94 = 1.0;
      }

      else
      {
        v94 = 0.0;
      }

      if ((v170 & 0x20) != 0)
      {
        v95 = 1.0;
      }

      else
      {
        v95 = 0.0;
      }

      v140 = v95;
      v142 = v94;
      if ((v170 & 0x40) != 0)
      {
        v96 = 1.0;
      }

      else
      {
        v96 = 0.0;
      }

      v138 = v96;
      v97 = vextq_s8(v196, v196, 8uLL);
      v98 = fmax(*&v196.i64[1], 0.0);
      v99 = vcvt_f32_f64(vandq_s8(vnegq_f64(v97), vcltzq_f64(v97)));
      v100 = fmax(*v196.i64, 0.0);
      [v154 dispatchMenuButtonEventWithValue:(v169 >> 7) & 1 timestamp:v153];
      [v154 dispatchHomeButtonEventWithValue:(v169 >> 8) & 1 timestamp:v153];
      [v154 createEvent:14 timestamp:v153];
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [v29 setOptions:[v29 options]| 1];
      [v29 setIntegerValue:0 forField:917506];
      if ((v170 & 4) != 0)
      {
        v101 = 7200;
      }

      else
      {
        v101 = 7168;
      }

      [v29 setIntegerValue:v101 forField:917504];
      v191 = *&v29;
      [v154 createEvent:14 timestamp:v153];
      v102 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v135 = v102;
      [*&v102 setOptions:{objc_msgSend(*&v102, "options") | 1}];
      [*&v102 setIntegerValue:0 forField:917506];
      if ((v170 & 8) != 0)
      {
        v103 = 8224;
      }

      else
      {
        v103 = 0x2000;
      }

      [*&v102 setIntegerValue:v103 forField:917504];
      v192 = v102;
      [v154 createEvent:14 timestamp:v153];
      v104 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v134 = v104;
      [*&v104 setOptions:{objc_msgSend(*&v104, "options") | 1}];
      [*&v104 setIntegerValue:0 forField:917506];
      if ((v170 & 0x40) != 0)
      {
        v105 = 17440;
      }

      else
      {
        v105 = 17408;
      }

      [*&v104 setIntegerValue:v105 forField:917504];
      v193 = v104;
      v106 = [v154 createEvent:14 timestamp:v153];
      [v106 setOptions:{objc_msgSend(v106, "options") | 1}];
      [v106 setIntegerValue:0 forField:917506];
      if ((v170 & 0x10) != 0)
      {
        v107 = 9264;
      }

      else
      {
        v107 = 9232;
      }

      [v106 setIntegerValue:v107 forField:917504];
      [v106 setIntegerValue:v168 forField:?];
      v194 = v106;
      v108 = [v154 createEvent:14 timestamp:v153];
      [v108 setOptions:{objc_msgSend(v108, "options") | 1}];
      [v108 setIntegerValue:0 forField:917506];
      [v108 setIntegerValue:v170 & 0x20 | 0x2C10 forField:917504];
      [v108 setIntegerValue:v167 forField:917505];
      v195 = v108;
      v109 = [NSArray arrayWithObjects:&v191 count:5];
      *buf = 0u;
      v172 = 0u;
      v173 = vbic_s8(_D11, vmovn_s64(vceqzq_s64(vandq_s8(vdupq_n_s64(v136), xmmword_11290))));
      v174 = v89;
      v175 = 0.0;
      *(&v176 + 4) = v99;
      *&v176 = v98;
      *(&v176 + 3) = v100;
      v177 = 0u;
      v178 = v148;
      v179 = 0.0;
      *v181 = 0u;
      v180 = v150;
      *&v181[16] = v146;
      v182 = 0.0;
      v183 = v144;
      v184 = 0.0;
      v185 = v142;
      v186 = 0.0;
      v187 = v140;
      v188 = 0.0;
      v189 = v138;
      memset(v190, 0, sizeof(v190));
LABEL_192:
      [v154 dispatchGameControllerExtendedEventWithState:buf timestamp:v153 options:v152 children:v109];

      goto LABEL_82;
    }

    v154 = v24;
    v169 = 0;
    v170 = 0;
    v167 = 0;
    v168 = 0;
    v165 = 0.0;
    v166 = -2;
    v164 = 0;
    v32 = IOGCFastPathSampleGetInteger();
    if (v32)
    {
      v28 = v32;
      sub_1120();
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_37:
      *buf = 67109120;
      *&buf[4] = v28;
      v30 = v29;
      v31 = "Failed to get button touch state: %{mach.errno}d";
      goto LABEL_81;
    }

    v35 = IOGCFastPathSampleGetInteger();
    if (v35)
    {
      v34 = v35;
      sub_1120();
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_45:
      *buf = 67109120;
      *&buf[4] = v34;
      v30 = v29;
      v31 = "Failed to get button press state: %{mach.errno}d";
      goto LABEL_81;
    }

    v38 = IOGCFastPathSampleGetInteger();
    if (v38)
    {
      v37 = v38;
      sub_1120();
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_51:
      *buf = 67109120;
      *&buf[4] = v37;
      v30 = v29;
      v31 = "Failed to get grip proximity: %{mach.errno}d";
      goto LABEL_81;
    }

    v41 = IOGCFastPathSampleGetInteger();
    if (v41)
    {
      v40 = v41;
      sub_1120();
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_57:
      *buf = 67109120;
      *&buf[4] = v40;
      v30 = v29;
      v31 = "Failed to get trigger proximity: %{mach.errno}d";
      goto LABEL_81;
    }

    v153 = v23;
    v47 = IOGCFastPathSampleGetInteger();
    if (v47)
    {
      v48 = v47;
      v49 = sub_1120();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v48;
        _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "Failed to get trigger press (raw): %{mach.errno}d", buf, 8u);
      }
    }

    v50 = IOGCFastPathSampleGetDouble();
    if (v50)
    {
      v46 = v50;
      sub_1120();
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_67:
      *buf = 67109120;
      *&buf[4] = v46;
      v30 = v29;
      v31 = "Failed to get trigger press: %{mach.errno}d";
      goto LABEL_81;
    }

    v53 = IOGCFastPathSampleGet2Double();
    if (v53)
    {
      v52 = v53;
      sub_1120();
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_80:
      *buf = 67109120;
      *&buf[4] = v52;
      v30 = v29;
      v31 = "Failed to get thumbstick position: %{mach.errno}d";
      goto LABEL_81;
    }

    v77 = IOGCFastPathSampleGetInteger();
    if (v77)
    {
      v76 = v77;
      sub_1120();
      *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_197:
      *buf = 67109120;
      *&buf[4] = v76;
      v30 = v29;
      v31 = "Failed to get held state: %{mach.errno}d";
LABEL_81:
      _os_log_error_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, v31, buf, 8u);
      goto LABEL_82;
    }

    v83 = v164 == 0;
    v84 = *(v1 + 87);
    if (v165 <= 0.0 || v84 > 0.0)
    {
      if (v165 > 0.0 || v84 <= 0.0)
      {
        if (v165 > 0.0)
        {
          v130 = *(v1 + 4);
          kdebug_trace();
        }
      }

      else
      {
        v110 = *(v1 + 4);
        kdebug_trace();
        v87 = *(v1 + 60);
        *(v1 + 60) = 0;
LABEL_157:
      }
    }

    else
    {
      v85 = *(v1 + 4);
      kdebug_trace();
      if (os_variant_has_internal_diagnostics())
      {
        v86 = _os_activity_create(&dword_0, "[PSVR2 (R)] Trigger press", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
        v87 = *(v1 + 60);
        *(v1 + 60) = v86;
        goto LABEL_157;
      }
    }

    v152 = v83 << 15;
    if ((v169 & 0x10) != 0)
    {
      v111 = 1.0;
    }

    else
    {
      v111 = 0.0;
    }

    v137 = v169;
    if ((v169 & 0x40) != 0)
    {
      v113 = 1.0;
    }

    else
    {
      v113 = 0.0;
    }

    v112 = v165;
    v149 = v112;
    v151 = v113;
    if (v170)
    {
      v114 = 1.0;
    }

    else
    {
      v114 = 0.0;
    }

    if ((v170 & 2) != 0)
    {
      v115 = 1.0;
    }

    else
    {
      v115 = 0.0;
    }

    v145 = v115;
    v147 = v114;
    if ((v170 & 0x10) != 0)
    {
      v116 = 1.0;
    }

    else
    {
      v116 = 0.0;
    }

    if ((v170 & 0x20) != 0)
    {
      v117 = 1.0;
    }

    else
    {
      v117 = 0.0;
    }

    v141 = v117;
    v143 = v116;
    if ((v170 & 0x40) != 0)
    {
      v118 = 1.0;
    }

    else
    {
      v118 = 0.0;
    }

    v139 = v118;
    v119 = vextq_s8(v196, v196, 8uLL);
    v120 = fmax(*&v196.i64[1], 0.0);
    v121 = vcvt_f32_f64(vandq_s8(vnegq_f64(v119), vcltzq_f64(v119)));
    v122 = fmax(*v196.i64, 0.0);
    [v154 dispatchMenuButtonEventWithValue:(v169 >> 7) & 1 timestamp:v153];
    [v154 dispatchHomeButtonEventWithValue:(v169 >> 8) & 1 timestamp:v153];
    [v154 createEvent:14 timestamp:v153];
    *&v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [v29 setOptions:[v29 options]| 1];
    [v29 setIntegerValue:0 forField:917506];
    if (v170)
    {
      v123 = 5152;
    }

    else
    {
      v123 = 5120;
    }

    [v29 setIntegerValue:v123 forField:917504];
    v191 = *&v29;
    [v154 createEvent:14 timestamp:v153];
    v124 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v135 = v124;
    [*&v124 setOptions:{objc_msgSend(*&v124, "options") | 1}];
    [*&v124 setIntegerValue:0 forField:917506];
    if ((v170 & 2) != 0)
    {
      v125 = 6176;
    }

    else
    {
      v125 = 6144;
    }

    [*&v124 setIntegerValue:v125 forField:917504];
    v192 = v124;
    [v154 createEvent:14 timestamp:v153];
    v126 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v134 = v126;
    [*&v126 setOptions:{objc_msgSend(*&v126, "options") | 1}];
    [*&v126 setIntegerValue:0 forField:917506];
    if ((v170 & 0x40) != 0)
    {
      v127 = 18464;
    }

    else
    {
      v127 = 18432;
    }

    [*&v126 setIntegerValue:v127 forField:917504];
    v193 = v126;
    v106 = [v154 createEvent:14 timestamp:v153];
    [v106 setOptions:{objc_msgSend(v106, "options") | 1}];
    [v106 setIntegerValue:0 forField:917506];
    if ((v170 & 0x10) != 0)
    {
      v128 = 10288;
    }

    else
    {
      v128 = 10256;
    }

    [v106 setIntegerValue:v128 forField:917504];
    [v106 setIntegerValue:v168 forField:?];
    v194 = v106;
    v108 = [v154 createEvent:14 timestamp:v153];
    [v108 setOptions:{objc_msgSend(v108, "options") | 1}];
    [v108 setIntegerValue:0 forField:917506];
    [v108 setIntegerValue:v170 & 0x20 | 0x3010 forField:917504];
    [v108 setIntegerValue:v167 forField:917505];
    v195 = v108;
    v109 = [NSArray arrayWithObjects:&v191 count:5];
    *&v172 = 0;
    *buf = 0u;
    *(&v172 + 1) = vbic_s8(_D11, vmovn_s64(vceqzq_s64(vandq_s8(vdupq_n_s64(v137), xmmword_11280))));
    v173 = 0;
    v174 = 0.0;
    v176 = 0u;
    v175 = v111;
    *&v177 = v120;
    *(&v177 + 4) = v121;
    *(&v177 + 3) = v122;
    v178 = 0.0;
    v179 = v149;
    v180 = 0.0;
    *&v181[4] = 0u;
    *v181 = v151;
    v182 = v147;
    v183 = 0.0;
    v184 = v145;
    v185 = 0.0;
    v186 = v143;
    v187 = 0.0;
    v188 = v141;
    v189 = 0.0;
    *v190 = v139;
    memset(&v190[1], 0, 52);
    goto LABEL_192;
  }

  if (NextSample == -536870168)
  {
    goto LABEL_206;
  }

LABEL_203:
  v133 = sub_1120();
  if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
  {
    sub_AFB4();
  }

LABEL_206:
  IOGCFastPathSampleDestory();
}

void sub_8048(uint64_t a1)
{
  v2 = _os_activity_create(&dword_0, "Finish", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v2, &v8);
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  if (v4)
  {
    (*(v4 + 16))();
    v5 = *(a1 + 32);
    v6 = *(v5 + 96);
    *(v5 + 96) = 0;

    v3 = *(a1 + 32);
  }

  v7 = *(v3 + 48);
  IOGCFastPathClientClose();
  os_activity_scope_leave(&v8);
}

void sub_97AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_97DC(uint64_t a1)
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

void sub_9874(uint64_t a1)
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
  block[2] = sub_9978;
  block[3] = &unk_14708;
  v8 = WeakRetained;
  v6 = WeakRetained;
  dispatch_after(v4, v5, block);
}

void sub_9978(uint64_t a1)
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_9A08;
  activity_block[3] = &unk_14708;
  v2 = *(a1 + 32);
  _os_activity_initiate(&dword_0, "Resume Connection To Game Controller Daemon", OS_ACTIVITY_FLAG_DETACHED, activity_block);
}

void sub_9A08(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteObjectProxy];
  [v1 driverCheckIn];
}

_BYTE *sub_9B04(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_9B14(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

id sub_9BCC()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_E38();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_E4C();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_9BA4();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_9BB8();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_5EA0();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_5EB4();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_9B54();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_9B68();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_9B7C();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_9B90();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_9EF4();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_9F08();
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

void sub_9FD0(uint64_t a1, void *a2, int a3)
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

uint64_t sub_A080(uint64_t result)
{
  if (result)
  {
    return *(result + 656);
  }

  return result;
}

void sub_A134(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_A218(uint64_t a1, void *a2)
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
  *(v2 + 24) = &unk_14750;
  *(v2 + 32) = v5;
  sub_50B8(v3);
}

void sub_A2C8(uint64_t a1, void *a2)
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
  *(v2 + 24) = &unk_14750;
  *(v2 + 32) = v5;
  sub_50B8(v3);
}

uint64_t sub_A378(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 656);
  }

  return kdebug_trace();
}

uint64_t sub_A450(uint64_t a1, CFTypeRef *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 3758097097;
  size = -3;
  address = 0;
  errorString = 0;
  v5 = IOCFSerialize(*a2, 0);
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 40);
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v6);
    v10 = IOConnectCallMethod(v7, 1u, 0, 0, BytePtr, Length, 0, 0, &address, &size);
    if (v10)
    {
      v11 = 0;
      v4 = v10;
    }

    else
    {
      v11 = IOCFUnserializeBinary(address, size, kCFAllocatorDefault, 0, &errorString);
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(a2, v11);
          v4 = 0;
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (address)
  {
    mach_vm_deallocate(mach_task_self_, address, size);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v4;
}

void sub_A5A4(uint64_t a1)
{
  if (a1)
  {
    v2 = IORegistryEntrySearchCFProperty(*(a1 + 24), "IOService", @"SerialNumber", kCFAllocatorDefault, 3u);
    [*(a1 + 120) requestIdleDisconnect:v2];
  }
}

uint64_t sub_A620(uint64_t a1, void *a2, id *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    size = -3;
    address = 0;
    errorString = 0;
    if (!v5)
    {
      v6 = &__NSArray0__struct;
    }

    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v6;
    v8 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = +[NSNull null];
          [v7 setObject:v13 forKey:v12];
        }

        v9 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v9);
    }

    v14 = 3758097097;

    v15 = IOCFSerialize(v7, 0);
    v16 = v15;
    if (v15)
    {
      v17 = *(a1 + 40);
      BytePtr = CFDataGetBytePtr(v15);
      Length = CFDataGetLength(v16);
      v20 = IOConnectCallMethod(v17, 0, 0, 0, BytePtr, Length, 0, 0, &address, &size);
      if (v20)
      {
        v21 = 0;
        v14 = v20;
      }

      else
      {
        v21 = IOCFUnserializeBinary(address, size, kCFAllocatorDefault, 0, &errorString);
        if (v21)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(a3, v21);
            v14 = 0;
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }

    if (address)
    {
      mach_vm_deallocate(mach_task_self_, address, size);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_A8A4(uint64_t a1, void *a2, int a3)
{
  v7 = a2;
  if (a1)
  {
    v5 = *(a1 + 32);
    [v7 timestamp];
    [v7 type];
    kdebug_trace();
    if (a3)
    {
      *(a1 + 136) = [v7 timestamp];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));
    [WeakRetained dispatchEvent:v7];
  }
}

void sub_A96C()
{
  sub_9AF8();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_A9DC()
{
  sub_9AF8();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_AA4C()
{
  sub_9AE0();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_AA88()
{
  sub_9AE0();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_AAC4(int a1, void *a2, void *a3)
{
  v6 = sub_1120();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = a1;
    _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Failed to set 'Power' configuration: %{mach.errno}d", v7, 8u);
  }

  *a3 = *a2;
}

void sub_AB84(void *a1)
{
  v2 = sub_1120();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v7 = [a1 objectForKeyedSubscript:@"Power.Disconnect.OnBattery.NotHeldAfterTime"];
    sub_9AEC();
    _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
  }
}

void sub_AC44(unsigned __int8 *a1)
{
  v2 = sub_1120();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v7 = *a1;
    sub_9AEC();
    _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 8u);
  }
}

void sub_ACEC()
{
  sub_9AE0();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_AD28()
{
  sub_9AE0();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_AD64()
{
  sub_9AE0();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_ADA0()
{
  sub_9AE0();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_ADDC(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_9AEC();
    _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 8u);
  }
}

void sub_AE7C()
{
  sub_9AF8();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_AEEC()
{
  sub_9AF8();
  sub_9B30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_AFB4()
{
  sub_9AF8();
  sub_9B30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_B024()
{
  v0 = sub_1120();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_9AEC();
    _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
  }
}

void sub_B0C8()
{
  v0 = sub_1120();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_9AEC();
    _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
  }
}

void sub_B184(void *a1, NSObject **a2)
{
  v4 = sub_1120();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    [a1 unsignedIntValue];
    sub_9AF8();
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "setProperty failed: %{mach.errno}d", v5, 8u);
  }

  *a2 = v4;
}

void sub_B264()
{
  sub_9AE0();
  sub_9B30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B2A0()
{
  v0 = sub_1120();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_9AEC();
    _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 8u);
  }
}

void sub_B344()
{
  sub_9AE0();
  sub_9B30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}