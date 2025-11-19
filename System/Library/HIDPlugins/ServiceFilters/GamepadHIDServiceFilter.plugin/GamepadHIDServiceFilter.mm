void sub_114C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = GamepadHIDServiceFilter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  os_activity_scope_leave(&a9);

  _Unwind_Resume(a1);
}

void sub_1350(_Unwind_Exception *a1)
{
  os_activity_scope_leave((v2 - 32));

  _Unwind_Resume(a1);
}

void sub_1368(uint64_t a1)
{
  (*(*(*(a1 + 32) + 56) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;
}

NSObject *sub_15C0(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a1 && a2)
  {
    if ((a2[2] & 1) == 0)
    {
      v8 = v5;
LABEL_89:
      v6 = v8;
      v7 = v6;
      goto LABEL_90;
    }

    v9 = mach_absolute_time();
    v10 = sub_1DA0(v9);
    v11 = a2[2];
    v12 = (v11 & 6) != 0;
    if ((v11 & 0x18) != 0)
    {
      v12 = 2;
    }

    if ((v11 & 0x60) != 0)
    {
      v13 = 3;
    }

    else
    {
      v13 = v12;
    }

    if (v6)
    {
      v14 = [v6 integerValueForField:196610];
      v15 = sub_1DA0([v6 timestamp]);
      if (v14 && (*(a2 + 18) & 0xFE) == 2)
      {
        ++*(a2 + 10);
        *(a2 + 18) = 0;
        *(a2 + 8) = 0;
        *(a2 + 4) = 0;
        *(a2 + 5) = 0;
        *(a2 + 3) = 0;
        v16 = sub_34E0();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_3DC0(a2, a2 + 10);
        }
      }

      sub_1DFC(a2 + 2, v14 != 0, v13, v10, v15);
      v18 = v17;
      v19 = sub_34E0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = *a2;
        v21 = *(a2 + 10);
        v22 = *(a2 + 18);
        v23 = *(a2 + 16);
        LODWORD(location) = 67110656;
        HIDWORD(location) = v20;
        v61 = 2048;
        v62 = v21;
        v63 = 2048;
        *v64 = v14;
        *&v64[8] = 1024;
        *&v64[10] = v13;
        *&v64[14] = 1024;
        *&v64[16] = v22;
        v65 = 1024;
        v66 = v23;
        v67 = 2048;
        v68 = v18;
        v24 = "-> [%#x] Press sequence [%zu] handle event (down: %zd, max:%d) -> State:%d Count:%d Next:%f";
        v25 = v19;
        v26 = 56;
LABEL_97:
        _os_log_debug_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, v24, &location, v26);
      }
    }

    else
    {
      v18 = 0.0;
      if (*(a2 + 18) == 1 && *(a2 + 16) && *(a2 + 4) != 0.0)
      {
        v27 = *(a2 + 5);
        if (v10 - v27 >= 0.4)
        {
          *(a2 + 18) = 3;
        }

        else
        {
          v18 = v27 + 0.4;
        }
      }

      v19 = sub_34E0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v51 = *a2;
        v52 = *(a2 + 10);
        v53 = *(a2 + 18);
        v54 = *(a2 + 16);
        LODWORD(location) = 67110144;
        HIDWORD(location) = v51;
        v61 = 2048;
        v62 = v52;
        v63 = 1024;
        *v64 = v53;
        *&v64[4] = 1024;
        *&v64[6] = v54;
        *&v64[10] = 2048;
        *&v64[12] = v18;
        v24 = "-> [%#x] Press sequence [%zu] handle tick -> State:%d Count:%d Next:%f";
        v25 = v19;
        v26 = 40;
        goto LABEL_97;
      }
    }

    v28 = *(a2 + 18);
    v29 = *(a2 + 16);
    v30 = *(a2 + 17);
    v31 = *(a2 + 6);
    if (v31)
    {
      dispatch_source_cancel(v31);
      v32 = *(a2 + 6);
      *(a2 + 6) = 0;
    }

    if (v28 == 1 && v18 > v10)
    {
      objc_initWeak(&location, a1);
      v33 = sub_34E0();
      v34 = v18 - v10;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        sub_40B0(a2);
      }

      v35 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 48));
      v36 = dispatch_time(0, (v34 * 1000000000.0));
      dispatch_source_set_timer(v35, v36, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
      v55 = _NSConcreteStackBlock;
      v56 = 3221225472;
      v57 = sub_1EA4;
      v58 = &unk_82E8;
      objc_copyWeak(v59, &location);
      v59[1] = a2;
      dispatch_source_set_event_handler(v35, &v55);
      dispatch_activate(v35);
      v37 = *(a2 + 6);
      *(a2 + 6) = v35;

      objc_destroyWeak(v59);
      objc_destroyWeak(&location);
    }

    else
    {
      if (v28 != 3)
      {
        goto LABEL_63;
      }

      switch(v29)
      {
        case 1u:
          v42 = a2[2];
          if (v30 == 1)
          {
            if ((v42 & 4) == 0)
            {
              goto LABEL_63;
            }

            v39 = sub_34E0();
            v40 = 2;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              sub_3EA8(a2);
              v40 = 2;
            }
          }

          else
          {
            if ((v42 & 2) == 0)
            {
              goto LABEL_63;
            }

            v39 = sub_34E0();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              sub_3E40(a2);
            }

            v40 = 1;
          }

          break;
        case 2u:
          v41 = a2[2];
          if (v30 == 1)
          {
            if ((v41 & 0x10) == 0)
            {
              goto LABEL_63;
            }

            v39 = sub_34E0();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              sub_3F78(a2);
            }

            v40 = 4;
          }

          else
          {
            if ((v41 & 8) == 0)
            {
              goto LABEL_63;
            }

            v39 = sub_34E0();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              sub_3F10(a2);
            }

            v40 = 3;
          }

          break;
        case 3u:
          v38 = a2[2];
          if (v30 == 1)
          {
            if ((v38 & 0x40) == 0)
            {
              goto LABEL_63;
            }

            v39 = sub_34E0();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              sub_4048(a2);
            }

            v40 = 6;
          }

          else
          {
            if ((v38 & 0x20) == 0)
            {
              goto LABEL_63;
            }

            v39 = sub_34E0();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              sub_3FE0(a2);
            }

            v40 = 5;
          }

          break;
        default:
          goto LABEL_63;
      }

      [*(a1 + 80) handleButton:*a2 gesture:v40];
    }

LABEL_63:
    if (!v6)
    {
      v8 = 0;
      goto LABEL_89;
    }

    v43 = a2[2];
    if ((v43 & 0x80) != 0)
    {
      if (v29 >= BYTE1(v43))
      {
        if ((v43 & 0x1000000) == 0)
        {
          goto LABEL_74;
        }

        v45 = (a2[2] & 6) != 0;
        if ((v43 & 0x18) != 0)
        {
          v45 = 2;
        }

        v46 = (v43 & 0x60) != 0 ? 3 : v45;
        if (v46 <= v29 && (v28 != 1 || v46 != v29 || !v46))
        {
LABEL_74:
          *(a2 + 64) = [v6 integerValueForField:196610, v55, v56, v57, v58]!= 0;
          *(a2 + 9) = [v6 timestamp];
          if (*(a2 + 10))
          {
            v8 = [a1 updateGameControllerEvent:*(a1 + 88)];
          }

          else
          {
            v8 = v6;
          }

          v6 = sub_34E0();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            v48 = *a2;
            v49 = *(a2 + 10);
            v50 = *(a2 + 64);
            LODWORD(location) = 67109890;
            HIDWORD(location) = v48;
            v61 = 2048;
            v62 = v49;
            v63 = 1024;
            *v64 = v50;
            *&v64[4] = 2112;
            *&v64[6] = v8;
            _os_log_debug_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "-> [%#x] Press sequence [%zu] pass event (down: %u)\n%@", &location, 0x22u);
          }

          goto LABEL_88;
        }

        v44 = sub_34E0();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_413C(a2);
        }
      }

      else
      {
        v44 = sub_34E0();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_41A4(a2);
        }
      }
    }

    else
    {
      v44 = sub_34E0();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        sub_420C(a2);
      }
    }

    v8 = 0;
LABEL_88:

    goto LABEL_89;
  }

LABEL_90:

  return v7;
}

double sub_1DA0(uint64_t a1)
{
  if (qword_D298 != -1)
  {
    sub_4274();
  }

  return (dword_D290 * a1 / *algn_D294) / 1000000000.0;
}

double *sub_1DFC(double *result, int a2, unsigned int a3, double a4, double a5)
{
  if (*(result + 2) <= 1u)
  {
    v5 = *result;
    if (v5 == 255)
    {
      goto LABEL_17;
    }

    if (v5 >= a3 && a2 != 0)
    {
      goto LABEL_17;
    }

    v7 = result[1];
    if (a2)
    {
      if (v7 == 0.0)
      {
        if (!*(result + 2))
        {
          *(result + 2) = 1;
        }

        result[1] = a5;
        result[2] = 0.0;
        result[3] = a4;
      }
    }

    else if (v7 != 0.0)
    {
      result[2] = a5;
      result[3] = a4;
      v8 = a5 - v7;
      if (v8 < 0.0)
      {
LABEL_17:
        *(result + 2) = 2;
        return result;
      }

      *(result + 1) = v8 >= 0.5;
      *result = v5 + 1;
    }
  }

  return result;
}

void sub_1EA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_15C0(WeakRetained, *(a1 + 40), 0);
  }
}

char *sub_2538(char *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 type] == 3)
    {
      v5 = [v4 integerValueForField:196608];
      v6 = [v4 integerValueForField:196609];
      if (v5 == &dword_C && v6 == &stru_1F8.size + 3)
      {
        v7 = 96;
      }

      else if (v5 == &dword_C && v6 == &stru_1F8.sectname[12])
      {
        v7 = 184;
      }

      else
      {
        if (v5 != &dword_C || v6 != &stru_1F8.segname[1])
        {
          goto LABEL_13;
        }

        v7 = 272;
      }

      v8 = sub_15C0(a1, &a1[v7], v4);

      v4 = v8;
    }

LABEL_13:
    v4 = v4;
    a1 = v4;
  }

  return a1;
}

id *sub_263C(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 type] == 35)
    {
      v5 = [a1 updateGameControllerEvent:v4];

      objc_storeStrong(a1 + 11, v5);
      v4 = v5;
    }

    v4 = v4;
    a1 = v4;
  }

  return a1;
}

id sub_26DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 40) == 1 && ([v3 type] == 13 || objc_msgSend(v4, "type") == 20))
    {
      v5 = [[HIDEvent alloc] initWithType:1 timestamp:objc_msgSend(v4 senderID:{"timestamp"), *(a1 + 16)}];
      [v5 setIntegerValue:65280 forField:0x10000];
      [v5 setIntegerValue:59 forField:65537];
      [v5 setIntegerValue:1 forField:65538];
      if ([v4 type] == 13)
      {
        [v5 appendEvent:v4];
      }

      if ([v4 type] == 20)
      {
        [v4 doubleValueForField:1310720];
        v7 = v6;
        [v4 doubleValueForField:1310721];
        v9 = v8;
        [v4 doubleValueForField:1310722];
        v11 = v10;
        v12 = [[HIDEvent alloc] initWithType:20 timestamp:objc_msgSend(v4 senderID:{"timestamp"), *(a1 + 16)}];
        IOHIDEventSetEventFlags();
        [v12 setDoubleValue:1310720 forField:v7 * 3.14159265 / 180.0];
        [v12 setDoubleValue:1310721 forField:v9 * 3.14159265 / 180.0];
        [v12 setDoubleValue:1310722 forField:v11 * 3.14159265 / 180.0];
        [v5 appendEvent:v12];
      }

      WeakRetained = objc_loadWeakRetained((a1 + 64));

      if (WeakRetained)
      {
        v14 = objc_loadWeakRetained((a1 + 64));
        [v14 dispatchEvent:v5];
      }
    }

    v15 = v4;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_2E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2E64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_34E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_2F10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_34E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", buf, 2u);
  }

  v4 = dispatch_time(0, 500000000);
  v5 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3024;
  block[3] = &unk_82C0;
  v8 = WeakRetained;
  v6 = WeakRetained;
  dispatch_after(v4, v5, block);
}

void sub_3024(uint64_t a1)
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_30B4;
  activity_block[3] = &unk_82C0;
  v2 = *(a1 + 32);
  _os_activity_initiate(&dword_0, "Resume Connection To Game Controller Daemon", OS_ACTIVITY_FLAG_DETACHED, activity_block);
}

void sub_30B4(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteObjectProxy];
  [v1 driverCheckIn];
}

unsigned int *sub_31F4@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  v4 = *(result + 10);
  return result;
}

void sub_3204(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

uint64_t sub_3220()
{
  if (qword_D2A8 != -1)
  {
    sub_4300();
  }

  return byte_D2A0;
}

id sub_3280()
{
  if (qword_D2B8 != -1)
  {
    sub_4314();
  }

  v1 = qword_D2B0;

  return v1;
}

void sub_32C4(id a1)
{
  qword_D2B0 = os_log_create("com.apple.GameController", "default");

  _objc_release_x1();
}

id sub_3308()
{
  if (qword_D2C8 != -1)
  {
    sub_4328();
  }

  v1 = qword_D2C0;

  return v1;
}

void sub_334C(id a1)
{
  qword_D2C0 = os_log_create("com.apple.GameController", "monitor");

  _objc_release_x1();
}

id sub_3390()
{
  if (qword_D2D8 != -1)
  {
    sub_433C();
  }

  v1 = qword_D2D0;

  return v1;
}

void sub_33D4(id a1)
{
  qword_D2D0 = os_log_create("com.apple.GameController", "analytics");

  _objc_release_x1();
}

id sub_3418()
{
  if (qword_D2E8 != -1)
  {
    sub_4350();
  }

  v1 = qword_D2E0;

  return v1;
}

void sub_345C(id a1)
{
  qword_D2E0 = os_log_create("com.apple.GameController.Daemon", "default");

  _objc_release_x1();
}

uint64_t sub_34A0(char *category)
{
  qword_D2F0 = os_log_create("com.apple.GameController.HID", category);

  return _objc_release_x1();
}

id sub_34E0()
{
  if (qword_D2F8 != -1)
  {
    sub_4364();
  }

  v1 = qword_D2F0;

  return v1;
}

void sub_3524(id a1)
{
  if (!qword_D2F0)
  {
    objc_storeStrong(&qword_D2F0, &_os_log_default);
  }
}

id sub_3548()
{
  if (qword_D308 != -1)
  {
    sub_4378();
  }

  v1 = qword_D300;

  return v1;
}

void sub_358C(id a1)
{
  qword_D300 = os_log_create("com.apple.GameController.Settings", "default");

  _objc_release_x1();
}

id sub_35D0()
{
  if (qword_D318 != -1)
  {
    sub_438C();
  }

  v1 = qword_D310;

  return v1;
}

void sub_3614(id a1)
{
  qword_D310 = os_log_create("com.apple.GameController.Haptics", "default");

  _objc_release_x1();
}

id sub_3658()
{
  if (qword_D328 != -1)
  {
    sub_43A0();
  }

  v1 = qword_D320;

  return v1;
}

void sub_369C(id a1)
{
  qword_D320 = os_log_create("com.apple.runtime-issues", "GameController");

  _objc_release_x1();
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
        v6 = &stru_8538;
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
  if (qword_D330 != -1)
  {
    sub_43B4();
  }

  return byte_D338;
}

void sub_3874(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  byte_D338 = [v1 BOOLForKey:@"GCPartnersEnable"];
  v2 = sub_34E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = byte_D338;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v3, 8u);
  }
}

id sub_3A1C()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_39F4();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_3A08();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_397C();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_3990();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_3954();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_3968();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_39CC();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_39E0();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_36E0();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_36F4();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_3708();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_371C();
  [v0 setInterface:v12 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v13 = sub_39A4();
  [v0 setInterface:v13 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v14 = sub_39B8();
  [v0 setInterface:v14 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v15 = GCGenericDeviceDriverConfigurationServiceClientInterface();
  [v0 setInterface:v15 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v16 = GCGenericDeviceDriverConfigurationServiceServerInterface();
  [v0 setInterface:v16 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

void sub_3D44(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "-> [%#x] Apply configuration.", v3, 8u);
}

void sub_3DC0(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_31DC();
  _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "-> [%#x] Press sequence reset -> [%zu]", v5, 0x12u);
}

void sub_3E40(unsigned int *a1)
{
  sub_31F4(a1, __stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v1, v2, "-> [%#x] Press sequence [%zu] recognized 1x short press!", v3, v4, v5, v6, v7);
}

void sub_3EA8(unsigned int *a1)
{
  sub_31F4(a1, __stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v1, v2, "-> [%#x] Press sequence [%zu] recognized 1x long press!", v3, v4, v5, v6, v7);
}

void sub_3F10(unsigned int *a1)
{
  sub_31F4(a1, __stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v1, v2, "-> [%#x] Press sequence [%zu] recognized 2x short press!", v3, v4, v5, v6, v7);
}

void sub_3F78(unsigned int *a1)
{
  sub_31F4(a1, __stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v1, v2, "-> [%#x] Press sequence [%zu] recognized 2x long press!", v3, v4, v5, v6, v7);
}

void sub_3FE0(unsigned int *a1)
{
  sub_31F4(a1, __stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v1, v2, "-> [%#x] Press sequence [%zu] recognized 3x short press!", v3, v4, v5, v6, v7);
}

void sub_4048(unsigned int *a1)
{
  sub_31F4(a1, __stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v1, v2, "-> [%#x] Press sequence [%zu] recognized 3x long press!", v3, v4, v5, v6, v7);
}

void sub_40B0(unsigned int *a1)
{
  sub_31F4(a1, __stack_chk_guard);
  v5[0] = 67109632;
  v5[1] = v1;
  v6 = 2048;
  v7 = v2;
  v8 = 2048;
  v9 = v3;
  _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "-> [%#x] Press sequence [%zu] wakeup in %f seconds.", v5, 0x1Cu);
}

void sub_413C(unsigned int *a1)
{
  sub_31F4(a1, __stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v1, v2, "-> [%#x] Press sequence [%zu] not passing event: Pending gesture recognizer(s).", v3, v4, v5, v6, v7);
}

void sub_41A4(unsigned int *a1)
{
  sub_31F4(a1, __stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v1, v2, "-> [%#x] Press sequence [%zu] not passing event: Press count threshold not met.", v3, v4, v5, v6, v7);
}

void sub_420C(unsigned int *a1)
{
  sub_31F4(a1, __stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v1, v2, "-> [%#x] Press sequence [%zu] not passing event: Disabled.", v3, v4, v5, v6, v7);
}

void sub_4288(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "connectToGameIntentServiceWithClient %@", &v2, 0xCu);
}