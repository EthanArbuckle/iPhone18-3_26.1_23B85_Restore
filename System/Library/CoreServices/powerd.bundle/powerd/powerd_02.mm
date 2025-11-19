uint64_t sub_10002E994(const __CFDictionary *a1)
{
  valuePtr = 0;
  if (CFDictionaryGetValue(a1, @"ExternalConnected") == kCFBooleanFalse)
  {
    v5 = 2;
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
    {
      sub_100064934();
    }
  }

  else
  {
    Value = CFDictionaryGetValue(a1, @"AdapterDetails");
    if (Value)
    {
      v3 = CFDictionaryGetValue(Value, @"FamilyCode");
      TypeID = CFNumberGetTypeID();
      if (v3 && CFGetTypeID(v3) == TypeID)
      {
        CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
        return (valuePtr + 536723453) < 2;
      }

      else
      {
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
        {
          sub_1000648CC();
        }

        return 0;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
      {
        sub_100064900();
      }

      return 2;
    }
  }

  return v5;
}

void sub_10002EAD8(xpc_object_t object, void *a2)
{
  if (object && a2)
  {
    if (qword_1000ACAA8)
    {
      xpc_retain(object);
      xpc_retain(a2);
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
      {
        sub_1000649D0();
      }

      v4[0] = _NSConcreteStackBlock;
      v4[1] = 0x40000000;
      v4[2] = sub_10002ECE4;
      v4[3] = &unk_1000998D0;
      v4[4] = a2;
      v4[5] = object;
      dispatch_async(qword_1000ACAA8, v4);
    }

    else
    {
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
      {
        sub_100064A04();
      }

      sub_10002EC20(object, a2, "batteryHeatMapData", 0);
    }
  }

  else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_100064968();
  }
}

void sub_10002EC20(_xpc_connection_s *a1, xpc_object_t original, const char *a3, void *a4)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v8 = reply;
    if (a4)
    {
      a4 = _CFXPCCreateXPCObjectFromCFObject();
    }

    xpc_dictionary_set_value(v8, a3, a4);
    xpc_connection_send_message(a1, v8);
    if (a4)
    {
      xpc_release(a4);
    }

    xpc_release(v8);
  }

  else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_100064A38();
  }
}

void sub_10002ECE4(uint64_t a1)
{
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "batteryHeatMapData");
  if (uint64 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_10002ED9C(uint64);
  }

  sub_10002EC20(*(a1 + 40), *(a1 + 32), "batteryHeatMapData", v3);
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
  {
    sub_100064A6C();
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v3)
  {
LABEL_6:
    CFRelease(v3);
  }

LABEL_7:
  xpc_release(*(a1 + 40));
  xpc_release(*(a1 + 32));
}

const __CFDictionary *sub_10002ED9C(unsigned int a1)
{
  v1 = sub_10002F26C(a1);
  result = CFPreferencesCopyMultiple(0, v1, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  if (result)
  {
    v3 = result;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, result);
    CFRelease(v3);
    return MutableCopy;
  }

  return result;
}

void sub_10002EE08(xpc_object_t object, void *a2)
{
  if (object && a2)
  {
    if (qword_1000ACAA8)
    {
      xpc_retain(object);
      xpc_retain(a2);
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
      {
        sub_100064AE0();
      }

      v4[0] = _NSConcreteStackBlock;
      v4[1] = 0x40000000;
      v4[2] = sub_10002EF50;
      v4[3] = &unk_1000998F0;
      v4[4] = object;
      v4[5] = a2;
      dispatch_async(qword_1000ACAA8, v4);
    }

    else
    {
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
      {
        sub_100064A04();
      }

      sub_10002EC20(object, a2, "batteryCycleCountData", 0);
    }
  }

  else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_100064968();
  }
}

void sub_10002EF50(uint64_t a1)
{
  v2 = _CFPreferencesCopyMultipleWithContainer();
  sub_10002EC20(*(a1 + 32), *(a1 + 40), "batteryCycleCountData", v2);
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
  {
    sub_100064B14();
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    CFRelease(v2);
  }

LABEL_4:
  xpc_release(*(a1 + 40));
  xpc_release(*(a1 + 32));
}

void sub_10002F008(void *a1, void *a2)
{
  if (a1 && a2)
  {
    if (qword_1000ACAA8)
    {
      if (sub_100011DF8(a1, @"com.apple.private.iokit.batterydata", 0))
      {
        xpc_retain(a1);
        xpc_retain(a2);
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
        {
          sub_100064B7C();
        }

        v4[0] = _NSConcreteStackBlock;
        v4[1] = 0x40000000;
        v4[2] = sub_10002F190;
        v4[3] = &unk_100099910;
        v4[4] = a1;
        v4[5] = a2;
        dispatch_async(qword_1000ACAA8, v4);
        return;
      }

      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
      {
        sub_100064B48();
      }
    }

    else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
    {
      sub_100064A04();
    }

    sub_10002EC20(a1, a2, "batteryKioskModeData", 0);
    return;
  }

  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_100064968();
  }
}

void sub_10002F190(uint64_t a1)
{
  v2 = _CFPreferencesCopyMultipleWithContainer();
  sub_10002EC20(*(a1 + 32), *(a1 + 40), "batteryKioskModeData", v2);
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
  {
    sub_100064BB0();
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    CFRelease(v2);
  }

LABEL_4:
  xpc_release(*(a1 + 40));
  xpc_release(*(a1 + 32));
}

const __CFString *sub_10002F26C(unsigned int a1)
{
  if (a1 >= 3 && os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_100064BE4();
  }

  v2 = @"com.apple.batterydata.discharging";
  if (a1 == 1)
  {
    v2 = @"com.apple.batterydata.wireless";
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return @"com.apple.batterydata.wired";
  }
}

void sub_10002F760(char a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F7D8;
  block[3] = &unk_100099930;
  v2 = a1;
  dispatch_async(qword_1000ACAD0, block);
}

void sub_10002F7D8(uint64_t a1)
{
  v2 = qword_1000AB7D8;
  if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v24[0] = 67109120;
    v24[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "chargeControl charge to full requested:%d\n", v24, 8u);
  }

  v4 = *(a1 + 32);
  byte_1000ACAD8 = *(a1 + 32);
  dispatch_assert_queue_V2(qword_1000ACAD0);
  v5 = qword_1000ACAF0;
  if (!qword_1000ACAF0)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:1];
    v7 = qword_1000ACAF0;
    qword_1000ACAF0 = v6;

    v5 = qword_1000ACAF0;
  }

  v8 = [v5 count];
  v9 = 0;
  if (v8)
  {
    while (1)
    {
      v10 = [qword_1000ACAF0 objectAtIndexedSubscript:v9];
      v11 = [v10 objectForKey:@"chargeSocLimitOverrideName"];
      v12 = [v11 compare:@"PowerD-BatteryGaugingMitigation"];

      if (!v12)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_10;
      }
    }
  }

  if (v9 == v8)
  {
LABEL_10:
    v13 = +[NSMutableDictionary dictionary];
    v14 = [NSNumber numberWithLongLong:0];
    [v13 setObject:v14 forKey:@"chargeSocLimitOverrideOwner"];

    [v13 setObject:@"PowerD-BatteryGaugingMitigation" forKey:@"chargeSocLimitOverrideName"];
    v15 = [NSNumber numberWithBool:v4];
    [v13 setObject:v15 forKey:@"chargeSocLimitOverrideEnable"];

    v16 = [NSNumber numberWithBool:0];
    [v13 setObject:v16 forKey:@"chargeSocLimitOverrideTerminated"];

    [qword_1000ACAF0 addObject:v13];
  }

  else
  {
    v17 = [qword_1000ACAF0 objectAtIndexedSubscript:v9];
    [v17 setObject:@"PowerD-BatteryGaugingMitigation" forKeyedSubscript:@"chargeSocLimitOverrideName"];

    v18 = [NSNumber numberWithBool:v4];
    v19 = [qword_1000ACAF0 objectAtIndexedSubscript:v9];
    [v19 setObject:v18 forKeyedSubscript:@"chargeSocLimitOverrideEnable"];

    v20 = [NSNumber numberWithLongLong:0];
    v21 = [qword_1000ACAF0 objectAtIndexedSubscript:v9];
    [v21 setObject:v20 forKeyedSubscript:@"chargeSocLimitOverrideOwner"];

    v13 = [NSNumber numberWithBool:0];
    v22 = [qword_1000ACAF0 objectAtIndexedSubscript:v9];
    [v22 setObject:v13 forKeyedSubscript:@"chargeSocLimitOverrideTerminated"];
  }

  sub_10002FB64(0, 0);
  v23 = *(a1 + 32);
  dispatch_assert_queue_V2(qword_1000ACAD0);
  if (qword_1000ACB00 != -1)
  {
    sub_100064C60();
  }

  notify_set_state(dword_1000AB128, v23);
  sub_10005FA68(qword_1000AB7D8, "com.apple.system.powersources.chargingtofulloverride");
}

void sub_10002FB64(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_assert_queue_V2(qword_1000ACAD0);
  if (![qword_1000ACAE0 count] || !objc_msgSend(qword_1000ACAE0, "count"))
  {
    v8 = 0;
    v16 = 0;
    goto LABEL_21;
  }

  v21 = v4;
  v22 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 100;
  do
  {
    v11 = [qword_1000ACAE0 objectAtIndex:v6];
    if ([v11 socLimit] > 0x63)
    {
      goto LABEL_15;
    }

    v12 = [v11 socLimit];
    v13 = [v11 socLimit];
    v14 = v13;
    if (v12 < v10)
    {
      v9 = [v11 isEOC];
      v10 = v14;
LABEL_7:
      v15 = [v11 reason];

      v8 = v15;
      goto LABEL_10;
    }

    if (v13 == v10)
    {
      v9 |= [v11 isEOC];
      if ([v11 isEOC])
      {
        goto LABEL_7;
      }
    }

LABEL_10:
    if (v5)
    {
      v5 = 1;
      if ((v7 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v5 = [v11 drain];
      if ((v7 & 1) == 0)
      {
LABEL_12:
        v7 = [v11 noChargeToFull];
        goto LABEL_15;
      }
    }

    v7 = 1;
LABEL_15:

    ++v6;
  }

  while (v6 < [qword_1000ACAE0 count]);
  if (v10 >= 0x64)
  {
    v16 = 0;
  }

  else
  {
    v16 = [[ChargeCtrlPolicy alloc] initWithSocLimit:v10 andDrain:v5 & 1 andNoChargeToFull:v7 & 1 andIsEOC:v9 & 1 andReason:v8 andOwner:0];
  }

  v4 = v21;
  v3 = v22;
LABEL_21:
  v17 = qword_1000ACAD0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030880;
  block[3] = &unk_100099278;
  v24 = v16;
  v25 = v3;
  v26 = v4;
  v18 = v4;
  v19 = v3;
  v20 = v16;
  dispatch_barrier_async(v17, block);
}

void sub_10002FDC0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = qword_1000ACAD0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10002FED4;
      v7[3] = &unk_1000992A0;
      v8 = v3;
      v9 = v5;
      dispatch_async(v6, v7);
    }

    else if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
    {
      sub_100063080();
    }
  }

  else if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
  {
    sub_100064C88();
  }
}

void sub_10002FED4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  dispatch_assert_queue_V2(qword_1000ACAD0);
  if (qword_1000ACB10 != -1)
  {
    sub_100064CC4();
  }

  reply = xpc_dictionary_create_reply(v3);
  if (reply)
  {
    v5 = -536870206;
    if (!sub_100011DF8(v2, @"com.apple.private.iokit.soc-limit", 0))
    {
      v7 = 0;
      v9 = 0;
      v5 = -536870207;
      goto LABEL_26;
    }

    if (byte_1000ACB08 != 1)
    {
      v7 = 0;
      v9 = 0;
      v5 = -536870201;
      goto LABEL_26;
    }

    if (byte_1000ACAE8 != 1)
    {
      v7 = 0;
      v9 = 0;
      v5 = -536870187;
      goto LABEL_26;
    }

    v6 = xpc_dictionary_get_dictionary(v3, "chargeSocLimit");
    if (v6)
    {
      v7 = v6;
      v8 = _CFXPCCreateCFObjectFromXPCObject();
      if (v8)
      {
        v9 = v8;
        pid = xpc_connection_get_pid(v2);
        v11 = [v9 objectForKeyedSubscript:@"chargeSocLimitAction"];
        v12 = [v11 unsignedIntValue];

        v13 = qword_1000AB7D8;
        if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v18) = 67109378;
          HIDWORD(v18) = pid;
          LOWORD(v19) = 2112;
          *(&v19 + 2) = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "received SOC limit from %d: %@\n", &v18, 0x12u);
        }

        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v14 = qword_1000ACAD0;
            v18 = _NSConcreteStackBlock;
            *&v19 = 3221225472;
            v15 = sub_10003138C;
            goto LABEL_34;
          }

          if (v12 != 4)
          {
LABEL_26:
            sub_10001687C(v2, reply, v5);
LABEL_27:

            goto LABEL_28;
          }

          v16 = qword_1000ACAD0;
          v18 = _NSConcreteStackBlock;
          *&v19 = 3221225472;
          *(&v19 + 1) = sub_1000315EC;
          v20 = &unk_1000992A0;
          v21 = v2;
          v22 = reply;
          dispatch_async(v16, &v18);
        }

        else
        {
          if (v12 != 1)
          {
            if (v12 == 2)
            {
              v14 = qword_1000ACAD0;
              v18 = _NSConcreteStackBlock;
              *&v19 = 3221225472;
              v15 = sub_1000311F4;
LABEL_34:
              *(&v19 + 1) = v15;
              v20 = &unk_100099A40;
              v24 = pid;
              v21 = v9;
              v22 = v2;
              v23 = reply;
              v9 = v9;
              dispatch_async(v14, &v18);

              goto LABEL_35;
            }

            goto LABEL_26;
          }

          v17 = qword_1000ACAD0;
          v18 = _NSConcreteStackBlock;
          *&v19 = 3221225472;
          *(&v19 + 1) = sub_1000310C8;
          v20 = &unk_1000999D8;
          LODWORD(v23) = pid;
          v21 = v2;
          v22 = reply;
          dispatch_barrier_async(v17, &v18);
        }

LABEL_35:

        goto LABEL_27;
      }

      if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
      {
        sub_100064CD8();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
      {
        sub_100064D14();
      }

      v7 = 0;
    }

    v9 = 0;
    goto LABEL_26;
  }

  if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
  {
    sub_100063044();
  }

LABEL_28:
}

void sub_10003031C()
{
  v0 = os_log_create("com.apple.powerd", "charging");
  v1 = qword_1000AB7D8;
  qword_1000AB7D8 = v0;

  v2 = dispatch_queue_create("com.apple.private.powerd.chargeCtrlQ", 0);
  v3 = qword_1000ACAD0;
  qword_1000ACAD0 = v2;

  v4 = qword_1000ACAD0;

  dispatch_async(v4, &stru_100099950);
}

void sub_100030398(id a1)
{
  notify_register_dispatch("com.apple.system.powersources.source", &dword_1000ACADC, qword_1000ACAD0, &stru_100099990);
  v1 = CFPreferencesCopyMultiple(0, @"com.apple.powerd.charging", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  if (v1)
  {
    v2 = sub_100030640();
    v3 = [(__CFDictionary *)v1 objectForKeyedSubscript:@"bootSessionUUID"];
    v4 = [v2 caseInsensitiveCompare:v3];

    if (!v4)
    {
      v5 = qword_1000AB7D8;
      if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_DEBUG))
      {
        sub_100064D50(v1, v5);
      }

      v6 = [(__CFDictionary *)v1 objectForKeyedSubscript:@"policies"];
      v7 = [NSKeyedUnarchiver unarchiveObjectWithData:v6];
      v8 = qword_1000ACAE0;
      qword_1000ACAE0 = v7;

      sub_10002FB64(0, 0);
      if ([qword_1000ACAE0 count])
      {
        v9 = 0;
        do
        {
          v10 = [qword_1000ACAE0 objectAtIndex:v9];
          if (([v10 terminated] & 1) == 0)
          {
            sub_10003077C([v10 owner]);
          }

          ++v9;
        }

        while (v9 < [qword_1000ACAE0 count]);
      }
    }
  }

  byte_1000ACAE8 = 1;
}

void sub_100030528(id a1, int a2)
{
  if (IOPSDrawingUnlimitedPower())
  {
    v2 = qword_1000ACAD0;

    dispatch_barrier_async(v2, &stru_1000999B0);
  }
}

void sub_10003056C(id a1)
{
  dispatch_assert_queue_barrier(qword_1000ACAD0);
  v1 = [qword_1000ACAE0 count];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
LABEL_3:
    --v2;
    do
    {
      v4 = [qword_1000ACAE0 objectAtIndex:v2];
      if ([v4 terminated])
      {
        [qword_1000ACAE0 removeObject:v4];

        v3 = 1;
        if (v2)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }

      --v2;
    }

    while (v2 != -1);
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_10:
    v5 = qword_1000ACAD0;

    dispatch_async(v5, &stru_100099AB0);
  }
}

id sub_100030640()
{
  size = 0;
  if (sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0))
  {
    if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v0 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (sysctlbyname("kern.bootsessionuuid", v0, &size, 0, 0))
  {
    if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      sub_100064DC8();
    }

LABEL_7:
    v1 = 0;
    goto LABEL_8;
  }

  v1 = [NSString stringWithUTF8String:v0];
  free(v0);
  v3 = qword_1000AB7D8;
  if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_DEBUG))
  {
    sub_100064E38(v1, v3);
  }

LABEL_8:

  return v1;
}

void sub_10003077C(int a1)
{
  v2 = dispatch_source_create(&_dispatch_source_type_proc, a1, 0x80000000uLL, qword_1000ACAD0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100031A68;
  handler[3] = &unk_100099AD0;
  v7 = a1;
  dispatch_source_set_cancel_handler(v2, handler);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031BF4;
  v4[3] = &unk_100099210;
  v5 = v2;
  v3 = v2;
  dispatch_source_set_event_handler(v3, v4);
  dispatch_activate(v3);
}

void sub_100030880(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = v1;
  v5 = v2;
  dispatch_assert_queue_barrier(qword_1000ACAD0);
  v6 = qword_1000ACAF8;
  qword_1000ACAF8 = v3;
  v7 = v3;

  v8 = qword_1000ACAD0;
  *&v21 = _NSConcreteStackBlock;
  *(&v21 + 1) = 3221225472;
  v22 = sub_100030AE8;
  v23 = &unk_1000992A0;
  v24 = v4;
  v25 = v5;
  v9 = v4;
  v10 = v5;
  dispatch_async(v8, &v21);

  dispatch_assert_queue_V2(qword_1000ACAD0);
  v11 = [NSMutableDictionary alloc];
  v12 = [v11 initWithCapacity:{2, v21, *(&v21 + 1), v22, v23}];
  dispatch_assert_queue_V2(qword_1000ACAD0);
  v13 = [NSMutableArray alloc];
  v14 = [v13 initWithCapacity:{objc_msgSend(qword_1000ACAF0, "count")}];
  if ([qword_1000ACAF0 count])
  {
    v15 = 0;
    do
    {
      v16 = [qword_1000ACAF0 objectAtIndex:v15];
      v17 = [v16 copy];

      [v14 addObject:v17];
      ++v15;
    }

    while (v15 < [qword_1000ACAF0 count]);
  }

  [v12 setObject:v14 forKeyedSubscript:@"chargeSocLimitChargeOverride"];

  v18 = sub_100030D00();
  [v12 setObject:v18 forKeyedSubscript:@"chargeSocLimitChargeLimit"];

  v19 = qword_1000AB7D8;
  if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v21) = 138412290;
    *(&v21 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "OnHold And Override dict %@\n", &v21, 0xCu);
  }

  v20 = qword_1000ACAC8;
  qword_1000ACAC8 = v12;
}

void sub_100030AE8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  dispatch_assert_queue_V2(qword_1000ACAD0);
  v16 = 0;
  v4 = qword_1000ACAF8;
  if (byte_1000ACAD8 == 1)
  {
    v5 = [qword_1000ACAF8 noChargeToFull];
    v4 = qword_1000ACAF8;
    if (qword_1000ACAF8)
    {
      if ((v5 & 1) == 0)
      {
        v6 = qword_1000AB7D8;
        if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v18) = 1;
          v7 = "SOC limit policy suspend due to mitigation active:%d\n";
          v8 = v6;
          v9 = 8;
LABEL_14:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

LABEL_7:
      v10 = [v4 socLimit];
      v11 = [qword_1000ACAF8 drain];
      LOBYTE(v16) = v10;
      if ([qword_1000ACAF8 noChargeToFull])
      {
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }

      HIBYTE(v16) = v12 | v11;
      v13 = qword_1000AB7D8;
      if (!os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 138412290;
      v18 = qword_1000ACAF8;
      v7 = "SOC limit policy:%@\n";
      v8 = v13;
      v9 = 12;
      goto LABEL_14;
    }
  }

  else if (qword_1000ACAF8)
  {
    goto LABEL_7;
  }

  v14 = qword_1000AB7D8;
  if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v7 = "SOC limit disabled\n";
    v8 = v14;
    v9 = 2;
    goto LABEL_14;
  }

LABEL_15:
  v15 = sub_10005EEE4(1128811603, &v16, 2u);
  if (v15 && os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
  {
    sub_100064EB0();
  }

  sub_10001687C(v2, v3, v15);
}

id sub_100030D00()
{
  dispatch_assert_queue_V2(qword_1000ACAD0);
  v0 = [NSMutableArray alloc];
  v1 = [v0 initWithCapacity:{objc_msgSend(qword_1000ACAE0, "count") + 1}];
  if ([qword_1000ACAE0 count])
  {
    v2 = 0;
    do
    {
      v3 = [qword_1000ACAE0 objectAtIndex:v2];
      v4 = sub_100030DF8(v3);
      [v1 addObject:v4];

      ++v2;
    }

    while (v2 < [qword_1000ACAE0 count]);
  }

  if (qword_1000ACAF8)
  {
    v5 = sub_100030DF8(qword_1000ACAF8);
    [v1 addObject:v5];
  }

  return v1;
}

id sub_100030DF8(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [[NSMutableDictionary alloc] initWithCapacity:7];
    v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v1 owner]);
    [v2 setObject:v3 forKeyedSubscript:@"chargeSocLimitOwner"];

    v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v1 socLimit]);
    [v2 setObject:v4 forKeyedSubscript:@"chargeSocLimitSoc"];

    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 drain]);
    [v2 setObject:v5 forKeyedSubscript:@"chargeSocLimitDrain"];

    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 noChargeToFull]);
    [v2 setObject:v6 forKeyedSubscript:@"chargeSocLimitNoChargeToFull"];

    v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 terminated]);
    [v2 setObject:v7 forKeyedSubscript:@"Terminated"];

    v8 = [v1 reason];
    [v2 setObject:v8 forKeyedSubscript:@"chargeSocLimitReason"];

    v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isEOC]);
    [v2 setObject:v9 forKeyedSubscript:@"chargeSocLimitIsEOC"];

    v10 = qword_1000AB7D8;
    if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v1;
      v14 = 2112;
      v15 = v2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "converted policy:%@ to dict:%@\n", &v12, 0x16u);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100031068(id a1)
{
  if (notify_register_check("com.apple.system.powersources.chargingtofulloverride", &dword_1000AB128))
  {
    if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
    {
      sub_100064F20();
    }
  }
}

void sub_1000310C8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = qword_1000ACAD0;
  v4 = *(a1 + 40);
  v5 = v2;
  dispatch_assert_queue_barrier(v3);
  if (!qword_1000ACAE0)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:1];
    v7 = qword_1000ACAE0;
    qword_1000ACAE0 = v6;
  }

  v10 = [[ChargeCtrlPolicy alloc] initWithSocLimit:101 andDrain:0 andNoChargeToFull:0 andIsEOC:0 andReason:0 andOwner:v1];
  [qword_1000ACAE0 addObject:v10];
  sub_10003077C(v1);
  v8 = [(ChargeCtrlPolicy *)v10 token];
  v9 = [v8 UUIDString];
  xpc_dictionary_set_string(v4, "chargeSocLimitToken", [v9 UTF8String]);

  sub_10001687C(v5, v4, 0);
}

void sub_1000311F4(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = qword_1000ACAD0;
  v7 = v2;
  dispatch_assert_queue_V2(v6);
  v8 = [NSUUID alloc];
  v9 = [v7 objectForKeyedSubscript:@"chargeSocLimitToken"];

  v10 = [v8 initWithUUIDString:v9];
  if (v10)
  {
    v11 = [qword_1000ACAE0 count];
    v12 = qword_1000ACAD0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100031708;
    block[3] = &unk_100099A68;
    v17 = v11;
    v14 = v10;
    v18 = v1;
    v15 = v4;
    v16 = v5;
    dispatch_barrier_async(v12, block);
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
    {
      sub_100064F90();
    }

    sub_10001687C(v4, v5, -536870206);
  }
}

void sub_10003138C(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v2;
  v6 = v3;
  dispatch_assert_queue_V2(qword_1000ACAD0);
  v7 = [NSUUID alloc];
  v8 = [v4 objectForKeyedSubscript:@"chargeSocLimitToken"];
  v9 = [v7 initWithUUIDString:v8];

  if (v9)
  {
    [v4 objectForKeyedSubscript:@"chargeSocLimitSoc"];
    v11 = v10 = v1;
    v19 = [v11 unsignedIntValue];

    v12 = [v4 objectForKeyedSubscript:@"chargeSocLimitDrain"];
    LOBYTE(v11) = [v12 BOOLValue];

    v13 = [v4 objectForKeyedSubscript:@"chargeSocLimitNoChargeToFull"];
    LOBYTE(v12) = [v13 BOOLValue];

    v14 = [v4 objectForKeyedSubscript:@"chargeSocLimitIsEOC"];
    v15 = [v14 BOOLValue];

    v16 = [v4 objectForKeyedSubscript:@"chargeSocLimitReason"];
    v17 = qword_1000ACAD0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100031874;
    block[3] = &unk_100099A90;
    v21 = v9;
    v25 = v10;
    v22 = v5;
    v26 = v19;
    v27 = v11;
    v28 = v12;
    v29 = v15;
    v23 = v6;
    v24 = v16;
    v18 = v16;
    dispatch_barrier_async(v17, block);
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
    {
      sub_100064F90();
    }

    sub_10001687C(v5, v6, -536870206);
  }
}

void sub_1000315EC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  dispatch_assert_queue_V2(qword_1000ACAD0);
  v4 = sub_100030D00();
  v5 = qword_1000AB7D8;
  if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sending current policies:%@\n", &v7, 0xCu);
  }

  if ([v4 count])
  {
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v3, "chargeSocLimit", v6);
  }

  sub_10001687C(v2, v3, 0);
}

void sub_100031708(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    goto LABEL_12;
  }

  v2 = 0;
  do
  {
    v3 = [qword_1000ACAE0 objectAtIndex:v2];
    v4 = [v3 token];
    v5 = [v4 compare:*(a1 + 32)];

    v6 = *(a1 + 56);
    if (!v5)
    {
      break;
    }

    ++v2;
  }

  while (v2 < v6);
  if (v6 != v2)
  {
    [qword_1000ACAE0 removeObjectAtIndex:v2];
    v7 = qword_1000ACAD0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100031868;
    v8[3] = &unk_1000992A0;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    dispatch_async(v7, v8);
  }

  else
  {
LABEL_12:
    if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
    {
      sub_100065000(a1);
    }

    sub_10001687C(*(a1 + 40), *(a1 + 48), -536870206);
  }
}

void sub_100031874(uint64_t a1)
{
  if ([qword_1000ACAE0 count])
  {
    v2 = 0;
    while (1)
    {
      v3 = [qword_1000ACAE0 objectAtIndex:v2];
      v4 = [v3 token];
      v5 = [v4 compare:*(a1 + 32)];

      if (!v5)
      {
        break;
      }

      if (++v2 >= [qword_1000ACAE0 count])
      {
        goto LABEL_12;
      }
    }

    if (v3)
    {
      [v3 setSocLimit:*(a1 + 68)];
      [v3 setDrain:*(a1 + 72)];
      [v3 setNoChargeToFull:*(a1 + 73)];
      [v3 setIsEOC:*(a1 + 74)];
      [v3 setReason:*(a1 + 56)];
      v6 = [v3 owner];
      v7 = *(a1 + 64);
      if (v6 == v7)
      {
        if (![v3 terminated])
        {
LABEL_11:
          v8 = qword_1000ACAD0;
          v9[0] = _NSConcreteStackBlock;
          v9[1] = 3221225472;
          v9[2] = sub_100031A50;
          v9[3] = &unk_1000992A0;
          v10 = *(a1 + 40);
          v11 = *(a1 + 48);
          dispatch_async(v8, v9);

          return;
        }

        v7 = *(a1 + 64);
      }

      [v3 setOwner:v7];
      [v3 setTerminated:0];
      sub_10003077C(*(a1 + 64));
      goto LABEL_11;
    }
  }

LABEL_12:
  if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_ERROR))
  {
    sub_100065000(a1);
  }

  sub_10001687C(*(a1 + 40), *(a1 + 48), -536870206);
}

void sub_100031A68(uint64_t a1)
{
  v2 = qword_1000AB7D8;
  if (os_log_type_enabled(qword_1000AB7D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 67109120;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Mark %u as terminated\n", buf, 8u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031B68;
  block[3] = &unk_100099AD0;
  v5 = *(a1 + 32);
  dispatch_barrier_async(qword_1000ACAD0, block);
}

id sub_100031B68(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_barrier(qword_1000ACAD0);
  result = [qword_1000ACAE0 count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v4 = [qword_1000ACAE0 objectAtIndex:i];
      if ([v4 owner] == v1)
      {
        [v4 setTerminated:1];
      }

      result = [qword_1000ACAE0 count];
    }
  }

  return result;
}

BOOL sub_100031BFC(mach_port_t *a1)
{
  *special_port = 0;
  if (!a1)
  {
    if (!task_get_special_port(mach_task_self_, 4, special_port))
    {
      v2 = special_port[0];
      return bootstrap_look_up(v2, "com.apple.IOUPSPlugInServer", &special_port[1]) == 0;
    }

    return 0;
  }

  v2 = *a1;
  if (!v2)
  {
    if (!task_get_special_port(mach_task_self_, 4, special_port))
    {
      v2 = special_port[0];
      *a1 = special_port[0];
      return bootstrap_look_up(v2, "com.apple.IOUPSPlugInServer", &special_port[1]) == 0;
    }

    return 0;
  }

  special_port[0] = v2;
  return bootstrap_look_up(v2, "com.apple.IOUPSPlugInServer", &special_port[1]) == 0;
}

uint64_t sub_100031CA4(mach_port_t a1, int a2, CFTypeRef object)
{
  result = 3758097090;
  if (a1 && object)
  {
    v6 = IOCFSerialize(object, 0);
    if (v6)
    {
      v7 = v6;
      BytePtr = CFDataGetBytePtr(v6);
      Length = CFDataGetLength(v7);
      v10 = sub_100060A24(a1, a2, BytePtr, Length);
      CFRelease(v7);
      return v10;
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

uint64_t sub_100031D38(mach_port_t a1, int a2, CFTypeRef *a3)
{
  buffer = 0;
  v3 = 3758097090;
  if (a1)
  {
    if (a3)
    {
      v6 = 0;
      v3 = sub_100060BA0(a1, a2, &buffer, &v6);
      if (!v3)
      {
        *a3 = IOCFUnserialize(buffer, kCFAllocatorDefault, 0, 0);
        vm_deallocate(mach_task_self_, buffer, v6);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_100031DC8(mach_port_t a1, int a2, CFTypeRef *a3)
{
  buffer = 0;
  v3 = 3758097090;
  if (a1)
  {
    if (a3)
    {
      v6 = 0;
      v3 = sub_100060D80(a1, a2, &buffer, &v6);
      if (!v3)
      {
        *a3 = IOCFUnserialize(buffer, kCFAllocatorDefault, 0, 0);
        vm_deallocate(mach_task_self_, buffer, v6);
        return 0;
      }
    }
  }

  return v3;
}

void sub_100031FB4(id a1)
{
  qword_1000ACB18 = objc_alloc_init(PMCoreSmartPowerNapPredictor);

  _objc_release_x1();
}

void sub_1000323E8(uint64_t a1)
{
  v2 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Received first unlock notification. Initializing predictor", buf, 2u);
  }

  v3 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 2000000000);
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000324EC;
  block[3] = &unk_100099210;
  v6 = *(a1 + 32);
  dispatch_after(v3, v4, block);
}

id sub_1000325C8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000ACB38;
  v7 = qword_1000ACB38;
  if (!qword_1000ACB38)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000372FC;
    v3[3] = &unk_1000994A8;
    v3[4] = &v4;
    sub_1000372FC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100032690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100032A38(uint64_t a1)
{
  if ([*(a1 + 32) in_coresmartpowernap])
  {
    [*(a1 + 32) enterCoreSmartPowerNap];
    v2 = [*(a1 + 32) session_cooloff_timer];

    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = [v3 session_cooloff_timer];
      dispatch_suspend(v4);
    }

    else
    {
      v5 = [v3 queue];
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
      [*(a1 + 32) setSession_cooloff_timer:v6];

      v7 = [*(a1 + 32) session_cooloff_timer];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100032C5C;
      handler[3] = &unk_100099210;
      handler[4] = *(a1 + 32);
      dispatch_source_set_event_handler(v7, handler);

      v4 = [*(a1 + 32) session_cooloff_timer];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100032C64;
      v17[3] = &unk_100099210;
      v17[4] = *(a1 + 32);
      dispatch_source_set_cancel_handler(v4, v17);
    }

    v8 = +[NSDate date];
    v9 = [*(a1 + 32) predicted_end_time];
    [v9 timeIntervalSinceDate:v8];
    v11 = v10;

    v12 = v11 + -1800.0;
    v13 = *(a1 + 32);
    if (v12 <= 0.0)
    {
      [v13 handleSessionCoolOffTimer];
    }

    else
    {
      v14 = [v13 session_cooloff_timer];
      v15 = dispatch_walltime(0, (v12 * 1000000000.0));
      dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);

      v16 = [*(a1 + 32) session_cooloff_timer];
      dispatch_resume(v16);
    }
  }
}

void sub_1000334F8(uint64_t a1)
{
  if (([*(a1 + 32) in_coresmartpowernap] & 1) == 0)
  {
    v2 = [*(a1 + 32) user_inactive];
    v3 = qword_1000AB9A8;
    v4 = os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT);
    if (v2 == 1)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: evaluating model", buf, 2u);
      }

      [*(a1 + 32) queryModelAndEngage];
      [*(a1 + 32) setRequery_delta:{objc_msgSend(*(a1 + 32), "requery_delta_init_value")}];
    }

    else if (v4)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: conditions don't match to evaluate model", v5, 2u);
    }
  }
}

void sub_100033EA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_100065260();
    }
  }

  else
  {
    v7 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100033FA0;
    block[3] = &unk_100099358;
    block[4] = *(a1 + 32);
    v9 = v5;
    v10 = *(a1 + 40);
    dispatch_async(v7, block);
  }
}

id sub_100034230(uint64_t a1)
{
  result = [*(a1 + 32) in_coresmartpowernap];
  if (result)
  {
    result = [*(a1 + 32) motion_alarm_set];
    if ((result & 1) == 0)
    {
      v3 = qword_1000AB9A8;
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering motion alarm", v4, 2u);
      }

      return [*(a1 + 32) registerMotionAlarm];
    }
  }

  return result;
}

id sub_100034A40(uint64_t a1)
{
  result = [*(a1 + 32) user_inactive];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 queryModelAndEngage];
  }

  return result;
}

void sub_100034E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100034E58()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000ACB48;
  v7 = qword_1000ACB48;
  if (!qword_1000ACB48)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000374B4;
    v3[3] = &unk_1000994A8;
    v3[4] = &v4;
    sub_1000374B4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100034F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100034F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = qword_1000ACB58;
  v16 = qword_1000ACB58;
  if (!qword_1000ACB58)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003767C;
    v12[3] = &unk_1000994A8;
    v12[4] = &v13;
    sub_10003767C(v12, a2, a3, a4, a5, a6, a7, a8, v11);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void sub_100035000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100035018(id a1, BPSCompletion *a2)
{
  if ([(BPSCompletion *)a2 state])
  {
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10006409C();
    }
  }
}

void sub_100035068(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 40));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MobileTimer alarm fired!", buf, 2u);
    }

    v6 = objc_loadWeakRetained(&to);
    v7 = [v6 in_coresmartpowernap];

    if (v7)
    {
      [*(a1 + 32) exitCoreSmartPowerNapWithReason:@"MobileTimerFired"];
    }

    else
    {
      v8 = qword_1000AB9A8;
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "core smart power nap not engaging when alarm fired", v9, 2u);
      }
    }
  }

  objc_destroyWeak(&to);
}

void sub_1000369D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000369EC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    [v5 updateTrialFactors];
  }

  objc_destroyWeak(&to);
}

void sub_1000370FC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    reply = xpc_dictionary_create_reply(v4);
    if (reply)
    {
      if (sub_100011DF8(v3, @"com.apple.powerd.coresmartpowernap.tester", 1))
      {
        v7 = -536870201;
        v8 = reply;
      }

      else
      {
        if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
        {
          sub_1000658C0();
        }

        v8 = reply;
        v7 = -536870207;
      }

      xpc_dictionary_set_uint64(v8, "returnCode", v7);
      xpc_connection_send_message(v3, reply);
    }

    else if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_1000658F4();
    }
  }

  else if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
  {
    sub_100065928();
  }
}

void sub_100037224(id a1)
{
  if (!dlopen_preflight("/System/Library/PrivateFrameworks/OSIntelligence.framework/OSIntelligence"))
  {
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10006595C();
    }

    byte_1000ACB2C = 1;
  }

  if (!dlopen_preflight("/System/Library/PrivateFrameworks/BiomeStreams.framework/BiomeStreams"))
  {
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_100065990();
    }

    byte_1000ACB2C = 1;
  }

  if (!dlopen_preflight("/System/Library/PrivateFrameworks/BiomeLibrary.framework/BiomeLibrary"))
  {
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_1000659C4();
    }

    byte_1000ACB2C = 1;
  }
}

Class sub_1000372FC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000ACB40)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100037440;
    v4[4] = &unk_1000994E0;
    v4[5] = v4;
    v5 = off_100099B50;
    v6 = 0;
    qword_1000ACB40 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000ACB40)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_OSInactivityPredictionClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100063170();
  }

  qword_1000ACB38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100037440(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000ACB40 = result;
  return result;
}

void sub_1000374B4(uint64_t a1)
{
  sub_10003750C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMStreams");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000ACB48 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100063198();
    sub_10003750C();
  }
}

void sub_10003750C()
{
  v1[0] = 0;
  if (!qword_1000ACB50)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100037608;
    v1[4] = &unk_1000994E0;
    v1[5] = v1;
    v2 = off_100099B68;
    v3 = 0;
    qword_1000ACB50 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000ACB50)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100037608(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000ACB50 = result;
  return result;
}

void sub_10003767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  sub_10003750C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMBiomeScheduler");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000ACB58 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = sub_1000631C0();
    sub_1000376D4(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void sub_1000376D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_100037820(uint64_t a1)
{
  v5[0] = @"state";
  v5[1] = @"batteryLevel";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = *(a1 + 48);
  v5[2] = @"source";
  v5[3] = @"pluggedIn";
  v7 = v2;
  v5[4] = @"durationInMinutes";
  v8 = *(a1 + 64);
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:5];

  return v3;
}

id sub_100037980(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"wasEnabledToday";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

const char *sub_100037A10(unsigned int a1)
{
  if (a1 > 0x32)
  {
    return "";
  }

  else
  {
    return (&off_100099BA8)[a1];
  }
}

uint64_t sub_100037A64()
{
  result = dword_1000ACB64;
  if (!dword_1000ACB64)
  {
    v1 = IOServiceMatching("IOPMPowerSource");
    result = IOServiceGetMatchingService(kIOMainPortDefault, v1);
    dword_1000ACB64 = result;
  }

  return result;
}

uint64_t sub_100037AB4()
{
  result = dword_1000ACB68;
  if (!dword_1000ACB68)
  {
    v1 = IOServiceMatching("AppleSmartBattery");
    result = IOServiceGetMatchingService(kIOMainPortDefault, v1);
    dword_1000ACB68 = result;
  }

  return result;
}

CFCalendarRef sub_100037B04()
{
  result = qword_1000ACB70;
  if (!qword_1000ACB70)
  {
    result = CFCalendarCreateWithIdentifier(0, kCFGregorianCalendar);
    qword_1000ACB70 = result;
  }

  return result;
}

__asl_object_s *sub_100037B40(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = asl_new(2u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  last = 0;
  v4 = asl_new(1u);
  v5 = v4;
  if (v4)
  {
    asl_set_query(v4, "Facility", "com.apple.iokit.power", 1u);
    asl_append(v3, v5);
    asl_release(v5);
    v6 = asl_open_path(a1, 0);
    v7 = v6;
    if (v6)
    {
      v5 = asl_match(v6, v3, &last, 0, 0, 0, 1);
    }

    else
    {
      v5 = 0;
    }

    asl_release(v7);
  }

  asl_release(v3);
  return v5;
}

const char *sub_100037C24(int a1)
{
  v2 = &dword_1000AB140;
  v3 = 8;
  result = "";
  while (*v2 != a1)
  {
    v2 += 4;
    if (!--v3)
    {
      return result;
    }
  }

  return *(v2 - 1);
}

const char *sub_100037C60(__int16 a1)
{
  v1 = "CPU";
  if ((a1 & 1) == 0)
  {
    v1 = "";
  }

  if ((a1 & 4) != 0)
  {
    v1 = "USB";
  }

  if ((a1 & 8) != 0)
  {
    v1 = "BT-HID";
  }

  if ((a1 & 0x10) != 0)
  {
    v1 = "MEDIA";
  }

  if ((a1 & 0x20) != 0)
  {
    v1 = "THNDR";
  }

  if ((a1 & 0x40) != 0)
  {
    v1 = "DSPLY";
  }

  if ((a1 & 0x80) != 0)
  {
    v1 = "STORAGE";
  }

  if ((a1 & 0x100) != 0)
  {
    v1 = "MAGICWAKE";
  }

  if ((a1 & 0x200) != 0)
  {
    return "NETWORK";
  }

  else
  {
    return v1;
  }
}

void sub_100037CFC()
{
  notification = 0;
  qword_1000ACB78 = os_log_create("com.apple.powerd", "batteryAuth");
  qword_1000AB7E0 = dispatch_queue_create("Battery Auth", 0);
  if (!qword_1000AB7E0)
  {
    sub_100065B2C();
  }

  v0 = IONotificationPortCreate(kIOMainPortDefault);
  if (!v0)
  {
    sub_100065B00();
  }

  v1 = v0;
  v2 = MGGetBoolAnswer();
  v3 = qword_1000ACB78;
  v4 = os_log_type_enabled(qword_1000ACB78, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "supported", v11, 2u);
    }

    v5 = IOServiceMatching("IOPMPowerSource");
    v6 = IOServiceMatching("AppleAuthCPRelay");
    v7 = v6;
    if (v5 && v6)
    {
      CFDictionarySetValue(v6, @"IOParentMatch", v5);
      if (IOServiceAddMatchingNotification(v1, "IOServicePublish", v7, sub_100037EFC, v1, &notification))
      {
        v8 = qword_1000ACB78;
        if (os_log_type_enabled(qword_1000ACB78, OS_LOG_TYPE_ERROR))
        {
          sub_100065ABC(v8);
        }
      }

      else
      {
        sub_100037EFC(0, notification);
        IONotificationPortSetDispatchQueue(v1, qword_1000AB7E0);
      }

      v10 = v5;
LABEL_21:
      CFRelease(v10);
      return;
    }

    v9 = qword_1000ACB78;
    if (os_log_type_enabled(qword_1000ACB78, OS_LOG_TYPE_ERROR))
    {
      sub_100065A78(v9);
      if (!v5)
      {
        goto LABEL_17;
      }
    }

    else if (!v5)
    {
LABEL_17:
      if (!v7)
      {
        return;
      }

      v10 = v7;
      goto LABEL_21;
    }

    CFRelease(v5);
    goto LABEL_17;
  }

  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "not supported", buf, 2u);
  }

  dword_1000AB1B8 = 2;
}

uint64_t sub_100037EFC(int a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v4 = result;
    do
    {
      CFProperty = IORegistryEntryCreateCFProperty(v4, @"isTrustedForUI", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v6 = CFProperty;
        TypeID = CFBooleanGetTypeID();
        v8 = CFGetTypeID(v6);
        v9 = qword_1000ACB78;
        if (v8 == TypeID)
        {
          if (os_log_type_enabled(qword_1000ACB78, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            v13 = v6 == kCFBooleanTrue;
            _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "isTrustedForUI: %d", buf, 8u);
          }

          dword_1000AB1B8 = v6 != kCFBooleanFalse;
          CFRelease(v6);
          IOObjectRelease(v4);
        }

        else
        {
          if (os_log_type_enabled(qword_1000ACB78, OS_LOG_TYPE_ERROR))
          {
            sub_100065B58(&v10, v11, v9);
          }

          CFRelease(v6);
        }
      }

      result = IOIteratorNext(iterator);
      v4 = result;
    }

    while (result);
  }

  return result;
}

id sub_1000380B0()
{
  v0 = objc_alloc_init(NSDateFormatter);
  [v0 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  [v0 setTimeZone:{+[NSTimeZone timeZoneWithAbbreviation:](NSTimeZone, "timeZoneWithAbbreviation:", @"GMT"}];
  v1 = [v0 stringFromDate:sub_10000E288()];

  return v1;
}

_xpc_connection_s *sub_100038124(const char *a1, NSObject *a2)
{
  mach_service = xpc_connection_create_mach_service(a1, a2, 0);
  v4 = mach_service;
  if (mach_service)
  {
    xpc_connection_set_target_queue(mach_service, a2);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000381C8;
    handler[3] = &unk_100099D48;
    handler[4] = v4;
    xpc_connection_set_event_handler(v4, handler);
    xpc_connection_activate(v4);
  }

  return v4;
}

void sub_1000381C8(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    v4 = xpc_copy_description(object);
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_1000668BC();
    }

    free(v4);
    v5 = *(a1 + 32);
    v6 = xpc_connection_copy_invalidation_reason();
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_10006692C();
    }

    free(v6);
  }
}

NSNull *sub_100039FB4(uint64_t a1, unsigned int a2)
{
  if (a2 == 3)
  {
    v2 = [qword_1000ACBB0 objectForKeyedSubscript:a1];
  }

  else
  {
    v2 = [objc_msgSend(qword_1000ACBA8 objectForKeyedSubscript:{a1), "objectAtIndexedSubscript:", a2}];
  }

  v3 = v2;
  v4 = [v2 objectAtIndex:0];
  if ([v4 isEqual:{+[NSNull null](NSNull, "null")}])
  {

    return +[NSNull null];
  }

  else
  {
    result = [qword_1000ACBD8 objectForKey:v4];
    if (!result)
    {

      return [v3 objectAtIndex:1];
    }
  }

  return result;
}

void sub_10003A098(id a1)
{
  v2 = 0;
  v1 = +[NSFileManager defaultManager];
  if ([(NSFileManager *)v1 fileExistsAtPath:@"/var/MobileSoftwareUpdate/Hardware/Battery/BDC"]&& ![(NSFileManager *)v1 removeItemAtPath:@"/var/MobileSoftwareUpdate/Hardware/Battery/BDC" error:&v2]&& os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
  {
    sub_100066D3C(&v2);
  }
}

void sub_10003A120(id a1, int a2)
{
  notify_cancel(a2);
  v22 = NSURLFileProtectionKey;
  v2 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:[NSURL options:"fileURLWithPath:isDirectory:" errorHandler:sub_100039FB4(@"BDC_Data_Storage_Path" fileURLWithPath:1 isDirectory:?], [NSArray arrayWithObjects:&v22 count:1], 5, 0];
  if (!v2 && os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
  {
    sub_100066DC0();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSDirectoryEnumerator *)v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v11 = NSFileProtectionNone;
        v12 = 0;
        [v7 getResourceValue:&v11 forKey:NSURLFileProtectionKey error:0];
        if (NSURLFileProtectionCompleteUntilFirstUserAuthentication != v11 && ([v7 setResourceValue:NSURLFileProtectionCompleteUntilFirstUserAuthentication forKey:NSURLFileProtectionKey error:&v12] & 1) == 0)
        {
          v9 = qword_1000AB7E8;
          if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
          {
            v10 = [v7 path];
            *buf = 138412546;
            v18 = v10;
            v19 = 2112;
            v20 = v12;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to encrypt file %@ error %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSDirectoryEnumerator *)v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v4);
  }
}

void sub_10003A38C(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  if (!v2)
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100066FB4();
    }

    return;
  }

  v3 = v2;
  v4 = sub_100039FB4(@"BDC_Data_Storage_Path", 3u);
  v72 = NSURLFileSizeKey;
  v5 = [(NSFileManager *)v3 enumeratorAtURL:[NSURL fileURLWithPath:? isDirectory:?], [NSArray arrayWithObjects:&v72 count:1], 5, 0];
  if (!v5)
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100066F78();
    }

    goto LABEL_52;
  }

  v6 = v5;
  v43 = v4;
  v7 = [(NSNull *)sub_100039FB4(@"TotalDataSizeUpperBound" unsignedIntValue];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v8 = [(NSDirectoryEnumerator *)v6 countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (!v8)
  {
    v16 = 0;
    v11 = 0.0;
    goto LABEL_27;
  }

  v9 = v8;
  v10 = *v61;
  v11 = 0.0;
  v44 = a1;
  while (2)
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v61 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v60 + 1) + 8 * i);
      v14 = objc_autoreleasePoolPush();
      v58 = 0;
      v59 = 0;
      if ([v13 getResourceValue:&v58 forKey:NSURLFileSizeKey error:&v59])
      {
        v15 = v59 == 0;
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
        v17 = [v13 path];
        if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
        {
          sub_100066DFC(v17, &v59);
        }

LABEL_26:
        objc_autoreleasePoolPop(v14);
        v16 = 1;
        a1 = v44;
        goto LABEL_27;
      }

      v11 = v11 + vcvts_n_f32_u32([v58 unsignedIntValue], 0xAuLL);
      if (v11 >= v7)
      {
        v19 = qword_1000AB7E8;
        if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v68 = v11;
          v69 = 1024;
          v70 = v7;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cumulative file size %f kB >= high water mark %u kB", buf, 0x12u);
        }

        goto LABEL_26;
      }

      objc_autoreleasePoolPop(v14);
    }

    v9 = [(NSDirectoryEnumerator *)v6 countByEnumeratingWithState:&v60 objects:v71 count:16];
    v16 = 0;
    a1 = v44;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_27:
  v20 = qword_1000AB7E8;
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v68 = v11;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Cumulative data file size %f kB", buf, 0xCu);
  }

  if (!v16)
  {
LABEL_52:
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v36 = *(*(a1 + 32) + 8);
    v37 = [v36 countByEnumeratingWithState:&v46 objects:v64 count:{16, v43}];
    if (v37)
    {
      v38 = v37;
      v39 = *v47;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v47 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v46 + 1) + 8 * j);
          if (([v41 neverPrune] & 1) == 0)
          {
            v42 = [v41 collectionQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10003AA2C;
            block[3] = &unk_100099DF0;
            block[4] = v41;
            block[5] = v3;
            dispatch_async(v42, block);
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v46 objects:v64 count:16];
      }

      while (v38);
    }

    return;
  }

  v59 = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v21 = *(*(a1 + 32) + 8);
  v22 = [v21 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v55;
    do
    {
      for (k = 0; k != v23; k = k + 1)
      {
        if (*v55 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v54 + 1) + 8 * k) stop];
      }

      v23 = [v21 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v23);
  }

  v26 = *&v43;
  v27 = [(NSFileManager *)v3 removeItemAtURL:[NSURL error:"fileURLWithPath:isDirectory:" fileURLWithPath:v43 isDirectory:1, v43], &v59];
  v28 = qword_1000AB7E8;
  if (v59 || (v27 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100066E6C();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v26;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Removed dir %@", buf, 0xCu);
    }

    v29 = [(NSFileManager *)v3 createDirectoryAtPath:*&v26 withIntermediateDirectories:1 attributes:0 error:&v59];
    v30 = qword_1000AB7E8;
    if (v29 && !v59)
    {
      if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v26;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "BDC data path recreated %@", buf, 0xCu);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v31 = *(*(a1 + 32) + 8);
      v32 = [v31 countByEnumeratingWithState:&v50 objects:v65 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v51;
        do
        {
          for (m = 0; m != v33; m = m + 1)
          {
            if (*v51 != v34)
            {
              objc_enumerationMutation(v31);
            }

            [*(*(&v50 + 1) + 8 * m) start];
          }

          v33 = [v31 countByEnumeratingWithState:&v50 objects:v65 count:16];
        }

        while (v33);
      }

      goto LABEL_52;
    }

    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100066ED4();
    }
  }

  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
  {
    sub_100066F3C();
  }
}

void sub_10003AA2C(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v42 = 0.0;
  v2 = +[NSURL fileURLWithPath:isDirectory:](NSURL, "fileURLWithPath:isDirectory:", [*(a1 + 32) dirPath], 1);
  v3 = *(a1 + 40);
  v52 = NSURLCreationDateKey;
  v4 = [v3 enumeratorAtURL:v2 includingPropertiesForKeys:+[NSArray arrayWithObjects:count:](NSArray options:"arrayWithObjects:count:" errorHandler:{&v52, 1), 5, &stru_100099DC8}];
  if (v4)
  {
    v5 = v4;
    v36 = a1;
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@", [*(a1 + 32) dataGroupName], @"_");
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (!v7)
    {
      goto LABEL_37;
    }

    v8 = v7;
    v9 = *v39;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if ([objc_msgSend(v11 "lastPathComponent")])
        {
          v13 = v5;
          v14 = [v11 path];
          v37 = 0;
          v15 = [v11 getResourceValue:&v37 forKey:NSURLCreationDateKey error:&v42];
          if (v37)
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          if ((v16 & 1) == 0)
          {
            v17 = v15;
            v18 = qword_1000AB7E8;
            v19 = os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR);
            if (v17)
            {
              if (v19)
              {
                *buf = 138412290;
                v44 = v14;
                v20 = v18;
                v21 = "Creation time not available for file %@";
                v22 = 12;
                goto LABEL_32;
              }
            }

            else if (v19)
            {
              *buf = 138412546;
              v44 = v14;
              v45 = 2112;
              v46 = v42;
              v20 = v18;
              v21 = "getResourceValue call for file %@ failed. Error %@";
              v22 = 22;
LABEL_32:
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v21, buf, v22);
            }

            v37 = +[NSDate distantPast];
          }

          v23 = +[NSDate now];
          [(NSDate *)v23 timeIntervalSinceDate:v37];
          v25 = v24;
          v26 = [objc_msgSend(*(v36 + 32) "collationPeriod")];
          v27 = ([objc_msgSend(*(v36 + 32) "retentionPeriod")] + v26);
          v28 = qword_1000AB7E8;
          if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [objc_msgSend(*(v36 + 32) "retentionPeriod")];
            *buf = 138413058;
            v44 = v14;
            v45 = 2048;
            v46 = v25;
            v47 = 1024;
            v48 = v29;
            v49 = 2048;
            v50 = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "File %@. Seconds elapsed %lf. Retention period %u s adjusted %lf s", buf, 0x26u);
          }

          if (v25 < v27)
          {
            v30 = v16;
          }

          else
          {
            v30 = 0;
          }

          if ((v30 & 1) == 0)
          {
            v31 = qword_1000AB7E8;
            if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v44 = v14;
              v45 = 1024;
              LODWORD(v46) = v16 ^ 1;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Pruning file %@. Force delete %u", buf, 0x12u);
            }

            [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v14, &v42];
            v32 = v42;
            if (v42 != 0.0)
            {
              v33 = qword_1000AB7E8;
              if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v44 = v14;
                v45 = 2112;
                v46 = v32;
                _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to delete file %@ with error %@", buf, 0x16u);
              }
            }
          }

          v5 = v13;
        }

        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v34 = [v5 countByEnumeratingWithState:&v38 objects:v51 count:16];
      v8 = v34;
      if (!v34)
      {
        goto LABEL_37;
      }
    }
  }

  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
  {
    sub_100066FF0();
  }

LABEL_37:
  objc_autoreleasePoolPop(context);
}

BOOL sub_10003AED0(id a1, NSURL *a2, NSError *a3)
{
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
  {
    sub_100067060(a2);
  }

  return 1;
}

void sub_10003B070(uint64_t a1)
{
  dispatch_resume(*(*(a1 + 32) + 16));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6) start];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = qword_1000AB7E8;
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started bdcm", v8, 2u);
  }
}

void sub_10003B21C(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * i) stop];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  dispatch_suspend(*(*(a1 + 32) + 16));
  v7 = qword_1000AB7E8;
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stopped bdcm", v8, 2u);
  }
}

void sub_10003BDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003C548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10003C580(id a1, unint64_t a2)
{
  state64 = 0;
  out_token = 0;
  notify_register_check("com.apple.system.powersources.timeremaining", &out_token);
  if (notify_is_valid_token(out_token))
  {
    notify_get_state(out_token, &state64);
    v3 = qword_1000AB7E8;
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = state64;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "kIOPSNotifyTimeRemaining state %llu", buf, 0xCu);
    }

    notify_cancel(out_token);
    v4 = state64;
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100067860();
    }

    v4 = 0;
  }

  return (v4 & a2) != 0;
}

uint64_t sub_10003C694(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16))())
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2 | (*(*(a1 + 32) + 16))();
}

void sub_10003C714(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setEventRegistrationToken:a2];
  v3 = (*(*(a1 + 40) + 16))();
  v4 = +[NSDate now];
  [(NSDate *)v4 timeIntervalSinceDate:*(*(*(a1 + 56) + 8) + 40)];
  v6 = v5;
  if ((*(*(a1 + 48) + 16))())
  {
    v7 = qword_1000AB7E8;
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring connection state %u", &v11, 8u);
    }
  }

  else if (v3 != *(*(*(a1 + 64) + 8) + 24) && v6 > 2.0)
  {

    *(*(*(a1 + 56) + 8) + 40) = v4;
    *(*(*(a1 + 64) + 8) + 24) = v3;
    v9 = qword_1000AB7E8;
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 64) + 8) + 24);
      v11 = 67109120;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Connected state changed to %u", &v11, 8u);
    }

    [qword_1000ACBD8 setObject:+[NSNumber numberWithUnsignedChar:](NSNumber forKey:{"numberWithUnsignedChar:", *(*(*(a1 + 64) + 8) + 24)), @"LastConnectedState"}];
    (*([*(a1 + 32) collectionEventHandler] + 2))();
  }
}

void sub_10003C90C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setEventRegistrationToken:a2];
  v3 = qword_1000AB7E8;
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "com.apple.smartcharging.charging";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received notification for %s.", buf, 0xCu);
  }

  v4 = [*(a1 + 32) collectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CA1C;
  block[3] = &unk_100099E18;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

uint64_t sub_10003CA1C(uint64_t a1)
{
  v1 = *([*(a1 + 32) collectionEventHandler] + 2);

  return v1();
}

void sub_10003CDC8()
{
  qword_1000AB7E8 = os_log_create("com.apple.powerd", "BDC");
  v0 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v2 = sub_100042098();
    if (v2 && CFStringGetLength(v2))
    {
      qword_1000ACB80 = objc_alloc_init(BatteryDataCollectionManager);
      [qword_1000ACB80 start];
      v3 = qword_1000AB7E8;
      if (!os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      if (qword_1000ACB80)
      {
        v4 = "started";
      }

      else
      {
        v4 = "not started";
      }

      v9 = 136315138;
      v10 = v4;
      v5 = "BDC %s";
      v6 = v3;
      v7 = 12;
      goto LABEL_14;
    }

    v8 = qword_1000AB7E8;
    if (!os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v9) = 0;
    v5 = "No battery serial number. Can't start BDC";
  }

  else
  {
    v8 = qword_1000AB7E8;
    if (!os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v9) = 0;
    v5 = "No match for SMC IOService. Can't start BDC";
  }

  v6 = v8;
  v7 = 2;
LABEL_14:
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
}

void sub_10003CF50(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1 && a2)
  {
    reply = xpc_dictionary_create_reply(a2);
    if (reply)
    {
      v6 = reply;
      if (sub_100011DF8(a1, @"com.apple.private.bdc.tasking", 0))
      {
        if (qword_1000ACB80 && qword_1000ACBD8)
        {
          v7 = [objc_msgSend(qword_1000ACBD8 "dictionaryRepresentation")];
          if (v7)
          {
            v8 = v7;
            [v7 removeObjectForKey:@"BatterySerialNumber"];
            v9 = _CFXPCCreateXPCObjectFromCFObject();
            if (v9)
            {
              v10 = v9;
              xpc_dictionary_set_int64(v6, "returnCode", 0);
              xpc_dictionary_set_value(v6, "BDCXPCCopyDefaults", v10);
              xpc_release(v10);
            }

            else
            {
              xpc_dictionary_set_int64(v6, "returnCode", -536870212);
              if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
              {
                sub_100067A74();
              }
            }
          }

          else
          {
            xpc_dictionary_set_int64(v6, "returnCode", -536870160);
          }
        }

        else
        {
          sub_100067AB0();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
        {
          sub_100067A38();
        }

        xpc_dictionary_set_uint64(v6, "returnCode", 0xFFFFFFFFE00002C1);
      }

      xpc_connection_send_message(a1, v6);
      xpc_release(v6);
    }

    else if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100067B08();
    }
  }

  else if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
  {
    sub_1000679D0();
  }

  objc_autoreleasePoolPop(v4);
}

NSDictionary *__cdecl sub_10003D14C(id a1, NSDictionary *a2)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3052000000;
  v34 = sub_10003C6F8;
  v35 = sub_10003C708;
  v36 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("smartChargingQueue", v4);
  if (!v5)
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100067DF0();
    }

    goto LABEL_37;
  }

  v6 = sub_100038124("com.apple.powerui.bdcdata", v5);
  if (!v6)
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100067DB4();
    }

LABEL_37:
    v6 = 0;
LABEL_38:
    v8 = 0;
LABEL_9:
    v12 = 0;
    goto LABEL_22;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100067D78();
    }

    goto LABEL_38;
  }

  xpc_dictionary_set_BOOL(v7, "currentSmartChargingStateRequest", 1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10003D5F8;
  handler[3] = &unk_100099FC0;
  handler[4] = v3;
  handler[5] = &v31;
  xpc_connection_send_message_with_reply(v6, v8, v5, handler);
  v9 = dispatch_time(0x8000000000000000, 10000000000);
  dispatch_semaphore_wait(v3, v9);
  v10 = v32[5];
  if (!v10)
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_100067D3C();
    }

    goto LABEL_9;
  }

  if (xpc_get_type(v10) != &_xpc_type_dictionary)
  {
    v11 = xpc_copy_description(v32[5]);
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_1000668BC();
    }

    free(v11);
    goto LABEL_9;
  }

  v13 = [(NSDictionary *)a2 objectForKeyedSubscript:@"DataColumnNames"];
  v14 = objc_alloc_init(NSMutableArray);
  v15 = v32[5];
  v16 = _CFXPCCreateCFObjectFromXPCObject();
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEBUG))
  {
    sub_100067CC8();
  }

  v12 = objc_alloc_init(NSMutableDictionary);
  [(NSDictionary *)v12 setObject:sub_1000380B0() forKeyedSubscript:@"TimeStamp"];
  [v14 addObject:@"TimeStamp"];
  v24 = v6;
  v25 = v3;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = [v13 countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v17)
  {
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v16 objectForKeyedSubscript:v20];
        if (!v21)
        {
          v21 = +[NSNull null];
        }

        [(NSDictionary *)v12 setObject:v21 forKeyedSubscript:v20];
        [v14 addObject:v20];
      }

      v17 = [v13 countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v17);
  }

  [(NSDictionary *)v12 setObject:v14 forKeyedSubscript:@"OrderedKeys"];
  v3 = v25;
  v6 = v24;

LABEL_22:
  if (v3)
  {
    dispatch_release(v3);
  }

  v22 = v32[5];
  if (v22)
  {
    xpc_release(v22);
  }

  if (v8)
  {
    xpc_release(v8);
  }

  if (v6)
  {
    xpc_connection_cancel(v6);
    xpc_release(v6);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  _Block_object_dispose(&v31, 8);
  return v12;
}

intptr_t sub_10003D5F8(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    *(*(*(a1 + 40) + 8) + 40) = xpc_copy(object);
  }

  else if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
  {
    sub_100067E2C();
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

NSDictionary *__cdecl sub_10003D660(id a1, NSDictionary *a2)
{
  v3 = sub_100041F10();
  if (!v3)
  {
    sub_100067F40(&cf[0]._reserved);
LABEL_114:
    reserved = cf[0]._reserved;
    goto LABEL_111;
  }

  reserved = objc_opt_new();
  if (!reserved)
  {
    sub_100067EE0(&cf[0]._reserved);
    goto LABEL_114;
  }

  context = objc_autoreleasePoolPush();
  v4 = +[NSMutableArray array];
  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"DataColumnNames"];
  if ([v5 count])
  {
    [(NSDictionary *)reserved setObject:sub_1000380B0() forKeyedSubscript:@"TimeStamp"];
    [v4 addObject:@"TimeStamp"];
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v68;
    v56 = v5;
    v57 = v3;
    v58 = *v68;
    v59 = v4;
    do
    {
      v9 = 0;
      do
      {
        if (*v68 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v67 + 1) + 8 * v9);
        if (([v10 isEqualToString:@"EEEE"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"YWW"))
        {
          v11 = sub_10003E23C(v3, @"Serial", 0);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = qword_1000AB7E8;
            if (!os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_65;
            }

            LODWORD(cf[0]._reserved) = 138412290;
            *(&cf[0]._reserved + 4) = v10;
            v14 = v17;
            v15 = "Value for key %@ is not of string type";
            v16 = 12;
            goto LABEL_18;
          }

          v12 = [v11 length];
          if (v12 - 19 <= 0xFFFFFFFD)
          {
            v13 = qword_1000AB7E8;
            if (!os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_65;
            }

            LODWORD(cf[0]._reserved) = 67109120;
            HIDWORD(cf[0]._reserved) = v12;
            v14 = v13;
            v15 = "Unexpected battery serial length %u";
            v16 = 8;
LABEL_18:
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, &cf[0]._reserved, v16);
            goto LABEL_65;
          }

          if ([v10 isEqualToString:@"YWW"])
          {
            cf[0].super.isa = 0;
            if (IOPSGetYearAndWeekOfManufactureFromBatterySerial())
            {
              v22 = [(objc_class *)cf[0].super.isa copy];
              CFRelease(cf[0].super.isa);
              v23 = qword_1000AB7E8;
              if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(cf[0]._reserved) = 138412290;
                *(&cf[0]._reserved + 4) = v22;
                _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Fetched yww from IOKit: %@", &cf[0]._reserved, 0xCu);
              }

              goto LABEL_63;
            }

            if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
            {
              sub_100067EA4(&v71, v72);
            }

LABEL_42:
            v22 = 0;
            goto LABEL_63;
          }

          if (![v10 isEqualToString:@"EEEE"])
          {
            v28 = qword_1000AB7E8;
            if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
            {
              LODWORD(cf[0]._reserved) = 138412290;
              *(&cf[0]._reserved + 4) = v10;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Unsupported key %@", &cf[0]._reserved, 0xCu);
            }

            goto LABEL_42;
          }

          if ([v11 length] == 17)
          {
            v27 = 4;
            goto LABEL_55;
          }

          if ([v11 length] == 18)
          {
            v27 = 7;
LABEL_55:
            v22 = [v11 substringWithRange:{11, v27}];
          }

          else
          {
            v22 = 0;
          }

          v32 = qword_1000AB7E8;
          if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(cf[0]._reserved) = 138412290;
            *(&cf[0]._reserved + 4) = v22;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Extracted engineering code %@", &cf[0]._reserved, 0xCu);
          }

LABEL_63:
          [v4 addObject:v10];
          v21 = reserved;
          v20 = v22;
LABEL_64:
          [(NSDictionary *)v21 setObject:v20 forKeyedSubscript:v10];
          goto LABEL_65;
        }

        if ([v10 isEqualToString:@"BatteryAuth"])
        {
          v18 = sub_10000E738();
          v19 = qword_1000AB7E8;
          if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(cf[0]._reserved) = 67109120;
            HIDWORD(cf[0]._reserved) = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Read battery auth state %d", &cf[0]._reserved, 8u);
          }

          [v4 addObject:v10];
          v20 = [NSNumber numberWithInt:v18];
          v21 = reserved;
          goto LABEL_64;
        }

        if (([v10 isEqualToString:@"BHServiceFlags"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"BHCalibrationFlags") & 1) == 0 && !objc_msgSend(v10, "isEqualToString:", @"MaxCapacityPercent"))
        {
          cf[0].super.isa = 0;
          v30 = sub_10003E23C(v3, v10, cf);
          if (!v30 && cf[0].super.isa)
          {
            v31 = qword_1000AB7E8;
            if (!os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_59;
            }

            LODWORD(cf[0]._reserved) = 138412290;
            *(&cf[0]._reserved + 4) = v10;
            v35 = v31;
            v36 = "Nil value for key %@";
            goto LABEL_107;
          }

          if ([v10 isEqualToString:@"Watts"])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([(NSNumber *)v30 compare:&off_1000A2C60]== NSOrderedAscending)
              {
                if ([(NSNumber *)v30 compare:&off_1000A2C78]== NSOrderedAscending)
                {
                  v33 = 5;
                }

                else
                {
                  v33 = 10;
                }
              }

              else
              {
                v33 = 20;
              }

              v30 = [NSNumber numberWithInteger:[(NSNumber *)v30 integerValue]/ v33 * v33];
              v4 = v59;
              goto LABEL_77;
            }

            v34 = qword_1000AB7E8;
            if (!os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_59;
            }

            LODWORD(cf[0]._reserved) = 138412290;
            *(&cf[0]._reserved + 4) = v10;
            v35 = v34;
            v36 = "Value for key %@ is not a NSNumber type";
LABEL_107:
            v52 = 12;
LABEL_108:
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v36, &cf[0]._reserved, v52);
            goto LABEL_59;
          }

LABEL_77:
          if ([qword_1000ACBA0 containsObject:v10])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v48 = qword_1000AB7E8;
              if (!os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_59;
              }

              LODWORD(cf[0]._reserved) = 138412290;
              *(&cf[0]._reserved + 4) = v10;
              v35 = v48;
              v36 = "Value for key %@ is not an array type";
              goto LABEL_107;
            }

            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v37 = [(NSNumber *)v30 countByEnumeratingWithState:&v61 objects:&cf[0]._userInfo count:16];
            if (!v37)
            {
              goto LABEL_59;
            }

            v38 = v37;
            v39 = 0;
            v40 = *v62;
            while (2)
            {
              v41 = 0;
LABEL_82:
              if (*v62 != v40)
              {
                objc_enumerationMutation(v30);
              }

              v42 = *(*(&v61 + 1) + 8 * v41);
              v43 = [v10 stringByAppendingFormat:@"%d", v39];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v44 = [v10 isEqualToString:@"RaTableRaw"];
                if (v44)
                {
                  v42 = sub_10003E194(v44, v42);
                  goto LABEL_87;
                }

                v45 = qword_1000AB7E8;
                if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(cf[0]._reserved) = 138412290;
                  *(&cf[0]._reserved + 4) = v10;
                  _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Unhandled NSData for key %@", &cf[0]._reserved, 0xCu);
                }
              }

              else
              {
LABEL_87:
                [(NSDictionary *)reserved setObject:v42 forKeyedSubscript:v43];
                [v59 addObject:v43];
              }

              v41 = v41 + 1;
              v39 = (v39 + 1);
              if (v38 == v41)
              {
                v38 = [(NSNumber *)v30 countByEnumeratingWithState:&v61 objects:&cf[0]._userInfo count:16];
                if (!v38)
                {
LABEL_59:
                  v5 = v56;
                  v3 = v57;
                  v4 = v59;
                  goto LABEL_52;
                }

                continue;
              }

              goto LABEL_82;
            }
          }

          if (([v10 isEqualToString:@"TimeAtHighSoc"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"LowVoltageResidencyCounters"))
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if ((isKindOfClass & 1) == 0)
            {
              v49 = objc_opt_class();
              v50 = NSStringFromClass(v49);
              v51 = qword_1000AB7E8;
              if (!os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_59;
              }

              LODWORD(cf[0]._reserved) = 138412546;
              *(&cf[0]._reserved + 4) = v50;
              WORD2(cf[0]._code) = 2112;
              *(&cf[0]._code + 6) = v10;
              v35 = v51;
              v36 = "Unexpected class type %@ for key %@. Expected NSData";
              v52 = 22;
              goto LABEL_108;
            }

            v47 = sub_10003E194(isKindOfClass, v30);
LABEL_97:
            v30 = v47;
          }

          else if ([v10 isEqualToString:@"WeightedRa"])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v47 = [(NSNumber *)v30 firstObject];
              goto LABEL_97;
            }
          }

          [(NSDictionary *)reserved setObject:v30 forKeyedSubscript:v10];
          [v4 addObject:v10];
          goto LABEL_59;
        }

        v24 = sub_100042D8C();
        if (v24)
        {
          v25 = v24;
          if ([v10 isEqualToString:@"BHServiceFlags"])
          {
            v26 = [v25 objectForKeyedSubscript:@"Battery Service Flags"];
          }

          else
          {
            v26 = 0;
          }

          if ([v10 isEqualToString:@"BHCalibrationFlags"])
          {
            v26 = [objc_msgSend(v25 objectForKeyedSubscript:{@"calibration0", "objectForKeyedSubscript:", @"calibrationFlags"}];
          }

          if ([v10 isEqualToString:@"MaxCapacityPercent"])
          {
            v26 = [v25 objectForKeyedSubscript:@"Maximum Capacity Percent"];
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v29 = qword_1000AB7E8;
            v26 = &off_1000A2C48;
            if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
            {
              LODWORD(cf[0]._reserved) = 138412290;
              *(&cf[0]._reserved + 4) = v10;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@ object is not NSNumber", &cf[0]._reserved, 0xCu);
            }
          }

          [(NSDictionary *)reserved setObject:v26 forKeyedSubscript:v10];
          [v4 addObject:v10];

LABEL_52:
          v8 = v58;
        }

        else if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
        {
          sub_100067E68(&v65, v66);
        }

LABEL_65:
        v9 = v9 + 1;
      }

      while (v9 != v7);
      v53 = [v5 countByEnumeratingWithState:&v67 objects:v74 count:16];
      v7 = v53;
    }

    while (v53);
  }

  [(NSDictionary *)reserved setObject:v4 forKeyedSubscript:@"OrderedKeys"];
  objc_autoreleasePoolPop(context);
LABEL_111:

  return reserved;
}

NSMutableString *sub_10003E194(uint64_t a1, void *a2)
{
  v3 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", 2 * [a2 length]);
  v4 = [a2 bytes];
  if ([a2 length])
  {
    v5 = 0;
    do
    {
      [(NSMutableString *)v3 appendFormat:@"%02x", v4[v5++]];
    }

    while ([a2 length] > v5);
  }

  return v3;
}

id sub_10003E23C(void *a1, uint64_t a2, NSError *a3)
{
  if (a1 && a2)
  {
    v5 = a1;
    v6 = [qword_1000ACB98 objectForKeyedSubscript:a2];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
    if (!v7)
    {
      return [v5 objectForKeyedSubscript:a2];
    }

    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v5 = [v5 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v8);
    if (v5)
    {
      return [v5 objectForKeyedSubscript:a2];
    }
  }

  sub_100067FA0(a3, &v17, &v18, &v16);
  return v16;
}

void sub_10003E37C(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = qword_1000AB7E8;
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "com.apple.powerd.bdc.get_current_time";
    v15 = 2048;
    v16 = state64;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received notification for %s. Value set to %lld\n", buf, 0x16u);
  }

  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10003E560;
  v10 = &unk_100099AD0;
  LODWORD(v11) = *(a1 + 32);
  if (qword_1000ACBB8 != -1)
  {
    dispatch_once(&qword_1000ACBB8, &v7);
  }

  if (notify_is_valid_token(dword_1000AB1C0))
  {
    [(NSDate *)sub_10000E288() timeIntervalSince1970:v7];
    v5 = v4;
    notify_set_state(dword_1000AB1C0, v4);
    notify_post("com.apple.powerd.bdc.current_time");
    v6 = qword_1000AB7E8;
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sent current time notification %llu", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
  {
    sub_100068030();
  }
}

void sub_10003E560(uint64_t a1)
{
  if (notify_register_check("com.apple.powerd.bdc.current_time", &dword_1000AB1C0))
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      sub_10006806C(a1);
    }
  }
}

uint64_t sub_10003E5C0(uint64_t a1)
{
  v2 = sub_10000E150();
  if (v2)
  {

    return v2(@"BatteryDataCollection", a1);
  }

  else
  {
    v4 = sub_100063D44();
    return sub_10003E60C(v4);
  }
}

NSDate *sub_10003E60C(uint64_t a1)
{
  v2 = qword_1000AB7E8;
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Send BDC_Once payload to PPT", v4, 2u);
  }

  return sub_10000E23C(*(a1 + 40), *(a1 + 32));
}

uint64_t sub_10003E67C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000ACBC0 = result;
  return result;
}

void *sub_10003E6F0(uint64_t a1)
{
  v2 = sub_10003E740();
  result = dlsym(v2, "PerfPowerTelemetrySendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000ACBC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10003E740()
{
  v0 = sub_10000DF94();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *sub_10003E79C(uint64_t a1)
{
  v2 = sub_10003E740();
  result = dlsym(v2, "PerfPowerTelemetryCreateIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000ACBD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL sub_10003E824()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL sub_10003E83C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10003E890()
{
  values = 0;
  keys = 0;
  v0 = qword_1000ACC18;
  if (!qword_1000ACC18)
  {
    v0 = os_log_create("com.apple.powerd", "prefs");
    qword_1000ACC18 = v0;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Looking for MDM prefs\n", buf, 2u);
  }

  v1 = 3758097088;
  v2 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@.plist", @"/Library/Managed Preferences/mobile", @"com.apple.powerd.managed");
  if (v2)
  {
    v3 = v2;
    v4 = [[NSDictionary alloc] initWithContentsOfFile:v2];
    if (!v4)
    {
      v15 = qword_1000ACC18;
      if (os_log_type_enabled(qword_1000ACC18, OS_LOG_TYPE_ERROR))
      {
        sub_1000681CC(v15, v16, v17, v18, v19, v20, v21, v22);
      }

      v23 = v3;
      goto LABEL_39;
    }

    v5 = v4;
    if (CFDictionaryContainsKey(v4, @"CriticalAcOverride"))
    {
      valuePtr = -1;
      *buf = 0;
      if (CFDictionaryGetValueIfPresent(v5, @"CriticalAcOverride", buf))
      {
        v6 = *buf;
        TypeID = CFNumberGetTypeID();
        if (v6)
        {
          if (CFGetTypeID(v6) == TypeID)
          {
            CFNumberGetValue(*buf, kCFNumberIntType, &valuePtr);
          }
        }
      }

      v8 = qword_1000ACC18;
      if (os_log_type_enabled(qword_1000ACC18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = valuePtr;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CriticalAcOverrideKey found %d in prefs\n", buf, 8u);
      }

      keys = CFStringCreateWithCString(kCFAllocatorDefault, "CriticalAcOverride", 0x8000100u);
      if (valuePtr >= 1)
      {
        v9 = &kCFBooleanTrue;
      }

      else
      {
        v9 = &kCFBooleanFalse;
      }

      values = *v9;
      v10 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v10)
      {
        v11 = v10;
        v12 = sub_100037A64();
        if (v12)
        {
          v1 = IORegistryEntrySetCFProperties(v12, v11);
          if (v1)
          {
            v13 = qword_1000ACC18;
            if (os_log_type_enabled(qword_1000ACC18, OS_LOG_TYPE_ERROR))
            {
              sub_1000680E4(v1, v13);
            }
          }
        }

        else
        {
          v32 = qword_1000ACC18;
          if (os_log_type_enabled(qword_1000ACC18, OS_LOG_TYPE_ERROR))
          {
            sub_10006815C(v32, v33, v34, v35, v36, v37, v38, v39);
          }
        }
      }

      else
      {
        v24 = qword_1000ACC18;
        v1 = 3758097085;
        if (os_log_type_enabled(qword_1000ACC18, OS_LOG_TYPE_ERROR))
        {
          sub_100068194(v24, v25, v26, v27, v28, v29, v30, v31);
        }

        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v1 = 3758097095;
    }

    CFRelease(v3);
    CFRelease(v5);
    if (keys)
    {
      CFRelease(keys);
    }

    if (values)
    {
      CFRelease(values);
    }

    if (v11)
    {
      v23 = v11;
LABEL_39:
      CFRelease(v23);
    }
  }

  else
  {
    v14 = qword_1000ACC18;
    v1 = 3758097095;
    if (os_log_type_enabled(qword_1000ACC18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No managed preferences found\n", buf, 2u);
    }
  }

  return v1;
}

void sub_10003EC10()
{
  v0 = SCPreferencesCreate(0, @"PM-configd-AutoWake", @"com.apple.AutoWake.xml");
  if (v0)
  {
    v1 = v0;
    if (qword_1000ACC20)
    {
      CFRelease(qword_1000ACC20);
    }

    if (qword_1000ACC28)
    {
      CFRelease(qword_1000ACC28);
    }

    Value = SCPreferencesGetValue(v1, @"RepeatingPowerOff");
    if (Value)
    {
      v3 = Value;
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v3) == TypeID)
      {
        qword_1000ACC20 = CFDictionaryCreateMutableCopy(0, 0, v3);
      }
    }

    v5 = SCPreferencesGetValue(v1, @"RepeatingPowerOn");
    if (v5)
    {
      v6 = v5;
      v7 = CFDictionaryGetTypeID();
      if (CFGetTypeID(v6) == v7)
      {
        qword_1000ACC28 = CFDictionaryCreateMutableCopy(0, 0, v6);
      }
    }

    CFRelease(v1);
  }
}

uint64_t sub_10003ED2C(uint64_t a1, _OWORD *a2, const UInt8 *a3, unsigned int a4, uint64_t a5, _DWORD *a6)
{
  euidp = 0;
  prefs = 0;
  *a6 = 0;
  v9 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v9;
  audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, 0, 0, 0);
  v10 = CFDataCreate(0, a3, a4);
  if (v10)
  {
    v11 = v10;
    v12 = CFPropertyListCreateWithData(0, v10, 0, 0, 0);
    if (v12)
    {
      v13 = v12;
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v13) == TypeID)
      {
        Value = CFDictionaryGetValue(v13, @"RepeatingPowerOff");
        v16 = CFDictionaryGetTypeID();
        if (Value)
        {
          if (CFGetTypeID(Value) == v16)
          {
            v17 = Value;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = CFDictionaryGetValue(v13, @"RepeatingPowerOn");
        v19 = CFDictionaryGetTypeID();
        if (v18)
        {
          if (CFGetTypeID(v18) == v19)
          {
            v20 = v18;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        if (sub_10003F070(v17) && (sub_10003F070(v20) & 1) != 0)
        {
          v21 = sub_100004870();
          *a6 = v21;
          if (!v21)
          {
            cf = sub_10000699C(qword_1000ACC20);
            CFRetain(cf);
            v22 = sub_10000699C(qword_1000ACC28);
            CFRetain(v22);
            v23 = qword_1000ACC20;
            if (qword_1000ACC20)
            {
              v24 = CFDictionaryGetTypeID();
              if (CFGetTypeID(v23) == v24)
              {
                CFRelease(qword_1000ACC20);
              }
            }

            v25 = qword_1000ACC28;
            if (qword_1000ACC28)
            {
              v26 = CFDictionaryGetTypeID();
              if (CFGetTypeID(v25) == v26)
              {
                CFRelease(qword_1000ACC28);
              }
            }

            qword_1000ACC28 = 0;
            qword_1000ACC20 = 0;
            if (v17)
            {
              qword_1000ACC20 = CFDictionaryCreateMutableCopy(0, 0, v17);
            }

            if (v20)
            {
              qword_1000ACC28 = CFDictionaryCreateMutableCopy(0, 0, v20);
            }

            v27 = sub_10003F1D4(prefs);
            *a6 = v27;
            if (!v27)
            {
              v28 = sub_10000699C(qword_1000ACC20);
              v29 = sub_10000699C(qword_1000ACC28);
              sub_100040BD0(cf);
              sub_100040BD0(v22);
              if (!CFEqual(cf, v28))
              {
                sub_100040BD0(v28);
              }

              if (!CFEqual(v22, v29))
              {
                sub_100040BD0(v29);
              }
            }

            CFRelease(cf);
            CFRelease(v22);
          }

          goto LABEL_37;
        }

        syslog(6, "PMCFGD: Invalid formatted repeating power event dictionary\n");
      }

      *a6 = -536870206;
LABEL_37:
      CFRelease(v11);
      CFRelease(v13);
      v10 = prefs;
      goto LABEL_38;
    }

    *a6 = -536870206;
    CFRelease(v11);
    v10 = 0;
  }

  else
  {
    *a6 = -536870206;
  }

LABEL_38:
  nullsub_3(v10, 1);
  vm_deallocate(mach_task_self_, a3, a4);
  return 0;
}

uint64_t sub_10003F070(const void *a1)
{
  if (!a1)
  {
    return 1;
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"time");
  v4 = CFNumberGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) != v4)
  {
    return 0;
  }

  v5 = CFDictionaryGetValue(a1, @"weekdays");
  v6 = CFNumberGetTypeID();
  if (!v5)
  {
    return 0;
  }

  if (CFGetTypeID(v5) != v6)
  {
    return 0;
  }

  v7 = CFDictionaryGetValue(a1, @"eventtype");
  v8 = CFStringGetTypeID();
  if (!v7 || CFGetTypeID(v7) != v8)
  {
    return 0;
  }

  if (CFEqual(v7, @"sleep"))
  {
    return 1;
  }

  if (CFEqual(v7, @"shutdown"))
  {
    return 1;
  }

  if (CFEqual(v7, @"wakepoweron"))
  {
    return 1;
  }

  if (CFEqual(v7, @"poweron"))
  {
    return 1;
  }

  if (CFEqual(v7, @"wake"))
  {
    return 1;
  }

  result = CFEqual(v7, @"restart");
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_10003F1D4(SCPreferencesRef prefs)
{
  v2 = 3758097084;
  if (qword_1000ACC28)
  {
    if (!SCPreferencesSetValue(prefs, @"RepeatingPowerOn", qword_1000ACC28))
    {
      return v2;
    }
  }

  else
  {
    SCPreferencesRemoveValue(prefs, @"RepeatingPowerOn");
  }

  if (qword_1000ACC20)
  {
    if (!SCPreferencesSetValue(prefs, @"RepeatingPowerOff", qword_1000ACC20))
    {
      return v2;
    }
  }

  else
  {
    SCPreferencesRemoveValue(prefs, @"RepeatingPowerOff");
  }

  if (SCPreferencesCommitChanges(prefs))
  {
    return 0;
  }

  else
  {
    return 3758097084;
  }
}

uint64_t sub_10003F278(uint64_t a1, _OWORD *a2, _DWORD *a3)
{
  prefs = 0;
  euidp = 0;
  *a3 = 0;
  v4 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v4;
  audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, 0, 0, 0);
  v5 = sub_100004870();
  *a3 = v5;
  if (!v5)
  {
    v6 = sub_10000699C(qword_1000ACC20);
    CFRetain(v6);
    v7 = sub_10000699C(qword_1000ACC28);
    CFRetain(v7);
    v8 = qword_1000ACC20;
    if (qword_1000ACC20)
    {
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v8) == TypeID)
      {
        CFRelease(qword_1000ACC20);
      }
    }

    v10 = qword_1000ACC28;
    if (qword_1000ACC28)
    {
      v11 = CFDictionaryGetTypeID();
      if (CFGetTypeID(v10) == v11)
      {
        CFRelease(qword_1000ACC28);
      }
    }

    qword_1000ACC28 = 0;
    qword_1000ACC20 = 0;
    v12 = sub_10003F1D4(prefs);
    *a3 = v12;
    if (!v12)
    {
      sub_100040BD0(v6);
      sub_100040BD0(v7);
    }

    CFRelease(v6);
    CFRelease(v7);
  }

  nullsub_3(prefs, 1);
  return 0;
}

__CFDictionary *sub_10003F3CC()
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v1 = qword_1000ACC28;
  if (qword_1000ACC28)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v1) == TypeID)
    {
      CFDictionaryAddValue(Mutable, @"RepeatingPowerOn", qword_1000ACC28);
    }
  }

  v3 = qword_1000ACC20;
  if (qword_1000ACC20)
  {
    v4 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v3) == v4)
    {
      CFDictionaryAddValue(Mutable, @"RepeatingPowerOff", qword_1000ACC20);
    }
  }

  return Mutable;
}

void sub_10003F698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003F824(id a1, BPSCompletion *a2)
{
  if ([(BPSCompletion *)a2 state])
  {
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_10006409C();
    }
  }
}

void sub_10003F874(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 eventBody];
    v8 = [v5 placeToString:{objc_msgSend(v7, "userSpecificPlaceType")}];
    v9 = [v3 eventBody];
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 placeType]);
    v11 = [v3 eventBody];
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 isStarting]);
    v15 = 134218498;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Local location change to %lu, PlaceType %@, starting %@", &v15, 0x20u);
  }

  v13 = [v3 eventBody];
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 userSpecificPlaceType]);
  [*(a1 + 32) setLocalLOI:v14];
}

void sub_10003FB94(id a1, BPSCompletion *a2)
{
  if ([(BPSCompletion *)a2 state])
  {
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_10006409C();
    }
  }
}

void sub_10003FBE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 eventBody];
    v8 = [v5 placeToString:{objc_msgSend(v7, "userSpecificPlaceType")}];
    v24 = a1;
    v9 = [v3 eventBody];
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 placeType]);
    v11 = [v3 eventBody];
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 starting]);
    v13 = [v3 eventBody];
    v14 = [v13 deviceUUID];
    *buf = 138413058;
    v26 = v8;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remote location change to %@, PlaceType %@, starting %@, from device %@", buf, 0x2Au);

    a1 = v24;
  }

  v15 = [v3 eventBody];
  v16 = [v15 deviceUUID];

  v17 = [v3 eventBody];
  v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v17 userSpecificPlaceType]);

  if (v16 && v18)
  {
    v19 = [*(a1 + 32) remoteLOIs];
    v20 = [v19 objectForKeyedSubscript:v16];
    v21 = v20;
    if (v20 == v18)
    {
    }

    else
    {
      v22 = [*(a1 + 32) localLOI];

      if (v18 != v22)
      {
LABEL_10:
        v23 = [*(a1 + 32) remoteLOIs];
        [v23 setObject:v18 forKeyedSubscript:v16];

        goto LABEL_11;
      }

      v19 = +[PMSmartPowerNapPredictor sharedInstance];
      [v19 handleRemoteDeviceIsNear];
    }

    goto LABEL_10;
  }

LABEL_11:
}

void sub_10003FF4C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != [*(a1 + 32) syncing])
  {
    v3 = +[BMStreams semanticLocationStream];
    v4 = *(a1 + 32);
    v5 = [v3 publisher];
    v6 = [v4 addSPNFiltersToBMDSL:v5];

    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == 2)
      {
        v12 = qword_1000AB7D0;
        if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sync Remote Location With Wake", buf, 2u);
        }

        v9 = [*(a1 + 32) contextSyncClient];
        v19 = 0;
        v10 = [v9 registerForUpdates:v6 withIdentifier:@"com.apple.powerd.biomeRemoteLOI" shouldWake:1 forDeviceTypes:1 withError:&v19];
        v11 = v19;
      }

      else
      {
        if (v7 != 1)
        {
          goto LABEL_20;
        }

        v8 = qword_1000AB7D0;
        if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sync Remote Location Without Wake", buf, 2u);
        }

        v9 = [*(a1 + 32) contextSyncClient];
        v20 = 0;
        v10 = [v9 registerForUpdates:v6 withIdentifier:@"com.apple.powerd.biomeRemoteLOI" shouldWake:0 forDeviceTypes:1 withError:&v20];
        v11 = v20;
      }

      v13 = v11;

      if (v10)
      {
LABEL_12:
        [*(a1 + 32) setSyncing:*(a1 + 40)];
LABEL_19:

LABEL_22:
        return;
      }
    }

    else
    {
      v14 = qword_1000AB7D0;
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not Syncing Remote Location", buf, 2u);
      }

      v15 = [*(a1 + 32) contextSyncClient];
      v18 = 0;
      v16 = [v15 unregisterForUpdates:v6 withIdentifier:@"com.apple.powerd.biomeRemoteLOI" forDeviceTypes:1 withError:&v18];
      v13 = v18;

      if (v16)
      {
        goto LABEL_12;
      }
    }

    if (v13)
    {
      v17 = qword_1000AB7D0;
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
      {
        sub_1000640D0(v13, v17);
      }

      goto LABEL_19;
    }

LABEL_20:
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_100068218();
    }

    goto LABEL_22;
  }
}

void sub_100040438(id a1)
{
  if (!dlopen_preflight("/System/Library/PrivateFrameworks/ContextSync.framework/ContextSync"))
  {
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_10006824C();
    }

    byte_1000ACC30 = 1;
  }
}

Class sub_100040498(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000ACC48)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000405DC;
    v4[4] = &unk_1000994E0;
    v4[5] = v4;
    v5 = off_10009A0C0;
    v6 = 0;
    qword_1000ACC48 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000ACC48)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ContextSyncClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000641B0();
  }

  qword_1000ACC40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000405DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000ACC48 = result;
  return result;
}

id sub_100040650(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:@"iPhone"];
  byte_1000ACC60 = result;
  return result;
}

id sub_10004067C(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:@"iPad"];
  byte_1000ACC70 = result;
  return result;
}

uint64_t sub_1000406A8()
{
  v0 = sub_10000E660();
  if (v0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004074C;
    block[3] = &unk_100099E18;
    block[4] = v0;
    if (qword_1000ACC78 != -1)
    {
      dispatch_once(&qword_1000ACC78, block);
    }

    v1 = byte_1000ACC80;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id sub_10004074C(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:@"Watch"];
  byte_1000ACC80 = result;
  return result;
}

uint64_t sub_100040778()
{
  if (qword_1000ACC88 != -1)
  {
    sub_1000682C4();
  }

  return byte_1000ACC90;
}

uint64_t sub_1000407D8()
{
  v0 = os_log_create("com.apple.powerd", "wakeRequests");
  v1 = 0;
  qword_1000AB7F0 = v0;
  do
  {
    v2 = *(&off_1000AB1C8 + v1);
    v2[2] = 0uLL;
    v2[3] = 0uLL;
    *v2 = 0uLL;
    v2[1] = 0uLL;
    v1 += 8;
  }

  while (v1 != 48);
  qword_1000AB8D0 = @"wake";
  qword_1000AB910 = @"poweron";
  qword_1000AB950 = @"wakepoweron";
  qword_1000AB810 = @"sleep";
  qword_1000AB850 = @"shutdown";
  qword_1000AB890 = @"restart";
  qword_1000AB8D8 = &unk_1000AB938;
  unk_1000AB8E0 = nullsub_4;
  qword_1000AB820 = sub_100040A44;
  qword_1000AB860 = j_nullsub_3;
  qword_1000AB8A0 = j_nullsub_3_0;
  qword_1000AB928 = sub_10001AC44;
  unk_1000AB930 = sub_10001AC44;
  qword_1000AB918 = &unk_1000AB938;
  sub_10003EC10();
  for (i = 0; i != 6; ++i)
  {
    v4 = *(&off_1000AB1C8 + i);
    if (v4)
    {
      sub_100006698(*(&off_1000AB1C8 + i));
      if (*v4)
      {
        Count = CFArrayGetCount(*v4);
        if (Count >= 1)
        {
          v6 = Count + 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*v4, v6 - 2);
            Value = CFDictionaryGetValue(ValueAtIndex, @"scheduledby");
            if (CFEqual(Value, @"Repeating"))
            {
              v9 = *(v4 + 8);
              if (v9 && CFEqual(ValueAtIndex, v9))
              {
                CFRelease(*(v4 + 8));
                *(v4 + 8) = 0;
              }

              CFArrayRemoveValueAtIndex(*v4, v6 - 2);
              --dword_1000ACC98;
            }

            --v6;
          }

          while (v6 > 1);
        }
      }

      if (!CFEqual(*(v4 + 24), @"wakepoweron"))
      {
        sub_1000071C8(v4);
      }
    }
  }

  v11 = 0;
  result = sub_10005F64C("pm-min-schedule-time", &v11);
  if (!result && (v11 & 0x80000000) == 0 && v11 / 10.0 < *&qword_1000AB1F8)
  {
    *&qword_1000AB1F8 = v11 / 10.0;
  }

  return result;
}

void sub_100040A44(const __CFDictionary *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = CFDateCreate(0, Current);
  Value = CFDictionaryGetValue(a1, @"time");
  TypeID = CFDateGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      v6 = Value;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  AbsoluteTime = CFDateGetAbsoluteTime(v6);
  v8 = CFDateCreate(0, AbsoluteTime + 5.0);
  if (CFDateCompare(v8, v3, 0) == kCFCompareLessThan)
  {
    v11 = qword_1000AB7F0;
    if (os_log_type_enabled(qword_1000AB7F0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "timer fired for an event which is on %@. Time now is %@.", &v12, 0x16u);
    }

    CFRelease(v3);
    CFRelease(v8);
  }

  else
  {
    CFRelease(v3);
    CFRelease(v8);

    nullsub_3(v9, v10);
  }
}

void sub_100040BD0(const void *a1)
{
  if (CFEqual(a1, @"wakepoweron"))
  {
    sub_1000071C8(&qword_1000AB8B8);
    v2 = &unk_1000AB8F8;
  }

  else
  {
    v3 = 0;
    while (!CFEqual(a1, (*(&off_1000AB1C8 + v3))[3]))
    {
      v3 += 8;
      if (v3 == 48)
      {
        return;
      }
    }

    v2 = *(&off_1000AB1C8 + v3);
  }

  sub_1000071C8(v2);
}

double sub_100040C70(const __CFDictionary *a1)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"time");
  TypeID = CFDateGetTypeID();
  v4 = 0.0;
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    AbsoluteTime = CFDateGetAbsoluteTime(Value);
    v6 = CFDictionaryGetValue(a1, @"leeway");
    v7 = CFNumberGetTypeID();
    v8 = 0.0;
    if (v6 && CFGetTypeID(v6) == v7)
    {
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      v8 = (valuePtr & ~(valuePtr >> 31));
    }

    return AbsoluteTime + v8;
  }

  return v4;
}

const __CFDictionary *sub_100040D40()
{
  v0 = sub_100040DD4(&unk_1000AB838);
  v1 = sub_100040DD4(&unk_1000AB878);
  v2 = v1;
  if (v0)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (!v0)
    {
      return v1;
    }
  }

  else
  {
    v4 = sub_100040C70(v0);
    if (v4 >= sub_100040C70(v2))
    {
      CFRelease(v0);
      return v2;
    }

    else
    {
      CFRelease(v2);
    }
  }

  return v0;
}

const __CFDictionary *sub_100040DD4(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = sub_100007594(a1, v3);
  }

  else
  {
    v4 = *a1;
  }

  TypeID = CFArrayGetTypeID();
  if (!v4)
  {
    return 0;
  }

  if (CFGetTypeID(v4) == TypeID && (Count = CFArrayGetCount(v4), Count >= 1))
  {
    v7 = Count;
    v8 = 0;
    Copy = 0;
    v10 = 0.0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
      v12 = CFDictionaryGetTypeID();
      if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v12)
      {
        v13 = qword_1000AB7F0;
        if (os_log_type_enabled(qword_1000AB7F0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v19 = ValueAtIndex;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Active wake request: %{public}@\n", buf, 0xCu);
        }

        v14 = sub_100040C70(ValueAtIndex);
        if (v14 != 0.0 && v14 >= Current + *&qword_1000AB1F8)
        {
          v15 = v10 == 0.0;
          if (v14 < v10)
          {
            v15 = 1;
          }

          if (v15)
          {
            v10 = v14;
            Copy = ValueAtIndex;
          }
        }
      }

      ++v8;
    }

    while (v7 != v8);
    if (Copy)
    {
      Copy = CFDictionaryCreateCopy(0, Copy);
      v17 = qword_1000AB7F0;
      if (os_log_type_enabled(qword_1000AB7F0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = Copy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Selected RTC wake request: %{public}@\n", buf, 0xCu);
      }
    }
  }

  else
  {
    Copy = 0;
  }

  if (*(a1 + 32))
  {
    CFRelease(v4);
  }

  return Copy;
}

void sub_100041010()
{
  v0 = sub_100040DD4(&qword_1000AB8B8);
  if (v0)
  {
    v1 = v0;
    sub_100040C70(v0);
    CFRelease(v1);
  }
}

__CFArray *sub_100041064()
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  for (i = 0; i != 48; i += 8)
  {
    v2 = *(&off_1000AB1C8 + i);
    v3 = *v2;
    if (*v2)
    {
      TypeID = CFArrayGetTypeID();
      if (CFGetTypeID(v3) == TypeID)
      {
        v6.length = CFArrayGetCount(*v2);
        v6.location = 0;
        CFArrayAppendArray(Mutable, *v2, v6);
      }
    }
  }

  return Mutable;
}

uint64_t sub_100041104(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = v1[2];
    if (v2)
    {
      dispatch_release(v2);
      v1[2] = 0;
    }

    v3 = v1[5];
    if (v3)
    {
      v3(v1[1]);
    }

    v4 = v1[1];
    if (v4)
    {
      v5 = qword_1000AB7F0;
      if (os_log_type_enabled(qword_1000AB7F0, OS_LOG_TYPE_DEBUG))
      {
        v6 = 138543362;
        v7 = v4;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "AutoWakeScheduler: Handled timer expiration for: %{public}@\n", &v6, 0xCu);
        v4 = v1[1];
      }

      CFRelease(v4);
    }

    v1[1] = 0;
    return sub_1000071C8(v1);
  }

  return result;
}

__darwin_time_t sub_1000411F4()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return v1.tv_sec;
}

uint64_t sub_100041724()
{
  if (!qword_1000ACFC8)
  {
    return 0;
  }

  v0 = IOPSLimitBatteryLevelCancel();
  v1 = qword_1000AB980;
  if (v0)
  {
    v2 = v0;
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_1000686C8();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Wombat: Cleared battery level limit\n", v4, 2u);
    }

    v2 = 0;
    qword_1000ACFC8 = 0;
  }

  return v2;
}

void sub_1000418CC(id a1, BOOL a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041940;
  block[3] = &unk_100099930;
  v3 = a2;
  dispatch_async(qword_1000ACCC8, block);
}

void sub_100041940(uint64_t a1)
{
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
  {
    sub_100068738(a1);
  }

  if (byte_1000ACCD0 != *(a1 + 32))
  {
    v2 = qword_1000AB980;
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Wombat change:%u\n", v6, 8u);
    }

    byte_1000ACCD0 = *(a1 + 32);
    if (byte_1000ACCD0 == 1)
    {
      if (!qword_1000ACFC8 && IOPSLimitBatteryLevelRegister())
      {
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
        {
          sub_10006881C();
        }

LABEL_18:
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
        {
          sub_1000688FC();
        }

        return;
      }

      v4 = IOPSLimitBatteryLevel();
      v5 = qword_1000AB980;
      if (v4)
      {
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
        {
          sub_10006888C();
        }

        sub_100041724();
        goto LABEL_18;
      }

      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v6[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wombat: Set battery level limit\n", v6, 2u);
      }
    }

    else if (sub_100041724() && os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_1000687AC();
    }
  }
}

uint64_t sub_100041B58()
{
  if (byte_1000ACCD1 != 1)
  {
    if (sub_10005F648(1111905072, &qword_1000ACCD8))
    {
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
      {
        sub_10006896C();
      }
    }

    else
    {
      byte_1000ACCD1 = 1;
    }
  }

  return qword_1000ACCD8;
}

void sub_100041BF0(uint64_t a1)
{
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100041C70;
    block[3] = &unk_1000994E0;
    block[4] = a1;
    dispatch_barrier_sync(qword_1000ACCE0, block);
  }
}

void sub_100041C70(uint64_t a1)
{
  if (qword_1000ACCE8)
  {
    CFRelease(qword_1000ACCE8);
  }

  v2 = qword_1000AB980;
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "System updated to use custom battery properties\n", v3, 2u);
  }

  sub_100041D08(1);
  qword_1000ACCE8 = CFRetain(*(a1 + 32));
  sub_100041D88();
}

void sub_100041D08(int a1)
{
  dispatch_assert_queue_barrier(qword_1000ACCE0);
  if (byte_1000ACF9C != a1)
  {
    byte_1000ACF9C = a1;
    if (a1)
    {
      sub_10000A558(0);
    }

    else
    {
      sub_100009860(1);
    }

    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_1000689DC();
    }
  }
}

void sub_100041D88()
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  dispatch_assert_queue_V2(qword_1000ACCE0);
  v0 = qword_1000ACCF8;
  existing = 0;
  if (qword_1000ACCF8 && *qword_1000ACCF8)
  {
    v1 = IOServiceMatching("IOPMPowerSource");
    if (IOServiceGetMatchingServices(kIOMainPortDefault, v1, &existing))
    {
      v2 = 1;
    }

    else
    {
      v2 = existing == 0;
    }

    if (v2)
    {
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
      {
        sub_100068A64();
      }
    }

    else
    {
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 3221225472;
      v3[2] = sub_100047A94;
      v3[3] = &unk_10009A4F8;
      v4 = existing;
      v3[4] = v0;
      dispatch_async(qword_1000ACCE0, v3);
    }
  }
}

void sub_100041E94()
{
  if (qword_1000ACCE8)
  {
    dispatch_async(qword_1000ACCE0, &stru_10009A180);
  }
}

void sub_100041EB8(id a1)
{
  if (qword_1000ACCF0)
  {
    CFRelease(qword_1000ACCF0);
    qword_1000ACCF0 = 0;
  }

  CFRelease(qword_1000ACCE8);
  qword_1000ACCE8 = 0;
  sub_100041D08(0);

  sub_100041D88();
}

uint64_t sub_100041F10()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  dispatch_assert_queue_not_V2(qword_1000ACCE0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004200C;
  block[3] = &unk_1000994A8;
  block[4] = &v3;
  dispatch_sync(qword_1000ACCE0, block);
  v0 = v4[3];
  if (!v0)
  {
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_100068AA0();
    }

    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100041FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004200C(uint64_t a1)
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  v2 = qword_1000ACCF8;
  if (qword_1000ACCF8)
  {
    if (*qword_1000ACCF8)
    {
      v3 = *(*qword_1000ACCF8 + 8);
      TypeID = CFDictionaryGetTypeID();
      if (v3)
      {
        if (CFGetTypeID(v3) == TypeID)
        {
          *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreateCopy(kCFAllocatorDefault, *(*v2 + 8));
        }
      }
    }
  }
}

void sub_1000420A4()
{
  v0 = os_log_create("com.apple.powerd", "battery");
  v1 = qword_1000AB980;
  qword_1000AB980 = v0;

  v2 = os_log_create("com.apple.powerd", "batteryhealth");
  v3 = qword_1000AB978;
  qword_1000AB978 = v2;

  bzero(&qword_1000ACD00, 0x280uLL);
  qword_1000ACFA0 = 0;
  xmmword_1000ACF80 = 0u;
  *&word_1000ACF90 = 0u;
  v4 = dispatch_queue_create("com.apple.private.powerd.batteryTimeRemainingQ", 0);
  v5 = qword_1000ACCE0;
  qword_1000ACCE0 = v4;

  if (qword_1000ACCE0)
  {
    notify_register_check("com.apple.system.powersources.timeremaining", &dword_1000ACF94);
    notify_register_check("com.apple.system.powersources.percent", &dword_1000ACF98);
    xpc_activity_unregister("com.apple.powerd.dofu-monitor");
    sub_100010E38(1);
    dispatch_sync(qword_1000ACCE0, &stru_10009A1A0);
    dispatch_async(qword_1000ACCE0, &stru_10009A1E0);
    if (objc_opt_class())
    {
      v6 = dispatch_queue_create("com.apple.private.powerd.wombat", 0);
      v7 = qword_1000ACCC8;
      qword_1000ACCC8 = v6;

      v8 = qword_1000ACCC8;
      if (qword_1000ACCC8)
      {

        dispatch_async(v8, &stru_10009A4D8);
      }
    }

    else
    {
      v9 = qword_1000AB980;
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AVSC not supported\n", v10, 2u);
      }
    }
  }
}

void sub_100042260(id a1)
{
  v1 = IONotificationPortCreate(0);
  if (v1)
  {
    v2 = v1;
    IONotificationPortSetDispatchQueue(v1, qword_1000ACCE0);
    notification = 0;
    v3 = IOServiceMatching("IOPMPowerSource");
    if (IOServiceAddMatchingNotification(v2, "IOServiceFirstMatch", v3, sub_100044B70, v2, &notification))
    {
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
      {
        sub_100068ADC();
      }
    }

    else
    {
      sub_100044B70(v2, notification);
    }

    v14 = 0;
    v4 = IONotificationPortCreate(kIOMainPortDefault);
    IONotificationPortSetDispatchQueue(v4, qword_1000ACCE0);
    v5 = IOServiceMatching("AppleSMC");
    v6 = IOServiceAddMatchingNotification(v4, "IOServiceFirstMatch", v5, sub_100044F2C, v4, &v14);
    if (!v6)
    {
      sub_100044F2C(v6, v14);
    }

    iterator = 0;
    v7 = IONotificationPortCreate(kIOMainPortDefault);
    IONotificationPortSetDispatchQueue(v7, qword_1000ACCE0);
    v8 = IOServiceMatching("AppleARMPMUPowerSource");
    if (!IOServiceAddMatchingNotification(v7, "IOServiceFirstMatch", v8, sub_100044FA8, v7, &iterator))
    {
      sub_100044FA8(0, iterator);
    }
  }

  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_1000ACCE0);
  v10 = qword_1000ACCC0;
  qword_1000ACCC0 = v9;

  v11 = qword_1000ACCC0;
  v12 = dispatch_walltime(0, 0);
  dispatch_source_set_timer(v11, v12, 0x1A3185C5000uLL, 0);
  dispatch_source_set_event_handler(qword_1000ACCC0, &stru_10009A1C0);
  dispatch_resume(qword_1000ACCC0);
}

void sub_100042450(id a1)
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  v1 = qword_1000ACCF8;
  if (qword_1000ACCF8)
  {
    if (*qword_1000ACCF8)
    {
      v2 = *(*qword_1000ACCF8 + 8);
      TypeID = CFDictionaryGetTypeID();
      if (v2)
      {
        if (CFGetTypeID(v2) == TypeID)
        {
          v4 = *(*v1 + 8);

          sub_10002D9FC(v4);
        }
      }
    }
  }
}

uint64_t sub_1000424FC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000425A8;
  block[3] = &unk_1000994A8;
  block[4] = &v3;
  dispatch_sync(qword_1000ACCE0, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

CFTypeRef sub_1000425A8(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = sub_10000C008();
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void sub_100042610(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    reply = xpc_dictionary_create_reply(v4);
    if (reply)
    {
      if (sub_100011DF8(v3, @"com.apple.private.iokit.batteryTester", 1))
      {
        int64 = xpc_dictionary_get_int64(v5, "setBHUpdateTimeDelta");
        if ((int64 - 0x100000000) > 0xFFFFFFFF00000000)
        {
          dword_1000AB200 = int64;
          v9 = qword_1000AB978;
          if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
          {
            v10[0] = 67109120;
            v10[1] = dword_1000AB200;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Changed NCC update time delta to %u\n", v10, 8u);
          }

          v8 = 0;
        }

        else
        {
          v8 = -536870206;
          if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
          {
            sub_100068D24();
          }
        }
      }

      else
      {
        v8 = -536870207;
        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
        {
          sub_100068CE8();
        }
      }

      xpc_dictionary_set_uint64(reply, "returnCode", v8);
      xpc_connection_send_message(v3, reply);
    }

    else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
    {
      sub_100063044();
    }
  }

  else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
  {
    sub_100063080();
  }
}

void sub_100042804(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    reply = xpc_dictionary_create_reply(v4);
    if (reply)
    {
      v7 = qword_1000ACCE0;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100042934;
      v8[3] = &unk_1000992A0;
      v9 = v3;
      v10 = reply;
      dispatch_async(v7, v8);
    }

    else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
    {
      sub_100068E04();
    }
  }

  else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
  {
    sub_100068D94();
  }
}

void sub_100042934(uint64_t a1)
{
  v2 = -536870211;
  v17 = 3;
  if (sub_100011DF8(*(a1 + 32), @"com.apple.private.iokit.batteryhealthstate", 0))
  {
    dispatch_assert_queue_V2(qword_1000ACCE0);
    v3 = sub_100014978();
    v4 = v3;
    if (v3 && ([(__CFDictionary *)v3 objectForKeyedSubscript:@"Battery Service State"], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"Battery Service State"];
      v7 = [v6 unsignedIntValue];

      v8 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"Battery Service Flags"];
      v17 = [v8 unsignedIntValue];

      if ((v17 & 0x400000) != 0)
      {
        v9 = 4;
      }

      else if (v7 < 1)
      {
        v9 = v7;
        if (v7)
        {
          if (v7 == -1)
          {
            v9 = sub_100010660(&v17) - 1;
          }

          else
          {
            v9 = 0xFFFFFFFFLL;
          }
        }
      }

      else if (v7 == 9)
      {
        v9 = 0;
      }

      else
      {
        v9 = 3;
      }

      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEBUG))
      {
        sub_100068E40();
      }

      v10 = [NSMutableDictionary alloc];
      v11 = [NSNumber numberWithInt:v7];
      v12 = [NSNumber numberWithInt:v9];
      v13 = [v10 initWithObjectsAndKeys:{v11, @"IOPSBatteryHealthServiceState", v12, @"IOPSBatteryHealthState", 0}];

      v14 = qword_1000AB978;
      if (v13)
      {
        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEBUG))
        {
          sub_100068EE8(v14, v13);
        }

        v15 = _CFXPCCreateXPCObjectFromCFObject();
        if (v15)
        {
          v16 = v15;
          xpc_dictionary_set_value(*(a1 + 40), "IOPSPrivateBatteryHealthState", v15);

          v2 = 0;
        }

        else
        {
          if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
          {
            sub_100068FB4();
          }
        }
      }

      else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
      {
        sub_100068FF0();
      }
    }

    else
    {

      v2 = -536870184;
    }
  }

  else
  {
    v2 = -536870207;
  }

  xpc_dictionary_set_uint64(*(a1 + 40), "returnCode", v2);
  xpc_connection_send_message(*(a1 + 32), *(a1 + 40));
}

uint64_t sub_100042BCC(const __CFDictionary *a1)
{
  CFDictionaryApplyFunction(a1, sub_10001066C, 0);

  return _CFPreferencesSynchronizeWithContainer();
}

uint64_t sub_100042C30()
{
  _CFPreferencesSetValueWithContainer();

  return _CFPreferencesSynchronizeWithContainer();
}

uint64_t sub_100042CB4()
{
  v5 = 1;
  v0 = container_system_group_path_for_identifier();
  if (!v0)
  {
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
    {
      sub_100069068(&v5);
    }

    return 0;
  }

  v1 = v0;
  v2 = CFStringCreateWithCString(0, v0, 0x8000100u);
  free(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = _CFPreferencesCopyMultipleWithContainer();
  CFRelease(v2);
  return v3;
}

uint64_t sub_100042D8C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100042E38;
  block[3] = &unk_1000994A8;
  block[4] = &v3;
  dispatch_sync(qword_1000ACCE0, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100042E38(uint64_t a1)
{
  v2 = sub_100014978();
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreateCopy(kCFAllocatorDefault, v2);

    CFRelease(v3);
  }
}

uint64_t sub_100042EA4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 36);
    if (v1)
    {
      LOBYTE(v1) = *(a1 + 24) | ((100 * *(a1 + 32) / v1) > 0x63);
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t sub_100042EE0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100042F8C;
  block[3] = &unk_1000994A8;
  block[4] = &v3;
  dispatch_sync(qword_1000ACCE0, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

CFTypeRef sub_100042F8C(uint64_t a1)
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  *(*(*(a1 + 32) + 8) + 24) = sub_10000BDC0(@"UPS");
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t sub_100042FFC(uint64_t a1, _OWORD *a2, uint64_t a3, _DWORD *a4)
{
  pidp = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v6 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v6;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  *a4 = -536870212;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100043114;
  block[3] = &unk_10009A248;
  v9 = pidp;
  block[4] = v11;
  block[5] = a4;
  block[6] = a3;
  dispatch_barrier_sync(qword_1000ACCE0, block);
  _Block_object_dispose(v11, 8);
  return 0;
}

void sub_100043114(uint64_t a1)
{
  v2 = dword_1000AB218;
  if (dword_1000AB218 == 0x7FFFFFFF)
  {
    v2 = 5000;
    dword_1000AB218 = 5000;
  }

  v3 = *(a1 + 56);
  dispatch_assert_queue_barrier(qword_1000ACCE0);
  if (v2 == 99)
  {
    v4 = 0;
  }

  else
  {
    v6 = &dword_1000ACD28;
    v4 = 1;
    while (1)
    {
      v7 = *v6;
      v6 += 10;
      if (!v7)
      {
        break;
      }

      if (++v4 == 16)
      {
        v5 = 0;
        goto LABEL_10;
      }
    }
  }

  v5 = &qword_1000ACD00[5 * v4];
  v5[4] = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = v3;
  *v5 = v2;
LABEL_10:
  *(*(*(a1 + 32) + 8) + 24) = v5;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v8 = dword_1000AB218++;
    **(a1 + 48) = v8;
    v9 = dispatch_source_create(&_dispatch_source_type_proc, *(a1 + 56), 0x80000000uLL, qword_1000ACCE0);
    v10 = *(*(*(a1 + 32) + 8) + 24);
    v11 = *(v10 + 16);
    *(v10 + 16) = v9;

    v12 = *(a1 + 32);
    v13 = *(*(*(v12 + 8) + 24) + 16);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100043458;
    handler[3] = &unk_1000994A8;
    handler[4] = v12;
    dispatch_source_set_cancel_handler(v13, handler);
    v14 = *(a1 + 32);
    v15 = *(*(*(v14 + 8) + 24) + 16);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000435B0;
    v26[3] = &unk_1000994A8;
    v26[4] = v14;
    dispatch_source_set_event_handler(v15, v26);
    dispatch_resume(*(*(*(*(a1 + 32) + 8) + 24) + 16));
    **(a1 + 40) = 0;
    v16 = qword_1000AB980;
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
    {
      v17 = **(a1 + 48);
      v18 = *(a1 + 56);
      *buf = 67109376;
      v29 = v17;
      v30 = 1024;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Created new power source id %d for pid %d\n", buf, 0xEu);
    }
  }

  else
  {
    **(a1 + 40) = -536870181;
    v19 = qword_1000AB980;
    v20 = qword_1000ACD00;
    v21 = 16;
    do
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v23 = *(v20 + 1);
        v22 = *(v20 + 2);
        v24 = *v20;
        v25 = v20[3];
        *buf = 67109890;
        v29 = v24;
        v30 = 1024;
        v31 = v22;
        v32 = 1024;
        v33 = v23;
        v34 = 2112;
        v35 = v25;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "id:%d pid:%d type:%d desc:%@\n", buf, 0x1Eu);
        v19 = qword_1000AB980;
      }

      v20 += 5;
      --v21;
    }

    while (v21);
  }
}

void sub_100043458(uint64_t a1)
{
  v2 = *(*(*(*(a1 + 32) + 8) + 24) + 4);
  if (v2 == 3)
  {
    v3 = "com.apple.system.accpowersources.timeremaining";
  }

  else
  {
    v3 = "com.apple.system.powersources.timeremaining";
  }

  if (v2 == 3)
  {
    v4 = "com.apple.system.accpowersources.attach";
  }

  else
  {
    v4 = "com.apple.system.powersources.attach";
  }

  sub_10005FA68(qword_1000AB980, v3);
  sub_10005FA68(qword_1000AB980, v4);
  v5 = qword_1000AB980;
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
  {
    v6 = **(*(*(a1 + 32) + 8) + 24);
    v11[0] = 67109120;
    v11[1] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Posted notifications for loss of power source id %d\n", v11, 8u);
  }

  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  v9 = *(*(*(a1 + 32) + 8) + 24);
  v10 = *(v9 + 24);
  if (v10)
  {
    CFRelease(v10);
    v9 = *(*(*(a1 + 32) + 8) + 24);
  }

  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  sub_10000A558(0);
}

uint64_t sub_1000435C4(uint64_t a1, __int128 *a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004364C;
  block[3] = &unk_10009A288;
  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  block[4] = a6;
  block[5] = a4;
  v11 = a3;
  v12 = a5;
  dispatch_sync(qword_1000ACCE0, block);
  return 0;
}

uint64_t sub_10004364C(uint64_t a1)
{
  v2 = -536870206;
  *pidp = 0;
  v3 = *(a1 + 64);
  *atoken.val = *(a1 + 48);
  *&atoken.val[4] = v3;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp[1], 0, 0);
  **(a1 + 32) = -536870212;
  v4 = IOCFUnserialize(*(a1 + 40), 0, 0, 0);
  TypeID = CFDictionaryGetTypeID();
  if (!v4)
  {
    goto LABEL_120;
  }

  if (CFGetTypeID(v4) != TypeID)
  {
    **(a1 + 32) = -536870206;
    goto LABEL_27;
  }

  v6 = (a1 + 80);
  v7 = sub_100044154(pidp[1], *(a1 + 80));
  if (!v7)
  {
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_1000697C8((a1 + 80), &pidp[1]);
    }

    **(a1 + 32) = -536870160;
    goto LABEL_27;
  }

  v8 = v7;
  v9 = CFDictionaryGetValue(v4, @"Power Source ID");
  v10 = CFNumberGetTypeID();
  if (!v9 || CFGetTypeID(v9) != v10)
  {
    LOWORD(pidp[0]) = *v8;
    HIWORD(pidp[0]) = *(v8 + 4);
    v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, pidp);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(v4, @"Power Source ID", v11);
      CFRelease(v12);
    }
  }

  if (!*(v8 + 1))
  {
    v27 = CFDictionaryGetValue(v4, @"Type");
    v28 = CFStringGetTypeID();
    if (v27)
    {
      if (CFGetTypeID(v27) == v28)
      {
        if (CFStringCompare(v27, @"Accessory Source", 0))
        {
          if (CFStringCompare(v27, @"UPS", 0) && CFStringCompare(v27, @"Battery Case", 0))
          {
            if (CFStringCompare(v27, @"InternalBattery", 0))
            {
              goto LABEL_9;
            }

            v29 = 1;
          }

          else
          {
            v29 = 2;
          }
        }

        else
        {
          v29 = 3;
        }

        *(v8 + 1) = v29;
      }
    }
  }

LABEL_9:
  v13 = *v6;
  v14 = pidp[1];
  v15 = CFDictionaryGetValue(v4, @"Debug Information");
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v4);
  [(__CFDictionary *)MutableCopy removeObjectForKey:@"Debug Information"];
  v17 = qword_1000AB980;
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
  {
    atoken.val[0] = 67109634;
    atoken.val[1] = v13;
    LOWORD(atoken.val[2]) = 1024;
    *(&atoken.val[2] + 2) = v14;
    HIWORD(atoken.val[3]) = 2112;
    *&atoken.val[4] = MutableCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received power source(psid:%d) update from pid %d: %@\n", &atoken, 0x18u);
  }

  if (v15)
  {
    v18 = qword_1000AB980;
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
    {
      atoken.val[0] = 67109634;
      atoken.val[1] = v13;
      LOWORD(atoken.val[2]) = 1024;
      *(&atoken.val[2] + 2) = v14;
      HIWORD(atoken.val[3]) = 2112;
      *&atoken.val[4] = v15;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Received power source(psid:%d) update from pid %d: %@\n", &atoken, 0x18u);
    }
  }

  v19 = v8;
  v20 = *(v8 + 1);
  if ((v20 - 1) >= 2)
  {
    if (v20 == 3)
    {
      value = 0;
      valuePtr = 0;
      v88 = 0;
      v89 = 0;
      v87 = 0;
      v22 = CFDictionaryGetValue(v4, @"Power Source State");
      v23 = CFDictionaryGetValue(v4, @"Current Capacity");
      if (!v23 || (CFNumberGetValue(v23, kCFNumberIntType, &valuePtr), !v22))
      {
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
        {
          sub_10006978C();
        }

        CFRelease(v4);
        goto LABEL_120;
      }

      v24 = v8[3];
      if (!v24)
      {
        sub_10005FA68(qword_1000AB980, "com.apple.system.accpowersources.attach");
        sub_10005FA68(qword_1000AB980, "com.apple.system.accpowersources.timeremaining");
        v32 = qword_1000AB980;
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *v8;
          atoken.val[0] = 67109120;
          atoken.val[1] = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Posted notifications for new power source id %d\n", &atoken, 8u);
        }

        goto LABEL_119;
      }

      v25 = CFDictionaryGetValue(v24, @"Power Source State");
      if (v25)
      {
        v26 = CFStringCompare(v22, v25, 0) != kCFCompareEqualTo;
      }

      else
      {
        v26 = 0;
      }

      v34 = CFDictionaryGetValue(v8[3], @"Current Capacity");
      if (v34)
      {
        CFNumberGetValue(v34, kCFNumberIntType, &valuePtr + 4);
      }

      v35 = valuePtr;
      v36 = HIDWORD(valuePtr);
      v86 = 0;
      v37 = CFDictionaryGetValue(v8[3], @"Is Charging");
      if (v37)
      {
        CFNumberGetValue(v37, kCFNumberIntType, &v86 + 4);
      }

      v38 = CFDictionaryGetValue(v4, @"Is Charging");
      if (v38)
      {
        CFNumberGetValue(v38, kCFNumberIntType, &v86);
      }

      v39 = HIDWORD(v86) != v86;
      v89 = 0;
      value = 0;
      v40 = CFDictionaryGetValueIfPresent(v19[3], @"Name", &value) != 0;
      if (v40 == (CFDictionaryGetValueIfPresent(v4, @"Name", &v89) == 0) || (v41 = v39 || v26, v42 = value, v43 = CFStringGetTypeID(), v42) && CFGetTypeID(v42) == v43 && (v44 = v89, v45 = CFStringGetTypeID(), v44) && CFGetTypeID(v44) == v45 && !CFEqual(value, v89))
      {
        v41 = 1;
      }

      v87 = 0;
      v88 = 0;
      v46 = CFDictionaryGetValueIfPresent(v19[3], @"Part Name", &v88) != 0;
      if (v46 == (CFDictionaryGetValueIfPresent(v4, @"Part Name", &v87) == 0) || (v47 = v88, v48 = CFStringGetTypeID(), v47) && CFGetTypeID(v47) == v48 && (v49 = v87, v50 = CFStringGetTypeID(), v49) && CFGetTypeID(v49) == v50 && !CFEqual(v88, v87))
      {
        v41 = 1;
      }

      v51 = CFDictionaryGetValue(v19[3], @"LEDs");
      v52 = CFDictionaryGetValue(v4, @"LEDs");
      if (v51 | v52)
      {
        v53 = v52;
        if ((v51 != 0) == (v52 != 0))
        {
          Count = CFArrayGetCount(v51);
          v55 = CFArrayGetCount(v53);
          if (!(Count | v55))
          {
            goto LABEL_86;
          }

          if (Count == v55)
          {
            if (Count)
            {
              v82 = v35;
              v83 = v36;
              v56 = 0;
              v84 = v41;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v51, v56);
                v58 = CFArrayGetValueAtIndex(v53, v56);
                v59 = CFDictionaryGetValue(ValueAtIndex, @"State");
                v60 = CFDictionaryGetValue(v58, @"State");
                if ((v59 != 0) != (v60 != 0) || v59 && v60 && !CFEqual(v59, v60))
                {
                  break;
                }

                v61 = CFDictionaryGetValue(ValueAtIndex, @"Color");
                v62 = CFDictionaryGetValue(v58, @"Color");
                if ((v61 != 0) != (v62 != 0))
                {
                  break;
                }

                v41 = v84;
                if (v61)
                {
                  if (v62 && !CFEqual(v61, v62))
                  {
                    break;
                  }
                }

                if (Count == ++v56)
                {
                  goto LABEL_85;
                }
              }

              v41 = 1;
LABEL_85:
              v35 = v82;
              v36 = v83;
            }

            goto LABEL_86;
          }
        }

        v41 = 1;
      }

LABEL_86:
      v63 = CFDictionaryGetValue(v19[3], @"AdapterDetails");
      v64 = CFDictionaryGetValue(v4, @"AdapterDetails");
      if (v63 | v64)
      {
        v65 = v64;
        if ((v63 != 0) != (v64 != 0))
        {
          v41 = 1;
        }

        else
        {
          v92 = 0;
          *atoken.val = 0;
          if (CFDictionaryGetValueIfPresent(v63, @"FamilyCode", &atoken))
          {
            v66 = *atoken.val;
            v67 = CFNumberGetTypeID();
            if (v66)
            {
              if (CFGetTypeID(v66) == v67)
              {
                CFNumberGetValue(*atoken.val, kCFNumberIntType, &v92 + 4);
              }
            }
          }

          *atoken.val = 0;
          if (CFDictionaryGetValueIfPresent(v65, @"FamilyCode", &atoken) && (v68 = *atoken.val, v69 = CFNumberGetTypeID(), v68) && CFGetTypeID(v68) == v69)
          {
            CFNumberGetValue(*atoken.val, kCFNumberIntType, &v92);
            v70 = v92;
          }

          else
          {
            v70 = 0;
          }

          v41 |= HIDWORD(v92) != v70;
        }
      }

      v71 = CFDictionaryGetValue(v19[3], @"LPM Active");
      if (v71)
      {
        v72 = v71 == kCFBooleanTrue;
      }

      else
      {
        v72 = 0;
      }

      v73 = v72;
      v74 = CFDictionaryGetValue(v4, @"LPM Active");
      if (v74)
      {
        v75 = v74 == kCFBooleanTrue;
      }

      else
      {
        v75 = 0;
      }

      v76 = v75;
      if (v73 != v76 || (v41 & 1) != 0)
      {
        sub_10005FA68(qword_1000AB980, "com.apple.system.accpowersources.source");
        v77 = qword_1000AB980;
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
        {
          v78 = *v19;
          atoken.val[0] = 136315394;
          *&atoken.val[1] = "com.apple.system.accpowersources.source";
          LOWORD(atoken.val[3]) = 1024;
          *(&atoken.val[3] + 2) = v78;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Posted %s for power source id %d\n", &atoken, 0x12u);
        }
      }

      if (v35 != v36)
      {
        sub_10005FA68(qword_1000AB980, "com.apple.system.accpowersources.timeremaining");
        v79 = qword_1000AB980;
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
        {
          v80 = *v19;
          atoken.val[0] = 136315394;
          *&atoken.val[1] = "com.apple.system.accpowersources.timeremaining";
          LOWORD(atoken.val[3]) = 1024;
          *(&atoken.val[3] + 2) = v80;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Posted %s for power source id %d\n", &atoken, 0x12u);
        }
      }

      CFRelease(v19[3]);
LABEL_119:
      v2 = 0;
      v19[3] = v4;
LABEL_120:
      **(a1 + 32) = v2;
      return vm_deallocate(mach_task_self_, *(a1 + 40), *(a1 + 84));
    }

LABEL_27:
    CFRelease(v4);
    return vm_deallocate(mach_task_self_, *(a1 + 40), *(a1 + 84));
  }

  v21 = v8[3];
  if (v21)
  {
    CFRelease(v21);
  }

  else
  {
    sub_10005FA68(qword_1000AB980, "com.apple.system.powersources.attach");
    v30 = qword_1000AB980;
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *v6;
      atoken.val[0] = 136315394;
      *&atoken.val[1] = "com.apple.system.powersources.attach";
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Posted %s for new power source id %d\n", &atoken, 0x12u);
    }
  }

  v8[3] = v4;
  dispatch_async(qword_1000ACCE0, &stru_10009A268);
  **(a1 + 32) = 0;
  return vm_deallocate(mach_task_self_, *(a1 + 40), *(a1 + 84));
}

uint64_t *sub_100044154(int a1, int a2)
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  result = qword_1000ACD00;
  v5 = 16;
  while (*result != a2 || *(result + 2) != a1)
  {
    result += 5;
    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000441C0(uint64_t a1, _OWORD *a2, int a3)
{
  pidp = 0;
  v4 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v4;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004427C;
  block[3] = &unk_1000994E0;
  v7 = a3;
  v8 = pidp;
  dispatch_async(qword_1000ACCE0, block);
  return 0;
}

void sub_10004427C(uint64_t a1)
{
  v2 = qword_1000AB980;
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Releasing power source id = %d\n", v5, 8u);
  }

  v4 = sub_100044154(*(a1 + 36), *(a1 + 32));
  if (v4)
  {
    dispatch_source_cancel(v4[2]);
  }
}

void sub_100044334(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    reply = xpc_dictionary_create_reply(v4);
    if (!reply)
    {
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
      {
        sub_100068E04();
      }

      goto LABEL_18;
    }

    v7 = -536870212;
    v8 = pthread_mutex_trylock(&stru_1000AB220);
    if (v8 > 21)
    {
      if (v8 == 22)
      {
        v7 = -536870206;
        goto LABEL_17;
      }

      if (v8 != 35)
      {
LABEL_17:
        xpc_dictionary_set_uint64(reply, "returnCode", v7);
        xpc_connection_send_message(v3, reply);
        goto LABEL_18;
      }
    }

    else
    {
      if (!v8)
      {
        v9 = qword_1000ACCE0;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000444DC;
        block[3] = &unk_100099278;
        v11 = v3;
        v12 = v5;
        v13 = reply;
        dispatch_async(v9, block);

LABEL_18:
        goto LABEL_19;
      }

      if (v8 != 16)
      {
        goto LABEL_17;
      }
    }

    v7 = -536870187;
    goto LABEL_17;
  }

  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_100068D94();
  }

LABEL_19:
}

void sub_1000444DC(void **a1)
{
  v2 = -536870207;
  if (sub_100011DF8(a1[4], @"com.apple.private.iokit.batterydateoffirstuse", 0))
  {
    v3 = xpc_dictionary_get_value(a1[5], "setBatteryDofu");
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    if (v4)
    {
      v5 = qword_1000AB980;
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Request set battery DOFU: %@\n", &v6, 0xCu);
      }

      v2 = sub_10004461C(v4);
    }

    else
    {
      v2 = -536870206;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  xpc_dictionary_set_uint64(a1[6], "returnCode", v2);
  xpc_connection_send_message(a1[4], a1[6]);
  pthread_mutex_unlock(&stru_1000AB220);
}

uint64_t sub_10004461C(void *a1)
{
  v1 = 3758097090;
  v2 = a1;
  if (v2)
  {
    dispatch_assert_queue_V2(qword_1000ACCE0);
    if (qword_1000ACCF8 && *qword_1000ACCF8 && *(*qword_1000ACCF8 + 80))
    {
      v1 = 0;
      goto LABEL_20;
    }

    v3 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v4 = [v3 components:252 fromDate:v2];
    v5 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
    [v3 setTimeZone:v5];

    v6 = [v3 dateFromComponents:v4];
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
    {
      sub_100069900();
    }

    [v6 timeIntervalSinceReferenceDate];
    if (!v7)
    {
LABEL_19:

      goto LABEL_20;
    }

    v8 = [[NSNumber alloc] initWithUnsignedLongLong:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v11 = sub_100037AB4();
      if (v11)
      {
        if (!IORegistryEntrySetCFProperty(v11, @"DateOfFirstUse", v10))
        {

          v13 = qword_1000AB980;
          v1 = 0;
          if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 138412290;
            v15 = v10;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Set battery DOFU: %@\n", &v14, 0xCu);
            v1 = 0;
          }

          goto LABEL_18;
        }

        v1 = 3758097097;
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
        {
          sub_100069970();
        }
      }

      else
      {
        v1 = 3758097112;
      }

      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
      {
        sub_1000699E0();
      }
    }

    else
    {
      v1 = 3758097085;
    }

LABEL_18:

    goto LABEL_19;
  }

LABEL_20:

  return v1;
}

uint64_t sub_10004488C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  dispatch_assert_queue_not_V2(qword_1000ACCE0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100044958;
  block[3] = &unk_1000994A8;
  block[4] = &v3;
  dispatch_sync(qword_1000ACCE0, block);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100044940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100044998(_DWORD *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (qword_1000ACCE0)
  {
    dispatch_assert_queue_not_V2(qword_1000ACCE0);
    *a1 = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100044A90;
    block[3] = &unk_10009A2F8;
    block[4] = &v7;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(qword_1000ACCE0, block);
    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

void sub_100044A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100044A90(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  dispatch_assert_queue_V2(qword_1000ACCE0);
  dispatch_assert_queue_V2(qword_1000ACCE0);
  v4 = qword_1000ACFE0;
  if (qword_1000ACFE0 < 1)
  {
    goto LABEL_9;
  }

  dispatch_assert_queue_V2(qword_1000ACCE0);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(qword_1000ACCF8 + 8 * v5);
    if ((*(v8 + 16) & 0x40) != 0)
    {
      ++v7;
      v9 = *(v8 + 36);
      if (v9)
      {
        v6 += 100 * *(v8 + 32) / v9;
      }
    }

    ++v5;
  }

  while ((v4 & 0x7FFFFFFF) != v5);
  if (v7)
  {
    *v2 = *(*qword_1000ACCF8 + 16) & 1;
    *v3 = v6;
    v10 = 1;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  *(*(a1[4] + 8) + 24) = v10;
}

void sub_100044B70(IONotificationPort *a1, io_iterator_t a2)
{
  notification = 0;
  dispatch_assert_queue_V2(qword_1000ACCE0);
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    do
    {
      dispatch_assert_queue_V2(qword_1000ACCE0);
      v6 = malloc_type_calloc(1uLL, 0xB0uLL, 0x1060040460130B9uLL);
      *v6 = v5;
      *(v6 + 17) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"InternalBattery-%d", dword_1000ACFD0);
      v7 = ++dword_1000ACFD0;
      v8 = qword_1000AB980;
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found battery: %d", buf, 8u);
      }

      Mutable = qword_1000ACFD8;
      if (!qword_1000ACFD8)
      {
        Mutable = CFSetCreateMutable(0, 1, 0);
        qword_1000ACFD8 = Mutable;
      }

      CFSetAddValue(Mutable, v6);
      Count = CFSetGetCount(qword_1000ACFD8);
      qword_1000ACFE0 = Count;
      if (qword_1000ACCF8)
      {
        free(qword_1000ACCF8);
        qword_1000ACCF8 = 0;
      }

      qword_1000ACCF8 = malloc_type_calloc(Count, 8uLL, 0x2004093837F09uLL);
      CFSetGetValues(qword_1000ACFD8, qword_1000ACCF8);
      IOServiceAddInterestNotification(a1, v5, "IOGeneralInterest", sub_100009B54, v6, &notification);
      v6[1] = notification;
      sub_100009BE4(v6, v5);
      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  sub_100011014();
  sub_100011124();
  dispatch_async(qword_1000ACCE0, &stru_10009A338);
  v11 = MGCopyAnswer();
  v12 = qword_1000ACCB8;
  qword_1000ACCB8 = v11;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_100069A50();
  }

  if (sub_1000476F8() && sub_1000476F8() && sub_10004783C())
  {
    if ([qword_1000ACCB8 BOOLValue] && _os_feature_enabled_impl())
    {
      if (qword_1000AD018 != -1)
      {
        sub_100069AD0();
      }

      if ((byte_1000AD010 & 1) == 0)
      {
        v13 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v13, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_HOUR);
        xpc_dictionary_set_string(v13, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
        xpc_dictionary_set_BOOL(v13, XPC_ACTIVITY_REQUIRES_BUDDY_COMPLETE, 1);
        xpc_activity_register("com.apple.powerd.dofu-monitor", v13, &stru_10009A378);
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_100069AF8();
  }
}

uint64_t sub_100044F2C(uint64_t a1, io_iterator_t a2)
{
  v3 = sub_100041B58();
  result = IOIteratorNext(a2);
  if (result)
  {
    sub_10002D020();
    byte_1000AB998 = 1;
    byte_1000AB204 = (v3 & 4) != 0;
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
    {
      sub_100069B34();
    }

    return IOObjectRelease(a2);
  }

  return result;
}

void sub_100044FA8(int a1, io_iterator_t iterator)
{
  if (IOIteratorNext(iterator))
  {
    byte_1000AB204 = 0;
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
    {
      sub_100069BB0();
    }
  }
}

void sub_100045004(id a1, OS_xpc_object *a2)
{
  if (!pthread_mutex_trylock(&stru_1000AB220))
  {
    v2 = qword_1000ACCE0;

    dispatch_async(v2, &stru_10009A398);
  }
}

void sub_100045050(id a1)
{
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
  {
    sub_100069C64();
  }

  if (qword_1000AD018 != -1)
  {
    sub_100069AD0();
  }

  if ((byte_1000AD010 & 1) == 0)
  {
    v9[1] = 0.0;
    v1 = MAEGetActivationStateWithError();
    v2 = 0;
    if (!v1)
    {
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
      {
        sub_100069D10();
      }

      goto LABEL_20;
    }

    if (![v1 isEqualToString:kMAActivationStateActivated])
    {
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
      {
        sub_100069CA0();
      }

      v6 = 0;
      goto LABEL_24;
    }
  }

  v8 = 0;
  v9[0] = 0.0;
  v7 = 0;
  v3 = sub_10004783C();
  if (!v3)
  {
    sub_100063D44();
  }

  v4 = v3(v9, &v8, &v7);
  v5 = qword_1000AB980;
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v11 = v9[0];
    v12 = 2048;
    v13 = v8;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v4 != 0;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "DOFU-monitor: time:%f uncertainty:%f reliability:%d ret:%u\n", buf, 0x22u);
  }

  if (v7 <= 0)
  {
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
    {
      sub_100069D80();
    }

LABEL_20:
    v6 = 0;
    goto LABEL_25;
  }

  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:v9[0]];
  if (!sub_10004461C(v6))
  {
LABEL_24:
    xpc_activity_unregister("com.apple.powerd.dofu-monitor");
  }

LABEL_25:
  pthread_mutex_unlock(&stru_1000AB220);
}

void sub_1000452AC(id a1)
{
  v9 = 0;
  dispatch_assert_queue_barrier(qword_1000ACCE0);
  dispatch_assert_queue_barrier(qword_1000ACCE0);
  if (sub_1000148D4())
  {
    out_token = 0;
    if (notify_register_dispatch("com.apple.system.batteryHealth.p0Threshold", &out_token, qword_1000ACCE0, &stru_10009A438))
    {
      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
      {
        sub_100069DD0();
      }
    }

    else
    {
      notify_get_state(out_token, &qword_1000AB9A0);
      v2 = qword_1000AB978;
      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = qword_1000AB9A0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "batteryHealthP0Threshold set to %lld\n", buf, 0xCu);
      }
    }

    byte_1000ACFF0 = 1;
  }

  else if ((sub_10000FC50() & 1) != 0 || sub_1000406A8())
  {
    qword_1000AB9A0 = 0x7FFFFFFFFFFFFFFFLL;
    v1 = qword_1000AB978;
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "batteryHealthP0Threshold set to %lld\n", buf, 0xCu);
    }
  }

  dispatch_assert_queue_barrier(qword_1000ACCE0);
  if (sub_1000148D4())
  {
    out_token = 0;
    if (notify_register_dispatch("com.apple.system.batteryHealth.UPOAware", &out_token, qword_1000ACCE0, &stru_10009A458))
    {
      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
      {
        sub_100069E40();
      }
    }

    else
    {
      notify_get_state(out_token, &qword_1000AB990);
      v3 = qword_1000AB978;
      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = qword_1000AB990;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "batteryHealthUPOAware set to %lld\n", buf, 0xCu);
      }
    }
  }

  if ((sub_10000FC50() & 1) != 0 || sub_1000406A8())
  {
    qword_1000AB990 = 20047;
    v4 = qword_1000AB978;
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = 20047;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "batteryHealthUPOAware set to %lld\n", buf, 0xCu);
    }
  }

  dispatch_assert_queue_barrier(qword_1000ACCE0);
  if (sub_10000FC50())
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1000406A8() ^ 1;
  }

  byte_1000ACFF1 = v5;
  v6 = qword_1000AB978;
  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v12) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "batteryHealthServiceBCDC support: %d", buf, 8u);
  }

  v7 = sub_10000E814();
  v8 = v7;
  if (!v7 || !CFDictionaryGetCount(v7))
  {
    if (notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &v9, qword_1000ACCE0, &stru_10009A418) && os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
    {
      sub_100069EB0();
      if (!v8)
      {
        return;
      }
    }

    else if (!v8)
    {
      return;
    }
  }

  CFRelease(v8);
}

void sub_10004564C(id a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = qword_1000AB978;
  if (Mutable)
  {
    v4 = Mutable;
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Triggering battery health data migration from powerlog\n", v5, 2u);
    }

    dispatch_assert_queue_V2(qword_1000ACCE0);
    if (qword_1000ACCF8 && *qword_1000ACCF8)
    {
      sub_100012A5C(v4, *qword_1000ACCF8);
    }

    else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
    {
      sub_100069F20();
    }

    CFRelease(v4);
  }

  else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
  {
    sub_100069F5C();
  }
}

void sub_100045758(id a1, int a2)
{
  notify_get_state(a2, &qword_1000AB9A0);
  v2 = qword_1000AB978;
  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = qword_1000AB9A0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received notification for batteryHealthP0Threshold. Value set to %lld\n", &v3, 0xCu);
  }
}

void sub_10004580C(id a1, int a2)
{
  notify_get_state(a2, &qword_1000AB990);
  v2 = qword_1000AB978;
  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = qword_1000AB990;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received notification for batteryHealthUPOAware. Value set to %lld\n", &v3, 0xCu);
  }
}

uint64_t sub_1000458C0(void *a1, void *a2, _DWORD *a3)
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  p_prots = &OBJC_PROTOCOL____PMLowPowerModeProtocol.prots;
  if (!CFDictionaryContainsKey(a2, @"calibration0"))
  {
    v175 = a3;
    v7 = qword_1000AB978;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "calib0: starting", buf, 2u);
    }

    dispatch_assert_queue_V2(qword_1000ACCE0);
    v171 = +[NSMutableDictionary dictionary];
    v8 = +[NSMutableDictionary dictionary];
    v170 = +[NSMutableDictionary dictionary];
    v173 = a1;
    v9 = a1;
    v10 = a2;
    v11 = [v9 objectForKeyedSubscript:@"BatteryData"];
    v12 = [v11 objectForKeyedSubscript:@"LifetimeData"];
    LODWORD(valuePtr) = 0;
    *buf = 0;
    if (CFDictionaryGetValueIfPresent(v10, @"Battery Service Flags", buf))
    {
      v13 = *buf;
      TypeID = CFNumberGetTypeID();
      if (v13)
      {
        if (CFGetTypeID(v13) == TypeID)
        {
          CFNumberGetValue(*buf, kCFNumberIntType, &valuePtr);
        }
      }
    }

    v15 = 0xFFFFFFFFLL;
    v179 = -1;
    *buf = 0;
    if (CFDictionaryGetValueIfPresent(v10, @"Battery Service State", buf))
    {
      v16 = *buf;
      v17 = CFNumberGetTypeID();
      if (v16)
      {
        if (CFGetTypeID(v16) == v17)
        {
          CFNumberGetValue(*buf, kCFNumberIntType, &v179);
        }
      }
    }

    v178 = -1;
    *buf = 0;
    v168 = v10;
    if (CFDictionaryGetValueIfPresent(v10, @"Maximum Capacity Percent", buf))
    {
      v18 = *buf;
      v19 = CFNumberGetTypeID();
      if (v18 && CFGetTypeID(v18) == v19)
      {
        CFNumberGetValue(*buf, kCFNumberIntType, &v178);
        v15 = v178;
      }

      else
      {
        v15 = 0xFFFFFFFFLL;
      }
    }

    v20 = [NSNumber numberWithInt:v15];
    [v8 setObject:v20 forKeyedSubscript:@"Maximum Capacity Percent"];

    v21 = [NSNumber numberWithUnsignedInt:valuePtr];
    [v8 setObject:v21 forKeyedSubscript:@"Battery Service Flags"];

    v22 = [NSNumber numberWithInt:v179];
    [v8 setObject:v22 forKeyedSubscript:@"Battery Service State"];

    v23 = [v9 objectForKeyedSubscript:@"Serial"];
    [v8 setObject:v23 forKeyedSubscript:@"Battery Serial"];

    v24 = [v9 objectForKeyedSubscript:@"CycleCount"];
    [v8 setObject:v24 forKeyedSubscript:@"CycleCount"];

    v25 = [v9 objectForKeyedSubscript:@"GasGaugeFirmwareVersion"];
    [v8 setObject:v25 forKeyedSubscript:@"GasGaugeFirmwareVersion"];

    v26 = [v11 objectForKeyedSubscript:@"AlgoChemID"];
    [v8 setObject:v26 forKeyedSubscript:@"AlgoChemID"];

    v27 = sub_100047474(v11);
    [v8 setObject:v27 forKeyedSubscript:@"WeightedRa"];

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10004752C;
    *&buf[24] = &unk_10009A480;
    v28 = v8;
    v182 = v28;
    v29 = v11;
    v183 = v29;
    [&off_1000A33D0 enumerateObjectsUsingBlock:buf];
    v30 = [v12 objectForKeyedSubscript:@"TotalOperatingTime"];
    [v28 setObject:v30 forKeyedSubscript:@"TotalOperatingTime"];

    v31 = [v9 objectForKeyedSubscript:@"NominalChargeCapacity"];
    [v28 setObject:v31 forKeyedSubscript:@"NominalChargeCapacity"];

    v32 = [v12 objectForKeyedSubscript:@"NCCMin"];
    [v28 setObject:v32 forKeyedSubscript:@"NCCMin"];

    v33 = [v12 objectForKeyedSubscript:@"NCCMax"];
    [v28 setObject:v33 forKeyedSubscript:@"NCCMax"];

    v34 = [v9 objectForKeyedSubscript:@"AppleRawMaxCapacity"];
    [v28 setObject:v34 forKeyedSubscript:@"AppleRawMaxCapacity"];

    v35 = [v12 objectForKeyedSubscript:@"MinimumFCC"];
    [v28 setObject:v35 forKeyedSubscript:@"MinimumFCC"];

    v36 = [v12 objectForKeyedSubscript:@"MaximumFCC"];
    [v28 setObject:v36 forKeyedSubscript:@"MaximumFCC"];

    v166 = v29;
    v37 = [v29 objectForKeyedSubscript:@"Qmax"];
    v38 = [v37 firstObject];
    [v28 setObject:v38 forKeyedSubscript:@"Qmax"];

    v39 = [v12 objectForKeyedSubscript:@"MaximumQmax"];
    [v28 setObject:v39 forKeyedSubscript:@"MaximumQmax"];

    v40 = [v12 objectForKeyedSubscript:@"MinimumQmax"];
    [v28 setObject:v40 forKeyedSubscript:@"MinimumQmax"];

    v41 = [v12 objectForKeyedSubscript:@"TimeAtHighSoc"];
    v42 = v41;
    if (v41)
    {
      v43 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", 2 * [v41 length]);
      v44 = [v42 bytes];
      if ([v42 length])
      {
        v45 = 0;
        do
        {
          [v43 appendFormat:@"%02x", v44[v45++]];
        }

        while (v45 < [v42 length]);
      }

      v46 = qword_1000AB978;
      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
      {
        *v180 = 138412546;
        *&v180[4] = v42;
        *&v180[12] = 2112;
        *&v180[14] = v43;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "calib0: baseline TAHSoC %@ -> %@", v180, 0x16u);
      }

      [v28 setObject:v43 forKeyedSubscript:@"TimeAtHighSoc"];
    }

    v47 = [NSNumber numberWithInt:sub_1000475A4()];
    [v28 setObject:v47 forKeyedSubscript:@"LifetimeUPOCount"];

    *v180 = 0;
    *&v180[8] = 0;
    clock_gettime(_CLOCK_REALTIME, v180);
    v48 = [NSNumber numberWithUnsignedLongLong:*v180];
    [v28 setObject:v48 forKeyedSubscript:@"epoch"];

    v49 = qword_1000AB978;
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
    {
      *v180 = 138412290;
      *&v180[4] = v28;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "calib0: baseline data %@", v180, 0xCu);
    }

    v50 = v179 != 6 && v179 - 1 >= 3;
    v51 = !v50;
    a3 = v175;
    v52 = 160;
    if (!v50)
    {
      v52 = 161;
    }

    if ((*v175 & 0x200) != 0)
    {
      v51 = v52;
    }

    v53 = v51 | 0x400;
    v54 = [NSNumber numberWithUnsignedLong:v51 | 0x400];
    [v171 setObject:v54 forKeyedSubscript:@"calibrationFlags"];

    v55 = qword_1000AB978;
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
    {
      *v180 = 134217984;
      *&v180[4] = v53;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "calib0: baseline calibration flags 0x%lx", v180, 0xCu);
    }

    [v171 setObject:v170 forKeyedSubscript:@"snapshots"];
    [v171 setObject:v28 forKeyedSubscript:@"baseline"];
    [(__CFDictionary *)v168 setObject:v171 forKeyedSubscript:@"calibration0"];

    p_prots = &OBJC_PROTOCOL____PMLowPowerModeProtocol.prots;
    a1 = v173;
  }

  dispatch_assert_queue_V2(qword_1000ACCE0);
  v56 = a1;
  v57 = a2;
  v58 = [v57 objectForKeyedSubscript:@"calibration0"];
  v59 = [v58 mutableCopy];

  if (!v59)
  {
    v60 = qword_1000AB978;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      sub_10006A7E0();
    }
  }

  v61 = [v59 objectForKeyedSubscript:@"calibrationFlags"];
  v62 = [v61 unsignedLongValue];

  v63 = qword_1000AB978;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v62;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "calib0: checking flags 0x%lx", buf, 0xCu);
  }

  if ((v62 & 0x20) == 0)
  {
    v176 = a3;
    v64 = [v59 objectForKeyedSubscript:@"baseline"];
    if (!v64)
    {
      v65 = qword_1000AB978;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_10006A218();
      }
    }

    v172 = v59;
    v66 = [v64 objectForKeyedSubscript:@"WeightedRa"];
    v67 = [v66 intValue];

    v68 = [v64 objectForKeyedSubscript:@"WeightedRa"];

    v169 = v57;
    v174 = v64;
    if (!v68)
    {
      v69 = qword_1000AB978;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        sub_10006A81C();
      }

      v67 = -1;
    }

    v70 = [v56 objectForKeyedSubscript:@"CycleCount"];
    v71 = [v70 intValue];

    v72 = [v56 objectForKeyedSubscript:@"CycleCount"];

    if (!v72)
    {
      v73 = qword_1000AB978;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_10006A858();
      }

      v71 = -1;
    }

    v74 = [v174 objectForKeyedSubscript:@"CycleCount"];
    v75 = [v74 intValue];

    v76 = [v174 objectForKeyedSubscript:@"CycleCount"];

    if (!v76)
    {
      v77 = qword_1000AB978;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        sub_10006A894();
      }

      v75 = -1;
    }

    v78 = qword_1000AB978;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "calib0: checking exit criteria", buf, 2u);
    }

    v79 = [v56 objectForKeyedSubscript:@"BatteryData"];
    v80 = [v79 objectForKeyedSubscript:@"AlgoChemID"];

    if (v80)
    {
      v81 = [v79 objectForKeyedSubscript:@"AlgoChemID"];
      v82 = [v81 intValue];

      if (v82 <= 1006582719)
      {
        switch(v82)
        {
          case 1005792710:
            v83 = 0;
            v84 = 190;
            break;
          case 1005802730:
            v83 = 0;
            v84 = 205;
            break;
          case 1006542710:
            v83 = 0;
            v84 = 175;
            break;
          default:
            goto LABEL_75;
        }

LABEL_76:

        v86 = qword_1000AB978;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v67;
          *&buf[8] = 1024;
          *&buf[10] = v84;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "calib0: initial wRDC:%d threshold:%d", buf, 0xEu);
        }

        if ((v83 & 1) != 0 || (v87 = 20, v88 = 256, v67 != -1) && v67 <= v84)
        {
          v87 = 10;
          v88 = 64;
        }

        v89 = v88 | v62;
        p_prots = &OBJC_PROTOCOL____PMLowPowerModeProtocol.prots;
        v90 = qword_1000AB978;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *&buf[4] = v75;
          *&buf[8] = 1024;
          *&buf[10] = v71;
          *&buf[14] = 1024;
          *&buf[16] = v87;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "calib0: initial:%d current:%d threshold:%d", buf, 0x14u);
        }

        v91 = v71 - v75;
        v92 = v89;
        v93 = v169;
        v94 = v172;
        if (v91 <= v87)
        {
LABEL_169:
          if (!v94)
          {
            goto LABEL_171;
          }

          goto LABEL_170;
        }

        v163 = v91;
        v160 = v89;
        v167 = v89 | 0x420;
        v95 = qword_1000AB978;
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v89 | 0x420;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "calib0: exit criteria met: 0x%lx", buf, 0xCu);
        }

        dispatch_assert_queue_V2(qword_1000ACCE0);
        v96 = qword_1000AB9A0;
        if (qword_1000AB9A0)
        {
LABEL_128:
          v164 = v87;
          v101 = v96 * 0.7;
          v102 = qword_1000AB978;
          if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v96 * 0.7;
            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "calib0: checking for calibration failure with threshold %f", buf, 0xCu);
          }

          v103 = v56;
          v104 = [v103 objectForKeyedSubscript:@"CycleCount"];
          v105 = [v104 intValue];

          v106 = [v103 objectForKeyedSubscript:@"CycleCount"];

          v165 = v56;
          v162 = v103;
          if (!v106)
          {
            if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
            {
              sub_10006A858();
            }

            v105 = 0xFFFFFFFFLL;
          }

          v161 = [v169 objectForKeyedSubscript:@"calibration0"];
          v107 = [v161 objectForKeyedSubscript:@"snapshots"];
          v108 = [v107 count];
          if (v105 < 1)
          {
            v110 = 0;
            v111 = 0;
            v122 = v176;
            goto LABEL_162;
          }

          v109 = v108;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          while (1)
          {
            v113 = p_prots[303];
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109888;
              *&buf[4] = v105;
              *&buf[8] = 1024;
              *&buf[10] = v111;
              *&buf[14] = 1024;
              *&buf[16] = v112;
              *&buf[20] = 2048;
              *&buf[22] = v109;
              _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "calib0: loop: checking for target cycle %d, found %d (%d / %zu)", buf, 0x1Eu);
            }

            v114 = [NSString stringWithFormat:@"%d", v105];
            v115 = [v107 objectForKeyedSubscript:v114];
            v116 = p_prots[303];
            v117 = os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT);
            if (v115)
            {
              if (v117)
              {
                *buf = 67109120;
                *&buf[4] = v105;
                _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "calib0: loop: snapshot found for %d", buf, 8u);
              }

              v118 = [v115 objectForKeyedSubscript:@"WeightedRa"];
              v119 = [v118 intValue];

              if (v119 > 0)
              {
                ++v111;
                v120 = qword_1000AB978;
                if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *&buf[4] = v111;
                  *&buf[8] = 1024;
                  *&buf[10] = v119;
                  _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "calib0: loop: adding sample #%d with wRDC %d", buf, 0xEu);
                }

                v110 += v119;
                if (v111 == 5)
                {
                  p_prots = &OBJC_PROTOCOL____PMLowPowerModeProtocol.prots;
                  v124 = qword_1000AB978;
                  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "calib0: loop: exiting, found enough", buf, 2u);
                  }

                  v111 = 5;
LABEL_158:

LABEL_159:
                  if (v111 == 5)
                  {
                    v122 = v176;
                    v93 = v169;
                    v94 = v172;
                    v87 = v164;
                    goto LABEL_165;
                  }

                  v122 = v176;
                  v93 = v169;
LABEL_162:
                  v94 = v172;
                  v87 = v164;
                  if (os_log_type_enabled(p_prots[303], OS_LOG_TYPE_ERROR))
                  {
                    sub_10006A90C();
                  }

                  if (v111 > 0)
                  {
LABEL_165:

                    v56 = v165;
                    v91 = v163;
                    v92 = v167;
                    if (v110 / v111 > v101)
                    {
                      v125 = p_prots[303];
                      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "calib0: calibration failed", buf, 2u);
                      }

                      *v122 |= 0x20000u;
                      v92 = v160 | 0x620;
                    }

                    goto LABEL_169;
                  }

                  v56 = v165;
                  v91 = v163;
                  v92 = v167;
                  if (!v172)
                  {
LABEL_171:

                    if (v91 > v87)
                    {
                      goto LABEL_172;
                    }

                    dispatch_assert_queue_V2(qword_1000ACCE0);
                    v127 = v56;
                    v129 = v93;
                    v130 = [v129 objectForKeyedSubscript:@"calibration0"];
                    v131 = [v130 mutableCopy];

                    if (v131)
                    {
                      v132 = [v131 objectForKeyedSubscript:@"snapshots"];
                      v133 = [v132 mutableCopy];

                      *v180 = 0;
                      *buf = 0;
                      if (CFDictionaryGetValueIfPresent(v129, @"Battery Service Flags", buf))
                      {
                        v134 = *buf;
                        v135 = CFNumberGetTypeID();
                        if (v134)
                        {
                          if (CFGetTypeID(v134) == v135)
                          {
                            CFNumberGetValue(*buf, kCFNumberIntType, v180);
                          }
                        }
                      }

                      LODWORD(valuePtr) = -1;
                      *buf = 0;
                      if (CFDictionaryGetValueIfPresent(v129, @"Battery Service State", buf))
                      {
                        v136 = *buf;
                        v137 = CFNumberGetTypeID();
                        if (v136)
                        {
                          if (CFGetTypeID(v136) == v137)
                          {
                            CFNumberGetValue(*buf, kCFNumberIntType, &valuePtr);
                          }
                        }
                      }

                      v179 = -1;
                      *buf = 0;
                      if (CFDictionaryGetValueIfPresent(v129, @"Maximum Capacity Percent", buf))
                      {
                        v138 = *buf;
                        v139 = CFNumberGetTypeID();
                        if (v138)
                        {
                          if (CFGetTypeID(v138) == v139)
                          {
                            CFNumberGetValue(*buf, kCFNumberIntType, &v179);
                          }
                        }
                      }

                      v140 = [v127 objectForKeyedSubscript:@"CycleCount"];
                      v141 = [v140 intValue];

                      v142 = [v127 objectForKeyedSubscript:@"CycleCount"];

                      if (!v142)
                      {
                        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                        {
                          sub_10006A858();
                        }

                        v141 = 0xFFFFFFFFLL;
                      }

                      v143 = [NSString stringWithFormat:@"%d", v141];
                      v144 = [v133 objectForKeyedSubscript:v143];

                      v145 = qword_1000AB978;
                      v146 = os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT);
                      if (v144)
                      {
                        if (v146)
                        {
                          *buf = 67109120;
                          *&buf[4] = v141;
                          _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "calib0: %d already snapshotted", buf, 8u);
                        }
                      }

                      else
                      {
                        if (v146)
                        {
                          *buf = 67109120;
                          *&buf[4] = v141;
                          _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "calib0: creating snapshot for %d", buf, 8u);
                        }

                        v147 = [v127 objectForKeyedSubscript:@"BatteryData"];
                        v148 = [v147 objectForKeyedSubscript:@"LifetimeData"];
                        v149 = +[NSMutableDictionary dictionary];
                        v150 = [NSNumber numberWithInt:v179];
                        [v149 setObject:v150 forKeyedSubscript:@"Maximum Capacity Percent"];

                        v151 = [NSNumber numberWithUnsignedInt:*v180];
                        [v149 setObject:v151 forKeyedSubscript:@"Battery Service Flags"];

                        v152 = [NSNumber numberWithInt:valuePtr];
                        [v149 setObject:v152 forKeyedSubscript:@"Battery Service State"];

                        v153 = [NSNumber numberWithInt:v141];
                        [v149 setObject:v153 forKeyedSubscript:@"CycleCount"];

                        v177 = v147;
                        v154 = sub_100047474(v147);
                        [v149 setObject:v154 forKeyedSubscript:@"WeightedRa"];

                        v155 = [v127 objectForKeyedSubscript:@"NominalChargeCapacity"];
                        [v149 setObject:v155 forKeyedSubscript:@"NominalChargeCapacity"];

                        v156 = [v148 objectForKeyedSubscript:@"TotalOperatingTime"];
                        [v149 setObject:v156 forKeyedSubscript:@"TotalOperatingTime"];

                        v157 = [NSNumber numberWithInt:sub_1000475A4()];
                        [v149 setObject:v157 forKeyedSubscript:@"LifetimeUPOCount"];

                        v158 = qword_1000AB978;
                        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 67109378;
                          *&buf[4] = v141;
                          *&buf[8] = 2112;
                          *&buf[10] = v149;
                          _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "calib0: created snapshot for %d %@", buf, 0x12u);
                        }

                        [v133 setObject:v149 forKeyedSubscript:v143];
                      }

                      [v131 setObject:v133 forKeyedSubscript:@"snapshots"];
                      [v129 setObject:v131 forKeyedSubscript:@"calibration0"];
                    }

                    else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                    {
                      sub_10006A988();
                    }

                    v128 = 1;
                    goto LABEL_206;
                  }

LABEL_170:
                  v126 = [NSNumber numberWithUnsignedLong:v92];
                  [v94 setObject:v126 forKeyedSubscript:@"calibrationFlags"];

                  [v93 setObject:v94 forKeyedSubscript:@"calibration0"];
                  goto LABEL_171;
                }
              }

              ++v112;
              p_prots = (&OBJC_PROTOCOL____PMLowPowerModeProtocol + 16);
            }

            else if (v117)
            {
              *buf = 67109120;
              *&buf[4] = v105;
              _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "calib0: loop: no snapshot found for %d", buf, 8u);
            }

            if (v109 == v112)
            {
              v123 = p_prots[303];
              if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v109;
                _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "calib0: loop: ran through all %zu samples", buf, 0xCu);
              }

              goto LABEL_158;
            }

            v121 = __OFSUB__(v105, 1);
            v105 = (v105 - 1);
            if ((v105 < 0) ^ v121 | (v105 == 0))
            {
              goto LABEL_159;
            }
          }
        }

        v97 = [v56 objectForKeyedSubscript:@"BatteryData"];
        v98 = [v97 objectForKeyedSubscript:@"AlgoChemID"];

        if (v98)
        {
          v99 = [v97 objectForKeyedSubscript:@"AlgoChemID"];
          v100 = [v99 intValue];
        }

        else
        {
          if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
          {
            sub_10006A8D0();
          }

          v100 = -1;
        }

        *&buf[16] = -61007701;
        *buf = xmmword_100078ED0;
        if (MGIsDeviceOfType())
        {
          if (v100 <= 1006581019)
          {
            if (v100 != 1006540910)
            {
              if (v100 == 1006542710)
              {
                v96 = 508;
                goto LABEL_108;
              }

              goto LABEL_107;
            }

            v96 = 405;
LABEL_108:
            *&v180[16] = -235416490;
            *v180 = xmmword_100078EE4;
            if (MGIsDeviceOfType())
            {
              if (v100 == 1006672720)
              {
                v96 = 521;
              }

              else if (v100 == 1006670920)
              {
                v96 = 483;
              }

              else
              {
                v96 = 577;
              }
            }

            v185 = -820493242;
            valuePtr = xmmword_100078EF8;
            if (!MGIsDeviceOfType())
            {
              goto LABEL_127;
            }

            if (v100 <= 1005801231)
            {
              if (v100 == 1005791210)
              {
                v96 = 366;
                goto LABEL_127;
              }
            }

            else
            {
              switch(v100)
              {
                case 1005801232:
                  v96 = 390;
                  goto LABEL_127;
                case 1005802730:
                  v96 = 533;
                  goto LABEL_127;
                case 1005811242:
                  v96 = 321;
LABEL_127:

                  goto LABEL_128;
              }
            }

            v96 = 538;
            goto LABEL_127;
          }

          if (v100 == 1006581020)
          {
            v96 = 609;
            goto LABEL_108;
          }
        }

LABEL_107:
        v96 = 660;
        goto LABEL_108;
      }

      switch(v82)
      {
        case 1006582720:
          v83 = 0;
          v84 = 218;
          goto LABEL_76;
        case 1006660910:
          v83 = 0;
          v84 = 138;
          goto LABEL_76;
        case 1006672720:
          v83 = 0;
          v84 = 160;
          goto LABEL_76;
      }
    }

    else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
    {
      sub_10006A8D0();
    }

LABEL_75:
    v84 = -1;
    v83 = 1;
    goto LABEL_76;
  }

  v85 = qword_1000AB978;
  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "calib0: calibration complete", buf, 2u);
  }

LABEL_172:
  v127 = p_prots[303];
  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "calib0: exiting", buf, 2u);
  }

  v128 = 0;
LABEL_206:

  return v128;
}

id sub_100047474(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  v3 = [v1 objectForKeyedSubscript:@"WeightedRa"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 firstObject];

    v3 = v4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    v3 = 0;
  }

  return v3;
}

void sub_10004752C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
}

uint64_t sub_1000475A4()
{
  v0 = IOServiceMatching("IOService");
  if (!v0)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = v0;
  valuePtr = 0;
  values = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  v2 = CFDictionaryCreate(kCFAllocatorDefault, &off_1000AB5E8, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v2)
  {
    CFRelease(v1);
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  CFDictionarySetValue(v1, @"IOPropertyMatch", v2);
  CFRelease(v3);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (!MatchingService)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = MatchingService;
  properties = 0;
  IORegistryEntryCreateCFProperties(MatchingService, &properties, 0, 0);
  v6 = properties;
  if (properties && ([(__CFDictionary *)properties objectForKeyedSubscript:@"IOPMUBootUPOCounter"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"IOPMUBootUPOCounter"];
    v9 = [v8 intValue];
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  IOObjectRelease(v5);

  return v9;
}

uint64_t sub_1000476F8()
{
  if (!qword_1000AD000)
  {
    qword_1000AD000 = _sl_dlopen();
  }

  return qword_1000AD000;
}

uint64_t sub_1000477C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000AD000 = result;
  return result;
}

uint64_t sub_10004783C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_1000AD008;
  v6 = qword_1000AD008;
  if (!qword_1000AD008)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100047904;
    v2[3] = &unk_1000994A8;
    v2[4] = &v3;
    sub_100047904(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000478EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100047904(uint64_t a1)
{
  v2 = sub_1000476F8();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "TMGetReferenceTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000AD008 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100047990(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v4 = v1;
    v2 = v1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v1 = v4;
    if (isKindOfClass)
    {
      byte_1000AD010 = [v2 BOOLValue];
      v1 = v4;
    }
  }
}

void sub_100047A24(id a1)
{
  v1 = [[AVSystemControllerMonitor alloc] initWithBlock:&stru_10009A160];
  v2 = qword_1000ACFC0;
  qword_1000ACFC0 = v1;

  if (!qword_1000ACFC0 && os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_10006A9C4();
  }
}

uint64_t sub_100047A94(uint64_t a1)
{
  v2 = IOIteratorNext(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    sub_100009BE4(**(a1 + 32), v2);
    IOObjectRelease(v3);
  }

  v4 = *(a1 + 40);

  return IOObjectRelease(v4);
}

void sub_100047B58(id a1)
{
  qword_1000AD048 = objc_alloc_init(PMCoreSmartPowerNapService);

  _objc_release_x1();
}

void sub_100048054(uint64_t a1)
{
  v2 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CSPN: received registration from %@", &v14, 0xCu);
  }

  v4 = [[PMCoreSmartPowerNapClient alloc] initWithConnection:*(a1 + 40)];
  if (v4)
  {
    v5 = [*(a1 + 48) clients];
    [v5 setObject:v4 forKeyedSubscript:*(a1 + 32)];

    v6 = [(PMCoreSmartPowerNapClient *)v4 connection];

    v7 = qword_1000AB9A8;
    if (v6)
    {
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        v10 = v7;
        LODWORD(v8) = [v8 processIdentifier];
        v11 = [*(a1 + 48) current_state];
        v14 = 138412802;
        v15 = v9;
        v16 = 1024;
        v17 = v8;
        v18 = 1024;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CSPN: Initial update state for client %@ with pid %d to %d", &v14, 0x18u);
      }

      v12 = [(PMCoreSmartPowerNapClient *)v4 connection];
      v13 = [v12 remoteObjectProxyWithErrorHandler:&stru_10009A558];
      [v13 updateState:{objc_msgSend(*(a1 + 48), "current_state")}];
    }

    else if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_100062770((a1 + 32), v7);
    }
  }
}

void sub_100048244(id a1, NSError *a2)
{
  v2 = a2;
  v3 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error updating state %@", &v4, 0xCu);
  }
}

void sub_1000483A0(uint64_t a1)
{
  v2 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CSPN: received unregister from %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) clients];
  [v4 removeObjectForKey:*(a1 + 32)];
}

void sub_100048694(id a1, NSError *a2)
{
  v2 = a2;
  v3 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error updating state %@", &v4, 0xCu);
  }
}

void sub_1000487E4(uint64_t a1)
{
  v2 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v10[0] = 67109120;
    v10[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: set state to %d", v10, 8u);
  }

  v4 = *(a1 + 40);
  if (v4 != [*(a1 + 32) current_state])
  {
    v5 = *(a1 + 40);
    if (*(a1 + 40))
    {
      if (v5 == 2)
      {
        [*(a1 + 32) enterCoreSmartPowerNap];
        v9 = [*(a1 + 32) predictor];
        [v9 updateCoreSmartPowerNapState:1];

        v7 = [*(a1 + 32) predictor];
        [v7 handleSessionCoolOffTimer];
LABEL_11:

        return;
      }

      if (v5 != 1)
      {
        return;
      }

      [*(a1 + 32) enterCoreSmartPowerNap];
      v6 = [*(a1 + 32) predictor];
      v7 = v6;
      v8 = 1;
    }

    else
    {
      [*(a1 + 32) exitCoreSmartPowerNap];
      v6 = [*(a1 + 32) predictor];
      v7 = v6;
      v8 = 0;
    }

    [v6 updateCoreSmartPowerNapState:v8];
    goto LABEL_11;
  }
}

uint64_t sub_1000489E8(uint64_t a1)
{
  v2 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v6[0] = 67109120;
    v6[1] = [v3 current_state];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: syncState %u", v6, 8u);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) current_state]);
}

void sub_100048ED0(uint64_t a1)
{
  v2 = [*(a1 + 32) predictor];
  [v2 updateQueryDelta:*(a1 + 40)];
}

void sub_100049038(uint64_t a1)
{
  v2 = [*(a1 + 32) predictor];
  [v2 updateRequeryDelta:*(a1 + 40)];
}

void sub_1000491A4(uint64_t a1)
{
  v2 = [*(a1 + 32) predictor];
  [v2 updateMotionAlarmThreshold:*(a1 + 40)];
}

void sub_10004930C(uint64_t a1)
{
  v2 = [*(a1 + 32) predictor];
  [v2 updateMotionAlarmStartThreshold:*(a1 + 40)];
}

uint64_t sub_100049498(uint64_t a1, _OWORD *a2, int a3, _BOOL4 *a4)
{
  Current = CFAbsoluteTimeGetCurrent();
  v8 = a3 || (sub_10000CD20() & 1) == 0;
  *a4 = v8;
  if (qword_1000AD060 || (qword_1000AD060 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks)) != 0)
  {
    v9 = a2[1];
    *atoken.val = *a2;
    *&atoken.val[4] = v9;
    *pidp = 0;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp[1], 0, 0);
    Count = CFArrayGetCount(qword_1000AD060);
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; v11 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000AD060, i);
        if (!ValueAtIndex)
        {
          break;
        }

        Mutable = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"AppPID");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberIntType, pidp);
          if (pidp[1] == pidp[0])
          {
            goto LABEL_21;
          }
        }
      }
    }

    Mutable = CFDictionaryCreateMutable(0, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFArrayAppendValue(qword_1000AD060, Mutable);
    CFRelease(Mutable);
    if (CFArrayGetCount(qword_1000AD060) >= 11)
    {
      CFArrayRemoveValueAtIndex(qword_1000AD060, 0);
    }

    v16 = CFNumberCreate(0, kCFNumberIntType, &pidp[1]);
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(Mutable, @"AppPID", v16);
      CFRelease(v17);
    }

    if (proc_name(pidp[1], &atoken, 0x400u))
    {
      v18 = CFStringCreateWithCString(0, &atoken, 0);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(Mutable, @"AppPathString", v18);
        CFRelease(v19);
      }
    }

    if (Mutable)
    {
LABEL_21:
      v20 = CFDictionaryGetValue(Mutable, @"HIDHistoryArray");
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
        CFDictionarySetValue(Mutable, @"HIDHistoryArray", v21);
        CFRelease(v21);
        if (!v21)
        {
          return 0;
        }
      }

      if (CFArrayGetCount(v21) >= 1 && (v22 = CFArrayGetValueAtIndex(v21, 0)) != 0 && (BytePtr = CFDataGetBytePtr(v22), Current < *BytePtr + 300.0))
      {
        if (a3)
        {
          ++*(BytePtr + 2);
        }

        else
        {
          ++*(BytePtr + 3);
        }
      }

      else
      {
        *atoken.val = (Current / 300) * 300.0;
        *&atoken.val[2] = 0;
        if (a3)
        {
          atoken.val[2] = 1;
        }

        else
        {
          atoken.val[3] = 1;
        }

        v24 = CFDataCreate(0, &atoken, 16);
        if (v24)
        {
          v25 = v24;
          CFArrayInsertValueAtIndex(v21, 0, v24);
          CFRelease(v25);
        }

        if (CFArrayGetCount(v21) >= 13)
        {
          do
          {
            v26 = CFArrayGetCount(v21);
            CFArrayRemoveValueAtIndex(v21, v26 - 1);
          }

          while (CFArrayGetCount(v21) > 12);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100049820(uint64_t a1, vm_address_t *a2, unsigned int *a3, int *a4)
{
  *a2 = 0;
  *a3 = 0;
  Data = CFPropertyListCreateData(0, qword_1000AD060, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (Data)
  {
    v8 = Data;
    *a2 = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(v8);
    *a3 = Length;
    vm_allocate(mach_task_self_, a2, Length, 1);
    v10 = *a2;
    if (v10)
    {
      BytePtr = CFDataGetBytePtr(v8);
      memcpy(v10, BytePtr, *a3);
      *a4 = 0;
    }

    CFRelease(v8);
    v12 = 0;
  }

  else
  {
    v12 = -536870212;
  }

  *a4 = v12;
  return 0;
}

void sub_100049900(void *a1, void *a2, unsigned int *a3, int *a4)
{
  if (qword_1000AD068 == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    sub_10006AA58();
    if (!a1)
    {
      return;
    }
  }

  if (a2 && a3 && a4 && sub_10000FC50())
  {
    v8 = [a1 objectForKeyedSubscript:@"KioskMode"];
    if (v8)
    {
      v9 = v8;
      if ([v8 objectForKeyedSubscript:@"KioskModeMode"])
      {
        v10 = [objc_msgSend(v9 objectForKeyedSubscript:{@"KioskModeMode", "intValue"}] == 2 || objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", @"KioskModeMode"), "intValue") == 3;
        v11 = *a4;
        v12 = (*a4 >> 13) & 1;
        if (!sub_10000FC50())
        {
          goto LABEL_50;
        }

        v13 = [a1 objectForKeyedSubscript:@"BatteryData"];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 objectForKeyedSubscript:@"Qmax"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v15 firstObject];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_ERROR))
              {
                sub_10006AA6C();
              }

              return;
            }
          }

          v16 = [v15 intValue];
          v17 = [v14 objectForKeyedSubscript:@"LifetimeData"];
          if (v17)
          {
            v18 = v11 & 0x2000;
            v19 = [objc_msgSend(v17 objectForKeyedSubscript:{@"TotalOperatingTime", "unsignedLongLongValue"}];
            v20 = qword_1000AD070;
            if (os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [objc_msgSend(v9 objectForKeyedSubscript:{@"KioskModeMode", "intValue"}];
              v22 = *a4;
              *buf = 67110400;
              v45 = v21;
              v46 = 1024;
              v47 = v22;
              v48 = 1024;
              *v49 = v10;
              *&v49[4] = 1024;
              *&v49[6] = v18 >> 13;
              *&v49[10] = 1024;
              *&v49[12] = v16;
              *&v49[16] = 2048;
              v50[0] = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[ENTER] kiosk mode: %d flags: 0x%x K/Q:%d/%d qmax:%d currentTime:%llu", buf, 0x2Au);
            }

            if ([a2 objectForKeyedSubscript:@"lastGoodQmax"])
            {
              [objc_msgSend(a2 objectForKeyedSubscript:{@"lastGoodQmax", "intValue"}];
            }

            else
            {
              v23 = qword_1000AD070;
              if (os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No previous Qmax state found, storing first Good Qmax update", buf, 2u);
              }

              sub_10004A290(a2, v16, v19, @"lastGoodQmax", @"lastGoodQmaxTimeStamp");
            }

            if (v18)
            {
              v24 = 1;
            }

            else
            {
              v24 = v10;
            }

            if (v24)
            {
              if (v10 && !v18)
              {
                v25 = [objc_msgSend(a2 objectForKeyedSubscript:{@"lastGoodQmaxTimeStamp", "unsignedLongLongValue"}];
                v43 = v19;
                v26 = v19 - v25;
                v12 = v26 >> 7 > 0x2C;
                v27 = qword_1000AD070;
                v28 = os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_DEFAULT);
                if (v26 >> 7 < 0x2D)
                {
                  if (v28)
                  {
                    *buf = 67110144;
                    v45 = 1;
                    v46 = 1024;
                    v47 = 0;
                    v48 = 2048;
                    *v49 = v43;
                    *&v49[8] = 2048;
                    *&v49[10] = v25;
                    LOWORD(v50[0]) = 2048;
                    *(v50 + 2) = v26;
                    v29 = "K/Q:%d/%d [UPDATE] timeNow: (%llu) timeStored: (%llu) timediff: (%llu)";
                    goto LABEL_75;
                  }
                }

                else if (v28)
                {
                  *buf = 67110144;
                  v45 = 1;
                  v46 = 1024;
                  v47 = 0;
                  v48 = 2048;
                  *v49 = v43;
                  *&v49[8] = 2048;
                  *&v49[10] = v25;
                  LOWORD(v50[0]) = 2048;
                  *(v50 + 2) = v26;
                  v29 = "K/Q:%d/%d [EXIT] timeNow: (%llu) timeStored: (%llu) timediff: (%llu)";
LABEL_75:
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v29, buf, 0x2Cu);
                }

                if (sub_10004A314(a2, v16))
                {
                  sub_10004A290(a2, v16, v43, @"lastKioskQmax", @"lastKioskQmaxTimeStamp");
                  v42 = qword_1000AD070;
                  if (os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109888;
                    v45 = 1;
                    v46 = 1024;
                    v47 = v26 >> 7 > 0x2C;
                    v48 = 1024;
                    *v49 = v16;
                    *&v49[4] = 2048;
                    *&v49[6] = v43;
LABEL_79:
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "K/Q:%d/%d [UPDATE] kioskQmax: %d kioskQmaxTime: %llu", buf, 0x1Eu);
                    goto LABEL_50;
                  }
                }

                goto LABEL_50;
              }

              if (v10 && v18 != 0)
              {
                v41 = qword_1000AD070;
                if (os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  v45 = 1;
                  v46 = 1024;
                  v47 = 1;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "K/Q:%d/%d [UPDATE]", buf, 0xEu);
                }

                if (!sub_10004A314(a2, v16))
                {
                  goto LABEL_50;
                }

                sub_10004A290(a2, v16, v19, @"lastKioskQmax", @"lastKioskQmaxTimeStamp");
                v42 = qword_1000AD070;
                if (!os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_50;
                }

                *buf = 67109888;
                v45 = 1;
                v46 = 1024;
                v47 = 1;
                v48 = 1024;
                *v49 = v16;
                *&v49[4] = 2048;
                *&v49[6] = v19;
                goto LABEL_79;
              }

              if (v10 || v18 == 0)
              {
LABEL_50:
                if (v10)
                {
                  v32 = 0x10000;
                }

                else
                {
                  v32 = 0;
                }

                v33 = *a3 & 0xFFFEDFFF | v32;
                if (v12)
                {
                  v34 = 0x2000;
                }

                else
                {
                  v34 = 0;
                }

                *a3 = v33 | v34;
                v35 = qword_1000AD070;
                if (os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_DEFAULT))
                {
                  v36 = [objc_msgSend(v9 objectForKeyedSubscript:{@"KioskModeMode", "intValue"}];
                  v37 = *a3;
                  *buf = 67109888;
                  v45 = v36;
                  v46 = 1024;
                  v47 = v37;
                  v48 = 1024;
                  *v49 = v10;
                  *&v49[4] = 1024;
                  *&v49[6] = v12;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[EXIT] kiosk mode: %d flags: 0x%x K/Q:%d/%d", buf, 0x1Au);
                }

                return;
              }

              if (![a2 objectForKeyedSubscript:@"lastBadQmax"] || !objc_msgSend(a2, "objectForKeyedSubscript:", @"lastBadQmaxTimeStamp") || (v38 = objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"lastBadQmaxTimeStamp"), "unsignedLongLongValue"), v38 < objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"lastGoodQmaxTimeStamp"), "unsignedLongLongValue")))
              {
                v39 = qword_1000AD070;
                if (!os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_DEFAULT))
                {
LABEL_67:
                  sub_10004A290(a2, v16, v19, @"lastBadQmax", @"lastBadQmaxTimeStamp");
                  goto LABEL_50;
                }

                *buf = 67109376;
                v45 = 0;
                v46 = 1024;
                v47 = 1;
                v40 = "K/Q:%d/%d [ENTER]";
LABEL_66:
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 0xEu);
                goto LABEL_67;
              }

              if (v16 <= [objc_msgSend(a2 objectForKeyedSubscript:{@"lastBadQmax", "intValue"}])
              {
                if (v16 >= [objc_msgSend(a2 objectForKeyedSubscript:{@"lastBadQmax", "intValue"}])
                {
                  goto LABEL_50;
                }

                v39 = qword_1000AD070;
                if (!os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_67;
                }

                *buf = 67109376;
                v45 = 0;
                v46 = 1024;
                v47 = 1;
                v40 = "K/Q:%d/%d [UPDATE]";
                goto LABEL_66;
              }

              v30 = qword_1000AD070;
              if (!os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_48;
              }

              *buf = 67109376;
              v45 = 0;
              v46 = 1024;
              v47 = 1;
              v31 = "K/Q:%d/%d [EXIT]";
            }

            else
            {
              if (!sub_10004A314(a2, v16))
              {
LABEL_49:
                v12 = 0;
                goto LABEL_50;
              }

              v30 = qword_1000AD070;
              if (!os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_DEFAULT))
              {
LABEL_48:
                sub_10004A290(a2, v16, v19, @"lastGoodQmax", @"lastGoodQmaxTimeStamp");
                goto LABEL_49;
              }

              *buf = 67109376;
              v45 = 0;
              v46 = 1024;
              v47 = 0;
              v31 = "K/Q:%d/%d [UPDATE]";
            }

            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0xEu);
            goto LABEL_48;
          }

          if (os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_ERROR))
          {
            sub_10006AAA0();
          }
        }

        else if (os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_ERROR))
        {
          sub_10006AAD4();
        }
      }

      else if (os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_ERROR))
      {
        sub_10006AB08();
      }
    }

    else if (os_log_type_enabled(qword_1000AD070, OS_LOG_TYPE_ERROR))
    {
      sub_10006AB3C();
    }
  }
}