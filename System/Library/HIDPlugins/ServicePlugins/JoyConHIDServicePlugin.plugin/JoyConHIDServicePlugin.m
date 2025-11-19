uint64_t sub_DE8()
{
  if (qword_2AFD8 != -1)
  {
    sub_14130();
  }

  return byte_2AFD0;
}

id sub_E48()
{
  if (qword_2AFE8 != -1)
  {
    sub_14144();
  }

  v1 = qword_2AFE0;

  return v1;
}

void sub_E8C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "default");
  v2 = qword_2AFE0;
  qword_2AFE0 = v1;
}

id sub_ED0()
{
  if (qword_2AFF8 != -1)
  {
    sub_14158();
  }

  v1 = qword_2AFF0;

  return v1;
}

void sub_F14(id a1)
{
  v1 = os_log_create("com.apple.GameController", "monitor");
  v2 = qword_2AFF0;
  qword_2AFF0 = v1;
}

id sub_F58()
{
  if (qword_2B008 != -1)
  {
    sub_1416C();
  }

  v1 = qword_2B000;

  return v1;
}

void sub_F9C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "analytics");
  v2 = qword_2B000;
  qword_2B000 = v1;
}

id sub_FE0()
{
  if (qword_2B018 != -1)
  {
    sub_14180();
  }

  v1 = qword_2B010;

  return v1;
}

void sub_1024(id a1)
{
  v1 = os_log_create("com.apple.GameController.Daemon", "default");
  v2 = qword_2B010;
  qword_2B010 = v1;
}

void sub_1068(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = qword_2B020;
  qword_2B020 = v1;
}

id sub_10A8()
{
  if (qword_2B028 != -1)
  {
    sub_14194();
  }

  v1 = qword_2B020;

  return v1;
}

void sub_10EC(id a1)
{
  if (!qword_2B020)
  {
    objc_storeStrong(&qword_2B020, &_os_log_default);
  }
}

id sub_1110()
{
  if (qword_2B038 != -1)
  {
    sub_141A8();
  }

  v1 = qword_2B030;

  return v1;
}

void sub_1154(id a1)
{
  v1 = os_log_create("com.apple.GameController.Settings", "default");
  v2 = qword_2B030;
  qword_2B030 = v1;
}

id sub_1198()
{
  if (qword_2B048 != -1)
  {
    sub_141BC();
  }

  v1 = qword_2B040;

  return v1;
}

void sub_11DC(id a1)
{
  v1 = os_log_create("com.apple.GameController.Haptics", "default");
  v2 = qword_2B040;
  qword_2B040 = v1;
}

id sub_1220()
{
  if (qword_2B058 != -1)
  {
    sub_141D0();
  }

  v1 = qword_2B050;

  return v1;
}

void sub_1264(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "GameController");
  v2 = qword_2B050;
  qword_2B050 = v1;
}

NSObject *sub_12D0(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
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

void sub_1550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1580(uint64_t a1)
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

void sub_1618(uint64_t a1)
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

void sub_1D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1DAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DC4(uint64_t a1)
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

BOOL sub_21BC(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsagePage"];
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsage"];
    v6 = (![v4 isEqual:&off_25EF8] || (objc_msgSend(v5, "isEqual:", &off_25F10) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_25EF8) || (objc_msgSend(v5, "isEqual:", &off_25F28) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_25EF8) || (objc_msgSend(v5, "isEqual:", &off_25EF8) & 1) == 0);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_276C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2790(uint64_t a1)
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

void sub_2A04(uint64_t a1)
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

void sub_32C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 560);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_336C;
  v7[3] = &unk_24618;
  v7[4] = v2;
  v4 = sub_12D0(0x6FC23AC00uLL, 0x3B9ACA00uLL, v3, v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

void sub_4820(uint64_t a1)
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
        v7[2] = sub_4910;
        v7[3] = &unk_24588;
        objc_copyWeak(&v8, (a1 + 32));
        v5 = sub_12D0(0xF4240uLL, 0x186A0uLL, v4, v7);
        v6 = v3[66];
        v3[66] = v5;

        objc_destroyWeak(&v8);
      }
    }
  }
}

void sub_4910(uint64_t a1)
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
          sub_1460C(v3);
        }

        *(WeakRetained + 121) = 0;
        [WeakRetained dispatchHapticEvent];
      }

      else
      {
        if (v4)
        {
          sub_145C8(v3);
        }

        [WeakRetained stopHaptics];
      }
    }
  }
}

uint64_t sub_4FF0()
{

  return kdebug_trace();
}

id sub_5018(uint64_t a1, void *a2)
{
  v3 = *(a1 + 656);

  return [a2 timestamp];
}

void sub_5040(uint64_t a1)
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
        v6 = &stru_24F80;
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
  if (qword_2B070 != -1)
  {
    sub_14650();
  }

  return byte_2B078;
}

void sub_5D48(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  byte_2B078 = [v1 BOOLForKey:@"GCPartnersEnable"];
  v2 = sub_10A8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = byte_2B078;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v3, 8u);
  }
}

void sub_6458(_Unwind_Exception *a1)
{
  os_activity_scope_leave((v2 - 48));

  _Unwind_Resume(a1);
}

id sub_6470(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  v3 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    return sub_14664(v3);
  }

  v4 = [v3 isBluetoothClassic];
  result = *(a1 + 32);
  if (v4 & 1) != 0 || (v6 = [result isBluetoothLE], result = *(a1 + 32), (v6))
  {
    if (!result)
    {
      return result;
    }

    return sub_14858(result);
  }

  if (*(result + 354) == 5)
  {
    return sub_14858(result);
  }

  *(result + 704) = 1;
  v7 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_146B8;
  v8[3] = &unk_246A8;
  v8[4] = v7;
  return [v7 setupUSBWithCompletion:v8];
}

void sub_66DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_6808(_Unwind_Exception *a1)
{
  os_activity_scope_leave((v2 - 48));

  _Unwind_Resume(a1);
}

void sub_682C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 1048);
    if (v2)
    {
      v3 = *(a1 + 1056);
      v4 = *(a1 + 1056);
      *(a1 + 1056) = 0;
      *(a1 + 1064) = 0;

      *(a1 + 1048) = 0;
      dispatch_source_cancel(v3);
      sub_11A10(v2);
      sub_148A4(v2, v3);
    }

    sub_148FC(a1);
  }
}

id sub_70F8(uint64_t a1)
{
  if (a1 - 1) < 0xC && ((0xF07u >> (a1 - 1)))
  {
    v1 = *(&off_24AC0 + (a1 - 1));
  }

  else
  {
    v2 = [NSNumber numberWithUnsignedChar:a1];
    v1 = [v2 description];
  }

  return v1;
}

id sub_718C(int a1)
{
  v7[0] = @"red";
  v2 = [NSNumber numberWithUnsignedChar:a1];
  v8[0] = v2;
  v7[1] = @"green";
  v3 = [NSNumber numberWithUnsignedChar:BYTE1(a1)];
  v8[1] = v3;
  v7[2] = @"blue";
  v4 = [NSNumber numberWithUnsignedChar:BYTE2(a1)];
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

id sub_72CC(uint64_t a1, unint64_t a2, int a3)
{
  v13[0] = @"x.last";
  v5 = [NSNumber numberWithUnsignedShort:a2];
  v14[0] = v5;
  v13[1] = @"y.last";
  v6 = [NSNumber numberWithUnsignedShort:WORD1(a2)];
  v14[1] = v6;
  v13[2] = @"x.min";
  v7 = [NSNumber numberWithUnsignedShort:WORD2(a2)];
  v14[2] = v7;
  v13[3] = @"x.max";
  v8 = [NSNumber numberWithUnsignedShort:HIWORD(a2)];
  v14[3] = v8;
  v13[4] = @"y.min";
  v9 = [NSNumber numberWithUnsignedShort:a3];
  v14[4] = v9;
  v13[5] = @"y.max";
  v10 = [NSNumber numberWithUnsignedShort:HIWORD(a3)];
  v14[5] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];

  return v11;
}

__CFString *sub_74C0(uint64_t a1)
{
  if (a1 == 63)
  {
    v1 = @"HID";
  }

  else if (a1 == 48)
  {
    v1 = @"STANDARD-FULL";
  }

  else
  {
    v2 = [NSNumber numberWithUnsignedChar:a1];
    v1 = [v2 description];
  }

  return v1;
}

id sub_7B54(unint64_t a1, int a2)
{
  v21[0] = @"center";
  v19[0] = @"x";
  v14 = [NSNumber numberWithUnsignedShort:a1];
  v19[1] = @"y";
  v20[0] = v14;
  v4 = [NSNumber numberWithUnsignedShort:WORD1(a1)];
  v20[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v5;
  v21[1] = @"min";
  v17[0] = @"x";
  v6 = [NSNumber numberWithUnsignedShort:WORD2(a1)];
  v17[1] = @"y";
  v18[0] = v6;
  v7 = [NSNumber numberWithUnsignedShort:HIWORD(a1)];
  v18[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v22[1] = v8;
  v21[2] = @"max";
  v15[0] = @"x";
  v9 = [NSNumber numberWithUnsignedShort:a2];
  v15[1] = @"y";
  v16[0] = v9;
  v10 = [NSNumber numberWithUnsignedShort:HIWORD(a2)];
  v16[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v22[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

  return v12;
}

id sub_7DE4(unsigned __int16 *a1)
{
  v16[0] = @"unknown1";
  v15 = [NSNumber numberWithUnsignedShort:a1[2]];
  v17[0] = v15;
  v16[1] = @"unknown2";
  v14 = [NSNumber numberWithUnsignedShort:a1[3]];
  v17[1] = v14;
  v16[2] = @"inner_dead_zone";
  v13 = [NSNumber numberWithUnsignedShort:a1[4]];
  v17[2] = v13;
  v16[3] = @"unknown4";
  v2 = [NSNumber numberWithUnsignedShort:a1[5]];
  v17[3] = v2;
  v16[4] = @"unknown5";
  v3 = [NSNumber numberWithUnsignedShort:a1[6]];
  v17[4] = v3;
  v16[5] = @"unknown6";
  v4 = [NSNumber numberWithUnsignedShort:a1[7]];
  v17[5] = v4;
  v16[6] = @"unknown7";
  v5 = [NSNumber numberWithUnsignedShort:a1[8]];
  v17[6] = v5;
  v16[7] = @"unknown8";
  v6 = [NSNumber numberWithUnsignedShort:a1[9]];
  v17[7] = v6;
  v16[8] = @"unknown9";
  v7 = [NSNumber numberWithUnsignedShort:a1[10]];
  v17[8] = v7;
  v16[9] = @"unknown10";
  v8 = [NSNumber numberWithUnsignedShort:a1[11]];
  v17[9] = v8;
  v16[10] = @"unknown11";
  v9 = [NSNumber numberWithUnsignedShort:a1[12]];
  v17[10] = v9;
  v16[11] = @"unknown12";
  v10 = [NSNumber numberWithUnsignedShort:a1[13]];
  v17[11] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:12];

  return v11;
}

void sub_8878(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = sub_10A8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1496C();
    }
  }
}

void sub_88E4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = HIBYTE(a2);
    v7 = a2;
    v8 = BYTE1(a2);
    v9 = BYTE2(a2);
    v10 = ((HIBYTE(a2) == 2) << 7) | (16 * (a2 == 2));
    if (a2 == 1)
    {
      ++v10;
    }

    v18 = v10 | (8 * (HIBYTE(a2) == 1)) | ((BYTE2(a2) == 2) << 6) | (32 * (BYTE1(a2) == 2)) | (2 * (BYTE1(a2) == 1)) | (4 * (BYTE2(a2) == 1));
    v11 = sub_10A8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (v7 == 1)
      {
        v12 = 111;
      }

      else
      {
        v12 = 45;
      }

      if (v7 == 2)
      {
        v12 = 42;
      }

      if (v8 == 1)
      {
        v13 = 111;
      }

      else
      {
        v13 = 45;
      }

      if (v8 == 2)
      {
        v13 = 42;
      }

      if (v9 == 1)
      {
        v14 = 111;
      }

      else
      {
        v14 = 45;
      }

      if (v9 == 2)
      {
        v14 = 42;
      }

      *buf = 67109888;
      v20 = v12;
      if (v6 == 1)
      {
        v15 = 111;
      }

      else
      {
        v15 = 45;
      }

      v21 = 1024;
      v22 = v13;
      v23 = 1024;
      v24 = v14;
      if (v6 == 2)
      {
        v15 = 42;
      }

      v25 = 1024;
      v26 = v15;
      _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "Set Player Lights Request: %c%c%c%c", buf, 0x1Au);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_12AD4;
    v16[3] = &unk_24A60;
    v17 = v5;
    sub_11B7C(a1, 48, &v18, 1uLL, v16);
  }
}

void sub_8CC8(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = sub_10A8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_149D4();
    }
  }
}

void sub_8D34(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v9 = a2;
    v6 = sub_10A8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_14A3C();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_12488;
    v7[3] = &unk_24A60;
    v8 = v5;
    sub_11B7C(a1, 3, &v9, 1uLL, v7);
  }
}

void sub_9000(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = sub_10A8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_14AAC();
    }
  }
}

void sub_906C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v9 = a2;
    v6 = sub_10A8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_14B14();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_125CC;
    v7[3] = &unk_24A60;
    v8 = v5;
    sub_11B7C(a1, 8, &v9, 1uLL, v7);
  }
}

void sub_9330(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = sub_10A8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_14B84();
    }
  }
}

void sub_939C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v9 = a2;
    v6 = sub_10A8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_14BEC();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_12C18;
    v7[3] = &unk_24A60;
    v8 = v5;
    sub_11B7C(a1, 64, &v9, 1uLL, v7);
  }
}

void sub_9648(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = sub_10A8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_14C5C();
    }
  }
}

void sub_96B4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v9 = a2;
    v6 = sub_10A8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_14CC4();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_12D5C;
    v7[3] = &unk_24A60;
    v8 = v5;
    sub_11B7C(a1, 72, &v9, 1uLL, v7);
  }
}

void sub_9950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, id);

  objc_destroyWeak((v10 + 48));
  _Block_object_dispose(va, 8);

  _Block_object_dispose(va1, 8);
  objc_destroyWeak((v11 - 72));

  _Unwind_Resume(a1);
}

id sub_9994(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_99C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_9A94;
  v3[3] = &unk_247E0;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 32);
  sub_9C44(WeakRetained, 20480, 1uLL, v3);

  objc_destroyWeak(&v5);
}

void sub_9A7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));

  _Unwind_Resume(a1);
}

void sub_9A94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v9 = *(*(a1 + 32) + 8);
      if (*(v9 + 24) == 1)
      {
        *(v9 + 24) = 0;
        (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
      }

      else
      {
        v11 = sub_10A8();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [v6 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_14DCC();
        }

        if ([v6 code] == &dword_C + 2 || objc_msgSend(v6, "code") == &dword_C + 1)
        {
          WeakRetained[175] |= 2u;
        }
      }
    }

    else
    {
      v8 = [v5 bytes];
      if ([v5 length])
      {
        *(WeakRetained + 963) = *v8;
      }

      else
      {
        v10 = sub_10A8();
        sub_14D34(v10);
      }
    }
  }
}

void sub_9C04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_9C44(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    if (a3 < 0x1E)
    {
      v16 = a2;
      v17 = a3;
      v12 = sub_10A8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_14E10();
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_12710;
      v13[3] = &unk_24A88;
      v14 = v7;
      v15 = a2;
      sub_11B7C(a1, 16, &v16, 5uLL, v13);
    }

    else
    {
      v8 = [[NSString alloc] initWithFormat:@"Requesting SPI flash read with length [%zd bytes] > MAX_READ_SIZE [%zd bytes].", a3, 29];
      v9 = [NSError alloc];
      v18 = NSLocalizedDescriptionKey;
      v19 = v8;
      v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v11 = [v9 initWithDomain:@"JoyConErrorDomain" code:18 userInfo:v10];

      (*(v7 + 2))(v7, 0, v11);
    }
  }
}

void sub_A1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  v47 = v41;

  objc_destroyWeak((v45 + 40));
  _Block_object_dispose(&a15, 8);

  objc_destroyWeak((v44 + 40));
  _Block_object_dispose(&a27, 8);

  objc_destroyWeak((v43 + 48));
  _Block_object_dispose((v46 - 216), 8);

  objc_destroyWeak((v42 + 32));
  objc_destroyWeak((v46 - 128));
  os_activity_scope_leave((v46 - 120));

  _Unwind_Resume(a1);
}

void sub_A2A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[749] == 1)
  {
    WeakRetained[696] |= 2u;
    [WeakRetained ready];
  }
}

void sub_A338(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A41C;
  v5[3] = &unk_24858;
  objc_copyWeak(&v7, (a1 + 48));
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  sub_A66C(WeakRetained, v5);

  objc_destroyWeak(&v7);
}

void sub_A3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  objc_destroyWeak((v17 + 48));

  _Unwind_Resume(a1);
}

void sub_A41C(uint64_t a1, unsigned __int16 *a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[748] = 1;
    if (a2 && !v5)
    {
      *(WeakRetained + 368) = *a2;
      WeakRetained[738] = *(a2 + 2);
      v8 = *(a2 + 1);
      *(WeakRetained + 743) = a2[4];
      *(WeakRetained + 739) = v8;
      WeakRetained[745] = *(a2 + 3);
      *(WeakRetained + 373) = a2[5];
      WeakRetained[749] = 1;
      v9 = sub_10A8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a2 + 2) - 1;
        if (v10 < 0xC && ((0xF07u >> v10) & 1) != 0)
        {
          v11 = *(&off_24AC0 + (*(a2 + 2) - 1));
        }

        else
        {
          v12 = [NSNumber numberWithUnsignedChar:?];
          v11 = [v12 description];
        }

        v13 = *a2;
        v18 = 138543618;
        v19 = v11;
        v20 = 1024;
        v21 = v13;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Device is a '%{public}@' with f/w version %#x.", &v18, 0x12u);
      }

      v14 = a1 + 32;
      goto LABEL_11;
    }

    v15 = sub_10A8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [v5 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_14E90();
    }

    v16 = [v5 localizedRecoverySuggestion];
    v17 = v16 == 0;

    if (!v17)
    {
      v14 = *(*(a1 + 40) + 8) + 40;
LABEL_11:
      (*(*v14 + 16))();
    }
  }
}

void sub_A66C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10A8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_14ED4();
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_121E8;
    v5[3] = &unk_24A60;
    v6 = v3;
    sub_11B7C(a1, 2, 0, 0, v5);
  }
}

void sub_A760(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_A82C;
  v3[3] = &unk_248A8;
  objc_copyWeak(&v4, (a1 + 40));
  v3[4] = *(a1 + 32);
  sub_9C44(WeakRetained, 24576, 0x10uLL, v3);

  objc_destroyWeak(&v4);
}

void sub_A814(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));

  _Unwind_Resume(a1);
}

void sub_A82C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained + 90;
    *(WeakRetained + 728) = 1;
    if (!v5 || v6)
    {
      v16 = sub_10A8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [v6 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_14F9C();
      }

      v17 = [v6 localizedRecoverySuggestion];
      v18 = v17 == 0;

      if (!v18)
      {
        (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
      }
    }

    else
    {
      v10 = [v5 bytes];
      if ([v5 length] <= 0xF)
      {
        sub_10A8();
        objc_claimAutoreleasedReturnValue();
        sub_14F10();
      }

      else if ((*v10 & 0x80000000) == 0)
      {
        v11 = 0;
        v12 = 0;
        v19[0] = 0;
        v19[1] = 0;
        v20 = 0;
        do
        {
          v13 = v10[v11];
          if (v13 >= 1)
          {
            *(v19 + v12++) = v13;
          }

          ++v11;
        }

        while (v11 != 16);
        v14 = [[NSString alloc] initWithBytes:v19 length:strnlen(v19 encoding:{0xFuLL), 1}];
        v15 = *v9;
        *v9 = v14;
      }
    }
  }
}

void sub_AA38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_AB04;
  v3[3] = &unk_248A8;
  objc_copyWeak(&v4, (a1 + 40));
  v3[4] = *(a1 + 32);
  sub_9C44(WeakRetained, 24656, 6uLL, v3);

  objc_destroyWeak(&v4);
}

void sub_AAEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));

  _Unwind_Resume(a1);
}

void sub_AB04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v9 = sub_10A8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [v6 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1506C();
      }

      v10 = [v6 localizedRecoverySuggestion];
      v11 = v10 == 0;

      if (!v11)
      {
        (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
      }
    }

    else
    {
      v8 = [v5 bytes];
      if ([v5 length] <= 5)
      {
        sub_10A8();
        objc_claimAutoreleasedReturnValue();
        sub_14FE0();
      }

      else
      {
        WeakRetained[750] = *v8;
        *(WeakRetained + 751) = *(v8 + 1);
        WeakRetained[753] = v8[6];
        *(WeakRetained + 377) = *(v8 + 7);
        WeakRetained[757] = 1;
      }
    }
  }
}

void sub_B32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v68 + 40));

  objc_destroyWeak((v71 + 40));
  objc_destroyWeak((v69 + 40));

  objc_destroyWeak((v70 + 56));
  _Block_object_dispose(&a60, 8);

  _Block_object_dispose((v72 - 216), 8);
  objc_destroyWeak((v65 + 32));
  objc_destroyWeak((v72 - 144));

  _Unwind_Resume(a1);
}

void sub_B414(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (!WeakRetained || (~WeakRetained[98].u8[0] & 3) != 0 || (~WeakRetained[108].u8[4] & 3) != 0 || (~WeakRetained[112].u8[6] & 3) != 0 || (WeakRetained[116].i8[6] & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = WeakRetained[92].u8[2];
  if ((v4 - 1) >= 2)
  {
    if (v4 == 3)
    {
      WeakRetained[101].i32[1] = 81002511;
      WeakRetained[105].i32[0] = 81002511;
      LODWORD(v2) = 15.0;
      v5 = 1236;
    }

    else
    {
      v5 = WeakRetained[101].u16[3];
      LOWORD(v2) = WeakRetained[101].i16[2];
      *&v2 = LODWORD(v2);
    }
  }

  else
  {
    WeakRetained[101].i32[1] = 55705615;
    WeakRetained[105].i32[0] = 55705615;
    LODWORD(v2) = 15.0;
    v5 = 850;
  }

  *&v2 = *&v2 / (v5 - WeakRetained[102].u16[2]);
  [(float32x2_t *)WeakRetained setLeftThumbstickNoiseBuffer:v2];
  v6 = &v3[105] + 1;
  LOWORD(v7) = v3[105].i16[0];
  *&v8 = v7 / (v3[105].u16[1] - v3[106].u16[0]);
  [(float32x2_t *)v3 setRightThumbstickNoiseBuffer:v8];
  v9 = (1.0 / (v3[110].i16[1] - v3[109].i16[2])) * 4.0;
  v10.i32[0] = v3[109].i16[3];
  v10.i32[1] = v3[110].i16[0];
  v11.i32[0] = v3[109].i16[0];
  v11.i32[1] = v3[109].i16[1];
  v12 = vcvt_f32_s32(vsub_s32(v10, v11));
  __asm { FMOV            V2.2S, #1.0 }

  v18 = vdiv_f32(_D2, v12);
  __asm { FMOV            V2.2S, #4.0 }

  v3[117] = vmul_f32(v18, _D2);
  v18.f32[0] = 816.0 / (v3[112].i16[0] - v3[111].i16[1]);
  v20 = 816.0 / (v3[112].i16[1] - v3[111].i16[2]);
  _D2.f32[0] = 816.0 / (v3[112].i16[2] - v3[111].i16[3]);
  v3[118].f32[0] = v9;
  v3[118].i32[1] = v18.i32[0];
  v3[119].f32[0] = v20;
  v3[119].f32[1] = _D2.f32[0];
  v21 = v3[92].u8[2];
  switch(v21)
  {
    case 1:
      v39 = v3[96].u16[0] - v3[95].u16[2];
      if (v39 < 0)
      {
        v39 = v3[95].u16[2] - v3[96].u16[0];
      }

      if (v39 <= 1)
      {
        v40 = v3[96].u16[1] - v3[95].u16[3];
        if (v40 < 0)
        {
          v40 = v3[95].u16[3] - v3[96].u16[1];
        }

        if (v40 <= 1)
        {
          v3[87].i32[1] |= 4u;
          v41 = sub_10A8();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *v49 = 0;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "#Quirks: Suspiciously good left stick factory calibration data.", v49, 2u);
          }

          v42 = v3[96].u16[0];
          if (v42 >= v3[96].u16[1])
          {
            LOWORD(v42) = v3[96].i16[1];
          }

          v3[101].i16[3] = v42;
        }
      }

      if ((v3[101].i8[2] & 4) != 0)
      {
        v26 = &v3[99] + 1;
        v43 = v3[99].u16[1] - v3[98].u16[3];
        if (v43 < 0)
        {
          v43 = v3[98].u16[3] - v3[99].u16[1];
        }

        if (v43 <= 1)
        {
          v44 = v3[99].u16[2] - v3[99].u16[0];
          if (v44 < 0)
          {
            v44 = v3[99].u16[0] - v3[99].u16[2];
          }

          if (v44 <= 1)
          {
            v3[87].i32[1] |= 8u;
            v30 = sub_10A8();
            v6 = &v3[101] + 3;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *v48 = 0;
              _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "#Quirks: Suspiciously good left stick user calibration data.", v48, 2u);
            }

            v28 = (v3 + 796);
            goto LABEL_76;
          }
        }
      }

      break;
    case 2:
      v33 = v3[97].u16[2] - v3[97].u16[0];
      if (v33 < 0)
      {
        v33 = v3[97].u16[0] - v3[97].u16[2];
      }

      if (v33 <= 1)
      {
        v34 = v3[97].u16[3] - v3[97].u16[1];
        if (v34 < 0)
        {
          v34 = v3[97].u16[1] - v3[97].u16[3];
        }

        if (v34 <= 1)
        {
          v3[87].i32[1] |= 4u;
          v35 = sub_10A8();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "#Quirks: Suspiciously good right stick factory calibration data.", v47, 2u);
          }

          v36 = v3[97].u16[2];
          if (v36 >= v3[97].u16[3])
          {
            LOWORD(v36) = v3[97].i16[3];
          }

          v3[105].i16[1] = v36;
        }
      }

      if ((v3[101].i8[2] & 8) != 0)
      {
        v26 = &v3[100] + 3;
        v37 = v3[100].u16[3] - v3[100].u16[1];
        if (v37 < 0)
        {
          v37 = v3[100].u16[1] - v3[100].u16[3];
        }

        if (v37 <= 1)
        {
          v28 = v3 + 101;
          v38 = v3[101].u16[0] - v3[100].u16[2];
          if (v38 < 0)
          {
            v38 = v3[100].u16[2] - v3[101].u16[0];
          }

          if (v38 <= 1)
          {
            v3[87].i32[1] |= 8u;
            v30 = sub_10A8();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v46 = 0;
              v31 = "#Quirks: Suspiciously good right stick user calibration data.";
              v32 = &v46;
              goto LABEL_54;
            }

LABEL_76:

            v45 = *v26;
            if (v45 >= v28->u16[0])
            {
              LOWORD(v45) = v28->i16[0];
            }

            *v6 = v45;
          }
        }
      }

      break;
    case 3:
      v22 = v3[96].u16[0] - v3[95].u16[2];
      if (v22 < 0)
      {
        v22 = v3[95].u16[2] - v3[96].u16[0];
      }

      if (v22 <= 1)
      {
        v23 = v3[96].u16[1] - v3[95].u16[3];
        if (v23 < 0)
        {
          v23 = v3[95].u16[3] - v3[96].u16[1];
        }

        if (v23 <= 1)
        {
          v3[87].i32[1] |= 4u;
          v24 = sub_10A8();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "#Quirks: Suspiciously good left stick factory calibration data.", buf, 2u);
          }

          v25 = v3[96].u16[0];
          if (v25 >= v3[96].u16[1])
          {
            LOWORD(v25) = v3[96].i16[1];
          }

          v3[101].i16[3] = v25;
        }
      }

      v26 = &v3[97] + 2;
      v27 = v3[97].u16[2] - v3[97].u16[0];
      if (v27 < 0)
      {
        v27 = v3[97].u16[0] - v3[97].u16[2];
      }

      if (v27 <= 1)
      {
        v28 = (v3 + 782);
        v29 = v3[97].u16[3] - v3[97].u16[1];
        if (v29 < 0)
        {
          v29 = v3[97].u16[1] - v3[97].u16[3];
        }

        if (v29 <= 1)
        {
          v3[87].i32[1] |= 4u;
          v30 = sub_10A8();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v50 = 0;
            v31 = "#Quirks: Suspiciously good right stick factory calibration data.";
            v32 = &v50;
LABEL_54:
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, v31, v32, 2u);
            goto LABEL_76;
          }

          goto LABEL_76;
        }
      }

      break;
  }

LABEL_6:
}

void sub_B9CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_BAC0;
  v5[3] = &unk_248F8;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 48);
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  sub_9C44(WeakRetained, 24637, 0x12uLL, v5);

  objc_destroyWeak(&v8);
}

void sub_BAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  objc_destroyWeak((v16 + 56));

  _Unwind_Resume(a1);
}

void sub_BAC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v21 = sub_10A8();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [v6 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1513C();
      }

      v22 = [v6 localizedRecoverySuggestion];
      if (v22)
      {
        v23 = *(*(*(a1 + 40) + 8) + 24) > 0;

        if (v23)
        {
          --*(*(*(a1 + 40) + 8) + 24);
          (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
        }
      }
    }

    else
    {
      v8 = [v5 bytes];
      if ([v5 length] <= 0x11)
      {
        sub_10A8();
        objc_claimAutoreleasedReturnValue();
        sub_150B0();
      }

      else
      {
        v9 = *v8;
        v10 = v9 | (*(v8 + 2) << 16);
        v11 = *(v8 + 3);
        v12 = v11 | (*(v8 + 5) << 16);
        v13 = v8[3];
        v14 = v13 | (*(v8 + 8) << 16);
        WeakRetained[380] = v11 & 0xFFF;
        WeakRetained[381] = v12 >> 12;
        WeakRetained[382] = v13 & 0xFFF;
        WeakRetained[383] = v14 >> 12;
        WeakRetained[384] = v9 & 0xFFF;
        WeakRetained[385] = v10 >> 12;
        LOBYTE(v10) = *(WeakRetained + 784);
        *(WeakRetained + 784) = v10 | 1;
        v15 = *(v8 + 9);
        v16 = v15 | (*(v8 + 11) << 16);
        v17 = v8[6];
        v18 = v17 | (*(v8 + 14) << 16);
        v19 = *(v8 + 15);
        v20 = v19 | (*(v8 + 17) << 16);
        WeakRetained[386] = v15 & 0xFFF;
        WeakRetained[387] = v16 >> 12;
        WeakRetained[388] = v17 & 0xFFF;
        WeakRetained[389] = v18 >> 12;
        WeakRetained[390] = v19 & 0xFFF;
        WeakRetained[391] = v20 >> 12;
        *(WeakRetained + 784) = v10 | 3;
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

void sub_BD3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_BE30;
  v5[3] = &unk_248F8;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 48);
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  sub_9C44(WeakRetained, 32784, 0x16uLL, v5);

  objc_destroyWeak(&v8);
}

void sub_BE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  objc_destroyWeak((v16 + 56));

  _Unwind_Resume(a1);
}

void sub_BE30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v21 = sub_10A8();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [v6 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1520C();
      }

      v22 = [v6 localizedRecoverySuggestion];
      if (v22)
      {
        v23 = *(*(*(a1 + 40) + 8) + 24) > 0;

        if (v23)
        {
          --*(*(*(a1 + 40) + 8) + 24);
          (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
        }
      }
    }

    else
    {
      v8 = [v5 bytes];
      if ([v5 length] <= 0x15)
      {
        sub_10A8();
        objc_claimAutoreleasedReturnValue();
        sub_15180();
      }

      else
      {
        v9 = v8[1];
        v10 = v9 | (*(v8 + 4) << 16);
        v11 = *(v8 + 5);
        v12 = v11 | (*(v8 + 7) << 16);
        v13 = v8[4];
        v14 = v13 | (*(v8 + 10) << 16);
        WeakRetained[393] = v11 & 0xFFF;
        WeakRetained[394] = v12 >> 12;
        WeakRetained[395] = v13 & 0xFFF;
        WeakRetained[396] = v14 >> 12;
        WeakRetained[397] = v9 & 0xFFF;
        WeakRetained[398] = v10 >> 12;
        LOBYTE(v10) = *(WeakRetained + 810) | 1;
        *(WeakRetained + 810) = v10;
        LOBYTE(v10) = v10 & 0xFB | (4 * (*v8 == 41394));
        *(WeakRetained + 810) = v10;
        v15 = *(v8 + 13);
        v16 = v15 | (*(v8 + 15) << 16);
        v17 = v8[8];
        v18 = v17 | (*(v8 + 18) << 16);
        v19 = *(v8 + 19);
        v20 = v19 | (*(v8 + 21) << 16);
        WeakRetained[399] = v15 & 0xFFF;
        WeakRetained[400] = v16 >> 12;
        WeakRetained[401] = v17 & 0xFFF;
        WeakRetained[402] = v18 >> 12;
        WeakRetained[403] = v19 & 0xFFF;
        WeakRetained[404] = v20 >> 12;
        LOBYTE(v10) = v10 | 2;
        *(WeakRetained + 810) = v10;
        *(WeakRetained + 810) = v10 & 0xF7 | (8 * (*(v8 + 11) == 41394));
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

void sub_C0DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_C1D0;
  v5[3] = &unk_248F8;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 48);
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  sub_9C44(WeakRetained, 24710, 0x12uLL, v5);

  objc_destroyWeak(&v8);
}

void sub_C1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  objc_destroyWeak((v16 + 56));

  _Unwind_Resume(a1);
}

void sub_C1D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v9 = sub_10A8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [v6 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_152DC();
      }

      v10 = [v6 localizedRecoverySuggestion];
      if (v10)
      {
        v11 = *(*(*(a1 + 40) + 8) + 24) > 0;

        if (v11)
        {
          --*(*(*(a1 + 40) + 8) + 24);
          (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
        }
      }
    }

    else
    {
      v8 = [v5 bytes];
      if ([v5 length] <= 0x11)
      {
        sub_10A8();
        objc_claimAutoreleasedReturnValue();
        sub_15250();
      }

      else
      {
        WeakRetained[408] = *v8 & 0xFFF;
        WeakRetained[409] = (*v8 | (*(v8 + 2) << 16)) >> 12;
        WeakRetained[410] = *(v8 + 3) & 0xFFF;
        WeakRetained[411] = (*(v8 + 3) | (*(v8 + 5) << 16)) >> 12;
        WeakRetained[412] = v8[3] & 0xFFF;
        WeakRetained[413] = (v8[3] | (*(v8 + 8) << 16)) >> 12;
        WeakRetained[414] = *(v8 + 9) & 0xFFF;
        WeakRetained[415] = (*(v8 + 9) | (*(v8 + 11) << 16)) >> 12;
        WeakRetained[416] = v8[6] & 0xFFF;
        WeakRetained[417] = (v8[6] | (*(v8 + 14) << 16)) >> 12;
        WeakRetained[418] = *(v8 + 15) & 0xFFF;
        WeakRetained[419] = (*(v8 + 15) | (*(v8 + 17) << 16)) >> 12;
        *(WeakRetained + 868) |= 1u;
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

void sub_C45C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_C550;
  v5[3] = &unk_248F8;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 48);
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  sub_9C44(WeakRetained, 24728, 0x12uLL, v5);

  objc_destroyWeak(&v8);
}

void sub_C530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  objc_destroyWeak((v16 + 56));

  _Unwind_Resume(a1);
}

void sub_C550(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v9 = sub_10A8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [v6 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_153AC();
      }

      v10 = [v6 localizedRecoverySuggestion];
      if (v10)
      {
        v11 = *(*(*(a1 + 40) + 8) + 24) > 0;

        if (v11)
        {
          --*(*(*(a1 + 40) + 8) + 24);
          (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
        }
      }
    }

    else
    {
      v8 = [v5 bytes];
      if ([v5 length] <= 0x11)
      {
        sub_10A8();
        objc_claimAutoreleasedReturnValue();
        sub_15320();
      }

      else
      {
        WeakRetained[422] = *v8 & 0xFFF;
        WeakRetained[423] = (*v8 | (*(v8 + 2) << 16)) >> 12;
        WeakRetained[424] = *(v8 + 3) & 0xFFF;
        WeakRetained[425] = (*(v8 + 3) | (*(v8 + 5) << 16)) >> 12;
        WeakRetained[426] = v8[3] & 0xFFF;
        WeakRetained[427] = (v8[3] | (*(v8 + 8) << 16)) >> 12;
        WeakRetained[428] = *(v8 + 9) & 0xFFF;
        WeakRetained[429] = (*(v8 + 9) | (*(v8 + 11) << 16)) >> 12;
        WeakRetained[430] = v8[6] & 0xFFF;
        WeakRetained[431] = (v8[6] | (*(v8 + 14) << 16)) >> 12;
        WeakRetained[432] = *(v8 + 15) & 0xFFF;
        WeakRetained[433] = (*(v8 + 15) | (*(v8 + 17) << 16)) >> 12;
        *(WeakRetained + 868) |= 2u;
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

void sub_C7DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = [v5 bytes];
      if ([v5 length] > 0x17)
      {
        *(WeakRetained + 109) = *v8;
        *(WeakRetained + 220) = *(v8 + 2);
        *(WeakRetained + 890) = *(v8 + 12);
        *(WeakRetained + 898) = *(v8 + 5);
        WeakRetained[902] |= 1u;
        (*(*(a1 + 32) + 16))();
        goto LABEL_8;
      }

      sub_10A8();
      objc_claimAutoreleasedReturnValue();
      sub_153F0();
      v9 = v10;
    }

    else
    {
      v9 = sub_10A8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1548C();
      }
    }
  }

LABEL_8:
}

void sub_C928(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = [v5 bytes];
      if ([v5 length] > 0x19)
      {
        *(WeakRetained + 113) = *(v8 + 1);
        *(WeakRetained + 228) = *(v8 + 5);
        *(WeakRetained + 922) = *(v8 + 7);
        *(WeakRetained + 930) = *(v8 + 11);
        v9 = WeakRetained[934] | 1;
        WeakRetained[934] = v9;
        WeakRetained[934] = v9 & 0xFD | (2 * (*v8 == 41394));
        (*(*(a1 + 32) + 16))();
        goto LABEL_8;
      }

      sub_10A8();
      objc_claimAutoreleasedReturnValue();
      sub_154F4();
      v10 = v11;
    }

    else
    {
      v10 = sub_10A8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1548C();
      }
    }
  }

LABEL_8:
}

void sub_CA90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = [v5 bytes];
      if ([v5 length] > 5)
      {
        *(WeakRetained + 442) = *v8;
        *(WeakRetained + 886) = *(v8 + 2);
        WeakRetained[902] |= 2u;
        (*(*(a1 + 32) + 16))();
        goto LABEL_8;
      }

      sub_10A8();
      objc_claimAutoreleasedReturnValue();
      sub_15590();
      v9 = v10;
    }

    else
    {
      v9 = sub_10A8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1548C();
      }
    }
  }

LABEL_8:
}

void sub_CE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  v34 = v30;

  objc_destroyWeak((v32 + 56));
  _Block_object_dispose(&a17, 8);

  objc_destroyWeak((v31 + 48));
  _Block_object_dispose((v33 - 152), 8);

  objc_destroyWeak((v33 - 104));
  os_activity_scope_leave((v33 - 96));

  _Unwind_Resume(a1);
}

void sub_CECC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_CFB0;
  v5[3] = &unk_24970;
  objc_copyWeak(&v7, (a1 + 48));
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  sub_D0D8(WeakRetained, v5);

  objc_destroyWeak(&v7);
}

void sub_CF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  objc_destroyWeak((v17 + 48));

  _Unwind_Resume(a1);
}

void sub_CFB0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v5 && (a2 & 1) != 0)
    {
      goto LABEL_4;
    }

    v8 = sub_10A8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v5 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1562C();
    }

    v9 = [v5 localizedRecoverySuggestion];
    v10 = v9 == 0;

    if (v10)
    {
LABEL_4:
      v7 = a1 + 32;
    }

    else
    {
      v7 = *(*(a1 + 40) + 8) + 40;
    }

    (*(*v7 + 16))();
  }
}

void sub_D0D8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10A8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_15670();
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_11368;
    v5[3] = &unk_24A60;
    v6 = v3;
    [a1 enqueueProprietaryCommand:4 expectsResponse:0 data:0 length:0 replyHandler:v5];
  }
}

void sub_D1D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_D2CC;
  v3[3] = &unk_24998;
  objc_copyWeak(&v7, (a1 + 56));
  v6 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_D3FC(WeakRetained, v3);

  objc_destroyWeak(&v7);
}

void sub_D2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_destroyWeak((v15 + 56));

  _Unwind_Resume(a1);
}

void sub_D2CC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      v8 = sub_10A8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [v5 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_156AC();
      }

      v9 = [v5 localizedRecoverySuggestion];
      v10 = v9 == 0;

      if (v10)
      {
        v7 = a1 + 32;
      }

      else
      {
        v7 = *(*(a1 + 48) + 8) + 40;
      }
    }

    else
    {
      v7 = a1 + 40;
    }

    (*(*v7 + 16))();
  }
}

void sub_D3FC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10A8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_156F0();
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10FE8;
    v5[3] = &unk_24A60;
    v6 = v3;
    [a1 enqueueProprietaryCommand:2 expectsResponse:1 data:0 length:0 replyHandler:v5];
  }
}

void sub_D5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);

  objc_destroyWeak((v6 - 24));
  _Unwind_Resume(a1);
}

void sub_D5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    sub_14294(WeakRetained);
    kdebug_trace();
    v12[136] = a3;
    if (a5 > 62)
    {
      if (a5 == 63)
      {
        [v12 handleHIDControllerPayload:63 withData:v10 timestamp:a3];
        goto LABEL_14;
      }

      if (a5 == 129)
      {
        sub_DA98(v12, 129, v10);
        goto LABEL_14;
      }
    }

    else
    {
      if (a5 == 33)
      {
        sub_D7D4(v12, 33, v10);
        goto LABEL_14;
      }

      if (a5 == 48)
      {
        [v12 handleStandardFullPayload:48 withData:v10 timestamp:a3];
        goto LABEL_14;
      }
    }

    v13 = sub_10A8();
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

LABEL_14:
}

void sub_D7D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = _os_activity_create(&dword_0, "Sub-command Reply", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);
    v7 = v5;
    v8 = [v5 bytes];
    v9 = [v5 length];
    if (v9 <= 0xE)
    {
      v12 = sub_10A8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *&buf[4] = a2;
        v21 = 2048;
        v22 = v9;
        v23 = 2048;
        v24 = 8;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Payload for input report [%#zx] has length [%{bytes}zu], which is less than the minimum expected length [%{bytes}zu]. Ignoring.", buf, 0x20u);
      }
    }

    else
    {
      sub_F3C8(a1, v8 + 1);
      v10 = sub_10A8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1572C(v8);
      }

      v11 = *(a1 + 1048);
      if (v11)
      {
        v12 = *(a1 + 1056);
        v13 = *(a1 + 1056);
        *(a1 + 1056) = 0;
        *(a1 + 1064) = 0;

        *(a1 + 1048) = 0;
        dispatch_source_cancel(v12);
        v14 = [v5 subdataWithRange:{15, v9 - 15}];
        if (sub_F50C(v11, v15, v8, v14))
        {
          sub_F7F4(a1);
        }

        else
        {
          v16 = sub_10A8();
          sub_157B8();

          dispatch_time(0, 1000000000);
          v17 = [a1 dispatchQueue];
          sub_15858(v17, &v18);
        }

        sub_15944();
      }

      else
      {
        sub_10A8();
        objc_claimAutoreleasedReturnValue();
        sub_158A8();
        v12 = *buf;
      }
    }

    os_activity_scope_leave(&state);
  }
}

void sub_DA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_DA98(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = _os_activity_create(&dword_0, "Proprietary Ack", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);
    v7 = v5;
    v8 = [v5 bytes];
    v9 = [v5 length];
    if (v9 <= 1)
    {
      v12 = sub_10A8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *&buf[4] = a2;
        v24 = 2048;
        v25 = v9;
        v26 = 2048;
        v27 = 8;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Payload for input report [%#zx] has length [%{bytes}zu], which is less than the minimum expected length [%{bytes}zu]. Ignoring.", buf, 0x20u);
      }
    }

    else
    {
      v10 = sub_10A8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_15980(v8);
      }

      v11 = *(a1 + 1000);
      if (v11)
      {
        v12 = *(a1 + 1008);
        v13 = *(a1 + 1008);
        *(a1 + 1008) = 0;
        *(a1 + 1016) = 0;

        *(a1 + 1000) = 0;
        dispatch_source_cancel(v12);
        v14 = [v5 subdataWithRange:{2, v9 - 2}];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = +[NSData data];
        }

        v17 = v16;

        if (sub_F9D8(v11, v18, v8, v17))
        {
          sub_FBE4(a1);
        }

        else
        {
          v19 = sub_10A8();
          sub_159F4();

          dispatch_time(0, 1000000000);
          v20 = [a1 dispatchQueue];
          sub_15A94(v20, &v21);
        }

        sub_15944();
      }

      else
      {
        if (v8[1] == 1)
        {
LABEL_15:
          os_activity_scope_leave(&state);

          goto LABEL_16;
        }

        sub_10A8();
        objc_claimAutoreleasedReturnValue();
        sub_15AE4();
        v12 = *buf;
      }
    }

    goto LABEL_15;
  }

LABEL_16:
}

void sub_DD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_E448(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  v7 = vdup_n_s32(a2[1] & 0xF);
  __asm { FMOV            V10.2S, #1.0 }

  v13 = vand_s8(vceq_s32(v7, 0x300000007), _D10);
  if ((a2[1] & 0xE) != 0)
  {
    v14 = *v13.i32;
  }

  else
  {
    v14 = 1.0;
  }

  if ((a2[1] & 0xE) == 4)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = *&v13.i32[1];
  }

  v16 = *a2;
  v17 = v5[738];
  v18 = 0.0;
  if (v17 == 1)
  {
    v22 = v13;
    [v5 dispatchMenuButtonEventWithValue:(v16 >> 8) & 1 timestamp:a3];
    [v6 homeButtonPressed:(*a2 >> 13) & 1];
    v21 = ((v16 >> 10) & 1);
    v20 = (v16 >> 15);
    v19 = ((v16 >> 14) & 1);
  }

  else
  {
    if (v17 != 2)
    {
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      goto LABEL_13;
    }

    v22 = v13;
    [v5 dispatchMenuButtonEventWithValue:(v16 >> 9) & 1 timestamp:a3];
    [v6 homeButtonPressed:(*a2 >> 12) & 1];
    v18 = ((v16 >> 10) & 1);
    v19 = (v16 >> 15);
    v20 = ((v16 >> 14) & 1);
    v21 = 0.0;
  }

  v13 = v22;
LABEL_13:
  v23 = 0;
  v24 = v14;
  v25 = v15;
  v26 = vbsl_s8(vcgt_u32(0x200000002, (*&vadd_s32(v7, 0xFF000000FBLL) & 0xFFFFFEFFFFFFFEFFLL)), _D10, v13);
  v27 = (v16 & 1);
  v28 = vcvtq_f32_u32(vmovl_u16((*&vshl_u16((*&vdup_n_s16(v16) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFFFFFELL) & 0xFF01FF01FF01FF01)));
  v29 = ((v16 >> 5) & 1);
  v30 = 0u;
  v31 = 0u;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v18;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  [v6 dispatchGameControllerExtendedEventWithState:&v23 timestamp:a3];
}

void sub_F3C8(void *a1, uint64_t a2)
{
  v3 = a1;
  v10 = v3;
  if ((v3[960] & 1) == 0)
  {
    v4 = *(a2 + 1);
    goto LABEL_6;
  }

  v4 = *(a2 + 1);
  if (v3[961] != ((v4 >> 4) & 1) || v3[962] != v4 >> 5)
  {
LABEL_6:
    v3[962] = v4 >> 5;
    v3[961] = (*(a2 + 1) & 0x10) != 0;
    v3[960] = 1;
    v5 = v3[961];
    *([v3 batteryReport] + 2) = v5;
    v6 = v10;
    v7 = v10[962];
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v8 = [v10 batteryReport];
        v9 = 60;
        goto LABEL_15;
      }

      if (v7 == 4)
      {
        v8 = [v10 batteryReport];
        v9 = 100;
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 == 1)
      {
        v8 = [v10 batteryReport];
        v9 = 10;
        goto LABEL_15;
      }

      if (v7 == 2)
      {
        v8 = [v10 batteryReport];
        v9 = 30;
LABEL_15:
        *v8 = v9;
        v6 = v10;
      }
    }

    [v6 sendBatteryReport];
  }
}

BOOL sub_F50C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 16);
  voucher_adopt();
  v8 = *(a3 + 14);
  v9 = *(a1 + 42);
  if (v8 != v9)
  {
    v16 = [[NSString alloc] initWithFormat:@"Received reply for a different sub-command [%#x].", *(a3 + 14)];
    v17 = [NSError alloc];
    v27[0] = NSLocalizedDescriptionKey;
    v27[1] = NSLocalizedRecoverySuggestionErrorKey;
    v28[0] = v16;
    v28[1] = @"Try again.";
    v18 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    v11 = [v17 initWithDomain:@"JoyConErrorDomain" code:15 userInfo:v18];

    v20 = *(a1 + 8);
    v13 = (a1 + 8);
    v19 = v20;
    if (v20)
    {
      (*(v19 + 16))(v19, 0, v11);
      goto LABEL_8;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  if (*(a3 + 13) < 0)
  {
    v10 = sub_10A8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_15E00((a1 + 42));
    }

    v11 = 0;
  }

  else
  {
    v22 = sub_10A8();
    sub_15E74();

    v10 = [[NSString alloc] initWithFormat:@"Device rejected sub-command."];
    v23 = [NSError alloc];
    v25 = NSLocalizedDescriptionKey;
    v26 = v10;
    v24 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v11 = [v23 initWithDomain:@"JoyConErrorDomain" code:14 userInfo:v24];
  }

  v14 = *(a1 + 8);
  v13 = (a1 + 8);
  v12 = v14;
  if (!v14)
  {
    goto LABEL_11;
  }

  (*(v12 + 16))(v12, v6, v11);
LABEL_8:
  v15 = *v13;
LABEL_12:
  *v13 = 0;

  return v8 == v9;
}

void sub_F7F4(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 1048))
    {
      v2 = *(a1 + 1024);
      if (v2)
      {
        v3 = *v2;
        *(a1 + 1024) = *v2;
        if (!v3)
        {
          *(a1 + 1032) = a1 + 1024;
        }

        --*(a1 + 1040);
        v4 = mach_absolute_time();
        if (sub_11588(v2, a1))
        {
          objc_initWeak(&location, a1);
          v5 = dispatch_time(0, 2000000000);
          v6 = [a1 dispatchQueue];
          v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);

          dispatch_source_set_timer(v7, v5, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_12100;
          block[3] = &unk_24A38;
          objc_copyWeak(v11, &location);
          v11[1] = v2;
          v8 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
          dispatch_source_set_event_handler(v7, v8);

          dispatch_resume(v7);
          v9 = *(a1 + 1056);
          *(a1 + 1048) = v2;
          *(a1 + 1056) = v7;

          *(a1 + 1064) = v4;
          objc_destroyWeak(v11);
          objc_destroyWeak(&location);
        }

        else
        {
          sub_15F08(v2);
        }
      }
    }
  }
}

BOOL sub_F9D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 16);
  voucher_adopt();
  v8 = *(a3 + 1);
  v9 = *(a1 + 41);
  if (v8 == v9)
  {
    v10 = *(a1 + 8);
    if (v10)
    {
      (*(v10 + 16))(v10, v6, 0);
      v11 = *(a1 + 8);
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 8) = 0;
  }

  else
  {
    v13 = [[NSString alloc] initWithFormat:@"Received reply for a different proprietary command [%#x].", *(a3 + 1)];
    v14 = [NSError alloc];
    v19[0] = NSLocalizedDescriptionKey;
    v19[1] = NSLocalizedRecoverySuggestionErrorKey;
    v20[0] = v13;
    v20[1] = @"Try again.";
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v16 = [v14 initWithDomain:@"JoyConErrorDomain" code:34 userInfo:v15];

    v17 = *(a1 + 8);
    if (v17)
    {
      (*(v17 + 16))(v17, 0, v16);
      v18 = *(a1 + 8);
    }

    else
    {
      v18 = 0;
    }

    *(a1 + 8) = 0;
  }

  return v8 == v9;
}

void sub_FBE4(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 1000))
    {
      v2 = *(a1 + 976);
      if (v2)
      {
        v3 = *v2;
        *(a1 + 976) = *v2;
        if (!v3)
        {
          *(a1 + 984) = a1 + 976;
        }

        --*(a1 + 992);
        v4 = mach_absolute_time();
        if (sub_102D8(v2, a1) && v2[24] == 1)
        {
          objc_initWeak(&location, a1);
          v5 = dispatch_time(0, 1000000000);
          v6 = [a1 dispatchQueue];
          v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);

          dispatch_source_set_timer(v7, v5, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10ED0;
          block[3] = &unk_24A38;
          objc_copyWeak(v11, &location);
          v11[1] = v2;
          v8 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
          dispatch_source_set_event_handler(v7, v8);

          dispatch_resume(v7);
          v9 = *(a1 + 1008);
          *(a1 + 1000) = v2;
          *(a1 + 1008) = v7;

          *(a1 + 1016) = v4;
          objc_destroyWeak(v11);
          objc_destroyWeak(&location);
        }

        else
        {
          sub_15F88(v2);
        }
      }
    }
  }
}

void *sub_10210(char a1, char a2, const void *a3, size_t a4, void *a5)
{
  v9 = a5;
  v10 = malloc_type_calloc(1uLL, a4 + 48, 0x10A0040C4227B66uLL);
  v11 = [v9 copy];
  v12 = v10[1];
  v10[1] = v11;

  v13 = voucher_copy();
  v14 = v10[2];
  v10[2] = v13;

  *(v10 + 24) = a2;
  v10[4] = a4;
  *(v10 + 40) = 0x80;
  *(v10 + 41) = a1;
  if (a4)
  {
    memmove(v10 + 42, a3, a4);
  }

  return v10;
}

id sub_102D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 16);
  voucher_adopt();
  v5 = sub_10A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_16008(a1);
  }

  v6 = sub_10A8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1607C(a1);
  }

  v7 = [v3 device];
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = [v7 setReport:? reportLength:? withIdentifier:? forType:? error:?];
  v11 = 0;

  if ((v10 & 1) == 0)
  {
    v16 = *(a1 + 8);
    v13 = a1 + 8;
    v15 = v16;
    if (!v16)
    {
LABEL_12:
      *v13 = 0;

      goto LABEL_13;
    }

    v17 = [NSError alloc];
    v23[0] = NSLocalizedDescriptionKey;
    v23[1] = NSLocalizedFailureReasonErrorKey;
    v24[0] = @"Error sending report.";
    v18 = [v11 localizedDescription];
    v19 = [NSString stringWithFormat:@"%@", v18];
    v24[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    v21 = [v17 initWithDomain:@"JoyConErrorDomain" code:32 userInfo:v20];

    (*(*v13 + 16))();
LABEL_11:
    v15 = *v13;
    goto LABEL_12;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    v14 = *(a1 + 8);
    v13 = a1 + 8;
    v12 = v14;
    if (!v14)
    {
      v15 = 0;
      goto LABEL_12;
    }

    (*(v12 + 16))(v12, 0, 0);
    goto LABEL_11;
  }

LABEL_13:

  return v10;
}

void sub_1059C(uint64_t a1)
{
  v2 = *(a1 + 16);
  voucher_adopt();
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = [[NSString alloc] initWithFormat:@"Device did not respond to proprietary command."];
    v5 = [NSError alloc];
    v8[0] = NSLocalizedDescriptionKey;
    v8[1] = NSLocalizedRecoverySuggestionErrorKey;
    v9[0] = v4;
    v9[1] = @"Try again.";
    v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
    v7 = [v5 initWithDomain:@"JoyConErrorDomain" code:33 userInfo:v6];

    (*(*(a1 + 8) + 16))();
    v3 = *(a1 + 8);
  }

  *(a1 + 8) = 0;
}

void sub_10720(uint64_t a1)
{
  v2 = *(a1 + 16);
  voucher_adopt();
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = [[NSString alloc] initWithFormat:@"Device not active."];
    v5 = [NSError alloc];
    v8 = NSLocalizedDescriptionKey;
    v9 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [v5 initWithDomain:@"JoyConErrorDomain" code:31 userInfo:v6];

    (*(*(a1 + 8) + 16))();
    v3 = *(a1 + 8);
  }

  *(a1 + 8) = 0;
}

void sub_10E34(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 1000);
    if (v2)
    {
      v3 = *(a1 + 1008);
      v4 = *(a1 + 1008);
      *(a1 + 1008) = 0;
      *(a1 + 1016) = 0;

      *(a1 + 1000) = 0;
      dispatch_source_cancel(v3);
      sub_10720(v2);
      sub_148A4(v2, v3);
    }

    sub_16180(a1);
  }
}

void sub_10ED0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = _os_activity_create(&dword_0, "Proprietary Command Timeout", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &v7);
    v4 = *(WeakRetained + 125);
    v5 = *(WeakRetained + 126);
    if (v4 == *(a1 + 40))
    {
      v6 = *(WeakRetained + 126);
      *(WeakRetained + 126) = 0;
      *(WeakRetained + 127) = 0;

      *(WeakRetained + 125) = 0;
      dispatch_source_cancel(v5);
      sub_1059C(v4);

      free(v4);
    }

    os_activity_scope_leave(&v7);
  }
}

void sub_10FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  os_activity_scope_leave(&a9);

  _Unwind_Resume(a1);
}

void sub_10FE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v8)
  {
    v13 = sub_10A8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_161F0();
    }

    v11 = *(a1 + 32);
    v12 = v7;
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    (*(v11 + 16))(v11, v9, v12);
    goto LABEL_14;
  }

  v10 = sub_10A8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_16234();
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

void sub_1112C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10A8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_16270();
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_11224;
    v5[3] = &unk_24A60;
    v6 = v3;
    [a1 enqueueProprietaryCommand:3 expectsResponse:1 data:0 length:0 replyHandler:v5];
  }
}

void sub_11224(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v8)
  {
    v13 = sub_10A8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_162AC();
    }

    v11 = *(a1 + 32);
    v12 = v7;
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    (*(v11 + 16))(v11, v9, v12);
    goto LABEL_14;
  }

  v10 = sub_10A8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_162F0();
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

void sub_11368(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v9 = sub_10A8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v6 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1632C();
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v6);
    }
  }

  else
  {
    v7 = sub_10A8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_16370();
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, 1, 0);
    }
  }
}

void *sub_114A8(char a1, const void *a2, size_t a3, void *a4, int a5)
{
  v9 = a4;
  if (a3 <= 0x26)
  {
    v10 = 38;
  }

  else
  {
    v10 = a3;
  }

  v11 = malloc_type_calloc(1uLL, v10 + 48, 0x10A0040D4F60B96uLL);
  v12 = [v9 copy];
  v13 = v11[1];
  v11[1] = v12;

  v14 = voucher_copy();
  v15 = v11[2];
  v11[2] = v14;

  v11[3] = a3;
  *(v11 + 32) = 1;
  *(v11 + 42) = a1;
  if (a3)
  {
    memmove(v11 + 43, a2, a3);
  }

  if (a5)
  {
    v11[3] = v10;
  }

  return v11;
}

id sub_11588(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 16);
  voucher_adopt();
  v5 = sub_10A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_163AC(a1);
  }

  *(a1 + 33) = [v3 currentRumbleData];
  *(a1 + 41) = v6;
  v7 = sub_10A8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_16420((a1 + 32), a1);
  }

  sub_14294(v3);
  v8 = *(a1 + 32);
  kdebug_trace();
  v9 = [v3 device];
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v21 = 0;
  v12 = [v9 setReport:a1 + 32 reportLength:v10 + 11 withIdentifier:v11 forType:1 error:&v21];
  v13 = v21;

  sub_14294(v3);
  [v13 code];
  kdebug_trace();
  if ((v12 & 1) == 0)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = [NSError alloc];
      v22[0] = NSLocalizedDescriptionKey;
      v22[1] = NSLocalizedFailureReasonErrorKey;
      v23[0] = @"Error sending report.";
      v16 = [v13 localizedDescription];
      v17 = [NSString stringWithFormat:@"%@", v16];
      v23[1] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
      v19 = [v15 initWithDomain:@"JoyConErrorDomain" code:12 userInfo:v18];

      (*(*(a1 + 8) + 16))();
      v14 = *(a1 + 8);
    }

    *(a1 + 8) = 0;
  }

  return v12;
}

void sub_1188C(uint64_t a1)
{
  v2 = *(a1 + 16);
  voucher_adopt();
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = [[NSString alloc] initWithFormat:@"Device did not respond to sub-command."];
    v5 = [NSError alloc];
    v8[0] = NSLocalizedDescriptionKey;
    v8[1] = NSLocalizedRecoverySuggestionErrorKey;
    v9[0] = v4;
    v9[1] = @"Try again.";
    v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
    v7 = [v5 initWithDomain:@"JoyConErrorDomain" code:13 userInfo:v6];

    (*(*(a1 + 8) + 16))();
    v3 = *(a1 + 8);
  }

  *(a1 + 8) = 0;
}

void sub_11A10(uint64_t a1)
{
  v2 = *(a1 + 16);
  voucher_adopt();
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = [[NSString alloc] initWithFormat:@"Device not active."];
    v5 = [NSError alloc];
    v8 = NSLocalizedDescriptionKey;
    v9 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [v5 initWithDomain:@"JoyConErrorDomain" code:11 userInfo:v6];

    (*(*(a1 + 8) + 16))();
    v3 = *(a1 + 8);
  }

  *(a1 + 8) = 0;
}

void sub_11B7C(uint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5)
{
  v9 = a5;
  if (!a1)
  {
    goto LABEL_13;
  }

  if (a4 >= 0x27)
  {
    v10 = [[NSString alloc] initWithFormat:@"Sub-command [%#x] with length [%zd bytes] > maxSubcommandLength [%zd bytes].", a2, a4, 38];
    v11 = [NSError alloc];
    v40 = NSLocalizedDescriptionKey;
    v41 = v10;
    v12 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v13 = [v11 initWithDomain:@"JoyConErrorDomain" code:17 userInfo:v12];

    if (!v9)
    {
LABEL_7:

      goto LABEL_13;
    }

    v14 = [a1 dispatchQueue];
    v15 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_120B8;
    block[3] = &unk_24A10;
    v35 = v9;
    v13 = v13;
    v34 = v13;
    dispatch_async(v14, block);

    goto LABEL_5;
  }

  if ((*(a1 + 696) & 1) == 0)
  {
    v19 = [[NSString alloc] initWithFormat:@"Device not active."];
    v20 = [NSError alloc];
    v38 = NSLocalizedDescriptionKey;
    v39 = v19;
    v21 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v13 = [v20 initWithDomain:@"JoyConErrorDomain" code:11 userInfo:v21];

    if (!v9)
    {
      goto LABEL_7;
    }

    v22 = [a1 dispatchQueue];
    v15 = v30;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_120D0;
    v30[3] = &unk_24A10;
    v32 = v9;
    v13 = v13;
    v31 = v13;
    dispatch_async(v22, v30);

    goto LABEL_5;
  }

  if (*(a1 + 1040) >= 0x65u)
  {
    v23 = [[NSString alloc] initWithFormat:@"Too many pending sub-commands."];
    v24 = [NSError alloc];
    v36 = NSLocalizedDescriptionKey;
    v37 = v23;
    v25 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v13 = [v24 initWithDomain:@"JoyConErrorDomain" code:19 userInfo:v25];

    if (!v9)
    {
      v16 = sub_10A8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        [v13 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1652C();
      }

      goto LABEL_6;
    }

    v26 = [a1 dispatchQueue];
    v15 = v27;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_120E8;
    v27[3] = &unk_24A10;
    v29 = v9;
    v13 = v13;
    v28 = v13;
    dispatch_async(v26, v27);

LABEL_5:
    v16 = v15[5];
LABEL_6:

    goto LABEL_7;
  }

  v17 = sub_114A8(a2, a3, a4, v9, *(a1 + 704));
  v18 = sub_10A8();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_164BC();
  }

  *v17 = 0;
  **(a1 + 1032) = v17;
  *(a1 + 1032) = v17;
  ++*(a1 + 1040);
  sub_F7F4(a1);
LABEL_13:
}

void sub_12100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = *(WeakRetained + 131);
    v4 = *(WeakRetained + 132);
    if (v3 == *(a1 + 40))
    {
      v5 = v6[132];
      v6[132] = 0;
      v6[133] = 0;

      v6[131] = 0;
      dispatch_source_cancel(v4);
      sub_1188C(v3);

      free(v3);
    }

    WeakRetained = v6;
  }
}

void sub_121E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = sub_10A8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_16600();
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v7);
    }
  }

  else
  {
    v8 = [v5 bytes];
    v9 = [v5 length];
    if (v9 <= 0xB)
    {
      v14 = [[NSString alloc] initWithFormat:@"Payload for sub-command [%#x] response has length [%zu bytes], which is less than the expected length [%zu bytes].", 2, v9, 8];
      v15 = [NSError alloc];
      v20 = NSLocalizedDescriptionKey;
      v21 = v14;
      v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v17 = [v15 initWithDomain:@"JoyConErrorDomain" code:16 userInfo:v16];

      v18 = sub_10A8();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [v17 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_16600();
      }

      v19 = *(a1 + 32);
      if (v19)
      {
        (*(v19 + 16))(v19, 0, v17);
      }
    }

    else
    {
      v10 = sub_10A8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1657C();
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        (*(v11 + 16))(v11, v8, 0);
      }
    }
  }
}

void sub_12488(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v8)
  {
    v13 = sub_10A8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_16644();
    }

    v11 = *(a1 + 32);
    v12 = v7;
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    (*(v11 + 16))(v11, v9, v12);
    goto LABEL_14;
  }

  v10 = sub_10A8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_16688();
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

void sub_125CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v8)
  {
    v13 = sub_10A8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_166C4();
    }

    v11 = *(a1 + 32);
    v12 = v7;
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    (*(v11 + 16))(v11, v9, v12);
    goto LABEL_14;
  }

  v10 = sub_10A8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_16708();
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

void sub_12710(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = sub_10A8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_167DC();
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v7);
    }
  }

  else
  {
    v8 = [v5 bytes];
    v9 = [v5 length];
    if (v9 <= 4)
    {
      v14 = [[NSString alloc] initWithFormat:@"Payload for sub-command [%#x] response has length [%zu bytes], which is less than the expected length [%zu bytes].", 16, v9, 8];
      v15 = [NSError alloc];
      v25 = NSLocalizedDescriptionKey;
      v26 = v14;
      v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v11 = [v15 initWithDomain:@"JoyConErrorDomain" code:16 userInfo:v16];

      v17 = sub_10A8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [v11 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_167DC();
      }

      v18 = *(a1 + 32);
      if (v18)
      {
        (*(v18 + 16))(v18, 0, v11);
      }

      goto LABEL_9;
    }

    if (*v8 != *(a1 + 40))
    {
      v19 = [[NSString alloc] initWithFormat:@"Received reply for a different read SPI flash request: address = %#.4x, length = %u.", *v8, *(v8 + 4)];
      v20 = [NSError alloc];
      v23[0] = NSLocalizedDescriptionKey;
      v23[1] = NSLocalizedRecoverySuggestionErrorKey;
      v24[0] = v19;
      v24[1] = @"Try again.";
      v21 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
      v11 = [v20 initWithDomain:@"JoyConErrorDomain" code:15 userInfo:v21];

      v22 = *(a1 + 32);
      if (v22)
      {
        (*(v22 + 16))(v22, 0, v11);
      }

      goto LABEL_9;
    }

    v10 = sub_10A8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_16744(v8);
    }

    if (*(a1 + 32))
    {
      v11 = [v5 subdataWithRange:{5, v9 - 5}];
      (*(*(a1 + 32) + 16))();
LABEL_9:
    }
  }
}

void sub_12AD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v8)
  {
    v13 = sub_10A8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_16820();
    }

    v11 = *(a1 + 32);
    v12 = v7;
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    (*(v11 + 16))(v11, v9, v12);
    goto LABEL_14;
  }

  v10 = sub_10A8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_16864();
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

void sub_12C18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v8)
  {
    v13 = sub_10A8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_168A0();
    }

    v11 = *(a1 + 32);
    v12 = v7;
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    (*(v11 + 16))(v11, v9, v12);
    goto LABEL_14;
  }

  v10 = sub_10A8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_168E4();
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

void sub_12D5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v8)
  {
    v13 = sub_10A8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_16920();
    }

    v11 = *(a1 + 32);
    v12 = v7;
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    (*(v11 + 16))(v11, v9, v12);
    goto LABEL_14;
  }

  v10 = sub_10A8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_16964();
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

void sub_13134(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_132D0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_13308(float a1, float a2)
{
  if (a1 == 0.0 && a2 == 0.0)
  {
    return 1077936384;
  }

  v3 = (a2 * 200.0) & 0xFFFE;
  if (v3 >= 0xC8)
  {
    v3 = 200;
  }

  return (v3 << 8) & 0xFFFFFF | ((((a1 * 100.0) + 128.0) >> 1) << 24) | 0x44009C;
}

__n64 sub_139B4(__int16 a1, __int16 a2)
{
  v2 = (a1 - 0x7FFF) / 32767.0;
  v3 = (a2 ^ 0x7FFF) / 32767.0;
  v4 = sqrtf((v3 * v3) + (v2 * v2));
  v5 = 0.0;
  result.n64_u32[0] = 0;
  if (v4 >= 0.2)
  {
    v7 = ((v4 + -0.2) / 0.3) / v4;
    v8 = v2 * v7;
    if ((v2 * v7) < -1.0)
    {
      v8 = -1.0;
    }

    result.n64_f32[0] = fminf(v8, 1.0);
    v9 = v3 * v7;
    if (v9 < -1.0)
    {
      v9 = -1.0;
    }

    v5 = fminf(v9, 1.0);
  }

  result.n64_f32[1] = v5;
  return result;
}

__n64 sub_13A50(__int16 a1, __int16 a2, _WORD *a3, uint64_t a4)
{
  v4 = (a1 - *a3);
  if (v4 <= -a3[2])
  {
    v4 = -a3[2];
  }

  if (v4 >= a3[4])
  {
    v5 = a3[4];
  }

  else
  {
    v5 = v4;
  }

  if ((a2 - a3[1]) <= -a3[3])
  {
    v6 = -a3[3];
  }

  else
  {
    v6 = (a2 - a3[1]);
  }

  if (v6 >= a3[5])
  {
    v6 = a3[5];
  }

  v7 = v5;
  v8 = v6;
  v9 = sqrtf((v8 * v8) + (v7 * v7));
  v10 = *(a4 + 8);
  if (v10 <= 1)
  {
    v10 = 1;
  }

  v11 = v10;
  v12 = 0.0;
  v13 = 0.0;
  if (v9 >= v10)
  {
    v14 = fabsf(v8 / v9);
    v15 = (*(a4 + 2) - v10);
    v16 = fabsf(v7 / v9);
    if ((v5 & 0x8000u) == 0)
    {
      v17 = -v11;
    }

    else
    {
      v17 = v11;
    }

    v13 = (v7 + (v17 * v16)) / v15;
    if ((v6 & 0x8000) != 0)
    {
      v18 = v8 + (v11 * v14);
    }

    else
    {
      v18 = v8 + (-v11 * v14);
    }

    v12 = v18 / v15;
  }

  v19 = -1.0;
  if (v13 >= -1.0)
  {
    v20 = v13;
  }

  else
  {
    v20 = -1.0;
  }

  result.n64_f32[0] = fminf(v20, 1.0);
  if (v12 >= -1.0)
  {
    v19 = v12;
  }

  result.n64_u32[1] = fminf(v19, 1.0);
  return result;
}

void sub_13B78(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_13B98(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_13BE4(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_13C68(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_13CA0()
{
  *(v0 + 26) = 0;
  *(v0 + 34) = 0;
  *(v0 + 42) = 0;
  *(v0 + 30) = -1;
  *(v0 + 34) = -1;
  *(v0 + 42) = -1;
  *(v0 + 46) = -1;
}

BOOL sub_13D08(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_13D50(dispatch_time_t when@<X3>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a2 + 32) = a3;

  dispatch_after(when, v4, a4);
}

void sub_13D70(uint64_t a1)
{
  v2 = *(a1 + 16);
}

id sub_13DE0()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_5E68();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_5E7C();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_13DB8();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_13DCC();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_5E28();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_5E3C();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_5E90();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_5EA4();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_13D90();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_13DA4();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_14108();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_1411C();
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

void sub_141E4(uint64_t a1, void *a2, int a3)
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

uint64_t sub_14294(uint64_t result)
{
  if (result)
  {
    return *(result + 656);
  }

  return result;
}

void sub_14348(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_1442C(uint64_t a1, void *a2)
{
  sub_5018(a1, a2);
  [v3 type];
  sub_4FF0();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_4FD0();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_365C;
  *(v2 + 24) = &unk_24660;
  *(v2 + 32) = v5;
  sub_5040(v3);
}

void sub_144DC(uint64_t a1, void *a2)
{
  sub_5018(a1, a2);
  [v3 type];
  sub_4FF0();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_4FD0();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_36DC;
  *(v2 + 24) = &unk_24660;
  *(v2 + 32) = v5;
  sub_5040(v3);
}

uint64_t sub_1458C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 656);
  }

  return kdebug_trace();
}

id sub_14664(id result)
{
  if (result)
  {
    v1 = result;
    [result setLowPower:0];
    [v1 refreshDeviceInfo];
    [v1 refreshCalibrationData];

    return [v1 refreshLowPowerSetting];
  }

  return result;
}

id sub_146B8(id result)
{
  v1 = *(result + 4);
  if (v1)
  {
    [*(result + 4) setLowPower:0];
    [v1 refreshDeviceInfo];
    [v1 refreshCalibrationData];

    return [v1 refreshLowPowerSetting];
  }

  return result;
}

uint64_t sub_14718(uint64_t result, float a2)
{
  if (result)
  {
    v2 = a2;
    if (a2 >= 0.035863824)
    {
      if (v2 >= 0.047502641)
      {
        if (v2 >= 0.065562582)
        {
          if (v2 >= 0.096642284)
          {
            if (v2 >= 0.128740086)
            {
              if (v2 >= 0.187285343)
              {
                if (v2 >= 0.263212876)
                {
                  if (v2 >= 0.364076932)
                  {
                    if (v2 >= 0.510491764)
                    {
                      if (v2 >= 0.713429339)
                      {
                        if (a2 >= 1.0)
                        {
                          return 1;
                        }

                        else
                        {
                          return 2;
                        }
                      }

                      else
                      {
                        return 3;
                      }
                    }

                    else
                    {
                      return 4;
                    }
                  }

                  else
                  {
                    return 5;
                  }
                }

                else
                {
                  return 6;
                }
              }

              else
              {
                return 7;
              }
            }

            else
            {
              return 8;
            }
          }

          else
          {
            return 9;
          }
        }

        else
        {
          return 10;
        }
      }

      else
      {
        return 11;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_14824(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 971);
    *(v1 + 971) = result + 1;
    if ((result + 1) >= 0x10u)
    {
      *(v1 + 971) = 0;
    }
  }

  return result;
}

id sub_14858(void *a1)
{
  [a1 setLowPower:0];
  [a1 refreshDeviceInfo];
  [a1 refreshCalibrationData];

  return [a1 refreshLowPowerSetting];
}

void sub_148A4(id *a1, void *a2)
{
  free(a1);
}

void sub_148FC(uint64_t a1)
{
  v2 = *(a1 + 1024);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_11A10(v2);

      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  *(a1 + 1024) = 0;
  *(a1 + 1032) = a1 + 1024;
}

void sub_14A3C()
{
  sub_13BC0();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_14B14()
{
  sub_13BC0();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_14BEC()
{
  sub_13BC0();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_14CC4()
{
  sub_13BC0();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_14D34(NSObject *a1)
{
  if (sub_13D08(a1))
  {
    sub_13B78(&dword_0, v2, v3, "Read low-power setting has length [%{bytes}zu], which is less than the expected length [%{bytes}zu]. Ignoring.", v4, v5, v6, v7, 0);
  }
}

void sub_14DCC()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Failed to read low-power setting. %{public}@", v5);
}

void sub_14E90()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Failed to retrieve device info. %{public}@", v5);
}

void sub_14ED4()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_14F10()
{
  sub_13CE0();
  if (sub_13D08(v1))
  {
    sub_13B50();
    sub_13B78(&dword_0, v2, v3, "Read serial number has length [%{bytes}zu], which is less than the expected length [%{bytes}zu]. Ignoring.", v4, v5, v6, v7, v8);
  }
}

void sub_14F9C()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Failed to read device serial number. %{public}@", v5);
}

void sub_14FE0()
{
  sub_13CE0();
  if (sub_13D08(v1))
  {
    sub_13B50();
    sub_13B78(&dword_0, v2, v3, "Read body color data has length [%{bytes}zu], which is less than the expected length [%{bytes}zu]. Ignoring.", v4, v5, v6, v7, v8);
  }
}

void sub_1506C()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Failed to read color data. %{public}@", v5);
}

void sub_150B0()
{
  sub_13CE0();
  if (sub_13D08(v1))
  {
    sub_13B50();
    sub_13B78(&dword_0, v2, v3, "Read stick factory calibration data has length [%{bytes}zu], which is less than the expected length [%{bytes}zu]. Ignoring.", v4, v5, v6, v7, v8);
  }
}

void sub_1513C()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Failed to read stick factory calibration data. %{public}@", v5);
}

void sub_15180()
{
  sub_13CE0();
  if (sub_13D08(v1))
  {
    sub_13B50();
    sub_13B78(&dword_0, v2, v3, "Read stick user calibration data has length [%{bytes}zu], which is less than the expected length [%{bytes}zu]. Ignoring.", v4, v5, v6, v7, v8);
  }
}

void sub_1520C()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Failed to read stick user calibration data. %{public}@", v5);
}

void sub_15250()
{
  sub_13CE0();
  if (sub_13D08(v1))
  {
    sub_13B50();
    sub_13B78(&dword_0, v2, v3, "Read left stick parameters data has length [%{bytes}zu], which is less than the expected length [%{bytes}zu]. Ignoring.", v4, v5, v6, v7, v8);
  }
}

void sub_152DC()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Failed to read left stick parameters data. %{public}@", v5);
}

void sub_15320()
{
  sub_13CE0();
  if (sub_13D08(v1))
  {
    sub_13B50();
    sub_13B78(&dword_0, v2, v3, "Read right stick parameters data has length [%{bytes}zu], which is less than the expected length [%{bytes}zu]. Ignoring.", v4, v5, v6, v7, v8);
  }
}

void sub_153AC()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Failed to read right stick parameters data. %{public}@", v5);
}

void sub_153F0()
{
  sub_13C14();
  if (sub_13D08(v2))
  {
    sub_13B64();
    sub_13CD4();
    _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);
  }

  *v0 = v1;
}

void sub_154F4()
{
  sub_13C14();
  if (sub_13D08(v2))
  {
    sub_13B64();
    sub_13CD4();
    _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);
  }

  *v0 = v1;
}

void sub_15590()
{
  sub_13C14();
  if (sub_13D08(v2))
  {
    sub_13B64();
    sub_13CD4();
    _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);
  }

  *v0 = v1;
}

void sub_1562C()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Failed to force USB. %{public}@", v5);
}

void sub_15670()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_156AC()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Failed to handshake. %{public}@", v5);
}

void sub_156F0()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1572C(uint64_t a1)
{
  v1 = *(a1 + 14);
  v2 = *(a1 + 13);
  sub_13BD0();
  sub_13BB4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x14u);
}

void sub_157B8()
{
  sub_13C90();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 14);
    v4 = *(v0 + 42);
    sub_13BD0();
    sub_13C84();
    _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0xEu);
  }
}

void sub_15858(uint64_t a1, void ***a2)
{
  sub_13C24(a1, a2);
  v3[1] = 3221225472;
  v3[2] = sub_F9D0;
  v3[3] = &unk_246A8;
  sub_13D50(v5, v3, v4, v6);
}

void sub_158A8()
{
  sub_13C14();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v2 + 14);
    sub_13C08();
    sub_13CD4();
    _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 8u);
  }

  *v0 = v1;
}

void sub_15944()
{
  sub_13D30();

  free(v1);
}

void sub_15980(uint64_t a1)
{
  v1 = *(a1 + 1);
  sub_13C08();
  sub_13BB4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_159F4()
{
  sub_13C90();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 1);
    v4 = *(v0 + 41);
    sub_13BD0();
    sub_13C84();
    _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0xEu);
  }
}

void sub_15A94(uint64_t a1, void ***a2)
{
  sub_13C24(a1, a2);
  v3[1] = 3221225472;
  v3[2] = sub_FDCC;
  v3[3] = &unk_246A8;
  sub_13D50(v5, v3, v4, v6);
}

void sub_15AE4()
{
  sub_13C14();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *v2;
    sub_13C08();
    sub_13CD4();
    _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 8u);
  }

  *v0 = v1;
}

void sub_15B80()
{
  sub_13D30();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_13CD4();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 8u);
  }

  sub_13CA0();
}

void sub_15C20()
{
  sub_13C90();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    sub_13B64();
    sub_13D3C();
    sub_13C84();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0x20u);
  }
}

void sub_15CC0()
{
  sub_13D30();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_13CD4();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 8u);
  }

  sub_13CA0();
}

void sub_15D60()
{
  sub_13C90();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    sub_13B64();
    sub_13D3C();
    sub_13C84();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0x20u);
  }
}

void sub_15E00(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_13C08();
  sub_13BB4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_15E74()
{
  sub_13CE0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v2 = *v0;
    sub_13C08();
    sub_13C84();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 8u);
  }
}

void sub_15F08(uint64_t a1)
{
  sub_13D70(a1);

  free(v3);
  [v2 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_13C48();
  v1[1] = 3221225472;
  v1[2] = sub_121E0;
  v1[3] = &unk_246A8;
  v1[4] = v2;
  dispatch_async(v4, v1);
}

void sub_15F88(uint64_t a1)
{
  sub_13D70(a1);

  free(v3);
  [v2 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_13C48();
  v1[1] = 3221225472;
  v1[2] = sub_10FE0;
  v1[3] = &unk_246A8;
  v1[4] = v2;
  dispatch_async(v4, v1);
}

void sub_16008(uint64_t a1)
{
  v1 = *(a1 + 41);
  sub_13C08();
  sub_13BB4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1607C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*(a1 + 32) + 2);
  sub_13CEC();
  sub_13BB4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
}

void sub_16110()
{
  sub_13BC0();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_16180(uint64_t a1)
{
  v2 = *(a1 + 976);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_10720(v2);

      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  *(a1 + 976) = 0;
  *(a1 + 984) = a1 + 976;
}

void sub_161F0()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Handshake Error: %{public}@", v5);
}

void sub_16234()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_16270()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_162AC()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Set High Speed Error: %{public}@", v5);
}

void sub_162F0()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1632C()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Force USB Error: %{public}@", v5);
}

void sub_16370()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_163AC(uint64_t a1)
{
  v1 = *(a1 + 42);
  sub_13C08();
  sub_13BB4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_16420(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24) + 11;
  sub_13CEC();
  sub_13D20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x30u);
}

void sub_164BC()
{
  sub_13BC0();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1652C()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%{public}@", v4, 0xCu);
}

void sub_16600()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Device Info Error: %{public}@", v5);
}

void sub_16644()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Set Input Report Mode Error: %{public}@", v5);
}

void sub_16688()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_166C4()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Set Low Power State Error: %{public}@", v5);
}

void sub_16708()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_16744(unsigned int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  sub_13BD0();
  sub_13BB4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Eu);
}

void sub_167DC()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Read SPI Flash Error: %{public}@", v5);
}

void sub_16820()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Set Player Lights Error: %{public}@", v5);
}

void sub_16864()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_168A0()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Set IMU Enabled Error: %{public}@", v5);
}

void sub_168E4()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_16920()
{
  sub_13BF0();
  sub_13BE4(v1, v2, 5.8381e-34);
  sub_13B98(&dword_0, v3, v4, "Set Vibration Enabled Error: %{public}@", v5);
}

void sub_16964()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_169A0()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_169DC()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_16A18()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_16A54(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_13D20();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_16AD8()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_16B14()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_16B50()
{
  sub_13BFC();
  sub_13BB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}