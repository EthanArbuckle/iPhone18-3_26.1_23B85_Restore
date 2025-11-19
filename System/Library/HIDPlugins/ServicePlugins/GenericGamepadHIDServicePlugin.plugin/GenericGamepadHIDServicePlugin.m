uint64_t sub_E88()
{
  if (qword_1EF88 != -1)
  {
    sub_CD94();
  }

  return byte_1EF80;
}

id sub_EE8()
{
  if (qword_1EF98 != -1)
  {
    sub_CDA8();
  }

  v1 = qword_1EF90;

  return v1;
}

void sub_F2C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "default");
  v2 = qword_1EF90;
  qword_1EF90 = v1;
}

id sub_F70()
{
  if (qword_1EFA8 != -1)
  {
    sub_CDBC();
  }

  v1 = qword_1EFA0;

  return v1;
}

void sub_FB4(id a1)
{
  v1 = os_log_create("com.apple.GameController", "monitor");
  v2 = qword_1EFA0;
  qword_1EFA0 = v1;
}

id sub_FF8()
{
  if (qword_1EFB8 != -1)
  {
    sub_CDD0();
  }

  v1 = qword_1EFB0;

  return v1;
}

void sub_103C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "analytics");
  v2 = qword_1EFB0;
  qword_1EFB0 = v1;
}

id sub_1080()
{
  if (qword_1EFC8 != -1)
  {
    sub_CDE4();
  }

  v1 = qword_1EFC0;

  return v1;
}

void sub_10C4(id a1)
{
  v1 = os_log_create("com.apple.GameController.Daemon", "default");
  v2 = qword_1EFC0;
  qword_1EFC0 = v1;
}

void sub_1108(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = qword_1EFD0;
  qword_1EFD0 = v1;
}

id sub_1148()
{
  if (qword_1EFD8 != -1)
  {
    sub_CDF8();
  }

  v1 = qword_1EFD0;

  return v1;
}

void sub_118C(id a1)
{
  if (!qword_1EFD0)
  {
    objc_storeStrong(&qword_1EFD0, &_os_log_default);
  }
}

id sub_11B0()
{
  if (qword_1EFE8 != -1)
  {
    sub_CE0C();
  }

  v1 = qword_1EFE0;

  return v1;
}

void sub_11F4(id a1)
{
  v1 = os_log_create("com.apple.GameController.Settings", "default");
  v2 = qword_1EFE0;
  qword_1EFE0 = v1;
}

id sub_1238()
{
  if (qword_1EFF8 != -1)
  {
    sub_CE20();
  }

  v1 = qword_1EFF0;

  return v1;
}

void sub_127C(id a1)
{
  v1 = os_log_create("com.apple.GameController.Haptics", "default");
  v2 = qword_1EFF0;
  qword_1EFF0 = v1;
}

id sub_12C0()
{
  if (qword_1F008 != -1)
  {
    sub_CE34();
  }

  v1 = qword_1F000;

  return v1;
}

void sub_1304(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "GameController");
  v2 = qword_1F000;
  qword_1F000 = v1;
}

NSObject *sub_1370(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
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

void sub_15F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1620(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1148();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_16B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1148();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", v4, 2u);
  }

  v3 = [WeakRetained remoteObjectProxy];
  [v3 driverCheckIn];
}

void sub_1E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E64(uint64_t a1)
{
  v2 = [NSString stringWithCString:dispatch_queue_get_label(*(a1 + 32)) encoding:4];
  v3 = sub_1148();
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

BOOL sub_225C(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsagePage"];
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsage"];
    v6 = (![v4 isEqual:&off_19AC0] || (objc_msgSend(v5, "isEqual:", &off_19AD8) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_19AC0) || (objc_msgSend(v5, "isEqual:", &off_19AF0) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_19AC0) || (objc_msgSend(v5, "isEqual:", &off_19AC0) & 1) == 0);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_280C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2830(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_1148();
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

void sub_2AA4(uint64_t a1)
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

void sub_33D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 560);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_347C;
  v7[3] = &unk_18700;
  v7[4] = v2;
  v4 = sub_1370(0x6FC23AC00uLL, 0x3B9ACA00uLL, v3, v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

void sub_4930(uint64_t a1)
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
        v7[2] = sub_4A20;
        v7[3] = &unk_18670;
        objc_copyWeak(&v8, (a1 + 32));
        v5 = sub_1370(0xF4240uLL, 0x186A0uLL, v4, v7);
        v6 = v3[66];
        v3[66] = v5;

        objc_destroyWeak(&v8);
      }
    }
  }
}

void sub_4A20(uint64_t a1)
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
      v3 = sub_1148();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        if (v4)
        {
          sub_D270(v3);
        }

        *(WeakRetained + 121) = 0;
        [WeakRetained dispatchHapticEvent];
      }

      else
      {
        if (v4)
        {
          sub_D22C(v3);
        }

        [WeakRetained stopHaptics];
      }
    }
  }
}

uint64_t sub_5100()
{

  return kdebug_trace();
}

id sub_5128(uint64_t a1, void *a2)
{
  v3 = *(a1 + 656);

  return [a2 timestamp];
}

void sub_5150(uint64_t a1)
{
  v1[5] = a1;

  dispatch_after(v2, v3, v1);
}

id sub_56BC()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_566C();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_5680();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_C65C();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_C670();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_5694();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_56A8();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_C634();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_C648();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_5644();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_5658();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_CD54();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_CD68();
  [v0 setInterface:v12 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v13 = sub_1348();
  [v0 setInterface:v13 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v14 = sub_135C();
  [v0 setInterface:v14 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v15 = GCGenericDeviceDriverConfigurationServiceClientInterface();
  [v0 setInterface:v15 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v16 = GCGenericDeviceDriverConfigurationServiceServerInterface();
  [v0 setInterface:v16 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t sub_59F0(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  IOObjectRetain(a2);
  if (a2)
  {
    while (!IOObjectConformsTo(a2, "IOHIDDevice"))
    {
      memset(className, 0, 128);
      IOObjectGetClass(a2, className);
      parent = 0;
      ParentEntry = IORegistryEntryGetParentEntry(a2, "IOService", &parent);
      IOObjectRelease(a2);
      if (ParentEntry)
      {
        v4 = sub_1148();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_E6E4();
        }

        return 0;
      }

      a2 = parent;
      if (!parent)
      {
        return a2;
      }
    }
  }

  return a2;
}

void sub_60B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) device];
  v2 = [v3 gc_snapshot];
  (*(v1 + 16))(v1, v2);
}

void sub_61EC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_637C;
    block[3] = &unk_18798;
    v8 = *(a1 + 32);
    v3 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    v11 = *(a1 + 48);
    dispatch_async(v2, block);
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = GCGenericDeviceErrorDomain;
    v12 = NSLocalizedFailureReasonErrorKey;
    v13 = @"'model' can not be nil.";
    v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v7 = [NSError errorWithDomain:v5 code:1 userInfo:v6];
    (*(v4 + 16))(v4, 0, v7);
  }
}

void sub_637C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7[0] = 0;
  v4 = [v2 _onqueue_configureWithModel:v3 error:v7];
  v5 = v7[0];
  if ((v4 & 1) == 0)
  {
    v6 = sub_1148();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_E820();
    }
  }

  (*(a1[6] + 16))();
}

void sub_6454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSErrorUserInfoKey a10, NSErrorUserInfoKey a11, const __CFString *a12, uint64_t a13)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    v15 = sub_1148();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_E7AC();
    }

    a12 = @"Caught an exception while applying configuration.";
    a10 = NSLocalizedFailureReasonErrorKey;
    a11 = NSUnderlyingErrorKey;
    v16 = [v14 gc_error];
    a13 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&a12 forKeys:&a10 count:2];
    [NSError errorWithDomain:GCGenericDeviceErrorDomain code:0 userInfo:v17];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x6408);
  }

  _Unwind_Resume(exception_object);
}

void sub_7130(id a1, NSString *a2, HIDElement *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1148();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_E9D8();
  }
}

BOOL sub_71A0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_7E80;
    v33 = sub_7EAC;
    v34 = 0;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_7F04;
    v28[3] = &unk_188B0;
    v28[4] = a1;
    v28[5] = &v29;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_81F4;
    v25[3] = &unk_188D8;
    v26 = &stru_18860;
    v6 = objc_retainBlock(v28);
    v27 = v6;
    v7 = objc_retainBlock(v25);
    v8 = objc_retainBlock(v7);
    v9 = v30[5];
    v30[5] = v8;

    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_83BC;
    v23 = sub_83CC;
    v24 = 0;
    v10 = [v5 properties];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_83D4;
    v15[3] = &unk_18928;
    v17 = &v19;
    v11 = v7;
    v16 = v11;
    objc_copyWeak(&v18, &location);
    [v10 enumerateObjectsUsingBlock:v15];

    v12 = v20[5];
    v13 = v12 == 0;
    if (a3 && v12)
    {
      *a3 = v12;
    }

    objc_destroyWeak(&v18);

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v29, 8);

    objc_destroyWeak(&location);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_7438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 136), 8);
  objc_destroyWeak((v9 - 88));
  _Unwind_Resume(a1);
}

BOOL sub_7474(_BOOL8 a1, void *a2, void *a3)
{
  v42 = a2;
  if (a1)
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = sub_7E80;
    v76 = sub_7EAC;
    v77 = 0;
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_87C0;
    v71[3] = &unk_18978;
    v71[4] = a1;
    v4 = objc_retainBlock(v71);
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_8AA8;
    v70[3] = &unk_189A0;
    v70[4] = a1;
    v5 = objc_retainBlock(v70);
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_8E08;
    v69[3] = &unk_18A38;
    v69[4] = &v72;
    v6 = objc_retainBlock(v69);
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_9394;
    v68[3] = &unk_18A88;
    v68[4] = &v72;
    v7 = objc_retainBlock(v68);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_9630;
    v67[3] = &unk_18AB0;
    v67[4] = &v72;
    v8 = objc_retainBlock(v67);
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_98CC;
    v66[3] = &unk_18B00;
    v66[4] = &v72;
    v9 = objc_retainBlock(v66);
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_9D70;
    v65[3] = &unk_18B50;
    v65[4] = &v72;
    v10 = objc_retainBlock(v65);
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_A4A0;
    v64[3] = &unk_18BA0;
    v64[4] = &v72;
    v11 = objc_retainBlock(v64);
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_AF94;
    v63[3] = &unk_188B0;
    v63[4] = a1;
    v63[5] = &v72;
    v12 = objc_retainBlock(v63);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_B284;
    v52[3] = &unk_18BC8;
    v38 = v4;
    v53 = v38;
    v39 = v5;
    v54 = v39;
    v40 = v6;
    v55 = v40;
    v56 = &stru_189C0;
    v13 = v7;
    v57 = v13;
    v14 = v8;
    v58 = v14;
    v15 = v9;
    v59 = v15;
    v16 = v10;
    v60 = v16;
    v17 = v11;
    v61 = v17;
    v18 = v12;
    v62 = v18;
    v19 = objc_retainBlock(v52);
    v20 = objc_retainBlock(v19);
    v21 = v73[5];
    v73[5] = v20;

    v22 = [v42 gamepadLeftThumbstickDeadzoneRadius];
    if (v22)
    {
      v23 = sub_1148();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [v22 doubleValue];
        sub_EA5C(v79, v23, v24, v25);
      }

      [v22 doubleValue];
      v27 = fmin(fmax(v26, 0.0), 1.0);
      *&v27 = v27;
      [a1 setLeftThumbstickDeadzoneRadius:v27];
    }

    v28 = [v42 gamepadRightThumbstickDeadzoneRadius];
    if (v28)
    {
      v29 = sub_1148();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [v28 doubleValue];
        sub_EA98(v78, v29, v30, v31);
      }

      [v28 doubleValue];
      v33 = fmin(fmax(v32, 0.0), 1.0);
      *&v33 = v33;
      [a1 setRightThumbstickDeadzoneRadius:v33];
    }

    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = sub_83BC;
    v50 = sub_83CC;
    v51 = 0;
    v34 = [v42 gamepadEventFields];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_B58C;
    v43[3] = &unk_18C18;
    v45 = &v46;
    v35 = v19;
    v43[4] = a1;
    v44 = v35;
    [v34 enumerateObjectsUsingBlock:v43];

    v36 = v47[5];
    a1 = v36 == 0;
    if (a3 && v36)
    {
      *a3 = v36;
    }

    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v72, 8);
  }

  return a1;
}

void sub_7B84(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 count])
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v5 = _os_activity_create(&dword_0, "Post Event", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);
    sub_CEF8(*(a1 + 32));
    kdebug_trace();
    if (*(a1 + 40) == 1)
    {
      v6 = *(a1 + 32);
      v35 = *(v6 + 960);
      v7 = *(v6 + 976);
      v8 = *(v6 + 992);
      v9 = *(v6 + 1024);
      v38 = *(v6 + 1008);
      v39 = v9;
      v36 = v7;
      v37 = v8;
      v10 = *(v6 + 1040);
      v11 = *(v6 + 1056);
      v12 = *(v6 + 1088);
      v42 = *(v6 + 1072);
      v43 = v12;
      v40 = v10;
      v41 = v11;
      v13 = *(v6 + 1104);
      v14 = *(v6 + 1120);
      v15 = *(v6 + 1136);
      v47 = *(v6 + 1152);
      v45 = v14;
      v46 = v15;
      v44 = v13;
      [v6 dispatchGameControllerExtendedEventWithState:&v35 timestamp:a3];
      v16 = *(a1 + 32);
      v17 = v16[264];
      if (v17 != v16[290])
      {
        [v16 dispatchHomeButtonEventWithValue:v17 != 0.0 timestamp:a3];
        *(*(a1 + 32) + 1160) = *(*(a1 + 32) + 1056);
        v16 = *(a1 + 32);
      }

      v18 = v16[265];
      if (v18 != v16[291])
      {
        [v16 dispatchMenuButtonEventWithValue:v18 != 0.0 timestamp:a3];
        *(*(a1 + 32) + 1164) = *(*(a1 + 32) + 1060);
        v16 = *(a1 + 32);
      }

      v19 = v16[266];
      if (v19 != v16[292])
      {
        [v16 dispatchOptionsButtonEventWithValue:v19 != 0.0 timestamp:a3];
        *(*(a1 + 32) + 1168) = *(*(a1 + 32) + 1064);
        v16 = *(a1 + 32);
      }

      v20 = v16[281];
      if (v20 != v16[293])
      {
        [v16 dispatchSearchButtonEventWithValue:v20 != 0.0 timestamp:a3];
        *(*(a1 + 32) + 1172) = *(*(a1 + 32) + 1124);
        v16 = *(a1 + 32);
      }

      v21 = v16[282];
      if (v21 != v16[294])
      {
        [v16 dispatchShareButtonEventWithValue:v21 != 0.0 timestamp:a3];
        *(*(a1 + 32) + 1176) = *(*(a1 + 32) + 1128);
      }
    }

    if (*(a1 + 41) == 1)
    {
      v22 = *(a1 + 32);
      if (memcmp((v22 + 856), (v22 + 752), 0x68uLL))
      {
        v23 = *(v22 + 752);
        v24 = *(v22 + 784);
        v36 = *(v22 + 768);
        v37 = v24;
        v35 = v23;
        v25 = *(v22 + 800);
        v26 = *(v22 + 816);
        v27 = *(v22 + 832);
        *&v41 = *(v22 + 848);
        v39 = v26;
        v40 = v27;
        v38 = v25;
        [v22 dispatchMotionEventWithState:&v35 timestamp:a3];
        v28 = *(a1 + 32);
        v29 = v28 + 856;
        v28 += 47;
        v30 = *v28;
        v31 = v28[2];
        *(v29 + 16) = v28[1];
        *(v29 + 32) = v31;
        *v29 = v30;
        v32 = v28[3];
        v33 = v28[4];
        v34 = v28[5];
        *(v29 + 96) = *(v28 + 12);
        *(v29 + 64) = v33;
        *(v29 + 80) = v34;
        *(v29 + 48) = v32;
      }
    }

    os_activity_scope_leave(&state);
  }
}

id sub_7E80(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

NSError *__cdecl sub_7EB4(id a1, GCGenericDeviceDataConstantExpressionModel *a2, id a3)
{
  v5 = a3;
  [(GCGenericDeviceDataConstantExpressionModel *)a2 value];
  (*(a3 + 2))(v5);

  return 0;
}

id sub_7F04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 elementIdentifier];
  v8 = [*(*(a1 + 32) + 696) objectForKeyedSubscript:v7];
  v9 = v8 != 0;

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v10 = *(*(*(a1 + 40) + 8) + 40);
  v11 = [v5 trueExpression];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_8174;
  v24[3] = &unk_18888;
  v26 = v30;
  v12 = v6;
  v28 = v9;
  v25 = v12;
  v27 = v29;
  v13 = (*(v10 + 16))(v10, v11, v24);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = *(*(*(a1 + 40) + 8) + 40);
    v17 = [v5 falseExpression];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_81B4;
    v19[3] = &unk_18888;
    v21 = v29;
    v23 = v9;
    v20 = v12;
    v22 = v30;
    v15 = (*(v16 + 16))(v16, v17, v19);
  }

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);

  return v15;
}

void sub_8150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_8174(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = 48;
  if (*(a1 + 56))
  {
    v2 = 40;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v2) + 8) + 24));
}

uint64_t sub_81B4(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = 40;
  if (*(a1 + 56))
  {
    v2 = 48;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v2) + 8) + 24));
}

id sub_81F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v15 = *(a1 + 32);
  }

  else
  {
    v8 = objc_opt_class();
    if (v8 != objc_opt_class())
    {
      v9 = GCGenericDeviceErrorDomain;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [NSString stringWithFormat:@"Unsupported expression class: %@.", v11, NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, @"Invalid expression."];
      v18[1] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:&v17 count:2];
      v14 = [NSError errorWithDomain:v9 code:2 userInfo:v13];

      goto LABEL_7;
    }

    v15 = *(a1 + 40);
  }

  v14 = (*(v15 + 16))(v15, v5, v6);
LABEL_7:

  return v14;
}

uint64_t sub_83BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_83D4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = sub_1148();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_EAD4();
  }

  v7 = [v5 name];
  if (v7)
  {
    if (([&off_19B10 containsObject:v7] & 1) == 0)
    {
      sub_EB40(&v27, &v28, v7, a1);
    }

    v8 = [v5 valueExpression];
    if (v8)
    {
      v9 = *(a1 + 32);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_86F4;
      v22[3] = &unk_18900;
      objc_copyWeak(&v24, (a1 + 48));
      v23 = v7;
      v10 = (*(v9 + 16))(v9, v8, v22);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = *(*(*(a1 + 40) + 8) + 40);
      if (v13)
      {
        v25[0] = NSLocalizedDescriptionKey;
        v25[1] = NSLocalizedFailureReasonErrorKey;
        v26[0] = @"Invalid property";
        v26[1] = @"Invalid value expression.";
        v25[2] = NSUnderlyingErrorKey;
        v26[2] = v13;
        v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
        v15 = [NSError errorWithDomain:GCGenericDeviceErrorDomain code:2 userInfo:v14];
        v16 = *(*(a1 + 40) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        *a3 = 1;
      }

      objc_destroyWeak(&v24);
    }
  }

  else
  {
    v29[0] = NSLocalizedDescriptionKey;
    v29[1] = NSLocalizedFailureReasonErrorKey;
    v30[0] = @"Invalid property";
    v30[1] = @"Property has no name.";
    v18 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    v19 = [NSError errorWithDomain:GCGenericDeviceErrorDomain code:2 userInfo:v18];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    *a3 = 1;
  }
}

void sub_86F4(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v5 = WeakRetained[88];
    objc_sync_enter(v5);
    v6 = [NSNumber numberWithDouble:a2];
    [v7[88] setObject:v6 forKeyedSubscript:*(a1 + 32)];

    objc_sync_exit(v5);
    WeakRetained = v7;
  }
}

id sub_87C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 elementIdentifier];
  v8 = [*(*(a1 + 32) + 720) objectForKeyedSubscript:v7];
  if (v8)
  {
    if ([v5 scaleType] + 3 <= 5)
    {
      v9 = [v5 scaleType];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_8A98;
      v18[3] = &unk_18950;
      v10 = v6;
      v19 = v10;
      v11 = [v8 registerScaled:v9 valueChangedHandler:v18];
      [*(*(a1 + 32) + 728) addObject:v11];

      [v8 scaledValue:{objc_msgSend(v5, "scaleType")}];
      v10[2](v10);
      v12 = 0;
      goto LABEL_6;
    }

    v17 = GCGenericDeviceErrorDomain;
    v20[0] = NSLocalizedDescriptionKey;
    v20[1] = NSLocalizedFailureReasonErrorKey;
    v21[0] = @"Invalid 'Input Element Value' expression.";
    v21[1] = @"Unsupported valueType.";
    v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    v12 = [NSError errorWithDomain:v17 code:2 userInfo:v14];
  }

  else
  {
    v13 = GCGenericDeviceErrorDomain;
    v23[0] = @"Invalid 'Input Element Value' expression.";
    v22[0] = NSLocalizedDescriptionKey;
    v22[1] = NSLocalizedFailureReasonErrorKey;
    v14 = [NSString stringWithFormat:@"Not tracking any element with identifier %@", v7];
    v23[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v12 = [NSError errorWithDomain:v13 code:2 userInfo:v15];
  }

LABEL_6:

  return v12;
}

id sub_8AA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 elementIdentifier];
  v8 = [v6 attribute];

  v9 = [*(*(a1 + 32) + 720) objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 element];
    v12 = [v11 valueForElementKey:v8];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 doubleValue];
        v5[2](v5);
        v13 = 0;
        goto LABEL_10;
      }

      v16 = GCGenericDeviceErrorDomain;
      v21[0] = NSLocalizedDescriptionKey;
      v21[1] = NSLocalizedFailureReasonErrorKey;
      v22[0] = @"Invalid 'Input Element Attribute' expression.";
      v15 = [NSString stringWithFormat:@"Element with identifier '%@' has an '%@' attribute, but it's not a number.", v7, v8];
      v22[1] = v15;
      v17 = v22;
      v18 = v21;
    }

    else
    {
      v16 = GCGenericDeviceErrorDomain;
      v23[0] = NSLocalizedDescriptionKey;
      v23[1] = NSLocalizedFailureReasonErrorKey;
      v24[0] = @"Invalid 'Input Element Attribute' expression.";
      v15 = [NSString stringWithFormat:@"Element with identifier '%@' does not have a '%@' attribute.", v7, v8];
      v24[1] = v15;
      v17 = v24;
      v18 = v23;
    }

    v19 = [NSDictionary dictionaryWithObjects:v17 forKeys:v18 count:2];
    v13 = [NSError errorWithDomain:v16 code:2 userInfo:v19];
  }

  else
  {
    v14 = GCGenericDeviceErrorDomain;
    v25[0] = NSLocalizedDescriptionKey;
    v25[1] = NSLocalizedFailureReasonErrorKey;
    v26[0] = @"Invalid 'Input Element Attribute' expression.";
    v12 = [NSString stringWithFormat:@"Not tracking any element with identifier %@", v7];
    v26[1] = v12;
    v15 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    v13 = [NSError errorWithDomain:v14 code:2 userInfo:v15];
  }

LABEL_10:

  return v13;
}

NSError *__cdecl sub_8DB8(id a1, GCGenericDeviceDataConstantExpressionModel *a2, id a3)
{
  v5 = a3;
  [(GCGenericDeviceDataConstantExpressionModel *)a2 value];
  (*(a3 + 2))(v5);

  return 0;
}

id sub_8E08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v53[3] = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v52[3] = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v51[3] = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = 0;
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v8 = [v5 inputExpression];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_9214;
  v44[3] = &unk_189E8;
  v46 = v53;
  v47 = v52;
  v9 = v6;
  v45 = v9;
  v48 = v51;
  v49 = v50;
  v10 = (*(v7 + 16))(v7, v8, v44);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = *(*(*(a1 + 32) + 8) + 40);
    v14 = [v5 maskExpression];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_9274;
    v38[3] = &unk_189E8;
    v40 = v52;
    v41 = v53;
    v15 = v9;
    v39 = v15;
    v42 = v51;
    v43 = v50;
    v16 = (*(v13 + 16))(v13, v14, v38);
    v17 = v16;
    if (v16)
    {
      v12 = v16;
    }

    else
    {
      v18 = *(*(*(a1 + 32) + 8) + 40);
      v25 = [v5 trueExpression];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_92D4;
      v32[3] = &unk_18A10;
      v34 = v51;
      v35 = v53;
      v36 = v52;
      v19 = v15;
      v33 = v19;
      v37 = v50;
      v20 = (*(v18 + 16))(v18, v25, v32);
      v21 = v20;
      if (v20)
      {
        v12 = v20;
      }

      else
      {
        v22 = *(*(*(a1 + 32) + 8) + 40);
        v23 = [v5 falseExpression];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_9334;
        v26[3] = &unk_18A10;
        v28 = v50;
        v29 = v53;
        v30 = v52;
        v27 = v19;
        v31 = v51;
        v12 = (*(v22 + 16))(v22, v23, v26);
      }
    }
  }

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v53, 8);

  return v12;
}

void sub_91D8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_9214(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = 7;
  if ((rint(*(*(a1[6] + 8) + 24)) & rint(*(*(a1[5] + 8) + 24))) == 0)
  {
    v2 = 8;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v2] + 8) + 24));
}

uint64_t sub_9274(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = 7;
  if ((rint(*(*(a1[5] + 8) + 24)) & rint(*(*(a1[6] + 8) + 24))) == 0)
  {
    v2 = 8;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v2] + 8) + 24));
}

uint64_t sub_92D4(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = 5;
  if ((rint(*(*(a1[7] + 8) + 24)) & rint(*(*(a1[6] + 8) + 24))) == 0)
  {
    v2 = 8;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v2] + 8) + 24));
}

uint64_t sub_9334(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = 8;
  if ((rint(*(*(a1[7] + 8) + 24)) & rint(*(*(a1[6] + 8) + 24))) == 0)
  {
    v2 = 5;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v2] + 8) + 24));
}

id sub_9394(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v8 = [v5 leftExpression];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_95C0;
  v20[3] = &unk_18A60;
  v22 = v25;
  v9 = v6;
  v21 = v9;
  v23 = v24;
  v10 = (*(v7 + 16))(v7, v8, v20);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = *(*(*(a1 + 32) + 8) + 40);
    v14 = [v5 rightExpression];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_95F8;
    v16[3] = &unk_18A60;
    v18 = v24;
    v17 = v9;
    v19 = v25;
    v12 = (*(v13 + 16))(v13, v14, v16);
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);

  return v12;
}

void sub_959C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

id sub_9630(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v8 = [v5 leftExpression];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_985C;
  v20[3] = &unk_18A60;
  v22 = v25;
  v9 = v6;
  v21 = v9;
  v23 = v24;
  v10 = (*(v7 + 16))(v7, v8, v20);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = *(*(*(a1 + 32) + 8) + 40);
    v14 = [v5 rightExpression];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_9894;
    v16[3] = &unk_18A60;
    v18 = v24;
    v17 = v9;
    v19 = v25;
    v12 = (*(v13 + 16))(v13, v14, v16);
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);

  return v12;
}

void sub_9838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

id sub_98CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v7 = [v5 minExpression];
  v8 = [v5 maxExpression];
  v9 = *(*(*(a1 + 32) + 8) + 40);
  v10 = [v5 inputExpression];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_9C38;
  v31[3] = &unk_18AD8;
  v36 = v8 != 0;
  v33 = v40;
  v34 = v38;
  v37 = v7 != 0;
  v35 = v39;
  v11 = v6;
  v32 = v11;
  v12 = (*(v9 + 16))(v9, v10, v31);
  v14 = v12;
  if (v12)
  {
    v15 = v12;
    goto LABEL_10;
  }

  if (v7)
  {
    v16 = *(*(*(a1 + 32) + 8) + 40);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_9CA0;
    v27[3] = &unk_18AD8;
    v28[1] = v39;
    v28[2] = v40;
    v29 = v8 != 0;
    v28[3] = v38;
    v30 = v7 != 0;
    v28[0] = v11;
    v15 = (*(v16 + 16))(v16, v7, v27);
    v13 = v28;
    if (v15 || !v8)
    {
LABEL_9:

      goto LABEL_10;
    }

LABEL_8:
    v19 = v13;
    v17 = *(*(*(a1 + 32) + 8) + 40);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_9D08;
    v20[3] = &unk_18AD8;
    v22 = v38;
    v23 = v40;
    v25 = v8 != 0;
    v26 = v7 != 0;
    v24 = v39;
    v21 = v11;
    v15 = (*(v17 + 16))(v17, v8, v20);

    v13 = v19;
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v8)
  {
    goto LABEL_8;
  }

  v15 = 0;
LABEL_10:

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);

  return v15;
}

void sub_9C00(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_9C38(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 48) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 56) + 8);
    if (*(v3 + 24) >= a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t sub_9CA0(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 56) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 40) + 8);
    if (*(v3 + 24) >= a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t sub_9D08(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 40) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 56) + 8);
    if (*(v3 + 24) >= a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

id sub_9D70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v77[3] = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x2020000000;
  v76[3] = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v75[3] = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x2020000000;
  v74[3] = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v73[3] = 0;
  v7 = [v5 inputMinExpression];
  v8 = [v5 inputMaxExpression];
  v37 = [v5 outputMinExpression];
  v36 = [v5 outputMaxExpression];
  v9 = *(*(*(a1 + 32) + 8) + 40);
  v10 = [v5 inputExpression];
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_A2A0;
  v66[3] = &unk_18B28;
  v68 = v77;
  v69 = v76;
  v70 = v75;
  v71 = v74;
  v72 = v73;
  v11 = v6;
  v67 = v11;
  v12 = (*(v9 + 16))(v9, v10, v66);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = *(*(*(a1 + 32) + 8) + 40);
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_A308;
    v59[3] = &unk_18B28;
    v61 = v76;
    v62 = v77;
    v63 = v75;
    v64 = v74;
    v65 = v73;
    v16 = v11;
    v60 = v16;
    v17 = (*(v15 + 16))(v15, v7, v59);
    v18 = v17;
    if (v17)
    {
      v14 = v17;
    }

    else
    {
      v35 = v8;
      v19 = *(*(*(a1 + 32) + 8) + 40);
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_A370;
      v52[3] = &unk_18B28;
      v54 = v75;
      v55 = v77;
      v56 = v76;
      v57 = v74;
      v58 = v73;
      v20 = v16;
      v53 = v20;
      v21 = *(v19 + 16);
      v22 = v19;
      v8 = v35;
      v23 = v21(v22, v35, v52);
      if (v23)
      {
        v24 = v23;
        v14 = v23;
      }

      else
      {
        v25 = *(*(*(a1 + 32) + 8) + 40);
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_A3D8;
        v45[3] = &unk_18B28;
        v47 = v74;
        v48 = v77;
        v49 = v76;
        v50 = v75;
        v51 = v73;
        v26 = v20;
        v46 = v26;
        v27 = *(v25 + 16);
        v28 = v25;
        v8 = v35;
        v29 = v27(v28, v37, v45);
        if (v29)
        {
          v30 = v29;
          v14 = v29;
        }

        else
        {
          v31 = *(*(*(a1 + 32) + 8) + 40);
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_A43C;
          v38[3] = &unk_18B28;
          v40 = v73;
          v41 = v77;
          v42 = v76;
          v43 = v75;
          v44 = v74;
          v39 = v26;
          v32 = *(v31 + 16);
          v33 = v31;
          v8 = v35;
          v14 = v32(v33, v36, v38);
          v30 = 0;
        }

        v24 = 0;
      }
    }
  }

  _Block_object_dispose(v73, 8);
  _Block_object_dispose(v74, 8);
  _Block_object_dispose(v75, 8);
  _Block_object_dispose(v76, 8);
  _Block_object_dispose(v77, 8);

  return v14;
}

void sub_A24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose((v64 - 232), 8);
  _Block_object_dispose((v64 - 200), 8);
  _Block_object_dispose((v64 - 168), 8);
  _Block_object_dispose((v64 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A2A0(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[6] + 8) + 24);
  v3 = (*(*(a1[5] + 8) + 24) - v2) / (*(*(a1[7] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t sub_A308(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[5] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[7] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t sub_A370(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[5] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t sub_A3D8(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[8] + 8) + 24) - v2);
  v4 = *(*(a1[5] + 8) + 24);
  return (*(a1[4] + 16))(v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t sub_A43C(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[8] + 8) + 24) - v2);
  v4 = *(*(a1[9] + 8) + 24);
  return (*(a1[4] + 16))(v4 + fabs(v3) * (*(*(a1[5] + 8) + 24) - v4));
}

id sub_A4A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x2020000000;
  v89[3] = 0;
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x2020000000;
  v88[3] = 0;
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x2020000000;
  v87[3] = 0;
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x2020000000;
  v86[3] = 0;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x2020000000;
  v85[3] = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x2020000000;
  v84[3] = 0;
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v35 = [v5 inputExpression];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_AAEC;
  v76[3] = &unk_18B78;
  v78 = v89;
  v8 = v6;
  v77 = v8;
  v79 = v87;
  v80 = v88;
  v81 = v86;
  v82 = v85;
  v83 = v84;
  v9 = (*(v7 + 16))(v7, v35, v76);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = *(*(*(a1 + 32) + 8) + 40);
    v13 = [v5 inputMinExpression];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_ABB4;
    v68[3] = &unk_18B78;
    v70 = v88;
    v14 = v8;
    v69 = v14;
    v71 = v89;
    v72 = v87;
    v73 = v86;
    v74 = v85;
    v75 = v84;
    v15 = (*(v12 + 16))(v12, v13, v68);
    v16 = v15;
    if (v15)
    {
      v11 = v15;
    }

    else
    {
      v17 = *(*(*(a1 + 32) + 8) + 40);
      v18 = [v5 inputMaxExpression];
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_AC78;
      v60[3] = &unk_18B78;
      v62 = v87;
      v19 = v14;
      v61 = v19;
      v63 = v89;
      v64 = v88;
      v65 = v86;
      v66 = v85;
      v67 = v84;
      v20 = (*(v17 + 16))(v17, v18, v60);
      v21 = v20;
      if (v20)
      {
        v11 = v20;
      }

      else
      {
        v22 = *(*(*(a1 + 32) + 8) + 40);
        v34 = [v5 maskExpression];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_AD3C;
        v52[3] = &unk_18B78;
        v54 = v86;
        v23 = v19;
        v53 = v23;
        v55 = v89;
        v56 = v87;
        v57 = v88;
        v58 = v85;
        v59 = v84;
        v24 = (*(v22 + 16))(v22, v34, v52);
        v25 = v24;
        if (v24)
        {
          v11 = v24;
        }

        else
        {
          v26 = *(*(*(a1 + 32) + 8) + 40);
          v33 = [v5 trueExpression];
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_AE04;
          v44[3] = &unk_18B78;
          v46 = v85;
          v27 = v23;
          v45 = v27;
          v47 = v89;
          v48 = v87;
          v49 = v88;
          v50 = v86;
          v51 = v84;
          v28 = (*(v26 + 16))(v26, v33, v44);
          v29 = v28;
          if (v28)
          {
            v11 = v28;
          }

          else
          {
            v30 = *(*(*(a1 + 32) + 8) + 40);
            v32 = [v5 falseExpression];
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_AECC;
            v36[3] = &unk_18B78;
            v38 = v84;
            v37 = v27;
            v39 = v89;
            v40 = v87;
            v41 = v88;
            v42 = v86;
            v43 = v85;
            v11 = (*(v30 + 16))(v30, v32, v36);
          }

          v25 = 0;
        }
      }
    }
  }

  _Block_object_dispose(v84, 8);
  _Block_object_dispose(v85, 8);
  _Block_object_dispose(v86, 8);
  _Block_object_dispose(v87, 8);
  _Block_object_dispose(v88, 8);
  _Block_object_dispose(v89, 8);

  return v11;
}

void sub_AA98(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_AAEC(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v3 = a1[4];
  v4 = *(*(a1[7] + 8) + 24);
  v5 = *(*(a1[6] + 8) + 24) - v4 + 1.0;
  v6 = *(*(a1[5] + 8) + 24) - v4;
  if (v5 == 4.0)
  {
    v6 = v6 + v6;
  }

  else if (v5 != 8.0)
  {
    v6 = -1.0;
  }

  v7 = rint(v6);
  if (v7 > 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_16538[v7];
  }

  v9 = (rint(*(*(a1[8] + 8) + 24)) & v8) == 0;
  v10 = 9;
  if (v9)
  {
    v10 = 10;
  }

  return (*(v3 + 16))(*(*(a1[v10] + 8) + 24));
}

uint64_t sub_ABB4(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_16538[v5];
  }

  v7 = (rint(*(*(a1[8] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t sub_AC78(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = *(*(a1[5] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_16538[v5];
  }

  v7 = (rint(*(*(a1[8] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t sub_AD3C(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_16538[v5];
  }

  v7 = (rint(*(*(a1[5] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t sub_AE04(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_16538[v5];
  }

  v7 = (rint(*(*(a1[9] + 8) + 24)) & v6) == 0;
  v8 = 5;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t sub_AECC(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_16538[v5];
  }

  v7 = (rint(*(*(a1[9] + 8) + 24)) & v6) == 0;
  v8 = 10;
  if (v7)
  {
    v8 = 5;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

id sub_AF94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 elementIdentifier];
  v8 = [*(*(a1 + 32) + 720) objectForKeyedSubscript:v7];
  v9 = v8 != 0;

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v10 = *(*(*(a1 + 40) + 8) + 40);
  v11 = [v5 trueExpression];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_B204;
  v24[3] = &unk_18888;
  v26 = v30;
  v12 = v6;
  v28 = v9;
  v25 = v12;
  v27 = v29;
  v13 = (*(v10 + 16))(v10, v11, v24);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = *(*(*(a1 + 40) + 8) + 40);
    v17 = [v5 falseExpression];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_B244;
    v19[3] = &unk_18888;
    v21 = v29;
    v23 = v9;
    v20 = v12;
    v22 = v30;
    v15 = (*(v16 + 16))(v16, v17, v19);
  }

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);

  return v15;
}

void sub_B1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_B204(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = 48;
  if (*(a1 + 56))
  {
    v2 = 40;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v2) + 8) + 24));
}

uint64_t sub_B244(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = 40;
  if (*(a1 + 56))
  {
    v2 = 48;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v2) + 8) + 24));
}

id sub_B284(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v23 = a1[4];
  }

  else
  {
    v8 = objc_opt_class();
    if (v8 == objc_opt_class())
    {
      v23 = a1[5];
    }

    else
    {
      v9 = objc_opt_class();
      if (v9 == objc_opt_class())
      {
        v23 = a1[6];
      }

      else
      {
        v10 = objc_opt_class();
        if (v10 == objc_opt_class())
        {
          v23 = a1[7];
        }

        else
        {
          v11 = objc_opt_class();
          if (v11 == objc_opt_class())
          {
            v23 = a1[8];
          }

          else
          {
            v12 = objc_opt_class();
            if (v12 == objc_opt_class())
            {
              v23 = a1[9];
            }

            else
            {
              v13 = objc_opt_class();
              if (v13 == objc_opt_class())
              {
                v23 = a1[10];
              }

              else
              {
                v14 = objc_opt_class();
                if (v14 == objc_opt_class())
                {
                  v23 = a1[11];
                }

                else
                {
                  v15 = objc_opt_class();
                  if (v15 == objc_opt_class())
                  {
                    v23 = a1[12];
                  }

                  else
                  {
                    v16 = objc_opt_class();
                    if (v16 != objc_opt_class())
                    {
                      v17 = GCGenericDeviceErrorDomain;
                      v18 = objc_opt_class();
                      v19 = NSStringFromClass(v18);
                      v20 = [NSString stringWithFormat:@"Unsupported expression class: %@.", v19, NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, @"Invalid expression."];
                      v26[1] = v20;
                      v21 = [NSDictionary dictionaryWithObjects:v26 forKeys:&v25 count:2];
                      v22 = [NSError errorWithDomain:v17 code:2 userInfo:v21];

                      goto LABEL_23;
                    }

                    v23 = a1[13];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v22 = (*(v23 + 16))(v23, v5, v6);
LABEL_23:

  return v22;
}

void sub_B58C(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = sub_1148();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_EC38();
  }

  v7 = [v5 extendedIndex];
  if (v7 < 0x2F)
  {
    v14 = [v5 sourceExpression];
    if (v14)
    {
      v25 = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27 = sub_B858;
      v28 = &unk_18BF0;
      v15 = a1[5];
      v29 = a1[4];
      v30 = v7;
      v16 = (*(v15 + 16))();
      v17 = *(a1[6] + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v19 = *(*(a1[6] + 8) + 40);
      if (v19)
      {
        v31[0] = NSLocalizedDescriptionKey;
        v31[1] = NSLocalizedFailureReasonErrorKey;
        v32[0] = @"Invalid field";
        v32[1] = @"Invalid source expression.";
        v20 = GCGenericDeviceErrorDomain;
        v31[2] = NSUnderlyingErrorKey;
        v32[2] = v19;
        v21 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
        v22 = [NSError errorWithDomain:v20 code:2 userInfo:v21];
        v23 = *(a1[6] + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;

        *a3 = 1;
      }
    }
  }

  else
  {
    v8 = GCGenericDeviceErrorDomain;
    v34[0] = @"Invalid field";
    v33[0] = NSLocalizedDescriptionKey;
    v33[1] = NSLocalizedFailureReasonErrorKey;
    v9 = [NSString stringWithFormat:@"Invalid extendedIndex '%zi'.", v7];
    v34[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
    v11 = [NSError errorWithDomain:v8 code:2 userInfo:v10];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a3 = 1;
  }
}

float sub_B858(uint64_t a1, double a2)
{
  result = a2;
  *(*(a1 + 32) + 960 + 4 * *(a1 + 40) + 8) = result;
  return result;
}

GCHapticMotor *__cdecl sub_B908(id a1, GCGenericDeviceRumbleActuatorModel *a2, unint64_t a3)
{
  v4 = a2;
  v5 = [GCHapticMotor alloc];
  v6 = [(GCGenericDeviceRumbleActuatorModel *)v4 name];

  v7 = [(GCHapticMotor *)v5 initWithIndex:a3 name:v6];

  return v7;
}

unint64_t sub_B98C(uint64_t a1)
{
  v2 = rint((*(*(a1 + 48) + 16))());
  v3 = rint((*(*(a1 + 56) + 16))());
  v4 = rint((*(*(a1 + 64) + 16))());
  v5 = sub_1148();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = 138413058;
    v19 = v17;
    v20 = 2048;
    v21 = v2;
    v22 = 2048;
    v23 = v3;
    v24 = 2048;
    v25 = v4;
    _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%@ value: %lu, offset: %lu, size: %lu", &v18, 0x2Au);
  }

  v6 = [*(a1 + 40) bytes];
  result = [*(a1 + 40) length];
  if (v4 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = v4;
  }

  if (v3 >= 8 * result - v8)
  {
    v9 = 8 * result - v8;
  }

  else
  {
    v9 = v3;
  }

  if (v4)
  {
    v10 = 0;
    v11 = 0;
    v12 = v9 >> 3;
    v13 = v8 >> 3;
    v14 = v9 & 7;
    v15 = ~(-1 << v8);
    if (v4 >= 0x40)
    {
      v15 = -1;
    }

    v16 = (v15 & v2) << v14;
    do
    {
      if (v12 >= result)
      {
        break;
      }

      v6[v12++] |= v16 >> v10;
      ++v11;
      v10 += 8;
    }

    while (v13 >= v11);
  }

  return result;
}

void sub_BB40(uint64_t a1)
{
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v1 = [*(a1 + 32) objectEnumerator];
  v2 = [v1 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v40;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v40 != v4)
        {
          objc_enumerationMutation(v1);
        }

        bzero([*(*(&v39 + 1) + 8 * i) mutableBytes], objc_msgSend(*(*(&v39 + 1) + 8 * i), "length"));
      }

      v3 = [v1 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v3);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (j = 0; j != v8; j = j + 1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v35 + 1) + 8 * j) + 16))();
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v50 count:16];
    }

    while (v8);
  }

  v11 = mach_absolute_time();
  Mutable = CFDictionaryCreateMutable(0, [*(a1 + 32) count], &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = *(a1 + 32);
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v49 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v32;
    *&v15 = 138412802;
    v29 = v15;
    do
    {
      for (k = 0; k != v16; k = k + 1)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v31 + 1) + 8 * k);
        v20 = [*(a1 + 32) objectForKey:{v19, v29}];
        v21 = sub_1148();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v23 = [v20 length];
          v24 = [v20 bytes];
          *buf = v29;
          v44 = v19;
          v45 = 1040;
          v46 = v23;
          v47 = 2098;
          v48 = v24;
          _os_log_debug_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%@ -> %{public}.*P", buf, 0x1Cu);
        }

        v22 = IOHIDValueCreateWithBytes(0, v19, v11, [v20 bytes], objc_msgSend(v20, "length"));
        CFDictionarySetValue(Mutable, v19, v22);
        CFRelease(v22);
      }

      v16 = [v13 countByEnumeratingWithState:&v31 objects:v49 count:16];
    }

    while (v16);
  }

  v25 = *(a1 + 56);
  kdebug_trace();
  v26 = IOHIDDeviceSetValueMultiple(*(a1 + 48), Mutable);
  if (v26)
  {
    v27 = sub_1148();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_ECA4(v26, v27);
    }
  }

  v28 = *(a1 + 56);
  kdebug_trace();
  CFRelease(Mutable);
}

uint64_t sub_C364(uint64_t result, float a2)
{
  *(v2 - 128) = a2;
  *(v2 - 124) = result;
  return result;
}

id sub_C374()
{
  v4 = *(v1 + *(v0 + 1288));

  return [v4 addObject:v2];
}

void sub_C3D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

BOOL sub_C3EC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
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
        v6 = &stru_191D8;
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
  if (qword_1F020 != -1)
  {
    sub_ED1C();
  }

  return byte_1F028;
}

void sub_C554(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  byte_1F028 = [v1 BOOLForKey:@"GCPartnersEnable"];
  v2 = sub_1148();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = byte_1F028;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v3, 8u);
  }
}

void sub_CE48(uint64_t a1, void *a2, int a3)
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

uint64_t sub_CEF8(uint64_t result)
{
  if (result)
  {
    return *(result + 656);
  }

  return result;
}

void sub_CFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1148();
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

void sub_D090(uint64_t a1, void *a2)
{
  sub_5128(a1, a2);
  [v3 type];
  sub_5100();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_50E0();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_376C;
  *(v2 + 24) = &unk_18748;
  *(v2 + 32) = v5;
  sub_5150(v3);
}

void sub_D140(uint64_t a1, void *a2)
{
  sub_5128(a1, a2);
  [v3 type];
  sub_5100();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_50E0();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_37EC;
  *(v2 + 24) = &unk_18748;
  *(v2 + 32) = v5;
  sub_5150(v3);
}

uint64_t sub_D1F0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 656);
  }

  return kdebug_trace();
}

uint64_t sub_D2B4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = v4;
  if (!a1)
  {
LABEL_94:
    v28 = 0;
    goto LABEL_95;
  }

  v6 = [v4 accelerometerXExpression];
  v7 = &selRef_setLeftThumbstickDeadzoneRadius_;
  v8 = &NSStringFromClass_ptr;
  if (v6)
  {
    v9 = v6;
    v10 = [v5 accelerometerYExpression];
    if (v10)
    {
      v11 = v10;
      v12 = [v5 accelerometerZExpression];

      if (v12)
      {
        *(a1 + 784) = 1;
        v13 = sub_1148();
        if (sub_C3EC(v13))
        {
          v123 = 0;
          sub_C354();
          _os_log_debug_impl(v64, v65, v66, v67, v68, 2u);
        }

        v14 = sub_1148();
        if (sub_C3EC(v14))
        {
          v69 = [v5 accelerometerXExpression];
          sub_C364(v69, 5.7779e-34);
          sub_C354();
          _os_log_debug_impl(v70, v71, v72, v73, v74, 0xCu);
        }

        v15 = [v5 accelerometerXExpression];

        if (v15)
        {
          [sub_C3BC() null];
          objc_claimAutoreleasedReturnValue();
          v16 = [sub_C3C8() accelerometerXExpression];
          v15 = [sub_C3B0() buildReactiveExpression:? consumer:? error:?];
          v17 = 0;

          if (v15)
          {
            sub_C374();
          }

          else
          {
            v121[0] = NSLocalizedDescriptionKey;
            v121[1] = NSLocalizedFailureReasonErrorKey;
            v122[0] = @"Invalid accelerometerXExpression field";
            v122[1] = @"Invalid source expression.";
            v121[2] = NSUnderlyingErrorKey;
            v29 = v17;
            if (!v17)
            {
              v29 = +[NSNull null];
            }

            v122[2] = v29;
            [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:3];
            objc_claimAutoreleasedReturnValue();
            v12 = [sub_C33C() errorWithDomain:? code:? userInfo:?];

            if (!v17)
            {
            }

            if (a3)
            {
              v30 = v12;
              *a3 = v12;
            }

            v17 = v12;
            v8 = &NSStringFromClass_ptr;
          }

          v7 = &selRef_setLeftThumbstickDeadzoneRadius_;

          if (!v15)
          {
            goto LABEL_94;
          }
        }

        v31 = sub_1148();
        if (sub_C3EC(v31))
        {
          v86 = [v5 accelerometerYExpression];
          sub_C364(v86, 5.7779e-34);
          sub_C354();
          _os_log_debug_impl(v87, v88, v89, v90, v91, 0xCu);
        }

        v32 = [v5 accelerometerYExpression];

        if (v32)
        {
          [sub_C3BC() null];
          objc_claimAutoreleasedReturnValue();
          v33 = [sub_C3C8() accelerometerYExpression];
          v32 = [sub_C3B0() buildReactiveExpression:? consumer:? error:?];
          v34 = 0;

          if (v32)
          {
            sub_C374();
          }

          else
          {
            v119[0] = NSLocalizedDescriptionKey;
            v119[1] = NSLocalizedFailureReasonErrorKey;
            v120[0] = @"Invalid accelerometerYExpression field";
            v120[1] = @"Invalid source expression.";
            v119[2] = NSUnderlyingErrorKey;
            v41 = v34;
            if (!v34)
            {
              v41 = +[NSNull null];
            }

            v120[2] = v41;
            [sub_C404() dictionaryWithObjects:v120 forKeys:v119 count:3];
            objc_claimAutoreleasedReturnValue();
            v12 = [sub_C33C() errorWithDomain:? code:? userInfo:?];

            if (!v34)
            {
            }

            if (a3)
            {
              v42 = v12;
              *a3 = v12;
            }

            sub_C394();
          }

          v7 = &selRef_setLeftThumbstickDeadzoneRadius_;

          if (!v32)
          {
            goto LABEL_94;
          }
        }

        v43 = sub_1148();
        if (sub_C3EC(v43))
        {
          v98 = [v5 accelerometerZExpression];
          sub_C364(v98, 5.7779e-34);
          sub_C354();
          _os_log_debug_impl(v99, v100, v101, v102, v103, 0xCu);
        }

        v44 = [v5 accelerometerZExpression];

        if (v44)
        {
          [sub_C3BC() null];
          objc_claimAutoreleasedReturnValue();
          v45 = [sub_C3C8() accelerometerZExpression];
          v46 = [sub_C3B0() buildReactiveExpression:? consumer:? error:?];
          v47 = 0;

          if (v46)
          {
            sub_C374();
          }

          else
          {
            v117[0] = NSLocalizedDescriptionKey;
            v117[1] = NSLocalizedFailureReasonErrorKey;
            v118[0] = @"Invalid accelerometerZExpression field";
            v118[1] = @"Invalid source expression.";
            v117[2] = NSUnderlyingErrorKey;
            v55 = v47;
            if (!v47)
            {
              v55 = +[NSNull null];
            }

            v118[2] = v55;
            [sub_C404() dictionaryWithObjects:v118 forKeys:v117 count:3];
            objc_claimAutoreleasedReturnValue();
            v56 = [sub_C33C() errorWithDomain:? code:? userInfo:?];

            if (!v47)
            {
            }

            if (a3)
            {
              v57 = v56;
              *a3 = v56;
            }

            sub_C394();
          }

          v7 = &selRef_setLeftThumbstickDeadzoneRadius_;

          if (!v46)
          {
            goto LABEL_94;
          }
        }
      }
    }

    else
    {
    }
  }

  v18 = [v5 gyroXExpression];
  if (v18)
  {
    v19 = v18;
    v20 = [v5 gyroYExpression];
    if (v20)
    {
      v21 = v20;
      v22 = [v5 gyroZExpression];

      if (v22)
      {
        *(a1 + *(v7 + 328)) = 1;
        v23 = sub_1148();
        if (sub_C3EC(v23))
        {
          v123 = 0;
          sub_C354();
          _os_log_debug_impl(v75, v76, v77, v78, v79, 2u);
        }

        v24 = sub_1148();
        if (sub_C3EC(v24))
        {
          v80 = [v5 gyroXExpression];
          sub_C364(v80, 5.7779e-34);
          sub_C354();
          _os_log_debug_impl(v81, v82, v83, v84, v85, 0xCu);
        }

        v25 = [v5 gyroXExpression];

        if (v25)
        {
          [sub_C3BC() null];
          objc_claimAutoreleasedReturnValue();
          v26 = [sub_C3C8() gyroXExpression];
          v25 = [sub_C3B0() buildReactiveExpression:? consumer:? error:?];
          v27 = 0;

          if (v25)
          {
            sub_C374();
          }

          else
          {
            v115[0] = NSLocalizedDescriptionKey;
            v115[1] = NSLocalizedFailureReasonErrorKey;
            v116[0] = @"Invalid gyroXExpression field";
            v116[1] = @"Invalid source expression.";
            v115[2] = NSUnderlyingErrorKey;
            v35 = v27;
            if (!v27)
            {
              v35 = +[NSNull null];
            }

            v116[2] = v35;
            [sub_C404() dictionaryWithObjects:v116 forKeys:v115 count:3];
            objc_claimAutoreleasedReturnValue();
            v22 = [sub_C33C() errorWithDomain:? code:? userInfo:?];

            if (!v27)
            {
            }

            if (a3)
            {
              v36 = v22;
              *a3 = v22;
            }

            sub_C394();
          }

          if (!v25)
          {
            goto LABEL_94;
          }
        }

        v37 = sub_1148();
        if (sub_C3EC(v37))
        {
          v92 = [v5 gyroYExpression];
          sub_C364(v92, 5.7779e-34);
          sub_C354();
          _os_log_debug_impl(v93, v94, v95, v96, v97, 0xCu);
        }

        v38 = [v5 gyroYExpression];

        if (v38)
        {
          [sub_C3BC() null];
          objc_claimAutoreleasedReturnValue();
          v39 = [sub_C3C8() gyroYExpression];
          v38 = [sub_C3B0() buildReactiveExpression:? consumer:? error:?];
          v40 = 0;

          if (v38)
          {
            sub_C374();
          }

          else
          {
            v113[0] = NSLocalizedDescriptionKey;
            v113[1] = NSLocalizedFailureReasonErrorKey;
            v114[0] = @"Invalid gyroYExpression field";
            v114[1] = @"Invalid source expression.";
            v113[2] = NSUnderlyingErrorKey;
            v48 = v40;
            if (!v40)
            {
              v48 = +[NSNull null];
            }

            v114[2] = v48;
            [sub_C404() dictionaryWithObjects:v114 forKeys:v113 count:3];
            objc_claimAutoreleasedReturnValue();
            v22 = [sub_C33C() errorWithDomain:? code:? userInfo:?];

            if (!v40)
            {
            }

            if (a3)
            {
              v49 = v22;
              *a3 = v22;
            }

            sub_C394();
          }

          if (!v38)
          {
            goto LABEL_94;
          }
        }

        v50 = sub_1148();
        if (sub_C3EC(v50))
        {
          v104 = [v5 gyroZExpression];
          sub_C364(v104, 5.7779e-34);
          sub_C354();
          _os_log_debug_impl(v105, v106, v107, v108, v109, 0xCu);
        }

        v51 = [v5 gyroZExpression];

        if (v51)
        {
          [sub_C3BC() null];
          objc_claimAutoreleasedReturnValue();
          v52 = [sub_C3C8() gyroZExpression];
          v53 = [sub_C3B0() buildReactiveExpression:? consumer:? error:?];
          v54 = 0;

          if (v53)
          {
            [*(a1 + *(v7 + 322)) addObject:v53];
          }

          else
          {
            v58 = GCGenericDeviceErrorDomain;
            v111[0] = NSLocalizedDescriptionKey;
            v111[1] = NSLocalizedFailureReasonErrorKey;
            v112[0] = @"Invalid gyroZExpression field";
            v112[1] = @"Invalid source expression.";
            v111[2] = NSUnderlyingErrorKey;
            v59 = v54;
            if (!v54)
            {
              v59 = +[NSNull null];
            }

            v112[2] = v59;
            v60 = [v8[152] dictionaryWithObjects:v112 forKeys:v111 count:3];
            v61 = [NSError errorWithDomain:v58 code:2 userInfo:v60];

            if (!v54)
            {
            }

            if (a3)
            {
              v62 = v61;
              *a3 = v61;
            }

            v54 = v61;
          }

          if (!v53)
          {
            goto LABEL_94;
          }
        }
      }
    }

    else
    {
    }
  }

  v28 = 1;
LABEL_95:

  return v28;
}

uint64_t sub_DFBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    [v5 dispatchFrequency];
    [a1 setHapticDispatchFrequency:?];
    v7 = [v6 actuators];
    v8 = [v7 gc_arrayByTransformingElementsUsingBlock:&stru_18C80];
    [a1 setHapticMotors:v8];

    v9 = +[NSMapTable strongToStrongObjectsMapTable];
    v10 = objc_alloc_init(NSMutableArray);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v11 = [v6 outputs];
    v12 = [v11 countByEnumeratingWithState:&v82 objects:v93 count:16];
    if (v12)
    {
      v13 = *v83;
      v62 = v11;
      v64 = v9;
      v57 = *v83;
LABEL_4:
      v14 = 0;
      v58 = v12;
      while (1)
      {
        if (*v83 != v13)
        {
          v15 = v14;
          objc_enumerationMutation(v11);
          v14 = v15;
        }

        v61 = v14;
        v16 = *(*(&v82 + 1) + 8 * v14);
        v17 = sub_1148();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v92 = v16;
          _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "Processing rumble output model %@", buf, 0xCu);
        }

        v18 = [v16 elementIdentifier];
        v19 = [*(a1 + 736) objectForKeyedSubscript:v18];
        if (!v19)
        {
          break;
        }

        v20 = v19;
        Length = _IOHIDElementGetLength();
        if (Length >= 65)
        {
          if (a3)
          {
            v55 = v18;
            v56 = GCGenericDeviceErrorDomain;
            v88[0] = @"Invalid Element.";
            v87[0] = NSLocalizedDescriptionKey;
            v87[1] = NSLocalizedFailureReasonErrorKey;
            v50 = v55;
            v51 = [NSString stringWithFormat:@"Element with identifier %@ has too large length: %zi.", v55, Length];
            v88[1] = v51;
            v52 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2];
            v53 = v56;
            v54 = 0;
LABEL_33:
            *a3 = [NSError errorWithDomain:v53 code:v54 userInfo:v52];

            v11 = v62;
            v18 = v50;
          }

          goto LABEL_34;
        }

        v22 = [[NSMutableData alloc] initWithLength:Length];
        v9 = v64;
        v67 = v22;
        v63 = v20;
        [v64 setObject:? forKey:?];
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        obj = [v16 fields];
        v23 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
        if (v23)
        {
          v24 = v23;
          v66 = *v79;
          v59 = v18;
          v60 = v6;
          while (2)
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v79 != v66)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v78 + 1) + 8 * i);
              v27 = [v26 valueExpression];
              v28 = [a1 buildExpression:v27 error:a3];

              if (!v28)
              {
                goto LABEL_26;
              }

              v29 = [v26 offsetExpression];
              v30 = [a1 buildExpression:v29 error:a3];

              if (!v30)
              {
                goto LABEL_25;
              }

              v31 = a3;
              v32 = v10;
              v33 = [v26 sizeExpression];
              v34 = v31;
              v35 = [a1 buildExpression:v33 error:v31];

              if (!v35)
              {

                v10 = v32;
LABEL_25:

LABEL_26:
                v46 = 0;
                v18 = v59;
                v6 = v60;
                v43 = v64;
                v11 = v62;
                goto LABEL_27;
              }

              v73[0] = _NSConcreteStackBlock;
              v73[1] = 3221225472;
              v73[2] = sub_B98C;
              v73[3] = &unk_18CA8;
              v76 = v30;
              v77 = v35;
              v75 = v28;
              v73[4] = v26;
              v74 = v67;
              v36 = v35;
              v37 = v30;
              v38 = v28;
              v39 = objc_retainBlock(v73);
              v10 = v32;
              [v32 addObject:v39];

              a3 = v34;
            }

            v24 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
            v18 = v59;
            v6 = v60;
            v9 = v64;
            v11 = v62;
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v14 = v61 + 1;
        v13 = v57;
        if ((v61 + 1) == v58)
        {
          v12 = [v11 countByEnumeratingWithState:&v82 objects:v93 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }
      }

      v20 = 0;
      if (a3)
      {
        v48 = v18;
        v49 = GCGenericDeviceErrorDomain;
        v90[0] = @"Invalid Rumble Output.";
        v89[0] = NSLocalizedDescriptionKey;
        v89[1] = NSLocalizedFailureReasonErrorKey;
        v50 = v48;
        v51 = [NSString stringWithFormat:@"Not tracking any output element with identifier %@", v48];
        v90[1] = v51;
        v52 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:2];
        v53 = v49;
        v54 = 2;
        goto LABEL_33;
      }

LABEL_34:

      v46 = 0;
      v43 = v64;
      goto LABEL_27;
    }

LABEL_23:

    v40 = [a1 device];
    v41 = v9;
    v42 = sub_CEF8(a1);
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_BB40;
    v68[3] = &unk_18CD0;
    v69 = v41;
    v71 = v40;
    v72 = v42;
    v43 = v41;
    v70 = v10;
    v11 = v40;
    v44 = objc_retainBlock(v68);
    v45 = *(a1 + 744);
    *(a1 + 744) = v44;

    v46 = 1;
    v18 = v69;
LABEL_27:
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

void sub_E6E4()
{
  sub_C3A4();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Could not get parent of service <%s>: %{mach.errno}d", v2, 0x12u);
}

void sub_E894(void *a1, NSObject *a2)
{
  v3 = [a1 debugDescription];
  sub_C3A4();
  sub_C3D4(&dword_0, a2, v4, "Applying model: %@", v5);
}

void sub_E924(void *a1, void *a2, NSObject *a3)
{
  v5 = 134218240;
  v6 = [a1 count];
  v7 = 2048;
  v8 = [a2 count];
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "Now tracking '%zd' elements; '%zd' input elements:", &v5, 0x16u);
}

void sub_E9D8()
{
  sub_C3A4();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "\t %@ => %{public}@", v2, 0x16u);
}

void sub_EA5C(uint64_t a1, NSObject *a2, uint64_t a3, double a4)
{
  *a1 = 134217984;
  *(a1 + 4) = a4;
  sub_C3D4(&dword_0, a2, a3, "Override leftThumbstickDeadzoneRadius %f", a1);
}

void sub_EA98(uint64_t a1, NSObject *a2, uint64_t a3, double a4)
{
  *a1 = 134217984;
  *(a1 + 4) = a4;
  sub_C3D4(&dword_0, a2, a3, "Override rightThumbstickDeadzoneRadius %f", a1);
}

void sub_EB40(NSErrorUserInfoKey *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = GCGenericDeviceErrorDomain;
  *a1 = NSLocalizedDescriptionKey;
  *a2 = @"Invalid property";
  a1[1] = NSLocalizedFailureReasonErrorKey;
  v8 = [NSString stringWithFormat:@"Property '%@' is not supported.", a3];
  a2[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:a2 forKeys:a1 count:2];
  v10 = [NSError errorWithDomain:v7 code:2 userInfo:v9];
  v11 = *(*(a4 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_ECA4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Set rumble value(s) failed:  %{mach.errno}d", v2, 8u);
}