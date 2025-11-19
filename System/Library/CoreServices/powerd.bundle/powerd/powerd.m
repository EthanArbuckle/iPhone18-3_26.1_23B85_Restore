uint64_t sub_100001878(uint64_t a1, _OWORD *a2, _DWORD *a3, const UInt8 *a4, unsigned int a5, _DWORD *a6, int *a7)
{
  pidp = -1;
  v13 = a2[1];
  v14 = -536870206;
  *atoken.val = *a2;
  *&atoken.val[4] = v13;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  *a6 = 0;
  v15 = CFDataCreateWithBytesNoCopy(0, a4, a5, kCFAllocatorNull);
  if (v15)
  {
    v16 = v15;
    v17 = CFPropertyListCreateWithData(0, v15, 1uLL, 0, 0);
    CFRelease(v16);
    if (v17)
    {
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v17) == TypeID)
      {
        v19 = a2[1];
        *atoken.val = *a2;
        *&atoken.val[4] = v19;
        if (sub_100001CFC(&atoken, v17))
        {
          *a3 = 1;
          *a7 = 0;
          if (dword_1000AB710 != 1)
          {
            CFDictionarySetValue(v17, @"AssertType", @"PreventUserIdleSystemSleep");
LABEL_16:
            v14 = sub_100001FB0(pidp, v17, a6, 0, 0);
            goto LABEL_17;
          }

          CFDictionarySetValue(v17, @"AssertType", @"SystemIsActive");
          outputCnt = 1;
          v28 = 0;
          v20 = sub_100002290();
          if (!v20)
          {
            goto LABEL_10;
          }

          if (IOConnectCallMethod(v20, 0x11u, 0, 0, 0, 0, &output, &outputCnt, 0, &v28))
          {
            if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
            {
              sub_10006C9EC();
            }

            goto LABEL_10;
          }

          v24 = output;
          v25 = qword_1000ABAB8;
          if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
          {
            v26 = "true";
            if (!v24)
            {
              v26 = "false";
            }

            atoken.val[0] = 136315138;
            *&atoken.val[1] = v26;
            _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "IdleSleepRevertRequest Successful: %s", &atoken, 0xCu);
            if (!v24)
            {
              goto LABEL_10;
            }
          }

          else if (!v24)
          {
LABEL_10:
            v21 = 0;
            goto LABEL_11;
          }

          *a3 = 0;
          v21 = 1;
LABEL_11:
          v22 = qword_1000ABAB8;
          if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
          {
            atoken.val[0] = 67109120;
            atoken.val[1] = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sleep revert state: %d\n", &atoken, 8u);
          }

          goto LABEL_16;
        }

        v14 = -536870207;
      }

LABEL_17:
      *a7 = v14;
      CFRelease(v17);
      goto LABEL_18;
    }
  }

  *a7 = -536870206;
LABEL_18:
  vm_deallocate(mach_task_self_, a4, a5);
  return 0;
}

uint64_t sub_100001B90(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || (v3 = result, *(result + 24) != 1) || *(result + 4) != 64)
  {
    v5 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v4 = *(result + 40), v4 != *(result + 56)))
  {
    v5 = -300;
    goto LABEL_10;
  }

  if (*(result + 64) || *(result + 68) <= 0x1Fu)
  {
    v5 = -309;
LABEL_10:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v6 = *(result + 12);
  v7 = *(v3 + 28);
  v8 = *(v3 + 100);
  v10[0] = *(v3 + 84);
  v10[1] = v8;
  result = sub_100001878(v6, v10, (v3 + 52), v7, v4, (v3 + 60), (a2 + 44));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    v9 = *(v3 + 60);
    *(a2 + 36) = *(v3 + 52);
    *(a2 + 40) = v9;
    *(a2 + 4) = 48;
  }

  return result;
}

void sub_100001C90(uint64_t a1, uint64_t a2)
{
  if (a2 == 2 && (dispatch_mach_mig_demux() & 1) == 0)
  {
    msg = dispatch_mach_msg_get_msg();

    mach_msg_destroy(msg);
  }
}

BOOL sub_100001CFC(_OWORD *a1, const __CFDictionary *a2)
{
  pidp = -1;
  v4 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v4;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  Value = CFDictionaryGetValue(a2, @"AssertType");
  v6 = sub_100001F08(Value);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(&unk_1000ABB58 + 20 * v6 + 8);
    if (v7)
    {
      v8 = a1[1];
      *atoken.val = *a1;
      *&atoken.val[4] = v8;
      if (!sub_1000064E4(&atoken, v7))
      {
        result = os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        sub_10006B390(&pidp);
        return 0;
      }
    }
  }

  v9 = CFDictionaryGetValue(a2, @"AppliesToLimitedPower");
  TypeID = CFBooleanGetTypeID();
  if (v9)
  {
    v11 = kCFBooleanTrue;
    if (CFGetTypeID(v9) == TypeID && v9 == kCFBooleanTrue)
    {
      v12 = a1[1];
      *atoken.val = *a1;
      *&atoken.val[4] = v12;
      v11 = v9;
      if (!sub_1000064E4(&atoken, @"com.apple.private.iokit.assertonbattery"))
      {
        result = os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        sub_10006B40C(&pidp);
        return 0;
      }
    }
  }

  else
  {
    v11 = kCFBooleanTrue;
  }

  v14 = CFDictionaryGetValue(a2, @"AppliesOnLidClose");
  v15 = CFBooleanGetTypeID();
  if (!v14)
  {
    return 1;
  }

  v16 = v15;
  v17 = CFGetTypeID(v14);
  result = 1;
  if (v17 == v16 && v14 == v11)
  {
    v18 = a1[1];
    *atoken.val = *a1;
    *&atoken.val[4] = v18;
    if (!sub_1000064E4(&atoken, @"com.apple.private.iokit.assertonlidclose"))
    {
      result = os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10006B490(&pidp);
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_100001F08(const void *a1)
{
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  TypeID = CFStringGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      Value = CFDictionaryGetValue(qword_1000AD1B8, a1);
      v5 = CFNumberGetTypeID();
      if (!Value)
      {
        return 0xFFFFFFFFLL;
      }

      if (CFGetTypeID(Value) != v5)
      {
        return 0xFFFFFFFFLL;
      }

      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      v2 = valuePtr;
      if (valuePtr >= 0x15)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return v2;
}

uint64_t sub_100001FB0(int a1, const void *a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  value = 0;
  *a3 = 0;
  v10 = sub_10000229C(a1);
  if (!v10)
  {
    v18 = 3758097085;
    v19 = sub_100002B14(a1);
    if (!v19)
    {
      return v18;
    }

    v10 = v19;
    if ((v19[34] & 0x20) != 0)
    {
      return v18;
    }

    if (a4)
    {
      *a4 = v19;
    }
  }

  if (v10[34] < 0)
  {
    v18 = 3758097097;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B514();
    }
  }

  else
  {
    v11 = dword_1000AD2B0;
    while (1)
    {
      v12 = v11;
      if (CFDictionaryGetValueIfPresent(qword_1000AD1D8, v11, &value) != 1)
      {
        break;
      }

      v11 = (v11 + 1) % 10240;
      if (v11 == dword_1000AD2B0)
      {
        v12 = v11;
        break;
      }
    }

    if (CFDictionaryGetValueIfPresent(qword_1000AD1D8, v12, &value) == 1 || (v13 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A0040FFA61E1BuLL)) == 0)
    {
      v18 = 3758097085;
      sub_100007E54(a1);
    }

    else
    {
      v14 = v13;
      v13[2] = a2;
      CFRetain(a2);
      *(v14 + 60) = 1;
      *(v14 + 72) = v10;
      v15 = *(v14 + 80);
      if (v15)
      {
        v16 = sub_10000229C(v15);
        if (v16 || (v16 = sub_100002B14(*(v14 + 80))) != 0)
        {
          *(v14 + 88) = v16;
        }
      }

      *(v14 + 52) = v11 & 0x7FFF | 0x8000;
      CFDictionarySetValue(qword_1000AD1D8, v12, v14);
      dword_1000AD2B0 = (v11 + 1) % 10240;
      v17 = sub_1000022DC(v14);
      if (v17)
      {
        v18 = v17;
        sub_100007E54(a1);
        CFDictionaryRemoveValue(qword_1000AD1D8, v12);
        CFRelease(*(v14 + 16));
        free(v14);
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
        {
          sub_10006B584();
        }
      }

      else
      {
        v21 = *(v14 + 48);
        if ((*(v14 + 24) & 2) == 0)
        {
          if (CFDictionaryGetValue(*(v14 + 16), @"AsyncClientAssertionId"))
          {
            v22 = 13;
          }

          else
          {
            v22 = 0;
          }

          sub_100003488(v22, v14);
        }

        if (dword_1000AD1A4)
        {
          notify_post("com.apple.system.powermanagement.assertions.anychange");
        }

        *a3 = *(v14 + 52);
        v18 = 0;
        if (a5)
        {
          *a5 = *(&unk_1000ABB58 + 40 * v21 + 39);
        }
      }
    }
  }

  return v18;
}

_DWORD *sub_10000229C(int a1)
{
  result = CFDictionaryGetValue(qword_1000ABAC0, a1);
  if (result)
  {
    v2 = result[18];
    if (v2 != -1)
    {
      result[18] = v2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000022DC(unint64_t a1)
{
  v2 = 3758097090;
  v3 = sub_100002AB4();
  v48 = 0;
  v46 = 0.0;
  value = 0;
  v4 = CFDictionaryGetValue(*(a1 + 16), @"AssertType");
  v5 = sub_100001F08(v4);
  if ((v5 & 0x80000000) != 0)
  {
    return v2;
  }

  v6 = v5;
  v49 = 0;
  valuePtr = 0;
  *(a1 + 48) = v5;
  if (CFDictionaryGetValue(*(a1 + 16), @"AsyncClientAssertionId"))
  {
    v7 = CFDictionaryGetValue(*(a1 + 16), @"GlobalUniqueID");
    if (!v7)
    {
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10006CEF4();
      }

      return v2;
    }

    CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr);
    *(*(a1 + 72) + 144) = valuePtr;
  }

  else
  {
    valuePtr = (v6 << 16) | (v3 << 32) | *(a1 + 52);
    v8 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(*(a1 + 16), @"GlobalUniqueID", v8);
      CFRelease(v9);
    }
  }

  v10 = CFNumberCreate(0, kCFNumberSInt32Type, (a1 + 52));
  if (v10)
  {
    v11 = v10;
    CFDictionarySetValue(*(a1 + 16), @"AssertionId", v10);
    CFRelease(v11);
  }

  v12 = *(a1 + 72);
  v13 = *(v12 + 80);
  if (v13)
  {
    CFDictionarySetValue(*(a1 + 16), @"Process Name", v13);
    v12 = *(a1 + 72);
  }

  v14 = CFNumberCreate(0, kCFNumberIntType, (v12 + 96));
  if (v14)
  {
    v15 = v14;
    CFDictionarySetValue(*(a1 + 16), @"AssertPID", v14);
    CFRelease(v15);
  }

  *(a1 + 32) = 0;
  if (CFDictionaryGetValueIfPresent(*(a1 + 16), @"AssertStartWhen", &value) && (v16 = value, TypeID = CFDateGetTypeID(), v16) && CFGetTypeID(v16) == TypeID && (Current = CFAbsoluteTimeGetCurrent(), v19 = Current - CFDateGetAbsoluteTime(value), v19 > 0.0))
  {
    v20 = v3 - v19;
    *(a1 + 32) = v20;
  }

  else
  {
    v20 = *(a1 + 32);
  }

  v21 = &unk_1000ABB58 + 160 * v6;
  if (!v20)
  {
    v22 = CFAbsoluteTimeGetCurrent();
    v23 = CFDateCreate(0, v22);
    value = v23;
    if (v23)
    {
      CFDictionarySetValue(*(a1 + 16), @"AssertStartWhen", v23);
      CFRelease(value);
    }

    *(a1 + 32) = v3;
  }

  v24 = CFDictionaryGetValue(*(a1 + 16), @"AssertLevel");
  v25 = CFNumberGetTypeID();
  if (v24 && CFGetTypeID(v24) == v25)
  {
    CFNumberGetValue(v24, kCFNumberIntType, &v49);
    if (!v49)
    {
      v28 = *(v21 + 3);
      v27 = (v21 + 24);
      v26 = v28;
      *a1 = v28;
      if (v28)
      {
        *(v26 + 8) = a1;
      }

      v2 = 0;
      *v27 = a1;
      *(a1 + 8) = v27;
      *(a1 + 24) = *(a1 + 24) & 0xFFFFFFFC | 2;
      return v2;
    }
  }

  else
  {
    v48 = 255;
    v29 = CFNumberCreate(0, kCFNumberIntType, &v48);
    CFDictionarySetValue(*(a1 + 16), @"AssertLevel", v29);
    CFRelease(v29);
  }

  if (*v21)
  {
    v30 = CFDictionaryGetValue(*(a1 + 16), @"AppliesToLimitedPower");
    v31 = CFBooleanGetTypeID();
    if (v30)
    {
      if (CFGetTypeID(v30) == v31 && v30 == kCFBooleanTrue)
      {
        *(a1 + 24) |= 4u;
      }
    }
  }

  if (*(a1 + 48) == 14)
  {
    v44 = kCFBooleanFalse;
    if (CFDictionaryGetValueIfPresent(*(a1 + 16), @"ExitSilentRunning", &v44))
    {
      if (v44 == kCFBooleanTrue)
      {
        *(a1 + 24) |= 0x200u;
      }
    }
  }

  v32 = CFDictionaryGetValue(*(a1 + 16), @"AssertionOnBehalfOfPID");
  v33 = CFNumberGetTypeID();
  if (v32 && CFGetTypeID(v32) == v33)
  {
    CFNumberGetValue(v32, kCFNumberIntType, (a1 + 80));
  }

  v34 = CFDictionaryGetValue(*(a1 + 16), @"AppliesOnLidClose");
  v35 = CFBooleanGetTypeID();
  if (v34 && CFGetTypeID(v34) == v35 && v34 == kCFBooleanTrue)
  {
    *(a1 + 24) |= 8u;
  }

  v36 = CFDictionaryGetValue(*(a1 + 16), @"TimeoutSeconds");
  v37 = CFNumberGetTypeID();
  if (v36 && CFGetTypeID(v36) == v37)
  {
    CFNumberGetValue(v36, kCFNumberDoubleType, &v46);
  }

  v38 = v46;
  if ((*v21 & 0x10) != 0)
  {
    v39 = *(v21 + 12);
    if (v46 == 0.0 || v46 > v39)
    {
      v46 = *(v21 + 12);
      v38 = v39;
    }
  }

  if (v38 == 0.0)
  {
    sub_100002DB4(a1, &unk_1000ABB58 + 160 * v6, 1);
  }

  else
  {
    *(a1 + 40) = *(a1 + 32) + v38;
    sub_100008FEC(a1, &unk_1000ABB58 + 160 * v6, 1, 1);
  }

  if (v6 == 5)
  {
    v40 = *(*(a1 + 72) + 80);
    v41 = CFStringGetTypeID();
    if (v40)
    {
      if (CFGetTypeID(v40) == v41 && (CFEqual(v40, @"ME32ExporterHel") || CFEqual(v40, @"MRMovieServer")))
      {
        sub_10004EE5C();
      }
    }
  }

  v42 = *(v21 + 16);
  if (v42)
  {
    v42(v21, 0);
  }

  if (qword_1000ABB20 && (byte_1000ABB11 & 1) == 0 && !CFDictionaryContainsKey(qword_1000ABB20, *(*(a1 + 72) + 80)))
  {
    sub_100008440(0);
  }

  nullsub_3(0, a1);
  return 0;
}

unint64_t sub_10000289C(unint64_t result, int a2)
{
  v3 = result;
  v4 = &unk_1000ABB58 + 160 * *(result + 48);
  if (!dword_1000ABAD8 || *(v4 + 26) > 3u)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_14;
  }

  result = *(result + 80);
  if (!result)
  {
    goto LABEL_10;
  }

  v5 = *(v3 + 88);
  if (!v5)
  {
    result = sub_10000229C(result);
    *(v3 + 88) = result;
    if (result || (result = sub_100002B14(*(v3 + 80)), (*(v3 + 88) = result) != 0) || (result = sub_10000229C(*(*(v3 + 72) + 96)), (*(v3 + 88) = result) != 0))
    {
      v5 = result;
      goto LABEL_11;
    }

LABEL_10:
    v5 = *(v3 + 72);
  }

LABEL_11:
  if (*(v5 + 64) || (result = sub_100004460(v5), *(v5 + 64)))
  {
    v6 = v5 + 16 * *(v4 + 26);
  }

  else
  {
    v6 = 0;
  }

LABEL_14:
  if (a2 == 1)
  {
    if (v6 && *v6 && (*(v3 + 24) & 0x80) != 0)
    {
      v10 = *v6 - 1;
      *v6 = v10;
      if (!v10)
      {
        result = sub_100002AB4();
        v11 = *(v5 + 64);
        if (*(v4 + 26) >> 2 < *(v11 + 20))
        {
          v12 = result - *(v6 + 8);
          v13 = v11 + (*(v4 + 26) >> 2 << 6) + 8 * (*(v4 + 26) & 3);
          v14 = *(v13 + 32);
          v15 = v14 >> 63;
          v16 = __CFADD__(v14, v12);
          v17 = v14 + v12;
          if (v16)
          {
            ++v15;
          }

          if ((v15 & 1) != v17 >> 63 || v15 << 63 >> 63 != v15)
          {
            v17 = 0x7FFFFFFFFFFFFFFFLL;
          }

          *(v13 + 32) = v17;
        }
      }

      v9 = *(v3 + 24) & 0xFFFFFF7F;
      goto LABEL_38;
    }
  }

  else if (!a2)
  {
    if ((*v4 & 1) == 0 || (*(v3 + 24) & 4) != 0 || (result = sub_100004D48(), result))
    {
      if (v6)
      {
        v7 = *(v3 + 24);
        if ((v7 & 0x80) == 0)
        {
          if (!(*v6)++)
          {
            result = sub_100002AB4();
            *(v6 + 8) = result;
            v7 = *(v3 + 24);
          }

          v9 = v7 | 0x80;
LABEL_38:
          *(v3 + 24) = v9;
        }
      }
    }
  }

  return result;
}

id sub_100002A58()
{
  v0 = qword_1000AD478;
  if (!qword_1000AD478)
  {
    v1 = dispatch_queue_create_with_target_V2("Power Management main queue", 0, 0);
    v2 = qword_1000AD478;
    qword_1000AD478 = v1;

    v0 = qword_1000AD478;
  }

  return v0;
}

unint64_t sub_100002AB4()
{
  v0 = mach_absolute_time();
  v1 = dword_1000AD4E4;
  if (!dword_1000AD4E4)
  {
    mach_timebase_info(&dword_1000AD4E0);
    v1 = dword_1000AD4E4;
  }

  return v0 * dword_1000AD4E0 / (1000000000 * v1);
}

void *sub_100002B14(int a1)
{
  if (!proc_name(a1, buffer, 0x40u))
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006BA80();
    }

    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x98uLL, 0x10E0040F719877AuLL);
  if (!v2)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006BA10();
    }

    return 0;
  }

  v3 = v2;
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_100002A58();
  v5 = dispatch_source_create(&_dispatch_source_type_proc, a1, 0x80000000uLL, v4);
  *(v3 + 11) = v5;
  if (!v5)
  {
    free(v3);
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B920();
    }

    return 0;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001BEF4;
  handler[3] = &unk_10009A4F8;
  v13 = a1;
  handler[4] = 30;
  dispatch_source_set_event_handler(v5, handler);
  v6 = *(v3 + 11);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100053F08;
  v11[3] = &unk_1000994E0;
  v11[4] = v3;
  dispatch_source_set_cancel_handler(v6, v11);
  dispatch_resume(*(v3 + 11));
LABEL_6:
  v7 = CFStringCreateWithCString(0, buffer, 0x8000100u);
  *(v3 + 10) = v7;
  TypeID = CFStringGetTypeID();
  if ((!v7 || CFGetTypeID(v7) != TypeID) && os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006B990();
  }

  ++*(v3 + 18);
  v9 = dword_1000AD288++;
  *(v3 + 24) = a1;
  *(v3 + 25) = v9;
  CFDictionarySetValue(qword_1000ABAC0, a1, v3);
  sub_100003FFC(v3);
  return v3;
}

void sub_100002DB4(unint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 16);
  *a1 = v4;
  if (v4)
  {
    *(v4 + 8) = a1;
  }

  *(a2 + 16) = a1;
  *(a1 + 8) = a2 + 16;
  v5 = *(a1 + 24);
  *(a1 + 24) = v5 & 0xFFFFFFDC;
  if ((*a2 & 1) != 0 && (v5 & 4) != 0)
  {
    ++*(a2 + 152);
  }

  if (a3)
  {
    sub_10000289C(a1, 0);
    sub_100004550(a1, 0);
  }

  sub_100004710(a1);
}

void sub_100002E48(int a1, void *a2)
{
  v3 = a2[2];
  v4 = 1;
  v5 = @"Retain";
  switch(a1)
  {
    case 0:
      ++qword_1000ABA78;
      v5 = @"Created";
      goto LABEL_15;
    case 1:
      goto LABEL_15;
    case 2:
      v4 = 0;
      v5 = @"Released";
      goto LABEL_15;
    case 3:
      v4 = 0;
      v5 = @"ClientDied";
      goto LABEL_15;
    case 4:
      v4 = 0;
      v5 = @"TimedOut";
      goto LABEL_15;
    case 7:
      v4 = 0;
      v5 = @"TurnedOff";
      goto LABEL_15;
    case 8:
      v5 = @"TurnedOn";
      goto LABEL_15;
    case 9:
      if ((dword_1000AB6D0 & 0x80) == 0)
      {
        return;
      }

      v4 = 0;
      v5 = @"NameChange";
LABEL_15:
      if (qword_1000ABA98)
      {
        goto LABEL_16;
      }

      qword_1000ABA98 = CFArrayCreateMutable(0, 512, &kCFTypeArrayCallBacks);
      if (!qword_1000ABA98)
      {
        return;
      }

      dword_1000ABAA0 = -1;
      notify_post("com.apple.powermanagement.assertions.logHighWM");
      v11 = qword_1000ABAB8;
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Assertion bufffer initialized. Sending high water mark notification", buf, 2u);
      }

LABEL_16:
      Count = CFArrayGetCount(qword_1000ABA98);
      v7 = dword_1000ABA90 & 0x1FF;
      if (Count <= v7)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 16, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!Mutable)
        {
          return;
        }
      }

      else
      {
        Mutable = CFArrayGetValueAtIndex(qword_1000ABA98, v7);
        CFRetain(Mutable);
        TypeID = CFDictionaryGetTypeID();
        if (!Mutable)
        {
          return;
        }

        if (CFGetTypeID(Mutable) == TypeID)
        {
          CFDictionaryRemoveAllValues(Mutable);
        }
      }

      Value = CFDictionaryGetValue(v3, @"ActivityTime");
      if (Value)
      {
        CFDictionarySetValue(Mutable, @"ActivityTime", Value);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v13 = CFDateCreate(0, Current);
        if (!v13)
        {
          CFRelease(Mutable);
          return;
        }

        v14 = v13;
        CFDictionarySetValue(Mutable, @"ActivityTime", v13);
        CFRelease(v14);
      }

      v15 = CFDictionaryGetValue(v3, @"AssertStartWhen");
      if (v15)
      {
        CFDictionarySetValue(Mutable, @"AssertStartWhen", v15);
      }

      v16 = CFDictionaryGetValue(v3, @"AssertType");
      if (v16)
      {
        CFDictionarySetValue(Mutable, @"AssertType", v16);
      }

      v17 = CFDictionaryGetValue(v3, @"AssertName");
      if (v17)
      {
        CFDictionarySetValue(Mutable, @"AssertName", v17);
      }

      CFDictionarySetValue(Mutable, @"Action", v5);
      v18 = a2[9];
      if (v18)
      {
        v19 = CFNumberCreate(0, kCFNumberIntType, (v18 + 96));
        if (v19)
        {
          v20 = v19;
          CFDictionarySetValue(Mutable, @"AssertPID", v19);
          CFRelease(v20);
        }

        v21 = CFDictionaryGetValue(v3, @"Process Name");
        if (v21)
        {
          CFDictionarySetValue(Mutable, @"AssertProcess", v21);
        }
      }

      v22 = CFNumberCreate(0, kCFNumberIntType, a2 + 60);
      if (v22)
      {
        v23 = v22;
        CFDictionarySetValue(Mutable, @"RetainCount", v22);
        CFRelease(v23);
      }

      v24 = CFDictionaryGetValue(v3, @"GlobalUniqueID");
      if (v24)
      {
        CFDictionarySetValue(Mutable, @"GlobalUniqueID", v24);
      }

      v25 = CFDictionaryGetValue(v3, @"AssertionOnBehalfOfPID");
      if (v25)
      {
        CFDictionarySetValue(Mutable, @"AssertionOnBehalfOfPID", v25);
      }

      v26 = CFDictionaryGetValue(v3, @"AssertionOnBehalfOfPIDReason");
      if (v26)
      {
        CFDictionarySetValue(Mutable, @"AssertionOnBehalfOfPIDReason", v26);
      }

      v27 = CFDictionaryGetValue(v3, @"AssertionOnBehalfOfBundleID");
      if (v27)
      {
        CFDictionarySetValue(Mutable, @"AssertionOnBehalfOfBundleID", v27);
      }

      v28 = CFDictionaryGetValue(v3, @"FrameworkBundleID");
      if (v28)
      {
        CFDictionarySetValue(Mutable, @"FrameworkBundleID", v28);
      }

      v29 = CFDictionaryGetValue(v3, @"InstanceMetadata");
      if (v29)
      {
        CFDictionarySetValue(Mutable, @"InstanceMetadata", v29);
      }

      v30 = CFDictionaryGetValue(v3, @"Category");
      if (v30)
      {
        CFDictionarySetValue(Mutable, @"Category", v30);
      }

      v31 = CFDictionaryGetValue(v3, @"IsCoalesced");
      if (v31)
      {
        CFDictionarySetValue(Mutable, @"IsCoalesced", v31);
      }

      if (v4)
      {
        v32 = CFDictionaryGetValue(v3, @"CreatorBacktrace");
        if (v32)
        {
          CFDictionarySetValue(Mutable, @"CreatorBacktrace", v32);
        }
      }

      CFArraySetValueAtIndex(qword_1000ABA98, dword_1000ABA90 & 0x1FF, Mutable);
      ++dword_1000ABA90;
      CFRelease(Mutable);
      v33 = dword_1000ABAA0;
      if (dword_1000ABAA0 != -1)
      {
        ++dword_1000ABAA0;
        if (v33 >= 0x1CC)
        {
          notify_post("com.apple.powermanagement.assertions.logHighWM");
          dword_1000ABAA0 = -1;
          v34 = qword_1000ABAB8;
          if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
          {
            *v35 = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Assertion bufffer has reached capacity. Sending high water mark notification", v35, 2u);
          }
        }
      }

      return;
    case 10:
      v4 = 0;
      v5 = @"Suspended";
      goto LABEL_15;
    case 11:
      v4 = 0;
      v5 = @"Resumed";
      goto LABEL_15;
    case 12:
      v4 = 0;
      v5 = @"SystemTimeOutExpired";
      goto LABEL_15;
    case 13:
      v4 = 0;
      ++qword_1000ABA78;
      v5 = @"SessionStarted";
      goto LABEL_15;
    case 14:
      v4 = 0;
      v5 = @"SessionEnded";
      goto LABEL_15;
    default:
      return;
  }
}

void sub_100003488(int a1, uint64_t a2)
{
  v4 = dword_1000AB6D0;
  if ((dword_1000AB6D0 & 0x41) == 0)
  {
    goto LABEL_73;
  }

  __str[0] = 0;
  v45[0] = 0;
  v49[0] = 0;
  v43[0] = 0;
  __src[0] = 0;
  buffer[0] = 0;
  v5 = *(a2 + 24);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_73;
  }

  if ((dword_1000AB6D0 & 2) != 0)
  {
    goto LABEL_28;
  }

  if (a1 <= 7)
  {
    if (a1 <= 4)
    {
      if ((a1 - 2) >= 3)
      {
        if (a1)
        {
          goto LABEL_73;
        }

        goto LABEL_21;
      }

LABEL_23:
      v6 = sub_100007E48();
      if ((*(a2 + 24) & 0x40) == 0)
      {
        v7 = v6 ? 5 : 10;
        if (sub_100002AB4() - *(a2 + 32) < v7)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_28;
    }

    if (a1 == 5)
    {
LABEL_31:
      v8 = "CapExpired";
    }

    else
    {
      if (a1 != 6)
      {
        goto LABEL_23;
      }

LABEL_33:
      v8 = "Summary";
    }

    goto LABEL_44;
  }

  if (a1 > 10)
  {
    if (a1 > 12)
    {
      if (a1 != 14)
      {
        if (a1 != 13)
        {
          goto LABEL_73;
        }

        goto LABEL_21;
      }

      goto LABEL_23;
    }

    if (a1 == 11)
    {
LABEL_30:
      v8 = "Resumed";
    }

    else
    {
LABEL_32:
      v8 = "SystemTimeOutExpired";
    }

LABEL_44:
    v9 = *(a2 + 16);
    if (v9)
    {
      Value = CFDictionaryGetValue(*(a2 + 16), @"AssertType");
      v11 = Value;
      if (Value)
      {
        CFStringGetCString(Value, buffer, 200, 0x8000100u);
      }

      v12 = CFDictionaryGetValue(v9, @"AssertName");
      v13 = v12;
      if (v12)
      {
        CFStringGetCString(v12, __src, 200, 0x8000100u);
      }

      v14 = CFDictionaryGetValue(v9, @"AssertStartWhen");
      if (v14)
      {
        AbsoluteTime = CFDateGetAbsoluteTime(v14);
        Current = CFAbsoluteTimeGetCurrent();
        snprintf(__str, 0xAuLL, "%02d:%02d:%02d ", (Current - AbsoluteTime) / 3600, (Current - AbsoluteTime) / 60 % 60, (Current - AbsoluteTime) % 60);
      }

      v17 = CFDictionaryGetValue(v9, @"Process Name");
      v9 = v17;
      if (v17)
      {
        CFStringGetCString(v17, v49, 64, 0x8000100u);
      }
    }

    else
    {
      v13 = 0;
      v11 = 0;
    }

    v18 = sub_100004454();
    sub_1000041E4(v44, 0xC8uLL, v18);
    snprintf(v45, 0xC8uLL, "%s", v44);
    snprintf(v43, 0xC8uLL, "0x%llx", *(a2 + 52) | (*(a2 + 48) << 32));
    v42[0] = 0;
    v19 = *(a2 + 104);
    if ((v19 & 0x3FE) == 0)
    {
      goto LABEL_66;
    }

    strcpy(v42, "[Qualifiers:");
    if ((v19 & 2) != 0)
    {
      __strlcat_chk();
      v19 = *(a2 + 104);
      if ((v19 & 4) == 0)
      {
LABEL_57:
        if ((v19 & 8) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_76;
      }
    }

    else if ((v19 & 4) == 0)
    {
      goto LABEL_57;
    }

    __strlcat_chk();
    v19 = *(a2 + 104);
    if ((v19 & 8) == 0)
    {
LABEL_58:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_77;
    }

LABEL_76:
    __strlcat_chk();
    v19 = *(a2 + 104);
    if ((v19 & 0x10) == 0)
    {
LABEL_59:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_78;
    }

LABEL_77:
    __strlcat_chk();
    v19 = *(a2 + 104);
    if ((v19 & 0x20) == 0)
    {
LABEL_60:
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_79;
    }

LABEL_78:
    __strlcat_chk();
    v19 = *(a2 + 104);
    if ((v19 & 0x80) == 0)
    {
LABEL_61:
      if ((v19 & 0x100) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_80;
    }

LABEL_79:
    __strlcat_chk();
    v19 = *(a2 + 104);
    if ((v19 & 0x100) == 0)
    {
LABEL_62:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_81;
    }

LABEL_80:
    __strlcat_chk();
    v19 = *(a2 + 104);
    if ((v19 & 0x40) == 0)
    {
LABEL_63:
      if ((v19 & 0x200) == 0)
      {
LABEL_65:
        __strlcat_chk();
LABEL_66:
        v20 = dword_1000AB6D0;
        if ((dword_1000AB6D0 & 0x40) != 0)
        {
          v21 = qword_1000ABAB8;
          if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(*(a2 + 72) + 96);
            v23 = *(a2 + 52) | (*(a2 + 48) << 32);
            buf = 138545410;
            *buf_4 = v9;
            v26 = 1024;
            v27 = v22;
            v28 = 2082;
            v29 = v8;
            v30 = 2114;
            v31 = v11;
            v32 = 2114;
            v33 = v13;
            v34 = 2082;
            v35 = __str;
            v36 = 2048;
            v37 = v23;
            v38 = 2082;
            v39 = v44;
            v40 = 2082;
            v41 = v42;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Process %{public}@.%d %{public}s %{public}@ %{public}@ age:%{public}s id:%lld %{public}s %{public}s", &buf, 0x58u);
            v20 = dword_1000AB6D0;
          }
        }

        if ((v20 & 0x100) != 0)
        {
          buf = *(*(a2 + 72) + 96);
          *buf_4 = a1;
          *&buf_4[2] = *(a2 + 48);
          strncpy(&buf_4[4], __src, 0x18uLL);
          kdebug_trace();
        }

        if (sub_100004870())
        {
          syslog(118, "Assertion %s. Type:%s Name:'%s' Id:%s Process:%s %s\n", v8, buffer, __src, v43, v49, v45);
        }

        goto LABEL_73;
      }

LABEL_64:
      __strlcat_chk();
      goto LABEL_65;
    }

LABEL_81:
    __strlcat_chk();
    if ((*(a2 + 104) & 0x200) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (a1 != 8)
  {
    if (a1 == 9)
    {
LABEL_42:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_73;
      }

      v8 = "NameChange";
    }

    else
    {
LABEL_34:
      v8 = "Suspended";
    }

    goto LABEL_44;
  }

LABEL_21:
  if ((*(&unk_1000ABB58 + 160 * *(a2 + 48)) & 0x20) == 0)
  {
    goto LABEL_73;
  }

  *(a2 + 24) = v5 | 0x40;
LABEL_28:
  v8 = "Created";
  switch(a1)
  {
    case 0:
      goto LABEL_44;
    case 2:
      v8 = "Released";
      goto LABEL_44;
    case 3:
      v8 = "ClientDied";
      goto LABEL_44;
    case 4:
      v8 = "TimedOut";
      goto LABEL_44;
    case 5:
      goto LABEL_31;
    case 6:
      goto LABEL_33;
    case 7:
      v8 = "TurnedOff";
      goto LABEL_44;
    case 8:
      v8 = "TurnedOn";
      goto LABEL_44;
    case 9:
      v4 = dword_1000AB6D0;
      goto LABEL_42;
    case 10:
      goto LABEL_34;
    case 11:
      goto LABEL_30;
    case 12:
      goto LABEL_32;
    case 13:
      v8 = "SessionStarted";
      goto LABEL_44;
    case 14:
      v8 = "SessionEnded";
      goto LABEL_44;
    default:
      break;
  }

LABEL_73:
  sub_100002E48(a1, a2);
}

uint64_t sub_100003B9C(uint64_t a1)
{
  value = 0;
  v2 = CFDictionaryGetValue(*(*(a1 + 32) + 16), @"ResourcesUsed");
  if (CFDictionaryGetValueIfPresent(*(*(a1 + 32) + 16), @"AllowsDeviceRestart", &value) && value == kCFBooleanTrue)
  {
    *(*(a1 + 32) + 104) |= 0x100u;
  }

  TypeID = CFArrayGetTypeID();
  if (v2)
  {
    if (CFGetTypeID(v2) == TypeID)
    {
      Count = CFArrayGetCount(v2);
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
          v8 = CFStringGetTypeID();
          if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v8)
          {
            goto LABEL_26;
          }

          if (CFEqual(ValueAtIndex, @"audio-in"))
          {
            v9 = *(a1 + 32);
            if ((*(v9 + 104) & 0x100) == 0)
            {
              break;
            }
          }

          if (CFEqual(ValueAtIndex, @"audio-out"))
          {
            *(*(a1 + 32) + 104) |= 4u;
            v10 = &dword_1000AC87C;
            goto LABEL_25;
          }

          if (CFEqual(ValueAtIndex, @"GPS"))
          {
            *(*(a1 + 32) + 104) |= 8u;
            v10 = &dword_1000AC880;
            goto LABEL_25;
          }

          if (CFEqual(ValueAtIndex, @"baseband"))
          {
            *(*(a1 + 32) + 104) |= 0x10u;
            v10 = &dword_1000AC884;
            goto LABEL_25;
          }

          if (CFEqual(ValueAtIndex, @"bluetooth"))
          {
            *(*(a1 + 32) + 104) |= 0x20u;
            v10 = &dword_1000AC888;
            goto LABEL_25;
          }

          if (CFEqual(ValueAtIndex, @"perf-unrestricted"))
          {
            *(*(a1 + 32) + 104) |= 0x40u;
            v10 = &dword_1000AC890;
            goto LABEL_25;
          }

          if (CFEqual(ValueAtIndex, @"Camera"))
          {
            *(*(a1 + 32) + 104) |= 0x80u;
            v10 = &dword_1000AC88C;
            goto LABEL_25;
          }

LABEL_26:
          if (v5 == ++v6)
          {
            goto LABEL_27;
          }
        }

        *(v9 + 104) |= 2u;
        v10 = &dword_1000AC878;
LABEL_25:
        ++*v10;
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  result = CFDictionaryGetValueIfPresent(*(*(a1 + 32) + 16), @"ActivityBudgeted", &value);
  if (result)
  {
    if (value == kCFBooleanTrue)
    {
      *(*(a1 + 32) + 104) |= 0x200u;
      ++dword_1000AC894;
    }
  }

  return result;
}

void sub_100003E64(uint64_t a1, int a2)
{
  v16 = 0;
  if (!*(a1 + 104))
  {
    return;
  }

  v4 = *(a1 + 40);
  v5 = dword_1000AD1AC;
  v6 = sub_100004878(a1, &v16);
  v7 = *(a1 + 40);
  if (v16 == 1)
  {
    v8 = dword_1000AD1AC | (1 << v7);
  }

  else
  {
    v9 = dword_1000AD1AC;
    v10 = 1 << v7;
    if ((dword_1000AD1AC & (1 << v7)) != 0)
    {
      if (*(a1 + 72))
      {
        if ((*a1 & 2) != 0)
        {
          *(a1 + 72) = 0;
          v11 = *(a1 + 56);
          if (v11)
          {
            dispatch_source_cancel(v11);
            v7 = *(a1 + 40);
            v9 = dword_1000AD1AC;
            v10 = 1 << v7;
          }
        }
      }
    }

    v8 = v9 & ~v10;
  }

  v12 = 1 << v4;
  dword_1000AD1AC = v8;
  if (v7 <= 0x11 && ((1 << v7) & 0x24220) != 0)
  {
    sub_10000CCF0();
  }

  v13 = v5 & v12;
  if (a2 == 1)
  {
    if ((v13 == 0) | v6 & 1)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a2)
  {
    if (((v13 == 0) & v6) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  if (!v6)
  {
    if (!v13)
    {
      return;
    }

LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  if (v13)
  {
    return;
  }

LABEL_21:
  v14 = 1;
LABEL_24:
  v15 = *(a1 + 40);
  if (v15 <= 0x13 && ((0xE9803u >> v15) & 1) != 0)
  {
    sub_10001AB30(dword_100078F80[v15], v14);
    sub_10001AB60();
    if (dword_1000AD190)
    {
      notify_post("com.apple.system.powermanagement.assertions");
    }
  }
}

CFTypeID sub_100003FFC(const void **a1)
{
  v2 = qword_1000ABAE0;
  result = CFDictionaryGetTypeID();
  if (v2)
  {
    v4 = result;
    result = CFGetTypeID(v2);
    if (result == v4)
    {
      v5 = a1[10];
      result = CFStringGetTypeID();
      if (v5)
      {
        v6 = result;
        result = CFGetTypeID(v5);
        if (result == v6)
        {
          valuePtr = 0;
          Value = CFDictionaryGetValue(qword_1000ABAE0, @"Default Limits");
          TypeID = CFDictionaryGetTypeID();
          if (Value && CFGetTypeID(Value) == TypeID)
          {
            v9 = CFDictionaryGetValue(Value, @"Asssertion Duration Limit");
            v10 = CFDictionaryGetValue(Value, @"Aggregate Assertion Limit");
            v11 = CFNumberGetTypeID();
            if (v9 && CFGetTypeID(v9) == v11)
            {
              CFNumberGetValue(v9, kCFNumberIntType, &valuePtr + 4);
            }

            v12 = CFNumberGetTypeID();
            if (v10 && CFGetTypeID(v10) == v12)
            {
              CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
            }
          }

          v13 = CFDictionaryGetValue(qword_1000ABAE0, a1[10]);
          result = CFDictionaryGetTypeID();
          if (v13 && (v14 = result, result = CFGetTypeID(v13), result == v14))
          {
            v15 = CFDictionaryGetValue(v13, @"Asssertion Duration Limit");
            v16 = CFDictionaryGetValue(v13, @"Aggregate Assertion Limit");
            v17 = CFNumberGetTypeID();
            if (v15 && CFGetTypeID(v15) == v17)
            {
              CFNumberGetValue(v15, kCFNumberIntType, a1 + 16);
            }

            result = CFNumberGetTypeID();
            if (v16)
            {
              v18 = result;
              result = CFGetTypeID(v16);
              if (result == v18)
              {
                return CFNumberGetValue(v16, kCFNumberIntType, a1 + 132);
              }
            }
          }

          else
          {
            v19 = valuePtr;
            *(a1 + 32) = HIDWORD(valuePtr);
            *(a1 + 33) = v19;
          }
        }
      }
    }
  }

  return result;
}

size_t sub_1000041E4(char *a1, size_t a2, char a3)
{
  snprintf(a1, a2, "[System:");
  if (sub_10000485C(1))
  {
    v6 = strlcat(a1, " PrevIdle", a2);
  }

  else
  {
    v6 = 0;
  }

  if (sub_10000485C(5))
  {
    v6 += strlcat(a1, " PrevDisp", a2);
  }

  if (sub_10000485C(7))
  {
    v6 += strlcat(a1, " PrevSleep", a2);
  }

  if (sub_10000485C(9))
  {
    v6 += strlcat(a1, " DeclUser", a2);
  }

  if (sub_10000485C(10))
  {
    v6 += strlcat(a1, " PushSrvc", a2);
  }

  if (sub_10000485C(11))
  {
    v6 += strlcat(a1, " BGTask", a2);
  }

  if (sub_10000485C(12))
  {
    v6 += strlcat(a1, " SysAct", a2);
  }

  if (sub_10000485C(13))
  {
    v6 += strlcat(a1, " SRPrevSleep", a2);
  }

  if (sub_10000485C(14))
  {
    v6 += strlcat(a1, " DispWake", a2);
  }

  if (sub_10000485C(16))
  {
    v6 += strlcat(a1, " IntPrevDisp", a2);
  }

  if (sub_10000485C(17))
  {
    v6 += strlcat(a1, " NetAcc", a2);
  }

  if (sub_10000485C(18))
  {
    v6 += strlcat(a1, " IPushSrvc", a2);
  }

  if ((a3 & 1) == 0)
  {
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    if (strlcat(a1, " kDisp", a2) + v6)
    {
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  v6 += strlcat(a1, " kCPU", a2);
  if ((a3 & 0x40) != 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (v6)
  {
    goto LABEL_29;
  }

LABEL_34:
  strlcat(a1, " No Assertions", a2);
LABEL_29:

  return strlcat(a1, "]", a2);
}

_DWORD *sub_100004460(_DWORD *result)
{
  if (dword_1000ABAD8)
  {
    v1 = result;
    if (!*(result + 8))
    {
      result = malloc_type_malloc(0x40uLL, 0xA5341FC3uLL);
      *(v1 + 8) = result;
      if (result)
      {
        *&v2 = 0x2626262626262626;
        *(&v2 + 1) = 0x2626262626262626;
        *(result + 2) = v2;
        *(result + 3) = v2;
        *result = v2;
        *(result + 1) = v2;
        v3 = *(v1 + 8);
        v4 = getpid();
        v5 = 0;
        v6 = v4;
        v7 = v1[24];
        *v3 = v6;
        *(v3 + 8) = v7;
        *(v3 + 16) = 4;
        *(v3 + 18) = 65538;
        *(v3 + 22) = 0;
        *(v3 + 24) = xmmword_100078F70;
        *(v3 + 40) = vnegq_f64(0);
        *(v3 + 56) = 0x8000000000000000;
        v8 = *(v1 + 8);
        v9 = *(v8 + 20);
        v10 = v8 + 32;
        do
        {
          if (v9)
          {
            *(v10 + v5) = 0;
          }

          v5 += 8;
        }

        while (v5 != 32);
        *(v1 + 2) = 0u;
        *(v1 + 3) = 0u;
        *v1 = 0u;
        *(v1 + 1) = 0u;

        return sub_10000229C(v7);
      }
    }
  }

  return result;
}

void sub_100004550(uint64_t a1, int a2)
{
  v2 = dword_1000AC878;
  v3 = -dword_1000AC87C;
  v5 = dword_1000AC88C;
  v4 = dword_1000AC890;
  v11[4] = a1;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = sub_100003B9C;
  v14 = &unk_1000994E0;
  v15 = a1;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007CB0;
  v11[3] = &unk_1000994E0;
  switch(a2)
  {
    case 2:
      sub_100007CB0(v11);
      v13(v12);
      break;
    case 1:
      sub_100007CB0(v11);
      break;
    case 0:
      sub_100003B9C(v12);
      break;
  }

  v6 = v5 != 0;
  v7 = sub_100002A58();
  dispatch_async(v7, &stru_10009A820);
  if ((v2 != v3) != (dword_1000AC878 + dword_1000AC87C != 0) || v6 != (dword_1000AC88C != 0))
  {
    v8 = sub_100002A58();
    dispatch_async(v8, &stru_10009A840);
  }

  if ((v4 != 0) != (dword_1000AC890 != 0))
  {
    v9 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Evaluating new PerfMode on gSysQualifier change.\n", v10, 2u);
    }

    sub_10001C310();
  }
}

void sub_100004710(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 52);
    v2 = *(a1 + 72);
    if (v2)
    {
      v3 = *(v2 + 96);
    }

    else
    {
      v3 = 0;
    }

    v4 = sub_100002A58();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004CB0;
    block[3] = &unk_1000994E0;
    v6 = v3;
    v7 = v1;
    dispatch_async(v4, block);
  }
}

uint64_t sub_1000047A8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(result + 24);
  v9[0] = *(result + 8);
  v9[1] = v6;
  do
  {
    if ((a2 >> v5))
    {
      v7 = *(v9 + v5);
      if (v7)
      {
        do
        {
          v8 = *v7;
          result = (*(a3 + 16))(a3);
          v7 = v8;
        }

        while (v8);
      }
    }

    ++v5;
  }

  while (v5 != 4);
  return result;
}

uint64_t sub_100004878(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = *(&unk_1000AC8A0 + 2 * v4);
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        if ((*v5 & 1) != 0 && !sub_100004D48())
        {
          v8 = *(v5 + 152) == 0;
        }

        else
        {
          if (*(v5 + 16))
          {
            v7 = 1;
            if (!a2)
            {
              goto LABEL_19;
            }

            goto LABEL_17;
          }

          v8 = *(v5 + 8) == 0;
        }

        v7 = !v8;
        if (!a2)
        {
          goto LABEL_19;
        }

LABEL_17:
        if (v5 == a1 && v7)
        {
          v6 = 1;
          *a2 = 1;
          return v6 & 1;
        }

LABEL_19:
        v9 = v7 ^ 1;
        if (a2)
        {
          v9 = 1;
        }

        if ((v9 & 1) == 0)
        {
          v6 = 1;
          return v6 & 1;
        }

        v6 |= v7;
        v5 = *(v5 + 112);
        if (!v5)
        {
          return v6 & 1;
        }
      }
    }
  }

  v6 = 0;
  return v6 & 1;
}

void sub_100004954()
{
  v0 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v1 = 1;
  do
  {
    v2 = v1;
    v3 = dword_100078F60[v0];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100004E98;
    v7[3] = &unk_10009A800;
    v7[4] = &v8;
    sub_1000047A8(&unk_1000ABB58 + 160 * v3, 3u, v7);
    v1 = 0;
    v0 = 1;
  }

  while ((v2 & 1) != 0);
  if (!dword_1000AD1A0)
  {
    notify_register_check("com.apple.powermanagement.restartpreventers", &dword_1000AD1A0);
  }

  v4 = *(v9 + 6);
  if (v4)
  {
    v5 = dword_1000AC898 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 || (!v4 ? (v6 = dword_1000AC898 == 0) : (v6 = 1), !v6))
  {
    dword_1000AC898 = *(v9 + 6);
    if (dword_1000AD1A0)
    {
      notify_set_state(dword_1000AD1A0, v4);
      notify_post("com.apple.powermanagement.restartpreventers");
    }
  }

  _Block_object_dispose(&v8, 8);
}

void sub_100004AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004AD4(int a1, int a2)
{
  v12 = 0;
  Value = CFDictionaryGetValue(qword_1000ABAC0, a1);
  if (Value)
  {
    v5 = Value;
    if ((Value[34] & 0x20) == 0)
    {
      if (Value[32])
      {
        sub_100004CBC(a1, a2, &v12);
        v6 = v12;
        if (v12)
        {
          if (*(&unk_1000ABB58 + 40 * v12[12] + 26) && !sub_100004D48() && sub_100007E48() && (!*(v6 + 40) || *(v6 + 40) - sub_100002AB4() > v5[32]))
          {
            sub_100007E08(v6);
            v7 = *(v6 + 96);
            if (!v7)
            {
              v8 = sub_100002A58();
              v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);
              handler[0] = _NSConcreteStackBlock;
              handler[1] = 3221225472;
              handler[2] = sub_100050088;
              handler[3] = &unk_10009A860;
              handler[4] = v5;
              handler[5] = v6;
              dispatch_source_set_event_handler(v7, handler);
              v10[0] = _NSConcreteStackBlock;
              v10[1] = 3221225472;
              v10[2] = sub_100050098;
              v10[3] = &unk_100099E18;
              v10[4] = v7;
              dispatch_source_set_cancel_handler(v7, v10);
              *(v6 + 96) = v7;
            }

            v9 = dispatch_time(0, 1000000000 * v5[32]);
            dispatch_source_set_timer(v7, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
            dispatch_resume(*(v6 + 96));
            *(v6 + 24) |= 0x100u;
          }
        }
      }
    }
  }
}

uint64_t sub_100004CBC(int a1, int a2, void **a3)
{
  v3 = 3758097090;
  v4 = (a2 & 0xFFFF7FFF);
  value = 0;
  if (v4 >> 11 <= 4 && CFDictionaryGetValueIfPresent(qword_1000AD1D8, v4, &value))
  {
    if (*(*(value + 9) + 96) == a1)
    {
      v3 = 0;
      *a3 = value;
    }

    else
    {
      return 3758097122;
    }
  }

  return v3;
}

uint64_t sub_100004D48()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  dispatch_assert_queue_not_V2(qword_1000ACCE0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004E14;
  block[3] = &unk_1000994A8;
  block[4] = &v3;
  dispatch_sync(qword_1000ACCE0, block);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100004DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004E14(uint64_t a1)
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  dispatch_assert_queue_V2(qword_1000ACCE0);
  v2 = 1;
  if (qword_1000ACFE0)
  {
    dispatch_assert_queue_V2(qword_1000ACCE0);
    if (qword_1000ACCF8)
    {
      if ((*(*qword_1000ACCF8 + 16) & 0x41) == 0x40)
      {
        v2 = 0;
      }
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v2;
}

uint64_t sub_100004E98(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 104) & 0x100) == 0)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

void sub_100004EB8(const void *a1, const __CFNumber *a2, uint64_t a3)
{
  v30 = 0.0;
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    valuePtr = 0;
    v7 = *(a3 + 48);
    if (CFEqual(a1, @"AssertLevel"))
    {
      v8 = CFNumberGetTypeID();
      if (a2 && CFGetTypeID(a2) == v8)
      {
        CFNumberGetValue(a2, kCFNumberIntType, &valuePtr);
        v9 = *(a3 + 24);
        if ((v9 & 2) == 0 || valuePtr != 255)
        {
          if (*(a3 + 24) & 2 | valuePtr)
          {
LABEL_38:
            CFDictionarySetValue(*(a3 + 16), a1, a2);
            return;
          }

          v10 = v9 | 2;
          goto LABEL_36;
        }

LABEL_35:
        v10 = v9 & 0xFFFFFFFD;
LABEL_36:
        *(a3 + 24) = v10;
        v22 = 2;
        goto LABEL_37;
      }
    }

    else
    {
      v11 = (&unk_1000ABB58 + 160 * v7);
      if (CFEqual(a1, @"TimeoutSeconds"))
      {
        v12 = CFNumberGetTypeID();
        if (a2 && CFGetTypeID(a2) == v12)
        {
          CFNumberGetValue(a2, kCFNumberDoubleType, &v30);
          v13 = v30;
          if ((*v11 & 0x10) != 0)
          {
            v14 = v11[12];
            if (v30 == 0.0 || v30 > v14)
            {
              v30 = v11[12];
              v13 = v14;
            }
          }

          if (v13 == 0.0)
          {
            v15 = 0;
          }

          else
          {
            v15 = sub_100002AB4() + v13;
          }

          *(a3 + 40) = v15;
          v9 = *(a3 + 24);
          if ((v9 & 2) == 0)
          {
            v22 = 1;
LABEL_37:
            *(a3 + 56) |= v22;
            goto LABEL_38;
          }

          goto LABEL_35;
        }
      }

      else if (CFEqual(a1, @"AppliesToLimitedPower"))
      {
        v16 = CFBooleanGetTypeID();
        if (a2 && CFGetTypeID(a2) == v16 && (*v11 & 1) != 0)
        {
          if (kCFBooleanTrue != a2 || (v17 = *(a3 + 24), (v17 & 4) != 0))
          {
            if (kCFBooleanFalse != a2)
            {
              goto LABEL_38;
            }

            v25 = *(a3 + 24);
            if ((v25 & 4) == 0)
            {
              goto LABEL_38;
            }

            v26 = *(v11 + 38);
            if (v26)
            {
              *(v11 + 38) = v26 - 1;
            }

            v18 = v25 & 0xFFFFFFFB;
          }

          else
          {
            ++*(v11 + 38);
            v18 = v17 | 4;
          }

          *(a3 + 24) = v18;
          v22 = 8;
          goto LABEL_37;
        }
      }

      else if (CFEqual(a1, @"AppliesOnLidClose"))
      {
        v19 = CFBooleanGetTypeID();
        if (a2 && CFGetTypeID(a2) == v19)
        {
          if (kCFBooleanTrue != a2 || (v20 = *(a3 + 24), (v20 & 8) != 0))
          {
            if (kCFBooleanFalse != a2)
            {
              goto LABEL_38;
            }

            v27 = *(a3 + 24);
            if ((v27 & 8) == 0)
            {
              goto LABEL_38;
            }

            v21 = v27 & 0xFFFFFFF7;
          }

          else
          {
            v21 = v20 | 8;
          }

          *(a3 + 24) = v21;
          v22 = 16;
          goto LABEL_37;
        }
      }

      else if (CFEqual(a1, @"ExitSilentRunning"))
      {
        v23 = CFBooleanGetTypeID();
        if (a2 && CFGetTypeID(a2) == v23)
        {
          if (kCFBooleanTrue != a2)
          {
            goto LABEL_38;
          }

          v24 = *(a3 + 24);
          if ((v24 & 0x200) != 0)
          {
            goto LABEL_38;
          }

          *(a3 + 24) = v24 | 0x200;
          v22 = 128;
          goto LABEL_37;
        }
      }

      else if (CFEqual(a1, @"AssertionOnBehalfOfPID"))
      {
        v28 = CFNumberGetTypeID();
        if (a2 && CFGetTypeID(a2) == v28)
        {
          v22 = 256;
          goto LABEL_37;
        }
      }

      else if (!CFEqual(a1, @"AssertType"))
      {
        if (CFEqual(a1, @"AssertName"))
        {
          v22 = 32;
        }

        else if (CFEqual(a1, @"ResourcesUsed") || CFEqual(a1, @"AllowsDeviceRestart"))
        {
          v22 = 64;
        }

        else
        {
          if (!CFEqual(a1, @"FrameworkBundleID"))
          {
            goto LABEL_38;
          }

          v22 = 512;
        }

        goto LABEL_37;
      }
    }
  }
}

uint64_t sub_100005290(int a1, _OWORD *a2, int a3, const UInt8 *a4, unsigned int a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, int *a9)
{
  pidp = -1;
  v16 = a2[1];
  v17 = -536870206;
  *atoken.val = *a2;
  *&atoken.val[4] = v16;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  *a6 = 0;
  *a7 = 0;
  *a8 = 0;
  v18 = a5;
  v19 = CFDataCreateWithBytesNoCopy(0, a4, a5, kCFAllocatorNull);
  if (v19 && (v20 = v19, v21 = CFPropertyListCreateWithData(0, v19, 0, 0, 0), CFRelease(v20), v21))
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v21) == TypeID)
    {
      v23 = a2[1];
      *atoken.val = *a2;
      *&atoken.val[4] = v23;
      if (sub_100001CFC(&atoken, v21))
      {
        v17 = sub_100005510(pidp, a3, v21, a8);
      }

      else
      {
        v17 = -536870207;
      }
    }

    *a9 = v17;
    CFRelease(v21);
  }

  else
  {
    *a9 = -536870206;
  }

  vm_deallocate(mach_task_self_, a4, v18);
  return 0;
}

uint64_t sub_100005410(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 56)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 60) || *(result + 64) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 52);
  v7 = *(result + 28);
  v8 = *(result + 96);
  v9[0] = *(result + 80);
  v9[1] = v8;
  result = sub_100005290(v5, v9, v6, v7, v3, (a2 + 36), (a2 + 40), (a2 + 44), (a2 + 48));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 52;
  }

  return result;
}

uint64_t sub_100005510(int a1, int a2, const __CFDictionary *a3, _DWORD *a4)
{
  v33 = 0;
  v7 = sub_100004CBC(a1, a2, &v33);
  if (!v7)
  {
    v7 = 3758097122;
    Value = CFDictionaryGetValue(qword_1000ABAC0, a1);
    if (!Value)
    {
      return 3758097090;
    }

    if ((Value[136] & 0x80000000) == 0)
    {
      v10 = v33;
      v11 = CFDictionaryGetValue(qword_1000ABAC0, v33[20]);
      if (!v11 || (v11[136] & 0x80000000) == 0)
      {
        *(v10 + 14) = 0;
        v12 = &unk_1000ABB58 + 160 * *(v10 + 12);
        v13 = *(v10 + 6);
        CFDictionaryApplyFunction(a3, sub_100004EB8, v10);
        if (a4)
        {
          *a4 = *(v12 + 39);
        }

        v14 = *(v10 + 14);
        if ((v14 & 0x20) != 0)
        {
          sub_100003488(9, v10);
          v14 = *(v10 + 14);
        }

        v15 = *(v10 + 6);
        if ((v14 & 2) != 0)
        {
          if ((v15 & 2) != 0)
          {
            if (v13)
            {
              sub_100009574(v10, v12, 1, 1);
            }

            else
            {
              sub_100007FB8(v10, v12, 1);
            }

            v19 = v12 + 24;
            v20 = *(v12 + 3);
            *v10 = v20;
            if (v20)
            {
              *(v20 + 8) = v10;
            }

            *v19 = v10;
            v10[1] = v19;
            *(v10 + 6) = v10[3] & 0xFFFFFFFC | 2;
            if (*(v10 + 12) == 5)
            {
              v21 = *(v10[9] + 96);
              if (v21 != getpid())
              {
                sub_10004F8DC();
              }
            }

            v22 = *(v12 + 16);
            if (v22)
            {
              v22(v12, 1);
            }

            v18 = 7;
          }

          else
          {
            v16 = *v10;
            v17 = v10[1];
            if (*v10)
            {
              *(v16 + 8) = v17;
            }

            *v17 = v16;
            *(v10 + 6) = v15;
            CFDictionaryRemoveValue(v10[2], @"AssertTimedOutWhen");
            CFDictionaryRemoveValue(v10[2], @"AssertStartWhen");
            sub_1000022DC(v10);
            v18 = 8;
          }

          sub_100003488(v18, v10);
        }

        else
        {
          if ((v15 & 2) != 0)
          {
            return 0;
          }

          if (v14)
          {
            if (v13)
            {
              sub_100009574(v10, v12, 1, 0);
            }

            else
            {
              sub_100007FB8(v10, v12, 0);
            }

            v10[4] = sub_100002AB4();
            Current = CFAbsoluteTimeGetCurrent();
            v24 = CFDateCreate(0, Current);
            if (v24)
            {
              v25 = v24;
              CFDictionarySetValue(v10[2], @"AssertStartWhen", v24);
              CFRelease(v25);
            }

            if (v10[5])
            {
              sub_100008FEC(v10, v12, 1, 0);
            }

            else
            {
              sub_100002DB4(v10, v12, 0);
            }

            if (*(v10 + 12) == 9)
            {
              v26 = sub_10005C9D0();
              (*(v12 + 16))(v12, 0);
              if ((v26 & 1) == 0)
              {
                sub_100003488(8, v10);
              }
            }

            v27 = *(v12 + 16);
            if (v27)
            {
              v27(v12, 2);
            }
          }

          if ((v10[7] & 8) != 0)
          {
            v28 = *(v12 + 16);
            if (v28)
            {
              v29 = ((*(v10 + 6) >> 2) & 1) == 0;
              v28(v12, v29);
              sub_10000289C(v10, v29);
            }
          }

          if ((v10[7] & 0x10) != 0)
          {
            v30 = *(v12 + 16);
            if (v30)
            {
              v30(v12, ((*(v10 + 6) >> 3) & 1) == 0);
            }
          }

          v31 = *(v10 + 14);
          if ((v31 & 0x80) != 0)
          {
            v32 = *(v12 + 16);
            if (v32)
            {
              v32(v12, 2);
              v31 = *(v10 + 14);
            }
          }

          if ((v31 & 0x40) != 0)
          {
            sub_100004550(v10, 2);
          }
        }

        if (dword_1000AD1A4)
        {
          notify_post("com.apple.system.powermanagement.assertions.anychange");
        }

        return 0;
      }
    }
  }

  return v7;
}

void sub_100005874(id a1, OS_xpc_object *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_connection)
  {
    v3 = sub_100002A58();
    xpc_connection_set_target_queue(a2, v3);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100005920;
    handler[3] = &unk_100099D48;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }
}

void sub_100005920(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    value = xpc_dictionary_get_value(object, "userActivityRegister");
    if (value)
    {
      v5 = value;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10006E9DC(a1);
      }

      sub_10005D6C8(*(a1 + 32), v5);
    }

    else
    {
      v8 = xpc_dictionary_get_value(object, "userActivityTimeout");
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_10006EA58(a1);
        }

        sub_10005D99C(*(a1 + 32), v9);
      }

      else
      {
        v10 = xpc_dictionary_get_value(object, "claimSystemWakeEvent");
        if (v10)
        {
          v11 = v10;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006EAD4(a1);
          }

          sub_10005E1C8(*(a1 + 32), v11);
        }

        else if (xpc_dictionary_get_value(object, "assertionCreate"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006EB50(a1);
          }

          sub_100008820(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "assertionRelease"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006EBCC(a1);
          }

          sub_100008C18(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "assertionProperties"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006EC48(a1);
          }

          sub_10004D83C(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "assertionActivityLog"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006ECC4(a1);
          }

          sub_1000097E0(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "assertionInitialConnection"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006ED40(a1);
          }

          sub_10004DAC8(*(a1 + 32));
        }

        else if (xpc_dictionary_get_value(object, "assertionFeatureSupported"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006EDBC(a1);
          }

          sub_1000085A0(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "assertionCopyActivityUpdate"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006EE38(a1);
          }

          sub_100012910(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "adapterDetails"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006EEB4(a1);
          }

          sub_100006340(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "powerInfoPrecise"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006EF30(a1);
          }

          sub_100010AD4(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "chargeSocLimit"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006EFAC(a1);
          }

          sub_10002FDC0(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "setBatteryDofu"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F028(a1);
          }

          sub_100044334(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "batteryGaugingMitigation"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F0A4(a1);
          }

          sub_10005C190(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "batteryChargingIconoGraphy"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F120(a1);
          }

          sub_10001623C(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "getBatteryHealthState"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F19C(a1);
          }

          sub_100042804(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "customBatteryProps"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F218(a1);
          }

          sub_10005E704(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "resetCustomBatteryProps"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F294(a1);
          }

          sub_10005E570(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "assertionSetState"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F310(a1);
          }

          sub_10004DBC4(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "wakeData"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F38C(a1);
          }

          sub_10001BDC8(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "batteryHeatMapData"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F408(a1);
          }

          sub_10002EAD8(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "batteryCycleCountData"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F484(a1);
          }

          sub_10002EE08(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "setBHUpdateTimeDelta"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F500(a1);
          }

          sub_100042610(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "BDCXPCCopyDefaults"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F57C(a1);
          }

          sub_10003CF50(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "setSPNRequeryDelta"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F5F8(a1);
          }

          sub_1000258B8(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "batteryKioskModeData"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F674(a1);
          }

          sub_10002F008(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "systemAssertionTimeout"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F6F0(a1);
          }

          sub_100053A58(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "assertionActiveAsyncByProcess"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F76C(a1);
          }

          sub_10004D6F0(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "dominoState"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F7E8(a1);
          }

          sub_10005D380(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "onenessState"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F864(a1);
          }

          sub_10005D584(*(a1 + 32), object);
        }

        else if (xpc_dictionary_get_value(object, "assertionUpdateCategoryPolicy"))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10006F8E0(a1);
          }

          sub_100053008(*(a1 + 32), object);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10006F95C(a1);
        }
      }
    }
  }

  else if (xpc_get_type(object) == &_xpc_type_error)
  {
    v6 = *(a1 + 32);
    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10006E92C(string, v6);
    }

    sub_100006294(v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E8A4(a1);
  }
}

void sub_100006294(_xpc_connection_s *a1)
{
  if (a1)
  {
    v2 = *(&xmmword_1000AD3C0 + 1);
    while (v2)
    {
      v3 = v2;
      v2 = *v2;
      v4 = v3[2];
      if (v4 == a1)
      {
        v5 = v3[1];
        if (v2)
        {
          v2[1] = v5;
        }

        *v5 = v2;
        xpc_release(v4);
        free(v3);
        v6 = qword_1000AC9A0;
        if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
        {
          sub_10006E2C8(a1, v6);
        }

        return;
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_ERROR))
  {
    sub_10006E354();
  }
}

void sub_100006340(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    reply = xpc_dictionary_create_reply(v4);
    v7 = reply;
    if (reply)
    {
      v8 = qword_1000ACCE0;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100006470;
      v9[3] = &unk_1000992A0;
      v10 = reply;
      v11 = v3;
      dispatch_sync(v8, v9);
    }

    else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_100068E04();
    }
  }

  else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_1000696A0();
  }
}

void sub_100006470(uint64_t a1)
{
  v2 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(*(a1 + 32), "adapterDetails", v2);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
  {
    sub_100069710();
  }
}

BOOL sub_1000064E4(_OWORD *a1, const __CFString *a2)
{
  error = 0;
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = sub_100006580(v9);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = SecTaskCopyValueForEntitlement(v4, a2, &error);
  CFRelease(v5);
  v7 = kCFBooleanTrue == v6;
  if (v6)
  {
    CFRelease(v6);
  }

  if (error)
  {
    CFRelease(error);
  }

  return v7;
}

SecTaskRef sub_100006580(_OWORD *a1)
{
  if (qword_1000AD4F8 != -1)
  {
    sub_10001C444();
  }

  v2 = [NSData dataWithBytes:a1 length:32];
  v3 = [qword_1000AD4F0 objectForKey:v2];
  if (v3)
  {
    goto LABEL_6;
  }

  v4 = a1[1];
  *v7.val = *a1;
  *&v7.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v7);
  if (v5)
  {
    v3 = [[SecTaskWrap alloc] initWithSecTaskRef:v5];
    CFRelease(v5);
    [qword_1000AD4F0 setObject:v3 forKey:v2];
LABEL_6:
    v5 = [(SecTaskWrap *)v3 secTask];
  }

  return v5;
}

void sub_100006698(uint64_t *a1)
{
  if (a1)
  {
    if (((a1 == &qword_1000AB8B8) & byte_1000ACCA8) == 0)
    {
      if (a1[3])
      {
        v2 = *a1;
        if (*a1)
        {
          if (CFArrayGetCount(v2))
          {
            Current = CFAbsoluteTimeGetCurrent();
            v4 = CFDateCreate(0, Current);
            if (CFArrayGetCount(*a1) >= 1)
            {
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*a1, 0);
                if (sub_1000074F8(ValueAtIndex, v4))
                {
                  break;
                }

                v6 = CFArrayGetValueAtIndex(*a1, 0);
                v7 = qword_1000AB7F0;
                if (os_log_type_enabled(qword_1000AB7F0, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v9 = v6;
                  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Purged past event: %{public}@\n", buf, 0xCu);
                }

                CFArrayRemoveValueAtIndex(*a1, 0);
                --dword_1000ACC98;
              }

              while (CFArrayGetCount(*a1) > 0);
            }

            CFRelease(v4);
          }
        }
      }
    }
  }
}

uint64_t sub_100006820(CFArrayRef *a1, const void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  TypeID = CFArrayGetTypeID();
  if (CFGetTypeID(v2) != TypeID)
  {
    return 0;
  }

  Count = CFArrayGetCount(*a1);
  if (Count < 1)
  {
    return 0;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, v8);
    v10 = sub_100006EE8(a2, ValueAtIndex);
    if (v10)
    {
      if (v10 == kCFCompareLessThan)
      {
        return 0;
      }

      goto LABEL_9;
    }

    Value = CFDictionaryGetValue(a2, @"scheduledby");
    v12 = CFDictionaryGetValue(ValueAtIndex, @"scheduledby");
    if (CFEqual(Value, v12))
    {
      break;
    }

LABEL_9:
    if (v7 == ++v8)
    {
      return 0;
    }
  }

  for (i = 0; i != 48; i += 8)
  {
    v15 = (*(&off_1000AB1C8 + i))[1];
    if (v15 && CFEqual(ValueAtIndex, v15))
    {
      CFRelease((*(&off_1000AB1C8 + i))[1]);
      (*(&off_1000AB1C8 + i))[1] = 0;
    }
  }

  if (CFDictionaryGetValue(ValueAtIndex, @"UserVisible") == kCFBooleanTrue)
  {
    notify_post("com.apple.system.powermanagement.uservisiblepowerevent");
  }

  CFArrayRemoveValueAtIndex(*a1, v8);
  --dword_1000ACC98;
  return 1;
}

const __CFString *sub_10000699C(const __CFDictionary *a1)
{
  v1 = &stru_10009BE60;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"eventtype");
    TypeID = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        v4 = Value;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return v4;
    }
  }

  return v1;
}

uint64_t sub_100006A0C(uint64_t a1, _OWORD *a2, const UInt8 *a3, unsigned int a4, int a5, int *a6)
{
  pidp = 0;
  euidp = 0;
  *a6 = 0;
  v11 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v11;
  audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, &pidp, 0, 0);
  v12 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v12;
  if (sub_1000064E4(&atoken, @"com.apple.iokit.wakerequest"))
  {
    euidp = 0;
  }

  if (dword_1000ACC98 >= 0x3E8)
  {
    *a6 = -536870181;
    goto LABEL_39;
  }

  if (a5 == 2)
  {
    v13 = a2[1];
    *atoken.val = *a2;
    *&atoken.val[4] = v13;
    v38 = 0;
    audit_token_to_au32(&atoken, 0, &v38, 0, 0, 0, 0, 0, 0);
    for (i = 0; i != 48; i += 8)
    {
      v15 = *(&off_1000AB1C8 + i);
      v16 = *v15;
      if (*v15)
      {
        v17 = *(v15 + 8);
        if (v17)
        {
          CFRelease(v17);
          (*(&off_1000AB1C8 + i))[1] = 0;
          v16 = **(&off_1000AB1C8 + i);
        }

        CFArrayRemoveAllValues(v16);
        **(&off_1000AB1C8 + i) = 0;
        if (CFEqual((*(&off_1000AB1C8 + i))[3], @"wakepoweron"))
        {
          sub_1000071C8(&qword_1000AB8B8);
          v18 = &unk_1000AB8F8;
        }

        else
        {
          v18 = *(&off_1000AB1C8 + i);
        }

        sub_1000071C8(v18);
      }
    }

    dword_1000ACC98 = 0;
    *a6 = 0;
    v19 = qword_1000AB7F0;
    if (os_log_type_enabled(qword_1000AB7F0, OS_LOG_TYPE_DEFAULT))
    {
      atoken.val[0] = 67109120;
      atoken.val[1] = pidp;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Removed all wake request based on request from pid %d\n", &atoken, 8u);
    }

    goto LABEL_39;
  }

  v20 = CFDataCreate(0, a3, a4);
  if (!v20)
  {
    v21 = 0;
LABEL_34:
    v33 = -536870206;
    goto LABEL_35;
  }

  v21 = CFPropertyListCreateWithData(0, v20, 1uLL, 0, 0);
  if (!v21)
  {
    goto LABEL_34;
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v21) != TypeID)
  {
    goto LABEL_34;
  }

  Value = CFDictionaryGetValue(v21, @"scheduledby");
  if (!Value || (v24 = Value, v25 = CFStringGetTypeID(), CFGetTypeID(v24) != v25) || CFEqual(v24, &stru_10009BE60))
  {
    if (proc_name(pidp, &atoken, 0x400u))
    {
      v26 = CFStringCreateWithCString(0, &atoken, 0);
      if (v26)
      {
        v27 = v26;
        CFDictionarySetValue(v21, @"scheduledby", v26);
        CFRelease(v27);
      }
    }
  }

  v28 = CFNumberCreate(0, kCFNumberIntType, &pidp);
  if (v28)
  {
    v29 = v28;
    CFDictionarySetValue(v21, @"appPID", v28);
    CFRelease(v29);
  }

  v30 = CFDictionaryGetValue(v21, @"eventtype");
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    while (!CFEqual(v31, (*(&off_1000AB1C8 + v32))[3]))
    {
      v32 += 8;
      if (v32 == 48)
      {
        goto LABEL_34;
      }
    }

    *a6 = 0;
    if (a5)
    {
      if (a5 == 1)
      {
        sub_100007104(*(&off_1000AB1C8 + v32), v21);
        *a6 = 0;
        if (os_log_type_enabled(qword_1000AB7F0, OS_LOG_TYPE_DEBUG))
        {
          sub_1000684C0();
        }

        if (CFDictionaryGetValue(v21, @"UserVisible") == kCFBooleanTrue)
        {
          notify_post("com.apple.system.powermanagement.uservisiblepowerevent");
        }
      }

LABEL_50:
      if (CFEqual(v31, @"wakepoweron"))
      {
        sub_1000071C8(&qword_1000AB8B8);
        v35 = &unk_1000AB8F8;
      }

      else
      {
        v35 = *(&off_1000AB1C8 + v32);
      }

      sub_1000071C8(v35);
      goto LABEL_36;
    }

    if (sub_100006820(*(&off_1000AB1C8 + v32), v21))
    {
      if (os_log_type_enabled(qword_1000AB7F0, OS_LOG_TYPE_DEBUG))
      {
        sub_10006844C();
      }

      goto LABEL_50;
    }

    v33 = -536870160;
LABEL_35:
    *a6 = v33;
    if (!v20)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  *a6 = -536870206;
LABEL_36:
  CFRelease(v20);
LABEL_37:
  if (v21)
  {
    CFRelease(v21);
  }

LABEL_39:
  vm_deallocate(mach_task_self_, a3, a4);
  return 0;
}

CFComparisonResult sub_100006EE8(const void *Value, const void *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) != TypeID)
    {
      Value = 0;
    }

    v5 = CFDictionaryGetTypeID();
    if (!a2)
    {
      goto LABEL_25;
    }

    v6 = v5;
  }

  else
  {
    v7 = CFDictionaryGetTypeID();
    if (!a2)
    {
      return 1;
    }

    v6 = v7;
    Value = 0;
  }

  if (CFGetTypeID(a2) != v6)
  {
    a2 = 0;
  }

  if (!Value)
  {
    return 1;
  }

  if (!a2)
  {
    return -1;
  }

  Value = CFDictionaryGetValue(Value, @"time");
  v8 = CFDateGetTypeID();
  if (Value && CFGetTypeID(Value) != v8)
  {
    Value = 0;
  }

  v9 = CFDictionaryGetValue(a2, @"time");
  v10 = CFDateGetTypeID();
  if (!v9)
  {
LABEL_25:
    if (Value)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  if (CFGetTypeID(v9) == v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (!Value)
  {
    return 1;
  }

  if (!v11)
  {
    return -1;
  }

  return CFDateCompare(Value, v11, 0);
}

uint64_t sub_100007014(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 60) || *(result + 64) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 56);
  v8 = *(result + 96);
  v9[0] = *(result + 80);
  v9[1] = v8;
  result = sub_100006A0C(v5, v9, v6, v3, v7, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

void sub_100007104(uint64_t *a1, const void *a2)
{
  v4 = *a1;
  TypeID = CFArrayGetTypeID();
  if (v4 && CFGetTypeID(v4) == TypeID)
  {
    sub_100006698(a1);
    CFArrayAppendValue(*a1, a2);
    v6 = *a1;
    v8.length = CFArrayGetCount(*a1);
    v8.location = 0;
    CFArraySortValues(v6, v8, sub_100006EE8, 0);
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    *a1 = Mutable;
    CFArrayAppendValue(Mutable, a2);
  }

  ++dword_1000ACC98;
}

void sub_1000071C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = sub_100007594(a1, v3);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *a1;
    if (!*a1)
    {
LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }
  }

  Count = CFArrayGetCount(v4);
  if (!Count)
  {
    goto LABEL_13;
  }

  v6 = Count;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = CFDateCreate(0, Current + *&qword_1000AB1F8);
  if (v6 < 1)
  {
LABEL_12:
    CFRelease(v8);
    goto LABEL_13;
  }

  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v9);
    if (sub_1000074F8(ValueAtIndex, v8))
    {
      break;
    }

    if (v6 == ++v9)
    {
      goto LABEL_12;
    }
  }

  CFRelease(v8);
  v11 = CFArrayGetValueAtIndex(v4, v9);
  CFRetain(v11);
LABEL_14:
  v12 = sub_100007650(*(a1 + 24));
  if (!v12)
  {
    v13 = v11;
    goto LABEL_19;
  }

  v13 = v12;
  if ((sub_100006EE8(v12, v11) + 1) > 1)
  {
    v14 = v13;
    v13 = v11;
  }

  else
  {
    v14 = v11;
    if (!v11)
    {
LABEL_19:
      if (!v4)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  CFRelease(v14);
  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (*(a1 + 32))
  {
    CFRelease(v4);
  }

LABEL_25:
  if (v13)
  {
    v15 = *(a1 + 48);
    if (v15)
    {
      v15(v13);
    }

    v17 = (a1 + 8);
    v16 = *(a1 + 8);
    if (v16)
    {
      CFRelease(v16);
    }

    *v17 = v13;
    Value = CFDictionaryGetValue(v13, @"time");
    TypeID = CFDateGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        v20 = CFAbsoluteTimeGetCurrent();
        v21 = CFDateCreate(0, v20);
        if (v21)
        {
          v22 = v21;
          TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(Value, v21);
          if (TimeIntervalSinceDate <= 0.001 || TimeIntervalSinceDate >= 9223372040.0)
          {
            v30 = qword_1000AB7F0;
            if (os_log_type_enabled(qword_1000AB7F0, OS_LOG_TYPE_ERROR))
            {
              sub_1000682D8(v17, v30);
            }
          }

          else
          {
            v24 = sub_100002A58();
            v25 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v24);
            *(a1 + 16) = v25;
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 0x40000000;
            handler[2] = sub_100041104;
            handler[3] = &unk_10009A120;
            handler[4] = a1;
            dispatch_source_set_event_handler(v25, handler);
            v26 = *(a1 + 16);
            if (v26)
            {
              dispatch_resume(v26);
              v27 = *(a1 + 16);
              v28 = dispatch_time(0xFFFFFFFFFFFFFFFELL, (TimeIntervalSinceDate * 1000000000.0));
              dispatch_source_set_timer(v27, v28, 0xFFFFFFFFFFFFFFFFLL, 0);
              if (os_log_type_enabled(qword_1000AB7F0, OS_LOG_TYPE_DEBUG))
              {
                sub_100068354(v17);
              }
            }
          }

          CFRelease(v22);
        }
      }
    }
  }

  else
  {
    v29 = *(a1 + 56);
    if (v29)
    {

      v29(0);
    }
  }
}

BOOL sub_1000074F8(const __CFDictionary *a1, const __CFDate *a2)
{
  TypeID = CFDictionaryGetTypeID();
  result = 0;
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      Value = CFDictionaryGetValue(a1, @"time");
      v6 = CFDateGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v6 && CFDateCompare(Value, a2, 0) != kCFCompareLessThan)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

__CFArray *sub_100007594(const __CFArray **a1, CFArrayRef *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (v4)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v4)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, v3);
    v9.length = CFArrayGetCount(*a2);
    v9.location = 0;
    CFArrayAppendArray(MutableCopy, *a2, v9);
    v8.length = CFArrayGetCount(MutableCopy);
    v8.location = 0;
    CFArraySortValues(MutableCopy, v8, sub_100006EE8, 0);
    return MutableCopy;
  }

  v4 = v3;
LABEL_9:

  return CFRetain(v4);
}

__CFDictionary *sub_100007650(const void *a1)
{
  at = 0.0;
  v29 = 0;
  v30 = 0;
  if (CFEqual(a1, @"sleep") || CFEqual(a1, @"shutdown") || CFEqual(a1, @"restart"))
  {
    v2 = &qword_1000ACC20;
  }

  else
  {
    if (!CFEqual(a1, @"poweron") && !CFEqual(a1, @"wake"))
    {
      return 0;
    }

    v2 = &qword_1000ACC28;
  }

  v3 = *v2;
  v4 = sub_10000699C(*v2);
  if (!CFEqual(a1, v4) && (!CFEqual(v4, @"wakepoweron") || !CFEqual(a1, @"poweron") && !CFEqual(a1, @"wake")))
  {
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v3);
  if (MutableCopy)
  {
    v6 = sub_100037B04();
    Current = CFAbsoluteTimeGetCurrent();
    CFCalendarDecomposeAbsoluteTime(v6, Current, "E", &v29);
    if (v29 == 1)
    {
      v8 = 7;
    }

    else
    {
      v8 = v29 - 1;
    }

    LODWORD(v29) = v8;
    LODWORD(valuePtr) = 0;
    Value = CFDictionaryGetValue(v3, @"weekdays");
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    v10 = LODWORD(valuePtr);
    if (LODWORD(valuePtr))
    {
      if (!v3)
      {
        goto LABEL_14;
      }

      LODWORD(valuePtr) = 0;
      v11 = CFDictionaryGetValue(v3, @"weekdays");
      CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
      if (((LODWORD(valuePtr) >> (v8 - 1)) & 1) == 0)
      {
        goto LABEL_14;
      }

      v33 = 0;
      v12 = sub_100037B04();
      v13 = CFAbsoluteTimeGetCurrent();
      CFCalendarDecomposeAbsoluteTime(v12, v13, "Hm", &v33 + 4, &v33);
      v14 = v33 + 60 * HIDWORD(v33);
      LODWORD(valuePtr) = 0;
      v15 = CFDictionaryGetValue(v3, @"time");
      CFNumberGetValue(v15, kCFNumberIntType, &valuePtr);
      v16 = 0;
      if (60 * LODWORD(valuePtr) < (60 * v14 + 5))
      {
LABEL_14:
        v17 = v8;
        do
        {
          v18 = v17 % 7;
          v17 = v17 % 7 + 1;
        }

        while (((v10 >> v18) & 1) == 0);
        v19 = (v18 - v8 + 8) % 7;
        if (v19)
        {
          v16 = v19;
        }

        else
        {
          v16 = 7;
        }
      }
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
    }

    valuePtr = CFAbsoluteTimeGetCurrent();
    v20 = sub_100037B04();
    CFCalendarAddComponents(v20, &valuePtr, 0, "d", v16);
    v21 = sub_100037B04();
    CFCalendarDecomposeAbsoluteTime(v21, valuePtr, "yMd", &v30 + 4, &v30, &v29 + 4);
    HIDWORD(v33) = 0;
    v22 = CFDictionaryGetValue(v3, @"time");
    CFNumberGetValue(v22, kCFNumberIntType, &v33 + 4);
    v23 = (SHIDWORD(v33) / 60);
    v24 = (SHIDWORD(v33) % 60);
    v25 = sub_100037B04();
    CFCalendarComposeAbsoluteTime(v25, &at, "yMdHms", HIDWORD(v30), v30, HIDWORD(v29), v23, v24, 0);
    v26 = CFDateCreate(0, at);
    if (v26)
    {
      v27 = v26;
      CFDictionarySetValue(MutableCopy, @"time", v26);
      CFDictionarySetValue(MutableCopy, @"scheduledby", @"Repeating");
      CFRelease(v27);
    }
  }

  return MutableCopy;
}

uint64_t sub_100007A0C(int a1, int a2, _DWORD *a3)
{
  v9 = 0;
  v4 = sub_100004CBC(a1, a2, &v9);
  if (!v4)
  {
    v5 = v9;
    v6 = v9[15];
    if (v6)
    {
      v9[15] = --v6;
    }

    if (a3)
    {
      *a3 = v6;
      v6 = v5[15];
    }

    if (!v6)
    {
      sub_100007AB8(v5, 1);
      v7 = *(v5 + 9);
      if (*(v7 + 144))
      {
        *(v7 + 144) = 0;
      }

      sub_100007BA0(v5, 2);
      if (dword_1000AD1A4)
      {
        notify_post("com.apple.system.powermanagement.assertions.anychange");
      }
    }
  }

  return v4;
}

void sub_100007AB8(uint64_t a1, int a2)
{
  v4 = &unk_1000ABB58 + 160 * *(a1 + 48);
  v5 = *(a1 + 24);
  if (v5)
  {
    sub_100009574(a1, &unk_1000ABB58 + 160 * *(a1 + 48), 1, 1);
  }

  else
  {
    if ((v5 & 2) != 0)
    {
      v8 = *a1;
      v9 = *(a1 + 8);
      if (*a1)
      {
        *(v8 + 8) = v9;
      }

      *v9 = v8;
      *(a1 + 24) = v5 & 0xFFFFFFFC;
      if (a2)
      {
        goto LABEL_9;
      }

      return;
    }

    sub_100007FB8(a1, &unk_1000ABB58 + 160 * *(a1 + 48), 1);
  }

  if (*(a1 + 48) == 5)
  {
    v6 = *(*(a1 + 72) + 96);
    if (v6 != getpid())
    {
      sub_10004F8DC();
    }
  }

  if (a2)
  {
LABEL_9:
    v7 = *(v4 + 16);
    if (v7)
    {

      v7(v4, 1);
    }
  }
}

void sub_100007BA0(unsigned int *a1, int a2)
{
  v2 = a1[13];
  value = 0;
  if ((v2 & 0x80000000) == 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFF7FFFLL);
    if ((v2 & 0xFFFF7FFF) <= 10239 && CFDictionaryGetValueIfPresent(qword_1000AD1D8, v3, &value) && value == a1)
    {
      a1[15] = 0;
      if (CFDictionaryGetValue(*(a1 + 2), @"AsyncClientAssertionId"))
      {
        v7 = 14;
      }

      else
      {
        v7 = a2;
      }

      sub_100003488(v7, a1);
      CFDictionaryRemoveValue(qword_1000AD1D8, v3);
      v8 = *(a1 + 2);
      if (v8)
      {
        CFRelease(v8);
      }

      sub_100007E54(*(*(a1 + 9) + 96));
      v9 = *(a1 + 11);
      if (v9)
      {
        sub_100007E54(*(v9 + 96));
      }

      v10 = *(a1 + 12);
      if (v10)
      {
        v11 = a1[6];
        if ((v11 & 0x100) == 0)
        {
          a1[6] = v11 | 0x100;
          dispatch_resume(v10);
          v10 = *(a1 + 12);
        }

        dispatch_source_cancel(v10);
      }

      *(a1 + 5) = 0u;
      *(a1 + 6) = 0u;
      *(a1 + 3) = 0u;
      *(a1 + 4) = 0u;
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      *a1 = 0u;
      free(a1);
    }
  }
}

uint64_t sub_100007CB0(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 104);
  if ((v2 & 2) != 0)
  {
    *(v1 + 104) = v2 & 0xFFFD;
    if (dword_1000AC878)
    {
      --dword_1000AC878;
    }
  }

  v3 = *(result + 32);
  v4 = *(v3 + 104);
  if ((v4 & 4) != 0)
  {
    *(v3 + 104) = v4 & 0xFFFB;
    if (dword_1000AC87C)
    {
      --dword_1000AC87C;
    }
  }

  v5 = *(result + 32);
  v6 = *(v5 + 104);
  if ((v6 & 8) != 0)
  {
    *(v5 + 104) = v6 & 0xFFF7;
    if (dword_1000AC880)
    {
      --dword_1000AC880;
    }
  }

  v7 = *(result + 32);
  v8 = *(v7 + 104);
  if ((v8 & 0x10) != 0)
  {
    *(v7 + 104) = v8 & 0xFFEF;
    if (dword_1000AC884)
    {
      --dword_1000AC884;
    }
  }

  v9 = *(result + 32);
  v10 = *(v9 + 104);
  if ((v10 & 0x20) != 0)
  {
    *(v9 + 104) = v10 & 0xFFDF;
    if (dword_1000AC888)
    {
      --dword_1000AC888;
    }
  }

  v11 = *(result + 32);
  v12 = *(v11 + 104);
  if ((v12 & 0x40) != 0)
  {
    *(v11 + 104) = v12 & 0xFFBF;
    if (dword_1000AC890)
    {
      --dword_1000AC890;
    }
  }

  v13 = *(result + 32);
  v14 = *(v13 + 104);
  if ((v14 & 0x80) != 0)
  {
    *(v13 + 104) = v14 & 0xFF7F;
    if (dword_1000AC88C)
    {
      --dword_1000AC88C;
    }
  }

  v15 = *(result + 32);
  v16 = *(v15 + 104);
  if ((v16 & 0x100) != 0)
  {
    *(v15 + 104) = v16 & 0xFEFF;
    v15 = *(result + 32);
    v16 = *(v15 + 104);
  }

  if ((v16 & 0x200) != 0)
  {
    *(v15 + 104) = v16 & 0xFDFF;
    if (dword_1000AC894)
    {
      --dword_1000AC894;
    }
  }

  return result;
}

void sub_100007E08(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    if (*(a1 + 25))
    {
      dispatch_suspend(v2);
      *(a1 + 24) &= ~0x100u;
    }
  }
}

void sub_100007E54(int a1)
{
  Value = CFDictionaryGetValue(qword_1000ABAC0, a1);
  if (Value)
  {
    v3 = Value;
    if (*(Value + 18) == 1)
    {
      v4 = Value[11];
      if (v4)
      {
        dispatch_release(v4);
      }

      v5 = v3[10];
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = v3[13];
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = v3[14];
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = v3[15];
      if (v8)
      {
        v9 = qword_1000ABAB8;
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
        {
          v10[0] = 67109120;
          v10[1] = a1;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cancelling xpc connection for pid %d", v10, 8u);
          v8 = v3[15];
        }

        xpc_connection_cancel(v8);
        xpc_release(v3[15]);
        v3[15] = 0;
      }

      CFDictionaryRemoveValue(qword_1000ABAC0, a1);
      v3[18] = 0;
      *(v3 + 7) = 0u;
      *(v3 + 8) = 0u;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      *(v3 + 3) = 0u;
      *(v3 + 4) = 0u;
      *(v3 + 1) = 0u;
      *(v3 + 2) = 0u;
      *v3 = 0u;
      free(v3);
    }

    else
    {
      --*(Value + 18);
    }
  }
}

void sub_100007FB8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1)
  {
    *(v4 + 8) = v5;
  }

  *v5 = v4;
  if ((*(a1 + 24) & 4) != 0)
  {
    v6 = *(a2 + 152);
    if (v6)
    {
      *(a2 + 152) = v6 - 1;
    }
  }

  if (a3)
  {
    sub_10000289C(a1, 1);
    sub_100004550(a1, 1);
  }

  sub_100007E08(a1);
}

uint64_t sub_100008030(uint64_t a1, _OWORD *a2, const UInt8 *a3, unsigned int a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, int *a8)
{
  ruidp = -1;
  pidp = -1;
  rgidp = -1;
  v26 = 0;
  v15 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v15;
  audit_token_to_au32(&atoken, 0, 0, 0, &ruidp, &rgidp, &pidp, 0, 0);
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  v16 = a4;
  v17 = CFDataCreateWithBytesNoCopy(0, a3, a4, kCFAllocatorNull);
  if (v17)
  {
    v18 = v17;
    v19 = 1;
    v20 = CFPropertyListCreateWithData(0, v17, 1uLL, 0, 0);
    CFRelease(v18);
    if (v20)
    {
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v20) == TypeID)
      {
        v22 = a2[1];
        *atoken.val = *a2;
        *&atoken.val[4] = v22;
        if (sub_100001CFC(&atoken, v20))
        {
          if (!sub_100008374(v20) || sub_10005E564(ruidp) || sub_10005ED54(ruidp))
          {
            v23 = sub_100001FB0(pidp, v20, a5, &v26, a7);
          }

          else
          {
            v23 = -536870207;
            if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
            {
              sub_10006C5B8(&pidp);
            }
          }
        }

        else
        {
          v23 = -536870207;
          if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
          {
            sub_10006C548(&pidp);
          }
        }

        *a8 = v23;
LABEL_18:
        CFRelease(v20);
        goto LABEL_19;
      }

      v19 = 0;
    }
  }

  else
  {
    v20 = 0;
    v19 = 1;
  }

  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006C628(&pidp);
  }

  *a8 = -536870206;
  if ((v19 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  vm_deallocate(mach_task_self_, a3, v16);
  return 0;
}

uint64_t sub_10000827C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 56) || *(result + 60) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 92);
  v8[0] = *(result + 76);
  v8[1] = v7;
  result = sub_100008030(v5, v8, v6, v3, (a2 + 36), (a2 + 40), (a2 + 44), (a2 + 48));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 52;
  }

  return result;
}

uint64_t sub_1000083C4()
{
  if (byte_1000ABB10 != 1)
  {
    return 0;
  }

  v0 = sub_100004D48();
  v1 = sub_100008594();
  result = 0;
  if (!v0 && !v1)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
    {
      sub_10006CC2C();
    }

    return 1;
  }

  return result;
}

void sub_100008440(uint64_t a1)
{
  if (byte_1000ABB10 == 1)
  {
    v10 = v1;
    v11 = v2;
    if (sub_1000083C4())
    {
      if (a1)
      {
        v4 = a1;
      }

      else
      {
        v4 = qword_1000AB730;
      }

      if (qword_1000ABB18)
      {
        dispatch_suspend(qword_1000ABB18);
        byte_1000ABB11 = 0;
      }

      else
      {
        v5 = sub_100002A58();
        qword_1000ABB18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
        dispatch_source_set_event_handler(qword_1000ABB18, &stru_10009AA30);
        dispatch_source_set_cancel_handler(qword_1000ABB18, &stru_10009AA50);
      }

      v6 = qword_1000ABAB8;
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "System Assertion Timeout: Starting System Assertion Timer", v9, 2u);
      }

      v7 = qword_1000ABB18;
      v8 = dispatch_time(0, 1000000000 * v4);
      dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(qword_1000ABB18);
      byte_1000ABB11 = 1;
    }

    else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
    {
      sub_10006CBF0();
    }
  }
}

void sub_1000085A0(_xpc_connection_s *a1, void *a2)
{
  xpc_connection_get_pid(a1);
  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
  {
    sub_10006BB60();
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v5 = reply;
    xpc_dictionary_set_BOOL(reply, "assertionFeatureSupported", byte_1000AB73C);
    if (byte_1000ABB50 == 1)
    {
      xpc_dictionary_set_int64(v5, "assertionAsyncOffloadDelay", qword_1000AB740);
    }

    xpc_connection_send_message(a1, v5);
    xpc_release(v5);
  }
}

uint64_t sub_10000865C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 40) || *(result + 44) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 36);
  v7 = *(result + 76);
  v8[0] = *(result + 60);
  v8[1] = v7;
  result = sub_100008724(v4, v8, v5, v6, (a2 + 36), (a2 + 40), (a2 + 44), (a2 + 48));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 52;
  }

  return result;
}

uint64_t sub_100008724(uint64_t a1, _OWORD *a2, int a3, int a4, int *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  pidp = -1;
  v14 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v14;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  *a6 = 0;
  *a7 = 0;
  *a5 = 0;
  if (a4 == 1)
  {
    *atoken.val = 0;
    v15 = sub_100004CBC(pidp, a3, &atoken);
    if (!v15)
    {
      v16 = *(*atoken.val + 60) + 1;
      *(*atoken.val + 60) = v16;
      *a5 = v16;
      if (dword_1000AD1A4)
      {
        notify_post("com.apple.system.powermanagement.assertions.anychange");
      }
    }
  }

  else
  {
    v15 = sub_100007A0C(pidp, a3, a5);
  }

  *a8 = v15;
  return 0;
}

void sub_100008820(_xpc_connection_s *a1, xpc_object_t xdict)
{
  v24 = 0u;
  v25 = 0u;
  value = 0xFFFFFFFF00000000;
  v22 = 0;
  valuePtr = 0;
  if (xpc_dictionary_get_value(xdict, "assertionCreate"))
  {
    v4 = _CFXPCCreateCFObjectFromXPCMessage();
    TypeID = CFDictionaryGetTypeID();
    if (v4 && CFGetTypeID(v4) == TypeID)
    {
      xpc_connection_get_audit_token();
      pid = xpc_connection_get_pid(a1);
      euid = xpc_connection_get_euid(a1);
      xpc_connection_get_egid(a1);
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
      v9 = CFDictionaryGetValue(MutableCopy, @"AsyncClientAssertionId");
      v10 = CFNumberGetTypeID();
      if (v9 && CFGetTypeID(v9) == v10)
      {
        CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
      }

      *buf = v24;
      v27 = v25;
      if (!sub_100001CFC(buf, MutableCopy))
      {
        v11 = -536870207;
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
        {
          sub_10006B1EC(&valuePtr);
        }

        goto LABEL_29;
      }

      if (sub_100008374(MutableCopy) && !sub_10005E564(euid) && !sub_10005ED54(euid))
      {
        v11 = -536870207;
LABEL_29:
        CFRelease(v4);
        if (!MutableCopy)
        {
          goto LABEL_32;
        }

        v18 = MutableCopy;
        goto LABEL_31;
      }

      v11 = sub_100001FB0(pid, MutableCopy, &value, &v22, &value + 1);
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
      {
        sub_10006B26C();
        if (a1)
        {
LABEL_13:
          if (v22)
          {
            v12 = xpc_retain(a1);
            *(v22 + 120) = v12;
          }
        }
      }

      else if (a1)
      {
        goto LABEL_13;
      }

      v13 = qword_1000ABAB8;
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *&buf[4] = value;
        *&buf[8] = 1024;
        *&buf[10] = valuePtr;
        *&buf[14] = 1024;
        LODWORD(v27) = pid;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Created assertion with id 0x%x for remote id 0x%x from pid %d\n", buf, 0x14u);
      }

      v14 = xpc_dictionary_get_value(xdict, "assertionActivityLog");
      if (v14)
      {
        if (xpc_get_type(v14) == &_xpc_type_array)
        {
          v15 = _CFXPCCreateCFObjectFromXPCObject();
          if (v15)
          {
            v16 = v15;
            v17 = CFDictionaryGetValue(qword_1000ABAC0, pid);
            sub_100008DB8(v17, v16);
            CFRelease(v16);
          }
        }
      }

      goto LABEL_29;
    }

    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B2DC();
    }

    v11 = -536870206;
    if (v4)
    {
      v18 = v4;
LABEL_31:
      CFRelease(v18);
    }
  }

  else
  {
    v11 = -536870206;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B318();
    }
  }

LABEL_32:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v20 = reply;
    xpc_dictionary_set_uint64(reply, "returnCode", v11);
    xpc_dictionary_set_uint64(v20, "assertionId", value);
    xpc_dictionary_set_uint64(v20, "EnTrIntensity", SHIDWORD(value));
    xpc_connection_send_message(a1, v20);
    xpc_release(v20);
  }

  else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006B354();
  }
}

void sub_100008C18(_xpc_connection_s *a1, xpc_object_t xdict)
{
  v11 = 0;
  v10 = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, "assertionRelease");
  xpc_dictionary_get_value(xdict, "assertionActivityLog");
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = xpc_dictionary_get_BOOL(xdict, "assertionWasCoalesced");
  pid = xpc_connection_get_pid(a1);
  if (v5)
  {
    Value = CFDictionaryGetValue(qword_1000ABAC0, pid);
    if (Value)
    {
      sub_100008DB8(Value, v5);
    }

    else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B5F4();
    }

    CFRelease(v5);
  }

  if (sub_100004CBC(pid, uint64, &v10))
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B668();
    }
  }

  else
  {
    if (v6)
    {
      v9 = &kCFBooleanTrue;
    }

    else
    {
      v9 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(v10[2], @"IsCoalesced", *v9);
  }

  if (sub_100007A0C(pid, uint64, &v11))
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B6DC();
    }
  }
}

void sub_100008DB8(uint64_t a1, const __CFArray *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A0040FFA61E1BuLL);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v6 = 0;
    v7 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
      v4[2] = ValueAtIndex;
      v4[9] = a1;
      Value = CFDictionaryGetValue(ValueAtIndex, @"Action");
      if (!Value)
      {
        v13 = qword_1000ABAB8;
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
        {
          sub_10006B00C(&v14, v15, v13);
        }

        goto LABEL_20;
      }

      v10 = Value;
      v11 = CFStringCompare(Value, @"Created", 0);
      if (v11)
      {
        if (CFStringCompare(v10, @"Released", 0))
        {
          if (CFStringCompare(v10, @"TurnedOn", 0))
          {
            if (CFStringCompare(v10, @"TurnedOff", 0))
            {
              if (CFStringCompare(v10, @"TimedOut", 0))
              {
                if (CFStringCompare(v10, @"NameChange", 0))
                {
                  v12 = qword_1000ABAB8;
                  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v17 = v10;
                    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unexpected value encountered for key kPMAsyncAssertionActionNameChange: %@.", buf, 0xCu);
                  }

                  goto LABEL_20;
                }

                LODWORD(v11) = 9;
              }

              else
              {
                LODWORD(v11) = 4;
              }
            }

            else
            {
              LODWORD(v11) = 7;
            }
          }

          else
          {
            LODWORD(v11) = 8;
          }
        }

        else
        {
          LODWORD(v11) = 2;
        }
      }

      sub_100002E48(v11, v4);
LABEL_20:
      ++v6;
    }

    while (v7 != v6);
  }

  free(v4);
}

void sub_100008FEC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  sub_1000090A4(a1, a2);
  v8 = *(a1 + 24);
  *(a1 + 24) = v8 & 0xFFFFFFDE | 1;
  if ((*a2 & 1) != 0 && (v8 & 4) != 0)
  {
    ++*(a2 + 152);
  }

  if (a4)
  {
    sub_10000289C(a1, 0);
    sub_100004550(a1, 0);
  }

  sub_100004710(a1);
  if (*(a2 + 8) == a1 && a3 != 0)
  {

    sub_1000091A4(a2);
  }
}

void sub_1000090A4(uint64_t a1, uint64_t a2)
{
  valuePtr = 0;
  v4 = sub_100002AB4();
  v5 = *(a1 + 40);
  v6 = v5 > v4;
  v7 = v5 - v4;
  if (v6)
  {
    valuePtr = v7;
    v8 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(*(a1 + 16), @"AssertTimeoutTimeLeft", v8);
      CFRelease(v9);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v11 = CFDateCreate(0, Current);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(*(a1 + 16), @"AssertTimeoutUpdateTime", v11);
      CFRelease(v12);
    }
  }

  v15 = *(a2 + 8);
  v14 = (a2 + 8);
  v13 = v15;
  if (v15)
  {
    while (1)
    {
      v16 = v13;
      if (v13[5] > *(a1 + 40))
      {
        break;
      }

      v13 = *v13;
      if (!*v16)
      {
        *a1 = 0;
        *v16 = a1;
        *(a1 + 8) = v16;
        return;
      }
    }

    v17 = v13[1];
    *a1 = v13;
    *(a1 + 8) = v17;
    *v17 = a1;
    v13[1] = a1;
  }

  else
  {
    *v14 = a1;
    *a1 = 0;
    *(a1 + 8) = v14;
  }
}

void sub_1000091A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (!*(a1 + 48))
    {
      v3 = sub_100002A58();
      v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
      *(a1 + 48) = v4;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100016204;
      handler[3] = &unk_1000994E0;
      handler[4] = a1;
      dispatch_source_set_event_handler(v4, handler);
      v5 = *(a1 + 48);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100050C04;
      v14[3] = &unk_1000994E0;
      v14[4] = a1;
      dispatch_source_set_cancel_handler(v5, v14);
      dispatch_resume(*(a1 + 48));
    }

    v6 = sub_100002AB4();
    v7 = *(v1 + 40);
    v8 = v7 > v6;
    v9 = v7 - v6;
    if (v8)
    {
      v10 = *(a1 + 48);
      v11 = dispatch_time(0, 1000000000 * v9);
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else
    {
      v12 = sub_100002A58();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100050C10;
      block[3] = &unk_1000994E0;
      block[4] = a1;
      dispatch_async(v12, block);
    }
  }
}

void sub_10000933C(uint64_t a1, int a2)
{
  if (!*(a1 + 104))
  {
    return;
  }

  v14 = 0;
  v4 = sub_100004878(a1, &v14);
  v5 = *(a1 + 40);
  v6 = 1;
  if (v5 > 8)
  {
    if (v5 > 0x14)
    {
      return;
    }

    if (((1 << v5) & 0x162800) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << v5) & 0x10200) == 0)
    {
      if (v5 != 10)
      {
        return;
      }

      if ((v14 & 1) == 0 && (dword_1000AD1AC & 0x400) != 0)
      {
        sub_10004AE84(*(a1 + 80));
        v5 = *(a1 + 40);
      }

      else
      {
        v5 = 10;
      }

      goto LABEL_15;
    }

LABEL_14:
    v6 = 64;
    goto LABEL_15;
  }

  if (v5 == 5)
  {
    goto LABEL_14;
  }

  if (v5 != 7)
  {
    if (v5 != 8)
    {
      return;
    }

    v6 = 16;
  }

LABEL_15:
  if (v14 == 1)
  {
    v7 = dword_1000AD1AC | (1 << v5);
  }

  else
  {
    v8 = dword_1000AD1AC;
    v9 = 1 << v5;
    if ((dword_1000AD1AC & (1 << v5)) != 0)
    {
      if (*(a1 + 72))
      {
        if ((*a1 & 2) != 0)
        {
          *(a1 + 72) = 0;
          v10 = *(a1 + 56);
          if (v10)
          {
            dispatch_source_cancel(v10);
            v5 = *(a1 + 40);
            v8 = dword_1000AD1AC;
            v9 = 1 << v5;
          }
        }
      }
    }

    v7 = v8 & ~v9;
  }

  dword_1000AD1AC = v7;
  if (v5 <= 0x11 && ((1 << v5) & 0x24220) != 0)
  {
    sub_10000CCF0();
  }

  if (a2 == 1)
  {
    v11 = dword_1000AD1B0;
    if (((dword_1000AD1B0 & v6) == 0) | v4 & 1)
    {
      return;
    }

    goto LABEL_34;
  }

  if (a2)
  {
    v11 = dword_1000AD1B0;
    v12 = dword_1000AD1B0 & v6;
    if (!v4)
    {
      if (!v12)
      {
        return;
      }

      goto LABEL_40;
    }

    if (v12)
    {
      return;
    }

LABEL_38:
    v13 = v11 | v6;
    goto LABEL_41;
  }

  if (*(a1 + 40) == 9 && v14 == 1)
  {
    sub_10004EE5C();
    sub_10004B650(1, 0);
  }

  v11 = dword_1000AD1B0;
  if ((((dword_1000AD1B0 & v6) == 0) & v4) != 0)
  {
LABEL_34:
    if (!v4)
    {
LABEL_40:
      v13 = v11 & ~v6;
LABEL_41:
      dword_1000AD1B0 = v13;
      sub_1000511B4(v13);
      if (dword_1000AD190)
      {
        notify_post("com.apple.system.powermanagement.assertions");
      }

      return;
    }

    goto LABEL_38;
  }
}

void sub_100009574(uint64_t a1, uint64_t a2, int a3, int a4)
{
  CFDictionaryRemoveValue(*(a1 + 16), @"AssertTimeoutTimeLeft");
  v8 = *(a2 + 8);
  v9 = *a1;
  v10 = *(a1 + 8);
  if (*a1)
  {
    *(v9 + 8) = v10;
  }

  *v10 = v9;
  v11 = *(a1 + 24);
  *(a1 + 24) = v11 & 0xFFFFFFFE;
  if ((v11 & 4) != 0)
  {
    v12 = *(a2 + 152);
    if (v12)
    {
      *(a2 + 152) = v12 - 1;
    }
  }

  if (a4)
  {
    sub_10000289C(a1, 1);
    sub_100004550(a1, 1);
  }

  sub_100007E08(a1);
  if (v8 == a1 && a3)
  {

    sub_10000964C(a2);
  }
}

void sub_10000964C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v3 = sub_100002AB4();
    v4 = *(v1 + 40);
    v5 = v4 > v3;
    v6 = v4 - v3;
    if (v5)
    {
      v7 = *(a1 + 48);
      v8 = dispatch_time(0, 1000000000 * v6);

      dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else
    {
      v9 = sub_100002A58();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100050BFC;
      block[3] = &unk_1000994E0;
      block[4] = a1;
      dispatch_async(v9, block);
    }
  }
}

void sub_100009728(uint64_t a1, xpc_object_t xdict)
{
  if (xpc_dictionary_get_value(xdict, "assertionActivityLog"))
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    if (v3)
    {
      v4 = v3;
      v5 = qword_1000ABAB8;
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
      {
        sub_10006B7FC(v4, a1, v5);
      }

      sub_100008DB8(a1, v4);
      CFRelease(v4);
    }
  }

  else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
  {
    sub_10006B8B0(a1);
  }
}

void sub_1000097E0(_xpc_connection_s *a1, void *a2)
{
  pid = xpc_connection_get_pid(a1);
  v4 = sub_10000229C(pid);
  if (v4)
  {
    sub_100009728(v4, a2);
  }

  else
  {
    v5 = sub_100002B14(pid);
    sub_100009728(v5, a2);
    if (!v5)
    {
      return;
    }
  }

  sub_100007E54(pid);
}

void sub_100009860(int a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  dispatch_assert_queue_V2(qword_1000ACCE0);
  dispatch_assert_queue_V2(qword_1000ACCE0);
  if (!qword_1000ACCF8)
  {
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_100068C00();
    }

    return;
  }

  if (byte_1000ACF9C == 1)
  {
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
    {
      sub_100068BC4();
    }

    return;
  }

  if (!qword_1000ACFA8)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_1000ACCE0);
    v4 = qword_1000ACFA8;
    qword_1000ACFA8 = v3;

    dispatch_source_set_event_handler(qword_1000ACFA8, &stru_10009A518);
    dispatch_resume(qword_1000ACFA8);
  }

  if (a1 == 1)
  {
    goto LABEL_44;
  }

  v5 = sub_10000A4B4(@"BootPathUpdated");
  if (v5 >= Current)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_10000A4B4(@"FullPathUpdated");
  if (v7 >= Current)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = sub_10000A4B4(@"UserVisiblePathUpdated");
  if (v9 >= Current)
  {
    v9 = 0.0;
  }

  if (v6 < v8 || (v6 != 0.0 ? (v10 = v6 < v9) : (v10 = 1), v10))
  {
    if (v8 < v6 || (v8 != 0.0 ? (v11 = v8 < v9) : (v11 = 1), v12 = v8, v11))
    {
      v12 = v9;
    }

    v13 = Current - v12;
    v14 = Current - v12 > 15.0;
    v15 = -kCFAbsoluteTimeIntervalSince1970;
    if (v6 < v8)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v13 = Current - v6;
    v14 = Current - v6 > 15.0;
    v15 = -kCFAbsoluteTimeIntervalSince1970;
  }

  if (v6 == 0.0 || v6 < v15)
  {
LABEL_37:
    if (v8 >= v6 && v8 != 0.0 && v8 >= v15)
    {
      v15 = v8;
    }

    goto LABEL_43;
  }

  v15 = v6;
LABEL_43:
  if (Current - v15 > 595.0)
  {
LABEL_44:
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
    {
      sub_100068B88();
    }

LABEL_46:
    IOPSRequestBatteryUpdate();
    v18 = qword_1000ACFA8;
    v19 = dispatch_time(0, 20000000000);
    dispatch_source_set_timer(v18, v19, 0x4A817C800uLL, 0);
    return;
  }

  if (v14)
  {
    if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
    {
      sub_100068B4C();
    }

    goto LABEL_46;
  }

  v20 = v13 * -1000000000.0 + 2.0e10;
  if (v20 >= 0x4A817C800)
  {
    v21 = 20000000000;
  }

  else
  {
    v21 = v20;
  }

  v22 = qword_1000ACFA8;
  v23 = dispatch_time(0, v21);

  dispatch_source_set_timer(v22, v23, 0x4A817C800uLL, 0);
}

void sub_100009B54(_DWORD *a1, int a2, int a3)
{
  dispatch_assert_queue_barrier(qword_1000ACCE0);
  if (a3 == -536723200)
  {
    kdebug_trace();

    sub_100009BE4(a1, a2);
  }
}

void sub_100009BE4(_DWORD *a1, int a2)
{
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_barrier(qword_1000ACCE0);
  *a1 = a2;
  properties = 0;
  v54 = kCFBooleanFalse;
  value = kCFBooleanFalse;
  dispatch_assert_queue_barrier(qword_1000ACCE0);
  v4 = *(a1 + 1);
  if (v4)
  {
    CFRelease(*(a1 + 1));
    *(a1 + 1) = 0;
  }

  v5 = qword_1000ACCE8;
  TypeID = CFDictionaryGetTypeID();
  if (v5 && CFGetTypeID(v5) == TypeID)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, qword_1000ACCE8);
    properties = MutableCopy;
    goto LABEL_11;
  }

  if (!IORegistryEntryCreateCFProperties(*a1, &properties, kCFAllocatorDefault, 0))
  {
    MutableCopy = properties;
LABEL_11:
    if (!CFDictionaryGetValueIfPresent(MutableCopy, @"BatteryInstalled", &v54) || (v9 = v54, v54 != kCFBooleanTrue))
    {
      number[0] = 0;
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
      {
        sub_100069C28();
      }

      CFDictionaryGetValueIfPresent(properties, @"ExternalConnected", &value);
      CFDictionaryGetValueIfPresent(properties, @"AdapterDetails", number);
      v10 = number[0];
      v11 = CFDictionaryGetTypeID();
      if (v10)
      {
        if (CFGetTypeID(v10) == v11)
        {
          sub_10000BC7C(value == kCFBooleanTrue, number[0]);
        }
      }

LABEL_53:
      CFRelease(properties);
      *(a1 + 1) = 0;
      return;
    }

    if (!CFDictionaryGetValue(properties, @"CurrentCapacity") || !CFDictionaryGetValue(properties, @"MaxCapacity"))
    {
      if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
      {
        sub_100069BEC();
      }

      goto LABEL_53;
    }

    v12 = properties;
    v13 = CFDictionaryGetTypeID();
    if (v12 && CFGetTypeID(v12) == v13)
    {
      v14 = CFDictionaryGetValue(v12, @"ExternalConnected");
      v15 = a1[4] & 0xFFFE;
      if (v9 == v14)
      {
        ++v15;
      }

      *(a1 + 8) = v15;
      *(a1 + 8) = a1[4] & 0xFFFB | (4 * (v9 == CFDictionaryGetValue(v12, @"ExternalChargeCapable")));
      *(a1 + 8) = a1[4] & 0xFFBF | ((v9 == CFDictionaryGetValue(v12, @"BatteryInstalled")) << 6);
      *(a1 + 8) = a1[4] & 0xFFF7 | (8 * (v9 == CFDictionaryGetValue(v12, @"IsCharging")));
      *(a1 + 8) = a1[4] & 0xFFFD | (2 * (v9 == CFDictionaryGetValue(v12, @"AppleRawExternalConnected")));
      v16 = CFDictionaryGetValue(v12, @"FullyCharged");
      v17 = a1[6] & 0xFE;
      if (v9 == v16)
      {
        ++v17;
      }

      *(a1 + 24) = v17;
      *(a1 + 8) = a1[4] & 0xFDFF | ((v9 == CFDictionaryGetValue(v12, @"AtCriticalLevel")) << 9);
      *(a1 + 16) = CFDictionaryGetValue(v12, @"ErrorCondition");
      *(a1 + 14) = CFDictionaryGetValue(v12, @"Serial");
      *(a1 + 19) = CFDictionaryGetValue(v12, @"ChargeStatus");
      v18 = CFDictionaryGetValue(v12, @"Voltage");
      if (v18)
      {
        CFNumberGetValue(v18, kCFNumberIntType, a1 + 11);
      }

      v19 = CFDictionaryGetValue(v12, @"CurrentCapacity");
      if (v19)
      {
        CFNumberGetValue(v19, kCFNumberIntType, a1 + 8);
        *(a1 + 8) &= ~0x400u;
      }

      v20 = CFDictionaryGetValue(v12, @"MaxCapacity");
      if (v20)
      {
        CFNumberGetValue(v20, kCFNumberIntType, a1 + 9);
      }

      v21 = CFDictionaryGetValue(v12, @"DesignCapacity");
      if (v21)
      {
        CFNumberGetValue(v21, kCFNumberIntType, a1 + 10);
      }

      v22 = CFDictionaryGetValue(v12, @"TimeRemaining");
      if (v22)
      {
        CFNumberGetValue(v22, kCFNumberIntType, a1 + 23);
      }

      v23 = CFDictionaryGetValue(v12, @"InstantAmperage");
      if (v23)
      {
        CFNumberGetValue(v23, kCFNumberIntType, a1 + 13);
      }

      v24 = CFDictionaryGetValue(v12, @"Amperage");
      if (v24)
      {
        CFNumberGetValue(v24, kCFNumberIntType, a1 + 12);
      }

      v25 = CFDictionaryGetValue(v12, @"MaxErr");
      if (v25)
      {
        CFNumberGetValue(v25, kCFNumberIntType, a1 + 14);
      }

      v26 = CFDictionaryGetValue(v12, @"CycleCount");
      if (v26)
      {
        CFNumberGetValue(v26, kCFNumberIntType, a1 + 15);
      }

      v27 = CFDictionaryGetValue(v12, @"DesignCycleCount70");
      if (v27)
      {
        CFNumberGetValue(v27, kCFNumberIntType, a1 + 16);
      }

      v28 = CFDictionaryGetValue(v12, @"DesignCycleCount9C");
      if (v28)
      {
        CFNumberGetValue(v28, kCFNumberIntType, a1 + 17);
      }

      v29 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/");
      CFProperty = IORegistryEntryCreateCFProperty(v29, @"board-id", 0, 0);
      *number = 0u;
      v59 = 0u;
      if (CFProperty)
      {
        v31 = CFProperty;
        CFDataGetBytePtr(CFProperty);
        if (CFDataGetLength(v31) <= 0x20)
        {
          CFDataGetLength(v31);
        }

        __strlcpy_chk();
        CFRelease(v31);
      }

      IOObjectRelease(v29);
      v32 = strlen(number);
      v33 = 21;
      v34 = aMacF425bec8;
      do
      {
        if (!strncmp(number, v34, v32))
        {
          v35 = 0;
          v36 = &word_1000AB280;
          while (1)
          {
            v37 = *v36;
            v36 += 18;
            if (a1[10] == v37)
            {
              goto LABEL_71;
            }

            if (++v35 == 25)
            {
              goto LABEL_64;
            }
          }
        }

        v34 += 36;
        --v33;
      }

      while (v33);
LABEL_64:
      v38 = a1[16];
      if (v38 != 500 && v38 != 1000)
      {
        v38 = a1[17];
        if (!v38)
        {
          v35 = 0;
          v39 = &word_1000AB280;
          while (1)
          {
            v40 = *v39;
            v39 += 18;
            if (a1[10] == v40)
            {
              break;
            }

            if (++v35 == 25)
            {
              v38 = 300;
              goto LABEL_72;
            }
          }

LABEL_71:
          v38 = *&aMacF425bec8[36 * v35 + 34];
        }
      }

LABEL_72:
      a1[18] = v38;
      v41 = CFDictionaryGetValue(v12, @"AdapterDetails");
      a1[5] = 0;
      if (v41)
      {
        valuePtr = 0;
        number[0] = 0;
        if (CFDictionaryGetValueIfPresent(v41, @"FamilyCode", number) && (v42 = number[0], v43 = CFNumberGetTypeID(), v42) && CFGetTypeID(v42) == v43)
        {
          CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr);
          v44 = valuePtr == -536870201;
        }

        else
        {
          v44 = 0;
        }

        a1[5] = v44;
      }

      v45 = CFDictionaryGetValue(v12, @"BatteryData");
      v46 = [v45 objectForKeyedSubscript:@"DateOfFirstUse"];
      *(a1 + 10) = [v46 unsignedLongLongValue];
      v47 = CFDictionaryGetValue(v12, @"Location");
      if (v47)
      {
        CFNumberGetValue(v47, kCFNumberIntType, a1 + 22);
      }

      v48 = CFDictionaryGetValue(v12, @"BatteryInvalidWakeSeconds");
      if (v48)
      {
        CFNumberGetValue(v48, kCFNumberIntType, a1 + 26);
      }

      else
      {
        a1[26] = 16;
      }

      v49 = CFDictionaryGetValue(v12, @"PermanentFailureStatus");
      if (v49)
      {
        CFNumberGetValue(v49, kCFNumberIntType, a1 + 7);
      }

      else
      {
        a1[7] = 0;
      }
    }

    if (!qword_1000ACCF0)
    {
      v52 = *(a1 + 14);
      v53 = CFStringGetTypeID();
      if (v52)
      {
        if (CFGetTypeID(v52) == v53)
        {
          qword_1000ACCF0 = *(a1 + 14);
          CFRetain(qword_1000ACCF0);
          dispatch_async(qword_1000ACCE0, &stru_10009A3B8);
        }
      }
    }

    if (qword_1000ACCE8)
    {
      if (qword_1000ACCF0)
      {
        CFRelease(qword_1000ACCF0);
      }

      v50 = *(a1 + 14);
      qword_1000ACCF0 = v50;
      if (v50)
      {
        CFRetain(v50);
      }
    }

    if (!v4)
    {
      dispatch_assert_queue_barrier(qword_1000ACCE0);
      dispatch_assert_queue_V2(qword_1000ACCE0);
      if (qword_1000ACFE0)
      {
        if (!qword_1000ACFA0)
        {
          v51 = getpid();
          dispatch_assert_queue_barrier(qword_1000ACCE0);
          *&dword_1000ACD08 = 0u;
          *&qword_1000ACD18 = 0u;
          dword_1000ACD08 = v51;
          qword_1000ACFA0 = &qword_1000ACD00;
          qword_1000ACD00 = 0x100000063;
          *&xmmword_1000ACF80 = CFAbsoluteTimeGetCurrent();
          sub_10005FA68(qword_1000AB980, "com.apple.system.powersources.attach");
          dispatch_async(qword_1000ACCE0, &stru_10009A3D8);
        }
      }
    }
  }

  v8 = properties;
  *(a1 + 1) = properties;
  if (v8)
  {
    sub_10000A558(a1);
    dispatch_assert_queue_V2(qword_1000ACCE0);
    sub_100010EC4(qword_1000ACFE0);
    sub_100011014();
    sub_100011124();
  }
}

double sub_10000A4B4(const void *a1)
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  dispatch_assert_queue_V2(qword_1000ACCE0);
  valuePtr = 0;
  result = 0.0;
  if (qword_1000ACCF8)
  {
    if (*qword_1000ACCF8)
    {
      v3 = *(*qword_1000ACCF8 + 8);
      if (v3)
      {
        Value = CFDictionaryGetValue(v3, a1);
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
          LODWORD(v5) = valuePtr;
          return v5 - kCFAbsoluteTimeIntervalSince1970;
        }

        else
        {
          return -kCFAbsoluteTimeIntervalSince1970;
        }
      }
    }
  }

  return result;
}

void sub_10000A558(uint64_t a1)
{
  dispatch_assert_queue_barrier(qword_1000ACCE0);
  dispatch_assert_queue_V2(qword_1000ACCE0);
  v2 = qword_1000ACCF8;
  sub_100009860(0);
  dispatch_assert_queue_V2(qword_1000ACCE0);
  if (!qword_1000ACFE0)
  {
    return;
  }

  if (a1 || (a1 = *v2) != 0)
  {
    if (*(a1 + 8))
    {
      v3 = *(a1 + 16);
      v4 = v3 & 1;
      v5 = (v3 >> 1) & 1;
      if (dword_1000AB208 != v4)
      {
        byte_1000ACF9D = 1;
      }

      if (dword_1000AB20C != v5 || dword_1000AB214 != ((*(a1 + 16) >> 3) & 1))
      {
        sub_10001B738(dword_1000AB20C != v5);
      }

      v6 = *(a1 + 16);
      v7 = CFDictionaryGetValue(*(a1 + 8), @"AdapterDetails");
      sub_10000BC7C(v6 & 1, v7);
      dispatch_assert_queue_barrier(qword_1000ACCE0);
      dispatch_assert_queue_V2(qword_1000ACCE0);
      if (qword_1000ACFE0 >= 1)
      {
        v8 = qword_1000ACFE0 & 0x7FFFFFFF;
        v9 = v2;
        do
        {
          v10 = *v9;
          v11 = *(*v9 + 96);
          if ((v11 & 0x80000000) == 0 && (*(v10 + 16) & 0x40) != 0)
          {
            if (v11 < 0x4B1)
            {
              goto LABEL_16;
            }

            v12 = 1200;
          }

          else
          {
            v12 = -1;
          }

          *(v10 + 96) = v12;
LABEL_16:
          v9 += 8;
          --v8;
        }

        while (v8);
      }

      *(*v2 + 16) = *(*v2 + 16) & 0xFEFF | ((*(*v2 + 96) == -1) << 8);
      v13 = *(a1 + 36);
      if (v13)
      {
        v13 = llround((100 * *(a1 + 32)) / v13);
        if (v13 >= 100)
        {
          v13 = 100;
        }
      }

      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      if (v5 || (BYTE8(xmmword_1000ACF80) & 1) != 0 || dword_1000AB20C || (v15 = dword_1000AB210, v14 <= dword_1000AB210))
      {
        if (CFAbsoluteTimeGetCurrent() >= *&xmmword_1000ACF80 + 60.0)
        {
          BYTE8(xmmword_1000ACF80) = 0;
        }

        v15 = v14;
      }

      *(a1 + 100) = v15;
      dword_1000AB210 = v15;
      dword_1000AB208 = v4;
      dword_1000AB20C = v5;
      dword_1000AB214 = (*(a1 + 16) >> 3) & 1;
      v16 = qword_1000ACFA0;
      if (!qword_1000ACFA0 || (dispatch_assert_queue_barrier(qword_1000ACCE0), (Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) == 0))
      {
LABEL_150:
        dispatch_assert_queue_barrier(qword_1000ACCE0);
        dispatch_assert_queue_V2(qword_1000ACCE0);
        v92 = qword_1000ACCF8;
        v93 = dword_1000ACFB0;
        HIDWORD(v182) = -1;
        LODWORD(v183) = -1;
        dispatch_assert_queue_V2(qword_1000ACCE0);
        v94 = sub_10000BDC0(@"UPS");
        dispatch_assert_queue_V2(qword_1000ACCE0);
        if (qword_1000ACFE0)
        {
          if (((kCFAbsoluteTimeIntervalSince1970 != 0.0) & (*(*v92 + 16) >> 6)) != 0)
          {
            v95 = *v92;
          }

          else
          {
            v95 = 0;
          }
        }

        else
        {
          v95 = 0;
        }

        if (!(v95 | v94))
        {
          return;
        }

        v174 = v93;
        dispatch_assert_queue_V2(qword_1000ACCE0);
        if (qword_1000ACFE0 < 1)
        {
          v97 = 0;
        }

        else
        {
          v96 = 0;
          v97 = 0;
          do
          {
            v98 = *(v92 + 8 * v96);
            if ((*(v98 + 16) & 0x40) != 0)
            {
              v97 = (*(v98 + 96) + v97);
            }

            ++v96;
            dispatch_assert_queue_V2(qword_1000ACCE0);
          }

          while (v96 < qword_1000ACFE0);
        }

        v99 = sub_10000BDC0(@"Battery Case");
        v100 = v99;
        if (v99)
        {
          HIDWORD(v183) = 0;
          *value = 0;
          v101 = CFDictionaryGetValue(v99, @"Current Capacity");
          v102 = CFDictionaryGetValue(v100, @"Max Capacity");
          v103 = 0;
          if (v101)
          {
            v104 = v102;
            if (v102)
            {
              CFNumberGetValue(v101, kCFNumberIntType, value);
              CFNumberGetValue(v104, kCFNumberIntType, &v183 + 4);
              if (HIDWORD(v183))
              {
                v103 = 100 * *value / SHIDWORD(v183);
              }

              else
              {
                v103 = 0;
              }
            }
          }

          CFDictionaryGetValueIfPresent(v100, @"Is Charging", (&v182 + 4));
          if (dword_1000AD024)
          {
            v114 = 100 * dword_1000AD020 / dword_1000AD024;
          }

          else
          {
            v114 = 0;
          }

          if (HIDWORD(v182) != dword_1000AB5F8 || v103 != v114 || (LODWORD(v100) = 0, !dword_1000AD024) && HIDWORD(v183))
          {
            LODWORD(v100) = 1;
          }

          dword_1000AB5F8 = HIDWORD(v182);
          dword_1000AD024 = HIDWORD(v183);
          dword_1000AD020 = *value;
          if (v94)
          {
            goto LABEL_190;
          }
        }

        else
        {
          dword_1000AB5F8 = -1;
          dword_1000AD024 = 0;
          dword_1000AD020 = 0;
          if (v94)
          {
LABEL_190:
            v115 = CFDictionaryGetValue(v94, @"Time to Empty");
            if (v115)
            {
              CFNumberGetValue(v115, kCFNumberIntType, &v183);
              v116 = v183;
              if (v183 == -1)
              {
                v116 = 0;
              }

              v97 = (v116 + v97);
            }

            v117 = CFDictionaryGetValue(v94, @"Power Source State");
            if (v117)
            {
              v105 = CFStringCompare(v117, @"AC Power", 0) == kCFCompareEqualTo;
              v118 = v105;
            }

            else
            {
              v105 = 0;
              v118 = 0;
            }

            if (dword_1000AB5F4 != v118)
            {
              byte_1000ACF9D = 1;
              dword_1000AB5F4 = v118;
            }

LABEL_199:
            v172 = v100;
            if (v95)
            {
              v119 = *(v95 + 16);
              v120 = (v119 >> 8) & 1;
              v121 = *(v95 + 100);
              v122 = *(v95 + 36);
              v176 = (v119 >> 3) & 1;
              if (v122)
              {
                v170 = *(v95 + 24) | ((100 * *(v95 + 32) / v122) > 0x63);
              }

              else
              {
                v170 = 0;
              }

              if (v94)
              {
                LOBYTE(v105) = v105 & v119;
              }

              else
              {
                LOBYTE(v105) = *(v95 + 16);
              }

              v126 = (v119 >> 1) & 1;
              v127 = *(v95 + 20) != 0;
              v130 = (v119 >> 4) & 1;
              v129 = (v119 >> 5) & 1;
            }

            else
            {
              HIDWORD(v183) = 0;
              *value = 0;
              if (v183 == -1)
              {
                v120 = v105;
              }

              else
              {
                v120 = 1;
              }

              v123 = CFDictionaryGetValue(v94, @"Is Charging");
              v124 = CFDictionaryGetValue(v94, @"Current Capacity");
              if (v124)
              {
                CFNumberGetValue(v124, kCFNumberIntType, &v183 + 4);
              }

              v125 = CFDictionaryGetValue(v94, @"Max Capacity");
              if (v125)
              {
                CFNumberGetValue(v125, kCFNumberIntType, value);
              }

              v121 = 0;
              v176 = v123 == kCFBooleanTrue;
              if (HIDWORD(v183) && *value)
              {
                v121 = 100 * HIDWORD(v183) / *value;
              }

              v126 = 0;
              v127 = 0;
              if (v121 > 94)
              {
                v128 = v105;
              }

              else
              {
                v128 = 0;
              }

              v41 = v123 == kCFBooleanTrue;
              v129 = 0;
              v130 = 0;
              if (v41)
              {
                v128 = 0;
              }

              v170 = v128;
            }

            dispatch_assert_queue_V2(qword_1000ACCE0);
            v131 = v97 | 0x80000u;
            if (v105)
            {
              v131 = v97 | 0x90000;
            }

            if (v126)
            {
              v131 |= 0x4000000uLL;
            }

            if (v130)
            {
              v131 |= 0x8000000uLL;
            }

            if (v129)
            {
              v131 |= 0x10000000uLL;
            }

            if (v120)
            {
              v131 |= 0x40000uLL;
            }

            v132 = v176;
            if (v176)
            {
              v131 |= 0x20000uLL;
            }

            if (byte_1000ACF9C)
            {
              v131 |= 0x100000uLL;
            }

            if (v127)
            {
              v133 = v131 | 0x20000000;
            }

            else
            {
              v133 = v131;
            }

            if (sub_10000C008())
            {
              v133 |= 0x400000uLL;
            }

            dispatch_assert_queue_V2(qword_1000ACCE0);
            if (sub_10000BDC0(@"UPS"))
            {
              v133 |= 0x800000uLL;
            }

            v134 = v133 | (sub_100010CFC() << 56);
            v135 = qword_1000AD028;
            if (qword_1000AD028 != v134)
            {
              qword_1000AD028 = v134;
              notify_set_state(dword_1000ACF94, v134);
              v136 = notify_post("com.apple.system.powersources.timeremaining");
              v137 = qword_1000AB980;
              if (v136)
              {
                if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
                {
                  sub_100068C3C();
                }
              }

              else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
              {
                v138 = "Batt";
                *value = 134218498;
                *&value[4] = v134;
                if (v105)
                {
                  v138 = "AC";
                }

                *&value[12] = 1024;
                v185 = v97;
                v186 = 2082;
                v187 = v138;
                _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "Battery time remaining posted(0x%llx) Time:%d Source:%{public}s\n", value, 0x1Cu);
              }
            }

            if (!v95)
            {
              goto LABEL_272;
            }

            HIDWORD(v183) = 1;
            dispatch_assert_queue_barrier(qword_1000ACCE0);
            v139 = &unk_1000AC000;
            if (word_1000ACF90 & 1) != 0 || (*(v95 + 16))
            {
              LOBYTE(word_1000ACF90) = 0;
              v140 = 1;
              if (HIDWORD(xmmword_1000ACF80) == 1)
              {
                goto LABEL_260;
              }

              HIDWORD(xmmword_1000ACF80) = 0;
            }

            else
            {
              if (BYTE8(xmmword_1000ACF80))
              {
LABEL_256:
                v140 = 1;
                goto LABEL_260;
              }

              if (v121 > 2)
              {
                if (v121 > 0xA)
                {
                  goto LABEL_256;
                }

                v140 = 2;
              }

              else
              {
                v140 = 3;
              }
            }

            HIDWORD(v183) = v140;
LABEL_260:
            if (v140 > SHIDWORD(xmmword_1000ACF80))
            {
              v141 = CFNumberCreate(0, kCFNumberIntType, &v183 + 4);
              if (v141)
              {
                v142 = v141;
                v143 = qword_1000AD030;
                if (qword_1000AD030 || (v143 = SCDynamicStoreKeyCreate(kCFAllocatorDefault, @"%@%@", kSCDynamicStoreDomainState, @"/IOKit/LowBatteryWarning"), (qword_1000AD030 = v143) != 0))
                {
                  sub_10001B974(v143, v142);
                }

                else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
                {
                  sub_100068CAC();
                }

                CFRelease(v142);
                sub_10005FA68(qword_1000AB980, "com.apple.system.powersources.lowbattery");
                v144 = HIDWORD(v183);
                if (HIDWORD(v183) == dword_1000AB5FC)
                {
                  v132 = v176;
                  v139 = &unk_1000AC000;
                }

                else
                {
                  v145 = qword_1000AB980;
                  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
                  {
                    *value = 67109376;
                    *&value[4] = v144;
                    *&value[8] = 1024;
                    *&value[10] = v121;
                    _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "Warning level: %d cap: %d\n", value, 0xEu);
                    v144 = HIDWORD(v183);
                  }

                  v139 = &unk_1000AC000;
                  v146 = *(v95 + 32);
                  nullsub_3(v144, v97);
                  LODWORD(v144) = HIDWORD(v183);
                  dword_1000AB5FC = HIDWORD(v183);
                  v132 = v176;
                }
              }

              else
              {
                LODWORD(v144) = HIDWORD(v183);
              }

              v139[995] = v144;
            }

LABEL_272:
            dispatch_assert_queue_V2(qword_1000ACCE0);
            LODWORD(v147) = v121 | 0x80000;
            if (v121 >= 0x65)
            {
              v147 = 0x80000;
            }

            else
            {
              v147 = v147;
            }

            if (v105)
            {
              v147 |= 0x10000uLL;
            }

            if (v132)
            {
              v147 |= 0x20000uLL;
            }

            if (v170)
            {
              v148 = v147 | 0x200000;
            }

            else
            {
              v148 = v147;
            }

            if (v95)
            {
              v148 |= (*(v95 + 16) & 0x200) << 15;
            }

            if (qword_1000AD038 != v148)
            {
              v149 = qword_1000AD038 ^ v148;
              qword_1000AD038 = v148;
              notify_set_state(dword_1000ACF98, v148);
              if ((v149 & 0xFFFFFFFFFEDDFFFFLL) != 0)
              {
                notify_post("com.apple.system.powersources.percent");
                v150 = qword_1000AB980;
                if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
                {
                  v151 = "Batt";
                  *value = 134218498;
                  *&value[4] = v148;
                  if (v105)
                  {
                    v151 = "AC";
                  }

                  *&value[12] = 1024;
                  v185 = v121;
                  v186 = 2082;
                  v187 = v151;
                  _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "Battery capacity change posted(0x%llx). Capacity:%d Source:%{public}s\n", value, 0x1Cu);
                }
              }

              if ((v149 & 0x1000000) != 0)
              {
                sub_10005FA68(qword_1000AB980, "com.apple.system.powersources.criticallevel");
              }
            }

            if (((v121 == v174) & ~v172) == 0 && v135 == v134)
            {
              sub_10005FA68(qword_1000AB980, "com.apple.system.powersources.timeremaining");
            }

            dword_1000ACFB0 = v121;
            sub_100010E08();
            if (byte_1000ACF9D == 1)
            {
              byte_1000ACF9D = 0;
              sub_100010E38(2);
              v152 = qword_1000AB980;
              if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
              {
                v153 = "Batt";
                if (v105)
                {
                  v153 = "AC";
                }

                *value = 136446210;
                *&value[4] = v153;
                _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "Power Source change. Source:%{public}s", value, 0xCu);
              }

              notify_post("com.apple.system.powersources.source");
              kdebug_trace();
            }

            notify_post("com.apple.system.powersources");
            sub_100010E38(32);
            return;
          }
        }

        v105 = 0;
        goto LABEL_199;
      }

      v18 = Mutable;
      v182 = 0;
      v183 = 0;
      v181 = 0;
      v19 = objc_alloc_init(NSMutableDictionary);
      if (!v19)
      {
LABEL_149:

        goto LABEL_150;
      }

      v20 = kCFBooleanTrue;
      CFDictionarySetValue(v18, @"Battery Provides Time Remaining", kCFBooleanTrue);
      v21 = *(a1 + 128);
      if (v21)
      {
        CFDictionarySetValue(v18, @"Failure", v21);
      }

      v175 = v16;
      v22 = *(a1 + 152);
      if (v22)
      {
        CFDictionarySetValue(v18, @"ChargeStatus", v22);
      }

      CFDictionarySetValue(v18, @"Transport Type", @"Internal");
      CFDictionarySetValue(v18, @"Type", @"InternalBattery");
      if (*(a1 + 16))
      {
        v23 = @"AC Power";
      }

      else
      {
        v23 = @"Battery Power";
      }

      CFDictionarySetValue(v18, @"Power Source State", v23);
      v24 = +[NSProcessInfo processInfo];
      v25 = kCFBooleanFalse;
      if ([v24 isLowPowerModeEnabled])
      {
        v26 = kCFBooleanTrue;
      }

      else
      {
        v26 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v18, @"LPM Active", v26);

      if ((*(a1 + 16) & 2) != 0)
      {
        v27 = kCFBooleanTrue;
      }

      else
      {
        v27 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v18, @"Raw External Connected", v27);
      v28 = sub_10000BDC0(@"Battery Case");
      if (v28)
      {
        v29 = v28;
        v173 = v19;
        valuePtr = 0;
        *value = 0;
        if (CFDictionaryGetValueIfPresent(v28, @"Current Capacity", value))
        {
          v30 = *value;
          TypeID = CFNumberGetTypeID();
          if (v30)
          {
            if (CFGetTypeID(v30) == TypeID)
            {
              CFNumberGetValue(*value, kCFNumberIntType, &valuePtr);
            }
          }
        }

        v179 = 0;
        *value = 0;
        if (CFDictionaryGetValueIfPresent(v29, @"Max Capacity", value))
        {
          v32 = *value;
          v33 = CFNumberGetTypeID();
          if (v32)
          {
            if (CFGetTypeID(v32) == v33)
            {
              CFNumberGetValue(*value, kCFNumberIntType, &v179);
            }
          }
        }

        v171 = v179 && v179 >= valuePtr && 100 * valuePtr / v179 != 0;
        v177 = 0;
        v178 = 0;
        *value = 0;
        if (CFDictionaryGetValueIfPresent(v29, @"Vendor ID", value))
        {
          v37 = *value;
          v38 = CFNumberGetTypeID();
          if (v37)
          {
            if (CFGetTypeID(v37) == v38)
            {
              CFNumberGetValue(*value, kCFNumberIntType, &v178);
            }
          }
        }

        *value = 0;
        if (CFDictionaryGetValueIfPresent(v29, @"Product ID", value))
        {
          v39 = *value;
          v40 = CFNumberGetTypeID();
          if (v39)
          {
            if (CFGetTypeID(v39) == v40)
            {
              CFNumberGetValue(*value, kCFNumberIntType, &v177);
            }
          }
        }

        v41 = v178 == 10522 && v177 == 405;
        v42 = v41;
        v43 = *(a1 + 8);
        v44 = CFDictionaryGetTypeID();
        if (v43 && CFGetTypeID(v43) == v44 && (v45 = CFDictionaryGetValue(*(a1 + 8), @"AdapterDetails"), v46 = CFDictionaryGetTypeID(), v45) && CFGetTypeID(v45) == v46)
        {
          v47 = 32 * (CFDictionaryGetValue(v45, @"IsWireless") == kCFBooleanTrue);
        }

        else
        {
          v47 = 0;
        }

        v19 = v173;
        if (v42)
        {
          v35 = 32;
        }

        else
        {
          v35 = v47;
        }

        v36 = v171;
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      v48 = *(a1 + 16);
      if (v36 | ((v48 & 2) >> 1))
      {
        v49 = 16;
      }

      else
      {
        v49 = 0;
      }

      *(a1 + 16) = v49 | v48 & 0xFFEF;
      if (v36 | ((v48 & 2) >> 1))
      {
        v50 = kCFBooleanTrue;
      }

      else
      {
        v50 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v18, @"Show Charging UI", v50);
      v51 = *(a1 + 16);
      if (v51)
      {
        v52 = 32;
      }

      else
      {
        v52 = v35;
      }

      *(a1 + 16) = v52 | v51 & 0xFFDF;
      if ((v52 & 0x20) != 0)
      {
        v53 = kCFBooleanTrue;
      }

      else
      {
        v53 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v18, @"Play Charging Chime", v53);
      v54 = *(a1 + 36);
      if (v54)
      {
        v54 = *(a1 + 100);
        v55 = 100;
      }

      else
      {
        v55 = 0;
      }

      v182 = __PAIR64__(v55, v54);
      v56 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v182 + 4);
      if (v56)
      {
        v57 = v56;
        CFDictionarySetValue(v18, @"Max Capacity", v56);
        CFRelease(v57);
      }

      v58 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v182);
      if (v58)
      {
        v59 = v58;
        CFDictionarySetValue(v18, @"Current Capacity", v58);
        CFRelease(v59);
      }

      if ((*(a1 + 16) & 0x40) != 0)
      {
        v60 = kCFBooleanTrue;
      }

      else
      {
        v60 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v18, @"Is Present", v60);
      v183 = *(a1 + 96);
      v61 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v183 + 4);
      v62 = *(a1 + 16);
      if ((v62 & 0x40) != 0)
      {
        if ((v62 & 8) == 0)
        {
          CFDictionarySetValue(v18, @"Is Charging", kCFBooleanFalse);
          if (*(a1 + 16))
          {
            CFDictionarySetValue(v18, @"Time to Full Charge", v61);
            CFDictionarySetValue(v18, @"Time to Empty", v61);
            v154 = *(a1 + 36);
            if (v154 && *(a1 + 24) & 1 | ((100 * *(a1 + 32) / v154) > 0x63))
            {
              v25 = kCFBooleanTrue;
            }

            v65 = @"Is Charged";
            v69 = v18;
            v70 = v25;
LABEL_125:
            CFDictionarySetValue(v69, v65, v70);
            CFRelease(v61);
            if (*(a1 + 60) != dword_1000AB600)
            {
              v71 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              if (v71)
              {
                v72 = v71;
                sub_100012A5C(v71, a1);
                CFRelease(v72);
                dword_1000AB600 = *(a1 + 60);
              }
            }

            if (*(a1 + 136))
            {
              v73 = *(a1 + 136);
            }

            else
            {
              v73 = @"Unnamed";
            }

            CFDictionarySetValue(v18, @"Name", v73);
            v74 = v175;
            if (*(v175 + 1) != 2)
            {
              v181 = *v175 | (*(v175 + 2) << 16);
              v75 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v181);
              if (v75)
              {
                v76 = v75;
                CFDictionarySetValue(v18, @"Power Source ID", v75);
                CFRelease(v76);
              }
            }

            v77 = sub_10000BE84();
            v78 = v19;
            [v19 setObject:v77 forKeyedSubscript:@"Trusted Battery Data"];
            v79 = [NSNumber numberWithUnsignedInt:*(a1 + 60)];
            v80 = v77;
            v81 = v79;
            if (v80)
            {
              v82 = [v80 objectForKeyedSubscript:@"Trusted Data Enabled"];
              if (v82)
              {
                v83 = v82;
                v84 = [v80 objectForKeyedSubscript:@"Trusted Data Enabled"];
                if ([v84 intValue])
                {
                  v85 = [v80 objectForKeyedSubscript:@"Trusted Cycle Count"];

                  v74 = v175;
                  if (v85)
                  {
                    v86 = [v80 objectForKeyedSubscript:@"Trusted Cycle Count"];
LABEL_141:
                    v87 = v86;

                    v19 = v78;
                    [v78 setObject:v87 forKeyedSubscript:@"Cycle count"];

                    v88 = *(a1 + 80);
                    if (v88)
                    {
                      v89 = [NSDate dateWithTimeIntervalSinceReferenceDate:v88];
                      [v78 setObject:v89 forKeyedSubscript:@"Date of first use"];
                    }

                    if (qword_1000AD040)
                    {
                      v90 = qword_1000AD040;
LABEL_145:
                      [v19 setObject:v90 forKeyedSubscript:@"Date of manufacture"];
LABEL_146:
                      objc_storeStrong(v74 + 4, v19);
                      v91 = v74[3];
                      if (v91)
                      {
                        CFRelease(v91);
                      }

                      v74[3] = v18;

                      goto LABEL_149;
                    }

                    v106 = qword_1000ACCF0;
                    if (!v106)
                    {
                      v90 = 0;
                      goto LABEL_146;
                    }

                    v107 = v106;
                    if ([v106 length] != 18)
                    {
                      if ([v107 length] == 17)
                      {
                        v155 = v107;
                        v156 = [v155 uppercaseString];
                        v157 = *([v156 UTF8String] + 3);

                        v158 = [v155 uppercaseString];
                        v159 = *([v158 UTF8String] + 6);

                        value[2] = 0;
                        v160 = [v155 uppercaseString];

                        *value = *([v160 UTF8String] + 2);
                        if ((v159 - 56) >= 0xFFFFFFF9 && v157 - 58 >= 0xFFFFFFF6 && (v161 = strtoul(value, 0, 10), v161 - 54 >= 0xFFFFFFFFFFFFFFCBLL))
                        {
                          v163 = v161;
                          v164 = (v159 - 48);
                          if (v157 >= 0x32)
                          {
                            v165 = 1972;
                          }

                          else
                          {
                            v165 = 1982;
                          }

                          v166 = v165 + v157;
                          v167 = objc_alloc_init(NSDateComponents);
                          [v167 setWeekday:v164];
                          [v167 setWeekOfYear:v163];
                          [v167 setYearForWeekOfYear:v166];
                          v168 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
                          v169 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
                          [v168 setTimeZone:v169];

                          v113 = [v168 dateFromComponents:v167];
                        }

                        else
                        {
                          v113 = 0;
                        }

                        v74 = v175;
                        v19 = v78;
LABEL_316:
                        v162 = qword_1000AD040;
                        qword_1000AD040 = v113;
                      }

                      v90 = qword_1000AD040;

                      if (!v90)
                      {
                        goto LABEL_146;
                      }

                      goto LABEL_145;
                    }

                    *value = 0;
                    v108 = [v107 uppercaseString];
                    v109 = [v108 UTF8String];
                    *value = *(v109 + 3);
                    value[2] = v109[5];

                    v110 = 0;
                    while (1)
                    {
                      v111 = value[v110];
                      if (v111 > 79)
                      {
                        break;
                      }

                      if (v111 >= 74)
                      {
                        v112 = -1;
                        goto LABEL_177;
                      }

LABEL_178:
                      if (++v110 == 3)
                      {
                        v113 = [NSDate dateWithTimeIntervalSince1970:(86400 * strtoull(value, 0, 34))];
                        goto LABEL_316;
                      }
                    }

                    v112 = -2;
LABEL_177:
                    value[v110] = v112 + v111;
                    goto LABEL_178;
                  }
                }

                else
                {

                  v74 = v175;
                }
              }
            }

            v86 = v81;
            goto LABEL_141;
          }

          v63 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v183);
          if (v63)
          {
            v64 = v63;
            CFDictionarySetValue(v18, @"Time to Empty", v63);
            CFRelease(v64);
          }

          v65 = @"Time to Full Charge";
LABEL_124:
          v69 = v18;
          v70 = v61;
          goto LABEL_125;
        }

        CFDictionarySetValue(v18, @"Is Charging", kCFBooleanTrue);
        v66 = *(a1 + 36);
        if (!v66 || 100 * *(a1 + 32) / v66 <= 98)
        {
          v20 = kCFBooleanFalse;
        }

        CFDictionarySetValue(v18, @"Is Finishing Charge", v20);
        v67 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v183);
        if (v67)
        {
          v68 = v67;
          CFDictionarySetValue(v18, @"Time to Full Charge", v67);
          CFRelease(v68);
        }
      }

      else
      {
        CFDictionarySetValue(v18, @"Is Charging", kCFBooleanFalse);
        CFDictionarySetValue(v18, @"Time to Full Charge", v61);
      }

      v65 = @"Time to Empty";
      goto LABEL_124;
    }
  }

  v34 = qword_1000AB980;
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
  {
    *value = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "No batteries found yet..\n", value, 2u);
  }
}

uint64_t sub_10000BC7C(int a1, void *a2)
{
  obj = a2;
  dispatch_assert_queue_barrier(qword_1000ACCE0);
  v3 = qword_1000ACCB0;
  if ((a1 & 1) != 0 || qword_1000ACCB0)
  {
    if (HIBYTE(word_1000ACF90) == 1)
    {
      HIBYTE(word_1000ACF90) = 0;
      if (qword_1000ACCB0)
      {
        qword_1000ACCB0 = 0;
      }
    }

    if (a1)
    {
      if (!obj)
      {
        goto LABEL_3;
      }

      v4 = [obj isEqual:qword_1000ACCB0];
      v5 = obj;
      if (v4)
      {
        goto LABEL_3;
      }
    }

    else
    {

      v5 = 0;
    }

    v6 = qword_1000ACCB0;
    obja = v5;
    if (qword_1000ACCB0)
    {
      qword_1000ACCB0 = 0;

      v5 = obja;
    }

    if (v5)
    {
      objc_storeStrong(&qword_1000ACCB0, v5);
    }

    sub_10005FA68(qword_1000AB980, "com.apple.system.powermanagement.poweradapter");
    dispatch_assert_queue_V2(qword_1000ACCE0);
    v7 = qword_1000ACCF8;
    if (qword_1000ACCF8)
    {
      if (*qword_1000ACCF8)
      {
        v8 = *(*qword_1000ACCF8 + 8);
        TypeID = CFDictionaryGetTypeID();
        if (v8)
        {
          if (CFGetTypeID(v8) == TypeID)
          {
            sub_10002D9FC(*(*v7 + 8));
          }
        }
      }
    }
  }

LABEL_3:

  return _objc_release_x1();
}

uint64_t sub_10000BDC0(const void *a1)
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  v2 = &dword_100000018;
  while (1)
  {
    v3 = *(&qword_1000ACD00 + v2);
    TypeID = CFDictionaryGetTypeID();
    if (v3)
    {
      if (CFGetTypeID(v3) == TypeID)
      {
        Value = CFDictionaryGetValue(*(&qword_1000ACD00 + v2), @"Type");
        v6 = CFStringGetTypeID();
        if (Value)
        {
          if (CFGetTypeID(Value) == v6 && CFEqual(Value, a1))
          {
            break;
          }
        }
      }
    }

    v2 += 40;
    if (v2 == 664)
    {
      return 0;
    }
  }

  return *(&qword_1000ACD00 + v2);
}

id sub_10000BE84()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_10002AEAC;
  v8 = sub_10002AEBC;
  v9 = 0;
  if (qword_1000ACA70)
  {
    v0 = [qword_1000ACA70 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010CA0;
    block[3] = &unk_1000994A8;
    block[4] = &v4;
    dispatch_sync(v0, block);

    v1 = v5[5];
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000BF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BFAC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    free(v2);
    *(a1 + 64) = 0;
    v3 = *(a1 + 96);

    sub_100007E54(v3);
  }
}

uint64_t sub_10000C008()
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  v0 = &dword_100000018;
  while (1)
  {
    v1 = *(&qword_1000ACD00 + v0);
    if (v1)
    {
      Value = CFDictionaryGetValue(v1, @"Transport Type");
      TypeID = CFStringGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Internal"))
        {
          break;
        }
      }
    }

    v0 += 40;
    if (v0 == 664)
    {
      return 0;
    }
  }

  return *(&qword_1000ACD00 + v0);
}

uint64_t sub_10000C0B4(uint64_t a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v6 = a2[1];
  v9 = *a2;
  v8[2] = sub_10000C22C;
  v8[3] = &unk_10009A2D0;
  v10 = v6;
  v11 = a3;
  v8[4] = a4;
  v8[5] = a5;
  v8[6] = a6;
  dispatch_sync(qword_1000ACCE0, v8);
  return 0;
}

uint64_t sub_10000C140(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v6;
  result = sub_10000C0B4(v4, v7, v5, a2 + 28, a2 + 52, a2 + 56);
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

uint64_t sub_10000C22C(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 72);
  v11[0] = *(a1 + 56);
  v11[1] = v3;
  v4 = sub_10000C328(v11, v2, 0);
  if (v4)
  {
    Data = CFPropertyListCreateData(0, v4, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    v6 = Data;
    if (Data)
    {
      v7 = [(__CFData *)Data length];
      v8 = *(a1 + 32);
      **(a1 + 40) = v7;
      vm_allocate(mach_task_self_, v8, v7, 1);
      memcpy(**(a1 + 32), [(__CFData *)v6 bytes], **(a1 + 40));
    }
  }

  else
  {
    v9 = *(a1 + 40);
    **(a1 + 32) = 0;
    *v9 = 0;
  }

  **(a1 + 48) = 0;

  return _objc_release_x1();
}

id sub_10000C328(_OWORD *a1, int a2, uint64_t a3)
{
  dispatch_assert_queue_V2(qword_1000ACCE0);
  v6 = 0;
  v7 = 0;
  v8 = &qword_1000ACD18;
  v9 = 16;
  v26 = a1;
  do
  {
    v10 = *v8;
    if (!*v8)
    {
      goto LABEL_48;
    }

    if (a2 <= 1)
    {
      if (a2 && (a2 != 1 || *(v8 - 5) != 1))
      {
        goto LABEL_48;
      }
    }

    else if (a2 == 2)
    {
      if (*(v8 - 5) != 2)
      {
        goto LABEL_48;
      }
    }

    else if (a2 == 3)
    {
      if ((*(v8 - 5) - 1) >= 2)
      {
        goto LABEL_48;
      }
    }

    else if (a2 != 4 || *(v8 - 5) != 3)
    {
      goto LABEL_48;
    }

    if (!v7)
    {
      v7 = objc_alloc_init(NSMutableArray);
      v10 = *v8;
    }

    if (*(v8 - 5) == 1 && v10)
    {
      v10 = [[NSMutableDictionary alloc] initWithDictionary:*v8];

      if (a3)
      {
        [v10 addEntriesFromDictionary:*(qword_1000ACFA0 + 32)];
      }

      else
      {
        v11 = a3;
        v12 = v10;
        dispatch_assert_queue_V2(qword_1000ACCE0);
        if (_os_feature_enabled_impl())
        {
          v13 = [v12 objectForKeyedSubscript:@"Current Capacity"];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 intValue];
            v16 = 5 * (v15 / 5);
            v17 = v15 % 5;
            if (v15 % 5 >= 0)
            {
              v18 = v15 % 5;
            }

            else
            {
              v18 = -v17;
            }

            v19 = 5 - v17;
            if (v19 < 0)
            {
              v19 = -v19;
            }

            if (v18 >= v19)
            {
              v16 += 5;
            }

            if (v16 <= 1)
            {
              v16 = 1;
            }

            if (v16 >= 100)
            {
              v20 = 100;
            }

            else
            {
              v20 = v16;
            }

            v21 = [NSNumber numberWithInt:v20];
            [v12 setObject:v21 forKeyedSubscript:@"Current Capacity"];
          }
        }

        a3 = v11;
        a1 = v26;
      }

      v22 = a1[1];
      v30 = *a1;
      v31 = v22;
      dispatch_assert_queue_V2(qword_1000ACCE0);
      v29[0] = v30;
      v29[1] = v31;
      v23 = sub_1000064E4(v29, @"com.apple.private.iokit.batterydata");
      if (v10 && v23)
      {
        dispatch_assert_queue_V2(qword_1000ACCE0);
        if (qword_1000ACCF8 && *qword_1000ACCF8)
        {
          sub_100012A5C(v10, *qword_1000ACCF8);
        }

        else
        {
          v24 = qword_1000AB980;
          if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
          {
            sub_1000698C0(&buf, v28, v24);
          }
        }
      }

      v6 = v10;
    }

    [v7 addObject:v10];
LABEL_48:
    v8 += 5;
    --v9;
  }

  while (v9);

  return v7;
}

void sub_10000C644()
{
  v0 = qword_1000ABAF8;
  if (qword_1000ABAF8)
  {
    v1 = dispatch_time(0, qword_1000AB728);
    dispatch_source_set_timer(v0, v1, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  Count = CFDictionaryGetCount(qword_1000ABAC0);
  v3 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  if (v3)
  {
    v4 = v3;
    bzero(v3, 8 * Count);
    CFDictionaryGetKeysAndValues(qword_1000ABAC0, 0, v4);
    if (Count >= 1)
    {
      v5 = v4;
      do
      {
        v6 = *v5;
        if (!*v5)
        {
          break;
        }

        if ((*(v6 + 136) & 0x20) != 0)
        {
          sub_10000BFAC(v6);
        }

        ++v5;
        --Count;
      }

      while (Count);
    }

    free(v4);
  }
}

uint64_t sub_10000C738()
{
  v0 = sub_10000CE38(5u);
  v1 = sub_10000CCF4();
  v2 = sub_10000CD0C();
  if (byte_1000AD424 & 1) != 0 || (sub_10000CD20())
  {
    if (v2)
    {
      v3 = 6;
    }

    else
    {
      v3 = 0;
    }

    if (!v2 && v1)
    {
      if (sub_10001C340())
      {
        v3 = 0;
      }

      else
      {
        v3 = 10;
      }
    }
  }

  else if (((v1 || v2) | v0))
  {
    v3 = 6;
  }

  else if (byte_1000AD431)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  if ((byte_1000AD424 & 1) != 0 || (byte_1000AD3A5 & 1) == 0)
  {
    if (byte_1000AD432)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 1;
  }

  if (sub_10000CE38(0x11u))
  {
    v4 |= 0x10uLL;
  }

  if (sub_10000CE38(0xEu))
  {
    v4 |= 0x20uLL;
  }

  if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
  {
    sub_10006DB60();
  }

  if (!dword_1000AD440)
  {
    notify_register_check("com.apple.system.powermanagement.useractivity2", &dword_1000AD440);
  }

  if (xmmword_1000AD3C0 != v4)
  {
    notify_set_state(dword_1000AD440, v4);
    notify_post("com.apple.system.powermanagement.useractivity2");
    v5 = qword_1000AC9A0;
    if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = xmmword_1000AD3C0;
      *&buf[12] = 2048;
      *&v32 = v4;
      WORD4(v32) = 1024;
      *(&v32 + 10) = byte_1000AD3A5;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activity changes from 0x%llx to 0x%llx. UseActiveState:%d\n", buf, 0x1Cu);
      v5 = qword_1000AC9A0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = word_1000AD3F8;
      v7 = byte_1000AD424;
      v8 = HIBYTE(word_1000AD3F8);
      v9 = sub_10000CDD8();
      *buf = 67110400;
      *&buf[4] = v6;
      *&buf[8] = 1024;
      *&buf[10] = v7;
      LOWORD(v32) = 1024;
      *(&v32 + 2) = v8;
      WORD3(v32) = 2048;
      *(&v32 + 1) = v9;
      v33 = 2048;
      v34 = qword_1000AD3E8;
      v35 = 2048;
      v36 = qword_1000AD3F0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "hidActive:%d displayOff:%d assertionActivityValid:%d now:0x%llx  hid_ts:0x%llx assertion_ts:0x%llx\n", buf, 0x32u);
    }

    if ((xmmword_1000AD3C0 & 0x20) == 0 && (v4 & 0x20) != 0)
    {
      *buf = 0;
      v10 = 10;
      do
      {
        notify_get_state(dword_1000AD440, buf);
        if (*buf == v4)
        {
          break;
        }

        usleep(0x3E8u);
        --v10;
      }

      while (v10);
    }

    *&xmmword_1000AD3C0 = v4;
    qword_1000AD3B0 |= v4;
    v11 = os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v11)
      {
        sub_10006DBD4();
      }

      sub_10001C420();
    }

    else
    {
      if (v11)
      {
        sub_10006DC10();
      }

      sub_100008440(0);
    }

    v12 = qword_1000AC9A0;
    if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Evaluating new PerfMode on UserActivity level change.\n", buf, 2u);
    }

    sub_10001C310();
  }

  v13 = sub_10000CD30();
  v14 = *(&xmmword_1000AD3C0 + 1);
  if (*(&xmmword_1000AD3C0 + 1))
  {
    v15 = v13;
    v16 = 0;
    v17 = &qword_1000AD000;
    while (1)
    {
      if ((*(v17 + 1060) & 1) != 0 || v15 >= *(v14 + 6))
      {
        v19 = qword_1000AC9A0;
        v18 = v3;
        if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
        {
          pid = xpc_connection_get_pid(v14[2]);
          *buf = 134218240;
          *&buf[4] = v3;
          *&buf[12] = 1024;
          LODWORD(v32) = pid;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Setting level 0x%llx for pid %d", buf, 0x12u);
          v18 = v3;
          if (v15)
          {
LABEL_57:
            v20 = *(v14 + 6);
            if (v16)
            {
              v21 = 1;
            }

            else
            {
              v21 = v15 >= v20;
            }

            if (v21)
            {
              v16 = v16;
            }

            else
            {
              v16 = v20;
            }
          }
        }

        else if (v15)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v18 = xmmword_1000AD3C0 & 0xFFFFFFFFFFFFFFF0 | 1;
        if (v15)
        {
          goto LABEL_57;
        }
      }

      if (v14[4] == v18)
      {
        v22 = qword_1000AC9A0;
        if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
        {
          v23 = v14[2];
          v24 = xpc_connection_get_pid(v23);
          *buf = 134218496;
          *&buf[4] = v23;
          v17 = &qword_1000AD000;
          *&buf[12] = 1024;
          LODWORD(v32) = v24;
          WORD2(v32) = 2048;
          *(&v32 + 6) = v18;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Client %p(pid %d) activity level is already at 0x%llx\n", buf, 0x1Cu);
        }
      }

      else
      {
        v25 = xpc_dictionary_create(0, 0, 0);
        v26 = qword_1000AC9A0;
        if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
        {
          v28 = v14[2];
          v29 = xpc_connection_get_pid(v28);
          *buf = 134218496;
          *&buf[4] = v18;
          *&buf[12] = 2048;
          *&v32 = v28;
          v17 = &qword_1000AD000;
          WORD4(v32) = 1024;
          *(&v32 + 10) = v29;
          _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Sending new activity levels(0x%llx) to client %p(pid %d)\n", buf, 0x1Cu);
        }

        xpc_dictionary_set_uint64(v25, "UserActivityLevels", v18);
        xpc_connection_send_message(v14[2], v25);
        xpc_release(v25);
        v14[4] = v18;
      }

      v14 = *v14;
      if (!v14)
      {
        return v16;
      }
    }
  }

  return 0;
}

unint64_t sub_10000CD30()
{
  v0 = sub_10000CDD8();
  if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
  {
    sub_10006E4C8();
  }

  if (byte_1000AD3A7 == 1)
  {
    if (word_1000AD3F8)
    {
      v1 = 0;
    }

    else
    {
      v1 = v0 - qword_1000AD3E8;
    }
  }

  else
  {
    v1 = -1;
  }

  v2 = v0 - qword_1000AD3F0;
  if (!HIBYTE(word_1000AD3F8))
  {
    v2 = -1;
  }

  if (v1 >= v2)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10000CDD8()
{
  v0 = mach_continuous_time();
  v1 = dword_1000AD4E4;
  if (!dword_1000AD4E4)
  {
    mach_timebase_info(&dword_1000AD4E0);
    v1 = dword_1000AD4E4;
  }

  return v0 * dword_1000AD4E0 / (1000000000 * v1);
}

uint64_t sub_10000CE38(unsigned int a1)
{
  v2 = 0;
  sub_100004878(&unk_1000ABB58 + 160 * a1, &v2);
  return v2;
}

void sub_10000CE78(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2810000000;
  v17 = &unk_1000922E3;
  v18 = 0;
  Value = CFDictionaryGetValue(qword_1000ABAC0, a1);
  v3 = Value;
  if (Value)
  {
    Value[136] |= 0x20u;
    v4 = *(Value + 15);
    if (v4)
    {
      xpc_release(v4);
      *(v3 + 15) = 0;
    }
  }

  sub_10000D09C(a1, "com.apple.system.powermanagement.assertions.anychange", 2);
  sub_10000D09C(a1, "com.apple.system.powermanagement.assertions.timeout", 2);
  sub_10000D09C(a1, "com.apple.system.powermanagement.assertions", 2);
  sub_10000D2DC(a1, 0);
  for (i = 0; i != 21; ++i)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000DBA4;
    v12[3] = &unk_10009ACD0;
    v13 = a1;
    v12[4] = &v14;
    sub_1000047A8(&unk_1000ABB58 + 160 * i, 0xFu, v12);
    v6 = *(&unk_1000ABB58 + 20 * i + 16);
    if (v6)
    {
      v6(&unk_1000ABB58 + 160 * i, 1);
    }

    for (j = v15[4]; j; j = v11)
    {
      v8 = j[13];
      entr_act_end();
      v9 = *j;
      v10 = *(j + 1);
      if (*j)
      {
        *(v9 + 8) = v10;
      }

      *v10 = v9;
      v11 = v15[4];
      sub_100007BA0(j, 3);
    }
  }

  if (dword_1000AD1A4)
  {
    notify_post("com.apple.system.powermanagement.assertions.anychange");
  }

  _Block_object_dispose(&v14, 8);
}

void sub_10000D074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000D09C(uint64_t a1, const char *a2, int a3)
{
  if (a3 != 1)
  {
    v7 = 3758097090;
    Value = CFDictionaryGetValue(qword_1000ABAC0, a1);
    if (!Value)
    {
      return v7;
    }

    v10 = Value;
    if (!strncmp(a2, "com.apple.system.powermanagement.assertions.anychange", 0x36uLL))
    {
      if (a3 != 2 || (v10[136] & 1) == 0)
      {
        return 0;
      }

      v10[136] &= ~1u;
      --dword_1000AD1A4;
    }

    else if (!strncmp(a2, "com.apple.system.powermanagement.assertions", 0x2CuLL))
    {
      if (a3 != 2 || (v10[136] & 2) == 0)
      {
        return 0;
      }

      v10[136] &= ~2u;
      --dword_1000AD190;
    }

    else
    {
      if (strncmp(a2, "com.apple.system.powermanagement.assertions.timeout", 0x34uLL))
      {
        return v7;
      }

      if (a3 != 2 || (v10[136] & 4) == 0)
      {
        return 0;
      }

      v10[136] &= ~4u;
      --dword_1000AD1A8;
    }

    sub_100007E54(a1);
    return 0;
  }

  v5 = sub_10000229C(a1);
  if (!v5)
  {
    v5 = sub_100002B14(a1);
    if (!v5)
    {
      return 3758097085;
    }
  }

  v6 = v5;
  if (!strncmp(a2, "com.apple.system.powermanagement.assertions.anychange", 0x36uLL))
  {
    if (v6[34])
    {
      goto LABEL_30;
    }

    v7 = 0;
    *(v6 + 136) |= 1u;
    ++dword_1000AD1A4;
  }

  else
  {
    if (strncmp(a2, "com.apple.system.powermanagement.assertions", 0x2CuLL))
    {
      if (strncmp(a2, "com.apple.system.powermanagement.assertions.timeout", 0x34uLL))
      {
        v7 = 3758097090;
LABEL_31:
        sub_100007E54(a1);
        return v7;
      }

      if ((v6[34] & 4) == 0)
      {
        v7 = 0;
        *(v6 + 136) |= 4u;
        ++dword_1000AD1A8;
        return v7;
      }

LABEL_30:
      v7 = 0;
      goto LABEL_31;
    }

    if ((v6[34] & 2) != 0)
    {
      goto LABEL_30;
    }

    v7 = 0;
    *(v6 + 136) |= 2u;
    ++dword_1000AD190;
  }

  return v7;
}

void sub_10000D2DC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = sub_10000229C(a1);
    if (!v3)
    {
      v3 = sub_100002B14(a1);
      if (!v3)
      {
        return;
      }
    }

    v4 = v3;
    if ((v3[34] & 0x40) == 0)
    {
      if (dword_1000ABAD8++)
      {
LABEL_6:
        *(v4 + 136) |= 0x40u;
        return;
      }

      Count = CFDictionaryGetCount(qword_1000ABAC0);
      v9 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
      if (v9)
      {
        v10 = v9;
        bzero(v9, 8 * Count);
        CFDictionaryGetKeysAndValues(qword_1000ABAC0, 0, v10);
        if (Count >= 1)
        {
          v11 = v10;
          do
          {
            if (!*v11)
            {
              break;
            }

            sub_100004460(*v11++);
            --Count;
          }

          while (Count);
        }

        free(v10);
        v12 = &unk_1000ABB58;
        v13 = 21;
        do
        {
          if (v12[26] <= 3u)
          {
            sub_1000047A8(v12, 3u, &stru_10009A880);
          }

          v12 += 40;
          --v13;
        }

        while (v13);
        if (!qword_1000ABAF8)
        {
          v14 = sub_100002A58();
          qword_1000ABAF8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v14);
          dispatch_source_set_event_handler(qword_1000ABAF8, &stru_10009A8A0);
          dispatch_source_set_cancel_handler(qword_1000ABAF8, &stru_10009A8C0);
          v15 = qword_1000ABAF8;
          v16 = dispatch_time(0, qword_1000AB728);
          dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
          dispatch_resume(qword_1000ABAF8);
        }

        goto LABEL_6;
      }
    }
  }

  else
  {
    if (!dword_1000ABAD8)
    {
      return;
    }

    Value = CFDictionaryGetValue(qword_1000ABAC0, a1);
    if (!Value)
    {
      return;
    }

    v7 = Value;
    if ((Value[136] & 0x40) == 0)
    {
      return;
    }

    if (!--dword_1000ABAD8)
    {
      v17 = CFDictionaryGetCount(qword_1000ABAC0);
      v18 = malloc_type_malloc(8 * v17, 0x2004093837F09uLL);
      if (!v18)
      {
        return;
      }

      v19 = v18;
      bzero(v18, 8 * v17);
      CFDictionaryGetKeysAndValues(qword_1000ABAC0, 0, v19);
      if (v17 >= 1)
      {
        v20 = v19;
        do
        {
          if (!*v20)
          {
            break;
          }

          sub_10000BFAC(*v20++);
          --v17;
        }

        while (v17);
      }

      free(v19);
      v21 = &unk_1000ABB58;
      v22 = 21;
      do
      {
        if (v21[26] <= 3u)
        {
          sub_1000047A8(v21, 0xFu, &stru_10009A8E0);
        }

        v21 += 40;
        --v22;
      }

      while (v22);
      if (qword_1000ABAF8)
      {
        dispatch_source_cancel(qword_1000ABAF8);
      }
    }

    v7[136] &= ~0x40u;
  }

  sub_100007E54(a1);
}

uint64_t sub_10000D5BC(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    return result;
  }

  v3 = result;
  result = sub_100004878(result, 0);
  v4 = *(v3 + 40);
  v5 = 1 << v4;
  if (a2)
  {
    if (((dword_1000AD1AC & (1 << v4)) == 0) | result & 1)
    {
      return result;
    }

    v6 = dword_1000AD1AC & ~v5;
  }

  else
  {
    if ((((dword_1000AD1AC & (1 << v4)) == 0) & result) != 1)
    {
      return result;
    }

    v6 = dword_1000AD1AC | v5;
  }

  dword_1000AD1AC = v6;
  if (v4 == 4)
  {
    result = sub_10005DF60(@"BatteryWarningsDisabled", kCFBooleanTrue);
  }

  else
  {
    if (v4 == 3)
    {
      v7 = a2 == 0;
      v8 = 1;
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_14;
      }

      v7 = a2 == 0;
      v8 = 0;
    }

    result = sub_1000510D0(v8, v7);
  }

LABEL_14:
  if (dword_1000AD190)
  {

    return notify_post("com.apple.system.powermanagement.assertions");
  }

  return result;
}

void sub_10000D6BC(uint64_t a1, int a2)
{
  if (a2 != 2 && *(a1 + 40) == 6)
  {
    v4 = sub_100004878(a1, 0);
    if (a2)
    {
      if (v4)
      {
        return;
      }

      dword_1000AD1AC &= ~(1 << *(a1 + 40));
      v5 = sub_10004F0C8(@"PreventUserIdleSystemSleep", @"Waiting for springboard or equivalent process to start", 0, 0, 0, 0, 0.0);
      sub_10004F3E0(v5, &unk_1000AD2B8, 0);
      CFRelease(v5);
    }

    else
    {
      if (!v4)
      {
        return;
      }

      dword_1000AD1AC |= 1 << *(a1 + 40);
      sub_10004F48C(&unk_1000AD2B8);
    }

    if (dword_1000AD190)
    {

      notify_post("com.apple.system.powermanagement.assertions");
    }
  }
}

uint64_t sub_10000D7C8(uint64_t a1, _OWORD *a2, vm_address_t *a3, unsigned int *a4, _DWORD *a5)
{
  propertyList = 0;
  *a4 = 0;
  v9 = sub_100010698(&propertyList);
  *a5 = v9;
  v10 = propertyList;
  if (v9)
  {
    if (!propertyList)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (propertyList)
  {
    Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v12 = Data;
      Length = CFDataGetLength(Data);
      *a4 = Length;
      vm_allocate(mach_task_self_, a3, Length, 1);
      v14 = *a3;
      BytePtr = CFDataGetBytePtr(v12);
      memcpy(v14, BytePtr, *a4);
      v16 = a2[1];
      v18[0] = *a2;
      v18[1] = v16;
      if (sub_1000064E4(v18, @"com.apple.private.iokit.powerlogging"))
      {
        sub_10000C644();
      }

      CFRelease(v10);
      v10 = v12;
    }

    else
    {
      *a5 = -536870199;
    }

LABEL_10:
    CFRelease(v10);
  }

  return 0;
}

void sub_10000D8E0(void *a1, uint64_t a2, int a3)
{
  if (xpc_get_type(a1) != &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006C380();
    }

    return;
  }

  uint64 = xpc_dictionary_get_uint64(a1, "assertionCheckToken");
  v7 = dword_1000AD150;
  if (dword_1000AD150 == uint64)
  {
    Value = CFDictionaryGetValue(qword_1000ABAC0, a2);
    if (Value)
    {
      v9 = Value;
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
      {
        sub_10006C3F0();
        if (a3)
        {
          goto LABEL_9;
        }
      }

      else if (a3)
      {
LABEL_9:
        if (xpc_dictionary_get_value(a1, "assertionUpdateActives"))
        {
          v10 = _CFXPCCreateCFObjectFromXPCObject();
          if (v10)
          {
            v11 = v10;
            v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", a2);
            CFDictionarySetValue(qword_1000AD158, v12, v11);
            CFRelease(v11);
            CFRelease(v12);
          }
        }

        goto LABEL_21;
      }

      sub_100009728(v9, a1);
LABEL_21:
      if (xpc_dictionary_get_BOOL(a1, "assertionActivityUpdateOverflow"))
      {
        byte_1000AD160 = 1;
      }

      CFSetRemoveValue(qword_1000AD168, v9);
      sub_100007E54(a2);
      if (!CFSetGetCount(qword_1000AD168))
      {
        if (a3)
        {
          sub_10004D5DC(qword_1000AD158);
          if (qword_1000AD158)
          {
            CFRelease(qword_1000AD158);
          }
        }

        else
        {
          sub_1000156AC(0, byte_1000AD160);
        }

        dword_1000AD150 = 0;
      }

      return;
    }

    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006C460();
    }
  }

  else
  {
    v13 = qword_1000ABAB8;
    v14 = os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v14)
      {
        *buf = 67109632;
        v16 = a2;
        v17 = 1024;
        v18 = uint64;
        v19 = 1024;
        v20 = v7;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "processAssertionActivityUpdateResp: Unexpected response from pid %d. token: %u expected: %u\n", buf, 0x14u);
      }
    }

    else if (v14)
    {
      sub_10001BFA0();
    }
  }
}

void sub_10000DBA4(uint64_t a1, void *a2)
{
  if (*(a2[9] + 96) == *(a1 + 40))
  {
    sub_100007AB8(a2, 0);
    v4 = *(*(*(a1 + 32) + 8) + 32);
    *a2 = v4;
    if (v4)
    {
      *(*(*(*(a1 + 32) + 8) + 32) + 8) = a2;
    }

    *(*(*(a1 + 32) + 8) + 32) = a2;
    a2[1] = *(*(a1 + 32) + 8) + 32;
  }
}

NSDictionary *__cdecl sub_10000DC44(id a1, NSDictionary *a2)
{
  TypeID = CFArrayGetTypeID();
  obj = sub_10000DE64(@"BatteryData", TypeID);
  if (!obj)
  {
    sub_100067C28(&v21);
LABEL_17:
    v4 = v21;
    goto LABEL_14;
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  if (!v3)
  {
    sub_100067BC8(qword_1000AB7E8, &v21);
    goto LABEL_17;
  }

  v4 = v3;
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEBUG))
  {
    sub_100067B44(obj);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    v9 = 1;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (v9)
        {
          v7 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:@"Timestamp"];
          [(NSDictionary *)v4 setObject:v7 forKeyedSubscript:@"StartTimestamp"];
        }

        v12 = [objc_msgSend(v11 objectForKeyedSubscript:{@"Timestamp", "unsignedLongLongValue"}];
        v13 = (v12 - [v7 unsignedLongLongValue]) / 0xF4240uLL;
        v14 = [v11 mutableCopy];
        [v14 removeObjectForKey:@"Timestamp"];
        [(NSDictionary *)v4 setObject:v14 forKeyedSubscript:[NSNumber numberWithUnsignedLongLong:v13]];

        v9 = 0;
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
      v9 = 0;
    }

    while (v6);
  }

LABEL_14:

  return v4;
}

const void *sub_10000DE64(const __CFString *a1, uint64_t a2)
{
  v4 = IOServiceMatching("AppleBTM");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (!MatchingService)
  {
    sub_100067970(&v10);
    return v10;
  }

  v6 = MatchingService;
  if (!a1)
  {
    sub_100067910(&v10);
    v8 = v10;
    goto LABEL_8;
  }

  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, a1, kCFAllocatorDefault, 0);
  v8 = CFProperty;
  if (CFProperty && CFGetTypeID(CFProperty) == a2)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
  {
    sub_10006789C();
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v8)
  {
LABEL_7:
    CFRelease(v8);
    v8 = 0;
  }

LABEL_8:
  IOObjectRelease(v6);
  return v8;
}

uint64_t sub_10000DF94()
{
  if (!qword_1000ACBC0)
  {
    qword_1000ACBC0 = _sl_dlopen();
  }

  return qword_1000ACBC0;
}

uint64_t sub_10000E064()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_1000ACBC8;
  v6 = qword_1000ACBC8;
  if (!qword_1000ACBC8)
  {
    v1 = sub_10003E740();
    v4[3] = dlsym(v1, "PerfPowerTelemetrySendEvent");
    qword_1000ACBC8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10000E138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E150()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_1000ACBD0;
  v6 = qword_1000ACBD0;
  if (!qword_1000ACBD0)
  {
    v1 = sub_10003E740();
    v4[3] = dlsym(v1, "PerfPowerTelemetryCreateIdentifier");
    qword_1000ACBD0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10000E224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSDate *sub_10000E23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E064();
  if (v4)
  {

    return v4(a1, a2);
  }

  else
  {
    sub_100063D44();
    return sub_10000E288();
  }
}

NSDate *sub_10000E288()
{
  v0 = +[NSDate now];
  if (qword_1000ACB88)
  {
    v1 = off_1000ACB90 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    [qword_1000ACBD8 doubleForKey:@"ReferenceRTCTicks"];
    v3 = v2;
    v4 = [qword_1000ACBD8 objectForKey:@"ReferenceWalltime"];
    [qword_1000ACBD8 doubleForKey:@"RTCTicksDelta"];
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      sub_10000E578();
      v8 = v7;
      v9 = v7 - v3;
      v10 = v6 + v9;
      if (v6 + v9 >= 0.0)
      {
        v0 = [v4 dateByAddingTimeInterval:v6 + v9];
        v11 = qword_1000ACBD8;
        objc_sync_enter(qword_1000ACBD8);
        [qword_1000ACBD8 setDouble:@"LastKnownRTCTicks" forKey:v8];
        if (([qword_1000ACBD8 BOOLForKey:@"NeedSystemTimeUpdate"] & 1) == 0)
        {
          v16 = +[NSDate now];
          [qword_1000ACBD8 setObject:v16 forKey:@"LastKnownWalltime"];
        }
      }

      else
      {
        v11 = qword_1000ACBD8;
        objc_sync_enter(qword_1000ACBD8);
        v12 = [qword_1000ACBD8 BOOLForKey:@"NeedSystemTimeUpdate"];
        v13 = qword_1000AB7E8;
        v14 = os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR);
        if (v12)
        {
          if (v14)
          {
            sub_10006683C();
          }
        }

        else
        {
          if (v14)
          {
            v18 = 134218752;
            v19 = v8;
            v20 = 2048;
            v21 = v3;
            v22 = 2048;
            v23 = v10;
            v24 = 2048;
            v25 = v6;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unhandled RTC reset detected. Resetting timeline and falling back to system wall time.                                 Current ticks %lf saved ticks %lf total delta %lf saved delta %lf", &v18, 0x2Au);
          }

          [qword_1000ACBD8 setDouble:@"ReferenceRTCTicks" forKey:v8];
          [qword_1000ACBD8 setDouble:@"LastKnownRTCTicks" forKey:v8];
          [qword_1000ACBD8 setObject:v0 forKey:@"ReferenceWalltime"];
          [qword_1000ACBD8 setObject:v0 forKey:@"LastKnownWalltime"];
          [qword_1000ACBD8 setDouble:@"RTCTicksDelta" forKey:0.0];
        }
      }

      objc_sync_exit(v11);
    }

    else
    {
      v15 = objc_opt_class();
      NSStringFromClass(v15);
      if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
      {
        sub_1000667CC();
      }
    }
  }

  return v0;
}

void sub_10000E578()
{
  if (off_1000ACB90)
  {
    v0 = [qword_1000ACBD8 objectForKey:@"CurrentRTCTicksOverride"];
    if (v0)
    {
      [v0 doubleValue];
      if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
      {
        sub_1000672C8();
      }
    }

    else
    {
      v1 = off_1000ACB90;

      v1();
    }
  }
}

uint64_t sub_10000E660()
{
  if (!qword_1000ACC50)
  {
    v1 = MGCopyAnswer();
    qword_1000ACC50 = v1;
    if (v1)
    {
      v2 = v1;
      if (os_log_type_enabled(0, OS_LOG_TYPE_DEFAULT))
      {
        v3 = 138412290;
        v4 = v2;
        _os_log_impl(&_mh_execute_header, 0, OS_LOG_TYPE_DEFAULT, "Device class: %@", &v3, 0xCu);
      }
    }

    else if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      sub_100068280();
    }
  }

  return qword_1000ACC50;
}

uint64_t sub_10000E738()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = -1;
  if (qword_1000AB7E0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E7FC;
    block[3] = &unk_1000994A8;
    block[4] = &v4;
    dispatch_sync(qword_1000AB7E0, block);
    v0 = (v5 + 3);
  }

  else
  {
    v0 = &dword_1000AB1B8;
  }

  v1 = *v0;
  _Block_object_dispose(&v4, 8);
  return v1;
}

const __CFDictionary *sub_10000E814()
{
  v0 = _CFPreferencesCopyMultipleWithContainer();
  v1 = v0;
  if (!v0 || !CFDictionaryGetCount(v0))
  {
    v2 = qword_1000AB978;
    if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to read battery health data from custom container location\n", buf, 2u);
    }

    if (v1)
    {
      CFRelease(v1);
    }

    v3 = CFPreferencesCopyMultiple(0, @"com.apple.batteryhealthdata", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
    v1 = v3;
    if (v3 && (Count = CFDictionaryGetCount(v3)) != 0)
    {
      v5 = Count;
      v6 = qword_1000AB978;
      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Battery data read from default prefs\n", buf, 2u);
      }

      CFDictionaryApplyFunction(v1, sub_10001066C, 0);
      _CFPreferencesSynchronizeWithContainer();
      v7 = malloc_type_malloc(8 * v5, 0xC0040B8AA526DuLL);
      if (v7)
      {
        v13 = v7;
        CFDictionaryGetKeysAndValues(v1, v7, 0);
        if (v5 >= 1)
        {
          v8 = v13;
          do
          {
            CFPreferencesSetValue(*v8, 0, @"com.apple.batteryhealthdata", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
            v9 = qword_1000AB978;
            if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
            {
              v10 = *v8;
              *buf = 138412290;
              v15 = v10;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleting key %@ from old store\n", buf, 0xCu);
            }

            ++v8;
            --v5;
          }

          while (v5);
        }

        free(v13);
      }

      else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
      {
        sub_10006902C();
      }
    }

    else
    {
      v11 = qword_1000AB978;
      if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to read battery data from default prefs\n", buf, 2u);
      }
    }
  }

  return v1;
}

void sub_10000EE68(void *a1, CFMutableDictionaryRef theDict, unsigned int *a3)
{
  v69 = -1;
  v70 = 0;
  if (a3)
  {
    v6 = *a3;
    if (theDict)
    {
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 |= 0x200000u;
      *a3 = v6;
      if ((v6 & 0x80000000) == 0)
      {
LABEL_4:
        if (sub_10000FBA8(theDict))
        {
          goto LABEL_15;
        }

        valuePtr = -1;
        value = 0;
        if (!CFDictionaryGetValueIfPresent(theDict, @"Battery Service State", &value) || (v7 = value, v8 = CFNumberGetTypeID(), !v7) || CFGetTypeID(v7) != v8 || (CFNumberGetValue(value, kCFNumberIntType, &valuePtr), valuePtr - 9 > 1) || (CFDictionaryRemoveValue(theDict, @"CycleCount"), CFDictionaryRemoveValue(theDict, @"Maximum Capacity Percent"), v9 = qword_1000AB978, !os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT)))
        {
LABEL_15:
          v11 = a1;
          v12 = theDict;
          v13 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"Battery Service Flags"];
          v14 = [v13 intValue];

          valuePtr = v14;
          if (sub_10000FC4C())
          {
            sub_100049900(v11, v12, a3, &valuePtr);
          }

          v15 = sub_10000BE84();
          if (MGGetBoolAnswer())
          {
            if ((sub_1000406A8() & 1) == 0)
            {
              if (v15)
              {
                v16 = [v15 objectForKeyedSubscript:@"Trusted Data Enabled"];
                if (v16)
                {
                  v17 = v16;
                  v18 = [v15 objectForKeyedSubscript:@"Trusted Data Enabled"];
                  v19 = [v18 intValue];

                  if (v12)
                  {
                    if (v19)
                    {
                      v20 = v15;
                      v21 = v12;
                      v22 = [(__CFDictionary *)v21 objectForKeyedSubscript:@"Maximum Capacity Percent"];

                      if (v22)
                      {
                        v23 = [(__CFDictionary *)v21 objectForKeyedSubscript:@"Maximum Capacity Percent"];
                        v24 = [v23 intValue];
                      }

                      else
                      {
                        v24 = -1;
                      }

                      v46 = [v20 objectForKeyedSubscript:@"Trusted Maximum Capacity"];

                      if (v46)
                      {
                        if (v24 != -1)
                        {
                          v47 = [v20 objectForKeyedSubscript:@"Trusted Maximum Capacity"];
                          v48 = [v47 intValue];

                          if (v48 > v24)
                          {
                            v49 = qword_1000AB978;
                            if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                            {
                              sub_10006932C(v49, v20, v24);
                            }

LABEL_96:

                            v70 = v24;
                            v51 = v20;
                            v52 = v21;
                            v53 = [(__CFDictionary *)v52 objectForKeyedSubscript:@"CycleCount"];

                            if (v53)
                            {
                              v54 = [(__CFDictionary *)v52 objectForKeyedSubscript:@"CycleCount"];
                              v55 = [v54 intValue];
                            }

                            else
                            {
                              v55 = 0xFFFFFFFFLL;
                            }

                            v56 = [v51 objectForKeyedSubscript:@"Trusted Cycle Count"];

                            if (v56)
                            {
                              v57 = [v51 objectForKeyedSubscript:@"Trusted Cycle Count"];
                              v58 = [v57 intValue];

                              if (v58 > v55)
                              {
                                v59 = [v51 objectForKeyedSubscript:@"Trusted Cycle Count"];
                                v55 = [v59 intValue];
                              }
                            }

                            else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                            {
                              sub_1000694A0();
                            }

                            if (v55 == -1)
                            {
                              *a3 |= 0x200000u;
                              if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                              {
                                sub_1000694DC();
                              }
                            }

                            v60 = [NSNumber numberWithInt:v55];
                            [(__CFDictionary *)v52 setObject:v60 forKeyedSubscript:@"CycleCount"];

                            v28 = 0;
                            v26 = 0;
LABEL_116:
                            if (v24 <= 79)
                            {
                              *a3 |= 0x100000u;
                              v63 = qword_1000AB978;
                              if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                              {
                                LODWORD(value) = 67109376;
                                HIDWORD(value) = v24;
                                v73 = 1024;
                                v74 = 80;
                                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Nominal Capacity percentage(%d) is less than the threshold(%d)\n", &value, 0xEu);
                              }
                            }

                            v64 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v70);
                            if (v64)
                            {
                              v65 = v64;
                              CFDictionarySetValue(v12, @"Maximum Capacity Percent", v64);
                              CFRelease(v65);
                            }

                            v66 = qword_1000AB978;
                            if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEBUG))
                            {
                              LODWORD(value) = 67109632;
                              HIDWORD(value) = v26;
                              v73 = 1024;
                              v74 = v28;
                              v75 = 1024;
                              *v76 = v70;
                              _os_log_debug_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "Battery NominalCapacity:%d DesignCapacity:%d NCC:%d\n", &value, 0x14u);
                            }

                            goto LABEL_123;
                          }
                        }

                        v50 = [v20 objectForKeyedSubscript:@"Trusted Maximum Capacity"];
                        v24 = [v50 intValue];
                      }

                      else if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                      {
                        sub_1000693F4();
                      }

                      if (v24 == -1)
                      {
                        *a3 |= 0x200000u;
                        if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
                        {
                          sub_100069430();
                        }

                        v24 = -1;
                      }

                      goto LABEL_96;
                    }
                  }
                }
              }
            }
          }

          v25 = [v11 objectForKeyedSubscript:@"NominalChargeCapacity"];
          v26 = [v25 intValue];

          v27 = [v11 objectForKeyedSubscript:@"DesignCapacity"];
          v28 = [v27 intValue];

          if (v26 < 1 || v28 <= 0)
          {
            if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
            {
              sub_100069630();
            }
          }

          else
          {
            v24 = vcvtpd_s64_f64(v26 / v28 * 100.0);
            v70 = v24;
            if ((v24 - 1) >= 0x96)
            {
              if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
              {
                sub_10006954C();
              }
            }

            else
            {
              value = 0;
              if (CFDictionaryGetValueIfPresent(v12, @"Maximum Capacity Percent", &value))
              {
                v29 = value;
                TypeID = CFNumberGetTypeID();
                if (v29)
                {
                  if (CFGetTypeID(v29) == TypeID)
                  {
                    CFNumberGetValue(value, kCFNumberIntType, &v69);
                  }
                }
              }

              if (byte_1000AB204 != 1)
              {
                v39 = sub_10000CDD8();
                v40 = v39 - qword_1000ACFB8;
                CFDictionaryRemoveValue(v12, @"CycleCount");
                sub_100042C30();
                v41 = v69;
                if (v69 == -1)
                {
                  v69 = v24;
                  qword_1000ACFB8 = v39;
                  v42 = qword_1000AB978;
                  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(value) = 67109120;
                    HIDWORD(value) = v24;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Previous NCCP data not available. Reset to %d.\n", &value, 8u);
                  }

                  v41 = v69;
                }

                v43 = qword_1000AB978;
                if (v41 > v24 && v40 >= dword_1000AB200)
                {
                  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(value) = 67110144;
                    HIDWORD(value) = v69;
                    v73 = 1024;
                    v74 = v24;
                    v75 = 2048;
                    *v76 = v40;
                    *&v76[8] = 1024;
                    *v77 = v26;
                    *&v77[4] = 1024;
                    v78[0] = v28;
                    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Changing NCCP from %d -> %d after %llu secs. NCC:%d DesignCap:%d\n", &value, 0x24u);
                  }

                  qword_1000ACFB8 = v39;
                }

                else
                {
                  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEBUG))
                  {
                    sub_1000695BC(&v69);
                  }

                  v24 = v69;
                  v70 = v69;
                }

                goto LABEL_116;
              }

              v67 = -1;
              v68 = -1;
              value = 0;
              if (CFDictionaryGetValueIfPresent(v12, @"CycleCount", &value))
              {
                v31 = value;
                v32 = CFNumberGetTypeID();
                if (v31)
                {
                  if (CFGetTypeID(v31) == v32)
                  {
                    CFNumberGetValue(value, kCFNumberIntType, &v67);
                  }
                }
              }

              value = 0;
              if (CFDictionaryGetValueIfPresent(v11, @"CycleCount", &value))
              {
                v33 = value;
                v34 = CFNumberGetTypeID();
                if (v33)
                {
                  if (CFGetTypeID(v33) == v34)
                  {
                    CFNumberGetValue(value, kCFNumberIntType, &v68);
                  }
                }
              }

              if (v68 != -1)
              {
                if (v67 == -1)
                {
                  v67 = v68;
                  v35 = qword_1000AB978;
                  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(value) = 67109120;
                    HIDWORD(value) = v68;
                    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Previous cycle count data is not available. Reset to %d\n", &value, 8u);
                  }
                }

                if (v69 == -1)
                {
                  if ((v6 & 0x80000000) == 0 && v68 <= 20)
                  {
                    v24 = 104;
                    v70 = 104;
                  }

                  v69 = v24;
                  v36 = qword_1000AB978;
                  if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(value) = 67109376;
                    HIDWORD(value) = v24;
                    v73 = 1024;
                    v74 = v68;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Previous NCCP data not available. Reset to %d. Cycle Count: %d\n", &value, 0xEu);
                  }
                }

                if (sub_10000FC4C() && [qword_1000ACCB8 BOOLValue] && ((sub_1000498F4(a3) & 1) != 0 || sub_100010660(a3)))
                {
                  v24 = v69;
                  v70 = v69;
                  v37 = qword_1000AB978;
                  if (!os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_114;
                  }

                  LODWORD(value) = 67110400;
                  HIDWORD(value) = v69;
                  v73 = 1024;
                  v74 = v24;
                  v75 = 1024;
                  *v76 = v67;
                  *&v76[4] = 1024;
                  *&v76[6] = v68;
                  *v77 = 1024;
                  *&v77[2] = v26;
                  LOWORD(v78[0]) = 1024;
                  *(v78 + 2) = v28;
                  v38 = "Changing NCCP from %d -> %d (freeze), cycle count change(%d->%d). NCC:%d DesignCap:%d\n";
                }

                else if (sub_10000FCF4(&valuePtr, a3))
                {
                  if (v24 >= v69)
                  {
                    v24 = v69;
                  }

                  v70 = v24;
                  v37 = qword_1000AB978;
                  if (!os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_114;
                  }

                  LODWORD(value) = 67110400;
                  HIDWORD(value) = v69;
                  v73 = 1024;
                  v74 = v24;
                  v75 = 1024;
                  *v76 = v67;
                  *&v76[4] = 1024;
                  *&v76[6] = v68;
                  *v77 = 1024;
                  *&v77[2] = v26;
                  LOWORD(v78[0]) = 1024;
                  *(v78 + 2) = v28;
                  v38 = "Changing NCCP from %d -> %d (reset), cycle count change(%d->%d). NCC:%d DesignCap:%d\n";
                }

                else
                {
                  if (v68 - v67 < 5 || v69 <= v24)
                  {
                    v70 = v69;
                    v68 = v67;
                    v24 = v69;
LABEL_114:
                    v61 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v68);
                    if (v61)
                    {
                      v62 = v61;
                      CFDictionarySetValue(v12, @"CycleCount", v61);
                      CFRelease(v62);
                    }

                    goto LABEL_116;
                  }

                  v24 = v69 - 1;
                  v70 = v69 - 1;
                  v37 = qword_1000AB978;
                  if (!os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_114;
                  }

                  LODWORD(value) = 67110400;
                  HIDWORD(value) = v69;
                  v73 = 1024;
                  v74 = v24;
                  v75 = 1024;
                  *v76 = v67;
                  *&v76[4] = 1024;
                  *&v76[6] = v68;
                  *v77 = 1024;
                  *&v77[2] = v26;
                  LOWORD(v78[0]) = 1024;
                  *(v78 + 2) = v28;
                  v38 = "Changing NCCP from %d -> %d after cycle count change(%d->%d). NCC:%d DesignCap:%d\n";
                }

                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v38, &value, 0x26u);
                goto LABEL_114;
              }

              v45 = qword_1000AB978;
              if (os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_ERROR))
              {
                LODWORD(value) = 67109632;
                HIDWORD(value) = v26;
                v73 = 1024;
                v74 = v28;
                v75 = 1024;
                *v76 = v68;
                _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to calculate Nominal Capacity percentage. NominalCapacity:%d DesignCapacity:%d CycleCount:%d\n", &value, 0x14u);
              }
            }
          }

          *a3 |= 0x200000u;
LABEL_123:

          return;
        }

        LOWORD(value) = 0;
        v10 = "calib: resetting NCC";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, &value, 2u);
        goto LABEL_15;
      }
    }

    CFDictionaryRemoveValue(theDict, @"CycleCount");
    CFDictionaryRemoveValue(theDict, @"Maximum Capacity Percent");
    v9 = qword_1000AB978;
    if (!os_log_type_enabled(qword_1000AB978, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    LOWORD(value) = 0;
    v10 = "calib: floating NCC";
    goto LABEL_14;
  }
}