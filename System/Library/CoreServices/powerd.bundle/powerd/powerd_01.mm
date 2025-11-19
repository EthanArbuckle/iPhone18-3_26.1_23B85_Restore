const __CFDictionary *sub_10000FBA8(const __CFDictionary *a1)
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  result = CFDictionaryGetValue(a1, @"calibration0");
  if (result)
  {
    number = 0;
    valuePtr = 0;
    if (CFDictionaryGetValueIfPresent(result, @"calibrationFlags", &number) && (v3 = number, TypeID = CFNumberGetTypeID(), v3) && CFGetTypeID(v3) == TypeID)
    {
      CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
      return ((valuePtr & 0x400) == 0);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10000FC50()
{
  v0 = sub_10000E660();
  if (v0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004067C;
    block[3] = &unk_100099E18;
    block[4] = v0;
    if (qword_1000ACC68 != -1)
    {
      dispatch_once(&qword_1000ACC68, block);
    }

    v1 = byte_1000ACC70;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id sub_10000FCF4(uint64_t a1, uint64_t a2)
{
  result = sub_10000FC4C();
  if (result)
  {
    result = [qword_1000ACCB8 BOOLValue];
    if (result)
    {
      result = sub_100010660(a1);
      if (result)
      {
        return (sub_100010660(a2) ^ 1);
      }
    }
  }

  return result;
}

void sub_10000FD48(void *a1, CFDictionaryRef theDict, unsigned int a3)
{
  v57 = a3;
  v55 = -1;
  valuePtr = 0;
  *value = 0;
  if (CFDictionaryGetValueIfPresent(theDict, @"Battery Service Flags", value))
  {
    v4 = *value;
    TypeID = CFNumberGetTypeID();
    if (v4)
    {
      if (CFGetTypeID(v4) == TypeID)
      {
        CFNumberGetValue(*value, kCFNumberIntType, &valuePtr + 4);
      }
    }
  }

  *value = 0;
  if (CFDictionaryGetValueIfPresent(theDict, @"Battery Service State", value))
  {
    v6 = *value;
    v7 = CFNumberGetTypeID();
    if (v6)
    {
      if (CFGetTypeID(v6) == v7)
      {
        CFNumberGetValue(*value, kCFNumberIntType, &v55);
      }
    }
  }

  v8 = v57;
  p_prots = &OBJC_PROTOCOL____PMLowPowerModeProtocol.prots;
  if ((v57 & 0x80000000) != 0)
  {
    v14 = qword_1000AB978;
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
    {
      *value = 67109120;
      *&value[4] = v57;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "calib: calculating svc option from 0x%x", value, 8u);
    }

    v15 = qword_1000AB978;
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
    {
      *value = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "calib: clearing bits", value, 2u);
    }

    v10 = v57;
    if ((v57 & 0x400) == 0)
    {
LABEL_11:
      if ((v10 & 0x2A280000) != 0)
      {
        v11 = 5;
        LODWORD(valuePtr) = 5;
        v12 = qword_1000AB978;
        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
        {
          *value = 67109376;
          *&value[4] = v57;
          *&value[8] = 1024;
          *&value[10] = 5;
          v13 = "Unable to determine Battery Health Service state. Service Flags:0x%x Service State:%d\n";
LABEL_30:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, value, 0xEu);
        }
      }

      else if ((v10 & 0x20000) != 0)
      {
        v11 = 11;
        LODWORD(valuePtr) = 11;
        v12 = qword_1000AB978;
        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
        {
          *value = 67109376;
          *&value[4] = v57;
          *&value[8] = 1024;
          *&value[10] = 11;
          v13 = "Calibration failed. Service Flags:0x%x Service State:%d";
          goto LABEL_30;
        }
      }

      else
      {
        if (qword_1000AB990 == 5850451)
        {
          v16 = (~v10 & 0x1040000) == 0;
        }

        else
        {
          v16 = HIBYTE(v10) & 1;
        }

        if ((v10 & 0x40000000) != 0)
        {
          v11 = 8;
        }

        else if ((v10 & 0x4000000) != 0)
        {
          v11 = 6;
        }

        else if ((v16 & ((v10 & 0x100000) >> 20)) == 1)
        {
          v11 = 3;
        }

        else if (v16)
        {
          v11 = 2;
        }

        else if ((v10 & 0x100000) != 0)
        {
          v11 = 1;
        }

        else
        {
          if (![qword_1000ACCB8 BOOLValue] || !sub_100010660(&v57))
          {
            if (v55 == 5 || v55 == -1)
            {
              v11 = 0;
              LODWORD(valuePtr) = 0;
            }

            else
            {
              v11 = 0;
            }

            goto LABEL_34;
          }

          v11 = -1;
        }

        LODWORD(valuePtr) = v11;
      }

LABEL_34:
      v10 = v57;
      goto LABEL_35;
    }
  }

  else
  {
    v10 = HIDWORD(valuePtr) & 0x5164000 | v57;
    v57 = v10;
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = -1;
  LODWORD(valuePtr) = -1;
LABEL_35:
  v17 = v55;
  v18 = HIDWORD(valuePtr);
  dispatch_assert_queue_V2(qword_1000ACCE0);
  if (!sub_10000EB04())
  {
    goto LABEL_77;
  }

  v19 = CFDictionaryGetValue(theDict, @"calibration0");
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v19);
  if (!MutableCopy)
  {
    goto LABEL_77;
  }

  v21 = MutableCopy;
  v22 = qword_1000AB978;
  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
  {
    *value = 67109888;
    *&value[4] = v17;
    *&value[8] = 1024;
    *&value[10] = v18;
    LOWORD(v61) = 1024;
    *(&v61 + 2) = v11;
    HIWORD(v61) = 1024;
    v62 = v10;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "calib0: updating calibraiton flags using psvc%d psvcflag0x%x -> svc%d svcflag0x%x", value, 0x1Au);
  }

  v59 = 0;
  *value = 0;
  if (CFDictionaryGetValueIfPresent(v21, @"calibrationFlags", value))
  {
    v23 = *value;
    v24 = CFNumberGetTypeID();
    if (v23)
    {
      if (CFGetTypeID(v23) == v24)
      {
        CFNumberGetValue(*value, kCFNumberSInt64Type, &v59);
      }
    }
  }

  v25 = [a1 objectForKeyedSubscript:{@"BatteryData", v59}];
  v54 = [v25 objectForKeyedSubscript:@"LifetimeData"];
  v27 = v11 != 6 && v11 - 4 < 0xFFFFFFFD;
  if ((v10 & 0x80000000) == 0)
  {
    p_prots = (&OBJC_PROTOCOL____PMLowPowerModeProtocol + 16);
    if (v18 < 0)
    {
      v28 = [v54 objectForKeyedSubscript:@"TotalOperatingTime"];
      v29 = [v28 intValue];

      v58 = v29;
      v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v58);
      if (v30)
      {
        v31 = v30;
        CFDictionarySetValue(v21, @"exitTotalOperatingTime", v30);
        CFRelease(v31);
      }

      v32 = qword_1000AB978;
      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
      {
        *value = 67109120;
        *&value[4] = v58;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "calib0: just finished recalibrating, ToT:%d", value, 8u);
      }

      if (v11 <= 6 && ((1 << v11) & 0x4E) != 0)
      {
        v59 |= 8uLL;
      }

      p_prots = (&OBJC_PROTOCOL____PMLowPowerModeProtocol + 16);
    }

    goto LABEL_72;
  }

  if (v11 <= 6 && ((1 << v11) & 0x4E) != 0)
  {
    v59 |= 2uLL;
    if (v17 != 9)
    {
      v27 = 1;
    }

    p_prots = (&OBJC_PROTOCOL____PMLowPowerModeProtocol + 16);
    if (v27)
    {
      goto LABEL_72;
    }

    if (!CFDictionaryContainsKey(v21, @"svcTotalOperatingTime"))
    {
      v33 = [v54 objectForKeyedSubscript:@"TotalOperatingTime"];
      v34 = [v33 intValue];

      v58 = v34;
      v35 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v58);
      if (v35)
      {
        v36 = v35;
        CFDictionarySetValue(v21, @"svcTotalOperatingTime", v35);
        CFRelease(v36);
      }

      v37 = qword_1000AB978;
      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
      {
        *value = 136315394;
        *&value[4] = "svcTotalOperatingTime";
        *&value[12] = 1024;
        LODWORD(v61) = v58;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "calib0: captured %s=%d", value, 0x12u);
      }

      p_prots = &OBJC_PROTOCOL____PMLowPowerModeProtocol.prots;
    }

    v38 = v59 | 4;
  }

  else
  {
    p_prots = (&OBJC_PROTOCOL____PMLowPowerModeProtocol + 16);
    if (v11 == 6 || v17 != 10)
    {
      goto LABEL_72;
    }

    v38 = v59 | 0x10;
  }

  v59 = v38;
LABEL_72:
  v39 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v59);
  if (v39)
  {
    v40 = v39;
    CFDictionarySetValue(v21, @"calibrationFlags", v39);
    CFRelease(v40);
  }

  CFDictionarySetValue(theDict, @"calibration0", v21);
  v41 = p_prots[303];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *value = 134218240;
    *&value[4] = v52;
    *&value[12] = 2048;
    v61 = v59;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "calib0: updated calibration flags 0x%lx -> 0x%lx", value, 0x16u);
  }

  CFRelease(v21);
LABEL_77:
  if (v11 == 5 || v11 == -1)
  {
    v42 = p_prots[303];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *value = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "calib: skipping due to precedence", value, 2u);
    }
  }

  else if ((v8 & 0x80000000) != 0)
  {
    LODWORD(valuePtr) = 9;
    v59 = 0;
    v47 = CFDictionaryGetValue(theDict, @"calibration0");
    if (v47)
    {
      *value = 0;
      if (CFDictionaryGetValueIfPresent(v47, @"calibrationFlags", value) && (v48 = *value, v49 = CFNumberGetTypeID(), v48) && CFGetTypeID(v48) == v49)
      {
        CFNumberGetValue(*value, kCFNumberSInt64Type, &v59);
        v50 = v59;
      }

      else
      {
        v50 = 0;
      }

      v51 = p_prots[303];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *value = 134217984;
        *&value[4] = v50;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "calib: read current calibration flags 0x%lx", value, 0xCu);
        LOBYTE(v50) = v59;
      }

      if (v50)
      {
        LODWORD(valuePtr) = 10;
      }
    }
  }

  v43 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v57);
  if (v43)
  {
    v44 = v43;
    CFDictionarySetValue(theDict, @"Battery Service Flags", v43);
    CFRelease(v44);
  }

  v45 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v45)
  {
    v46 = v45;
    CFDictionarySetValue(theDict, @"Battery Service State", v45);
    CFRelease(v46);
  }
}

uint64_t sub_100010698(uint64_t *a1)
{
  v1 = 3758097085;
  v11 = 0u;
  v12 = 0u;
  if (dword_1000ABAD8)
  {
    *&v12 = sub_100002AB4();
    Count = CFDictionaryGetCount(qword_1000ABAC0);
    v4 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    if (v4)
    {
      v5 = v4;
      bzero(v4, 8 * Count);
      CFDictionaryGetKeysAndValues(qword_1000ABAC0, 0, v5);
      qsort(v5, Count, 8uLL, sub_1000108E8);
      if (Count < 1)
      {
        v8 = 0;
        v7 = 0;
      }

      else
      {
        v6 = v5;
        do
        {
          if (!*v6)
          {
            break;
          }

          sub_100010908(*v6++, &v11);
          --Count;
        }

        while (Count);
        v7 = *(&v12 + 1);
        v8 = v11;
      }

      SamplesRaw = IOReportCreateSamplesRaw();
      free(v5);
      *a1 = SamplesRaw;
      if (v7)
      {
        CFRelease(v7);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      return 0;
    }
  }

  else
  {
    asl_log(0, 0, 3, "gActivityAggCnt = 0; IOPMCopyAssertionActivityAggregate() called without w/o IOPMSetAssertionActivityAggregate(true)?!\n");
    return 3758097101;
  }

  return v1;
}

_DWORD *sub_100010804(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = sub_10000D7C8(v5, v7, (a2 + 28), (a2 + 52), (a2 + 56));
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000108E8(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 100);
  v3 = *(*a2 + 100);
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_100010908(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64))
  {
    if (*a2 || (Mutable = CFDataCreateMutable(0, 0), (*a2 = Mutable) != 0))
    {
      if (qword_1000AD120 || (qword_1000AD120 = IOReportCopyCurrentProcessName()) != 0)
      {
        if (!qword_1000AD128)
        {
          valuePtr = 0x100000000000000;
          qword_1000AD128 = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (!qword_1000AD128)
          {
            return;
          }

          v16 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
          if (!v16)
          {
            return;
          }

          v17 = v16;
          CFDictionarySetValue(qword_1000AD128, @"IOReportChannelUnit", v16);
          CFRelease(v17);
        }

        if (*(a2 + 24) || (Aggregate = IOReportCreateAggregate(), (*(a2 + 24) = Aggregate) != 0))
        {
          getpid();
          v6 = *(a1 + 96);
          if (!IOReportAddChannelDescription())
          {
            v7 = (a1 + 8);
            for (i = 32; i != 64; i += 8)
            {
              if (*(v7 - 2))
              {
                v9 = *(a1 + 64);
                if (*(v9 + 20))
                {
                  v10 = *(a2 + 16) - *v7;
                  v11 = *(v9 + i);
                  v12 = __CFADD__(v11, v10);
                  v13 = v11 + v10;
                  if (v12)
                  {
                    v14 = (v11 >> 63) + 1;
                  }

                  else
                  {
                    v14 = v11 >> 63;
                  }

                  if ((v14 & 1) != v13 >> 63 || v14 << 63 >> 63 != v14)
                  {
                    v13 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  *(v9 + i) = v13;
                }
              }

              *v7 = *(a2 + 16);
              v7 += 2;
            }

            CFDataAppendBytes(*a2, *(a1 + 64), *(*(a1 + 64) + 20) << 6);
          }
        }
      }
    }
  }
}

void sub_100010AD4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v14 = 0u;
  v15 = 0u;
  if (v4)
  {
    reply = xpc_dictionary_create_reply(v4);
    if (reply)
    {
      if (sub_100011DF8(v3, @"com.apple.private.iokit.batterydataprecise", 0))
      {
        xpc_connection_get_audit_token();
        v7 = qword_1000ACCE0;
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100011044;
        v9[3] = &unk_10009A2B0;
        v10 = v5;
        v12 = v14;
        v13 = v15;
        v8 = reply;
        v11 = v8;
        dispatch_sync(v7, v9);
        xpc_connection_send_message(v3, v8);
      }

      else
      {
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
        {
          sub_100069848();
        }

        xpc_dictionary_set_uint64(reply, "returnCode", 0xFFFFFFFFE00002C1);
        xpc_connection_send_message(v3, reply);
      }
    }

    else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_100063044();
    }
  }

  else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_100063080();
  }
}

uint64_t sub_100010CA0(uint64_t a1)
{
  v2 = [qword_1000ACA70 trustedDataShared];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_100010CFC()
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  v0 = sub_10000C008();
  dispatch_assert_queue_V2(qword_1000ACCE0);
  v1 = sub_10000BDC0(@"UPS");
  v2 = v1;
  if (v0)
  {
    Value = CFDictionaryGetValue(v0, @"Power Source State");
    if (Value && CFEqual(Value, @"Battery Power"))
    {
      return 2;
    }

    if (v2)
    {
      v5 = CFDictionaryGetValue(v2, @"Power Source State");
      if (v5)
      {
        v6 = v5;
        if (CFEqual(v5, @"Battery Power"))
        {
          return 3;
        }

        CFEqual(v6, @"AC Power");
      }
    }

    return 1;
  }

  if (!v1)
  {
    return 1;
  }

  v7 = CFDictionaryGetValue(v1, @"Power Source State");
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  if (CFEqual(v7, @"AC Power"))
  {
    return 1;
  }

  if (CFEqual(v8, @"Battery Power"))
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

void sub_100010E08()
{
  v0 = sub_100002A58();

  dispatch_async(v0, &stru_10009AD70);
}

void sub_100010E38(int a1)
{
  v2 = sub_100002A58();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000113B0;
  block[3] = &unk_10009A318;
  v4 = a1;
  v5 = 0;
  dispatch_async(v2, block);
}

void sub_100010EC4(int a1)
{
  v2 = sub_100010FE0();
  dispatch_assert_queue_V2(v2);
  if (a1)
  {
    v3 = sub_100010FEC();
    if (a1 < 1)
    {
      LOBYTE(v5) = 0;
      v9 = 0;
      LOBYTE(a1) = 1;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = a1;
      do
      {
        v8 = *v3++;
        v5 |= *(v8 + 16);
        v6 += *(v8 + 32);
        v4 += *(v8 + 36);
        --v7;
      }

      while (v7);
      LOBYTE(a1) = v5 ^ 1;
      if (v4)
      {
        v9 = 100 * v6 / v4 < 40;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
    LOBYTE(v5) = 1;
  }

  v10 = sub_100002A58();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000113C0;
  block[3] = &unk_10009AED0;
  v12 = v5 & 1;
  v13 = a1 & 1;
  v14 = v9;
  dispatch_async(v10, block);
}

void sub_100011014()
{
  v0 = sub_100002A58();

  dispatch_async(v0, &stru_10009A7D8);
}

void sub_100011044(uint64_t a1)
{
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "powerInfoPrecise");
  v3 = *(a1 + 64);
  v6[0] = *(a1 + 48);
  v6[1] = v3;
  v4 = sub_10000C328(v6, uint64, 1);
  if (v4)
  {
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(*(a1 + 40), "powerInfoPrecise", v5);
    xpc_dictionary_set_uint64(*(a1 + 40), "returnCode", 0);
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_100069884();
    }

    xpc_dictionary_set_uint64(*(a1 + 40), "returnCode", 0xFFFFFFFFE00002BCLL);
  }
}

void sub_100011124()
{
  v0 = sub_100002A58();

  dispatch_async(v0, &stru_10009A618);
}

uint64_t sub_100011154()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011380;
  block[3] = &unk_1000994A8;
  block[4] = &v3;
  dispatch_sync(qword_1000ACCE0, block);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100011204(id a1)
{
  v1 = sub_100011154();
  v2 = @"AC Power";
  if (v1 == 2)
  {
    v2 = @"Battery Power";
  }

  if (v1 == 3)
  {
    v3 = @"UPS Power";
  }

  else
  {
    v3 = v2;
  }

  if (!qword_1000AD300 || !CFEqual(qword_1000AD300, v3))
  {
    qword_1000AD300 = v3;
    if (byte_1000AD318)
    {
      byte_1000AD320 = 1;
    }

    else
    {
      if (CFEqual(@"AC Power", v3))
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      IOPMSetAggressiveness(dword_1000AD324, 6uLL, v4);
    }

    if (qword_1000AD2F8)
    {
      CFRelease(qword_1000AD2F8);
      v5 = IOPMCopyPMPreferences();
      qword_1000AD2F8 = v5;
      v6 = qword_1000AC988;
      if (os_log_type_enabled(qword_1000AC988, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412546;
        v8 = v3;
        v9 = 2114;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Settings change for power source change to %@ %{public}@", &v7, 0x16u);
        v5 = qword_1000AD2F8;
      }

      sub_1000566DC(v5, qword_1000AD300);
    }
  }
}

uint64_t sub_100011380(uint64_t a1)
{
  result = sub_100010CFC();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1000113C0(uint64_t a1)
{
  byte_1000AD434 = *(a1 + 32);
  byte_1000AD435 = *(a1 + 34);
  sub_1000113DC();
}

void sub_1000113DC()
{
  valuePtr = 0;
  v0 = 3;
  v21 = 3;
  v18 = 3;
  v19 = 3;
  if (byte_1000AD434 != 1)
  {
    if (byte_1000AD435)
    {
      v0 = 1;
    }

    else
    {
      v0 = 2;
    }
  }

  v20 = v0;
  if (byte_1000AD430)
  {
    if (qword_1000AD428 == 20)
    {
      v1 = 2;
      goto LABEL_17;
    }

    if (!qword_1000AD428)
    {
      v1 = 3;
LABEL_17:
      v19 = v1;
      goto LABEL_18;
    }

LABEL_15:
    v1 = 1;
    goto LABEL_17;
  }

  if (byte_1000AD43F == 1)
  {
    v1 = 2;
    v19 = 2;
  }

  else
  {
    v1 = 3;
  }

  if ((byte_1000AD43D & 1) != 0 || (byte_1000AD43E & 1) != 0 || byte_1000AD43C == 1)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (byte_1000AD3A6 == 1)
  {
    if (byte_1000AD424 == 1 && (!sub_100056B3C() || sub_10004B014()))
    {
      v2 = 3;
    }

    else
    {
      v2 = 2;
    }

    v21 = v2;
  }

  else
  {
    v2 = 3;
  }

  if (v0 >= v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v0;
  }

  if (v3 >= v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = v3;
  }

  v18 = v4;
  v5 = (v2 << 8) | (v0 << 16) | (v1 << 24) | v4;
  valuePtr = v5;
  if (qword_1000AD458 != v5)
  {
    qword_1000AD458 = v5;
    notify_set_state(dword_1000AD420, v4);
    v6 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      sub_10001B974(qword_1000AD410, v6);
      CFRelease(v7);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v9 = Mutable;
      v10 = CFNumberCreate(0, kCFNumberIntType, &v21);
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(v9, @"UserLevel", v10);
        CFRelease(v11);
      }

      v12 = CFNumberCreate(0, kCFNumberIntType, &v20);
      if (v12)
      {
        v13 = v12;
        CFDictionarySetValue(v9, @"BatteryLevel", v12);
        CFRelease(v13);
      }

      v14 = CFNumberCreate(0, kCFNumberIntType, &v19);
      if (v14)
      {
        v15 = v14;
        CFDictionarySetValue(v9, @"ThermalLevel", v14);
        CFRelease(v15);
      }

      v16 = CFNumberCreate(0, kCFNumberIntType, &v18);
      if (v16)
      {
        v17 = v16;
        CFDictionarySetValue(v9, @"CombinedLevel", v16);
        CFRelease(v17);
      }

      sub_10001B974(qword_1000AD418, v9);
      CFRelease(v9);
      notify_post("com.apple.system.powermanagement.SystemLoadAdvisory");
    }
  }
}

void sub_100011694(id a1)
{
  v1 = sub_100004D48();
  if (v1 == dword_1000AB74C)
  {
    return;
  }

  v2 = v1;
  dword_1000AB74C = v1;
  v3 = &unk_1000ABB58;
  v4 = 21;
  do
  {
    v5 = v3[16];
    if (v5)
    {
      v5(v3, 2);
    }

    v3 += 20;
    --v4;
  }

  while (v4);
  sub_100018C6C(0xBu, 0);
  sub_100018C6C(0x11u, 0);
  sub_100018C6C(0x12u, 0);
  sub_10005178C();
  nullsub_3(v6, v7);
  v8 = &unk_1000ABB58;
  v9 = 21;
  do
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100054928;
    v13[3] = &unk_10009ACF0;
    v14 = v2;
    v13[4] = v8;
    sub_1000047A8(v8, 3u, v13);
    v8 += 160;
    --v9;
  }

  while (v9);
  v10 = qword_1000ABAE8;
  if (qword_1000ABAE8)
  {
    if (v2)
    {
      if (qword_1000ABAF0)
      {
        CFRelease(qword_1000ABAF0);
        qword_1000ABAF0 = 0;
        v10 = qword_1000ABAE8;
      }

      v11 = dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
      goto LABEL_14;
    }

    v12 = dispatch_time(0, 0);
    dispatch_source_set_timer(v10, v12, qword_1000AB718, 0);
  }

  else if (v2)
  {
LABEL_14:
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
    {
      sub_10006C8C0();
    }

    if (byte_1000ABB10 == 1)
    {
      if (qword_1000ABB18)
      {
        dispatch_source_cancel(qword_1000ABB18);
      }
    }

    return;
  }

  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
  {
    sub_10006C8FC();
  }

  sub_100008440(0);
}

void sub_1000118A8(id a1)
{
  v1 = sub_100004D48();
  if (v1 != dword_1000AB704)
  {
    dword_1000AB704 = v1;
  }
}

BOOL sub_100011DF8(void *a1, const __CFString *a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v13 = 0u;
  v14 = 0u;
  if (a3 && xpc_connection_get_euid(v5) || (xpc_connection_get_audit_token(), v12[0] = v13, v12[1] = v14, (v7 = sub_100006580(v12)) == 0))
  {
    v10 = 0;
  }

  else
  {
    v8 = v7;
    v9 = SecTaskCopyValueForEntitlement(v7, a2, 0);
    v10 = v9 != 0;
    CFRelease(v8);
    if (v9)
    {
      CFRelease(v9);
      v10 = 1;
    }
  }

  return v10;
}

void sub_100012910(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v4 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B0E8();
    }

    v4 = -536870206;
  }

  if (!sub_100015094(a1, @"com.apple.private.iokit.powerlogging"))
  {
    v4 = -536870174;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B150();
    }
  }

  if (sub_10001511C())
  {
    v4 = -536870187;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B184();
    }
  }

  else if (!v4)
  {
    qword_1000ABA80 = xpc_retain(a1);
    qword_1000ABA88 = xpc_retain(a2);
    sub_100015130(0);
    return;
  }

  reply = xpc_dictionary_create_reply(a1);
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_uint64(reply, "returnCode", v4);
    xpc_connection_send_message(a1, v6);
    xpc_release(v6);
  }
}

void sub_100012A5C(__CFDictionary *a1, uint64_t a2)
{
  v193 = 0;
  valuePtr = 3;
  v3 = *(a2 + 8);
  sub_100014898();
  v4 = sub_100014978();
  p_prots = &OBJC_PROTOCOL____PMLowPowerModeProtocol.prots;
  if (v4)
  {
    v6 = v4;
    v7 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"Battery Service Flags"];
    v8 = [v7 intValue] & 0xC00000;

    if (v8)
    {
      v9 = v3;
      v10 = a1;
      v11 = [v9 objectForKeyedSubscript:@"NominalChargeCapacity"];
      v12 = [v11 intValue];

      v13 = [v9 objectForKeyedSubscript:@"DesignCapacity"];

      v14 = [v13 intValue];
      if (v12 && v14)
      {
        if (v14 < 1)
        {
          v9 = 0;
        }

        else
        {
          LODWORD(v9) = vcvtpd_s64_f64(v12 / v14 * 100.0);
          if ((v9 - 1) < 0x96)
          {
            goto LABEL_34;
          }
        }

        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
        {
          sub_100069F98();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
        {
          sub_10006A008();
        }

        v9 = 0;
      }

      valuePtr |= 0x200000u;
LABEL_34:
      v23 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"Battery Service State"];
      [(__CFDictionary *)v10 setObject:v23 forKeyedSubscript:@"Battery Service State"];

      v24 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"Battery Service Flags"];
      v25 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", valuePtr | [v24 intValue]);
      [(__CFDictionary *)v10 setObject:v25 forKeyedSubscript:@"Battery Service Flags"];

      v26 = [NSNumber numberWithInt:v9];
      [(__CFDictionary *)v10 setObject:v26 forKeyedSubscript:@"Maximum Capacity Percent"];

      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEBUG))
      {
        sub_10006A078(&valuePtr);
      }

      v27 = v6;
LABEL_221:
      CFRelease(v27);

      return;
    }

    v19 = CFDictionaryGetValue(v3, @"Serial");
    v20 = CFDictionaryGetValue(v6, @"Battery Serial");
    if (v20)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = !v21;
    if (!v21 || v20 == v19)
    {
      if (!v22)
      {
        v28 = 3;
        goto LABEL_44;
      }

      if (CFStringCompare(v20, v19, 0) == kCFCompareEqualTo)
      {
        valuePtr = 3;
LABEL_45:
        if (CFStringGetLength(v19))
        {
          goto LABEL_56;
        }

LABEL_46:
        v32 = qword_1000AB978;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10006A0EC();
        }

        if (v19)
        {
          if (CFStringGetLength(v19))
          {
LABEL_53:
            v34 = qword_1000AB978;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_10006A15C(&valuePtr);
            }

LABEL_56:
            v189 = 0;
            v190 = 0;
            v191 = 0;
            value = 0;
            CFDictionaryGetValueIfPresent(v6, @"Battery Service Flags", &value);
            CFDictionaryGetValueIfPresent(v6, @"Battery Service State", &v191);
            CFDictionaryGetValueIfPresent(v6, @"Maximum Capacity Percent", &v190);
            CFDictionaryGetValueIfPresent(v6, @"CycleCount", &v189);
            v35 = qword_1000AB978;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138544130;
              *&buf[4] = value;
              *&buf[12] = 2114;
              *&buf[14] = v191;
              *&buf[22] = 2114;
              *&buf[24] = v190;
              v201 = 2114;
              v202 = v189;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Previous Battery Health: Flags:%{public}@ State:%{public}@ MaxCapacity:%{public}@ CycleCount:%{public}@\n", buf, 0x2Au);
            }

            v36 = qword_1000AB978;
            v37 = &off_100078000;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = valuePtr;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "calib: svcFlags pre: 0x%x", buf, 8u);
            }

            v38 = &unk_1000AC000;
            dispatch_assert_queue_V2(qword_1000ACCE0);
            if (sub_10000EB04())
            {
              if (sub_1000458C0(v3, v6, &valuePtr))
              {
                v39 = qword_1000AB978;
                if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "calibration running", buf, 2u);
                }

                v40 = valuePtr | 0x80000000;
                goto LABEL_65;
              }

              valuePtr &= ~0x80000000;
              dispatch_assert_queue_V2(qword_1000ACCE0);
              v47 = CFDictionaryGetValue(v6, @"calibration0");
              if (v47)
              {
                *buf = 0;
                number = 0;
                if (CFDictionaryGetValueIfPresent(v47, @"calibrationFlags", &number))
                {
                  v48 = number;
                  TypeID = CFNumberGetTypeID();
                  if (v48)
                  {
                    if (CFGetTypeID(v48) == TypeID)
                    {
                      CFNumberGetValue(number, kCFNumberSInt64Type, buf);
                      if ((*buf & 0x200) != 0)
                      {
                        v40 = valuePtr | 0x20000;
LABEL_65:
                        valuePtr = v40;
                        goto LABEL_69;
                      }
                    }
                  }
                }
              }

              if (sub_10000FBA8(v6))
              {
                dispatch_assert_queue_V2(qword_1000ACCE0);
                v50 = CFDictionaryGetValue(v6, @"calibration0");
                if (!v50 || (*buf = 0, number = 0, !CFDictionaryGetValueIfPresent(v50, @"calibrationFlags", &number)) || (v51 = number, v52 = CFNumberGetTypeID(), !v51) || CFGetTypeID(v51) != v52 || (CFNumberGetValue(number, kCFNumberSInt64Type, buf), (*buf & 0x800) == 0))
                {
                  v196 = 0;
                  v197 = 0;
                  number = 0;
                  dispatch_assert_queue_V2(qword_1000ACCE0);
                  v53 = CFDictionaryGetValue(v6, @"calibration0");
                  if (v53)
                  {
                    v54 = v53;
                    v55 = +[NSMutableDictionary dictionary];
                    if (v55)
                    {
                      v56 = v55;
                      v57 = v54;
                      v58 = [v57 objectForKeyedSubscript:@"snapshots"];
                      v187 = a1;
                      v183 = v56;
                      v184 = v57;
                      if (v58)
                      {
                        v185 = v3;
                        v59 = v57;
                        v60 = [v59 objectForKeyedSubscript:@"calibrationFlags"];
                        v61 = [v60 unsignedLongValue];

                        if ((v61 & 0x80) != 0)
                        {
                          v62 = 0;
                        }

                        else
                        {
                          v62 = 10;
                        }

                        if ((v61 & 0x100) != 0)
                        {
                          v63 = 20;
                        }

                        else
                        {
                          v63 = v62;
                        }

                        v64 = [v59 objectForKeyedSubscript:@"baseline"];

                        if (v64 && ([v64 objectForKeyedSubscript:@"CycleCount"], v65 = objc_claimAutoreleasedReturnValue(), v65, v65))
                        {
                          v66 = [v64 objectForKeyedSubscript:@"CycleCount"];
                          v67 = [v66 intValue];

                          v68 = v67 + v63;
                          if (v68 == -1)
                          {
                            v182 = 0;
                            v88 = 0;
                            v69 = 0;
                            v89 = 104;
                          }

                          else
                          {
                            v181 = v6;
                            v69 = [v58 keyEnumerator];
                            v70 = [v69 nextObject];
                            if (v70)
                            {
                              v71 = v70;
                              v72 = 0;
                              v73 = 0;
                              v180 = 104;
                              do
                              {
                                v74 = v71;
                                while (1)
                                {
                                  v75 = [v58 objectForKeyedSubscript:v74];
                                  objc_opt_class();
                                  isKindOfClass = objc_opt_isKindOfClass();

                                  if (isKindOfClass)
                                  {
                                    break;
                                  }

                                  v77 = qword_1000AB978;
                                  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                                  {
                                    sub_10006A1D8(&v198, v199, v77);
                                  }

                                  v78 = [v69 nextObject];

                                  v74 = v78;
                                  if (!v78)
                                  {
                                    goto LABEL_119;
                                  }
                                }

                                v79 = [v58 objectForKeyedSubscript:v74];
                                v80 = [v79 objectForKeyedSubscript:@"CycleCount"];
                                v81 = [v80 intValue];

                                if (v81 > v68)
                                {
                                  v82 = [v79 objectForKeyedSubscript:@"Maximum Capacity Percent"];
                                  v83 = [v82 intValue];

                                  v84 = v180;
                                  if (v180 >= v83)
                                  {
                                    v85 = v83;
                                  }

                                  else
                                  {
                                    v85 = v180;
                                  }

                                  if (v83 > 0)
                                  {
                                    v84 = v85;
                                  }

                                  v180 = v84;
                                  v86 = [v79 objectForKeyedSubscript:@"Battery Service Flags"];
                                  v87 = [v86 intValue];

                                  v72 = v87 & 0x5164000 | v72;
                                  ++v73;
                                }

                                v71 = [v69 nextObject];
                              }

                              while (v71);
LABEL_119:
                              v6 = v181;
                              v3 = v185;
                              v37 = &off_100078000;
                              v182 = v73;
                              v88 = v72;
                              v89 = v180;
                              goto LABEL_236;
                            }

                            v182 = 0;
                            v88 = 0;
                            v89 = 104;
                          }
                        }

                        else
                        {
                          if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                          {
                            sub_10006A218();
                          }

                          v182 = 0;
                          v88 = 0;
                          v69 = 0;
                          v89 = 104;
                          v68 = 0xFFFFFFFFLL;
                        }

                        v3 = v185;
                      }

                      else
                      {
                        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                        {
                          sub_10006A254();
                        }

                        v182 = 0;
                        v88 = 0;
                        v69 = 0;
                        v89 = 104;
                        v68 = 0xFFFFFFFFLL;
                      }

LABEL_236:
                      v148 = [NSNumber numberWithInt:v89];
                      [v183 setObject:v148 forKeyedSubscript:@"Maximum Capacity Percent"];

                      v149 = [NSNumber numberWithUnsignedInt:v88];
                      [v183 setObject:v149 forKeyedSubscript:@"Battery Service Flags"];

                      v150 = [NSNumber numberWithInt:v68];
                      [v183 setObject:v150 forKeyedSubscript:@"CycleCount"];

                      v151 = [NSNumber numberWithInt:v182];
                      [v183 setObject:v151 forKeyedSubscript:@"nSamples"];

                      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v184);
                      if (MutableCopy)
                      {
                        v153 = MutableCopy;
                        *buf = 0;
                        if (CFDictionaryGetValueIfPresent(v6, @"Battery Service Flags", buf))
                        {
                          v154 = *buf;
                          v155 = CFNumberGetTypeID();
                          if (v154)
                          {
                            if (CFGetTypeID(v154) == v155)
                            {
                              CFNumberGetValue(*buf, kCFNumberIntType, &v197 + 4);
                            }
                          }
                        }

                        *buf = 0;
                        if (CFDictionaryGetValueIfPresent(v6, @"Maximum Capacity Percent", buf))
                        {
                          v156 = *buf;
                          v157 = CFNumberGetTypeID();
                          if (v156)
                          {
                            if (CFGetTypeID(v156) == v157)
                            {
                              CFNumberGetValue(*buf, kCFNumberIntType, &v196 + 4);
                            }
                          }
                        }

                        *buf = 0;
                        if (CFDictionaryGetValueIfPresent(v183, @"Battery Service Flags", buf))
                        {
                          v158 = *buf;
                          v159 = CFNumberGetTypeID();
                          if (v158)
                          {
                            if (CFGetTypeID(v158) == v159)
                            {
                              CFNumberGetValue(*buf, kCFNumberIntType, &v197);
                            }
                          }
                        }

                        *buf = 0;
                        if (CFDictionaryGetValueIfPresent(v183, @"Maximum Capacity Percent", buf))
                        {
                          v160 = *buf;
                          v161 = CFNumberGetTypeID();
                          if (v160)
                          {
                            if (CFGetTypeID(v160) == v161)
                            {
                              CFNumberGetValue(*buf, kCFNumberIntType, &v196);
                            }
                          }
                        }

                        v162 = qword_1000AB978;
                        v163 = os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT);
                        v164 = v196;
                        if (v163)
                        {
                          *buf = 67109888;
                          *&buf[4] = v196;
                          *&buf[8] = 1024;
                          *&buf[10] = HIDWORD(v196);
                          *&buf[14] = 1024;
                          *&buf[16] = v197;
                          *&buf[20] = 1024;
                          *&buf[22] = HIDWORD(v197);
                          _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "calib1/current: ncc %d/%d svcFlags %d/%d", buf, 0x1Au);
                          v164 = v196;
                          v162 = qword_1000AB978;
                        }

                        if (v164 >= SHIDWORD(v196))
                        {
                          v165 = HIDWORD(v196);
                        }

                        else
                        {
                          v165 = v164;
                        }

                        LODWORD(v196) = v165;
                        v166 = v197 | HIDWORD(v197);
                        LODWORD(v197) = v197 | HIDWORD(v197);
                        if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 67109376;
                          *&buf[4] = v165;
                          *&buf[8] = 1024;
                          *&buf[10] = v166;
                          _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "calib1: ncc %d svcFlags %d", buf, 0xEu);
                        }

                        v167 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v197);
                        if (v167)
                        {
                          v168 = v167;
                          CFDictionarySetValue(v6, @"Battery Service Flags", v167);
                          CFRelease(v168);
                        }

                        v169 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v196);
                        a1 = v187;
                        v38 = &unk_1000AC000;
                        if (v169)
                        {
                          v170 = v169;
                          CFDictionarySetValue(v6, @"Maximum Capacity Percent", v169);
                          CFRelease(v170);
                        }

                        *buf = 0;
                        if (CFDictionaryGetValueIfPresent(v153, @"calibrationFlags", buf))
                        {
                          v171 = *buf;
                          v172 = CFNumberGetTypeID();
                          if (v171)
                          {
                            if (CFGetTypeID(v171) == v172)
                            {
                              CFNumberGetValue(*buf, kCFNumberSInt64Type, &number);
                            }
                          }
                        }

                        number = (number | 0x800);
                        v173 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &number);
                        if (v173)
                        {
                          v174 = v173;
                          CFDictionarySetValue(v153, @"calibrationFlags", v173);
                          CFRelease(v174);
                        }

                        CFDictionarySetValue(v153, @"calibration1", v183);
                        CFDictionarySetValue(v6, @"calibration0", v153);
                        CFRelease(v153);
                        CFRelease(v183);
                        p_prots = (&OBJC_PROTOCOL____PMLowPowerModeProtocol + 16);
                      }

                      else
                      {
                        p_prots = &OBJC_PROTOCOL____PMLowPowerModeProtocol.prots;
                        a1 = v187;
                        v38 = &unk_1000AC000;
                        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                        {
                          sub_10006A290();
                        }

                        CFRelease(v183);
                      }

                      goto LABEL_69;
                    }

                    v147 = qword_1000AB978;
                    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&_mh_execute_header, v147, OS_LOG_TYPE_ERROR, "Out of memory for calibration1", buf, 2u);
                      v147 = qword_1000AB978;
                    }

                    if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
                    {
                      sub_10006A2CC();
                    }
                  }

                  else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                  {
                    sub_10006A308();
                  }

LABEL_69:
                  v43 = p_prots[303];
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = *(v37 + 373);
                    *&buf[4] = valuePtr;
                    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "calib: svcFlags post: 0x%x", buf, 8u);
                  }

                  sub_10000EE68(v3, v6, &valuePtr);
                  if (qword_1000AB990 != 20047)
                  {
                    if (qword_1000AB990)
                    {
                      v44 = CFPreferencesCopyValue(@"mitigatedUPOCount", @"com.apple.thermalmonitor.upostepper.metrics", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
                      v45 = CFNumberGetTypeID();
                      if (v44)
                      {
                        v46 = v38;
                        if (CFGetTypeID(v44) == v45)
                        {
                          CFNumberGetValue(v44, kCFNumberIntType, &dword_1000ACFF4);
                          if (os_log_type_enabled(p_prots[303], OS_LOG_TYPE_DEBUG))
                          {
                            sub_10006A418();
                          }
                        }

                        else
                        {
                          v90 = p_prots[303];
                          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                          {
                            sub_10006A380(v90, v44);
                          }
                        }
                      }

                      else
                      {
                        v46 = v38;
                        if (os_log_type_enabled(p_prots[303], OS_LOG_TYPE_DEBUG))
                        {
                          sub_10006A494();
                        }
                      }

                      v91 = dword_1000ACFF4;
                      if (dword_1000ACFF4 >= 1)
                      {
                        valuePtr |= 0x40000u;
                        v92 = p_prots[303];
                        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 67109376;
                          *&buf[4] = v91;
                          *&buf[8] = 1024;
                          *&buf[10] = 0;
                          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Mitigated UPO count(%d) is greater than the threshold(%d)\n", buf, 0xEu);
                        }
                      }

                      v38 = v46;
                      if (v44)
                      {
                        CFRelease(v44);
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(p_prots[303], OS_LOG_TYPE_ERROR))
                      {
                        sub_10006A344();
                      }

                      valuePtr |= 0x80000u;
                    }
                  }

                  v93 = v6;
                  v94 = sub_10000CDD8();
                  v95 = qword_1000ACFF8;
                  dispatch_assert_queue_barrier(v38[412]);
                  if (byte_1000ACFF0 != 1)
                  {
                    goto LABEL_167;
                  }

                  if (qword_1000AB9A0 == -1)
                  {
                    if (os_log_type_enabled(p_prots[303], OS_LOG_TYPE_ERROR))
                    {
                      sub_10006A4D0();
                    }

                    v96 = valuePtr | 0x20000000;
                    goto LABEL_140;
                  }

                  if (!qword_1000AB9A0)
                  {
                    if (os_log_type_enabled(p_prots[303], OS_LOG_TYPE_ERROR))
                    {
                      sub_10006A50C();
                    }

                    v96 = valuePtr | 0x2000000;
LABEL_140:
                    valuePtr = v96;
LABEL_167:

                    LODWORD(number) = -1;
                    dispatch_assert_queue_barrier(v38[412]);
                    if (byte_1000ACFF1 == 1 && byte_1000AB998 == 1)
                    {
                      *buf = 0;
                      if (CFDictionaryGetValueIfPresent(v3, @"BatteryCellDisconnectCount", buf) && (v113 = *buf, v114 = CFNumberGetTypeID(), v113) && CFGetTypeID(v113) == v114 && (CFNumberGetValue(*buf, kCFNumberIntType, &number), v115 = number, (number & 0x80000000) == 0))
                      {
                        if (number >= 0xA)
                        {
                          valuePtr |= 0x4000000u;
                          v116 = p_prots[303];
                          if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 67109376;
                            *&buf[4] = v115;
                            *&buf[8] = 1024;
                            *&buf[10] = 10;
                            _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "BCDC(%d) is greater than the threshold(%d)\n", buf, 0xEu);
                          }
                        }
                      }

                      else
                      {
                        if (os_log_type_enabled(p_prots[303], OS_LOG_TYPE_ERROR))
                        {
                          sub_10006A724();
                        }

                        valuePtr |= 0x8000000u;
                      }
                    }

                    sub_10000FD48(v3, v93, valuePtr);
                    CFDictionaryApplyFunction(v93, sub_10001066C, 0);
                    _CFPreferencesSynchronizeWithContainer();
                    if ((valuePtr & 0x80000000) != 0)
                    {
                      v117 = a1;
                      v118 = CFDictionaryGetValue(v93, @"calibration0");
                      v119 = [v118 objectForKeyedSubscript:@"baseline"];
                      v120 = [v119 objectForKeyedSubscript:@"Maximum Capacity Percent"];
                      v121 = [v120 intValue];

                      LODWORD(number) = v121;
                      HIDWORD(v197) = -1;
                      *buf = 0;
                      if (CFDictionaryGetValueIfPresent(v93, @"Maximum Capacity Percent", buf))
                      {
                        v122 = *buf;
                        v123 = CFNumberGetTypeID();
                        if (v122)
                        {
                          if (CFGetTypeID(v122) == v123)
                          {
                            CFNumberGetValue(*buf, kCFNumberIntType, &v197 + 4);
                          }
                        }
                      }

                      v124 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &number);
                      a1 = v117;
                      if (v124)
                      {
                        v125 = v124;
                        CFDictionarySetValue(v93, @"Maximum Capacity Percent", v124);
                        CFRelease(v125);
                      }

                      v126 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v197 + 4);
                      if (v126)
                      {
                        v127 = v126;
                        CFDictionarySetValue(v117, @"currentMaxCap", v126);
                        CFRelease(v127);
                      }

                      p_prots = &OBJC_PROTOCOL____PMLowPowerModeProtocol.prots;
                      v128 = qword_1000AB978;
                      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315650;
                        *&buf[4] = "Maximum Capacity Percent";
                        *&buf[12] = 1024;
                        *&buf[14] = number;
                        *&buf[18] = 1024;
                        *&buf[20] = HIDWORD(v197);
                        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "reporting %s as %d (from %d)", buf, 0x18u);
                      }
                    }

                    v189 = 0;
                    v190 = 0;
                    v191 = 0;
                    value = 0;
                    v129 = CFDictionaryGetValue(v93, @"Battery Service Flags");
                    value = v129;
                    v130 = CFNumberGetTypeID();
                    if (v129 && CFGetTypeID(v129) == v130)
                    {
                      CFDictionarySetValue(a1, @"Battery Service Flags", value);
                      v131 = p_prots[303];
                      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543362;
                        *&buf[4] = value;
                        _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "Updated Battery Health: Flags:%{public}@\n", buf, 0xCu);
                      }
                    }

                    v132 = CFDictionaryGetValue(v93, @"Battery Service State");
                    v191 = v132;
                    v133 = CFNumberGetTypeID();
                    if (v132 && CFGetTypeID(v132) == v133)
                    {
                      CFDictionarySetValue(a1, @"Battery Service State", v191);
                      v134 = p_prots[303];
                      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543362;
                        *&buf[4] = v191;
                        _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "Updated Battery Health: State:%{public}@\n", buf, 0xCu);
                      }
                    }

                    v135 = CFDictionaryGetValue(v93, @"Maximum Capacity Percent");
                    v190 = v135;
                    v136 = CFNumberGetTypeID();
                    if (v135 && CFGetTypeID(v135) == v136)
                    {
                      CFDictionarySetValue(a1, @"Maximum Capacity Percent", v190);
                      v137 = p_prots[303];
                      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543362;
                        *&buf[4] = v190;
                        _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "Updated Battery Health: MaxCapacity:%{public}@\n", buf, 0xCu);
                      }
                    }

                    CFDictionaryGetValueIfPresent(v93, @"CycleCount", &v189);
                    v138 = v189;
                    v139 = CFNumberGetTypeID();
                    if (v138 && CFGetTypeID(v138) == v139)
                    {
                      v140 = p_prots[303];
                      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543362;
                        *&buf[4] = v189;
                        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Updated Battery Health: CycleCount:%{public}@\n", buf, 0xCu);
                      }
                    }

                    v141 = CFDictionaryGetValue(v93, @"calibration0");
                    v142 = CFDictionaryGetTypeID();
                    if (v141 && CFGetTypeID(v141) == v142)
                    {
                      CFDictionarySetValue(a1, @"calibration0", v141);
                    }

                    v143 = CFDictionaryGetValue(v93, @"ncc");
                    v144 = CFNumberGetTypeID();
                    if (v143 && CFGetTypeID(v143) == v144)
                    {
                      CFDictionarySetValue(a1, @"ncc", v143);
                    }

                    v145 = CFDictionaryGetValue(v93, @"nccAlt");
                    v146 = CFNumberGetTypeID();
                    if (v145 && CFGetTypeID(v145) == v146)
                    {
                      CFDictionarySetValue(a1, @"nccAlt", v145);
                    }

                    v27 = v93;
                    goto LABEL_221;
                  }

                  v188 = a1;
                  v97 = sub_10000BE84();
                  v186 = v97;
                  if (!MGGetBoolAnswer())
                  {
                    goto LABEL_149;
                  }

                  if (sub_1000406A8())
                  {
                    goto LABEL_149;
                  }

                  if (!v97)
                  {
                    goto LABEL_149;
                  }

                  v98 = [v97 objectForKeyedSubscript:@"Trusted Data Enabled"];
                  if (!v98)
                  {
                    goto LABEL_149;
                  }

                  v99 = v98;
                  v100 = [v97 objectForKeyedSubscript:@"Trusted Data Enabled"];
                  v101 = [v100 intValue];

                  if (v101)
                  {
                    v102 = v186;
                    v103 = v93;
                    v104 = [(__CFDictionary *)v103 objectForKeyedSubscript:@"Trusted LifeTime Max WRdc"];

                    if (v104)
                    {
                      v105 = [(__CFDictionary *)v103 objectForKeyedSubscript:@"Trusted LifeTime Max WRdc"];
                      v106 = [v105 intValue];
                    }

                    else
                    {
                      v106 = 0xFFFFFFFFLL;
                    }

                    v175 = [v102 objectForKeyedSubscript:@"Trusted LifeTime Max WRdc"];

                    if (v175)
                    {
                      v176 = [v102 objectForKeyedSubscript:@"Trusted LifeTime Max WRdc"];
                      v177 = [v176 intValue];

                      if (v177 > v106)
                      {
                        v178 = [v102 objectForKeyedSubscript:@"Trusted LifeTime Max WRdc"];
                        v106 = [v178 intValue];

                        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEBUG))
                        {
                          sub_10006A548();
                        }
                      }
                    }

                    else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                    {
                      sub_10006A5B8();
                    }

                    dword_1000AB5F0 = v106;
                    v179 = [NSNumber numberWithInt:v106];
                    [(__CFDictionary *)v103 setObject:v179 forKeyedSubscript:@"Trusted LifeTime Max WRdc"];
                  }

                  else
                  {
LABEL_149:
                    if (dword_1000AB5F0 >= 1 && v94 - v95 < dword_1000AB200)
                    {
                      p_prots = &OBJC_PROTOCOL____PMLowPowerModeProtocol.prots;
                      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEBUG))
                      {
                        sub_10006A678();
                      }

                      goto LABEL_159;
                    }

                    dword_1000AB5F0 = -1;
                    v107 = CFDictionaryGetValue(v3, @"BatteryData");
                    v108 = sub_100047474(v107);
                    v109 = v108;
                    if (v108)
                    {
                      dword_1000AB5F0 = [v108 intValue];
                    }

                    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEBUG))
                    {
                      sub_10006A5F4();
                    }

                    qword_1000ACFF8 = v94;
                  }

                  p_prots = &OBJC_PROTOCOL____PMLowPowerModeProtocol.prots;
LABEL_159:
                  v110 = dword_1000AB5F0;
                  if (dword_1000AB5F0 <= 0)
                  {
                    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                    {
                      sub_10006A6E8();
                    }

                    valuePtr |= 0x2000000u;
                  }

                  else
                  {
                    v111 = qword_1000AB9A0;
                    if (qword_1000AB9A0 <= dword_1000AB5F0)
                    {
                      valuePtr |= 0x1000000u;
                      v112 = qword_1000AB978;
                      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109376;
                        *&buf[4] = v110;
                        *&buf[8] = 2048;
                        *&buf[10] = v111;
                        _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "WeightedRa(%d) is >= threshold(%llu)\n", buf, 0x12u);
                      }
                    }
                  }

                  a1 = v188;
                  v38 = &unk_1000AC000;
                  goto LABEL_167;
                }
              }

              v41 = qword_1000AB978;
              if (!os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_69;
              }

              *buf = 0;
              v42 = "Calib0 success, calib1 not needed";
            }

            else
            {
              v41 = qword_1000AB978;
              if (!os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_69;
              }

              *buf = 0;
              v42 = "calib: device not relevant";
            }

            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
            goto LABEL_69;
          }

          v33 = valuePtr | 0x800;
        }

        else
        {
          v33 = valuePtr | 0x400;
        }

        valuePtr = v33;
        goto LABEL_53;
      }
    }

    valuePtr = 515;
    CFDictionaryRemoveValue(v6, @"Maximum Capacity Percent");
    CFDictionaryRemoveValue(v6, @"CycleCount");
    CFDictionaryRemoveValue(v6, @"Battery Service State");
    CFDictionaryRemoveValue(v6, @"calibration0");
    CFDictionaryRemoveValue(v6, @"Trusted LifeTime Max WRdc");
    CFDictionaryRemoveValue(v6, @"lastGoodQmax");
    CFDictionaryRemoveValue(v6, @"lastGoodQmaxTimeStamp");
    CFDictionaryRemoveValue(v6, @"lastBadQmax");
    CFDictionaryRemoveValue(v6, @"lastBadQmaxTimeStamp");
    CFDictionaryRemoveValue(v6, @"lastKioskQmax");
    CFDictionaryRemoveValue(v6, @"lastKioskQmaxTimeStamp");
    sub_100042C30();
    sub_100042C30();
    sub_100042C30();
    sub_100042C30();
    sub_100042C30();
    sub_100042C30();
    sub_100042C30();
    sub_100042C30();
    sub_100042C30();
    sub_100042C30();
    sub_100042C30();
    if (v19)
    {
      CFDictionarySetValue(v6, @"Battery Serial", v19);
    }

    else
    {
      CFDictionaryRemoveValue(v6, @"Battery Serial");
      sub_100042C30();
    }

    p_prots = &OBJC_PROTOCOL____PMLowPowerModeProtocol.prots;
    v29 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v29)
    {
      v30 = v29;
      CFDictionarySetValue(v6, @"Battery Service Flags", v29);
      CFRelease(v30);
    }

    CFDictionaryApplyFunction(v6, sub_10001066C, 0);
    _CFPreferencesSynchronizeWithContainer();
    v31 = qword_1000AB978;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Battery serial number changed.\n", buf, 2u);
    }

    v28 = valuePtr & 0xFFFFF3FF;
LABEL_44:
    valuePtr = v28;
    if (!v19)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v193 = 7;
  valuePtr = 35;
  v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v15)
  {
    v16 = v15;
    CFDictionarySetValue(a1, @"Battery Service Flags", v15);
    CFRelease(v16);
  }

  v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v193);
  if (v17)
  {
    v18 = v17;
    CFDictionarySetValue(a1, @"Battery Service State", v17);
    CFRelease(v18);
  }

  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
  {
    sub_10006A760(&valuePtr, &v193);
  }
}

void sub_100014898()
{
  dispatch_assert_queue_barrier(qword_1000ACCE0);
  if (qword_1000ACFE8 != -1)
  {
    sub_100069DBC();
  }
}

uint64_t sub_1000148D4()
{
  v0 = sub_10000E660();
  if (v0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100040650;
    block[3] = &unk_100099E18;
    block[4] = v0;
    if (qword_1000ACC58 != -1)
    {
      dispatch_once(&qword_1000ACC58, block);
    }

    v1 = byte_1000ACC60;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

CFMutableDictionaryRef sub_100014978()
{
  valuePtr = 0;
  value = 0;
  v38 = 0;
  if (MGGetBoolAnswer() && (sub_1000406A8() & 1) == 0)
  {
    v10 = sub_10000E738();
    if ((v10 - 1) >= 2)
    {
      v0 = 0;
      if (v10)
      {
        HIDWORD(valuePtr) = 0x800000;
        v11 = -1;
      }

      else
      {
        HIDWORD(valuePtr) = 0x400000;
        v11 = 12;
      }

      LODWORD(valuePtr) = v11;
    }

    else
    {
      v0 = 1;
    }
  }

  else
  {
    v0 = 1;
  }

  if (!os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEBUG))
  {
    if (v0)
    {
      goto LABEL_6;
    }

LABEL_47:
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v3 = Mutable;
      v26 = [NSNumber numberWithUnsignedInt:HIDWORD(valuePtr) | 3u];
      [(__CFDictionary *)v3 setObject:v26 forKeyedSubscript:@"Battery Service Flags"];

      v27 = [NSNumber numberWithInt:valuePtr];
      [(__CFDictionary *)v3 setObject:v27 forKeyedSubscript:@"Battery Service State"];

      return v3;
    }

    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    return 0;
  }

  sub_1000690DC();
  if ((v0 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_6:
  v1 = sub_10000E814();
  if (v1)
  {
    v2 = v1;
    if (CFDictionaryGetCount(v1))
    {
      v3 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v2);
      v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"Battery Service Flags"];
      v5 = [v4 intValue];

      if ((v5 & 0xC00000) != 0)
      {
        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
        {
          sub_100069190();
        }

        v6 = [NSNumber numberWithUnsignedInt:v5 & 0xFF3FFFFF];
        [(__CFDictionary *)v3 setObject:v6 forKeyedSubscript:@"Battery Service Flags"];

        v7 = qword_1000AB978;
        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
          v9 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"Battery Service Flags"];
          *buf = 67109120;
          *&buf[4] = [v9 intValue];
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Invalid auth condition: recoveredflags:0x%x", buf, 8u);
        }
      }

      CFRelease(v2);

      return v3;
    }

    CFRelease(v2);
  }

  if (MKBDeviceUnlockedSinceBoot() != 1)
  {
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
    {
      sub_100069210();
    }

    return 0;
  }

  v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v12)
  {
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
    {
LABEL_52:
      sub_100069154();
    }

    return 0;
  }

  v3 = v12;
  v13 = sub_100042CB4();
  v14 = v13;
  if (v13)
  {
    CFDictionaryGetValueIfPresent(v13, @"BatterySerial", &value);
    CFDictionaryGetValueIfPresent(v14, @"MaximumCapacityPercent", &v38);
    *buf = 0;
    if (CFDictionaryGetValueIfPresent(v14, @"batteryServiceFlags", buf))
    {
      v15 = *buf;
      TypeID = CFNumberGetTypeID();
      if (v15)
      {
        if (CFGetTypeID(v15) == TypeID)
        {
          CFNumberGetValue(*buf, kCFNumberIntType, &valuePtr + 4);
        }
      }
    }

    *buf = 0;
    if (CFDictionaryGetValueIfPresent(v14, @"batteryServiceRecommended", buf))
    {
      v17 = *buf;
      v18 = CFNumberGetTypeID();
      if (v17)
      {
        if (CFGetTypeID(v17) == v18)
        {
          CFNumberGetValue(*buf, kCFNumberIntType, &valuePtr);
        }
      }
    }
  }

  v19 = qword_1000AB978;
  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = HIDWORD(valuePtr);
    v42 = 1024;
    v43 = valuePtr;
    v44 = 2114;
    v45 = v38;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Battery Health data from powerlog's prefs. SvcFlags:0x%x SvcState:%d MaxCapacity:%{public}@\n", buf, 0x18u);
  }

  v20 = value;
  v21 = CFStringGetTypeID();
  if (v20 && CFGetTypeID(v20) == v21)
  {
    CFDictionarySetValue(v3, @"Battery Serial", value);
  }

  else
  {
    v22 = qword_1000AB978;
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No battery serial number found powerlog's battery health state.\n", buf, 2u);
    }
  }

  if ((BYTE4(valuePtr) & 0x1F) == 1)
  {
    v24 = HIDWORD(valuePtr) & 0x5140000 | 3;
    goto LABEL_61;
  }

  if ((valuePtr & 0x1F00000000) != 0)
  {
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
    {
      sub_1000692BC();
    }

    goto LABEL_60;
  }

  v23 = valuePtr + 1;
  if ((valuePtr + 1) >= 8 || ((0xDFu >> v23) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
    {
      sub_10006924C();
    }

LABEL_60:
    v24 = 3;
    goto LABEL_61;
  }

  v24 = dword_100078F0C[v23];
LABEL_61:
  v37 = v24;
  v29 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v37);
  if (v29)
  {
    v30 = v29;
    CFDictionarySetValue(v3, @"Battery Service Flags", v29);
    CFRelease(v30);
  }

  v31 = qword_1000AB978;
  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v37;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Battery service flags after migration: 0x%x\n", buf, 8u);
  }

  v32 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v32)
  {
    v33 = v32;
    CFDictionarySetValue(v3, @"Battery Service State", v32);
    CFRelease(v33);
  }

  v34 = v38;
  v35 = CFNumberGetTypeID();
  if (v34 && CFGetTypeID(v34) == v35)
  {
    CFDictionarySetValue(v3, @"Maximum Capacity Percent", v38);
  }

  else
  {
    v36 = qword_1000AB978;
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "No MaxBatteryCapacity found in powerlog's battery health state\n", buf, 2u);
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v3;
}

BOOL sub_100015094(void *a1, const __CFString *a2)
{
  v3 = a1;
  pid = xpc_connection_get_pid(v3);
  v5 = sub_100011DF8(v3, a2, 0);

  if (!v5)
  {
    v6 = qword_1000AB9B0;
    if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
    {
      sub_10006E5F0(a2, pid, v6);
    }
  }

  return v5;
}

void sub_100015130(int a1)
{
  v2 = qword_1000ABAB8;
  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Check assertion activity update from clients %d", buf, 8u);
  }

  byte_1000AD160 = 0;
  byte_1000AD180 = a1;
  if (a1)
  {
    qword_1000AD158 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v3 = dword_1000AD170 + 1;
  if (dword_1000AD170 == -1)
  {
    v3 = 1;
  }

  dword_1000AD170 = v3;
  dword_1000AD150 = v3;
  if (!qword_1000AD168)
  {
    qword_1000AD168 = CFSetCreateMutable(0, 0, 0);
    if (!qword_1000AD168)
    {
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10006C24C();
      }

      goto LABEL_35;
    }
  }

  Count = CFDictionaryGetCount(qword_1000ABAC0);
  v5 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  if (!v5)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
    {
      sub_10006C50C();
    }

LABEL_35:
    if (a1)
    {
      sub_10004D5DC(0);
    }

    else
    {
      sub_1000156AC(0, 0);
    }

    dword_1000AD150 = 0;
    return;
  }

  v6 = v5;
  CFDictionaryGetKeysAndValues(qword_1000ABAC0, 0, v5);
  if (Count >= 1)
  {
    v7 = v6;
    do
    {
      v8 = *v7;
      if (!*v7)
      {
        break;
      }

      if (*(v8 + 120) && (*(v8 + 136) & 0xA0) == 0)
      {
        sub_10000229C(*(v8 + 96));
        CFSetAddValue(qword_1000AD168, v8);
        v11 = *(v8 + 96);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10000DB8C;
        v19[3] = &unk_10009A738;
        v20 = v11;
        sub_1000155B4(v8, byte_1000AD180, v19);
      }

      else
      {
        v9 = qword_1000ABAB8;
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(v8 + 96);
          *buf = 67109120;
          v22 = v10;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "checkForAsyncAssertionLogging: No remoteConnection for %d", buf, 8u);
        }
      }

      ++v7;
      --Count;
    }

    while (Count);
  }

  if (CFSetGetCount(qword_1000AD168))
  {
    if (!qword_1000AD178)
    {
      v12 = sub_100002A58();
      qword_1000AD178 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);
      dispatch_source_set_event_handler(qword_1000AD178, &stru_10009A798);
      dispatch_source_set_cancel_handler(qword_1000AD178, &stru_10009A7B8);
      v13 = qword_1000ABAB8;
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v22 = 5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "checkForAssertionActivityUpdates : setting timer to fire in %d secs", buf, 8u);
      }

      v14 = qword_1000AD178;
      v15 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(qword_1000AD178);
    }

    v16 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v22 = 5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "checkForAssertionActivityUpdates : setting timer to fire in %d secs", buf, 8u);
    }

    v17 = qword_1000AD178;
    v18 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006C4D0();
    }

    if (a1)
    {
      sub_10004D5DC(0);
    }

    else
    {
      sub_1000156AC(0, 0);
    }

    dword_1000AD150 = 0;
  }

  free(v6);
}

void sub_1000155B4(uint64_t a1, int a2, void *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      v8 = "assertionUpdateActives";
    }

    else
    {
      v8 = "assertionUpdateActivity";
    }

    xpc_dictionary_set_uint64(v6, v8, 1uLL);
    xpc_dictionary_set_uint64(v7, "assertionCheckToken", dword_1000AD150);
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
    {
      sub_10006C288(a1);
    }

    v9 = *(a1 + 120);
    v10 = sub_100002A58();
    xpc_connection_send_message_with_reply(v9, v7, v10, a3);
    xpc_release(v7);
  }

  else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006C310(a1);
  }
}

void sub_1000156AC(void *a1, int a2)
{
  value_4 = 0;
  dword_1000ABAA0 = 0;
  if ((byte_1000AD119 & 1) == 0)
  {
    byte_1000AD119 = 1;
  }

  if (qword_1000ABA88)
  {
    v4 = qword_1000ABA80 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    value = xpc_dictionary_get_uint64(qword_1000ABA88, "assertionActivityUpdateRefCnt");
    v5 = sub_10001599C(&value, &value_4, (byte_1000AD119 & 1) == 0);
    if (a2)
    {
      v6 = qword_1000ABAB8;
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_sendAssertionActivityUpdate: Overflow from a client", buf, 2u);
      }

      value_4 = 1;
    }

    reply = xpc_dictionary_create_reply(qword_1000ABA88);
    if (!reply)
    {
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10006B0B4();
      }

      goto LABEL_31;
    }

    v8 = reply;
    if (v5)
    {
      v9 = _CFXPCCreateXPCObjectFromCFObject();
      if (!a1)
      {
LABEL_18:
        v10 = value;
        xpc_dictionary_set_uint64(v8, "assertionActivityUpdateRefCnt", value);
        v11 = value_4;
        xpc_dictionary_set_BOOL(v8, "assertionActivityUpdateOverflow", value_4 != 0);
        xpc_dictionary_set_value(v8, "assertionActivityUpdateData", v9);
        xpc_dictionary_set_value(v8, "assertionActivityUpdateProcessList", a1);
        xpc_dictionary_set_uint64(v8, "returnCode", 0);
        xpc_connection_send_message(qword_1000ABA80, v8);
        xpc_release(v8);
        if (v5)
        {
          Count = CFArrayGetCount(v5);
        }

        else
        {
          Count = 0;
        }

        v13 = qword_1000ABAB8;
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          v17 = Count;
          v18 = 1024;
          v19 = v10;
          v20 = 1024;
          v21 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Assertion Activity Update: logged %d entries. New refCnt %d, overflow %d", buf, 0x14u);
        }

        if (v9)
        {
          xpc_release(v9);
        }

        if (a1)
        {
          xpc_release(a1);
        }

LABEL_31:
        if (v5)
        {
          CFRelease(v5);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v9 = 0;
      if (!a1)
      {
        goto LABEL_18;
      }
    }

    a1 = _CFXPCCreateXPCObjectFromCFObject();
    goto LABEL_18;
  }

  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006B080();
  }

LABEL_33:
  if (qword_1000ABA88)
  {
    xpc_release(qword_1000ABA88);
    qword_1000ABA88 = 0;
  }

  if (qword_1000ABA80)
  {
    xpc_release(qword_1000ABA80);
    qword_1000ABA80 = 0;
  }
}

__CFArray *sub_10001599C(unsigned int *a1, _DWORD *a2, int a3)
{
  v6 = *a1;
  v7 = dword_1000ABA90;
  *a2 = 0;
  Count = qword_1000ABA98;
  TypeID = CFArrayGetTypeID();
  if (!Count)
  {
LABEL_4:
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (CFGetTypeID(Count) == TypeID)
  {
    Count = CFArrayGetCount(qword_1000ABA98);
    goto LABEL_4;
  }

  Count = 0;
  if (a3)
  {
LABEL_5:
    *a2 = 1;
    v6 = -1;
    *a1 = -1;
  }

LABEL_6:
  if (v6 == v7 || Count == 0)
  {
    return 0;
  }

  if (Count <= (v6 & 0x1FF))
  {
    *a2 = 1;
    asl_log(0, 0, 3, "Unexpected readFromIdx %d. arrCnt=%ld\n", v6, Count);
    v6 = -1;
    *a1 = -1;
  }

  if (v6 == -1 && v7 <= 0x200)
  {
    v11 = qword_1000ABA98;
    v12 = CFArrayGetTypeID();
    if (!v11)
    {
      return v11;
    }

    if (CFGetTypeID(v11) == v12)
    {
      v13 = 0;
      v14 = (Count - 1);
      goto LABEL_27;
    }

    return 0;
  }

  v14 = (v7 - 1) & 0x1FF;
  if (v7 < v6 || v7 > v6 + 512)
  {
    *a2 = 1;
    if (Count <= (v7 & 0x1FF))
    {
      v13 = 0;
    }

    else
    {
      v13 = v7 & 0x1FF;
    }
  }

  else
  {
    v13 = v6 & 0x1FF;
  }

LABEL_27:
  Mutable = CFArrayCreateMutable(0, 512, &kCFTypeArrayCallBacks);
  v11 = Mutable;
  if (Mutable)
  {
    if (v13 > v14)
    {
      if (Count == 512)
      {
        v17.length = 512 - v13;
        v17.location = v13;
        CFArrayAppendArray(Mutable, qword_1000ABA98, v17);
        v13 = 0;
      }

      else
      {
        asl_log(0, 0, 3, "arrCnt is %ld. expected %d\n", Count, 512);
        asl_log(0, 0, 3, "startIdx: %ld endIdx: %ld refCnt: 0x%x readFromIdx: 0x%x writeToIdx: 0x%x\n", v13, v14, *a1, v6, v7);
        v13 = 0;
        *a2 = 1;
      }
    }

    if (Count <= v14)
    {
      asl_log(0, 0, 3, "final: arrCnt is %ld. expected >= %ld\n", Count, v14 + 1);
      *a2 = 1;
    }

    else
    {
      v18.length = v14 + 1 - v13;
      v18.location = v13;
      CFArrayAppendArray(v11, qword_1000ABA98, v18);
    }

    *a1 = dword_1000ABA90;
  }

  return v11;
}

void sub_100015C08()
{
  dispatch_assert_queue_V2(qword_1000AD408);
  v0 = sub_100015CF8(@"HIDActivityState");
  if (!os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
  {
    if (v0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = sub_100015CF8(@"LastActivityTimestamp");
    v1 = sub_10005ECF8(v3);
    goto LABEL_8;
  }

  sub_10006DCC4();
  if (!v0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v0 == 1)
  {
    v1 = sub_10000CDD8();
LABEL_8:
    v2 = v1;
    goto LABEL_9;
  }

  v2 = 0;
LABEL_9:
  v4 = sub_100002A58();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100015D6C;
  v5[3] = &unk_10009A4F8;
  v6 = v0;
  v5[4] = v2;
  dispatch_async(v4, v5);
}

uint64_t sub_100015CF8(const __CFString *a1)
{
  v2 = -1;
  valuePtr = -1;
  dispatch_assert_queue_V2(qword_1000AD408);
  if (qword_1000AD3D0)
  {
    v3 = IOHIDEventSystemClientCopyProperty(qword_1000AD3D0, a1);
    if (v3)
    {
      v4 = v3;
      CFNumberGetValue(v3, kCFNumberSInt64Type, &valuePtr);
      CFRelease(v4);
      return valuePtr;
    }
  }

  return v2;
}

void sub_100015D6C(uint64_t a1)
{
  LOBYTE(word_1000AD3F8) = *(a1 + 40) == 1;
  qword_1000AD3E8 = *(a1 + 32);
  sub_100015D90();
}

void sub_100015D90()
{
  v0 = sub_10000CD30();
  if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
  {
    sub_10006DD34();
  }

  v1 = v0 > 0x12B;
  v2 = byte_1000AD424 | v1;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 300;
  }

  byte_1000AD3A5 = (byte_1000AD424 | v1) ^ 1;
  if (!qword_1000AD448)
  {
    v4 = sub_100002A58();
    qword_1000AD448 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4);
    dispatch_source_set_event_handler(qword_1000AD448, &stru_10009AEF0);
    dispatch_source_set_cancel_handler(qword_1000AD448, &stru_10009AF10);
  }

  v5 = sub_10000C738();
  if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
  {
    sub_10006DDB8();
  }

  if ((v2 & (v5 == 0)) != 0)
  {
    if (byte_1000AD450 == 1)
    {
      dispatch_suspend(qword_1000AD448);
      byte_1000AD450 = 0;
    }
  }

  else
  {
    if (((v5 != 0) & (v2 | (v5 <= v3))) != 0)
    {
      v3 = v5;
    }

    if (v3 >= v0)
    {
      v6 = dispatch_time(0, 1000000000 * (v3 - v0));
      dispatch_source_set_timer(qword_1000AD448, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
      if ((byte_1000AD450 & 1) == 0)
      {
        dispatch_resume(qword_1000AD448);
        byte_1000AD450 = 1;
      }
    }

    else if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_ERROR))
    {
      sub_10006DE3C();
    }
  }
}

void sub_100015F54(uint64_t a1)
{
  v2 = sub_100002AB4();
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2;
    v5 = 0;
    v6 = 0;
    v7 = (a1 + 24);
    do
    {
      if (*(v3 + 40) > v4)
      {
        break;
      }

      v8 = *v3;
      v9 = *(v3 + 8);
      if (*v3)
      {
        *(v8 + 8) = v9;
      }

      *v9 = v8;
      v10 = *(v3 + 24);
      *(v3 + 24) = v10 & 0xFFFFFFFE;
      if ((v10 & 4) != 0)
      {
        v11 = *(a1 + 152);
        if (v11)
        {
          *(a1 + 152) = v11 - 1;
        }
      }

      sub_10000289C(v3, 1);
      sub_100007E08(v3);
      sub_100004550(v3, 1);
      v12 = *(v3 + 52);
      entr_act_end();
      Current = CFAbsoluteTimeGetCurrent();
      v14 = CFDateCreate(0, Current);
      if (v14)
      {
        v15 = v14;
        CFDictionarySetValue(*(v3 + 16), @"AssertTimedOutWhen", v14);
        CFRelease(v15);
      }

      if (*(v3 + 48) == 5)
      {
        v16 = *(*(v3 + 72) + 96);
        v5 |= v16 != getpid();
      }

      Value = CFDictionaryGetValue(*(v3 + 16), @"TimeoutAction");
      if (*(*(v3 + 72) + 120))
      {
        sub_10001C140(v3);
      }

      if ((v18 = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == v18 && CFEqual(@"TimeoutActionRelease", Value) || CFDictionaryGetValue(*(v3 + 16), @"AsyncClientAssertionId"))
      {
        sub_100007BA0(v3, 4);
      }

      else
      {
        sub_100003488(4, v3);
        v19 = *(v3 + 24);
        v20 = *v7;
        *v3 = *v7;
        if (v20)
        {
          *(v20 + 8) = v3;
        }

        *v7 = v3;
        *(v3 + 8) = v7;
        *(v3 + 24) = v19 & 0xFFFFFFDC | 0x22;
        TypeID = CFStringGetTypeID();
        if (Value && CFGetTypeID(Value) == TypeID && CFEqual(@"TimeoutActionKillProcess", Value))
        {
          kill(*(*(v3 + 72) + 96), 15);
        }
      }

      v3 = *(a1 + 8);
      ++v6;
    }

    while (v3);
    if (v6)
    {
      sub_10000964C(a1);
      if (v5)
      {
        sub_10004F8DC();
      }

      v22 = *(a1 + 128);
      if (v22)
      {
        v22(a1, 1);
      }

      if (dword_1000AD1A8)
      {
        notify_post("com.apple.system.powermanagement.assertions.timeout");
      }

      if (dword_1000AD1A4)
      {

        notify_post("com.apple.system.powermanagement.assertions.anychange");
      }
    }
  }
}

void sub_10001623C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = qword_1000AC990;
  if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "batteryChargingStateRequest received\n", buf, 2u);
  }

  if (v3)
  {
    if (v4)
    {
      v6 = qword_1000AD330;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100016388;
      v7[3] = &unk_1000992A0;
      v8 = v3;
      v9 = v4;
      dispatch_async(v6, v7);
    }

    else if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
    {
      sub_100065928();
    }
  }

  else if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
  {
    sub_10006D868();
  }
}

void sub_100016388(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  dispatch_assert_queue_V2(qword_1000AD330);
  reply = xpc_dictionary_create_reply(v3);
  if (reply)
  {
    if (sub_100011DF8(v2, @"com.apple.private.iokit.charging-iconography", 0) || sub_100011DF8(v2, @"com.apple.private.iokit.battery-gauging-mitigation", 0))
    {
      v5 = xpc_dictionary_get_dictionary(v3, "batteryChargingIconoGraphy");
      if (v5)
      {
        v6 = v5;
        v7 = _CFXPCCreateCFObjectFromXPCObject();
        if (v7)
        {
          v8 = v7;
          xpc_connection_get_pid(v2);
          v9 = [v8 objectForKeyedSubscript:@"batteryChargingIconoGraphyAction"];
          v10 = [v9 unsignedIntValue];

          if (v10 == 1)
          {
            v11 = qword_1000AD330;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100016650;
            block[3] = &unk_1000999D8;
            v14 = reply;
            v15 = v2;
            v16 = 0;
            dispatch_async(v11, block);
          }

          else if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
          {
            sub_10006D8D0();
          }

          goto LABEL_21;
        }

        if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
        {
          sub_10006D904();
        }

        v12 = -536870206;
      }

      else
      {
        v12 = -536870206;
        if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
        {
          sub_10006D938();
        }
      }
    }

    else
    {
      v12 = -536870207;
      if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
      {
        sub_10006D89C();
      }
    }

    sub_100016A20(v2, reply, v12);
    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
  {
    sub_1000658F4();
  }

LABEL_21:
}

void sub_100016650(uint64_t a1)
{
  v2 = qword_1000AD330;
  v3 = *(a1 + 32);
  dispatch_assert_queue_V2(v2);
  v4 = +[BatteryChargingStateManager InstanceManager];
  v5 = [v4 chargingIconoGraphyStateGet];

  v6 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(v3, "batteryChargingIconoGraphyState", v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);

  sub_100016A20(v7, v8, v9);
}

void sub_1000166FC(uint64_t a1)
{
  v1 = qword_1000AD380;
  v2 = *(a1 + 32);
  dispatch_assert_queue_V2(v1);
  v3 = +[BatteryGaugingAccuracyManager InstanceManager];
  v5 = [v3 gaugingAccuracyMetricGet];

  v4 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(v2, "batteryGaugingMitigationState", v4);
}

void sub_10001687C(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (qword_1000ACAE0)
  {
    v7 = [NSKeyedArchiver archivedDataWithRootObject:?];
    v15[0] = @"bootSessionUUID";
    v8 = sub_100030640();
    v15[1] = @"policies";
    v16[0] = v8;
    v16[1] = v7;
    v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

    CFPreferencesSetMultiple(v9, 0, @"com.apple.powerd.charging", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  }

  if (v5 && v6)
  {
    v10 = qword_1000ACAD0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100016AF0;
    v11[3] = &unk_1000999D8;
    v12 = v6;
    v14 = a3;
    v13 = v5;
    dispatch_barrier_async(v10, v11);
  }
}

void sub_100016A20(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = qword_1000AD330;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016B38;
    block[3] = &unk_1000999D8;
    v10 = v6;
    v12 = a3;
    v11 = v5;
    dispatch_barrier_async(v8, block);
  }
}

void sub_100016AF0(uint64_t a1)
{
  xpc_dictionary_set_uint64(*(a1 + 32), "returnCode", *(a1 + 48));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  xpc_connection_send_message(v2, v3);
}

void sub_100016B38(uint64_t a1)
{
  xpc_dictionary_set_uint64(*(a1 + 32), "returnCode", *(a1 + 48));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  xpc_connection_send_message(v2, v3);
}

void sub_100016B80(uint64_t a1)
{
  xpc_dictionary_set_uint64(*(a1 + 32), "returnCode", *(a1 + 48));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  xpc_connection_send_message(v2, v3);
}

id sub_100016BF0(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = state64;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: SB Lock State %llu", buf, 0xCu);
  }

  return [*(a1 + 32) updateLockState:state64];
}

id sub_100016CB4(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = state64;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: SB Lock State %llu", buf, 0xCu);
  }

  return [*(a1 + 32) updateLockState:state64];
}

void sub_1000177BC(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v6 = sub_10001813C();
  theString = &stru_10009BE60;
  v49 = &stru_10009BE60;
  switch(a3)
  {
    case -536870288:
      v10 = sub_10005DFA0();
      if (CFEqual(v10, @"Low Power Sleep") || CFEqual(v10, @"Thermal Emergency Sleep") || sub_10005CA24() && sub_10005CA24() != 255)
      {
        byte_1000AB9CB = 1;
      }

      if (CFStringCompare(v10, @"Idle Sleep", 0) == kCFCompareEqualTo)
      {
        v11 = (dword_1000AD088 & 2) != 0 ? 0 : sub_100019F98(5u);
        if (sub_10000CE38(0xCu) & 1) != 0 || (v11)
        {
LABEL_22:
          v14 = dword_1000AD084;

          IOCancelPowerChange(v14, a4);
          return;
        }
      }

      qword_1000AB9C0 = mach_absolute_time();
      byte_1000AB6D4 = 0;
      v15 = dword_1000AD084;
      v16 = a4;
      goto LABEL_30;
    case -536870256:
      byte_1000AB6D4 = 1;
      sub_100019F98(8u);
      byte_1000AB9CB = 0;
      return;
    case -536656880:
      v7 = v6;
      v8 = sub_10000CE38(0xCu);
      if (CFStringCompare(v7, @"Idle Sleep", 0))
      {
        v9 = 0;
      }

      else
      {
        v9 = sub_100019F98(0xBu);
      }

      if (((v8 | v9) & 1) == 0)
      {
        IOAllowPowerChange(dword_1000AD084, a4);
        byte_1000AB6D4 = 0;
        qword_1000AB9C0 = mach_absolute_time();
        return;
      }

      nullsub_3(0, v8);
      goto LABEL_22;
  }

  if ((a3 & 0xFFFFFFEF) == 0xE0034420)
  {
    v12 = sub_100002A58();
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000183F4;
    v46[3] = &unk_10009A4F8;
    v47 = a3;
    v46[4] = a4;
    dispatch_async(v12, v46);
    return;
  }

  if (a3 != -536870080)
  {
    if (a3 == -536656800)
    {
      v13 = qword_1000AB9B0;
      if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = a4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Request user active from kernel driver %s", buf, 0xCu);
      }
    }

    else
    {
      v22 = qword_1000AB9B0;
      if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
      {
        sub_10006ABF8(a3, v22);
      }
    }

    return;
  }

  sub_1000181C4(a4);
  sub_100018148(a4[4], a4[5], a4[2]);
  v17 = sub_100018800(a4);
  v19 = a4[4];
  v20 = a4[5];
  if ((v19 & 7) == 1 && (a4[5] & 7) != 1)
  {
    nullsub_3(v17, v18);
    v19 = a4[4];
    v20 = a4[5];
  }

  v21 = a4[2];
  if ((v20 ^ v19) & 1) != 0 && (v20 & 1) == 0 && (v21)
  {
    byte_1000AB9C8 = 0;
    byte_1000AB9C9 = 0;
    qword_1000AD0A8 = 0;
    qword_1000AD0A0 = 0;
    byte_1000AB9CA = 0;
    qword_1000AD098 = 0;
    sub_10001B8D0(0);
    notify_post("com.apple.powermanagement.systempowerstate");
    sub_10005E034();
    dword_1000AD088 = dword_1000AD088 & 0xFFFFFF08 | 1;
    sub_10005EA14("success", 0, 0, 3);
    byte_1000AD0C8 = 1;
    nullsub_3(64, 0);
    nullsub_3(4, 0);
    sub_10001B300();
    if (!sub_10004C9B4(*a4))
    {
      sub_10004BCA0(0);
      IOAllowPowerChange(dword_1000AD084, *a4);
    }

    sub_10005DE0C();

    sub_10004B414();
    return;
  }

  if (v20 ^ v19) == 6 && (v20 & 6) == 0 && (v21)
  {
    byte_1000AB9C8 = 0;
    byte_1000AB9C9 = 0;
    qword_1000AD0A8 = 0;
    qword_1000AD0A0 = 0;
    byte_1000AB9CA = 0;
    qword_1000AD098 = 0;
    dword_1000AD088 = dword_1000AD088 & 0xFFFFFF3D | 2;
LABEL_56:
    v16 = *a4;
    if (!v16)
    {
      return;
    }

    v15 = dword_1000AD084;
LABEL_30:

    IOAllowPowerChange(v15, v16);
    return;
  }

  if ((v21 & 2) == 0)
  {
    v23 = v20 & 1;
    goto LABEL_49;
  }

  v23 = v20 & 1;
  if (((v19 & 1) != 0 || (v20 & 1) == 0) && ((v19 & 2) != 0 || (v20 & 2) == 0))
  {
LABEL_49:
    if ((v19 & 1) == 0 && (v23 & v21) != 0)
    {
      byte_1000AB9CB = 0;
      byte_1000AB6D4 = 1;
      dword_1000AD088 = 2;
      v24 = sub_100002A58();
      dispatch_async(v24, &stru_10009A698);
      v25 = 32793;
      if ((a4[4] & 2) == 0)
      {
        if ((a4[5] & 2) != 0)
        {
          v25 = 32799;
        }

        else
        {
          v25 = 32793;
        }
      }

      sub_1000182CC(v25);
    }

    goto LABEL_56;
  }

  sub_10001AF18(&theString, &v49);
  v26 = mach_absolute_time();
  sub_10001B258(v26);
  if (CFStringFind(theString, @"RTC", 0).location != -1)
  {
    if (!qword_1000ABA70)
    {
      goto LABEL_89;
    }

    goto LABEL_74;
  }

  location = CFStringFind(theString, @"rtc", 0).location;
  v28 = qword_1000ABA70;
  if (location != -1 && qword_1000ABA70)
  {
LABEL_74:
    Current = CFAbsoluteTimeGetCurrent();
    Value = CFDictionaryGetValue(qword_1000ABA70, @"time");
    TypeID = CFNumberGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        v32 = Value;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }

    *buf = 0;
    CFNumberGetValue(v32, kCFNumberDoubleType, buf);
    v33 = *buf;
    if (*buf > Current && *buf - Current >= *&qword_1000AB6C8)
    {
      v36 = qword_1000AB9B0;
      if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEBUG))
      {
        sub_10006AB70(v36, v33, Current);
      }
    }

    else if (!qword_1000ABA68)
    {
      qword_1000ABA68 = CFDictionaryCreateMutableCopy(0, 0, qword_1000ABA70);
      v34 = IOPMSleepWakeCopyUUID();
      if (v34)
      {
        v35 = v34;
        CFDictionarySetValue(qword_1000ABA68, @"SleepWakeUUID", v34);
        CFRelease(v35);
      }
    }

    v28 = qword_1000ABA70;
  }

  if (v28)
  {
    CFRelease(v28);
    qword_1000ABA70 = 0;
  }

LABEL_89:
  sub_10001B300();
  byte_1000AB6D4 = 1;
  sub_10001B37C();
  v38 = a4[4];
  if ((v38 & 2) == 0 && (a4[5] & 2) != 0)
  {
    dword_1000AD088 = dword_1000AD088 & 0xFFFFFF08 | 0x40;
    if ((v38 & 1) == 0)
    {
      if (byte_1000AD0C8)
      {
        sub_10001B390("success", 0, 0, 31, 0);
      }

      nullsub_3(0, v37);
      goto LABEL_110;
    }

    if (byte_1000AD0C8)
    {
      v42 = 0;
    }

    else
    {
      if (byte_1000AD0C9 != 1)
      {
LABEL_110:
        nullsub_3(8, (v38 & 1) == 0);
        byte_1000AD0C9 = 0;
        byte_1000AD0C8 = 0;
        v39 = 31;
LABEL_111:
        byte_1000AB9CA = 1;
        qword_1000AD098 = 0;
        sub_100019B1C();
        goto LABEL_112;
      }

      byte_1000AB9C9 = 1;
      v42 = 2;
    }

    sub_10001B390("success", 0, 0, 31, v42);
    goto LABEL_110;
  }

  if (v38 & 1) == 0 && (a4[5])
  {
    byte_1000AB9C8 = 1;
    dword_1000AD088 = dword_1000AD088 & 0xFFFFFF08 | 2;
    nullsub_3(a4, v37);
    v41 = CFAbsoluteTimeGetCurrent();
    if (qword_1000AD090 && *&qword_1000AB9B8 != 0.0 && v41 > *&qword_1000AB9B8)
    {
      dispatch_suspend(qword_1000AD090);
      dispatch_source_set_timer(qword_1000AD090, 0, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(qword_1000AD090);
    }

    if (byte_1000AD0C8 == 1)
    {
      sub_10001B390("success", 0, 0, 25, 1);
      byte_1000AD0C9 = 1;
      byte_1000AD0C8 = 0;
    }

    nullsub_3(1, v40);
    nullsub_3(16, 1);
    v39 = 25;
    goto LABEL_111;
  }

  v39 = 0;
LABEL_112:
  sub_10001B8D0(v39);
  notify_post("com.apple.powermanagement.systempowerstate");
  dword_1000AB700 = v39;
  sub_1000182CC(v39);
  v43 = *a4;
  if (v43)
  {
    IOAllowPowerChange(dword_1000AD084, v43);
  }

  v44 = sub_10001BA28(@"AppStatistics");
  if (v44)
  {
    v45 = v44;
    nullsub_3(v44, "KernelClientStats");
    sub_10001BA70(v45);
    CFRelease(v45);
  }
}

void sub_100018148(int a1, int a2, int a3)
{
  if (a1 & ~a2 & a3)
  {
    v3 = 16;
    if (sysctlbyname("kern.sleeptime", &qword_1000AD500, &v3, 0, 0))
    {
      qword_1000AD500 = 0;
      dword_1000AD508 = 0;
    }

    byte_1000AD510 = 1;
    sub_1000601D8();
  }
}

void sub_1000181C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 & 2) != 0 && (*(a1 + 16) & 1) == 0 && (*(a1 + 20))
  {
    if (os_log_type_enabled(qword_1000AB7F0, OS_LOG_TYPE_DEBUG))
    {
      sub_1000683CC();
    }

    for (i = 0; i != 48; i += 8)
    {
      v3 = *(&off_1000AB1C8 + i);
      if (v3)
      {
        sub_100006698(v3);
        if (!CFEqual((*(&off_1000AB1C8 + i))[3], @"wakepoweron"))
        {
          sub_1000071C8(*(&off_1000AB1C8 + i));
        }
      }
    }
  }

  else if ((v1 & 1) != 0 && (*(a1 + 16) & 1) != 0 && (*(a1 + 20) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1000AB7F0, OS_LOG_TYPE_DEBUG))
    {
      sub_10006840C();
    }

    sub_1000071C8(&qword_1000AB8B8);
  }
}

void sub_1000182CC(uint64_t a1)
{
  v2 = qword_1000AB9B0;
  if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "sendNoRespNotification: 0x%x\n", v9, 8u);
  }

  Count = CFArrayGetCount(qword_1000AD078);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000AD078, i);
      if ((ValueAtIndex[8] & a1) != 0)
      {
        v7 = ValueAtIndex;
        v8 = *ValueAtIndex;
        if (v8)
        {
          if (*(v7 + 36))
          {
            sub_10004CFF0(v8, a1, 0);
            if ((dword_1000AB6D0 & 4) != 0)
            {
              nullsub_3(*(v7 + 2), a1);
            }
          }
        }
      }
    }
  }
}

void sub_1000183F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == -536656848)
  {
    v4 = 0;
    v3 = dword_1000AD0D0 != v2;
    dword_1000AD0D0 = *(a1 + 32);
    v5 = &dword_1000AD0C4;
    v6 = "com.apple.powermanagement.systemsleeppreventers";
  }

  else
  {
    if (v1 != -536656864)
    {
      return;
    }

    v3 = 0;
    v4 = dword_1000AD0CC != v2;
    dword_1000AD0CC = *(a1 + 32);
    v5 = &dword_1000AD0C0;
    v6 = "com.apple.powermanagement.idlesleeppreventers";
  }

  v7 = *v5;
  if (!*v5)
  {
    if (notify_register_check(v6, v5))
    {
      *v5 = 0;
      goto LABEL_9;
    }

    v7 = *v5;
    if (!*v5)
    {
      goto LABEL_9;
    }
  }

  notify_set_state(v7, v2);
  notify_post(v6);
LABEL_9:
  if (v4)
  {
    nullsub_3(0, v8);
    sub_100018520(0);
  }

  if (v3)
  {
    nullsub_3(1, v8);

    sub_100018520(1);
  }
}

void sub_100018520(int a1)
{
  theArray = 0;
  if (IOPMCopySleepPreventersListWithID())
  {
    v2 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Could not read sleep preventers\n", v8, 2u);
    }
  }

  else
  {
    CFArrayGetTypeID();
    v3 = &qword_1000ABB00;
    if (a1)
    {
      v3 = &qword_1000ABB08;
    }

    v4 = *v3;
    if (*v3)
    {
      do
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          CFDictionaryGetValue(v5, @"GlobalUniqueID");
        }

        v7 = *v4;
        v6 = *(v4 + 8);
        if (*v4)
        {
          v7[1] = v6;
        }

        *v6 = v7;
        sub_100003488(2, v4);
        CFRelease(*(v4 + 16));
        sub_100007E54(0);
        free(v4);
        v4 = v7;
      }

      while (v7);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }
}

_DWORD *sub_100018800(_DWORD *result)
{
  v1 = result[5];
  if ((v1 ^ result[4]))
  {
    v2 = result[2];
    if (v1)
    {
      if ((v2 & 2) != 0)
      {
        byte_1000AD318 = 0;
        if (byte_1000AD320 == 1)
        {
          if (qword_1000AD300)
          {
            if (CFEqual(qword_1000AD300, @"AC Power"))
            {
              v3 = 2;
            }

            else
            {
              v3 = 1;
            }
          }

          else
          {
            v3 = 1;
          }

          byte_1000AD320 = 0;
          byte_1000AD318 = 0;
          v4 = dword_1000AD324;

          return IOPMSetAggressiveness(v4, 6uLL, v3);
        }
      }
    }

    else if (v2)
    {
      byte_1000AD318 = 1;
    }
  }

  return result;
}

uint64_t sub_100018B70(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      [a1 _handleServiceAdded:v5];
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_100018C18(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100018C6C(unsigned int a1, int a2)
{
  valuePtr = a1;
  if (qword_1000AD1B8)
  {
    v3 = &unk_1000ABB58 + 160 * a1;
    if (a2)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v4 = *(v3 + 16);
      v5 = *v3;
      v6 = *(v3 + 26);
    }

    v32 = 0;
    *(v3 + 10) = a1;
    switch(a1)
    {
      case 0u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"CPUBoundAssertion", v7);
        *(v3 + 16) = sub_100003E64;
        *(v3 + 39) = 0;
        v8 = 8;
        if (v7)
        {
          goto LABEL_67;
        }

        goto LABEL_68;
      case 1u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"PreventUserIdleSystemSleep", v7);
        CFDictionarySetValue(qword_1000AD1B8, @"NoIdleSleepAssertion", v7);
        *(v3 + 16) = sub_100003E64;
        *(v3 + 39) = 0x10000;
        v13 = *v3 | 8;
        goto LABEL_27;
      case 2u:
        v8 = 9;
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"DisableInflow", v7);
        v14 = sub_10000D5BC;
        goto LABEL_56;
      case 3u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"ChargeInhibit", v7);
        *(v3 + 16) = sub_10000D5BC;
        *(v3 + 39) = 0;
        v8 = 10;
        if (!v7)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      case 4u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"DisableLowPowerBatteryWarnings", v7);
        *(v3 + 16) = sub_10000D5BC;
        *(v3 + 39) = 0;
        v8 = 11;
        if (!v7)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      case 5u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"PreventUserIdleDisplaySleep", v7);
        CFDictionarySetValue(qword_1000AD1B8, @"NoDisplaySleepAssertion", v7);
        v8 = 0;
        *(v3 + 16) = sub_10000933C;
        *(v3 + 39) = 0x20000;
        *v3 |= 0x28u;
        if (!v7)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      case 6u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"EnableIdleSleep", v7);
        *(v3 + 16) = sub_10000D6BC;
        *(v3 + 39) = 0;
        v8 = 7;
        if (!v7)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      case 7u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"PreventSystemSleep", v7);
        v15 = qword_1000AD1B8;
        v16 = @"DenySystemSleep";
        goto LABEL_37;
      case 8u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"ExternalMedia", v7);
        CFDictionarySetValue(qword_1000AD1B8, @"PreventStandby", v7);
        *(v3 + 16) = sub_10000933C;
        *(v3 + 39) = 0;
        *v3 |= 0x20u;
        v8 = 4;
        if (!v7)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      case 9u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"UserIsActive", v7);
        *(v3 + 16) = sub_10000933C;
        *(v3 + 39) = 131074;
        *v3 |= 0x28u;
        v8 = 3;
        if (!v7)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      case 0xAu:
        if (sub_10001962C() && (sub_100004870() & 1) != 0)
        {
          p_valuePtr = &valuePtr;
        }

        else
        {
          v32 = 11;
          p_valuePtr = &v32;
        }

        v7 = CFNumberCreate(0, kCFNumberIntType, p_valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"ApplePushServiceTask", v7);
        v8 = 0;
        *v3 |= 0xAu;
        v14 = sub_10000933C;
LABEL_56:
        *(v3 + 16) = v14;
        goto LABEL_66;
      case 0xBu:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"BackgroundTask", v7);
        *v3 |= 9u;
        if (sub_100056B3C())
        {
          *(v3 + 16) = sub_10000933C;
          v10 = sub_10004B014();
          if (v10)
          {
            if (byte_1000AD1B5)
            {
              v11 = *(v3 + 34);
              if (!v11)
              {
LABEL_63:
                byte_1000AD1B5 = v10 ^ 1;
                goto LABEL_64;
              }

              v12 = v11 - 1;
LABEL_62:
              *(v3 + 34) = v12;
              goto LABEL_63;
            }
          }

          else if ((byte_1000AD1B5 & 1) == 0)
          {
            v12 = *(v3 + 34) + 1;
            goto LABEL_62;
          }

LABEL_64:
          *v3 &= ~0x20u;
          goto LABEL_65;
        }

        *(v3 + 16) = sub_100003E64;
        if (byte_1000AD1B5 == 1)
        {
          v21 = *(v3 + 34);
          if (v21)
          {
            *(v3 + 34) = v21 - 1;
          }
        }

LABEL_65:
        v8 = 0;
LABEL_66:
        *(v3 + 39) = 0;
        if (v7)
        {
LABEL_67:
          CFRelease(v7);
        }

LABEL_68:
        if (*(v3 + 34))
        {
          v22 = 0;
        }

        else
        {
          v22 = v8;
        }

        if (a2)
        {
          v23 = (&unk_1000AC8A0 + 16 * v22);
          v24 = *v23;
          *(v3 + 14) = *v23;
          *(v3 + 26) = v22;
          if (v24)
          {
            *(v24 + 15) = v3 + 112;
          }

          *v23 = v3;
          *(v3 + 15) = v23;
        }

        else
        {
          v25 = *(v3 + 16);
          v26 = *v3;
          if (v4 == v25 && v6 == v22)
          {
            if (v4 && v5 != v26)
            {
              v25(v3, 2);
            }
          }

          else
          {
            v28 = *(v3 + 14);
            v29 = *(v3 + 15);
            if (v28)
            {
              *(v28 + 120) = v29;
            }

            *v29 = v28;
            v4(v3, 2);
            *v3 = v26;
            if (dword_1000ABAD8 && v6 != v22)
            {
              sub_1000047A8(v3, 3u, &stru_10009A980);
            }

            *(v3 + 26) = v22;
            v30 = (&unk_1000AC8A0 + 16 * v22);
            v31 = *v30;
            *(v3 + 14) = *v30;
            if (v31)
            {
              *(v31 + 15) = v3 + 112;
            }

            *v30 = v3;
            *(v3 + 15) = v30;
            if (v22)
            {
              (*(v3 + 16))(v3, 2);
            }

            if (dword_1000ABAD8 && v6 != v22)
            {
              sub_1000047A8(v3, 3u, &stru_10009A9A0);
            }
          }
        }

        break;
      case 0xCu:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"SystemIsActive", v7);
        *(v3 + 16) = sub_100003E64;
        *(v3 + 39) = 0x10000;
        v13 = *v3 | 0x28;
LABEL_27:
        *v3 = v13;
        v8 = 1;
        if (!v7)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      case 0xDu:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"InternalPreventSleep", v7);
        v15 = qword_1000AD1B8;
        v16 = @"MaintenanceWake";
LABEL_37:
        CFDictionarySetValue(v15, v16, v7);
        v8 = 0;
        *v3 |= 0x29u;
        *(v3 + 16) = sub_10000933C;
        v9 = 65537;
        goto LABEL_38;
      case 0xEu:
        v32 = 5;
        v7 = CFNumberCreate(0, kCFNumberIntType, &v32);
        goto LABEL_65;
      case 0xFu:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"PreventDiskIdle", v7);
        *(v3 + 16) = sub_100003E64;
        *(v3 + 39) = 0;
        v8 = 5;
        if (!v7)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      case 0x10u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"InternalPreventDisplaySleep", v7);
        CFDictionarySetValue(qword_1000AD1B8, @"RequiresDisplayAudio", v7);
        v8 = 0;
        *(v3 + 16) = sub_10000933C;
        *v3 |= 0x20u;
        v9 = 0x20000;
LABEL_38:
        *(v3 + 39) = v9;
        if (!v7)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      case 0x11u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"NetworkClientActive", v7);
        *v3 |= 0x28u;
        *(v3 + 39) = 65537;
        v17 = sub_100004D48();
        v8 = 0;
        v18 = sub_100003E64;
        if (v17 == 1)
        {
          v18 = sub_10000933C;
        }

        *(v3 + 16) = v18;
        goto LABEL_66;
      case 0x12u:
        if (sub_10001962C() && (sub_100004870() & 1) != 0)
        {
          v19 = 10;
        }

        else
        {
          v19 = 11;
        }

        v32 = v19;
        v7 = CFNumberCreate(0, kCFNumberIntType, &v32);
        CFDictionarySetValue(qword_1000AD1B8, @"InteractivePushServiceTask", v7);
        v8 = 0;
        *(v3 + 8) = @"com.apple.private.iokit.interactive-push";
        goto LABEL_66;
      case 0x13u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"AwakeOnReservePower", v7);
        *v3 |= 8u;
        *(v3 + 16) = sub_100003E64;
        *(v3 + 8) = @"com.apple.private.iokit.reservepower-control";
        v8 = 1;
        *(v3 + 39) = 1;
        if (!v7)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      case 0x14u:
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000AD1B8, @"SoftwareUpdateTask", v7);
        v8 = 0;
        *v3 |= 0x20u;
        *(v3 + 16) = sub_10000933C;
        *(v3 + 8) = @"com.apple.private.iokit.assertion-softwareupdate";
        if (!v7)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      default:
        return;
    }
  }
}

id sub_10001963C()
{
  v0 = qword_1000AD2E8;
  if (os_log_type_enabled(qword_1000AD2E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Taking a wake in progress resource hint", buf, 2u);
  }

  if (qword_1000AC980)
  {
    result = [qword_1000AC980 updateState:1];
  }

  else
  {
    result = [[ResourceHint alloc] initWithResourceType:1 andState:1];
    qword_1000AC980 = result;
  }

  v2 = qword_1000AC978;
  if (qword_1000AC978)
  {
    v3 = qword_1000AD2E8;
    if (os_log_type_enabled(qword_1000AD2E8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing a sleep in progress resource hint", v4, 2u);
      v2 = qword_1000AC978;
    }

    return [v2 updateState:0];
  }

  return result;
}

void sub_100019734(int a1, int a2, int a3, intptr_t notificationID)
{
  HIDWORD(v5) = a3 + 536870288;
  LODWORD(v5) = a3 + 536870288;
  v4 = v5 >> 4;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      sub_100055FE0();
    }

    v7 = dword_1000AD2E0;

    IOAllowPowerChange(v7, notificationID);
  }

  else
  {
    switch(v4)
    {
      case 2:

        sub_100056078();
        break;
      case 9:

        sub_10001BD40();
        break;
      case 11:

        sub_10001963C();
        break;
    }
  }
}

void sub_100019810(uint64_t a1)
{
  v2 = qword_1000AB9B0;
  if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating wake start timestamp to %llu\n", &v3, 0xCu);
  }

  qword_1000AD0A8 = a1;
}

void sub_1000198B8(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v16 = v5;
    v17 = v4;
    v18 = v2;
    v19 = v3;
    msg = dispatch_mach_msg_get_msg();
    if (msg->msgh_id == 950)
    {
      v7 = mach_host_self();
      host_request_notification(v7, 0, msg->msgh_local_port);
      v13 = 16;
      Current = CFAbsoluteTimeGetCurrent();
      if (byte_1000AD510 == 1)
      {
        v9 = Current;
        v14 = 0.0;
        v15 = 0;
        if (!sysctlbyname("kern.sleeptime", &v14, &v13, 0, 0) && (qword_1000AD500 != *&v14 || dword_1000AD508 != v15))
        {
          v10 = qword_1000AD528;
          if (qword_1000AD528)
          {
            v11 = qword_1000AD520;
            if (!qword_1000AD520)
            {
LABEL_16:
              sub_100019CA4();
              v13 = 0;
              v14 = 0.0;
              if (!IOPMGetLastWakeTime())
              {
                v12 = sub_100019A48(v14);
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                {
                  sub_10006F9E4();
                }

                sub_100019810(v12);
                sub_100019B1C();
              }

              goto LABEL_6;
            }
          }

          else
          {
            if (vm_allocate(mach_task_self_, &qword_1000AD520, 0x10uLL, 1))
            {
              goto LABEL_16;
            }

            v11 = qword_1000AD520;
            v10 = (qword_1000AD520 + 8);
            qword_1000AD528 = qword_1000AD520 + 8;
          }

          *v11 = v9;
          *v10 = 0;
          byte_1000AD510 = 0;
          goto LABEL_16;
        }
      }

      sub_100019CA4();
    }

LABEL_6:
    mach_msg_destroy(msg);
  }
}

uint64_t sub_100019A48(double a1)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  times = mach_get_times();
  if (times)
  {
    v3 = times;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000659F8(v3);
    }

    return 0;
  }

  else
  {
    v5 = v7 - kCFAbsoluteTimeIntervalSince1970 + v8 / 1000000000.0 - a1;
    v6 = 0;
    mach_timebase_info(&v6);
    return v9 - (v5 * 1000000000.0 * (v6.denom / v6.numer));
  }
}

void sub_100019B1C()
{
  if (byte_1000AB9CA == 1)
  {
    if (byte_1000AB9C9 == 1 && qword_1000AD098 == 0)
    {
      cf1 = 0;
      sub_10001B1AC(0, &cf1);
      if (!cf1 || !CFEqual(cf1, @"Notification"))
      {
        v4 = 8;
        v5 = 0;
        sysctlbyname("kern.useractive_abs_time", &v5, &v4, 0, 0);
        v2 = qword_1000AB9B0;
        if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEBUG))
        {
          sub_10006ADC0(&v5, v2);
        }

        qword_1000AD098 = sub_10001B7B0(v5, qword_1000AD0A0);
        sub_10001B7F8(qword_1000AD098);
      }
    }

    else
    {
      if (qword_1000AD0A8)
      {
        v1 = qword_1000AD098 == 0;
      }

      else
      {
        v1 = 0;
      }

      if (v1)
      {
        v3 = sub_10001B7B0(qword_1000AD0A8, qword_1000AD0A0);
        qword_1000AD098 = v3;

        sub_10001B7F8(v3);
      }

      else if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEBUG))
      {
        sub_10006AD8C();
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEBUG))
  {
    sub_10006AD58();
  }
}

void sub_100019CA4()
{
  for (i = 0; i != 48; i += 8)
  {
    v1 = *(&off_1000AB1C8 + i);
    if (v1)
    {
      if (!CFEqual(*(v1 + 24), @"wakepoweron"))
      {
        sub_1000071C8(v1);
      }
    }
  }
}

void sub_100019D08(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v6 = IOPMSleepWakeCopyUUID();
  HIDWORD(v8) = a3 + 536870288;
  LODWORD(v8) = a3 + 536870288;
  v7 = v8 >> 4;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543362;
          v11 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received kIOMessageSystemWillSleep. UUID: %{public}@\n", &v10, 0xCu);
        }

        if (sub_10005C9D0())
        {
          sub_10005C9DC();
        }

        IOAllowPowerChange(dword_1000AD514, a4);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cancelling system assertion timer on sleep", &v10, 2u);
        }

        sub_10001C420();
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received kIOMessageCanSystemSleep. UUID: %{public}@\n", &v10, 0xCu);
      }

      sub_10004E440(a4);
    }
  }

  else
  {
    if (v7 == 2)
    {
LABEL_5:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "kIOMessageSystemWillNotSleep";
        if (a3 == -536870112)
        {
          v9 = "kIOMessageSystemWillPowerOn";
        }

        v10 = 136446466;
        v11 = v9;
        v12 = 2114;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received %{public}s. UUID: %{public}@\n", &v10, 0x16u);
      }

      sub_10001A238(1);
      sub_100019F98(8u);
      goto LABEL_24;
    }

    if (v7 != 9)
    {
      if (v7 != 11)
      {
        goto LABEL_24;
      }

      goto LABEL_5;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received kIOMessageSystemHasPoweredOn. UUID: %{public}@\n", &v10, 0xCu);
    }
  }

LABEL_24:
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_100019F98(unsigned int a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if ((a1 & 4) != 0)
  {
    sub_100006698(&qword_1000AB8B8);
    byte_1000ACCA8 = 1;
    qword_1000ACCA0 = *&Current;
    v3 = Current;
  }

  else
  {
    v3 = *&qword_1000ACCA0;
  }

  v28 = 0;
  if (a1)
  {
    v4 = Current + 8.0;
  }

  else
  {
    v4 = Current;
  }

  if (((v3 != 0.0) & (a1 >> 1)) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = Current;
  }

  if (v4 == v5)
  {
    goto LABEL_23;
  }

  v6 = qword_1000AB8B8;
  TypeID = CFArrayGetTypeID();
  if (!v6)
  {
    goto LABEL_26;
  }

  if (CFGetTypeID(v6) != TypeID || (Count = CFArrayGetCount(qword_1000AB8B8), Count < 1))
  {
LABEL_23:
    v15 = 0;
    v6 = 0;
    if ((a1 & 8) == 0)
    {
      goto LABEL_28;
    }

LABEL_27:
    byte_1000ACCA8 = 0;
    qword_1000ACCA0 = 0;
    sub_100006698(&qword_1000AB8B8);
    goto LABEL_28;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1000AB8B8, v10);
    v12 = CFDictionaryGetTypeID();
    if (ValueAtIndex)
    {
      if (CFGetTypeID(ValueAtIndex) == v12)
      {
        v13 = sub_100040C70(ValueAtIndex);
        if (v13 != 0.0 && v13 >= v5)
        {
          break;
        }
      }
    }

    if (v9 == ++v10)
    {
      goto LABEL_23;
    }
  }

  v16 = v13;
  v6 = CFDateCreate(0, v13);
  if (v16 > v4)
  {
LABEL_26:
    v15 = 0;
    if ((a1 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v18 = CFDictionaryGetTypeID();
  if (CFGetTypeID(ValueAtIndex) == v18)
  {
    v19 = CFDateGetTypeID();
    if (v6)
    {
      if (CFGetTypeID(v6) == v19)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"scheduledby");
        v21 = CFStringGetTypeID();
        if (Value)
        {
          if (CFGetTypeID(Value) == v21)
          {
            v22 = Value;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        v23 = CFDateFormatterCreate(0, 0, kCFDateFormatterShortStyle, kCFDateFormatterMediumStyle);
        StringWithDate = CFDateFormatterCreateStringWithDate(0, v23, v6);
        v25 = CFStringCreateWithFormat(0, 0, @"Delay sleep for wake request %@ at %@", v22, StringWithDate);
        v26 = vcvtpd_s64_f64(v16 - Current);
        if (v16 - Current <= 1.0)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_10004F748(@"PreventUserIdleSystemSleep", v25, v27, &v28);
        if (v23)
        {
          CFRelease(v23);
        }

        if (StringWithDate)
        {
          CFRelease(StringWithDate);
        }

        if (v25)
        {
          CFRelease(v25);
        }
      }
    }
  }

  v15 = 1;
  if ((a1 & 8) != 0)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v6)
  {
    CFRelease(v6);
  }

  return v15;
}

uint64_t sub_10001A244(int a1, _OWORD *a2, int a3, int a4, const UInt8 *address, vm_size_t size, vm_address_t *a7, unsigned int *a8, int *a9)
{
  v11 = size;
  pidp = -1;
  *a8 = 0;
  *a7 = 0;
  *a9 = -536870160;
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      v19 = a2[1];
      *values.val = *a2;
      *&values.val[4] = v19;
      audit_token_to_au32(&values, 0, 0, 0, 0, 0, &pidp, 0, 0);
      *values.val = 0;
      if (sub_100004CBC(pidp, a3, &values))
      {
        v15 = 0;
        v20 = -536870160;
      }

      else
      {
        v31 = (*values.val + 16);
        CFRetain(*(*values.val + 16));
        v20 = 0;
        v15 = *v31;
      }

      *a9 = v20;
      if (!v15)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    if (a4 == 2)
    {
      v17 = 0;
      goto LABEL_22;
    }

    if (a4 != 3)
    {
LABEL_24:
      v24 = 0;
      *a8 = 0;
      *a7 = 0;
      goto LABEL_35;
    }

    v14 = 0;
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    memset(&values, 0, sizeof(values));
    do
    {
      LODWORD(valuePtr) = (dword_1000AD1AC >> v14) & 1;
      *&values.val[2 * v14++] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    }

    while (v14 != 21);
    v15 = CFDictionaryCreate(0, qword_1000AD1E0, &values, 21, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    for (i = 0; i != 42; i += 2)
    {
      CFRelease(*&values.val[i]);
    }

LABEL_31:
    if (!v15)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  if (a4 > 5)
  {
    if (a4 != 6)
    {
      if (a4 == 7)
      {
        v17 = 1;
LABEL_22:
        v13 = sub_10004EA0C(v17);
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    v21 = CFDataCreateWithBytesNoCopy(0, address, size, kCFAllocatorNull);
    if (v21)
    {
      v22 = v21;
      v23 = CFPropertyListCreateWithData(0, v21, 0, 0, 0);
      CFRelease(v22);
    }

    else
    {
      v23 = 0;
    }

    valuePtr = 0;
    p_valuePtr = &valuePtr;
    v35 = 0x2020000000;
    v36 = 0;
    v25 = sub_100001F08(v23);
    if (v25 == -1)
    {
      v15 = 0;
    }

    else
    {
      *values.val = _NSConcreteStackBlock;
      *&values.val[2] = 3221225472;
      *&values.val[4] = sub_10001A788;
      *&values.val[6] = &unk_10009A800;
      *&v38 = &valuePtr;
      sub_1000047A8(&unk_1000ABB58 + 160 * v25, 3u, &values);
      v15 = p_valuePtr[3];
    }

    _Block_object_dispose(&valuePtr, 8);
    if (v23)
    {
      CFRelease(v23);
    }

    goto LABEL_31;
  }

  if (a4 == 4)
  {
    v13 = sub_100041064();
  }

  else
  {
    v13 = sub_10003F3CC();
  }

LABEL_23:
  v15 = v13;
  if (!v13)
  {
    goto LABEL_24;
  }

LABEL_32:
  Data = CFPropertyListCreateData(0, v15, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFRelease(v15);
  if (Data)
  {
    Length = CFDataGetLength(Data);
    *a8 = Length;
    vm_allocate(mach_task_self_, a7, Length, 1);
    v28 = *a7;
    BytePtr = CFDataGetBytePtr(Data);
    memcpy(v28, BytePtr, *a8);
    CFRelease(Data);
    v24 = 0;
  }

  else
  {
    v24 = -536870199;
  }

LABEL_35:
  *a9 = v24;
  if (address && v11)
  {
    vm_deallocate(mach_task_self_, address, v11);
  }

  return 0;
}

void sub_10001A640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001A660(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 64)
  {
    v3 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 60))
  {
    v3 = -300;
    goto LABEL_10;
  }

  if (*(result + 64) || *(result + 68) <= 0x1Fu)
  {
    v3 = -309;
LABEL_10:
    *(a2 + 32) = v3;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 52);
  v6 = *(result + 56);
  v7 = *(result + 28);
  v8 = *(result + 40);
  v9 = *(result + 100);
  v10[0] = *(result + 84);
  v10[1] = v9;
  result = sub_10001A244(v4, v10, v5, v6, v7, v8, (a2 + 28), (a2 + 52), (a2 + 56));
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_11:
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_10001A788(uint64_t a1, uint64_t a2)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  v4 = *(a2 + 48);
  if (v4 <= 0x14)
  {
    CFDictionarySetValue(*(a2 + 16), @"AssertionTrueType", qword_1000AD1E0[v4]);
  }

  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(a2 + 16);

  CFArrayAppendValue(v5, v6);
}

void *sub_10001A824(const void *a1, const void *a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A0040FFA61E1BuLL);
  if (!v6)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006CA98();
    }

    return 0;
  }

  v7 = v6;
  Mutable = CFDictionaryCreateMutable(0, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7[2] = Mutable;
  if (!Mutable)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006CA5C();
    }

    free(v7);
    return 0;
  }

  CFDictionarySetValue(Mutable, @"GlobalUniqueID", a2);
  CFDictionarySetValue(v7[2], @"AssertName", a1);
  if (a3)
  {
    v9 = @"System Sleep Preventer";
  }

  else
  {
    v9 = @"Idle Sleep Preventer";
  }

  CFDictionarySetValue(v7[2], @"AssertType", v9);
  CFDictionarySetValue(v7[2], @"Process Name", @"kernel_task");
  Value = CFDictionaryGetValue(qword_1000ABAC0, 0);
  if (Value)
  {
    v11 = Value[18];
    if (v11 != -1)
    {
      Value[18] = v11 + 1;
    }
  }

  else
  {
    v7[9] = 0;
    Value = sub_100002B14(0);
  }

  v7[9] = Value;
  if (a3)
  {
    v12 = qword_1000ABB08;
    *v7 = qword_1000ABB08;
    if (v12)
    {
      *(v12 + 8) = v7;
    }

    v13 = &qword_1000ABB08;
  }

  else
  {
    v14 = qword_1000ABB00;
    *v7 = qword_1000ABB00;
    if (v14)
    {
      *(v14 + 8) = v7;
    }

    v13 = &qword_1000ABB00;
  }

  *v13 = v7;
  v7[1] = v13;
  return v7;
}

void sub_10001A9DC(uint64_t a1)
{
  if ([*(a1 + 32) powerassertionID] || (objc_msgSend(*(a1 + 32), "powerassertion") & 1) != 0)
  {
    v2 = qword_1000AC970;
    if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEBUG))
    {
      sub_10006D3A0(v2);
    }
  }

  else
  {
    v3 = sub_10004F0C8(@"PreventUserIdleSystemSleep", @"Powerd - prevent sleep while in usb device mode", 0, 0, 0, 0, 0.0);
    v4 = v3;
    v5 = qword_1000AC970;
    if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Raising assertion for usb device mode", v7, 2u);
    }

    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, @"perf-unrestricted");
    CFDictionarySetValue(v3, @"ResourcesUsed", Mutable);
    CFDictionarySetValue(v3, @"AllowsDeviceRestart", kCFBooleanTrue);
    sub_10004F258(v3, *(a1 + 32) + 16);
    [*(a1 + 32) setPowerassertion:1];
  }
}

uint64_t sub_10001AB30(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = qword_1000AD2F0 | result;
  }

  else
  {
    v2 = qword_1000AD2F0 & ~result;
  }

  qword_1000AD2F0 = v2;
  return result;
}

void sub_10001AB60()
{
  if (!qword_1000AD2F8)
  {
    return;
  }

  v0 = qword_1000AD2F0;
  if (qword_1000AD308 == qword_1000AD2F0)
  {
    return;
  }

  v1 = qword_1000AB758;
  if ((qword_1000AD2F0 ^ qword_1000AD308) == 4 && qword_1000AB758 != -1)
  {
    v3 = dword_1000AD310;
    if (dword_1000AD310)
    {
LABEL_11:
      if ((v0 & 4) != 0)
      {
        v4 = 0;
      }

      else
      {
        v4 = v1;
      }

      if (!IOPMSetAggressiveness(v3, 3uLL, v4))
      {
        qword_1000AD308 = qword_1000AD2F0;
        return;
      }

      dword_1000AD310 = 0;
      v0 = qword_1000AD2F0;
      goto LABEL_16;
    }

    v3 = IOPMFindPowerManagement(0);
    dword_1000AD310 = v3;
    v0 = qword_1000AD2F0;
    if (v3)
    {
      v1 = qword_1000AB758;
      goto LABEL_11;
    }
  }

LABEL_16:
  qword_1000AD308 = v0;
  v5 = qword_1000AD2F8;
  v6 = qword_1000AD300;

  sub_1000566DC(v5, v6);
}

uint64_t sub_10001AC44(const __CFDictionary *a1)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"time");
    TypeID = CFDateGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        a1 = Value;
      }

      else
      {
        a1 = 0;
      }
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return IOPMSchedulePowerEvent(a1, 0, @"PowerOnImmediate");
}

void sub_10001ACB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  HIDWORD(v7) = a3 + 536657648;
  LODWORD(v7) = a3 + 536657648;
  v6 = v7 >> 4;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        return;
      }

      valuePtr = 0;
      v8 = sub_10001B168();
      CFProperty = IORegistryEntryCreateCFProperty(v8, @"DriverPMAssertions", 0, 0);
      if (CFProperty)
      {
        v10 = CFProperty;
        CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
        sub_10004F260();
        v11 = sub_10001B168();
        v12 = IORegistryEntryCreateCFProperty(v11, @"DriverPMAssertionsDetailed", 0, 0);
        if (v12)
        {
          v13 = v12;
          sub_100052440(v10, v12);
          CFRelease(v13);
        }

        CFRelease(v10);
      }

      if (a3 == -536657648)
      {
        goto LABEL_24;
      }

      if (a3 != -536657600)
      {
        if (a3 == -536657616)
        {
          sub_100055A5C();
        }

        return;
      }
    }
  }

  else if (v6)
  {
    if (v6 != 2)
    {
      return;
    }

    sub_100055A5C();
    if (a3 != -536657600)
    {
      if (a3 != -536657648)
      {
        return;
      }

LABEL_24:
      sub_100057724();
      return;
    }
  }

  else
  {
    sub_100057724();
    if (a3 != -536657600)
    {
      return;
    }
  }

  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    qword_1000AD590 = IOPMSleepWakeCopyUUID();
  }

  else if (qword_1000AD590)
  {
    CFRelease(qword_1000AD590);
    qword_1000AD590 = 0;
  }

  sub_1000605B4();
}

_DWORD *sub_10001AE48(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = sub_10001AF00(v5, v7, (a2 + 36), (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_10001AF00(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  *a3 = dword_1000AB700;
  *a4 = 0;
  return 0;
}

CFTypeID sub_10001AF18(void *a1, void *a2)
{
  if (off_1000AB798)
  {
    CFRelease(off_1000AB798);
    off_1000AB798 = &stru_10009BE60;
  }

  if (off_1000AB7A0)
  {
    CFRelease(off_1000AB7A0);
    off_1000AB7A0 = &stru_10009BE60;
  }

  if (qword_1000AD488)
  {
    CFRelease(qword_1000AD488);
    qword_1000AD488 = 0;
  }

  if (qword_1000AD490)
  {
    CFRelease(qword_1000AD490);
    qword_1000AD490 = 0;
  }

  v4 = sub_10001B168();
  CFProperty = IORegistryEntryCreateCFProperty(v4, @"Wake Reason", kCFAllocatorDefault, 0);
  off_1000AB798 = CFProperty;
  TypeID = CFStringGetTypeID();
  if (!CFProperty || CFGetTypeID(CFProperty) != TypeID)
  {
    off_1000AB798 = &stru_10009BE60;
  }

  v7 = sub_10001B168();
  v8 = IORegistryEntryCreateCFProperty(v7, @"Wake Type", kCFAllocatorDefault, 0);
  off_1000AB7A0 = v8;
  v9 = CFStringGetTypeID();
  if (!v8 || CFGetTypeID(v8) != v9)
  {
    off_1000AB7A0 = &stru_10009BE60;
  }

  v10 = sub_10001B168();
  v11 = IORegistryEntryCreateCFProperty(v10, @"IOPMDriverWakeEvents", kCFAllocatorDefault, 0);
  qword_1000AD488 = v11;
  v12 = CFArrayGetTypeID();
  if (v11 && CFGetTypeID(v11) == v12 && (Count = CFArrayGetCount(v11), Count >= 1))
  {
    v14 = Count;
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v15);
      v17 = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v17)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, @"Reason");
          v19 = CFStringGetTypeID();
          if (Value)
          {
            if (CFGetTypeID(Value) == v19 && (CFStringHasPrefix(Value, @"WiFi") || CFStringHasPrefix(Value, @"Enet")))
            {
              break;
            }
          }
        }
      }

      if (v14 == ++v15)
      {
        goto LABEL_26;
      }
    }

    v20 = CFRetain(Value);
  }

  else
  {
LABEL_26:
    v20 = 0;
  }

  qword_1000AD490 = v20;
  v21 = off_1000AB7A0;
  if (v20)
  {
    v21 = v20;
  }

  qword_1000AD498 = v21;

  return sub_10001B1AC(a1, a2);
}

uint64_t sub_10001B168()
{
  result = dword_1000ACB60;
  if (!dword_1000ACB60)
  {
    result = IORegistryEntryFromPath(kIOMainPortDefault, "IOPower:/IOPowerConnection/IOPMrootDomain");
    dword_1000ACB60 = result;
  }

  return result;
}

CFTypeID sub_10001B1AC(void *a1, void *a2)
{
  v4 = off_1000AB798;
  TypeID = CFStringGetTypeID();
  if (!v4 || CFGetTypeID(v4) != TypeID)
  {
    off_1000AB798 = &stru_10009BE60;
  }

  v6 = off_1000AB7A0;
  result = CFStringGetTypeID();
  if (!v6 || (v8 = result, result = CFGetTypeID(v6), result != v8))
  {
    off_1000AB7A0 = &stru_10009BE60;
  }

  if (a1)
  {
    *a1 = off_1000AB798;
  }

  if (a2)
  {
    *a2 = off_1000AB7A0;
  }

  return result;
}

void sub_10001B258(uint64_t a1)
{
  v2 = qword_1000AB9B0;
  if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating wake end timestamp to %llu\n", &v3, 0xCu);
  }

  qword_1000AD0A0 = a1;
}

uint64_t sub_10001B300()
{
  if (dword_1000AB9CC == 1)
  {
    return 0;
  }

  if (!sub_100004870())
  {
    return 3758097095;
  }

  dword_1000AB9CC = 1;
  if (sub_100004870() == 1)
  {
    return 0;
  }

  result = 0;
  unk_1000AB9F4 = 1065353216;
  ++byte_1000AB9F2;
  return result;
}

void sub_10001B390(const char *a1, uint64_t a2, const char *a3, char a4, int a5)
{
  if (sub_10001B6D0(__s1, 200) && strncmp(__s1, byte_1000AD4AC, 0x32uLL))
  {
    snprintf(byte_1000AD4AC, 0x32uLL, "%s", __s1);
    dword_1000AD4A8 = 0;
  }

  __s1[0] = 0;
  if (!strncmp(a1, "success", 8uLL))
  {
    buffer[0] = 0;
    v25[0] = 512;
    sysctlbyname("kern.wakereason", buffer, v25, 0, 0);
    if (a5 == 2)
    {
      v11 = sub_10001B168();
      CFProperty = IORegistryEntryCreateCFProperty(v11, @"Wake Type", kCFAllocatorDefault, 0);
      TypeID = CFStringGetTypeID();
      if (CFProperty)
      {
        if (CFGetTypeID(CFProperty) == TypeID)
        {
          CFStringGetCString(CFProperty, buffer, 512, 0x8000100u);
        }

        CFRelease(CFProperty);
      }

      strcpy(__s1, "DarkWake to FullWake");
    }

    else if (a5 == 1)
    {
      ++dword_1000AD4A8;
      strcpy(__s1, "DarkWake");
    }

    else
    {
      strcpy(__s1, "Wake");
    }

    v14 = "C";
    if ((a4 & 1) == 0)
    {
      v14 = "<off> ";
    }

    v15 = "D";
    if ((a4 & 0x10) == 0)
    {
      v15 = "";
    }

    v16 = "N";
    if ((a4 & 8) == 0)
    {
      v16 = "";
    }

    v17 = "V";
    if ((a4 & 2) == 0)
    {
      v17 = "";
    }

    v18 = "A";
    if ((a4 & 4) == 0)
    {
      v18 = "";
    }

    v19 = "P";
    if ((a4 & 0x20) == 0)
    {
      v19 = "";
    }

    if ((a4 & 0x40) != 0)
    {
      v20 = "B";
    }

    else
    {
      v20 = "";
    }

    snprintf(v25, 0x32uLL, " [%s%s%s%s%s%s%s]", v14, v15, v16, v17, v18, v19, v20);
    strlen(__s1);
    __strncat_chk();
    v10 = buffer;
  }

  else
  {
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = "";
    }

    snprintf(__s1, 0xC8uLL, "Failure during wake: %s : %s", a3, v9);
    v10 = 0;
  }

  v21 = ": due to";
  if (!v10)
  {
    v21 = "";
    v10 = "";
  }

  snprintf(__s1, 0xC8uLL, "%s %s %s\n", __s1, v21, v10);
  v22 = qword_1000AB9B0;
  if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v24 = __s1;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s\n", buf, 0xCu);
  }
}

BOOL sub_10001B6D0(char *a1, int a2)
{
  v4 = IOPMSleepWakeCopyUUID();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFStringGetCString(v4, a1, a2, 0x8000100u) != 0;
  CFRelease(v5);
  return v6;
}

void sub_10001B738(char a1)
{
  dispatch_assert_queue_barrier(qword_1000ACCE0);
  if (qword_1000AB988)
  {
    *qword_1000AB988 = 0;
  }

  *&xmmword_1000ACF80 = CFAbsoluteTimeGetCurrent();
  BYTE8(xmmword_1000ACF80) = a1;

  sub_100009860(1);
}

unint64_t sub_10001B7B0(uint64_t a1, uint64_t a2)
{
  info = 0;
  mach_timebase_info(&info);
  return (a2 - a1) * info.numer / info.denom;
}

void sub_10001B7F8(unint64_t a1)
{
  snprintf(__str, 0x80uLL, "WakeTime: %2.3lf sec", a1 / 1000000.0 / 1000.0);
  v1 = qword_1000AB9B0;
  if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v3 = __str;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }
}

void sub_10001B8D0(int a1)
{
  valuePtr = a1;
  if (sub_10001B964())
  {
    v1 = SCDynamicStoreKeyCreate(0, @"%@%@", kSCDynamicStoreDomainState, @"/IOKit/SystemPowerCapabilities");
    if (v1)
    {
      v2 = v1;
      v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (v3)
      {
        v4 = v3;
        sub_10001B974(v2, v3);
        CFRelease(v4);
      }

      CFRelease(v2);
    }
  }
}

BOOL sub_10001B974(const __CFString *a1, const void *a2)
{
  result = 0;
  if (a1 && a2 && qword_1000AD470)
  {
    TypeID = CFStringGetTypeID();
    if (CFGetTypeID(a1) == TypeID)
    {
      Value = CFDictionaryGetValue(qword_1000AD470, a1);
      if (Value && CFEqual(Value, a2))
      {
        return 1;
      }

      else
      {
        CFDictionarySetValue(qword_1000AD470, a1, a2);
        return SCDynamicStoreSetValue(qword_1000AC9A8, a1, a2) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef sub_10001BA28(const __CFString *a1)
{
  v2 = sub_10001B168();

  return IORegistryEntryCreateCFProperty(v2, a1, kCFAllocatorDefault, 0);
}

uint64_t sub_10001BA70(const void *a1)
{
  result = CFArrayGetTypeID();
  if (!a1)
  {
    return result;
  }

  v3 = result;
  result = CFGetTypeID(a1);
  if (result != v3)
  {
    return result;
  }

  result = CFArrayGetCount(a1);
  if (result < 1)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v6 = -1;
  valuePtr = 0;
  v7 = 0x80000000;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
    result = CFDictionaryGetTypeID();
    if (ValueAtIndex)
    {
      v9 = result;
      result = CFGetTypeID(ValueAtIndex);
      if (result == v9)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"TransitionType");
        result = CFStringGetTypeID();
        if (Value)
        {
          v11 = result;
          result = CFGetTypeID(Value);
          if (result == v11)
          {
            result = CFEqual(Value, @"Sleep");
            if (result)
            {
              v12 = CFDictionaryGetValue(ValueAtIndex, @"ResponseType");
              result = CFStringGetTypeID();
              if (v12)
              {
                v13 = result;
                result = CFGetTypeID(v12);
                if (result == v13)
                {
                  if (CFEqual(v12, @"ResponseSlow") || (result = CFEqual(v12, @"ResponseTimedOut"), result))
                  {
                    result = CFEqual(v12, @"ResponseTimedOut");
                    if (result)
                    {
                      v14 = 30000;
                      valuePtr = 30000;
                    }

                    else
                    {
                      v15 = CFDictionaryGetValue(ValueAtIndex, @"TimeMS");
                      result = CFNumberGetTypeID();
                      if (!v15)
                      {
                        goto LABEL_18;
                      }

                      v16 = result;
                      result = CFGetTypeID(v15);
                      if (result != v16)
                      {
                        goto LABEL_18;
                      }

                      result = CFNumberGetValue(v15, kCFNumberIntType, &valuePtr);
                      if (!result)
                      {
                        goto LABEL_18;
                      }

                      v14 = valuePtr;
                    }

                    if (v14 > v7)
                    {
                      v6 = v5;
                      v7 = v14;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_18:
    ++v5;
  }

  while (v4 != v5);
  if (v6 != -1)
  {
    v17 = CFArrayGetValueAtIndex(a1, v6);
    v18 = CFDictionaryGetValue(v17, @"Name");
    TypeID = CFStringGetTypeID();
    if (v18)
    {
      if (CFGetTypeID(v18) == TypeID)
      {
        CFStringGetCString(v18, buffer, 128, 0x8000100u);
      }
    }

    return analytics_send_event_lazy();
  }

  return result;
}

void sub_10001BD40()
{
  v0 = qword_1000AC980;
  if (qword_1000AC980)
  {
    v1 = qword_1000AD2E8;
    if (os_log_type_enabled(qword_1000AD2E8, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Releasing a wake in progress reosurce hint", v2, 2u);
      v0 = qword_1000AC980;
    }

    [v0 updateState:0];
  }
}

void sub_10001BDC8(_xpc_connection_s *a1, xpc_object_t original)
{
  if (a1 && original)
  {
    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      v4 = reply;
      if (qword_1000ABA68)
      {
        xpc_dictionary_set_int64(reply, "returnCode", 0);
        v5 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v4, "wakeData", v5);
        if (v5)
        {
          xpc_release(v5);
        }
      }

      else
      {
        xpc_dictionary_set_int64(reply, "returnCode", -536870212);
      }

      xpc_connection_send_message(a1, v4);

      xpc_release(v4);
    }

    else if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
    {
      sub_10006AFCC();
    }
  }

  else if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
  {
    sub_10006AF4C();
  }
}

void sub_10001BEF4(uint64_t a1)
{
  sub_10000CE78(*(a1 + 40));
  v2 = dispatch_time(0, 1000000000 * *(a1 + 32));
  v3 = sub_100002A58();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D094;
  block[3] = &unk_100099AD0;
  v5 = *(a1 + 40);
  dispatch_after(v2, v3, block);
}

void sub_10001BFA0()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10001C01C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10001C078(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t sub_10001C098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v4 = *(a1 + 32);

  return xpc_connection_get_pid(v4);
}

void sub_10001C0C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10001C0F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_10001C140(uint64_t a1)
{
  v1 = *(a1 + 72);
  valuePtr = 0;
  if (*(v1 + 120))
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(*(a1 + 16), @"AsyncClientAssertionId");
      TypeID = CFNumberGetTypeID();
      if (Value && CFGetTypeID(Value) == TypeID)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
        xpc_dictionary_set_uint64(v4, "assertionTimeout", *(a1 + 52));
        v7 = qword_1000ABAB8;
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 52);
          v9 = *(*(a1 + 72) + 96);
          *buf = 67109632;
          v13 = v8;
          v14 = 1024;
          v15 = v9;
          v16 = 1024;
          v17 = valuePtr;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending assertion timeout message for id 0x%x to %d for 0x%x\n", buf, 0x14u);
        }

        xpc_connection_send_message(*(v1 + 120), v4);
        v10 = *(a1 + 72);
        if (*(v10 + 144))
        {
          *(v10 + 144) = 0;
        }
      }

      else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10006BE28(a1);
      }

      xpc_release(v4);
    }

    else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006BE9C(v1, a1);
    }
  }
}

void sub_10001C310()
{
  v0 = sub_100002A58();

  dispatch_async(v0, &stru_10009A678);
}

uint64_t sub_10001C350()
{
  v0 = sub_100008594();
  v1 = sub_10001C40C();
  v2 = (v0 & 3) != 0 || v1;
  if ((v2 & 1) == 0 && os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEBUG))
  {
    sub_10006AED8();
  }

  return v2 ^ 1u;
}

void sub_10001C3AC(id a1)
{
  v1 = dword_1000AB9D0;
  if (dword_1000AB9D0 == 1)
  {
    if ((sub_10004B8B4() & 1) == 0)
    {
      return;
    }
  }

  else if (!sub_10001C350())
  {
    return;
  }

  sub_10004B7BC(v1 != 1);
}

void sub_10001C420()
{
  if (byte_1000ABB10 == 1 && qword_1000ABB18 != 0)
  {
    dispatch_source_cancel(qword_1000ABB18);
  }
}

void sub_10001C49C(id a1)
{
  qword_1000AC9B8 = objc_alloc_init(PMSmartPowerNapService);

  _objc_release_x1();
}

void sub_10001C704(uint64_t a1)
{
  [*(a1 + 32) setAmbient_state:*(a1 + 40)];
  v2 = [*(a1 + 32) predictor];
  [v2 updateAmbientState:*(a1 + 40)];
}

id sub_10001C944(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = IOPSDrawingUnlimitedPower();

  return [v1 updatePluginState:v2];
}

void sub_10001CA80(uint64_t a1)
{
  v2 = +[BLSBacklight sharedBacklight];
  [v2 addObserver:*(a1 + 32)];

  v3 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "registered for backlight updates", v4, 2u);
  }
}

void sub_10001CCB8(uint64_t a1)
{
  v2 = [*(a1 + 32) predictor];
  [v2 updateBacklightState:*(a1 + 40)];
}

void sub_10001CDA4(uint64_t a1)
{
  v2 = [*(a1 + 32) predictor];
  [v2 updateAODEnabledStatus:*(a1 + 40)];
}

void sub_10001D00C(uint64_t a1)
{
  v2 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SPN: received registration from %@", &v14, 0xCu);
  }

  v4 = [[PMSmartPowerNapClient alloc] initWithConnection:*(a1 + 40)];
  if (v4)
  {
    v5 = [*(a1 + 48) clients];
    [v5 setObject:v4 forKeyedSubscript:*(a1 + 32)];

    v6 = [(PMSmartPowerNapClient *)v4 connection];

    v7 = qword_1000AB7D0;
    if (v6)
    {
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SPN: Initial update state for client %@ with pid %d to %d", &v14, 0x18u);
      }

      v12 = [(PMSmartPowerNapClient *)v4 connection];
      v13 = [v12 remoteObjectProxyWithErrorHandler:&stru_100099250];
      [v13 updateState:{objc_msgSend(*(a1 + 48), "current_state")}];
    }

    else if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_100062770((a1 + 32), v7);
    }
  }
}

void sub_10001D1FC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error updating state %@", &v4, 0xCu);
  }
}

void sub_10001D358(uint64_t a1)
{
  v2 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SPN: received unregister from %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) clients];
  [v4 removeObjectForKey:*(a1 + 32)];
}

void sub_10001D64C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error updating state %@", &v4, 0xCu);
  }
}

void sub_10001D79C(uint64_t a1)
{
  v2 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: set state to %d", v7, 8u);
  }

  v4 = *(a1 + 40);
  if (v4 != [*(a1 + 32) current_state])
  {
    if (*(a1 + 40))
    {
      if (*(a1 + 40) != 1)
      {
        return;
      }

      [*(a1 + 32) enterSmartPowerNap];
      v5 = 1;
    }

    else
    {
      [*(a1 + 32) exitSmartPowerNap];
      v5 = 0;
    }

    v6 = [*(a1 + 32) predictor];
    [v6 updateSmartPowerNapState:v5];
  }
}

uint64_t sub_10001D950(uint64_t a1)
{
  v2 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v6[0] = 67109120;
    v6[1] = [v3 current_state];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: syncState %u", v6, 8u);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) current_state]);
}

void sub_10001DBF0(uint64_t a1)
{
  v2 = [*(a1 + 32) predictor];
  [v2 updateReentryCoolOffPeriod:*(a1 + 40)];
}

void sub_10001DD58(uint64_t a1)
{
  v2 = [*(a1 + 32) predictor];
  [v2 updateReentryDelaySeconds:*(a1 + 40)];
}

void sub_10001DEC0(uint64_t a1)
{
  v2 = [*(a1 + 32) predictor];
  [v2 updateRequeryDelta:*(a1 + 40)];
}

void sub_10001E028(uint64_t a1)
{
  v2 = [*(a1 + 32) predictor];
  [v2 updateMotionAlarmThreshold:*(a1 + 40)];
}

void sub_10001E190(uint64_t a1)
{
  v2 = [*(a1 + 32) predictor];
  [v2 updateMotionAlarmStartThreshold:*(a1 + 40)];
}

void sub_10001E41C(id a1)
{
  qword_1000AC9C8 = objc_alloc_init(PMSmartPowerNapPredictor);

  _objc_release_x1();
}

id sub_10001E974()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000AC9F0;
  v7 = qword_1000AC9F0;
  if (!qword_1000AC9F0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100025B98;
    v3[3] = &unk_1000994A8;
    v3[4] = &v4;
    sub_100025B98(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10001EA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001EA5C(uint64_t a1)
{
  v2 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Received first unlock notification. Initializing predictor", buf, 2u);
  }

  v3 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 2000000000);
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EB60;
  block[3] = &unk_100099210;
  v6 = *(a1 + 32);
  dispatch_after(v3, v4, block);
}

void sub_10001EB60(uint64_t a1)
{
  sub_10001E974();
  if (objc_opt_class())
  {
    v2 = objc_alloc_init(sub_10001E974());
    [*(a1 + 32) setInactivity_predictor:v2];

    v3 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v9 = 134217984;
      v10 = [v4 lock_state];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Initialized predictor. Evaluate SPN %llu", &v9, 0xCu);
    }

    [*(a1 + 32) evaluateSmartPowerNap:{objc_msgSend(*(a1 + 32), "lock_state") == 0}];
    if (_os_feature_enabled_impl())
    {
      v6 = [PMSmartPowerNapLocationMonitor alloc];
      v7 = [*(a1 + 32) queue];
      v8 = [(PMSmartPowerNapLocationMonitor *)v6 initWithQueue:v7];
      [*(a1 + 32) setLocation_monitor:v8];
    }
  }
}

void sub_10001ECCC(uint64_t a1)
{
  v2 = +[BLSBacklight sharedBacklight];
  [*(a1 + 32) setIs_aod_enabled:{objc_msgSend(v2, "isAlwaysOnEnabled")}];
}

void sub_10001F0CC(uint64_t a1)
{
  if ([*(a1 + 32) in_smartpowernap])
  {
    v2 = *(a1 + 32);

    [v2 exitSmartPowerNapWithReason:@"PredictedEndOfSession"];
  }

  else
  {
    v3 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Not in SmartPowerNap at end of predicted inactivity", v4, 2u);
    }
  }
}

id sub_10001F17C(uint64_t a1)
{
  result = [*(a1 + 32) in_smartpowernap];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 enterSmartPowerNap];
  }

  return result;
}

void sub_10002058C(uint64_t a1)
{
  [*(a1 + 32) setLast_requery_delta:10];
  if (([*(a1 + 32) in_smartpowernap] & 1) == 0)
  {
    if ([*(a1 + 32) lock_state] == 1 && (objc_msgSend(*(a1 + 32), "backlight_state") & 1) == 0 && objc_msgSend(*(a1 + 32), "isSleepSuppressionSupported"))
    {
      v2 = qword_1000AB7D0;
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: evaluating model", buf, 2u);
      }

      [*(a1 + 32) queryModelAndEngage];
    }

    else
    {
      v3 = qword_1000AB7D0;
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: conditions don't match to evaluate model", v4, 2u);
      }
    }
  }
}

void sub_100020DE0(uint64_t a1)
{
  if ([*(a1 + 32) in_smartpowernap])
  {
    v2 = *(a1 + 32);

    [v2 exitSmartPowerNapWithReason:@"PredictedEndOfSession"];
  }

  else
  {
    v3 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Not in SmartPowerNap at end of predicted inactivity", v4, 2u);
    }
  }
}

void sub_100020FAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_100062ACC();
    }
  }

  else
  {
    v7 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000210AC;
    block[3] = &unk_100099358;
    block[4] = *(a1 + 32);
    v9 = v5;
    v10 = *(a1 + 40);
    dispatch_async(v7, block);
  }
}

id sub_10002133C(uint64_t a1)
{
  result = [*(a1 + 32) in_smartpowernap];
  if (result)
  {
    result = [*(a1 + 32) motion_alarm_set];
    if ((result & 1) == 0)
    {
      v3 = qword_1000AB7D0;
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering motion alarm", v4, 2u);
      }

      return [*(a1 + 32) registerMotionAlarm];
    }
  }

  return result;
}

void sub_10002185C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_100062C2C();
    }
  }

  else
  {
    v7 = [v5 confidenceLevel];
    v8 = qword_1000AB7D0;
    v9 = os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT);
    if (v7 == 2)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: re-entering SmartPowerNap after user interruption", buf, 2u);
      }

      [*(a1 + 32) enterSmartPowerNap];
    }

    else if (v9)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: sleep signals are not met for re-entry", v10, 2u);
    }
  }
}

id sub_100021C88(uint64_t a1)
{
  result = [*(a1 + 32) lock_state];
  if (result)
  {
    result = [*(a1 + 32) backlight_state];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 32) isSleepSuppressionSupported];
      if (result)
      {
        v3 = *(a1 + 32);

        return [v3 queryModelAndEngage];
      }
    }
  }

  return result;
}

void sub_100022544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10002256C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000ACA10;
  v7 = qword_1000ACA10;
  if (!qword_1000ACA10)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100025D78;
    v3[3] = &unk_1000994A8;
    v3[4] = &v4;
    sub_100025D78(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100022634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002264C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000ACA20;
  v7 = qword_1000ACA20;
  if (!qword_1000ACA20)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100025F40;
    v3[3] = &unk_1000994A8;
    v3[4] = &v4;
    sub_100025F40(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100022714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002272C(id a1, BPSCompletion *a2)
{
  if ([(BPSCompletion *)a2 state])
  {
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_100062CD8();
    }
  }
}

void sub_10002277C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 40));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MobileTimer alarm fired!", buf, 2u);
    }

    v6 = objc_loadWeakRetained(&to);
    v7 = [v6 in_smartpowernap];

    if (v7)
    {
      [*(a1 + 32) exitSmartPowerNapWithReason:@"MobileTimerFired"];
    }

    else
    {
      v8 = qword_1000AB7D0;
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "smart power nap not engaging when alarm fired", v9, 2u);
      }
    }
  }

  objc_destroyWeak(&to);
}

void sub_10002307C(uint64_t a1)
{
  if (([*(a1 + 32) in_smartpowernap] & 1) == 0 && (objc_msgSend(*(a1 + 32), "session_logged") & 1) == 0)
  {
    v2 = [*(a1 + 32) current_interruption];
    v3 = [v2 end];

    if (!v3)
    {
      v4 = qword_1000AB7D0;
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Metrics: SmartPowerNap: logging a breaking interruption", v7, 2u);
      }

      v5 = *(a1 + 32);
      v6 = [v5 session_end_reason];
      [v5 logEndOfSessionWithReason:v6];

      [*(a1 + 32) logTransientInterruptions];
      [*(a1 + 32) setSession_logged:1];
      [*(a1 + 32) setSession_end_reason:0];
    }
  }
}

void sub_100024C60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100024C7C(uint64_t a1, void *a2)
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

void sub_1000258B8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    reply = xpc_dictionary_create_reply(v4);
    if (reply)
    {
      if (sub_100011DF8(v3, @"com.apple.powerd.smartpowernap.tester", 1))
      {
        uint64 = xpc_dictionary_get_uint64(v5, "setSPNRequeryDelta");
        if (uint64 - 0x100000000 > 0xFFFFFFFF00000000)
        {
          dword_1000AAF80 = uint64;
          v9 = qword_1000AB7D0;
          if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
          {
            v10[0] = 67109120;
            v10[1] = dword_1000AAF80;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated Smart Power Nap re-query delta to %u\n", v10, 8u);
          }

          v8 = 0;
        }

        else
        {
          v8 = -536870206;
          if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
          {
            sub_100062FD4();
          }
        }
      }

      else
      {
        v8 = -536870207;
        if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
        {
          sub_100062F98();
        }
      }

      xpc_dictionary_set_uint64(reply, "returnCode", v8);
      xpc_connection_send_message(v3, reply);
    }

    else if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_100063044();
    }
  }

  else if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
  {
    sub_100063080();
  }
}

void sub_100025AC0(id a1)
{
  if (!dlopen_preflight("/System/Library/PrivateFrameworks/OSIntelligence.framework/OSIntelligence"))
  {
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_1000630BC();
    }

    byte_1000AC9E0 = 1;
  }

  if (!dlopen_preflight("/System/Library/PrivateFrameworks/BiomeStreams.framework/BiomeStreams"))
  {
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_1000630F8();
    }

    byte_1000AC9E0 = 1;
  }

  if (!dlopen_preflight("/System/Library/PrivateFrameworks/BiomeLibrary.framework/BiomeLibrary"))
  {
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
    {
      sub_100063134();
    }

    byte_1000AC9E0 = 1;
  }
}

Class sub_100025B98(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000AC9F8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100025CDC;
    v4[4] = &unk_1000994E0;
    v4[5] = v4;
    v5 = off_1000994C8;
    v6 = 0;
    qword_1000AC9F8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000AC9F8)
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

  qword_1000AC9F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100025CDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000AC9F8 = result;
  return result;
}

void sub_100025D78(uint64_t a1)
{
  sub_100025DD0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMStreams");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000ACA10 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100063198();
    sub_100025DD0();
  }
}

void sub_100025DD0()
{
  v1[0] = 0;
  if (!qword_1000ACA18)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100025ECC;
    v1[4] = &unk_1000994E0;
    v1[5] = v1;
    v2 = off_100099520;
    v3 = 0;
    qword_1000ACA18 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000ACA18)
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

uint64_t sub_100025ECC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000ACA18 = result;
  return result;
}

void sub_100025F40(uint64_t a1)
{
  sub_100025DD0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMBiomeScheduler");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000ACA20 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000631C0();
    sub_100025F98();
  }
}

void sub_100025FF4(id a1)
{
  qword_1000ACA30 = objc_alloc_init(PMLowPowerModeService);

  _objc_release_x1();
}

void sub_100026278(uint64_t a1)
{
  v2 = qword_1000ACA28;
  if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LPM: Deferred Init timer fired\n", buf, 2u);
  }

  if (notify_register_check([@"com.apple.system.lowpowermode" UTF8String], &dword_1000ACA40) && os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
  {
    sub_1000631FC();
  }

  *buf = 0;
  if (notify_get_state(dword_1000ACA40, buf) && os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
  {
    sub_100063278();
  }

  [*(a1 + 32) setEnabled:*buf != 0];
  if (notify_register_check([@"com.apple.system.lowpowermode.auto_disabled" UTF8String], &dword_1000ACA44) && os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
  {
    sub_1000632F4();
  }

  v3 = [@"com.apple.powerd.lowpowermode.prefs" UTF8String];
  v4 = [*(a1 + 32) mainQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100026870;
  handler[3] = &unk_1000991E8;
  v28 = *(a1 + 32);
  LODWORD(v3) = notify_register_dispatch(v3, &dword_1000ACA48, v4, handler);

  if (v3 && os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
  {
    sub_100063370();
  }

  if (objc_opt_class())
  {
    v5 = [kLostModeChangedRestrictedNotification UTF8String];
    v6 = [*(a1 + 32) mainQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100026878;
    v25[3] = &unk_1000991E8;
    v26 = *(a1 + 32);
    LODWORD(v5) = notify_register_dispatch(v5, &dword_1000ACA4C, v6, v25);

    if (v5 && os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
    {
      sub_1000633EC();
    }
  }

  else
  {
    v7 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LPM: FMD is not available. Skipping lostModeChangedNotification registration\n", v30, 2u);
    }
  }

  [*(a1 + 32) setPluggedIn:IOPSDrawingUnlimitedPower()];
  v8 = qword_1000ACA28;
  if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 pluggedIn];
    *v30 = 67109120;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LPM: Pluggedin=%d at init\n", v30, 8u);
  }

  v24 = 0;
  if (IOPSGetPercentRemaining())
  {
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
    {
      sub_10006346C();
    }
  }

  else
  {
    [*(a1 + 32) setBatteryPercentage:v24];
    v12 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = v12;
      [v13 batteryPercentage];
      *v30 = 67109120;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "LPM: Battery Percentage=%d%% at init\n", v30, 8u);
    }
  }

  v16 = [*(a1 + 32) mainQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100026880;
  v22[3] = &unk_1000991E8;
  v23 = *(a1 + 32);
  v17 = notify_register_dispatch("com.apple.system.powersources.percent", &dword_1000ACA50, v16, v22);

  if (v17 && os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
  {
    sub_1000634DC();
  }

  v18 = [*(a1 + 32) mainQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002688C;
  v20[3] = &unk_1000991E8;
  v21 = *(a1 + 32);
  v19 = notify_register_dispatch("com.apple.system.powersources.source", &dword_1000ACA54, v18, v20);

  if (v19 && os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
  {
    sub_100063560();
  }

  [*(a1 + 32) readPreferences];
  [*(a1 + 32) autoEnableCheck];
  [*(a1 + 32) lostModeCheck];
  [*(a1 + 32) initAnalyticsTimers];
  [*(a1 + 32) resume];
  dispatch_source_cancel(*(a1 + 40));
}

void sub_1000269BC(uint64_t a1)
{
  v2 = qword_1000ACA28;
  if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LPM: Reporting daily analytics\n", v9, 2u);
  }

  v3 = *(a1 + 32);
  if (v3[8])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 readDateFromDefaults];
    v6 = +[NSDate date];
    if (v5 && [v5 compare:v6] == -1)
    {
      [v6 timeIntervalSinceDate:v5];
      v4 = v7 >> 7 < 0x2A3;
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = [NSNumber numberWithBool:v4];
  [PMPowerModeAnalytics sendAnalyticsDaily:v8 forStream:@"com.apple.powerd.lowpowermode.daily"];
}

void sub_100028588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000285A8(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (*(*(a1 + 32) + 8) == (v1 == 1))
  {
    v2 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      v3 = @"OFF";
      if (v1 == 1)
      {
        v3 = @"ON";
      }

      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LPM: setPowerMode: state is already set to %@", &v10, 0xCu);
    }
  }

  else
  {
    v5 = +[NSDate date];
    v6 = [*(a1 + 32) toggleState:v1 == 1 withDate:v5 withBatteryLevel:*(a1 + 40) fromSource:*(a1 + 48) withParams:*(*(a1 + 32) + 32)];
    v7 = qword_1000ACA28;
    if (v6)
    {
      if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
      {
        sub_100063928();
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    else if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      v10 = 134218242;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LPM: Set Power Mode: %ld, Source: %{public}@", &v10, 0x16u);
    }
  }
}

void sub_10002AA98(void *a1, io_iterator_t a2)
{
  v5 = a1;
  v3 = IOIteratorNext(a2);
  if (v3)
  {
    v4 = v3;
    do
    {
      [v5 handleServiceAdded:v4];
      IOObjectRelease(v4);
      v4 = IOIteratorNext(a2);
    }

    while (v4);
  }
}

uint64_t sub_10002AEAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002AEC4()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.powerd", "batteryTrustedData");
  v2 = qword_1000ACA68;
  qword_1000ACA68 = v1;

  v3 = qword_1000ACA68;
  if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Battery Trusted Data init", v7, 2u);
  }

  v4 = [[BatteryTrustedData alloc] initWithIdentifer:@"0"];
  v5 = qword_1000ACA70;
  qword_1000ACA70 = v4;

  if (qword_1000ACA70)
  {
    v6 = [qword_1000ACA70 queue];
    dispatch_async(v6, &stru_1000995D0);
  }

  else if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
  {
    sub_100064054();
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10002AFDC()
{
  if (!qword_1000ACA78)
  {
    qword_1000ACA78 = _sl_dlopen();
  }

  return qword_1000ACA78;
}

uint64_t sub_10002B0AC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_1000ACA80;
  v6 = qword_1000ACA80;
  if (!qword_1000ACA80)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10002B1E8;
    v2[3] = &unk_1000994A8;
    v2[4] = &v3;
    sub_10002B1E8(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10002B15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002B174(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000ACA78 = result;
  return result;
}

void *sub_10002B1E8(uint64_t a1)
{
  v2 = sub_10002AFDC();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "reauthenticateBattery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000ACA80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10002B5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002B730(id a1, BPSCompletion *a2)
{
  if ([(BPSCompletion *)a2 state])
  {
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10006409C();
    }
  }
}

void sub_10002B780(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
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

void sub_10002BAA0(id a1, BPSCompletion *a2)
{
  if ([(BPSCompletion *)a2 state])
  {
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10006409C();
    }
  }
}

void sub_10002BAF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
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

      v19 = +[PMCoreSmartPowerNapPredictor sharedInstance];
      [v19 handleRemoteDeviceIsNear];
    }

    goto LABEL_10;
  }

LABEL_11:
}

void sub_10002BE58(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != [*(a1 + 32) syncing])
  {
    v3 = +[BMStreams semanticLocationStream];
    v4 = *(a1 + 32);
    v5 = [v3 publisher];
    v6 = [v4 addCSPNFiltersToBMDSL:v5];

    v7 = *(a1 + 40);
    if (v7)
    {
      if (v7 == 2)
      {
        v12 = qword_1000AB9A8;
        if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
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

        v8 = qword_1000AB9A8;
        if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
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
      v14 = qword_1000AB9A8;
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
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
      v17 = qword_1000AB9A8;
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
      {
        sub_1000640D0(v13, v17);
      }

      goto LABEL_19;
    }

LABEL_20:
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_100064148();
    }

    goto LABEL_22;
  }
}

void sub_10002C344(id a1)
{
  if (!dlopen_preflight("/System/Library/PrivateFrameworks/ContextSync.framework/ContextSync"))
  {
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10006417C();
    }

    byte_1000ACA88 = 1;
  }
}

Class sub_10002C3A4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000ACAA0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10002C4E8;
    v4[4] = &unk_1000994E0;
    v4[5] = v4;
    v5 = off_1000996B8;
    v6 = 0;
    qword_1000ACAA0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000ACAA0)
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

  qword_1000ACA98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10002C4E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000ACAA0 = result;
  return result;
}

uint64_t sub_10002C55C(const __CFDictionary *a1, int a2)
{
  value = 0;
  valuePtr = -1;
  result = CFDictionaryGetValueIfPresent(a1, @"Format Version", &value);
  if (result)
  {
    v4 = value;
    TypeID = CFNumberGetTypeID();
    if (v4 && CFGetTypeID(v4) == TypeID)
    {
      CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
      v6 = valuePtr;
    }

    else
    {
      v6 = -1;
    }

    return v6 >= a2;
  }

  return result;
}

BOOL sub_10002C5F0(const __CFDictionary *a1)
{
  if (!a1)
  {
    result = os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100064240();
    return 0;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(a1, @"Serial", &value))
  {
    result = os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10006420C();
    return 0;
  }

  v1 = sub_100042098();
  if (CFStringCompare(v1, value, 0))
  {
    result = os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1000641D8();
    return 0;
  }

  return 1;
}

CFMutableDictionaryRef sub_10002C6C4()
{
  valuePtr = 3;
  v0 = _CFPreferencesCopyMultipleWithContainer();
  if (v0)
  {
    v1 = v0;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v0);
    CFRelease(v1);
  }

  else
  {
    MutableCopy = 0;
  }

  if (!sub_10002C5F0(MutableCopy) || (sub_10002C55C(MutableCopy, 3) & 1) == 0)
  {
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    v3 = CFPreferencesCopyMultiple(0, @"com.apple.batterydata.cyclecount", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
    if (v3)
    {
      v4 = v3;
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v3);
      CFRelease(v4);
      sub_10002CC0C(MutableCopy, @"com.apple.batterydata.cyclecount");
      Count = CFDictionaryGetCount(MutableCopy);
      if (Count)
      {
        v6 = Count;
        v7 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
        if (v7)
        {
          v8 = v7;
          CFDictionaryGetKeysAndValues(MutableCopy, v7, 0);
          Mutable = CFArrayCreateMutable(0, v6, &kCFTypeArrayCallBacks);
          if (v6 >= 1)
          {
            v10 = v8;
            do
            {
              v11 = *v10++;
              CFArrayAppendValue(Mutable, v11);
              --v6;
            }

            while (v6);
          }

          free(v8);
          if (Mutable)
          {
            CFPreferencesSetMultiple(0, Mutable, @"com.apple.batterydata.cyclecount", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
            CFRelease(Mutable);
          }
        }
      }
    }

    if (!sub_10002C5F0(MutableCopy) || (sub_10002C55C(MutableCopy, 3) & 1) == 0)
    {
      v13 = CFDictionaryGetCount(MutableCopy);
      if (v13)
      {
        v14 = v13;
        v15 = malloc_type_malloc(8 * v13, 0x6004044C4A2DFuLL);
        if (v15)
        {
          v16 = v15;
          CFDictionaryGetKeysAndValues(MutableCopy, v15, 0);
          v17 = CFArrayCreateMutable(0, v14, &kCFTypeArrayCallBacks);
          if (v14 >= 1)
          {
            v18 = v16;
            do
            {
              v19 = *v18++;
              CFArrayAppendValue(v17, v19);
              --v14;
            }

            while (v14);
          }

          free(v16);
          if (v17)
          {
            if (CFArrayGetCount(v17))
            {
              v20 = 0;
              do
              {
                CFArrayGetValueAtIndex(v17, v20);
                _CFPreferencesSetValueWithContainer();
                ++v20;
              }

              while (v20 < CFArrayGetCount(v17));
            }

            CFRelease(v17);
          }
        }
      }

      v12 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v21 = sub_100042098();
      CFDictionarySetValue(v12, @"Serial", v21);
      v22 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v12, @"Format Version", v22);
      CFRelease(v22);
      if (sub_10002C5F0(MutableCopy) && sub_10002C55C(MutableCopy, 2))
      {
        if (MutableCopy)
        {
          if (v12)
          {
            value = 0;
            CFDictionaryGetValueIfPresent(MutableCopy, @"Index", &value);
            v23 = value;
            TypeID = CFArrayGetTypeID();
            if (v23)
            {
              if (CFGetTypeID(v23) == TypeID)
              {
                theArray = 0;
                CFDictionaryGetValueIfPresent(MutableCopy, @"Cycles", &theArray);
                v25 = theArray;
                v26 = CFArrayGetTypeID();
                if (v25)
                {
                  if (CFGetTypeID(v25) == v26)
                  {
                    v27 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                    if (v27)
                    {
                      v28 = v27;
                      if (CFArrayGetCount(theArray))
                      {
                        v29 = 0;
                        do
                        {
                          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v29);
                          v31 = CFArrayGetTypeID();
                          if (ValueAtIndex)
                          {
                            if (CFGetTypeID(ValueAtIndex) == v31)
                            {
                              v32 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                              if (v32)
                              {
                                v33 = v32;
                                if (CFArrayGetCount(ValueAtIndex))
                                {
                                  v34 = 0;
                                  do
                                  {
                                    v35 = CFArrayGetValueAtIndex(value, v34);
                                    v36 = CFArrayGetValueAtIndex(ValueAtIndex, v34);
                                    CFDictionarySetValue(v33, v35, v36);
                                    ++v34;
                                  }

                                  while (v34 < CFArrayGetCount(ValueAtIndex));
                                }

                                CFArrayAppendValue(v28, v33);
                                CFRelease(v33);
                              }
                            }
                          }

                          ++v29;
                        }

                        while (v29 < CFArrayGetCount(theArray));
                      }

                      CFDictionarySetValue(v12, @"Cycles", v28);
                      CFRelease(v28);
                      sub_10002CC0C(v12, @"com.apple.batterydata.cyclecount");
                      goto LABEL_51;
                    }
                  }
                }
              }
            }
          }
        }

        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
        {
          sub_100064274();
          if (!MutableCopy)
          {
            return v12;
          }

          goto LABEL_51;
        }
      }

      if (!MutableCopy)
      {
        return v12;
      }

LABEL_51:
      CFRelease(MutableCopy);
      return v12;
    }
  }

  return MutableCopy;
}

void sub_10002CC0C(const __CFDictionary *a1, void *context)
{
  CFDictionaryApplyFunction(a1, sub_10002F248, context);
  if (_CFPreferencesSynchronizeWithContainer())
  {
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
    {
      sub_1000642A8();
    }
  }

  else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_100064320();
  }
}

__CFDictionary *sub_10002CCCC(const __CFDictionary *a1)
{
  v25 = 0;
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    value = 0;
    v3 = @"CycleCount";
    v4 = off_1000996F8;
    do
    {
      if (CFDictionaryGetValueIfPresent(a1, v3, &value))
      {
        CFDictionarySetValue(Mutable, *v4, value);
      }

      else
      {
        v5 = qword_1000AB980;
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
        {
          v7 = *v4;
          *buf = 138412290;
          v29 = v7;
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to read data for key %@\n", buf, 0xCu);
        }
      }

      v6 = v4[1];
      ++v4;
      v3 = v6;
    }

    while (v6);
    if (CFDictionaryGetValueIfPresent(a1, @"BatteryData", &theDict) && (v8 = theDict, TypeID = CFDictionaryGetTypeID(), v8) && CFGetTypeID(v8) == TypeID)
    {
      v10 = theDict;
      value = 0;
      v11 = @"Flags";
      v12 = off_100099718;
      do
      {
        if (CFDictionaryGetValueIfPresent(v10, v11, &value))
        {
          CFDictionarySetValue(Mutable, *v12, value);
        }

        else
        {
          v13 = qword_1000AB980;
          if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
          {
            v15 = *v12;
            *buf = 138412290;
            v29 = v15;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to read data for key %@\n", buf, 0xCu);
          }
        }

        v14 = v12[1];
        ++v12;
        v11 = v14;
      }

      while (v14);
    }

    else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_100064390();
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"LifetimeData", &v25) && (v16 = v25, v17 = CFDictionaryGetTypeID(), v16) && CFGetTypeID(v16) == v17)
    {
      v18 = v25;
      value = 0;
      v19 = @"MaximumTemperature";
      v20 = off_1000997B8;
      do
      {
        if (CFDictionaryGetValueIfPresent(v18, v19, &value))
        {
          CFDictionarySetValue(Mutable, *v20, value);
        }

        else
        {
          v21 = qword_1000AB980;
          if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
          {
            v23 = *v20;
            *buf = 138412290;
            v29 = v23;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to read data for key %@\n", buf, 0xCu);
          }
        }

        v22 = v20[1];
        ++v20;
        v19 = v22;
      }

      while (v22);
    }

    else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_1000643C4();
    }
  }

  else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_1000643F8();
  }

  return Mutable;
}

void sub_10002D020()
{
  value = 0;
  valuePtr = 1800;
  qword_1000ACAA8 = dispatch_queue_create("com.apple.powerManagement.batteryDataQ", 0);
  dispatch_sync(qword_1000ACAA8, &stru_100099850);
  v0 = IOPMCopySystemPowerSettings();
  if (v0)
  {
    v1 = v0;
    v2 = 108000;
    if (CFDictionaryGetValueIfPresent(v0, @"HeatMapInterval", &value))
    {
      v3 = value;
      TypeID = CFNumberGetTypeID();
      if (v3)
      {
        if (CFGetTypeID(v3) == TypeID)
        {
          CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
          v2 = 60 * valuePtr;
        }
      }
    }

    valuePtr = v2;
    CFRelease(v1);
  }

  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_1000ACAA8);
  qword_1000ACAB0 = v5;
  v6 = dispatch_walltime(0, 0);
  dispatch_source_set_timer(v5, v6, 1000000000 * valuePtr, 0);
  dispatch_source_set_event_handler(qword_1000ACAB0, &stru_100099890);
  dispatch_resume(qword_1000ACAB0);
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
  {
    sub_10006442C();
  }
}

void sub_10002D184(id a1)
{
  v1 = 1;
  if (sub_10005EEE4(1112036428, &v1, 1u))
  {
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_100064460();
    }
  }

  else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
  {
    sub_1000644D4();
  }
}

void sub_10002D218()
{
  v48 = 25;
  value = 0;
  values = 0;
  v0 = sub_100042098();
  TypeID = CFStringGetTypeID();
  if (v0 && CFGetTypeID(v0) == TypeID)
  {
    v44 = sub_10002F26C(dword_1000AB0B8);
    v2 = dword_1000AB0B8;
    valuePtr = 4;
    v3 = sub_10002ED9C(dword_1000AB0B8);
    if (!sub_10002C5F0(v3) || (sub_10002C55C(v3, 4) & 1) == 0)
    {
      if (!sub_10002C55C(v3, 3) || !sub_10002C5F0(v3))
      {
        v4 = sub_10002F26C(dword_1000AB0B8);
        Count = CFDictionaryGetCount(v3);
        if (Count)
        {
          v6 = Count;
          v7 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
          if (v7)
          {
            v8 = v7;
            CFDictionaryGetKeysAndValues(v3, v7, 0);
            Mutable = CFArrayCreateMutable(0, v6, &kCFTypeArrayCallBacks);
            if (v6 >= 1)
            {
              v10 = v8;
              do
              {
                v11 = *v10++;
                CFArrayAppendValue(Mutable, v11);
                --v6;
              }

              while (v6);
            }

            free(v8);
            if (Mutable)
            {
              CFPreferencesSetMultiple(0, Mutable, v4, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
              CFRelease(Mutable);
            }
          }
        }

        if (v3)
        {
          CFRelease(v3);
        }

        v12 = qword_1000AB980;
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v53 = v2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating a new heat map for state %d\n", buf, 8u);
        }

        v3 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      v13 = sub_100042098();
      CFDictionarySetValue(v3, @"Serial", v13);
      v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v14)
      {
        v15 = v14;
        CFDictionarySetValue(v3, @"Format Version", v14);
        CFRelease(v15);
      }

      v16 = sub_100041B58();
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
      {
        sub_100064554();
      }

      *buf = (v16 >> 1) & 1;
      v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
      if (v17)
      {
        v18 = v17;
        CFDictionarySetValue(v3, @"HeatMapType", v17);
        CFRelease(v18);
      }
    }

    __memset_chk();
    if (off_1000AB050[0])
    {
      v19 = 0;
      v20 = off_1000AB050;
      while (1)
      {
        if (v19 > 9)
        {
          if (v19 > 0xF)
          {
            if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
            {
              sub_1000645C4();
            }

            return;
          }

          v21 = v19 + 1112036407;
        }

        else
        {
          v21 = v19 | 0x42485430;
        }

        v22 = sub_10005F648(v21, buf);
        if (!v22)
        {
          break;
        }

        v23 = v22;
        v24 = qword_1000AB980;
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
        {
          valuePtr = 67109376;
          *v50 = v19;
          *&v50[4] = 1024;
          *&v50[6] = v23;
          v25 = v24;
          v26 = "Failed to read Heatmap at index %d.(rc:0x%x)\n";
LABEL_38:
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, &valuePtr, 0xEu);
        }

LABEL_66:
        v20 = &off_1000AB050[++v19];
        if (!*v20)
        {
          goto LABEL_69;
        }
      }

      if (v48)
      {
        v27 = 0;
        while (!buf[v27])
        {
          if (v48 == ++v27)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        LODWORD(v27) = 0;
      }

      if (v27 == v48)
      {
LABEL_46:
        v28 = qword_1000AB980;
        if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
        {
          valuePtr = 67109120;
          *v50 = v19;
          _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Avoid saving data from index %d", &valuePtr, 8u);
        }

        goto LABEL_66;
      }

      v29 = *v20;
      value = 0;
      values = v29;
      if (CFDictionaryGetValueIfPresent(v3, v29, &value))
      {
        value = CFArrayCreateMutableCopy(0, 25, value);
      }

      else
      {
        value = CFArrayCreateMutable(0, 25, &kCFTypeArrayCallBacks);
        valuePtr = 0;
        v30 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        for (i = 0; i != 25; ++i)
        {
          CFArraySetValueAtIndex(value, i, v30);
        }

        CFRelease(v30);
      }

      for (j = 0; j != 25; ++j)
      {
        v45 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(value, j);
        v34 = CFNumberGetTypeID();
        if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v34)
        {
          CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &v45);
        }

        else
        {
          v35 = qword_1000AB980;
          if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
          {
            valuePtr = 67109120;
            *v50 = j;
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unexpected data type in the row at index %d\n", &valuePtr, 8u);
          }
        }

        v45 += buf[j];
        v36 = CFNumberCreate(0, kCFNumberIntType, &v45);
        CFArraySetValueAtIndex(value, j, v36);
        CFRelease(v36);
      }

      v37 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
      if (v37)
      {
        v38 = v37;
        CFPreferencesSetMultiple(0, v37, v44, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
        CFRelease(v38);
      }

      CFDictionarySetValue(v3, values, value);
      CFRelease(value);
      v39 = qword_1000AB980;
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
      {
        valuePtr = 138412546;
        *v50 = v44;
        *&v50[8] = 2112;
        v51 = values;
        _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Updated values for path %@. key:%@\n", &valuePtr, 0x16u);
      }

      v40 = v48;
      __memset_chk();
      v41 = sub_10005EEE4(v21, buf, v40);
      if (!v41)
      {
        goto LABEL_66;
      }

      v42 = v41;
      v43 = qword_1000AB980;
      if (!os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      valuePtr = 67109376;
      *v50 = v19;
      *&v50[4] = 1024;
      *&v50[6] = v42;
      v25 = v43;
      v26 = "Failed to clear Heatmap at index %d.(rc:0x%x\n)";
      goto LABEL_38;
    }

LABEL_69:
    CFPreferencesSetMultiple(v3, 0, v44, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
    if (CFPreferencesSynchronize(v44, kCFPreferencesAnyUser, kCFPreferencesCurrentHost))
    {
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
      {
        sub_1000645F8();
        if (!v3)
        {
          return;
        }

LABEL_75:
        CFRelease(v3);
        return;
      }
    }

    else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_100064668();
      if (!v3)
      {
        return;
      }

      goto LABEL_75;
    }

    if (!v3)
    {
      return;
    }

    goto LABEL_75;
  }

  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_1000646D8();
  }
}

void sub_10002D9FC(CFDictionaryRef theDict)
{
  if (qword_1000ACAA8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10002DABC;
    block[3] = &unk_1000998B0;
    block[4] = CFDictionaryCreateCopy(0, theDict);
    dispatch_async(qword_1000ACAA8, block);
  }

  else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
  {
    sub_10006470C();
  }
}

void sub_10002DABC(uint64_t a1)
{
  if (dword_1000AB0B8 == 3)
  {
    dword_1000AB0B8 = sub_10002E994(*(a1 + 32));
  }

  v2 = sub_100042098();
  TypeID = CFStringGetTypeID();
  if (!v2 || CFGetTypeID(v2) != TypeID)
  {
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_1000646D8();
    }

    goto LABEL_13;
  }

  v4 = sub_10002E994(*(a1 + 32));
  if (v4 != dword_1000AB0B8)
  {
    v5 = v4;
    sub_10002D218();
    dword_1000AB0B8 = v5;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 32);
  LODWORD(valuePtr) = -1;
  number[0] = 0;
  if (dword_1000AB0BC == -1)
  {
    v6 = sub_10002C6C4();
    Value = CFDictionaryGetValue(v6, @"Cycles");
    v19 = CFArrayGetTypeID();
    if (Value && CFGetTypeID(Value) == v19)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, Value);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    }

    v7 = MutableCopy;
    Count = CFArrayGetCount(MutableCopy);
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, Count - 1);
      v23 = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v23)
        {
          CFDictionaryGetValueIfPresent(ValueAtIndex, @"CycleCount", number);
          v24 = number[0];
          v25 = CFNumberGetTypeID();
          if (v24)
          {
            if (CFGetTypeID(v24) == v25)
            {
              CFNumberGetValue(number[0], kCFNumberIntType, &dword_1000AB0BC);
            }
          }
        }
      }
    }
  }

  v9 = CFDictionaryGetValue(v8, @"CycleCount");
  number[0] = v9;
  v10 = CFNumberGetTypeID();
  if (v9 && CFGetTypeID(v9) == v10)
  {
    CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr);
    v11 = valuePtr;
  }

  else
  {
    v11 = -1;
  }

  v12 = dword_1000AB0BC;
  if (dword_1000AB0BC != -1 && dword_1000AB0BC / 10 == v11 / 10)
  {
    v13 = qword_1000AB980;
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
    {
      sub_100064740(v11, v12, v13);
    }

    v14 = 0;
    if (!v6)
    {
      goto LABEL_41;
    }

LABEL_40:
    CFRelease(v6);
    goto LABEL_41;
  }

  dword_1000AB0BC = v11;
  if (!v6)
  {
    if (v7)
    {
      CFRelease(v7);
    }

    v6 = sub_10002C6C4();
    v15 = CFDictionaryGetValue(v6, @"Cycles");
    v16 = CFArrayGetTypeID();
    if (v15 && CFGetTypeID(v15) == v16)
    {
      Mutable = CFArrayCreateMutableCopy(0, 0, v15);
    }

    else
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    }

    v7 = Mutable;
  }

  v14 = sub_10002CCCC(v8);
  CFArrayAppendValue(v7, v14);
  CFDictionarySetValue(v6, @"Cycles", v7);
  sub_10002CC0C(v6, @"com.apple.batterydata.cyclecount");
  if (v6)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v26 = *(a1 + 32);
  Current = CFAbsoluteTimeGetCurrent();
  v27 = CFDictionaryGetValue(v26, @"KioskMode");
  v28 = CFDictionaryGetTypeID();
  if (v27 && CFGetTypeID(v27) == v28)
  {
    v29 = CFDictionaryGetValue(v27, @"KioskModeMode");
    if (v29)
    {
      v103 = 0;
      CFNumberGetValue(v29, kCFNumberIntType, &v103);
      if (!qword_1000ACAB8)
      {
        v30 = _CFPreferencesCopyMultipleWithContainer();
        qword_1000ACAB8 = CFDictionaryCreateMutableCopy(0, 0, v30);
        CFRelease(v30);
        if (!sub_10002C55C(qword_1000ACAB8, 1) || !sub_10002C5F0(qword_1000ACAB8))
        {
          v31 = qword_1000ACAB8;
          v32 = CFDictionaryGetTypeID();
          if (v31 && CFGetTypeID(v31) == v32)
          {
            CFRelease(qword_1000ACAB8);
          }

          v33 = CFPreferencesCopyMultiple(0, @"com.apple.batterydata.kioskmode", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
          qword_1000ACAB8 = CFDictionaryCreateMutableCopy(0, 0, v33);
          CFRelease(v33);
          v34 = CFDictionaryGetCount(qword_1000ACAB8);
          if (qword_1000ACAB8)
          {
            if (v34)
            {
              sub_10002CC0C(qword_1000ACAB8, @"com.apple.batterydata.kioskmode");
              v35 = malloc_type_malloc(8 * v34, 0xC0040B8AA526DuLL);
              if (v35)
              {
                v36 = v35;
                CFDictionaryGetKeysAndValues(qword_1000ACAB8, v35, 0);
                for (i = 0; i != v34; ++i)
                {
                  CFPreferencesSetValue(v36[i], 0, @"com.apple.batterydata.kioskmode", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
                }

                free(v36);
              }
            }
          }
        }

        if (sub_10002C55C(qword_1000ACAB8, 1) && sub_10002C5F0(qword_1000ACAB8))
        {
          number[0] = 0;
          if (CFDictionaryGetValueIfPresent(qword_1000ACAB8, @"KioskModeMode", number))
          {
            v38 = number[0];
            v39 = CFNumberGetTypeID();
            if (v38)
            {
              if (CFGetTypeID(v38) == v39)
              {
                CFNumberGetValue(number[0], kCFNumberIntType, &dword_1000AB0C0);
              }
            }
          }

          number[0] = 0;
          if (CFDictionaryGetValueIfPresent(qword_1000ACAB8, @"lastUpdateTs", number))
          {
            v40 = number[0];
            v41 = CFNumberGetTypeID();
            if (v40)
            {
              if (CFGetTypeID(v40) == v41)
              {
                CFNumberGetValue(number[0], kCFNumberDoubleType, &qword_1000ACAC0);
              }
            }
          }
        }

        else
        {
          v42 = qword_1000ACAB8;
          v43 = sub_100042098();
          CFDictionarySetValue(v42, @"Serial", v43);
          LODWORD(number[0]) = 1;
          v44 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, number);
          if (v44)
          {
            v45 = v44;
            CFDictionarySetValue(qword_1000ACAB8, @"Format Version", v44);
            CFRelease(v45);
          }

          v46 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v103);
          if (v46)
          {
            v47 = v46;
            CFDictionarySetValue(qword_1000ACAB8, @"KioskModeMode", v46);
            CFRelease(v47);
          }

          LODWORD(valuePtr) = 0;
          v48 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFDictionarySetValue(qword_1000ACAB8, @"KioskModeResidency0", v48);
          CFDictionarySetValue(qword_1000ACAB8, @"KioskModeResidency1", v48);
          CFDictionarySetValue(qword_1000ACAB8, @"KioskModeResidency2", v48);
          CFDictionarySetValue(qword_1000ACAB8, @"KioskModeResidency3", v48);
          CFDictionarySetValue(qword_1000ACAB8, @"KioskModeHighSocResidency0", v48);
          CFDictionarySetValue(qword_1000ACAB8, @"KioskModeHighSocResidency1", v48);
          CFDictionarySetValue(qword_1000ACAB8, @"KioskModeHighSocResidency2", v48);
          CFDictionarySetValue(qword_1000ACAB8, @"KioskModeHighSocResidency3", v48);
          CFDictionarySetValue(qword_1000ACAB8, @"KioskModeEntries", v48);
          CFDictionarySetValue(qword_1000ACAB8, @"KioskModeExits", v48);
          CFRelease(v48);
          v49 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &Current);
          if (v49)
          {
            v50 = v49;
            CFDictionarySetValue(qword_1000ACAB8, @"lastUpdateTs", v49);
            CFRelease(v50);
          }
        }
      }

      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
      {
        sub_1000647C8(&v103);
      }

      v51 = v103;
      if (dword_1000AB0C0 <= 1 && v103 < 2)
      {
        goto LABEL_142;
      }

      if (dword_1000AB0C0 <= 1 && v103 >= 2)
      {
        qword_1000ACAC0 = *&Current;
        LODWORD(valuePtr) = 0;
        number[0] = 0;
        if (CFDictionaryGetValueIfPresent(qword_1000ACAB8, @"KioskModeEntries", number))
        {
          v52 = number[0];
          v53 = CFNumberGetTypeID();
          if (v52)
          {
            if (CFGetTypeID(v52) == v53)
            {
              CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr);
            }
          }
        }

        if (valuePtr != -1)
        {
          LODWORD(valuePtr) = valuePtr + 1;
        }

        v54 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        if (!v54)
        {
          goto LABEL_142;
        }

        v55 = v54;
        CFDictionarySetValue(qword_1000ACAB8, @"KioskModeEntries", v54);
        v56 = v55;
LABEL_92:
        CFRelease(v56);
LABEL_142:
        if (v103 != dword_1000AB0C0)
        {
          v84 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v103);
          if (v84)
          {
            v85 = v84;
            CFDictionarySetValue(qword_1000ACAB8, @"KioskModeMode", v84);
            CFRelease(v85);
          }
        }

        qword_1000ACAC0 = *&Current;
        v86 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &qword_1000ACAC0);
        if (v86)
        {
          v87 = v86;
          CFDictionarySetValue(qword_1000ACAB8, @"lastUpdateTs", v86);
          CFRelease(v87);
        }

        sub_10002CC0C(qword_1000ACAB8, @"com.apple.batterydata.kioskmode");
        v88 = qword_1000ACAB8;
        *number = 0u;
        v107 = 0u;
        valuePtr = 0;
        if (CFDictionaryGetValueIfPresent(qword_1000ACAB8, @"KioskModeHighSocResidency0", &valuePtr))
        {
          v89 = valuePtr;
          v90 = CFNumberGetTypeID();
          if (v89)
          {
            if (CFGetTypeID(v89) == v90)
            {
              CFNumberGetValue(valuePtr, kCFNumberDoubleType, number);
            }
          }
        }

        valuePtr = 0;
        if (CFDictionaryGetValueIfPresent(v88, @"KioskModeHighSocResidency1", &valuePtr))
        {
          v91 = valuePtr;
          v92 = CFNumberGetTypeID();
          if (v91)
          {
            if (CFGetTypeID(v91) == v92)
            {
              CFNumberGetValue(valuePtr, kCFNumberDoubleType, &number[1]);
            }
          }
        }

        valuePtr = 0;
        if (CFDictionaryGetValueIfPresent(v88, @"KioskModeHighSocResidency2", &valuePtr))
        {
          v93 = valuePtr;
          v94 = CFNumberGetTypeID();
          if (v93)
          {
            if (CFGetTypeID(v93) == v94)
            {
              CFNumberGetValue(valuePtr, kCFNumberDoubleType, &v107);
            }
          }
        }

        valuePtr = 0;
        if (CFDictionaryGetValueIfPresent(v88, @"KioskModeHighSocResidency3", &valuePtr))
        {
          v95 = valuePtr;
          v96 = CFNumberGetTypeID();
          if (v95)
          {
            if (CFGetTypeID(v95) == v96)
            {
              CFNumberGetValue(valuePtr, kCFNumberDoubleType, &v107 + 8);
            }
          }
        }

        for (j = 0; j != 4; ++j)
        {
          v98 = *&number[j] / 3600.0;
          if (v98 >= 65535.0)
          {
            v98 = 65535.0;
          }

          *(&number[-1] + j) = v98;
        }

        if (sub_10005EEE4(1128811336, &valuePtr, 8u) && os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
        {
          sub_100064864();
        }

        dword_1000AB0C0 = v103;
        goto LABEL_13;
      }

      if (dword_1000AB0C0 >= 2 && v103 <= 1)
      {
        LODWORD(valuePtr) = 0;
        number[0] = 0;
        if (CFDictionaryGetValueIfPresent(qword_1000ACAB8, @"KioskModeExits", number))
        {
          v57 = number[0];
          v58 = CFNumberGetTypeID();
          if (v57)
          {
            if (CFGetTypeID(v57) == v58)
            {
              CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr);
            }
          }
        }

        if (valuePtr != -1)
        {
          LODWORD(valuePtr) = valuePtr + 1;
        }

        v59 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        if (v59)
        {
          v60 = v59;
          CFDictionarySetValue(qword_1000ACAB8, @"KioskModeExits", v59);
          CFRelease(v60);
        }

        v51 = v103;
      }

      v61 = *&qword_1000ACAC0;
      if (*&qword_1000ACAC0 == 0.0 || v51 < 2)
      {
        goto LABEL_142;
      }

      v62 = Current;
      v102 = 2000;
      number[0] = 0;
      if (CFDictionaryGetValueIfPresent(v26, @"Temperature", number))
      {
        v63 = number[0];
        v64 = CFNumberGetTypeID();
        if (v63)
        {
          if (CFGetTypeID(v63) == v64)
          {
            CFNumberGetValue(number[0], kCFNumberIntType, &v102);
          }
        }
      }

      v100 = 0;
      v101 = 100;
      number[0] = 0;
      if (CFDictionaryGetValueIfPresent(v26, @"AppleRawMaxCapacity", number))
      {
        v65 = number[0];
        v66 = CFNumberGetTypeID();
        if (v65)
        {
          if (CFGetTypeID(v65) == v66)
          {
            CFNumberGetValue(number[0], kCFNumberIntType, &v101);
          }
        }
      }

      number[0] = 0;
      if (CFDictionaryGetValueIfPresent(v26, @"AppleRawCurrentCapacity", number))
      {
        v67 = number[0];
        v68 = CFNumberGetTypeID();
        if (v67)
        {
          if (CFGetTypeID(v67) == v68)
          {
            CFNumberGetValue(number[0], kCFNumberIntType, &v100);
          }
        }
      }

      if (v102 >= 2500)
      {
        if (v102 >= 0xDAC)
        {
          if (v102 >= 0xFA0)
          {
            v71 = @"KioskModeHighSocResidency3";
          }

          else
          {
            v71 = @"KioskModeHighSocResidency2";
          }

          key = v71;
          if (v102 >= 0xFA0)
          {
            v69 = @"KioskModeResidency3";
          }

          else
          {
            v69 = @"KioskModeResidency2";
          }

          goto LABEL_129;
        }

        v69 = @"KioskModeResidency1";
        v70 = @"KioskModeHighSocResidency1";
      }

      else
      {
        v69 = @"KioskModeResidency0";
        v70 = @"KioskModeHighSocResidency0";
      }

      key = v70;
LABEL_129:
      v72 = 100 * v100;
      v73 = v101;
      v74 = v62 - v61;
      valuePtr = 0;
      number[0] = 0;
      if (CFDictionaryGetValueIfPresent(qword_1000ACAB8, v69, &valuePtr))
      {
        v75 = valuePtr;
        v76 = CFNumberGetTypeID();
        if (v75)
        {
          if (CFGetTypeID(v75) == v76)
          {
            CFNumberGetValue(valuePtr, kCFNumberDoubleType, number);
          }
        }
      }

      v77 = v72 / v73;
      *number = v74 + *number;
      v78 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, number);
      if (v78)
      {
        v79 = v78;
        CFDictionarySetValue(qword_1000ACAB8, v69, v78);
        CFRelease(v79);
      }

      if (v77 < 95)
      {
        goto LABEL_142;
      }

      valuePtr = 0;
      number[0] = 0;
      if (CFDictionaryGetValueIfPresent(qword_1000ACAB8, key, &valuePtr))
      {
        v80 = valuePtr;
        v81 = CFNumberGetTypeID();
        if (v80)
        {
          if (CFGetTypeID(v80) == v81)
          {
            CFNumberGetValue(valuePtr, kCFNumberDoubleType, number);
          }
        }
      }

      *number = v74 + *number;
      v82 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, number);
      if (!v82)
      {
        goto LABEL_142;
      }

      v83 = v82;
      CFDictionarySetValue(qword_1000ACAB8, key, v82);
      v56 = v83;
      goto LABEL_92;
    }

    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_100064898();
    }
  }

LABEL_13:
  CFRelease(*(a1 + 32));
}