id sub_10004A290(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a1 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", a2), a4}];
  v8 = [NSNumber numberWithUnsignedLongLong:a3];

  return [a1 setObject:v8 forKeyedSubscript:a5];
}

BOOL sub_10004A314(void *a1, int a2)
{
  v4 = @"lastGoodQmax";
  if ([a1 objectForKeyedSubscript:@"lastKioskQmaxTimeStamp"])
  {
    v5 = [objc_msgSend(a1 objectForKeyedSubscript:{@"lastGoodQmaxTimeStamp", "unsignedLongLongValue"}];
    if (v5 <= [objc_msgSend(a1 objectForKeyedSubscript:{@"lastKioskQmaxTimeStamp", "unsignedLongLongValue"}])
    {
      v4 = @"lastKioskQmax";
    }
  }

  return [objc_msgSend(a1 objectForKeyedSubscript:{v4), "intValue"}] != a2;
}

void sub_10004A3AC()
{
  notification = 0;
  properties = 0;
  qword_1000AB9B0 = os_log_create("com.apple.powerd", "sleepWake");
  qword_1000AB9E0 = 0;
  unk_1000AB9E8 = 0;
  qword_1000AB9D8 = 0;
  unk_1000AB9F0 = 257;
  qword_1000AD078 = CFArrayCreateMutable(kCFAllocatorDefault, 100, &unk_1000AB6D8);
  v0 = sub_10001B168();
  dword_1000AD080 = v0;
  if (!v0)
  {
    v1 = "Could not find IOPMrootDomain";
    goto LABEL_5;
  }

  if (IOServiceOpen(v0, mach_task_self_, 0, &dword_1000AD084))
  {
    v1 = "Could not open IOPMrootDomain";
LABEL_5:
    asl_log(0, 0, 3, "PowerManagement: unable to register with kernel power management. %s %s", "Reason = : ", v1);
    return;
  }

  v2 = IONotificationPortCreate(0);
  if (!v2)
  {
    v1 = "Could not create IONotificationPort";
    goto LABEL_5;
  }

  v3 = v2;
  if (IOServiceAddInterestNotification(v2, dword_1000AD080, "IOPMSystemCapabilityInterest", sub_1000177BC, 0, &notification))
  {
    v1 = "Could not add interest notification kIOPMAppPowerStateInterest";
    goto LABEL_5;
  }

  v4 = sub_100002A58();
  IONotificationPortSetDispatchQueue(v3, v4);
  v5 = sub_100002A58();
  dispatch_async(v5, &stru_10009A5B8);
  IORegistryEntryCreateCFProperties(dword_1000AD080, &properties, 0, 0);
  v6 = properties;
  TypeID = CFDictionaryGetTypeID();
  if (v6)
  {
    if (CFGetTypeID(v6) == TypeID)
    {
      Value = CFDictionaryGetValue(properties, @"System Capabilities");
      v9 = CFNumberGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v9)
        {
          valuePtr = 0;
          CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
          if (valuePtr)
          {
            v10 = 2;
          }

          else
          {
            v10 = 1;
          }

          if ((valuePtr & 6) != 0)
          {
            v11 = 64;
          }

          else
          {
            v11 = v10;
          }

          dword_1000AD088 = v11;
        }
      }
    }
  }

  if (properties)
  {
    CFRelease(properties);
  }
}

void sub_10004A5BC(id a1)
{
  sub_10004A5EC(0);

  sub_10004A5EC(1);
}

uint64_t sub_10004A5EC(int a1)
{
  if (a1)
  {
    v1 = "com.apple.powermanagement.systemsleeppreventers";
  }

  else
  {
    v1 = "com.apple.powermanagement.idlesleeppreventers";
  }

  if (a1)
  {
    v2 = &dword_1000AD0C4;
  }

  else
  {
    v2 = &dword_1000AD0C0;
  }

  if (*v2 || (result = notify_register_check(v1, v2), !result) && *v2)
  {
    result = IOPMCopySleepPreventersList();
    if (!result)
    {
      CFArrayGetTypeID();
      notify_set_state(*v2, 0);
      return notify_post(v1);
    }
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t sub_10004A6D4(uint64_t a1, _OWORD *a2, const char *a3, int a4, _DWORD *a5, int *a6)
{
  *a5 = 0;
  if (dword_1000AD100 <= 0x3B9ACA00 && (v11 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E0040CE5ED568uLL)) != 0)
  {
    v12 = v11;
    v13 = dword_1000AD100++;
    v11[6] = v13 + 1000;
    CFArrayAppendValue(qword_1000AD078, v11);
    v14 = a2[1];
    *atoken.val = *a2;
    *&atoken.val[4] = v14;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, v12 + 7, 0, 0);
    if (a3 && *a3)
    {
      *(v12 + 2) = CFStringCreateWithCString(0, a3, 0x8000100u);
    }

    v15 = 0;
    v12[8] = a4;
    *a5 = v12[6];
  }

  else
  {
    v15 = -536870212;
  }

  *a6 = v15;
  return 0;
}

uint64_t sub_10004A800(uint64_t a1, _OWORD *a2, int a3, mach_port_name_t a4, int a5, _DWORD *a6)
{
  pidp = -1;
  if (a4 && a6)
  {
    v10 = 3758097136;
    *a6 = -536870212;
    v11 = a2[1];
    *atoken.val = *a2;
    *&atoken.val[4] = v11;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    v12 = sub_10004AADC(a3);
    if (v12)
    {
      v13 = v12;
      v14 = v12[7];
      v15 = pidp;
      if (v14 == pidp)
      {
        *(v12 + 36) = a5 == 0;
        if (a5 || *v12)
        {
          mach_port_deallocate(mach_task_self_, a4);
        }

        else
        {
          *v12 = a4;
          v18 = pidp;
          v19 = sub_100002A58();
          v20 = dispatch_source_create(&_dispatch_source_type_proc, v18, 0x80000000uLL, v19);
          if (v20)
          {
            v21 = v20;
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_10004AB54;
            handler[3] = &unk_100099AD0;
            v24 = a3;
            dispatch_source_set_event_handler(v20, handler);
            v22[0] = _NSConcreteStackBlock;
            v22[1] = 3221225472;
            v22[2] = sub_10004AB8C;
            v22[3] = &unk_100099E18;
            v22[4] = v21;
            dispatch_source_set_cancel_handler(v21, v22);
            dispatch_resume(v21);
            *(v13 + 6) = v21;
          }

          else if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
          {
            sub_10006AC70(&pidp);
          }
        }

        v10 = 0;
        *a6 = 0;
      }

      else
      {
        v16 = qword_1000AB9B0;
        if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
        {
          atoken.val[0] = 67109632;
          atoken.val[1] = v15;
          LOWORD(atoken.val[2]) = 1024;
          *(&atoken.val[2] + 2) = a3;
          HIWORD(atoken.val[3]) = 1024;
          atoken.val[4] = v14;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Notification schedule request from unexepcted pid %d for connection %d. Expected pid:%d\n", &atoken, 0x14u);
        }
      }
    }

    else if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
    {
      sub_10006ACE4(&pidp);
    }
  }

  else
  {
    v10 = 0;
    if (a6)
    {
      *a6 = -536870206;
    }
  }

  return v10;
}

const void *sub_10004AADC(int a1)
{
  v8.length = CFArrayGetCount(qword_1000AD078);
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  DWORD2(v5) = a1;
  v8.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_1000AD078, v8, &v4);
  if (FirstIndexOfValue == -1)
  {
    return 0;
  }

  else
  {
    return CFArrayGetValueAtIndex(qword_1000AD078, FirstIndexOfValue);
  }
}

void sub_10004AB54(uint64_t a1)
{
  v1 = sub_10004AADC(*(a1 + 32));
  if (v1)
  {

    sub_10004ABE4(v1);
  }
}

uint64_t sub_10004AB94(uint64_t a1, int a2, int *a3)
{
  v4 = sub_10004AADC(a2);
  if (v4)
  {
    sub_10004ABE4(v4);
    if (a3)
    {
      v5 = 0;
LABEL_6:
      *a3 = v5;
    }
  }

  else if (a3)
  {
    v5 = -536870160;
    goto LABEL_6;
  }

  return 0;
}

void sub_10004ABE4(uint64_t a1)
{
  Count = CFArrayGetCount(qword_1000AD078);
  if (*a1)
  {
    mach_port_deallocate(mach_task_self_, *a1);
    *a1 = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 8);
  if (v5 && *v5)
  {
    v6 = CFArrayGetCount(*v5);
    if (v6 >= 1)
    {
      v7 = v6;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*v5, v8);
        if (ValueAtIndex)
        {
          if (*ValueAtIndex == a1)
          {
            break;
          }
        }

        if (v7 == ++v8)
        {
          goto LABEL_16;
        }
      }

      *ValueAtIndex = 0;
      ValueAtIndex[48] = 257;
    }

LABEL_16:
    sub_10004BB38(v5);
  }

  v12.location = 0;
  v12.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_1000AD078, v12, a1);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(qword_1000AD078, FirstIndexOfValue);
  }

  free(a1);
}

uint64_t sub_10004AD04(uint64_t a1, _OWORD *a2, int a3, int a4, _DWORD *a5, int *a6)
{
  ruidp = -1;
  pidp = -1;
  rgidp = -1;
  v10 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v10;
  audit_token_to_au32(&atoken, 0, 0, 0, &ruidp, &rgidp, &pidp, 0, 0);
  *a5 = 0;
  if (!sub_10005E564(ruidp) && !sub_10005ED54(ruidp))
  {
    v12 = -536870207;
    goto LABEL_11;
  }

  v11 = dword_1000AB6D0;
  *a5 = dword_1000AB6D0;
  if (a4 != 2)
  {
    if (a4 == 1)
    {
      a3 = v11 & ~a3;
    }

    else
    {
      if (a4)
      {
        v12 = 0;
        goto LABEL_11;
      }

      a3 |= v11;
    }
  }

  v12 = 0;
  dword_1000AB6D0 = a3;
LABEL_11:
  *a6 = v12;
  return 0;
}

uint64_t sub_10004ADE8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  *a4 = 0;
  *a5 = 0;
  return 0;
}

uint64_t sub_10004AE0C(int a1, int a2, char *buffer, int *a4)
{
  if (a2 == 1001 && qword_1000AB9E0 && CFStringGetCString(qword_1000AB9E0, buffer, 1024, 0x8000100u))
  {
    v6 = 0;
  }

  else
  {
    *buffer = 0;
    v6 = -536870160;
  }

  *a4 = v6;
  return 0;
}

void sub_10004AE84(int a1)
{
  if ((dword_1000AD088 & 8) != 0)
  {
    dword_1000AD088 &= ~8u;
    sub_100018C6C(10, 0);
    sub_100018C6C(18, 0);
    v2 = sub_10005E8F8();
    asl_set(v2, "com.apple.iokit.domain", "com.apple.sleepservices.sessionTerminated");
    if (sub_10001B6D0(value, 100))
    {
      asl_set(v2, "uuid", value);
    }

    if (qword_1000AB9E0 && CFStringGetCString(qword_1000AB9E0, buffer, 100, 0x8000100u))
    {
      asl_set(v2, "uuid2", buffer);
    }

    snprintf(__str, 0x1EuLL, "%d", a1);
    asl_set(v2, "value", __str);
    asl_set(v2, "Message", "SleepService: window has terminated.");
    if (a1)
    {
      v3 = "com.apple.sleepserviced.ExitTimeOutAssertions";
    }

    else
    {
      v3 = "com.apple.sleepserviced.ExitCleanAssertions";
    }

    asl_set(v2, "signature", v3);
    asl_send(0, v2);
    asl_release(v2);
  }
}

uint64_t sub_10004B07C(_DWORD *a1, _DWORD *a2)
{
  outputCnt = 2;
  v5 = 0;
  result = IOConnectCallMethod(dword_1000AD084, 0xBu, 0, 0, 0, 0, &output, &outputCnt, 0, &v5);
  if (!result)
  {
    if (a1)
    {
      *a1 = output;
    }

    if (a2)
    {
      *a2 = v8;
    }
  }

  return result;
}

void sub_10004B12C()
{
  if (qword_1000AD090)
  {
    dispatch_source_cancel(qword_1000AD090);
  }
}

void sub_10004B140(char a1, double a2)
{
  v15 = 0;
  v16 = 0;
  if (sub_10005625C(@"AutoPowerOff Enabled", &v16))
  {
    v4 = 0;
  }

  else
  {
    v4 = v16 == 1;
  }

  if (!v4)
  {
    if ((dword_1000AB6D0 & 4) != 0)
    {
      asl_log(0, 0, 3, "Failed to get APO enabled key\n");
    }

LABEL_10:
    qword_1000AB9B8 = 0;
    return;
  }

  if (sub_10005625C(@"AutoPowerOff Delay", &v15))
  {
    if ((dword_1000AB6D0 & 4) != 0)
    {
      asl_log(0, 0, 3, "Failed to get APO delay timer \n");
    }

    goto LABEL_10;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = v15;
  if (Current >= a2)
  {
    v7 = Current;
  }

  else
  {
    v7 = a2;
  }

  v8 = v7 + v6;
  qword_1000AB9B8 = *&v8;
  if (v15 < 1)
  {
    if (a1)
    {
      sub_10004B2FC();
      return;
    }

    v10 = Current < a2;
    v11 = v8 - Current - v6;
    if (v10)
    {
      v9 = v11;
    }

    else
    {
      v9 = v15;
    }
  }

  else
  {
    v9 = (v8 - Current);
  }

  if (qword_1000AD090)
  {
    dispatch_suspend(qword_1000AD090);
  }

  else
  {
    v12 = sub_100002A58();
    qword_1000AD090 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);
    dispatch_source_set_event_handler(qword_1000AD090, &stru_10009A5D8);
    dispatch_source_set_cancel_handler(qword_1000AD090, &stru_10009A5F8);
  }

  if ((dword_1000AB6D0 & 4) != 0)
  {
    asl_log(0, 0, 3, "Set auto power off timer to fire in %lld secs\n", v9);
  }

  v13 = qword_1000AD090;
  v14 = dispatch_walltime(0, 1000000000 * v9);
  dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(qword_1000AD090);
}

void sub_10004B2FC()
{
  v1 = 0;
  if ((dword_1000AD088 & 1) == 0)
  {
    sub_10004B07C(&v1, 0);
    sub_100041010();
    if (v1 == 6 && v0 == 0.0)
    {
      if ((dword_1000AB6D0 & 4) != 0)
      {
        asl_log(0, 0, 3, "Cancelling assertions for AutoPower Off\n");
      }

      if (qword_1000AD090)
      {
        dispatch_source_cancel(qword_1000AD090);
      }
    }

    else
    {
      if ((dword_1000AB6D0 & 4) != 0)
      {
        asl_log(0, 0, 3, "Resetting APO timer. sleepType:%d nextAutoWake:%f\n", v1, v0);
      }

      sub_10004B140(0, 0.0);
    }
  }
}

void sub_10004B3B8(id a1)
{
  if (qword_1000AD090)
  {
    dispatch_release(qword_1000AD090);
    qword_1000AD090 = 0;
  }
}

uint64_t sub_10004B3E8()
{
  result = sub_100004D48();
  if (result != dword_1000AB704)
  {
    dword_1000AB704 = result;
  }

  return result;
}

uint64_t sub_10004B414()
{
  result = IOPMGetLastWakeTime();
  if (!result)
  {
    CFAbsoluteTimeGetCurrent();
    return analytics_send_event_lazy();
  }

  return result;
}

xpc_object_t sub_10004B4AC(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "WakeTime", *(a1 + 32));
  return v2;
}

xpc_object_t sub_10004B4F4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "delay_time", *(a1 + 40));
  v3 = *(a1 + 32);
  if (v3 && *v3)
  {
    xpc_dictionary_set_string(v2, "last_responder", v3);
  }

  return v2;
}

BOOL sub_10004B568(int a1, double a2)
{
  if (a2 == 0.0)
  {
    return 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current <= a2)
  {
    return 1;
  }

  v6 = Current;
  v7 = qword_1000AB9B0;
  result = os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v8[0] = 67109376;
    v8[1] = a1;
    v9 = 2048;
    v10 = a2 - v6;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Process %d scheduled a wake in the past %f\n", v8, 0x12u);
    return 0;
  }

  return result;
}

uint64_t sub_10004B650(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || dword_1000AB9CC)
  {
    v2 = 3758097097;
    if (!sub_100004870())
    {
      return 3758097095;
    }

    valuePtr = 0;
    if (sub_100004870() == 1)
    {
      v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (!v3)
      {
        return v2;
      }

      v4 = v3;
      if (!dword_1000AD080)
      {
        CFRelease(v3);
        return v2;
      }

      IORegistryEntrySetCFProperty(dword_1000AD080, @"SilentRunning", v3);
      dword_1000AB9CC = 0;
      CFRelease(v4);
    }

    else
    {
      unk_1000AB9F4 = 0;
      ++byte_1000AB9F2;
      dword_1000AB9CC = 0;
      v6 = qword_1000AB9B0;
      v2 = 0;
      if (!os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
      {
        return v2;
      }

      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully communicated unclamped Silent Running state to SMC.\n", v7, 2u);
    }
  }

  return 0;
}

uint64_t sub_10004B770(unsigned int a1)
{
  unk_1000AB9F4 = a1;
  ++byte_1000AB9F2;
  return 0;
}

uint64_t sub_10004B7BC(int a1)
{
  v2 = qword_1000AB9B0;
  if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "Restricted";
    if (dword_1000AB9D0)
    {
      v4 = "Restricted";
    }

    else
    {
      v4 = "Unrestricted";
    }

    if (!a1)
    {
      v3 = "Unrestricted";
    }

    v6 = 136315394;
    v7 = v4;
    v8 = 2080;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Current PerfMode: %s, Target PerfMode: %s\n", &v6, 0x16u);
  }

  if ((dword_1000AB9D0 == 1) != a1)
  {
    dword_1000AB9D0 = a1;
  }

  return 0;
}

uint64_t sub_10004B8B4()
{
  if (sub_10001C40C())
  {
    if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEBUG))
    {
      sub_10006AEA4();
    }
  }

  else
  {
    v0 = sub_100008594();
    if (v0)
    {
      if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEBUG))
      {
        sub_10006AE3C();
      }
    }

    else
    {
      if ((v0 & 2) == 0)
      {
        return 0;
      }

      if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEBUG))
      {
        sub_10006AE70();
      }
    }
  }

  return 1;
}

BOOL sub_10004B95C()
{
  v3 = 8;
  v4 = 0;
  v0 = sysctlbyname("kern.wake_abs_time", &v4, &v3, 0, 0);
  v1 = qword_1000AB9B0;
  if (v0)
  {
    result = os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10006AF0C();
      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v6 = v4;
      v7 = 2048;
      v8 = qword_1000AB9C0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "wake_ts:0x%llx lastcall_ts:0x%llx\n", buf, 0x16u);
    }

    return v4 > qword_1000AB9C0;
  }

  return result;
}

BOOL sub_10004BA68()
{
  v0 = (byte_1000AB6D4 & 1) != 0 || sub_10004B95C();
  v1 = qword_1000AB9B0;
  if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Sleep revert state: %d\n", v3, 8u);
  }

  return v0;
}

void sub_10004BB38(uint64_t a1)
{
  if (sub_10004BCA0(a1))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      nullsub_3(v2, "PMClientStats");
      CFRelease(*(a1 + 8));
      *(a1 + 8) = 0;
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_source_cancel(v3);
      dispatch_release(*(a1 + 16));
      *(a1 + 16) = 0;
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      IOAllowPowerChange(dword_1000AD084, v4);
    }

    if (qword_1000AD078)
    {
      Count = CFArrayGetCount(qword_1000AD078);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(qword_1000AD078, i);
          if (ValueAtIndex[1] == a1)
          {
            ValueAtIndex[1] = 0;
          }
        }
      }

      if (*a1)
      {
        v9 = CFArrayGetCount(*a1);
        if (v9 >= 1)
        {
          v10 = v9;
          for (j = 0; j != v10; ++j)
          {
            v12 = CFArrayGetValueAtIndex(*a1, j);
            v13 = v12[8];
            if (v13)
            {
              CFRelease(v13);
            }

            v14 = v12[9];
            if (v14)
            {
              CFRelease(v14);
            }

            v15 = v12[10];
            if (v15)
            {
              CFRelease(v15);
            }

            free(v12);
          }
        }

        CFRelease(*a1);
      }

      if (qword_1000AD0B8 == a1)
      {
        qword_1000AD0B8 = 0;
      }

      free(a1);
    }
  }
}

BOOL sub_10004BCA0(uint64_t a1)
{
  v88 = kCFAbsoluteTimeIntervalSince1904;
  valuePtr = getpid();
  if (a1)
  {
    Count = CFArrayGetCount(*a1);
  }

  else
  {
    Count = 0;
  }

  if (!qword_1000ABA70)
  {
    qword_1000ABA70 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  if (Count < 1)
  {
    v7 = 0;
    v33 = 0;
    v34 = 0;
    v5 = 0;
    v8 = 4;
    v35 = -1;
    if (!a1)
    {
      goto LABEL_68;
    }
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, 0);
    if (*(ValueAtIndex + 96) != 1)
    {
      v5 = 0;
      v32 = 0;
      goto LABEL_78;
    }

    v4 = ValueAtIndex;
    v5 = 0;
    v85 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 4;
    v86 = -1;
    v9 = v88;
    v10 = 1;
    v11 = kCFAbsoluteTimeIntervalSince1904;
    while (1)
    {
      if ((*(a1 + 40) & 1) == 0 && *v4)
      {
        if (sub_10004B568(HIDWORD((*v4)->length), *(v4 + 5)))
        {
          v5 = sub_10004C724(v5, HIDWORD((*v4)->length), "Maintenance", v4[8], *(v4 + 5));
          v12 = *(v4 + 5);
          v13 = v12 < v11;
          if (v12 >= v11)
          {
            v14 = v86;
          }

          else
          {
            v9 = *(v4 + 5);
            v11 = v9;
            v14 = v6;
          }

          v86 = v14;
          if (v13)
          {
            v8 = 1;
          }

          if (v13)
          {
            v7 = v4;
          }

          ++v6;
        }

        v15 = v5;
        if (sub_10004B568(HIDWORD((*v4)->length), *(v4 + 7)))
        {
          v16 = v4[10];
          TypeID = CFStringGetTypeID();
          if (v16 && CFGetTypeID(v16) == TypeID)
          {
            length_high = HIDWORD((*v4)->length);
            v19 = *(v4 + 7);
            v20 = v4[10];
          }

          else
          {
            length_high = HIDWORD((*v4)->length);
            v19 = *(v4 + 7);
            v20 = v4[8];
          }

          v15 = sub_10004C724(v15, length_high, "SleepService", v20, v19);
          v21 = *(v4 + 7);
          v22 = v21 < v11;
          if (v21 >= v11)
          {
            v23 = v86;
          }

          else
          {
            v9 = *(v4 + 7);
            v23 = v6;
          }

          v86 = v23;
          if (v21 < v11)
          {
            v11 = *(v4 + 7);
          }

          if (v22)
          {
            v8 = 2;
          }

          if (v22)
          {
            v7 = v4;
          }

          ++v6;
          v85 = 1;
        }

        if (sub_10004B568(HIDWORD((*v4)->length), *(v4 + 6)))
        {
          v24 = v4[9];
          v25 = CFStringGetTypeID();
          if (v24 && CFGetTypeID(v24) == v25)
          {
            v26 = HIDWORD((*v4)->length);
            v27 = *(v4 + 6);
            v28 = v4[9];
          }

          else
          {
            v26 = HIDWORD((*v4)->length);
            v27 = *(v4 + 6);
            v28 = v4[8];
          }

          v5 = sub_10004C724(v15, v26, "TimerPlugin", v28, v27);
          v29 = *(v4 + 6);
          v30 = v29 < v11;
          if (v29 >= v11)
          {
            v31 = v86;
          }

          else
          {
            v9 = *(v4 + 6);
            v11 = v9;
            v31 = v6;
          }

          v86 = v31;
          if (v30)
          {
            v8 = 3;
          }

          if (v30)
          {
            v7 = v4;
          }

          ++v6;
        }

        else
        {
          v5 = v15;
        }
      }

      if (Count == v10)
      {
        break;
      }

      v4 = CFArrayGetValueAtIndex(*a1, v10++);
      if (*(v4 + 96) != 1)
      {
        v88 = v9;
        v32 = v10 - 1 >= Count;
        goto LABEL_78;
      }
    }

    v88 = v9;
    v34 = v85;
    v35 = v86;
    v33 = v6;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    if (v7)
    {
      v36 = *v7;
      valuePtr = HIDWORD((*v7)->length);
      CFStringGetCString(v36->data, buffer, 128, 0x8000100u);
      v37 = v7[8];
      if (v37 || (v37 = v7[9]) != 0 || (v37 = v7[10]) != 0)
      {
        CFStringGetCString(v37, cStr, 128, 0x8000100u);
      }
    }

LABEL_68:
    v38 = v5;
    if (v88 < CFAbsoluteTimeGetCurrent() + 60.0)
    {
      v88 = CFAbsoluteTimeGetCurrent() + 60.0;
    }

    v39 = sub_100041004();
    if (!v39)
    {
      LOBYTE(v43) = 0;
      v52 = 0;
      goto LABEL_99;
    }

    v40 = v39;
    v41 = sub_100040C70(v39);
    v42 = getpid();
    v43 = sub_10004B568(v42, v41);
    if (!v43)
    {
      v52 = 0;
LABEL_98:
      CFRelease(v40);
LABEL_99:
      v55 = sub_100040D40();
      if (v55)
      {
        v56 = v55;
        v57 = sub_100040C70(v55);
        v58 = getpid();
        if (sub_10004B568(v58, v57))
        {
          v59 = v33;
          v60 = v35;
          Value = CFDictionaryGetValue(v56, @"scheduledby");
          v62 = CFDictionaryGetValue(v56, @"appPID");
          v63 = CFStringGetTypeID();
          if (Value && CFGetTypeID(Value) == v63 && (v64 = CFNumberGetTypeID(), v62) && CFGetTypeID(v62) == v64)
          {
            Mutable = CFStringCreateMutable(0, 1024);
            CFStringAppendFormat(Mutable, 0, @"%@,%@", Value, v62);
          }

          else
          {
            Mutable = 0;
          }

          if (v57 <= v88)
          {
            v66 = v59;
            v88 = v57;
            v67 = getpid();
            v38 = sub_10004C724(v38, v67, "Shutdown/Restart", Mutable, v57);
            valuePtr = getpid();
            strcpy(buffer, "powerd");
            if (Mutable)
            {
              CFStringGetCString(Mutable, cStr, 128, 0x8000100u);
            }

            v52 = CFDictionaryGetValue(v56, @"eventtype");
            v8 = 1;
          }

          else
          {
            v66 = v60;
          }

          v5 = v38;
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          LOBYTE(v43) = 1;
        }

        else
        {
          v66 = v35;
          v5 = v38;
        }

        CFRelease(v56);
        v35 = v66;
      }

      else
      {
        v5 = v38;
      }

      if (*&qword_1000AB9B8 != 0.0)
      {
        if ((v43 | v34))
        {
          v68 = kCFBooleanTrue;
        }

        else
        {
          v68 = kCFBooleanFalse;
        }

        sub_10005DF60(@"UserWakeAlarmScheduled", v68);
      }

      if (v5)
      {
        snprintf(__str, 5uLL, "%d", v35);
        asl_set(v5, "WakeRequestChosen", __str);
        asl_send(0, v5);
      }

      if (v88 == kCFAbsoluteTimeIntervalSince1904)
      {
        if (qword_1000ABA70)
        {
          CFRelease(qword_1000ABA70);
          qword_1000ABA70 = 0;
        }
      }

      else
      {
        v69 = CFNumberCreate(0, kCFNumberDoubleType, &v88);
        CFDictionarySetValue(qword_1000ABA70, @"time", v69);
        v70 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(qword_1000ABA70, @"appPID", v70);
        v71 = CFStringCreateWithCString(0, buffer, 0x8000100u);
        if (v71)
        {
          v72 = v71;
          CFDictionarySetValue(qword_1000ABA70, @"scheduledby", v71);
          CFRelease(v72);
        }

        if (v52)
        {
          v73 = v52;
        }

        else
        {
          v73 = @"wake";
        }

        CFDictionarySetValue(qword_1000ABA70, @"eventtype", v73);
        v74 = CFStringCreateWithCString(0, cStr, 0x8000100u);
        if (v74)
        {
          v75 = v74;
          CFDictionarySetValue(qword_1000ABA70, @"wakeInfo", v74);
          CFRelease(v75);
        }

        if (v69)
        {
          CFRelease(v69);
        }

        if (v70)
        {
          CFRelease(v70);
        }
      }

      if (qword_1000ABA68)
      {
        CFRelease(qword_1000ABA68);
        qword_1000ABA68 = 0;
      }

      *__str = -1;
      v89 = 0;
      if (v88 == 0.0)
      {
        v76 = kCFAbsoluteTimeIntervalSince1904;
      }

      else
      {
        v76 = v88;
      }

      if (*&qword_1000AB9B8 != 0.0)
      {
        if (*&qword_1000AB9B8 >= v76)
        {
          v77 = 0;
        }

        else
        {
          sub_10004B07C(&v89, 0);
          v77 = v89 == 6;
        }

        Current = CFAbsoluteTimeGetCurrent();
        v79 = (*&qword_1000AB9B8 - Current);
        if (Current >= *&qword_1000AB9B8)
        {
          v79 = 0;
        }

        *__str = v79;
        v80 = CFNumberCreate(0, kCFNumberLongType, __str);
        if (v80)
        {
          v81 = v80;
          sub_10005DF60(@"AutoPowerOff Timer", v80);
          CFRelease(v81);
        }

        if (v77)
        {
          if ((dword_1000AB6D0 & 4) != 0)
          {
            asl_log(0, 0, 3, "Not scheduling other wakes to allow AutoPower off. APO timer:%lld\n", *__str);
          }

          goto LABEL_158;
        }

        if ((dword_1000AB6D0 & 4) != 0)
        {
          asl_log(0, 0, 3, "sleepType:%d APO timer:%lld secs\n", v89, *__str);
        }
      }

      if (v76 == kCFAbsoluteTimeIntervalSince1904)
      {
        goto LABEL_158;
      }

      if ((v8 & 0xFFFFFFFD) == 1)
      {
        v82 = @"MaintenanceImmediate";
      }

      else if (v8)
      {
        if (v8 != 2)
        {
          goto LABEL_158;
        }

        v82 = @"SleepServiceImmediate";
      }

      else
      {
        v82 = @"WakeImmediate";
      }

      if (v76 != 0.0)
      {
        v83 = CFDateCreate(0, v76);
        if (v83)
        {
          v84 = v83;
          IOPMSchedulePowerEvent(v83, 0, v82);
          CFRelease(v84);
        }
      }

LABEL_158:
      v32 = 1;
      if (!v5)
      {
        return v32;
      }

      goto LABEL_81;
    }

    v44 = v33;
    v45 = v35;
    v46 = CFDictionaryGetValue(v40, @"scheduledby");
    v47 = CFDictionaryGetValue(v40, @"appPID");
    v48 = CFStringGetTypeID();
    if (v46 && CFGetTypeID(v46) == v48 && (v49 = CFNumberGetTypeID(), v47) && CFGetTypeID(v47) == v49)
    {
      v50 = CFStringCreateMutable(0, 1024);
      CFStringAppendFormat(v50, 0, @"%@,%@", v46, v47);
    }

    else
    {
      v50 = 0;
    }

    v53 = getpid();
    v38 = sub_10004C724(v38, v53, "UserWake", v50, v41);
    if (v41 > v88)
    {
      v52 = 0;
      v54 = v44;
LABEL_95:
      if (v50)
      {
        CFRelease(v50);
      }

      v33 = v54 + 1;
      v35 = v45;
      goto LABEL_98;
    }

    v88 = v41;
    if (v47)
    {
      CFNumberGetValue(v47, kCFNumberIntType, &valuePtr);
    }

    else
    {
      valuePtr = getpid();
    }

    v54 = v44;
    if (v46)
    {
      CFStringGetCString(v46, buffer, 128, 0x8000100u);
      if (!v50)
      {
LABEL_94:
        v52 = CFDictionaryGetValue(v40, @"eventtype");
        v8 = 0;
        v45 = v44;
        goto LABEL_95;
      }
    }

    else
    {
      strcpy(buffer, "powerd");
      if (!v50)
      {
        goto LABEL_94;
      }
    }

    CFStringGetCString(v50, cStr, 128, 0x8000100u);
    goto LABEL_94;
  }

  v32 = 1;
LABEL_78:
  if (qword_1000ABA70)
  {
    CFRelease(qword_1000ABA70);
    qword_1000ABA70 = 0;
  }

  if (v5)
  {
LABEL_81:
    asl_release(v5);
  }

  return v32;
}

__asl_object_s *sub_10004C724(__asl_object_s *a1, int pid, const char *a3, const __CFString *a4, CFAbsoluteTime a5)
{
  v9 = a1;
  if (!a1)
  {
    v9 = sub_10005E8F8();
    asl_set(v9, "com.apple.iokit.domain", "ClientWakeRequests");
    dword_1000AD0B0 = 0;
  }

  v17 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  buffer[0] = 0;
  __str[0] = 0;
  proc_name(pid, buffer, 0x200u);
  snprintf(__str, 0x32uLL, "%s%d", "WakeAppName", dword_1000AD0B0);
  asl_set(v9, __str, buffer);
  snprintf(__str, 0x32uLL, "%s%d", "WakeType", dword_1000AD0B0);
  asl_set(v9, __str, a3);
  snprintf(__str, 0x32uLL, "%s%d", "WakeTimeDelta", dword_1000AD0B0);
  Current = CFAbsoluteTimeGetCurrent();
  snprintf(buffer, 0x200uLL, "%.0f", a5 - Current);
  asl_set(v9, __str, buffer);
  v11 = sub_100037B04();
  CFCalendarDecomposeAbsoluteTime(v11, a5, "yMdHms", &v17, &v16 + 4, &v16, &v15 + 4, &v15, &v14);
  snprintf(__str, 0x32uLL, "%s%d", "WakeTime", dword_1000AD0B0);
  snprintf(buffer, 0x200uLL, "%d-%02d-%02d %02d:%02d:%02d", v17, HIDWORD(v16), v16, HIDWORD(v15), v15, v14);
  asl_set(v9, __str, buffer);
  TypeID = CFStringGetTypeID();
  if (a4 && CFGetTypeID(a4) == TypeID && CFStringGetCString(a4, buffer, 512, 0x8000100u))
  {
    snprintf(__str, 0x32uLL, "%s%d", "WakeClientInfo", dword_1000AD0B0);
    asl_set(v9, __str, buffer);
  }

  ++dword_1000AD0B0;
  return v9;
}

uint64_t sub_10004C9B4(uint64_t a1)
{
  if (qword_1000AD0B8)
  {
    sub_10004CD3C(qword_1000AD0B8, 0);
  }

  if (((word_1000AD0D4 + 1) & 0xFFFE) != 0)
  {
    v2 = (word_1000AD0D4 + 1);
  }

  else
  {
    v2 = 1;
  }

  word_1000AD0D4 = v2;
  v3 = qword_1000AB9B0;
  if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v26 = 0;
    v27 = 1024;
    v28 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "connectionFireNotification: 0x%x gen 0x%x\n", buf, 0xEu);
  }

  v4 = dword_1000AB700;
  dword_1000AB700 = 0;
  if (!v4)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &unk_1000AB6D8);
  Count = CFArrayGetCount(qword_1000AD078);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000AD078, i);
      if ((ValueAtIndex[8] & v4) != 0)
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  if (!Mutable)
  {
    return 0;
  }

  v10 = CFArrayGetCount(Mutable);
  if (!v10 || (v11 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040A50A18F7uLL)) == 0)
  {
    CFRelease(Mutable);
    return 0;
  }

  v12 = v11;
  v11[10] = 0;
  v11[12] = 28;
  *(v11 + 4) = a1;
  *(v11 + 26) = word_1000AD0D4;
  *v11 = CFArrayCreateMutable(kCFAllocatorDefault, v10, &stru_1000AD0D8);
  *(v12 + 44) = v10;
  *(v12 + 8) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (v10 >= 1)
  {
    v13 = 0;
    v14 = v10 & 0x7FFFFFFF;
    do
    {
      v15 = CFArrayGetValueAtIndex(Mutable, v13);
      v16 = *v15;
      if (*v15 && *(v15 + 36))
      {
        v17 = (v13 + 1) | (*(v12 + 52) << 16);
        *(v15 + 1) = v12;
        sub_10004CFF0(v16, 0, v17);
        v18 = malloc_type_calloc(1uLL, 0x68uLL, 0x10600408B1B9D36uLL);
        if (!v18)
        {
          goto LABEL_26;
        }

        v19 = v18;
        *(v18 + 4) = v17;
        *(v18 + 23) = 0;
        *v18 = v15;
        v18[1] = v12;
        *(v18 + 4) = CFAbsoluteTimeGetCurrent();
        CFArrayAppendValue(*v12, v19);
        if ((dword_1000AB6D0 & 4) != 0)
        {
          nullsub_3(*(*v19 + 16), 0);
        }
      }

      ++v13;
    }

    while (v14 != v13);
  }

  v20 = sub_100002A58();
  v21 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v20);
  v22 = dispatch_time(0, 1000000000 * *(v12 + 48));
  dispatch_source_set_timer(v21, v22, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004D060;
  handler[3] = &unk_1000994E0;
  handler[4] = v12;
  dispatch_source_set_event_handler(v21, handler);
  *(v12 + 16) = v21;
  dispatch_activate(v21);
LABEL_26:
  CFRelease(Mutable);
  qword_1000AD0B8 = v12;
  return v12;
}

void sub_10004CD3C(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = qword_1000AB9B0;
    if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 52);
      v22[0] = 67109376;
      v22[1] = v5;
      v23 = 1024;
      v24 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "cleanClientResponses: gen 0x%x timeout %d\n", v22, 0xEu);
    }

    dispatch_source_cancel(*(a1 + 16));
    dispatch_release(*(a1 + 16));
    *(a1 + 16) = 0;
    Count = CFArrayGetCount(*a1);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
        if (ValueAtIndex)
        {
          v10 = ValueAtIndex;
          if ((ValueAtIndex[12] & 1) == 0)
          {
            *(ValueAtIndex + 96) = 1;
            *(ValueAtIndex + 97) = a2;
            Current = CFAbsoluteTimeGetCurrent();
            v10[3] = Current;
            v12 = *(v10 + 1);
            if (*(v12 + 8))
            {
              v13 = ((Current - v10[4]) * 1000.0);
              v22[0] = v13;
              v14 = @"ResponseTimedOut";
              if ((*(v10 + 97) & 1) != 0 || (v14 = @"ResponseSlow", v13 > 0xFA) || (v14 = @"ResponsePrompt", (dword_1000AB6D0 & 4) != 0))
              {
                Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                if (Mutable)
                {
                  v16 = Mutable;
                  CFDictionarySetValue(Mutable, @"ResponseType", v14);
                  CFDictionarySetValue(v16, @"Name", *(*v10 + 16));
                  v17 = CFNumberCreate(0, kCFNumberIntType, v10 + 92);
                  if (v17)
                  {
                    v18 = v17;
                    CFDictionarySetValue(v16, @"PowerCaps", v17);
                    CFRelease(v18);
                  }

                  v19 = CFNumberCreate(0, kCFNumberIntType, v22);
                  if (v19)
                  {
                    v20 = v19;
                    CFDictionarySetValue(v16, @"TimeMS", v19);
                    CFRelease(v20);
                  }

                  v21 = @"Sleep";
                  if ((dword_1000AD088 & 1) != 0 || (v21 = @"DarkWake", (dword_1000AD088 & 2) != 0) || (v21 = @"Wake", (dword_1000AD088 & 0x40) != 0))
                  {
                    CFDictionarySetValue(v16, @"TransitionType", v21);
                  }

                  CFArrayAppendValue(*(v12 + 8), v16);
                  CFRelease(v16);
                }
              }
            }
          }
        }
      }
    }

    sub_10004BB38(a1);
  }
}

void sub_10004CFF0(mach_port_t a1, int a2, int a3)
{
  *&msg.msgh_bits = 0x2400000013;
  *&msg.msgh_voucher_port = 0;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  v4 = 0;
  v5 = a2;
  v6 = a3;
  if (mach_msg(&msg, 17, 0x24u, 0, 0, 0, 0) == 268435460)
  {
    mach_msg_destroy(&msg);
  }
}

xpc_object_t sub_10004D0E0(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "DisplayOn", *(a1 + 32));
  xpc_dictionary_set_uint64(v2, "NumAssertions", qword_1000ABA78);
  qword_1000ABA78 = 0;
  return v2;
}

void sub_10004D16C()
{
  v6 = 0;
  v7 = 1;
  v0 = sub_100044998(&v7, &v6);
  v1 = sub_100004D48();
  v7 = v1;
  if (dword_1000AB708 == v1)
  {
    v2 = dword_1000AD108;
    if (v2 == sub_100004454())
    {
      return;
    }

    v1 = v7;
  }

  dword_1000AB708 = v1;
  dword_1000AD108 = sub_100004454();
  v3 = sub_100004454();
  sub_1000041E4(v11, 0x64uLL, v3);
  if (v0)
  {
    snprintf(__str, 0x40uLL, "(Charge: %d)", v6);
  }

  else
  {
    __str[0] = 0;
  }

  if (v7)
  {
    v4 = "AC";
  }

  else
  {
    v4 = "Batt";
  }

  snprintf(v12, 0x64uLL, "Summary- %s Using %s%s", v11, v4, __str);
  if ((dword_1000AB6D0 & 0x40) != 0)
  {
    v5 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Summary- %{public}s\n", buf, 0xCu);
    }
  }
}

void sub_10004D300()
{
  if (!qword_1000AD110)
  {
    v0 = sub_100002A58();
    qword_1000AD110 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v0);
    dispatch_source_set_event_handler(qword_1000AD110, &stru_10009A718);
    v1 = qword_1000AD110;
    v2 = dispatch_time(0, 900000000000);
    dispatch_source_set_timer(v1, v2, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(qword_1000AD110);
  }

  segname = stru_100000020.segname;
  do
  {
    if (segname != 1000)
    {
      sub_1000047A8(&unk_1000ABB58 + 160 * *(&unk_1000ABB58 + segname), 3u, &stru_10009A6F8);
    }

    segname += 160;
  }

  while (segname != 3400);
  v4 = qword_1000AD110;
  v5 = dispatch_time(0, 900000000000);

  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
}

uint64_t sub_10004D410(uint64_t a1, _OWORD *a2, vm_address_t *a3, unsigned int *a4, unsigned int *a5, _DWORD *a6, int *a7)
{
  if (!a3 || !a6)
  {
    v14 = -536870206;
LABEL_12:
    *a7 = v14;
    return 0;
  }

  *a7 = -536870160;
  *a3 = 0;
  *a4 = 0;
  *a6 = 0;
  v12 = a2[1];
  v22[0] = *a2;
  v22[1] = v12;
  if (!sub_1000064E4(v22, @"com.apple.private.iokit.powerlogging"))
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B04C();
    }

    v14 = -536870174;
    goto LABEL_12;
  }

  dword_1000ABAA0 = 0;
  if ((byte_1000AD118 & 1) == 0)
  {
    byte_1000AD118 = 1;
  }

  if (qword_1000ABA98)
  {
    v13 = 0;
  }

  else
  {
    qword_1000ABA98 = CFArrayCreateMutable(0, 512, &kCFTypeArrayCallBacks);
    if (!qword_1000ABA98)
    {
      *a7 = -536870211;
      return 0;
    }

    v13 = byte_1000AD118 ^ 1;
  }

  v16 = sub_10001599C(a5, a6, v13 & 1);
  Data = CFPropertyListCreateData(0, v16, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    v18 = Data;
    Length = CFDataGetLength(Data);
    *a4 = Length;
    vm_allocate(mach_task_self_, a3, Length, 1);
    v20 = *a3;
    if (v20)
    {
      BytePtr = CFDataGetBytePtr(v18);
      memcpy(v20, BytePtr, *a4);
      *a7 = 0;
      *a5 = dword_1000ABA90;
    }

    CFRelease(v18);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return 0;
}

void sub_10004D5DC(void *a1)
{
  if (qword_1000ABA88)
  {
    v2 = qword_1000ABA80 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B1B8();
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(qword_1000ABA88);
    if (reply)
    {
      v4 = reply;
      if (a1)
      {
        a1 = _CFXPCCreateXPCObjectFromCFObject();
      }

      xpc_dictionary_set_value(v4, "assertionActiveAsyncByProcess", a1);
      xpc_dictionary_set_uint64(v4, "returnCode", 0);
      xpc_connection_send_message(qword_1000ABA80, v4);
      xpc_release(v4);
      if (a1)
      {

        xpc_release(a1);
      }
    }

    else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B0B4();
    }
  }
}

void sub_10004D6F0(void *a1, void *a2)
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
    sub_100015130(1);
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

void sub_10004D83C(_xpc_connection_s *a1, xpc_object_t xdict)
{
  v3 = -536870206;
  valuePtr = 0;
  v12 = -1;
  if (!xpc_dictionary_get_value(xdict, "assertionProperties"))
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B7C0();
    }

    goto LABEL_21;
  }

  v4 = _CFXPCCreateCFObjectFromXPCMessage();
  TypeID = CFDictionaryGetTypeID();
  if (!v4 || CFGetTypeID(v4) != TypeID)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B2DC();
    }

    if (!v4)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  xpc_connection_get_audit_token();
  *buf = 0u;
  v14 = 0u;
  if (!sub_100001CFC(buf, v4))
  {
    v3 = -536870207;
LABEL_20:
    CFRelease(v4);
LABEL_21:
    pid = -1;
LABEL_22:
    v10 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      *&buf[4] = valuePtr;
      *&buf[8] = 1024;
      *&buf[10] = v3;
      *&buf[14] = 1024;
      LODWORD(v14) = pid;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to change properties for assertion id 0x%x (rc:0x%x) for pid %d\n", buf, 0x14u);
    }

    return;
  }

  Value = CFDictionaryGetValue(v4, @"AsyncRemoteAssertionId");
  v7 = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != v7)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006B750();
    }

    goto LABEL_20;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  pid = xpc_connection_get_pid(a1);
  v3 = sub_100005510(pid, valuePtr, v4, &v12);
  v9 = qword_1000ABAB8;
  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = valuePtr;
    *&buf[8] = 1024;
    *&buf[10] = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated properties for assertion id 0x%x(rc:0x%x)\n", buf, 0xEu);
  }

  CFRelease(v4);
  if (v3)
  {
    goto LABEL_22;
  }
}

void sub_10004DAC8(_xpc_connection_s *a1)
{
  pid = xpc_connection_get_pid(a1);
  v3 = qword_1000ABAB8;
  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = pid;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Aysnc Assertion: received initial connection from %d", v5, 8u);
  }

  v4 = sub_10000229C(pid);
  if (v4 || (v4 = sub_100002B14(pid)) != 0)
  {
    v4[15] = xpc_retain(a1);
  }

  else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006BAF0();
  }
}

void sub_10004DBC4(_xpc_connection_s *a1, void *a2)
{
  v10 = 0u;
  v11 = 0u;
  xpc_connection_get_audit_token();
  memset(&v9, 0, sizeof(v9));
  v4 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v9);
  v5 = v4;
  if (v4)
  {
    v6 = SecTaskCopyValueForEntitlement(v4, @"com.apple.private.iokit.assertion-suspendresume", 0);
    if (v6)
    {
      v7 = v6;
      uint64 = xpc_dictionary_get_uint64(a2, "pid");
      if (xpc_dictionary_get_uint64(a2, "assertionSetState") == 1)
      {
        sub_10004DCC4(uint64);
      }

      else
      {
        sub_10004DE30(uint64);
      }

      CFRelease(v5);
      v5 = v7;
LABEL_11:
      CFRelease(v5);
      return;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006BBD0(a1);
  }

  if (v5)
  {
    goto LABEL_11;
  }
}

void sub_10004DCC4(int a1)
{
  Value = CFDictionaryGetValue(qword_1000ABAC0, a1);
  if (Value)
  {
    v3 = Value;
    if (Value[136] < 0)
    {
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10006BC68();
      }
    }

    else
    {
      v4 = &unk_1000ABB58;
      v5 = 21;
      do
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100050C18;
        v7[3] = &unk_10009A940;
        v8 = a1;
        sub_1000047A8(v4, 7u, v7);
        v6 = v4[16];
        if (v6)
        {
          v6(v4, 2);
        }

        v4 += 20;
        --v5;
      }

      while (v5);
      v3[136] |= 0x80u;
      if (dword_1000AD1A4)
      {
        notify_post("com.apple.system.powermanagement.assertions.anychange");
      }
    }
  }

  else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006BCD8();
  }
}

void sub_10004DE30(int a1)
{
  Value = CFDictionaryGetValue(qword_1000ABAC0, a1);
  if (Value && (v3 = Value, Value[136] < 0))
  {
    v4 = &unk_1000ABB58;
    v5 = 21;
    do
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100050D20;
      v7[3] = &unk_10009A940;
      v8 = a1;
      sub_1000047A8(v4, 8u, v7);
      v6 = v4[16];
      if (v6)
      {
        v6(v4, 2);
      }

      v4 += 20;
      --v5;
    }

    while (v5);
    v3[136] &= ~0x80u;
    if (dword_1000AD1A4)
    {
      notify_post("com.apple.system.powermanagement.assertions.anychange");
    }
  }

  else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006BD48();
  }
}

void sub_10004DF74(_xpc_connection_s *a1)
{
  pid = xpc_connection_get_pid(a1);
  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
  {
    sub_10006BDB8();
  }

  Value = CFDictionaryGetValue(qword_1000ABAC0, pid);
  if (Value)
  {
    if (Value[15])
    {
      sub_10000CE78(pid);
    }
  }
}

void sub_10004DFE4(uint64_t a1)
{
  if ((*(a1 + 136) & 0x20) == 0 && os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006BF20(a1);
  }

  sub_100007E54(*(a1 + 96));
}

void sub_10004E03C(uint64_t a1, void *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = qword_1000ABAB8;
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 96);
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending assertion check message to pid %d\n", v10, 8u);
    }

    xpc_dictionary_set_uint64(v6, "assertionCheck", 0);
    xpc_dictionary_set_uint64(v6, "assertionCheckToken", qword_1000AD130);
    v8 = *(a1 + 120);
    v9 = sub_100002A58();
    xpc_connection_send_message_with_reply(v8, v6, v9, a2);
    xpc_release(v6);
  }

  else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006BF90(a1);
  }
}

void sub_10004E178(void *a1, int a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, "assertionCheckToken");
  v5 = xpc_dictionary_get_uint64(a1, "assertionCheckCount");
  v6 = qword_1000AD130;
  if (uint64 == qword_1000AD130)
  {
    if (a2)
    {
      v7 = v5;
      Value = CFDictionaryGetValue(qword_1000ABAC0, a2);
      if (Value)
      {
        v9 = Value;
        if (CFSetContainsValue(qword_1000AD138, Value))
        {
          dword_1000AD140 += v7;
          v10 = qword_1000ABAB8;
          if (v7)
          {
            if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
            {
              v13 = 67109376;
              v14 = a2;
              v15 = 1024;
              LODWORD(v16) = v7;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received active assertion from %d:%d blocking sleep", &v13, 0xEu);
            }
          }

          else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
          {
            sub_10006C000();
          }

          CFSetRemoveValue(qword_1000AD138, v9);
          sub_100007E54(v9[24]);
          if (CFSetGetCount(qword_1000AD138))
          {
            if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
            {
              sub_10006C070();
            }
          }

          else
          {
            sub_10006025C(qword_1000AD130, dword_1000AD140 == 0);
            qword_1000AD130 = 0;
            dword_1000AD140 = 0;
          }
        }

        else
        {
          v12 = qword_1000ABAB8;
          if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 67109120;
            v14 = a2;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Reply from pid:%d no longer considered pending. Reply likely came after timeout.\n", &v13, 8u);
          }
        }
      }

      else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10006C0E0();
      }
    }

    else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006C15C();
    }
  }

  else
  {
    v11 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109632;
      v14 = a2;
      v15 = 2048;
      v16 = uint64;
      v17 = 2048;
      v18 = v6;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unexpected assertion check response from pid %d. token: %ld expected: %ld\n", &v13, 0x1Cu);
    }
  }
}

void sub_10004E440(intptr_t a1)
{
  v2 = qword_1000ABAB8;
  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Check for async assertions", buf, 2u);
  }

  Mutable = qword_1000AD138;
  if (!qword_1000AD138)
  {
    Mutable = CFSetCreateMutable(0, 0, 0);
    qword_1000AD138 = Mutable;
    if (!Mutable)
    {
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10006C24C();
      }

      goto LABEL_9;
    }
  }

  if (qword_1000AD130 || CFSetGetCount(Mutable))
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006C198();
    }

LABEL_9:
    sub_10006025C(a1, 1);
    return;
  }

  Count = CFDictionaryGetCount(qword_1000ABAC0);
  v5 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  if (!v5)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006C210();
    }

    goto LABEL_9;
  }

  v6 = v5;
  qword_1000AD130 = a1;
  dword_1000AD140 = 0;
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
        CFSetAddValue(qword_1000AD138, v8);
        v9 = *(v8 + 96);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10004E758;
        v15[3] = &unk_10009A738;
        v16 = v9;
        sub_10004E03C(v8, v15);
      }

      ++v7;
      --Count;
    }

    while (Count);
  }

  if (!CFSetGetCount(qword_1000AD138))
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006C1D4();
    }

    sub_10006025C(a1, 1);
    qword_1000AD130 = 0;
    dword_1000AD140 = 0;
  }

  v10 = qword_1000AD148;
  if (!qword_1000AD148)
  {
    v11 = sub_100002A58();
    qword_1000AD148 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);
    dispatch_source_set_event_handler(qword_1000AD148, &stru_10009A758);
    dispatch_source_set_cancel_handler(qword_1000AD148, &stru_10009A778);
    v12 = qword_1000AD148;
    v13 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(qword_1000AD148);
    v10 = qword_1000AD148;
  }

  v14 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v10, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
  free(v6);
}

void sub_10004E768(id a1)
{
  if (CFSetGetCount(qword_1000AD138))
  {
    CFSetApplyFunction(qword_1000AD138, sub_10004DFE4, 0);
    CFSetRemoveAllValues(qword_1000AD138);
    sub_10006025C(qword_1000AD130, dword_1000AD140 == 0);
    qword_1000AD130 = 0;
    dword_1000AD140 = 0;
  }
}

uint64_t sub_10004E808()
{
  if (dword_1000AD170 == -1)
  {
    result = 1;
  }

  else
  {
    result = (dword_1000AD170 + 1);
  }

  dword_1000AD170 = result;
  return result;
}

void sub_10004E820(id a1)
{
  if (CFSetGetCount(qword_1000AD168))
  {
    v1 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = byte_1000AD180;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "_sendAssertionActivityUpdate: Timer fired with actives only %d", v9, 8u);
    }

    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    Count = CFSetGetCount(qword_1000AD168);
    v4 = Count;
    v5 = malloc_type_calloc(Count, 8uLL, 0x2004093837F09uLL);
    CFSetGetValues(qword_1000AD168, v5);
    if (v4 >= 1)
    {
      v6 = v4 & 0x7FFFFFFF;
      v7 = v5;
      do
      {
        v8 = *(*v7 + 10);
        if (v8)
        {
          CFArrayAppendValue(Mutable, v8);
        }

        ++v7;
        --v6;
      }

      while (v6);
    }

    CFSetApplyFunction(qword_1000AD168, sub_10004DFE4, 0);
    if (byte_1000AD180)
    {
      sub_10004D5DC(qword_1000AD158);
      if (qword_1000AD158)
      {
        CFRelease(qword_1000AD158);
      }
    }

    else
    {
      sub_1000156AC(Mutable, byte_1000AD160);
    }

    if (v5)
    {
      free(v5);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    dword_1000AD150 = 0;
    CFSetRemoveAllValues(qword_1000AD168);
  }
}

__CFArray *sub_10004EA0C(int a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = &unk_1000ABB58;
  v4 = 21;
  do
  {
    if (v4 != 15)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000547B0;
      v12[3] = &unk_10009ACF0;
      v13 = a1;
      v12[4] = Mutable;
      sub_1000047A8(v3, 0xFu, v12);
    }

    v3 += 160;
    --v4;
  }

  while (v4);
  Count = CFDictionaryGetCount(Mutable);
  v6 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  if (!v6)
  {
    v8 = 0;
    if (!Mutable)
    {
      return v8;
    }

    goto LABEL_10;
  }

  v7 = v6;
  CFDictionaryGetKeysAndValues(Mutable, 0, v6);
  v8 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (Count >= 1)
  {
    v9 = v7;
    do
    {
      v10 = *v9++;
      CFArrayAppendValue(v8, v10);
      --Count;
    }

    while (Count);
  }

  free(v7);
  if (Mutable)
  {
LABEL_10:
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t sub_10004EB90(uint64_t a1, _OWORD *a2, const char *a3, int a4, _DWORD *a5)
{
  euidp = 0;
  *a5 = -536870212;
  v8 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v8;
  audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, 0, 0, 0);
  if (euidp)
  {
    *a5 = -536870207;
    return 0;
  }

  if (!a3 || !*a3)
  {
    CFStringGetTypeID();
    return 0;
  }

  v9 = CFStringCreateWithCString(0, a3, 0x8000100u);
  TypeID = CFStringGetTypeID();
  if (v9)
  {
    if (CFGetTypeID(v9) == TypeID)
    {
      v11 = sub_100001F08(v9);
      if ((v11 & 0x80000000) == 0)
      {
        *a5 = 0;
        if (a4 == 2)
        {
          v12 = &unk_1000ABB58 + 160 * v11;
          v15 = *(v12 + 34);
          v13 = v12 + 136;
          v14 = v15;
          if (v15)
          {
            *v13 = v14 - 1;
          }

          goto LABEL_15;
        }

        if (a4 == 1)
        {
          ++*(&unk_1000ABB58 + 40 * v11 + 34);
LABEL_15:
          sub_100018C6C(v11, 0);
          goto LABEL_16;
        }
      }

      *a5 = -536870206;
    }

LABEL_16:
    CFRelease(v9);
  }

  return 0;
}

void sub_10004ED10(unsigned int a1)
{
  v1 = &unk_1000ABB58 + 160 * a1;
  v4 = *(v1 + 34);
  v2 = v1 + 136;
  v3 = v4;
  if (v4)
  {
    *v2 = v3 - 1;
  }

  sub_100018C6C(a1, 0);
}

void sub_10004ED44()
{
  input = 1;
  v0 = dword_1000AD184;
  if (dword_1000AD184)
  {
LABEL_6:
    dword_1000AD184 = v0 | 0x100;
    return;
  }

  v1 = sub_100002290();
  v2 = qword_1000ABAB8;
  if (v1)
  {
    v3 = v1;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v6 = 1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting ClamshellSleepState to %lld\n", buf, 0xCu);
    }

    IOConnectCallMethod(v3, 0xCu, &input, 1u, 0, 0, 0, 0, 0, 0);
    v0 = dword_1000AD184;
    goto LABEL_6;
  }

  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006C698();
  }
}

void sub_10004EE5C()
{
  v0 = sub_100002AB4();
  nullsub_3(1, v1);
  if (v0 - qword_1000AD188 > 0x1D || (sub_100007E48() & 1) != 0 || !sub_10005C9D0())
  {
    if ((sub_100007E48() & 1) == 0 && (sub_10005C9D0() & 1) == 0)
    {
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
      {
        sub_10006C79C();
      }

      sub_10005CA4C(1);
    }

    v3 = sub_100002290();
    if (v3)
    {
      if (IOConnectCallMethod(v3, 0xAu, 0, 0, 0, 0, 0, 0, 0, 0))
      {
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
        {
          sub_10006C7D8();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
        {
          sub_10006C848();
        }

        qword_1000AD188 = v0;
      }
    }

    else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006C884();
    }
  }

  else
  {
    v2 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
    {
      sub_10006C6D4(v0, v2);
    }
  }
}

void sub_10004EFC0()
{
  v0 = sub_1000561A0(@"DarkWakeBackgroundTasks");
  if (dword_1000AB748 != v0)
  {
    dword_1000AB748 = v0;

    sub_100018C6C(0xBu, 0);
  }
}

void sub_10004F014()
{
  v3 = 0;
  if (sub_10005F64C("fmm-wipe-system-status", &v3))
  {
    v0 = 1;
  }

  else
  {
    v0 = v3 < 1;
  }

  if (!v0)
  {
    v1 = sub_10004F0C8(@"PreventSystemSleep", @"com.apple.powermanagement.fmmdwipe", 0, @"Proxy Assertion during FMMD system wipe", 0, @"TimeoutActionRelease", 120.0);
    if (v1)
    {
      v2 = v1;
      CFDictionarySetValue(v1, @"AppliesToLimitedPower", kCFBooleanTrue);
      sub_10004F3E0(v2, 0, 0);
      CFRelease(v2);
    }
  }
}

__CFDictionary *sub_10004F0C8(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, double a7)
{
  v7 = 0;
  v20 = a7;
  if (a1)
  {
    if (a2)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v7 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"AssertName", a2);
        valuePtr = 255;
        v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(v7, @"AssertLevel", v16);
        CFRelease(v16);
        CFDictionarySetValue(v7, @"AssertType", a1);
        if (a3)
        {
          CFDictionarySetValue(v7, @"Details", a3);
        }

        if (a4)
        {
          CFDictionarySetValue(v7, @"HumanReadableReason", a4);
        }

        if (a5)
        {
          CFDictionarySetValue(v7, @"BundlePath", a5);
        }

        if (a7 != 0.0)
        {
          v17 = CFNumberCreate(0, kCFNumberDoubleType, &v20);
          CFDictionarySetValue(v7, @"TimeoutSeconds", v17);
          CFRelease(v17);
        }

        if (a6)
        {
          CFDictionarySetValue(v7, @"TimeoutAction", a6);
        }
      }
    }
  }

  return v7;
}

uint64_t sub_10004F260()
{
  if (dword_1000AD190)
  {
    return notify_post("com.apple.system.powermanagement.assertions");
  }

  return result;
}

uint64_t sub_10004F27C(const void *a1, int *a2)
{
  v16 = 0;
  v2 = 3758097090;
  if (a1 && a2)
  {
    v4 = sub_10004F0C8(@"UserIsActive", a1, 0, 0, 0, @"TimeoutActionRelease", 0.0);
    if (v4)
    {
      v5 = v4;
      valuePtr = (60 * dword_1000ABAC8);
      v6 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(v5, @"TimeoutSeconds", v6);
        CFRelease(v7);
      }

      v8 = getpid();
      if (!sub_100004CBC(v8, *a2, &v16) && (v9 = v16) != 0 && *(v16 + 12) == 9)
      {
        v14 = 255;
        v10 = CFNumberCreate(0, kCFNumberIntType, &v14);
        CFDictionarySetValue(v9[2], @"AssertLevel", v10);
        CFRelease(v10);
        v11 = getpid();
        v12 = sub_100005510(v11, *a2, v5, 0);
      }

      else
      {
        *a2 = 0;
        v12 = sub_10004F3E0(v5, a2, 16);
      }

      v2 = v12;
      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_10004F3E0(const void *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 3758097090;
  }

  CFRetain(a1);
  v6 = sub_100002A58();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100053E48;
  block[3] = &unk_10009AB38;
  block[4] = a2;
  block[5] = a1;
  v9 = a3;
  dispatch_async(v6, block);
  return 0;
}

void sub_10004F48C(uint64_t a1)
{
  v2 = sub_100002A58();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F508;
  block[3] = &unk_1000994E0;
  block[4] = a1;
  dispatch_async(v2, block);
}

uint64_t sub_10004F508(uint64_t result)
{
  v1 = *(result + 32);
  if (*v1)
  {
    v2 = result;
    v3 = getpid();
    result = sub_100007A0C(v3, **(v2 + 32), 0);
    v1 = *(v2 + 32);
  }

  *v1 = 0;
  return result;
}

void sub_10004F550(int a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100002A58();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004F644;
    block[3] = &unk_100099930;
    v8 = v1;
    dispatch_async(v2, block);
  }

  else
  {
    v3 = dispatch_time(0, qword_1000AB720);
    v4 = sub_100002A58();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10004F740;
    v5[3] = &unk_100099930;
    v6 = v1;
    dispatch_after(v3, v4, v5);
  }
}

uint64_t sub_10004F64C(char a1)
{
  result = sub_100007E48();
  if (byte_1000AD2B4 != result)
  {
    byte_1000AD2B4 = result;
    if (result)
    {
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
      {
        sub_10006C974();
      }

      v3 = &unk_1000ABB58;
      v4 = 21;
      do
      {
        result = sub_1000047A8(v3, 3u, &stru_10009AD10);
        v3 += 160;
        --v4;
      }

      while (v4);
    }

    else if ((a1 & 1) == 0)
    {
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
      {
        sub_10006C938();
      }

      v5 = &unk_1000ABB58;
      v6 = 21;
      do
      {
        result = sub_1000047A8(v5, 3u, &stru_10009AD30);
        v5 += 160;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_10004F748(const void *a1, const void *a2, int a3, _DWORD *a4)
{
  result = 3758097090;
  if (a1 && a2 && a4)
  {
    result = sub_10004F0C8(a1, a2, 0, 0, 0, @"TimeoutActionRelease", a3);
    if (result)
    {
      v7 = result;
      v8 = getpid();
      sub_100001FB0(v8, v7, a4, 0, 0);
      CFRelease(v7);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10004F7D0(int a1)
{
  if (!a1)
  {
    return 3758097084;
  }

  v2 = getpid();

  return sub_100007A0C(v2, a1, 0);
}

uint64_t sub_10004F81C(int a1, double a2)
{
  v2 = 3758097084;
  valuePtr = a2;
  if (!a1)
  {
    return 3758097090;
  }

  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (v4)
  {
    v5 = v4;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionarySetValue(Mutable, @"TimeoutSeconds", v5);
      v8 = getpid();
      v2 = sub_100005510(v8, a1, v7, 0);
      CFRelease(v7);
    }

    CFRelease(v5);
  }

  return v2;
}

void sub_10004F8DC()
{
  valuePtr = 255;
  if (dword_1000ABAC8 >= 5)
  {
    v0 = 5;
  }

  else
  {
    v0 = dword_1000ABAC8;
  }

  v1 = (60 * v0);
  if (!dword_1000ABAC8)
  {
    v1 = 300.0;
  }

  v11 = v1;
  if (dword_1000AD194)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v4 = CFNumberCreate(0, kCFNumberDoubleType, &v11);
    v5 = v4;
    if (Mutable && v3 && v4)
    {
      CFDictionarySetValue(Mutable, @"AssertLevel", v3);
      CFDictionarySetValue(Mutable, @"TimeoutSeconds", v5);
      v6 = getpid();
      sub_100005510(v6, dword_1000AD194, Mutable, 0);
    }

    else if (!Mutable)
    {
LABEL_17:
      if (v3)
      {
        CFRelease(v3);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      return;
    }

    CFRelease(Mutable);
    goto LABEL_17;
  }

  v7 = sub_10004F0C8(@"InternalPreventDisplaySleep", @"com.apple.powermanagement.delayDisplayOff", 0, @"Proxy to delay display off", 0, @"TimeoutActionTurnOff", v1);
  if (v7)
  {
    v8 = v7;
    v9 = getpid();
    sub_100001FB0(v9, v8, &dword_1000AD194, 0, 0);

    CFRelease(v8);
  }
}

void *sub_10004FA80(int a1)
{
  result = CFDictionaryGetValue(qword_1000ABAC0, a1);
  if (result)
  {
    return result[10];
  }

  return result;
}

void sub_10004FAB0(int a1, int a2)
{
  v15 = 0;
  Value = CFDictionaryGetValue(qword_1000ABAC0, a1);
  if (Value)
  {
    v5 = Value;
    if ((Value[136] & 0x20) == 0)
    {
      sub_100004CBC(a1, a2, &v15);
      v6 = v15;
      if (v15)
      {
        out_token = 0;
        if (!notify_register_check("com.apple.powermanagement.assertionexception", &out_token))
        {
          notify_set_state(out_token, a1 | &_mh_execute_header);
          notify_post("com.apple.powermanagement.assertionexception");
          notify_cancel(out_token);
          v7 = qword_1000ABAB8;
          if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
          {
            v8 = v6[2];
            *buf = 67109378;
            v17 = a1;
            v18 = 2112;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Single assertion exception on pid %d. Assertion details: %@\n", buf, 0x12u);
          }
        }

        v9 = *(v5 + 104);
        if (v9)
        {
          TypeID = CFStringGetTypeID();
        }

        else
        {
          v9 = sub_10004FC8C(1, v5);
          *(v5 + 104) = v9;
          TypeID = CFStringGetTypeID();
          if (!v9)
          {
            return;
          }
        }

        if (CFGetTypeID(v9) == TypeID)
        {
          v11 = CFRetain(*(v5 + 104));
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10004FFC0;
          block[3] = &unk_10009A4F8;
          block[4] = v11;
          v13 = a1;
          dispatch_async(qword_1000AD198, block);
        }
      }
    }
  }
}

uint64_t sub_10004FC8C(int a1, uint64_t a2)
{
  v2 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100053F14;
  v25 = &unk_10009AC68;
  v26 = &v32;
  v27 = &v28;
  if (qword_1000ABAE0 && !qword_1000AD198)
  {
    qword_1000AD198 = dispatch_queue_create("PM Stats offloader", 0);
    if (!qword_1000AD198)
    {
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10006C9B0();
      }

LABEL_26:
      v2 = 0;
      goto LABEL_27;
    }

    if (a1 != 1)
    {
      v2 = qword_1000AD298;
      if (qword_1000AD298)
      {
        v5 = dword_1000AD2A4;
        v6 = v33;
        v7 = dword_1000AD2AC;
        v8 = v29;
      }

      else
      {
        v2 = v24(&v22, 2);
        qword_1000AD298 = v2;
        v6 = v33;
        v5 = *(v33 + 6);
        dword_1000AD2A4 = v5;
        v8 = v29;
        v7 = *(v29 + 6);
        dword_1000AD2AC = v7;
        if (!v2)
        {
          goto LABEL_27;
        }
      }

      v9 = 132;
      goto LABEL_15;
    }

    v2 = qword_1000AD290;
    if (qword_1000AD290)
    {
      v5 = dword_1000AD2A0;
      v6 = v33;
      v7 = dword_1000AD2A8;
      v8 = v29;
LABEL_12:
      v9 = 128;
LABEL_15:
      *(v6 + 6) = v5;
      *(v8 + 6) = v7;
      if (*(v6 + 6))
      {
        v10 = 0;
        v11 = 0;
        v12 = *(a2 + v9);
        while (1)
        {
          v13 = *v2;
          TypeID = CFStringGetTypeID();
          if (v13)
          {
            if (CFGetTypeID(v13) == TypeID)
            {
              v15 = *(a2 + 80);
              v16 = CFStringGetTypeID();
              if (v15)
              {
                if (CFGetTypeID(v15) == v16 && CFStringCompare(*v2, *(a2 + 80), 0) == kCFCompareEqualTo)
                {
                  break;
                }
              }
            }
          }

          v17 = *(v2 + 8);
          if (v17)
          {
            if (v17 <= v12)
            {
              v19 = (*(v29 + 6) + ~v11);
              if (v19 == -1)
              {
                goto LABEL_26;
              }

              v20 = "aggregateassertion";
              if (a1 == 1)
              {
                v20 = "singleassertion";
              }

              v21 = CFStringCreateWithFormat(0, 0, @"com.apple.powerd.exception.%s.bucket%d", v20, v19, v22, v23);
              goto LABEL_32;
            }

            ++v11;
          }

          ++v10;
          v2 += 24;
          if (v10 >= *(v33 + 6))
          {
            goto LABEL_26;
          }
        }

        if (*v2)
        {
          v21 = sub_100054430(*v2, a1);
LABEL_32:
          v2 = v21;
          goto LABEL_27;
        }
      }

      goto LABEL_26;
    }

    v2 = v24(&v22, 1);
    qword_1000AD290 = v2;
    v6 = v33;
    v5 = *(v33 + 6);
    dword_1000AD2A0 = v5;
    v8 = v29;
    v7 = *(v29 + 6);
    dword_1000AD2A8 = v7;
    if (v2)
    {
      goto LABEL_12;
    }
  }

LABEL_27:
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  return v2;
}

void sub_10004FF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10004FFC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  ADClientAddValueForScalarKey();
  v3 = qword_1000ABAB8;
  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Add to aggd string %@ for pid %d\n", &v6, 0x12u);
  }

  CFRelease(*(a1 + 32));
}

uint64_t sub_1000500A0(uint64_t a1, _OWORD *a2, int a3, _DWORD *a4, int *a5)
{
  ruidp = -1;
  pidp = -1;
  rgidp = -1;
  v8 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v8;
  audit_token_to_au32(&atoken, 0, 0, 0, &ruidp, &rgidp, &pidp, 0, 0);
  *a4 = 0;
  if (sub_10005E564(ruidp))
  {
    v9 = 0;
    *a4 = dword_1000AB710;
    dword_1000AB710 = a3;
  }

  else
  {
    v9 = -536870207;
  }

  *a5 = v9;
  return 0;
}

uint64_t sub_10005014C(uint64_t a1, _OWORD *a2, uint64_t a3, const UInt8 *a4, unsigned int a5, int *a6, _DWORD *a7, int *a8)
{
  v31 = 0;
  pidp = -1;
  valuePtr = 0.0;
  v14 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v14;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  *a7 = 0;
  v15 = a5;
  v16 = CFDataCreateWithBytesNoCopy(0, a4, a5, kCFAllocatorNull);
  if (v16)
  {
    v17 = v16;
    v18 = CFPropertyListCreateWithData(0, v16, 1uLL, 0, 0);
    CFRelease(v17);
    if (v18)
    {
      TypeID = CFDictionaryGetTypeID();
      v20 = CFGetTypeID(v18);
      if (a6 && v20 == TypeID)
      {
        v21 = a2[1];
        *atoken.val = *a2;
        *&atoken.val[4] = v21;
        if (sub_100001CFC(&atoken, v18))
        {
          valuePtr = (60 * dword_1000ABAC8);
          v22 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
          CFDictionarySetValue(v18, @"TimeoutSeconds", v22);
          CFRelease(v22);
          CFDictionarySetValue(v18, @"TimeoutAction", @"TimeoutActionRelease");
          if (*a6 && !sub_100004CBC(pidp, *a6, &v31) && (v23 = v31) != 0 && *(v31 + 12) == 9)
          {
            atoken.val[0] = 255;
            v24 = CFNumberCreate(0, kCFNumberIntType, &atoken);
            CFDictionarySetValue(v23[2], @"AssertLevel", v24);
            CFRelease(v24);
            *a8 = sub_100005510(pidp, *a6, v18, 0);
          }

          else
          {
            CFDictionarySetValue(v18, @"AssertType", @"UserIsActive");
            v27 = sub_100001FB0(pidp, v18, a6, 0, 0);
            *a8 = v27;
            if (!v27 && !sub_100004CBC(pidp, *a6, &v31))
            {
              *(v31 + 6) |= 0x10u;
            }
          }

          goto LABEL_15;
        }

        v25 = -536870207;
      }

      else
      {
        v25 = -536870206;
      }

      *a8 = v25;
LABEL_15:
      CFRelease(v18);
      goto LABEL_16;
    }
  }

  *a8 = -536870206;
LABEL_16:
  vm_deallocate(mach_task_self_, a4, v15);
  return 0;
}

uint64_t sub_1000503F8(uint64_t a1, _OWORD *a2, const UInt8 *a3, unsigned int a4, int *a5, _DWORD *a6, int *a7)
{
  pidp = -1;
  v28 = 0;
  valuePtr = 0.0;
  v13 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v13;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  *a6 = 0;
  v14 = a4;
  v15 = CFDataCreateWithBytesNoCopy(0, a3, a4, kCFAllocatorNull);
  if (v15)
  {
    v16 = v15;
    v17 = CFPropertyListCreateWithData(0, v15, 1uLL, 0, 0);
    CFRelease(v16);
    if (v17)
    {
      TypeID = CFDictionaryGetTypeID();
      v19 = CFGetTypeID(v17);
      if (a5 && v19 == TypeID)
      {
        v20 = a2[1];
        *atoken.val = *a2;
        *&atoken.val[4] = v20;
        if (sub_100001CFC(&atoken, v17))
        {
          valuePtr = (60 * qword_1000ABAD0);
          if (60 * qword_1000ABAD0)
          {
            v21 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
            CFDictionarySetValue(v17, @"TimeoutSeconds", v21);
            CFRelease(v21);
            CFDictionarySetValue(v17, @"TimeoutAction", @"TimeoutActionRelease");
          }

          if (*a5 && !sub_100004CBC(pidp, *a5, &v28) && (v22 = v28) != 0 && *(v28 + 12) == 17)
          {
            atoken.val[0] = 255;
            v23 = CFNumberCreate(0, kCFNumberIntType, &atoken);
            CFDictionarySetValue(v22[2], @"AssertLevel", v23);
            CFRelease(v23);
            *a7 = sub_100005510(pidp, *a5, v17, 0);
          }

          else
          {
            CFDictionarySetValue(v17, @"AssertType", @"NetworkClientActive");
            v26 = sub_100001FB0(pidp, v17, a5, 0, 0);
            *a7 = v26;
            if (!v26 && !sub_100004CBC(pidp, *a5, &v28))
            {
              *(v28 + 6) |= 0x10u;
            }
          }

          goto LABEL_17;
        }

        v24 = -536870207;
      }

      else
      {
        v24 = -536870206;
      }

      *a7 = v24;
LABEL_17:
      CFRelease(v17);
      goto LABEL_18;
    }
  }

  *a7 = -536870206;
LABEL_18:
  vm_deallocate(mach_task_self_, a3, v14);
  return 0;
}

uint64_t sub_1000506EC(uint64_t a1, _OWORD *a2, const char *a3, int a4, int *a5)
{
  v8 = -536870211;
  ruidp = -1;
  pidp = -1;
  rgidp = -1;
  *a5 = 0;
  v9 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v9;
  audit_token_to_au32(&atoken, 0, 0, 0, &ruidp, &rgidp, &pidp, 0, 0);
  if (sub_10005E564(ruidp) || sub_10005ED54(ruidp))
  {
    if ((a4 - 3) >= 0xFFFFFFFE)
    {
      v8 = sub_10000D09C(pidp, a3, a4);
    }
  }

  else
  {
    v8 = -536870207;
  }

  *a5 = v8;
  return 0;
}

uint64_t sub_1000507BC(uint64_t a1, _OWORD *a2, const UInt8 *a3, unsigned int a4, int *a5)
{
  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  if (!sub_1000064E4(v30, @"com.apple.private.iokit.powerlogging"))
  {
    v24 = -536870207;
LABEL_19:
    *a5 = v24;
    goto LABEL_20;
  }

  v9 = CFDataCreateWithBytesNoCopy(0, a3, a4, kCFAllocatorNull);
  if (!v9)
  {
    CFDictionaryGetTypeID();
    goto LABEL_18;
  }

  v10 = v9;
  v11 = CFPropertyListCreateWithData(0, v9, 0, 0, 0);
  CFRelease(v10);
  TypeID = CFDictionaryGetTypeID();
  if (!v11)
  {
LABEL_18:
    v24 = -536870206;
    goto LABEL_19;
  }

  if (CFGetTypeID(v11) != TypeID)
  {
    *a5 = -536870206;
    goto LABEL_22;
  }

  Count = CFDictionaryGetCount(qword_1000ABAC0);
  v14 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  if (!v14)
  {
LABEL_22:
    CFRelease(v11);
    goto LABEL_20;
  }

  v15 = v14;
  if (qword_1000ABAE0)
  {
    CFRelease(qword_1000ABAE0);
  }

  qword_1000ABAE0 = v11;
  bzero(v15, 8 * Count);
  CFDictionaryGetKeysAndValues(qword_1000ABAC0, 0, v15);
  if (Count >= 1)
  {
    v16 = Count;
    v17 = v15;
    do
    {
      if (!*v17)
      {
        break;
      }

      sub_100003FFC(*v17++);
      --v16;
    }

    while (v16);
  }

  if (CFDictionaryGetCount(qword_1000ABAE0))
  {
    if (!qword_1000ABAE8)
    {
      v18 = sub_100002A58();
      qword_1000ABAE8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v18);
      dispatch_source_set_event_handler(qword_1000ABAE8, &stru_10009A900);
      dispatch_source_set_cancel_handler(qword_1000ABAE8, &stru_10009A920);
      v19 = sub_100004D48();
      v20 = qword_1000ABAE8;
      if (v19)
      {
        v21 = dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0);
        v22 = v20;
        v23 = -1;
      }

      else
      {
        v21 = dispatch_time(0, 0);
        v23 = qword_1000AB718;
        v22 = v20;
      }

      dispatch_source_set_timer(v22, v21, v23, 0);
      dispatch_resume(qword_1000ABAE8);
      v27 = getpid();
      sub_10000D2DC(v27, 1);
    }

    if (Count && *v15)
    {
      v28 = sub_10004FC8C(1, *v15);
      if (v28)
      {
        CFRelease(v28);
      }

      v29 = sub_10004FC8C(2, *v15);
      if (v29)
      {
        CFRelease(v29);
      }
    }
  }

  else if (qword_1000ABAE8)
  {
    dispatch_source_cancel(qword_1000ABAE8);
    v26 = getpid();
    sub_10000D2DC(v26, 0);
    if (qword_1000ABAF0)
    {
      CFRelease(qword_1000ABAF0);
      qword_1000ABAF0 = 0;
    }
  }

  *a5 = 0;
  free(v15);
LABEL_20:
  vm_deallocate(mach_task_self_, a3, a4);
  return 0;
}

void sub_100050A94(id a1)
{
  v2 = 0;
  if (!sub_100004D48())
  {
    if (qword_1000ABAF0)
    {
      sub_100010698(&v2);
      if (v2)
      {
        SamplesDelta = IOReportCreateSamplesDelta();
        if (SamplesDelta)
        {
          IOReportIterate();
        }
      }

      else
      {
        SamplesDelta = 0;
      }

      if (qword_1000ABAF0)
      {
        CFRelease(qword_1000ABAF0);
      }

      qword_1000ABAF0 = v2;
      if (SamplesDelta)
      {
        CFRelease(SamplesDelta);
      }
    }

    else
    {

      sub_100010698(&qword_1000ABAF0);
    }
  }
}

uint64_t sub_100050B84(uint64_t result, int a2)
{
  v2 = 1 << result;
  if (a2)
  {
    v3 = dword_1000AD1AC | v2;
  }

  else
  {
    v3 = dword_1000AD1AC & ~v2;
  }

  dword_1000AD1AC = v3;
  return result;
}

uint64_t sub_100050BB0(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  v2 = (a2 + 24);
  v3 = v4;
  *result = v4;
  if (v4)
  {
    *(v3 + 8) = result;
  }

  *v2 = result;
  *(result + 8) = v2;
  *(result + 24) = *(result + 24) & 0xFFFFFFFC | 2;
  return result;
}

uint64_t *sub_100050BDC(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  if (*result)
  {
    *(v1 + 8) = v2;
  }

  *v2 = v1;
  *(result + 6) &= ~2u;
  return result;
}

void sub_100050C18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(*(a2 + 72) + 96) == v3 || *(a2 + 80) == v3)
  {
    v4 = *(a2 + 48);
    if (*(a2 + 40))
    {
      v5 = sub_100002AB4();
      v6 = *(a2 + 40);
      v7 = v6 > v5;
      v8 = v6 - v5;
      if (v7)
      {
        valuePtr = v8;
        v9 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
        CFDictionarySetValue(*(a2 + 16), @"_AssertTimeoutOnResume", v9);
        CFRelease(v9);
      }
    }

    sub_100007AB8(a2, 0);
    *(a2 + 24) |= 0x400u;
    CFDictionarySetValue(*(a2 + 16), @"AssertionIsStateSuspended", kCFBooleanTrue);
    sub_100003488(10, a2);
    v10 = &unk_1000ABB58 + 160 * v4;
    v13 = *(v10 + 4);
    v11 = (v10 + 32);
    v12 = v13;
    *a2 = v13;
    if (v13)
    {
      *(v12 + 8) = a2;
    }

    *v11 = a2;
    *(a2 + 8) = v11;
  }
}

void sub_100050D20(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(*(a2 + 72) + 96) == v3 || *(a2 + 80) == v3)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    if (*a2)
    {
      *(v4 + 8) = v5;
    }

    *v5 = v4;
    *(a2 + 24) &= ~0x400u;
    CFDictionarySetValue(*(a2 + 16), @"AssertionIsStateSuspended", kCFBooleanFalse);
    v6 = sub_100002AB4();
    v7 = &unk_1000ABB58 + 160 * *(a2 + 48);
    valuePtr = 0;
    Value = CFDictionaryGetValue(*(a2 + 16), @"AssertLevel");
    TypeID = CFNumberGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID && (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr), !valuePtr))
    {
      v14 = *(v7 + 3);
      v13 = (v7 + 24);
      v12 = v14;
      *a2 = v14;
      if (v14)
      {
        *(v12 + 8) = a2;
      }

      *v13 = a2;
      *(a2 + 8) = v13;
      *(a2 + 24) = *(a2 + 24) & 0xFFFFFFFC | 2;
    }

    else
    {
      v15 = 0.0;
      v10 = CFDictionaryGetValue(*(a2 + 16), @"_AssertTimeoutOnResume");
      v11 = CFNumberGetTypeID();
      if (v10 && CFGetTypeID(v10) == v11 && (CFNumberGetValue(v10, kCFNumberDoubleType, &v15), CFDictionaryRemoveValue(*(a2 + 16), @"_AssertTimeoutOnResume"), v15 != 0.0))
      {
        *(a2 + 40) = v6 + v15;
        sub_100008FEC(a2, v7, 1, 0);
      }

      else
      {
        sub_100002DB4(a2, v7, 0);
      }

      sub_100003488(11, a2);
    }
  }
}

uint64_t sub_100050EE4(uint64_t result)
{
  if (result)
  {
    for (i = *(&unk_1000AC8A0 + 2 * result); i; i = *(i + 112))
    {
      if ((*i & 1) != 0 && !sub_100004D48())
      {
        if (*(i + 152))
        {
          return 1;
        }
      }

      else if (*(i + 16) || *(i + 8))
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100050F9C(int a1)
{
  result = 3758097093;
  if (a1)
  {
    if (byte_1000AD1B4)
    {
      return result;
    }

    ++dword_1000ABC80;
    sub_100018C6C(1u, 0);
    ++dword_1000AC360;
    sub_100018C6C(0xCu, 0);
    ++dword_1000AC2C0;
    sub_100018C6C(0xBu, 0);
    v3 = dword_1000AC220 + 1;
    goto LABEL_13;
  }

  if (!byte_1000AD1B4)
  {
    return result;
  }

  if (dword_1000ABC80)
  {
    --dword_1000ABC80;
  }

  sub_100018C6C(1u, 0);
  if (dword_1000AC360)
  {
    --dword_1000AC360;
  }

  sub_100018C6C(0xCu, 0);
  if (dword_1000AC2C0)
  {
    --dword_1000AC2C0;
  }

  sub_100018C6C(0xBu, 0);
  if (dword_1000AC220)
  {
    v3 = dword_1000AC220 - 1;
LABEL_13:
    dword_1000AC220 = v3;
  }

  sub_100018C6C(0xAu, 0);
  result = 0;
  byte_1000AD1B4 = a1 != 0;
  return result;
}

uint64_t sub_1000510D0(int a1, int a2)
{
  existing = 0;
  v4 = IOServiceMatching("IOPMPowerSource");
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v4, &existing);
  result = existing;
  if (MatchingServices)
  {
    v7 = 1;
  }

  else
  {
    v7 = existing == 0;
  }

  if (!v7)
  {
    v8 = IOIteratorNext(existing);
    if (v8)
    {
      v9 = v8;
      if (a1 == 1)
      {
        v10 = @"IsCharging";
      }

      else
      {
        v10 = @"ExternalConnected";
      }

      v11 = &kCFBooleanTrue;
      if (a2)
      {
        v11 = &kCFBooleanFalse;
      }

      v12 = *v11;
      do
      {
        IORegistryEntrySetCFProperty(v9, v10, v12);
        IOObjectRelease(v9);
        v9 = IOIteratorNext(existing);
      }

      while (v9);
    }

    return IOObjectRelease(existing);
  }

  return result;
}

uint64_t sub_1000511B4(unsigned int a1)
{
  input = a1;
  result = sub_100002290();
  if (result)
  {
    return IOConnectCallMethod(result, 9u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  return result;
}

void sub_100051204(uint64_t a1)
{
  if ((*a1 & 2) != 0)
  {
    *(a1 + 80) = 0;
    for (i = *(a1 + 16); i; i = *(a1 + 16))
    {
      sub_100007FB8(i, a1, 1);
      v3 = *(a1 + 24);
      *i = v3;
      if (v3)
      {
        *(v3 + 8) = i;
      }

      *(a1 + 24) = i;
      *(i + 8) = a1 + 24;
      *(i + 24) = *(i + 24) & 0xFFFFFFFC | 2;
      ++*(a1 + 80);
      sub_100003488(5, i);
      nullsub_3(3, i);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = (a1 + 24);
      do
      {
        v6 = *v4;
        v7 = *(v4 + 8);
        if (*v4)
        {
          *(v6 + 8) = v7;
        }

        *v7 = v6;
        *(v4 + 24) &= ~1u;
        sub_10000289C(v4, 1);
        sub_100007E08(v4);
        sub_100004550(v4, 1);
        v8 = *v5;
        *v4 = *v5;
        if (v8)
        {
          *(v8 + 8) = v4;
        }

        *(a1 + 24) = v4;
        *(v4 + 8) = v5;
        *(v4 + 24) = *(v4 + 24) & 0xFFFFFFFC | 2;
        ++*(a1 + 80);
        sub_100003488(5, v4);
        nullsub_3(3, v4);
        v4 = *(a1 + 8);
      }

      while (v4);
    }

    sub_10000964C(a1);
    v9 = *(a1 + 128);
    if (v9)
    {
      v9(a1, 1);
    }

    if (!*(a1 + 80))
    {

      sub_10004AE84(0);
    }
  }
}

void sub_100051380(int a1)
{
  v2 = sub_100002AB4();
  v19 = 0;
  v3 = a1 - dword_1000ABAC8;
  if (a1 != dword_1000ABAC8)
  {
    v4 = v2;
    dword_1000ABAC8 = a1;
    v5 = qword_1000AC100;
    if (qword_1000AC100)
    {
      v6 = 60 * v3;
      do
      {
        v7 = v5;
        v5 = *v5;
        if ((*(v7 + 24) & 0x10) != 0)
        {
          if (dword_1000ABAC8)
          {
            v8 = *(v7 + 8);
            if (v5)
            {
              v5[1] = v8;
            }

            *v8 = v5;
            v9 = *(v7 + 40) + v6;
            if (v9 <= v4)
            {
              v9 = v4;
            }

            *(v7 + 40) = v9;
            v10 = v19;
            *v7 = v19;
            if (v10)
            {
              v10[1] = v7;
            }

            v19 = v7;
            *(v7 + 8) = &v19;
          }

          else
          {
            sub_100009574(v7, &unk_1000AC0F8, 0, 1);
            *(v7 + 40) = 0;
            sub_100002DB4(v7, &unk_1000AC0F8, 1);
          }
        }
      }

      while (v5);
      for (i = v19; v19; i = v19)
      {
        v12 = *i;
        v13 = i[1];
        if (*i)
        {
          *(v12 + 8) = v13;
        }

        *v13 = v12;
        sub_1000090A4(i, &unk_1000AC0F8);
      }
    }

    v14 = qword_1000AC108;
    v15 = dword_1000ABAC8;
    if (qword_1000AC108)
    {
      v16 = dword_1000ABAC8 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      do
      {
        v17 = *v14;
        if ((*(v14 + 24) & 0x10) != 0)
        {
          *(v14 + 40) = v4 + (60 * v15);
          sub_100007FB8(v14, &unk_1000AC0F8, 1);
          sub_100008FEC(v14, &unk_1000AC0F8, 0, 1);
          v15 = dword_1000ABAC8;
        }

        if (v17)
        {
          v18 = v15 == 0;
        }

        else
        {
          v18 = 1;
        }

        v14 = v17;
      }

      while (!v18);
    }

    sub_1000091A4(&unk_1000AC0F8);
    if (off_1000AC178)
    {
      (off_1000AC178)(&unk_1000AC0F8, 1);
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

void sub_100051584()
{
  v0 = sub_100002AB4();
  v16 = 0;
  v17 = qword_1000ABAD0;
  sub_10005647C(&v17);
  v1 = v17 - qword_1000ABAD0;
  v2 = 60 * (v17 - qword_1000ABAD0);
  qword_1000ABAD0 = v17;
  if (60 * v1)
  {
    v3 = qword_1000AC600;
    if (qword_1000AC600)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
        if ((*(v4 + 24) & 0x10) != 0)
        {
          if (qword_1000ABAD0)
          {
            v5 = *(v4 + 8);
            if (v3)
            {
              v3[1] = v5;
            }

            *v5 = v3;
            v6 = *(v4 + 40) + v2;
            if (v6 <= v0)
            {
              v6 = v0;
            }

            *(v4 + 40) = v6;
            v7 = v16;
            *v4 = v16;
            if (v7)
            {
              v7[1] = v4;
            }

            v16 = v4;
            *(v4 + 8) = &v16;
          }

          else
          {
            sub_100009574(v4, &unk_1000AC5F8, 0, 1);
            *(v4 + 40) = 0;
            sub_100002DB4(v4, &unk_1000AC5F8, 1);
          }
        }
      }

      while (v3);
      for (i = v16; v16; i = v16)
      {
        v9 = *i;
        v10 = i[1];
        if (*i)
        {
          *(v9 + 8) = v10;
        }

        *v10 = v9;
        sub_1000090A4(i, &unk_1000AC5F8);
      }
    }

    v11 = qword_1000AC608;
    v12 = qword_1000ABAD0;
    if (qword_1000AC608)
    {
      v13 = qword_1000ABAD0 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      do
      {
        v14 = *v11;
        if ((*(v11 + 24) & 0x10) != 0)
        {
          *(v11 + 40) = v0 + 60 * v12;
          sub_100007FB8(v11, &unk_1000AC5F8, 1);
          sub_100008FEC(v11, &unk_1000AC5F8, 0, 1);
          v12 = qword_1000ABAD0;
        }

        if (v14)
        {
          v15 = v12 == 0;
        }

        else
        {
          v15 = 1;
        }

        v11 = v14;
      }

      while (!v15);
    }

    sub_1000091A4(&unk_1000AC5F8);
    if (off_1000AC678)
    {
      (off_1000AC678)(&unk_1000AC5F8, 1);
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

void sub_10005178C()
{
  v0 = qword_1000AC6F8;
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100051854;
  v1[3] = &unk_10009A960;
  v1[4] = sub_100002AB4() + v0;
  v1[5] = &unk_1000AC698;
  sub_1000047A8(&unk_1000AC698, 3u, v1);
  sub_1000091A4(&unk_1000AC698);
  if (dword_1000AD1A8)
  {
    notify_post("com.apple.system.powermanagement.assertions.timeout");
  }

  if (dword_1000AD1A4)
  {
    notify_post("com.apple.system.powermanagement.assertions.anychange");
  }
}

void sub_100051854(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a2 + 40) > v2)
  {
    *(a2 + 40) = v2;
    v4 = CFNumberCreate(0, kCFNumberLongType, (*(a1 + 40) + 96));
    if (v4)
    {
      v5 = v4;
      CFDictionarySetValue(*(a2 + 16), @"AssertTimeoutTimeLeft", v4);
      CFRelease(v5);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v7 = CFDateCreate(0, Current);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(*(a2 + 16), @"AssertTimeoutUpdateTime", v7);

      CFRelease(v8);
    }
  }
}

void sub_100051908(unsigned int a1)
{
  if (a1 || qword_1000AC1E0)
  {
    if ((byte_1000AC198 & 2) == 0)
    {
LABEL_7:
      if (!a1)
      {
        v2 = sub_100002A58();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100051AF0;
        block[3] = &unk_1000994E0;
        block[4] = &byte_1000AC198;
        dispatch_async(v2, block);
      }

      return;
    }

    qword_1000AC1E0 = a1 / 0x3E8uLL;
    if (a1 <= 0x3E7)
    {
      if (qword_1000AC1D0)
      {
        dispatch_source_cancel(qword_1000AC1D0);
      }

      goto LABEL_7;
    }

    if (qword_1000AC1D0)
    {
      dispatch_suspend(qword_1000AC1D0);
    }

    else
    {
      v3 = sub_100002A58();
      qword_1000AC1D0 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000549CC;
      handler[3] = &unk_1000994E0;
      handler[4] = &byte_1000AC198;
      dispatch_source_set_event_handler(qword_1000AC1D0, handler);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000549D4;
      v7[3] = &unk_1000994E0;
      v7[4] = &byte_1000AC198;
      dispatch_source_set_cancel_handler(qword_1000AC1D0, v7);
    }

    v4 = qword_1000AC1D0;
    v5 = dispatch_time(0, 1000000000 * qword_1000AC1E0);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(qword_1000AC1D0);
  }
}

void *sub_100051B10(const __CFDictionary *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A0040FFA61E1BuLL);
  if (v2)
  {
    Mutable = CFDictionaryCreateMutable(0, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(v2 + 2) = Mutable;
    if (Mutable && (v4 = CFDictionaryGetValue(a1, @"ID")) != 0)
    {
      v5 = v4;
      CFDictionarySetValue(*(v2 + 2), @"GlobalUniqueID", v4);
      Value = CFDictionaryGetValue(a1, @"Assertions");
      if (Value)
      {
        *valuePtr = 0;
        CFNumberGetValue(Value, kCFNumberSInt32Type, valuePtr);
        v7 = sub_100037C60(valuePtr[0]);
        v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
        if (v8)
        {
          v9 = v8;
          CFDictionarySetValue(*(v2 + 2), @"AssertName", v8);
          CFRelease(v9);
        }
      }

      CFDictionarySetValue(*(v2 + 2), @"AssertType", @"Kernel Assertion");
      v10 = CFDictionaryGetValue(a1, @"ServicePtr");
      if (v10)
      {
        CFDictionarySetValue(*(v2 + 2), @"AssertionOnBehalfOfPID", v10);
      }

      v11 = CFDictionaryGetValue(a1, @"Owner");
      if (v11)
      {
        CFDictionarySetValue(*(v2 + 2), @"AssertionOnBehalfOfBundleID", v11);
      }

      CFDictionarySetValue(*(v2 + 2), @"Process Name", @"kernel_task");
      v12 = CFDictionaryGetValue(qword_1000ABAC0, 0);
      if (v12)
      {
        v13 = v12[18];
        if (v13 != -1)
        {
          v12[18] = v13 + 1;
        }
      }

      else
      {
        *(v2 + 9) = 0;
        v12 = sub_100002B14(0);
      }

      *(v2 + 9) = v12;
      v17 = 0;
      CFNumberGetValue(v5, kCFNumberIntType, &v17);
      v14 = CFDictionaryGetValue(a1, @"Owner");
      if (v14)
      {
        CFStringGetCString(v14, valuePtr, 100, 0x8000100u);
      }

      v15 = qword_1000ABAB8;
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v19 = v17;
        v20 = 2080;
        v21 = valuePtr;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "inserted kernel assertion id %d %s \n", buf, 0x12u);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_100051DA4(const __CFNumber *a1, const __CFArray *a2)
{
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v3 = valuePtr;
  v4 = dword_1000AD1C0;
  if (valuePtr != dword_1000AD1C0)
  {
    v5 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v33 = v4;
      v34 = 1024;
      v35 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Kernel driver assertions bit mask has changed old 0x%x new 0x%x\n", buf, 0xEu);
      v3 = valuePtr;
    }

    dword_1000AD1C0 = v3;
  }

  if (a2)
  {
    Count = CFArrayGetCount(a2);
    v7 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
    if (Count >= 1)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
        TypeID = CFDictionaryGetTypeID();
        if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != TypeID)
        {
          goto LABEL_21;
        }

        Value = CFDictionaryGetValue(ValueAtIndex, @"ID");
        v30 = 0;
        CFNumberGetValue(Value, kCFNumberIntType, &v30);
        v7[v8] = v30;
        v13 = CFDictionaryGetValue(ValueAtIndex, @"Level");
        v29 = 0;
        CFNumberGetValue(v13, kCFNumberSInt32Type, &v29);
        if (CFDictionaryContainsKey(qword_1000AD1C8, Value) == 1)
        {
          if (!v29)
          {
            v14 = qword_1000ABAB8;
            if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v33 = v30;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "assertion %d is turned off. Let's remove it\n", buf, 8u);
            }

            v15 = CFDictionaryGetValue(qword_1000AD1C8, Value);
            sub_100003488(2, v15);
            CFDictionaryRemoveValue(qword_1000AD1C8, Value);
            CFRelease(v15[2]);
            sub_100007E54(0);
            free(v15);
LABEL_20:
            v9 = 1;
          }
        }

        else if (v29)
        {
          v16 = qword_1000ABAB8;
          if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v33 = v30;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "New kernel assertion %d\n", buf, 8u);
          }

          v17 = sub_100051B10(ValueAtIndex);
          if (v17)
          {
            v18 = v17;
            CFDictionarySetValue(qword_1000AD1C8, Value, v17);
            sub_100003488(0, v18);
          }

          goto LABEL_20;
        }

LABEL_21:
        if (Count == ++v8)
        {
          goto LABEL_24;
        }
      }
    }

    v9 = 0;
LABEL_24:
    v19 = CFDictionaryGetCount(qword_1000AD1C8);
    v20 = malloc_type_calloc(v19, 8uLL, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(qword_1000AD1C8, v20, 0);
    if (v19 >= 1)
    {
      for (i = 0; i != v19; ++i)
      {
        v30 = 0;
        CFNumberGetValue(v20[i], kCFNumberIntType, &v30);
        if (Count < 1)
        {
          goto LABEL_32;
        }

        v22 = 1;
        v23 = Count;
        v24 = v7;
        do
        {
          v25 = *v24++;
          if (v25 == v30)
          {
            v22 = 0;
          }

          --v23;
        }

        while (v23);
        if (v22 == 1)
        {
LABEL_32:
          v26 = qword_1000ABAB8;
          if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v33 = v30;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Kernel assertion %d has been released\n", buf, 8u);
          }

          v27 = CFDictionaryGetValue(qword_1000AD1C8, v20[i]);
          sub_100003488(2, v27);
          CFDictionaryRemoveValue(qword_1000AD1C8, v20[i]);
          CFRelease(v27[2]);
          sub_100007E54(0);
          free(v27);
          v9 = 1;
        }
      }
    }

    free(v20);
    free(v7);
    if (v9)
    {
      v28 = qword_1000ABAB8;
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Kernel assertions changed\n", buf, 2u);
      }
    }
  }
}

void sub_100052234(const __CFNumber *a1, const __CFArray *a2)
{
  CFNumberGetValue(a1, kCFNumberIntType, &dword_1000AD1C0);
  v3 = qword_1000ABAB8;
  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = dword_1000AD1C0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Kernel assertions 0x%u\n", buf, 8u);
  }

  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        TypeID = CFDictionaryGetTypeID();
        if (ValueAtIndex)
        {
          if (CFGetTypeID(ValueAtIndex) == TypeID)
          {
            Value = CFDictionaryGetValue(ValueAtIndex, @"ID");
            valuePtr = 0;
            CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
            v10 = CFDictionaryGetValue(ValueAtIndex, @"Level");
            v14 = 0;
            CFNumberGetValue(v10, kCFNumberSInt32Type, &v14);
            if (v14)
            {
              v11 = sub_100051B10(ValueAtIndex);
              if (v11)
              {
                v12 = v11;
                v13 = qword_1000ABAB8;
                if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109120;
                  v17 = valuePtr;
                  _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "inserting kernel assertion %d\n", buf, 8u);
                }

                CFDictionarySetValue(qword_1000AD1C8, Value, v12);
                sub_100003488(0, v12);
              }
            }
          }
        }
      }
    }
  }
}

void sub_100052440(const __CFNumber *a1, const __CFArray *a2)
{
  if (qword_1000AD1C8)
  {

    sub_100051DA4(a1, a2);
  }

  else
  {
    qword_1000AD1C8 = CFDictionaryCreateMutable(0, 10240, &kCFTypeDictionaryKeyCallBacks, 0);

    sub_100052234(a1, a2);
  }
}

xpc_object_t sub_100052550(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "process", *(a1 + 32));
  v3 = *(a1 + 40);
  if (*v3)
  {
    xpc_dictionary_set_string(v2, "caused_by_process", v3);
  }

  xpc_dictionary_set_string(v2, "assertion_name", *(a1 + 48));
  xpc_dictionary_set_uint64(v2, "duration", *(a1 + 56));
  if (byte_1000ABB30 == 1)
  {
    xpc_dictionary_set_string(v2, "experiment_id", [qword_1000ABB38 UTF8String]);
    xpc_dictionary_set_string(v2, "treatment_id", [qword_1000ABB40 UTF8String]);
  }

  return v2;
}

void sub_10005262C()
{
  if (byte_1000ABB10 == 1)
  {
    v0 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "System Assertion Timeout: timer fired", buf, 2u);
    }

    byte_1000ABB11 = 0;
    *buf = 0;
    v7 = buf;
    v8 = 0x2020000000;
    v9 = 0;
    v2 = 0;
    v3 = &v2;
    v4 = 0x2020000000;
    v5 = 0;
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_1000527A4;
    v1[3] = &unk_10009AA10;
    v1[4] = buf;
    v1[5] = &v2;
    sub_1000047A8(&unk_1000ABBF8, 3u, v1);
    if (v7[24] == 1)
    {
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
      {
        sub_10006CAD4();
      }

      sub_100008440(v3[3]);
    }

    _Block_object_dispose(&v2, 8);
    _Block_object_dispose(buf, 8);
  }
}

void sub_100052780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1000527A4(uint64_t a1, uint64_t a2)
{
  v4 = CFDictionaryGetValue(*(a2 + 16), @"AssertName");
  v5 = *(*(a2 + 72) + 80);
  v6 = CFDictionaryGetValue(*(a2 + 16), @"FrameworkBundleID");
  v32 = 0;
  v33[0] = 0;
  v7 = *(a2 + 88);
  if (v7)
  {
    v8 = *(v7 + 80);
  }

  else
  {
    v8 = 0;
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(qword_1000ABB20, v5, &value) || v8 && CFDictionaryGetValueIfPresent(qword_1000ABB20, v8, &value) || v6 && CFDictionaryGetValueIfPresent(qword_1000ABB20, v6, &value))
  {
    v9 = value;
    TypeID = CFNumberGetTypeID();
    if (v9)
    {
      if (CFGetTypeID(v9) == TypeID)
      {
        valuePtr[0] = -1;
        CFNumberGetValue(value, kCFNumberSInt32Type, valuePtr);
        if (!valuePtr[0])
        {
LABEL_15:
          v12 = qword_1000ABAB8;
          if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(a2 + 52);
            v14 = *(a2 + 72);
            v15 = *(v14 + 96);
            v16 = *(v14 + 80);
            valuePtr[0] = 67110658;
            valuePtr[1] = v13;
            v36 = 2112;
            v37 = v4;
            v38 = 1024;
            v39 = v15;
            v40 = 2112;
            v41 = v16;
            v42 = 2112;
            v43 = v8;
            v44 = 2112;
            v45 = v6;
            v46 = 2112;
            v47 = v32;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "System Assertion Timeout: Allowing assertion %u:%@ for pid %d:%@(%@)(%@)(%@)", valuePtr, 0x40u);
          }

          return;
        }
      }
    }
  }

  else if (CFDictionaryGetValueIfPresent(*(a2 + 16), @"Category", v33))
  {
    v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", v33[0]);
    if (CFDictionaryGetValueIfPresent(qword_1000ABB28, v11, &v32))
    {
      goto LABEL_15;
    }
  }

  v17 = sub_100002AB4() - *(a2 + 32);
  v18 = qword_1000AB730 - v17;
  if (qword_1000AB730 <= v17)
  {
    v20 = *(*(a2 + 72) + 96);
    v21 = [NSString stringWithFormat:@" System Assertion Timeout: Device became inactive more than %llu seconds ago.%@ is not on the allow list. Dropping assertion %lld:%@ for pid %d %@. age:%llu.", qword_1000AB730, v5, *(a2 + 52) | (*(a2 + 48) << 32), v4, v20, v5, v17];
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006CB10();
    }

    out_token = 0;
    if (!notify_register_check("com.apple.powermanagement.assertionexception", &out_token))
    {
      notify_set_state(out_token, v20 | 0x400000000);
      notify_post("com.apple.powermanagement.assertionexception");
      notify_cancel(out_token);
    }

    memset(buffer, 0, sizeof(buffer));
    memset(v48, 0, sizeof(v48));
    CFStringGetCString(v5, buffer, 64, 0x8000100u);
    if (v8)
    {
      CFStringGetCString(v8, v48, 64, 0x8000100u);
    }

    CFStringGetCString(v4, valuePtr, 256, 0x8000100u);
    v33[1] = _NSConcreteStackBlock;
    v33[2] = 3221225472;
    v33[3] = sub_100052550;
    v33[4] = &unk_10009A9C0;
    v33[5] = buffer;
    v33[6] = v48;
    v33[7] = valuePtr;
    v34 = v17;
    analytics_send_event_lazy();
    sub_100007AB8(a2, 1);
    v22 = *(a2 + 72);
    if (*(v22 + 144))
    {
      *(v22 + 144) = 0;
    }

    if (*(v22 + 120))
    {
      sub_10001C140(a2);
    }

    v23 = &unk_1000ABB58 + 160 * *(a2 + 48);
    sub_100007FB8(a2, v23, 1);
    v26 = *(v23 + 3);
    v25 = (v23 + 24);
    v24 = v26;
    *a2 = v26;
    if (v26)
    {
      *(v24 + 8) = a2;
    }

    *v25 = a2;
    *(a2 + 8) = v25;
    *(a2 + 24) = *(a2 + 24) & 0xFFFFFFFC | 2;
    sub_100003488(12, a2);
    if (dword_1000AD1A4)
    {
      notify_post("com.apple.system.powermanagement.assertions.anychange");
    }

    global_queue = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052C90;
    block[3] = &unk_10009A9E8;
    v29 = v20;
    block[4] = v21;
    dispatch_async(global_queue, block);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v19 = *(*(a1 + 40) + 8);
    if (v18 > *(v19 + 24))
    {
      *(v19 + 24) = v18;
    }
  }
}

void sub_100052C90(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  v3 = *(v2 - 1);
  if ((SimulateCrash() & 1) == 0 && os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006CB80(v2);
  }
}

void sub_100052CF4(id a1)
{
  dispatch_release(qword_1000ABB18);
  qword_1000ABB18 = 0;
  byte_1000ABB11 = 0;
}

void sub_100052D28()
{
  if (!qword_1000ABB20)
  {
    v0 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@", @"/System/Library/CoreServices/powerd.bundle", @"com.apple.powerd.assertiontimeouts.plist");
    v1 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v0, kCFURLPOSIXPathStyle, 0);
    v2 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v1);
    if (v2)
    {
      v3 = v2;
      CFReadStreamOpen(v2);
      v4 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v3, 0, 1uLL, 0, 0);
      qword_1000ABB20 = v4;
      if (v4)
      {
        v5 = v4;
        v6 = qword_1000ABAB8;
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v8 = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "System Assertion Timer: assertion timeouts data: %@", buf, 0xCu);
        }
      }

      CFReadStreamClose(v3);
      CFRelease(v3);
    }

    if (v1)
    {
      CFRelease(v1);
    }

    if (v0)
    {
      CFRelease(v0);
    }
  }
}

void sub_100052E98()
{
  if (!qword_1000ABB28)
  {
    v0 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@", @"/System/Library/CoreServices/powerd.bundle", @"com.apple.powerd.assertioncategories.plist");
    v1 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v0, kCFURLPOSIXPathStyle, 0);
    v2 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v1);
    if (v2)
    {
      v3 = v2;
      CFReadStreamOpen(v2);
      v4 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v3, 0, 1uLL, 0, 0);
      qword_1000ABB28 = v4;
      if (v4)
      {
        v5 = v4;
        v6 = qword_1000ABAB8;
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v8 = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "InitAssertionCategories: Categories Data: %@", buf, 0xCu);
        }
      }

      CFReadStreamClose(v3);
      CFRelease(v3);
    }

    if (v1)
    {
      CFRelease(v1);
    }

    if (v0)
    {
      CFRelease(v0);
    }
  }
}

void sub_100053008(_xpc_connection_s *a1, xpc_object_t original)
{
  if (a1 && original)
  {
    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      v5 = reply;
      pid = xpc_connection_get_pid(a1);
      Value = CFDictionaryGetValue(qword_1000ABAC0, pid);
      if (!Value)
      {
        goto LABEL_15;
      }

      v8 = Value[10];
      v9 = qword_1000ABAB8;
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = qword_1000ABB28;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "fetchAssertionCategories %@", &v13, 0xCu);
      }

      if (CFDictionaryContainsKey(qword_1000ABB28, v8))
      {
        CFDictionaryGetValue(qword_1000ABB28, v8);
        v10 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v5, "assertionUpdateCategoryPolicy", v10);
        v11 = 0;
      }

      else
      {
LABEL_15:
        v11 = 0;
        v10 = 0;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006CCB0();
    }

    v12 = xpc_dictionary_create_reply(original);
    if (v12)
    {
      v5 = v12;
      v10 = 0;
      v11 = -536870206;
LABEL_16:
      xpc_dictionary_set_uint64(v5, "returnCode", v11);
      xpc_connection_send_message(a1, v5);
      if (v10)
      {
        xpc_release(v10);
      }

      xpc_release(v5);
      return;
    }
  }

  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006CD2C();
  }
}

uint64_t sub_1000531E8(unsigned int a1)
{
  v2 = qword_1000ABAB8;
  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
  {
    token[0] = 67109120;
    token[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending com.apple.powerd.assertionpolicy %d", token, 8u);
  }

  token[0] = 0;
  result = notify_register_check("com.apple.powerd.assertionpolicy", token);
  if (!result)
  {
    notify_set_state(token[0], a1);
    return notify_post("com.apple.powerd.assertionpolicy");
  }

  return result;
}

void sub_1000532B8(void *a1)
{
  [a1 refresh];
  v2 = [a1 experimentIdentifiersWithNamespaceName:@"COREOS_POWERD_ASSERTIONS"];
  if (v2)
  {
    v3 = v2;
    byte_1000ABB30 = 1;
    qword_1000ABB38 = [v2 experimentId];
    v4 = qword_1000ABB38;
    qword_1000ABB40 = [v3 treatmentId];
    v5 = qword_1000ABB40;
    v6 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = qword_1000ABB38;
      v9 = 2112;
      v10 = qword_1000ABB40;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "System Assertion Timer: TrialExperimentId: %@, TrialTreatmentId: %@", &v7, 0x16u);
    }
  }

  else
  {
    byte_1000ABB30 = 0;

    qword_1000ABB38 = 0;
    qword_1000ABB40 = 0;
  }
}

void sub_1000533EC(void *a1)
{
  v2 = _os_feature_enabled_impl();
  if (a1)
  {
    v3 = v2;
    sub_1000532B8(a1);
    v4 = [objc_msgSend(a1 levelForFactor:@"FeatureEnabled" withNamespaceName:{@"COREOS_POWERD_ASSERTIONS", "BOOLeanValue"}];
    byte_1000ABB10 = v4 & v3;
    v5 = qword_1000ABAB8;
    v6 = os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT);
    if (v4 & v3)
    {
      if (v6)
      {
        v10 = 67109376;
        LODWORD(v11[0]) = 1;
        WORD2(v11[0]) = 1024;
        *(v11 + 6) = 1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "System Assertion Timer: feature enabled, feature flag: %d, trial value: %d", &v10, 0xEu);
      }

      sub_100052D28();
    }

    else if (v6)
    {
      v10 = 67109376;
      LODWORD(v11[0]) = v3;
      WORD2(v11[0]) = 1024;
      *(v11 + 6) = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "System Assertion Timer: feature disabled, feature flag: %d, trial value: %d", &v10, 0xEu);
    }

    if (byte_1000ABB10 == 1)
    {
      v8 = [objc_msgSend(a1 levelForFactor:@"SystemAssertionTimeout" withNamespaceName:{@"COREOS_POWERD_ASSERTIONS", "longValue"}];
      qword_1000AB730 = v8;
      v9 = qword_1000ABAB8;
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11[0] = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "System Assertion Timer: setting timeout value to %llu", &v10, 0xCu);
      }
    }
  }

  else
  {
    v7 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "System Assertion Timer: feature disabled", &v10, 2u);
    }

    byte_1000ABB10 = 0;
  }
}

void sub_10005361C()
{
  if (qword_1000AD1D0 != -1)
  {
    sub_10006CD68();
  }
}

void sub_100053648(id a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10005374C;
  v7 = sub_10005375C;
  v8 = [TRIClient clientWithIdentifier:223];
  v1 = v4[5];
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100053768;
  v2[3] = &unk_10009AA98;
  v2[4] = &v3;
  [v1 addUpdateHandlerForNamespaceName:@"COREOS_POWERD_ASSERTIONS" usingBlock:v2];
  sub_1000533EC(v4[5]);
  _Block_object_dispose(&v3, 8);
}

void sub_100053734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100053768(uint64_t a1)
{
  v2 = qword_1000ABAB8;
  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Trial value updates", v3, 2u);
  }

  sub_1000533EC(*(*(*(a1 + 32) + 8) + 40));
}

void sub_1000537E0()
{
  if (objc_opt_class())
  {
    v0 = sub_100002A58();
    qword_1000ABB48 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v0);
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2020000000;
    v7 = 0;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100053958;
    handler[3] = &unk_1000994A8;
    handler[4] = v6;
    dispatch_source_set_event_handler(qword_1000ABB48, handler);
    dispatch_source_set_cancel_handler(qword_1000ABB48, &stru_10009AAB8);
    v1 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Trial Initialization: Starting Timer", v4, 2u);
    }

    v2 = qword_1000ABB48;
    v3 = dispatch_time(0, 0);
    dispatch_source_set_timer(v2, v3, 1000000000 * dword_1000AB738, 0);
    dispatch_resume(qword_1000ABB48);
    _Block_object_dispose(v6, 8);
  }

  else
  {

    sub_1000533EC(0);
  }
}

void sub_100053958(uint64_t a1)
{
  if (&_DMIsMigrationNeeded)
  {
    *(*(*(a1 + 32) + 8) + 24) = DMIsMigrationNeeded();
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v2 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Trial Initialization: Deferred due to pending Data Migration.", v4, 2u);
    }
  }

  else
  {
    if (qword_1000AD1D0 != -1)
    {
      sub_10006CD68();
    }

    v3 = qword_1000ABB48;

    dispatch_source_cancel(v3);
  }
}

void sub_100053A58(uint64_t a1, xpc_object_t xdict)
{
  if (a1 && xdict)
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "systemAssertionTimeout");
    if (uint64)
    {
      v3 = uint64;
      qword_1000AB730 = uint64;
      v4 = qword_1000ABAB8;
      if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 134217984;
        v6 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "System Assertion Timer: setting timeout value to %llu", &v5, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
  {
    sub_10006CD7C();
  }
}

void sub_100053B48()
{
  qword_1000ABAB8 = os_log_create("com.apple.powerd", "assertions");
  qword_1000AD1D8 = CFDictionaryCreateMutable(0, 10240, 0, 0);
  qword_1000ABAC0 = CFDictionaryCreateMutable(0, 0, 0, 0);
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v1 = 0;
  qword_1000AD1B8 = Mutable;
  qword_1000AD1E0[0] = @"CPUBoundAssertion";
  *algn_1000AD1E8 = @"PreventUserIdleSystemSleep";
  qword_1000AD1F0 = @"DisableInflow";
  unk_1000AD1F8 = @"ChargeInhibit";
  qword_1000AD200 = @"DisableLowPowerBatteryWarnings";
  unk_1000AD208 = @"PreventUserIdleDisplaySleep";
  qword_1000AD210 = @"EnableIdleSleep";
  unk_1000AD218 = @"PreventSystemSleep";
  qword_1000AD220 = @"ExternalMedia";
  unk_1000AD228 = @"UserIsActive";
  qword_1000AD230 = @"ApplePushServiceTask";
  unk_1000AD238 = @"BackgroundTask";
  qword_1000AD240 = @"SystemIsActive";
  unk_1000AD248 = @"InternalPreventSleep";
  qword_1000AD250 = @"DisplayWake";
  unk_1000AD258 = @"PreventDiskIdle";
  qword_1000AD260 = @"InternalPreventDisplaySleep";
  unk_1000AD268 = @"NetworkClientActive";
  qword_1000AD270 = @"InteractivePushServiceTask";
  unk_1000AD278 = @"AwakeOnReservePower";
  qword_1000AD280 = @"SoftwareUpdateTask";
  v2 = &dword_1000AC8A8;
  do
  {
    *v2 = v1;
    *(v2 - 1) = 0;
    ++v1;
    v2 += 4;
  }

  while (v1 != 13);
  for (i = 0; i != 21; ++i)
  {
    sub_100018C6C(i, 1);
  }

  out_token = 0;
  sub_100056340(&dword_1000ABAC8);
  sub_10005647C(&qword_1000ABAD0);
  sub_1000511B4(0);
  off_1000ABF98(&unk_1000ABF18, 1);
  ++dword_1000AC2C0;
  sub_100018C6C(0xBu, 0);
  v4 = sub_100002A58();
  notify_register_dispatch("com.apple.powermanagement.collectbt", &out_token, v4, &stru_10009AAD8);
  sub_100002A58();
  os_state_add_handler();
  sub_1000537E0();
  sub_100052E98();
  v5 = _os_feature_enabled_impl();
  byte_1000ABB50 = v5;
  v6 = qword_1000ABAB8;
  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reduced Idle Timer: feature %d", buf, 8u);
  }
}

void sub_100053E48(uint64_t a1)
{
  v2 = getpid();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (!*v4)
    {
      sub_100001FB0(v2, *(a1 + 40), v4, 0, 0);
      if (*(a1 + 48))
      {
        v7 = 0;
        if (!sub_100004CBC(v3, **(a1 + 32), &v7) && v7 != 0)
        {
          v7[6] |= 0x10u;
        }
      }
    }
  }

  else
  {
    sub_100001FB0(v2, *(a1 + 40), &v8, 0, 0);
  }

  v6 = *(a1 + 40);

  CFRelease(v6);
}

void *sub_100053F14(uint64_t a1, int a2)
{
  v4 = qword_1000ABAE0;
  TypeID = CFDictionaryGetTypeID();
  if (!v4)
  {
    return 0;
  }

  if (CFGetTypeID(v4) != TypeID)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(qword_1000ABAE0);
  if (!Count)
  {
    return 0;
  }

  v7 = Count;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006CEB8();
    }

    return 0;
  }

  v9 = Mutable;
  v10 = malloc_type_calloc(v7, 8uLL, 0x6004044C4A2DFuLL);
  if (!v10)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006CE40();
    }

    return 0;
  }

  v11 = v10;
  CFDictionaryGetKeysAndValues(qword_1000ABAE0, 0, v10);
  if (v7 >= 1)
  {
    if (a2 == 1)
    {
      v12 = @"Asssertion Duration Limit";
    }

    else
    {
      v12 = @"Aggregate Assertion Limit";
    }

    v13 = v11;
    do
    {
      v14 = *v13;
      v15 = CFDictionaryGetTypeID();
      if (v14 && CFGetTypeID(v14) == v15)
      {
        Value = CFDictionaryGetValue(*v13, v12);
        CFArrayAppendValue(v9, Value);
      }

      ++v13;
      --v7;
    }

    while (v7);
  }

  v47.length = CFArrayGetCount(v9);
  v47.location = 0;
  CFArraySortValues(v9, v47, sub_1000507B4, 0);
  v17 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = 38;
  v18 = malloc_type_calloc(*(*(*(a1 + 32) + 8) + 24), 0x18uLL, 0x10600405D1B4BF9uLL);
  if (!v18)
  {
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10006CDB8(a1 + 32);
    }

    CFRelease(v9);
    free(v11);
    return 0;
  }

  v19 = v18;
  v20 = 0;
  v21 = v18;
  v40 = v11;
  do
  {
    if (v20 >= *(*(*v17 + 8) + 24))
    {
      break;
    }

    *v21 = off_10009AB58[v20];
    v21 += 3;
    ++v20;
  }

  while (v20 != 33);
  v22 = CFArrayGetCount(v9);
  if (v22 >= 1)
  {
    v23 = v22;
    v41 = 0;
    do
    {
      if (v20 >= *(*(*v17 + 8) + 24))
      {
        break;
      }

      v24 = v23--;
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v9, v23);
      v26 = CFNumberGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v26)
        {
          CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
          v27 = CFArrayGetCount(v9);
          v28 = valuePtr;
          if (v24 == v27 || valuePtr != v41)
          {
            v19[3 * v20 + 1] = valuePtr;
            ++*(*(*(a1 + 40) + 8) + 24);
            LODWORD(v20) = v20 + 1;
            v41 = v28;
          }
        }
      }
    }

    while ((v23 + 1) > 1);
  }

  if (*(*(*v17 + 8) + 24))
  {
    v29 = 0;
    v30 = 0;
    v31 = "aggregateassertion";
    if (a2 == 1)
    {
      v31 = "singleassertion";
    }

    v42 = v31;
    v32 = v19 + 1;
    while (1)
    {
      v33 = *(v32 - 1);
      v34 = CFStringGetTypeID();
      if (v33)
      {
        if (CFGetTypeID(v33) == v34)
        {
          break;
        }
      }

      if (*v32)
      {
        v35 = CFStringCreateWithFormat(0, 0, @"com.apple.powerd.exception.%s.bucket%d", v42, (*(*(*(a1 + 40) + 8) + 24) + ~v30));
        v37 = qword_1000ABAB8;
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
        {
          v38 = *v32;
          valuePtr = 138412546;
          v44 = v35;
          v45 = 2048;
          v46 = v38;
          _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Initialized the aggdKey %@ for limit %lld\n", &valuePtr, 0x16u);
        }

        ++v30;
        goto LABEL_40;
      }

LABEL_42:
      ++v29;
      v32 += 3;
      if (v29 >= *(*(*v17 + 8) + 24))
      {
        goto LABEL_46;
      }
    }

    v35 = sub_100054430(*(v32 - 1), a2);
    v36 = qword_1000ABAB8;
    if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEBUG))
    {
      valuePtr = 138412290;
      v44 = v35;
      _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Initialized the aggdKey %@\n", &valuePtr, 0xCu);
    }

LABEL_40:
    if (v35)
    {
      ADClientAddValueForScalarKey();
      CFRelease(v35);
    }

    goto LABEL_42;
  }

LABEL_46:
  free(v40);
  CFRelease(v9);
  return v19;
}

CFStringRef sub_100054430(const __CFString *a1, int a2)
{
  buffer[0] = 0;
  if (!CFStringGetCString(a1, buffer, 64, 0x8000100u))
  {
    return 0;
  }

  if (a2 == 1)
  {
    v3 = "singleassertion";
  }

  else
  {
    v3 = "aggregateassertion";
  }

  if (strnstr(buffer, "com.apple.", 0xAuLL) == buffer)
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return CFStringCreateWithFormat(0, 0, @"com.apple.powerd.exception.%s.%s", v3, &buffer[v4]);
}

int sub_100054508(id a1, __CFDictionary *a2)
{
  ChannelID = IOReportChannelGetChannelID();
  ValueAtIndex = IOReportArrayGetValueAtIndex();
  IOReportArrayGetValueAtIndex();
  IOReportArrayGetValueAtIndex();
  Value = CFDictionaryGetValue(qword_1000ABAC0, ChannelID);
  if (Value)
  {
    v5 = Value;
    v6 = Value[33];
    if (v6 && ValueAtIndex >= v6)
    {
      out_token = 0;
      if (!notify_register_check("com.apple.powermanagement.assertionexception", &out_token))
      {
        notify_set_state(out_token, ChannelID | 0x200000000);
        notify_post("com.apple.powermanagement.assertionexception");
        notify_cancel(out_token);
        v8 = qword_1000ABAB8;
        if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v16 = ChannelID;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Aggregate assertion exception on pid %llu.\n", buf, 0xCu);
        }
      }

      v9 = *(v5 + 112);
      if (v9)
      {
        TypeID = CFStringGetTypeID();
      }

      else
      {
        v9 = sub_10004FC8C(2, v5);
        *(v5 + 112) = v9;
        TypeID = CFStringGetTypeID();
        if (!v9)
        {
          return 0;
        }
      }

      if (CFGetTypeID(v9) == TypeID)
      {
        v11 = CFRetain(*(v5 + 112));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000546EC;
        block[3] = &unk_10009A860;
        block[4] = v11;
        block[5] = ChannelID;
        dispatch_async(qword_1000AD198, block);
      }
    }
  }

  return 0;
}

void sub_1000546EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  ADClientAddValueForScalarKey();
  v3 = qword_1000ABAB8;
  if (os_log_type_enabled(qword_1000ABAB8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Add to aggd string %@ for pid %llu\n", &v6, 0x16u);
  }

  CFRelease(*(a1 + 32));
}

void sub_1000547B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if ((*(a2 + 24) & 2) != 0)
  {
    if (v3 != 1)
    {
      return;
    }
  }

  else if (v3)
  {
    return;
  }

  v4 = *(a1 + 32);
  v5 = CFNumberCreate(0, kCFNumberIntType, (*(a2 + 72) + 96));
  Value = CFDictionaryGetValue(v4, v5);
  v7 = Value;
  if (Value)
  {
    Mutable = CFDictionaryGetValue(Value, @"PerTaskAssertions");
    v9 = v7;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v9 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v9, @"PerTaskAssertions", Mutable);
    CFDictionarySetValue(v9, @"AssertPID", v5);
    CFDictionarySetValue(v4, v5, v9);
  }

  v10 = *(a2 + 48);
  if (v10 <= 0x14)
  {
    CFDictionarySetValue(*(a2 + 16), @"AssertionTrueType", qword_1000AD1E0[v10]);
  }

  CFArrayAppendValue(Mutable, *(a2 + 16));
  CFRelease(v5);
  if (!v7)
  {
    CFRelease(Mutable);

    CFRelease(v9);
  }
}

void sub_100054928(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40))
  {
    if (**(a1 + 32))
    {
      sub_10000289C(a2, 0);
    }

    sub_100007E08(a2);
  }

  else
  {
    if (*(a2 + 24) & 4) == 0 && (**(a1 + 32))
    {
      sub_10000289C(a2, 1);
    }

    sub_100004710(a2);
  }
}

unsigned int *sub_100054A30@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_100054A80(id a1)
{
  qword_1000AD2C0 = objc_alloc_init(USBDeviceMode);

  _objc_release_x1();
}

id sub_100054DF0(uint64_t a1)
{
  [*(a1 + 32) setIsACPowered:IOPSDrawingUnlimitedPower()];
  v2 = qword_1000AC970;
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v6[0] = 67109120;
    v6[1] = [v3 isACPowered];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Power source update. AC powered %d", v6, 8u);
  }

  return [*(a1 + 32) evaluatePowerAssertion];
}

id sub_1000558E4(uint64_t a1)
{
  result = [*(a1 + 32) powerassertionID];
  if (result)
  {
    v3 = qword_1000AC970;
    if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing power assertion for usb device mode", v4, 2u);
    }

    sub_10004F7D0([*(a1 + 32) powerassertionID]);
    [*(a1 + 32) setPowerassertionID:0];
    return [*(a1 + 32) setPowerassertion:0];
  }

  return result;
}

void sub_100055A5C()
{
  valuePtr = -1;
  v44[0] = -1;
  v0 = sub_10001B168();
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"Power Status", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return;
  }

  v2 = CFProperty;
  Count = CFDictionaryGetCount(CFProperty);
  if (!Count)
  {
    goto LABEL_15;
  }

  v4 = Count;
  v5 = 8 * Count;
  v6 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  v7 = malloc_type_malloc(v5, 0x6004044C4A2DFuLL);
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
    v11 = 0;
    if (v6)
    {
      goto LABEL_72;
    }

    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_10:
    free(v8);
    goto LABEL_11;
  }

  CFDictionaryGetKeysAndValues(v2, v6, v7);
  Mutable = CFDictionaryCreateMutable(0, v4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_72;
  }

  v40 = v6;
  theDict = Mutable;
  if (v4 >= 1)
  {
    v13 = v8;
    for (i = v4; i; --i)
    {
      v15 = *v6;
      v16 = CFEqual(*v6, @"Thermal_Level_Warning");
      v17 = @"ThermalWarning";
      if (v16 || (v18 = CFEqual(v15, @"CPU_Power_Limits"), v17 = @"CPUPower", v18) || (v19 = CFEqual(v15, @"Performance_Warning"), v17 = @"PerformanceWarning", v19))
      {
        v20 = SCDynamicStoreKeyCreate(kCFAllocatorDefault, @"%@%@/%@", kSCDynamicStoreDomainState, @"/IOKit/Power", v17);
        if (v20)
        {
          v21 = v20;
          CFDictionarySetValue(theDict, v20, *v13);
          CFRelease(v21);
        }
      }

      if (CFStringCompare(*v6, @"Thermal_Level_Warning", 0))
      {
        if (CFStringCompare(*v6, @"Performance_Warning", 0))
        {
          goto LABEL_42;
        }

        v22 = *v13;
        TypeID = CFNumberGetTypeID();
        if (!v22)
        {
          goto LABEL_42;
        }

        if (CFGetTypeID(v22) != TypeID)
        {
          goto LABEL_42;
        }

        CFNumberGetValue(*v13, kCFNumberIntType, &valuePtr);
        v25 = valuePtr;
        if (valuePtr == dword_1000AD2D0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v26 = *v13;
        v27 = CFNumberGetTypeID();
        if (!v26)
        {
          goto LABEL_42;
        }

        if (CFGetTypeID(v26) != v27)
        {
          goto LABEL_42;
        }

        CFNumberGetValue(*v13, kCFNumberIntType, v44);
        if (v44[0] == dword_1000AB750)
        {
          goto LABEL_42;
        }

        v28 = v44[0] == 100 || v44[0] == 110;
        v29 = v28;
        sub_10001AB30(32, v29);
        sub_10001AB60();
        v25 = v44[0];
        if (v44[0] == 255)
        {
          goto LABEL_42;
        }
      }

      nullsub_3(v25, v24);
LABEL_42:
      ++v13;
      ++v6;
    }
  }

  v30 = SCDynamicStoreCreate(0, @"IOKit Power", 0, 0);
  v11 = v30;
  if (!v30)
  {
LABEL_69:
    v6 = v40;
    goto LABEL_70;
  }

  v10 = theDict;
  SCDynamicStoreSetMultiple(v30, theDict, 0, 0);
  if (v4 < 1)
  {
    v6 = v40;
    goto LABEL_72;
  }

  v31 = 0;
  v32 = v40;
  do
  {
    if (CFStringCompare(*v32, @"Thermal_Level_Warning", 0))
    {
      if (CFStringCompare(*v32, @"Performance_Warning", 0) == kCFCompareEqualTo)
      {
        if (valuePtr == dword_1000AD2D0)
        {
          goto LABEL_59;
        }

        dword_1000AD2D0 = valuePtr;
        if (valuePtr == 100)
        {
          v31 = 1;
        }
      }
    }

    else
    {
      if (v44[0] == dword_1000AB750)
      {
        goto LABEL_59;
      }

      dword_1000AB750 = v44[0];
      if (v44[0] == 110 || v44[0] == 100)
      {
        v31 = 1;
      }
    }

    v33 = *v32;
    v34 = CFEqual(*v32, @"Thermal_Level_Warning");
    v35 = "com.apple.system.power.thermal_warning";
    if (v34 || (v36 = CFEqual(v33, @"CPU_Power_Limits"), v35 = "com.apple.system.power.CPU", v36) || (v37 = CFEqual(v33, @"Performance_Warning"), v35 = "com.apple.system.power.performance_warning", v37))
    {
      notify_post(v35);
    }

LABEL_59:
    ++v32;
    --v4;
  }

  while (v4);
  if (!v31)
  {
    goto LABEL_69;
  }

  if (!mkdir("/private/var/run/thermal", 0x1FFu))
  {
    lchmod("/private/var/run/thermal", 0x1FFu);
  }

  v38 = open("/private/var/run/thermal/.thermalpressure", 536871426, 511);
  v6 = v40;
  if ((v38 & 0x80000000) == 0)
  {
    v39 = v38;
    memset(&v42, 0, sizeof(v42));
    if (!fstat(v38, &v42) && v42.st_nlink == 1)
    {
      fchmod(v39, 0x1FFu);
    }

    close(v39);
  }

LABEL_70:
  v10 = theDict;
LABEL_72:
  free(v6);
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_15:
  CFRelease(v2);
}

void sub_100055F50()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  qword_1000AD2D8 = dispatch_queue_create("com.apple.powerd.sleepwakeresource", v0);
  thePortRef = 0;
  notifier = 0;
  dword_1000AD2E0 = IORegisterForSystemPower(0, &thePortRef, sub_100019734, &notifier);
  if (dword_1000AD2E0)
  {
    if (thePortRef)
    {
      IONotificationPortSetDispatchQueue(thePortRef, qword_1000AD2D8);
    }
  }
}

id sub_100055FE0()
{
  v0 = qword_1000AD2E8;
  if (os_log_type_enabled(qword_1000AD2E8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Taking a sleep in progress resource hint", v2, 2u);
  }

  if (qword_1000AC978)
  {
    return [qword_1000AC978 updateState:1];
  }

  result = [[ResourceHint alloc] initWithResourceType:0 andState:1];
  qword_1000AC978 = result;
  return result;
}

void sub_100056078()
{
  v0 = qword_1000AC978;
  if (qword_1000AC978)
  {
    v1 = qword_1000AD2E8;
    if (os_log_type_enabled(qword_1000AD2E8, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Releasing a sleep in progress resource hint", v2, 2u);
      v0 = qword_1000AC978;
    }

    [v0 updateState:0];
  }
}

void sub_100056100()
{
  qword_1000AD2E8 = os_log_create("com.apple.powerd", "sleepWakeResource");

  sub_100055F50();
}

BOOL sub_100056140(const void *a1)
{
  v2 = IOPMCopySystemPowerSettings();
  result = 0;
  if (a1)
  {
    if (v2)
    {
      Value = CFDictionaryGetValue(v2, a1);
      CFRelease(v2);
      return Value == kCFBooleanTrue;
    }
  }

  return result;
}

const __CFNumber *sub_1000561A0(const void *a1)
{
  result = 0;
  valuePtr = 0;
  if (a1 && qword_1000AD2F8)
  {
    if (sub_100004D48())
    {
      v3 = @"AC Power";
    }

    else
    {
      v3 = @"Battery Power";
    }

    Value = CFDictionaryGetValue(qword_1000AD2F8, v3);
    TypeID = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      result = CFDictionaryGetValue(Value, a1);
      if (result)
      {
        CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
        return (valuePtr != 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005625C(const void *a1, void *a2)
{
  result = 3758097090;
  if (a1 && qword_1000AD2F8)
  {
    if (sub_100004D48())
    {
      v5 = @"AC Power";
    }

    else
    {
      v5 = @"Battery Power";
    }

    Value = CFDictionaryGetValue(qword_1000AD2F8, v5);
    TypeID = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID && (v8 = CFDictionaryGetValue(Value, a1), v9 = CFNumberGetTypeID(), v8))
    {
      v10 = v9;
      v11 = CFGetTypeID(v8);
      result = 3758097084;
      if (v11 == v10)
      {
        CFNumberGetValue(v8, kCFNumberSInt64Type, a2);
        return 0;
      }
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

uint64_t sub_100056340(_DWORD *a1)
{
  v1 = 3758097084;
  if (a1 && qword_1000AD2F8)
  {
    Value = CFDictionaryGetValue(qword_1000AD2F8, qword_1000AD300);
    TypeID = CFDictionaryGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        v5 = Value;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    if (sub_1000563D4(v5, @"Display Sleep Timer", kCFNumberSInt32Type, a1))
    {
      return 0;
    }

    else
    {
      return 3758097084;
    }
  }

  return v1;
}

uint64_t sub_1000563D4(uint64_t result, const void *a2, CFNumberType a3, _DWORD *a4)
{
  if (result)
  {
    Value = CFDictionaryGetValue(result, a2);
    *a4 = 0;
    TypeID = CFNumberGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        CFNumberGetValue(Value, a3, a4);
        return 1;
      }

      v8 = CFBooleanGetTypeID();
      if (CFGetTypeID(Value) == v8)
      {
        *a4 = CFBooleanGetValue(Value);
        return 1;
      }
    }

    else
    {
      CFBooleanGetTypeID();
    }

    return 0;
  }

  return result;
}

uint64_t sub_10005647C(_DWORD *a1)
{
  v1 = 3758097084;
  if (a1 && qword_1000AD2F8)
  {
    if (qword_1000AB758 == -1)
    {
      Value = CFDictionaryGetValue(qword_1000AD2F8, qword_1000AD300);
      TypeID = CFDictionaryGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID)
        {
          v5 = Value;
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }

      if (sub_1000563D4(v5, @"System Sleep Timer", kCFNumberSInt32Type, a1))
      {
        return 0;
      }

      else
      {
        return 3758097084;
      }
    }

    else
    {
      v1 = 0;
      *a1 = qword_1000AB758;
    }
  }

  return v1;
}

void sub_10005652C(io_connect_t a1, int a2)
{
  if (a1)
  {
    v3 = 0;
    goto LABEL_4;
  }

  a1 = IOPMFindPowerManagement(0);
  v3 = a1;
  if (a1)
  {
LABEL_4:
    IOPMSetAggressiveness(a1, 1uLL, (dword_1000AB760 * a2));
    if (v3)
    {

      IOServiceClose(v3);
    }

    return;
  }

  v4 = qword_1000AC988;
  if (os_log_type_enabled(qword_1000AC988, OS_LOG_TYPE_ERROR))
  {
    sub_10006D3E4(v4);
  }
}

void sub_1000565C0(int a1)
{
  v2 = 0;
  if (sub_100056340(&v2))
  {
    if (os_log_type_enabled(qword_1000AC988, OS_LOG_TYPE_ERROR))
    {
      sub_10006D428();
    }
  }

  else
  {
    dword_1000AB760 = a1;
    sub_10005652C(0, v2);
  }
}

uint64_t sub_100056634(CFPropertyListRef value)
{
  CFPreferencesSetValue(@"AlarmData", value, @"com.apple.PowerManagement", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);

  return CFPreferencesSynchronize(@"com.apple.PowerManagement", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
}

uint64_t sub_1000566DC(const __CFDictionary *a1, const __CFString *a2)
{
  v2 = 3758097084;
  valuePtr = -1;
  v25 = -1;
  v22 = 0;
  v23 = 1;
  if (!a1)
  {
    return 3758097090;
  }

  if (!a2)
  {
    a2 = @"AC Power";
  }

  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v5 = CFDictionaryGetValue(Value, @"System Sleep Timer");
    v6 = CFNumberGetTypeID();
    if (v5 && CFGetTypeID(v5) == v6)
    {
      CFNumberGetValue(v5, kCFNumberLongType, &valuePtr);
    }

    v7 = CFDictionaryGetValue(Value, @"Display Sleep Timer");
    v8 = CFNumberGetTypeID();
    if (v7 && CFGetTypeID(v7) == v8)
    {
      CFNumberGetValue(v7, kCFNumberLongType, &v25);
    }

    v9 = qword_1000AB758;
    v10 = valuePtr;
    if (qword_1000AB758 != valuePtr || qword_1000AB768 != v25)
    {
      v11 = qword_1000AC988;
      if (os_log_type_enabled(qword_1000AC988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v27 = v10;
        v28 = 2048;
        v29 = v25;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sleep timer %lu display timer %lu\n", buf, 0x16u);
        v9 = valuePtr;
      }

      else
      {
        v9 = v10;
      }
    }

    if (v9 != -1)
    {
      qword_1000AB758 = v9;
    }

    if (v25 != -1)
    {
      qword_1000AB768 = v25;
    }

    if (!qword_1000AD2F0)
    {
      v2 = sub_100056C38(Value, 1);
LABEL_49:
      v19 = sub_10001B964();
      v20 = SCDynamicStoreCopyValue(v19, @"State:/IOKit/PowerManagement/CurrentSettings");
      v21 = CFDictionaryGetTypeID();
      if (v20)
      {
        if (CFGetTypeID(v20) != v21 || !CFEqual(v20, Value))
        {
          sub_10001B974(@"State:/IOKit/PowerManagement/CurrentSettings", Value);
        }

        CFRelease(v20);
      }

      else
      {
        sub_10001B974(@"State:/IOKit/PowerManagement/CurrentSettings", Value);
      }

      return v2;
    }

    Count = CFDictionaryGetCount(Value);
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, Count, Value);
    if (!MutableCopy)
    {
      return v2;
    }

    v15 = MutableCopy;
    v16 = CFNumberCreate(0, kCFNumberIntType, &v23);
    v17 = CFNumberCreate(0, kCFNumberIntType, &v22);
    v18 = qword_1000AD2F0;
    if ((qword_1000AD2F0 & 1) != 0 && v16)
    {
      CFDictionarySetValue(v15, @"Reduce Processor Speed", v16);
      v18 = qword_1000AD2F0;
    }

    if ((v18 & 2) != 0 && v17)
    {
      CFDictionarySetValue(v15, @"Reduce Processor Speed", v17);
      CFDictionarySetValue(v15, @"Dynamic Power Step", v17);
      v18 = qword_1000AD2F0;
    }

    if ((v18 & 4) != 0 && v17)
    {
      CFDictionarySetValue(v15, @"System Sleep Timer", v17);
      v18 = qword_1000AD2F0;
    }

    if ((v18 & 8) != 0 && v17)
    {
      CFDictionarySetValue(v15, @"Display Sleep Timer", v17);
      v18 = qword_1000AD2F0;
    }

    if ((v18 & 0x10) != 0 && v17)
    {
      CFDictionarySetValue(v15, @"Disk Sleep Timer", v17);
      v18 = qword_1000AD2F0;
    }

    if ((v18 & 0x20) != 0 && v17)
    {
      CFDictionarySetValue(v15, @"Wake On LAN", v17);
    }

    else if (!v17)
    {
LABEL_46:
      if (v16)
      {
        CFRelease(v16);
      }

      v2 = sub_100056C38(v15, 1);
      CFRelease(v15);
      goto LABEL_49;
    }

    CFRelease(v17);
    goto LABEL_46;
  }

  return v2;
}

const __CFDictionary *sub_100056AAC()
{
  active = IOPMCopyActivePMPreferences();
  if (!active)
  {
    return 0;
  }

  v1 = active;
  Value = CFDictionaryGetValue(active, qword_1000AD300);
  TypeID = CFDictionaryGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      Value = CFDictionaryCreateCopy(kCFAllocatorDefault, Value);
    }

    else
    {
      Value = 0;
    }
  }

  CFRelease(v1);
  return Value;
}

const __CFNumber *sub_100056B3C()
{
  valuePtr = 0;
  result = qword_1000AD2F8;
  if (qword_1000AD2F8)
  {
    Value = CFDictionaryGetValue(qword_1000AD2F8, @"AC Power");
    TypeID = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      result = CFDictionaryGetValue(Value, @"DarkWakeBackgroundTasks");
      if (result)
      {
        CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
        return (valuePtr != 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100056BD0()
{
  if (byte_1000AD328)
  {
    return 1;
  }

  result = sub_10001B168();
  if (result)
  {
    CFProperty = IORegistryEntryCreateCFProperty(result, @"SystemPowerProfileOverrideDict", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      byte_1000AD328 = 1;
      CFRelease(CFProperty);
    }

    return byte_1000AD328;
  }

  return result;
}

uint64_t sub_100056C38(const void *a1, int a2)
{
  v4 = 3758097090;
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return v4;
  }

  v53 = 0u;
  v54 = 0u;
  *aggressiveness = 0u;
  v52 = 0u;
  sub_1000563D4(a1, @"Display Sleep Timer", kCFNumberSInt32Type, aggressiveness);
  sub_1000563D4(a1, @"Disk Sleep Timer", kCFNumberSInt32Type, aggressiveness + 1);
  sub_1000563D4(a1, @"System Sleep Timer", kCFNumberSInt32Type, &aggressiveness[1]);
  sub_1000563D4(a1, @"Wake On LAN", kCFNumberSInt32Type, (aggressiveness | 0xC));
  sub_1000563D4(a1, @"Wake On Modem Ring", kCFNumberSInt32Type, &v52);
  sub_1000563D4(a1, @"Automatic Restart On Power Loss", kCFNumberSInt32Type, &v52 + 1);
  sub_1000563D4(a1, @"Sleep On Power Button", kCFNumberSInt32Type, &v52 + 2);
  sub_1000563D4(a1, @"Wake On Clamshell Open", kCFNumberSInt32Type, &v52 + 3);
  sub_1000563D4(a1, @"Wake On AC Change", kCFNumberSInt32Type, &v53);
  sub_1000563D4(a1, @"Display Sleep Uses Dim", kCFNumberSInt32Type, &v53 + 1);
  sub_1000563D4(a1, @"Mobile Motion Module", kCFNumberSInt32Type, &v53 + 2);
  sub_1000563D4(a1, @"GPUSwitch", kCFNumberSInt32Type, &v53 + 3);
  sub_1000563D4(a1, @"Standby Enabled", kCFNumberSInt32Type, &v54);
  sub_1000563D4(a1, @"Standby Delay", kCFNumberSInt32Type, &v54 + 1);
  sub_1000563D4(a1, @"AutoPowerOff Enabled", kCFNumberSInt32Type, &v54 + 2);
  sub_1000563D4(a1, @"AutoPowerOff Delay", kCFNumberSInt32Type, &v54 + 3);
  v6 = sub_10001B168();
  valuePtr = 1;
  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  valuePtr = 0;
  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v9 = v8;
  if (v8 && v7)
  {
    v10 = IOPMFindPowerManagement(0);
    if (!v10)
    {
      CFProperty = 0;
      goto LABEL_124;
    }

    sub_100011154();
    CFProperty = IORegistryEntryCreateCFProperty(v6, @"Supported Features", kCFAllocatorDefault, 0);
    IOPMSetAggressiveness(v10, 3uLL, LODWORD(aggressiveness[1]));
    IOPMSetAggressiveness(v10, 2uLL, HIDWORD(aggressiveness[0]));
    sub_10005652C(v10, aggressiveness[0]);
    if (IOPMFeatureIsAvailableWithSupportedTable())
    {
      v12 = HIDWORD(aggressiveness[1]);
    }

    else
    {
      v12 = 0;
    }

    IOPMSetAggressiveness(v10, 4uLL, v12);
    if (a2)
    {
      if (IOPMFeatureIsAvailableWithSupportedTable())
      {
        if (DWORD1(v53))
        {
          v13 = v7;
        }

        else
        {
          v13 = v9;
        }

        IORegistryEntrySetCFProperty(v6, @"Display Sleep Uses Dim", v13);
      }

      if ((IOPMFeatureIsAvailableWithSupportedTable() & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (DWORD1(v53))
      {
        v26 = v7;
      }

      else
      {
        v26 = v9;
      }

      IORegistryEntrySetCFProperty(v6, @"Display Sleep Uses Dim", v26);
    }

    if (v52)
    {
      v27 = v7;
    }

    else
    {
      v27 = v9;
    }

    IORegistryEntrySetCFProperty(v6, @"Wake On Modem Ring", v27);
    if (!a2)
    {
      if (DWORD1(v52))
      {
        v29 = v7;
      }

      else
      {
        v29 = v9;
      }

      IORegistryEntrySetCFProperty(v6, @"Automatic Restart On Power Loss", v29);
LABEL_63:
      if (v53)
      {
        v30 = v7;
      }

      else
      {
        v30 = v9;
      }

      IORegistryEntrySetCFProperty(v6, @"Wake On AC Change", v30);
      if (!a2)
      {
        v32 = &kCFBooleanFalse;
        if (!DWORD2(v52))
        {
          v32 = &kCFBooleanTrue;
        }

        IORegistryEntrySetCFProperty(v6, @"Sleep On Power Button", *v32);
LABEL_76:
        if (HIDWORD(v52))
        {
          v33 = v7;
        }

        else
        {
          v33 = v9;
        }

        IORegistryEntrySetCFProperty(v6, @"Wake On Clamshell Open", v33);
        if (!a2)
        {
          if (DWORD2(v53))
          {
            v35 = v7;
          }

          else
          {
            v35 = v9;
          }

          IORegistryEntrySetCFProperty(v6, @"MobileMotionModule", v35);
LABEL_91:
          v36 = CFNumberCreate(0, kCFNumberIntType, &v53 + 12);
          if (v36)
          {
            v37 = v36;
            IORegistryEntrySetCFProperty(v6, @"GPUSwitch", v36);
            CFRelease(v37);
          }

          if (!a2)
          {
            v39 = &kCFBooleanTrue;
            if (!v54)
            {
              v39 = &kCFBooleanFalse;
            }

            IORegistryEntrySetCFProperty(v6, @"Standby Enabled", *v39);
LABEL_103:
            v40 = CFNumberCreate(0, kCFNumberIntType, &v54 + 4);
            if (v40)
            {
              v41 = v40;
              IORegistryEntrySetCFProperty(v6, @"Standby Delay", v40);
              CFRelease(v41);
            }

            if (!a2)
            {
              v43 = &kCFBooleanTrue;
              if (!DWORD2(v54))
              {
                v43 = &kCFBooleanFalse;
              }

              IORegistryEntrySetCFProperty(v6, @"AutoPowerOff Enabled", *v43);
LABEL_115:
              v44 = CFNumberCreate(0, kCFNumberIntType, &v54 + 12);
              if (v44)
              {
                v45 = v44;
                IORegistryEntrySetCFProperty(v6, @"AutoPowerOff Delay", v44);
                CFRelease(v45);
              }

LABEL_117:
              if ((byte_1000AD329 & 1) == 0 && (byte_1000AD32A & 1) == 0)
              {
                IsAvailableWithSupportedTable = IOPMFeatureIsAvailableWithSupportedTable();
                v47 = IOPMFeatureIsAvailableWithSupportedTable();
                v48 = IOPMFeatureIsAvailableWithSupportedTable();
                if ((v47 & 1) != 0 || (IsAvailableWithSupportedTable & 1) != 0 || v48)
                {
                  byte_1000AD329 = v47;
                  byte_1000AD32A = IsAvailableWithSupportedTable;
                  sub_100018C6C(0xBu, 0);
                  nullsub_3(v49, v50);
                }
              }

              sub_10004488C();
LABEL_124:
              CFRelease(v9);
              v14 = v10;
              v15 = CFProperty;
              if (!v7)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }

LABEL_106:
            if (IOPMFeatureIsAvailableWithSupportedTable())
            {
              v42 = &kCFBooleanTrue;
              if (!DWORD2(v54))
              {
                v42 = &kCFBooleanFalse;
              }

              IORegistryEntrySetCFProperty(v6, @"AutoPowerOff Enabled", *v42);
            }

            if ((IOPMFeatureIsAvailableWithSupportedTable() & 1) == 0)
            {
              goto LABEL_117;
            }

            goto LABEL_115;
          }

LABEL_94:
          if (IOPMFeatureIsAvailableWithSupportedTable())
          {
            v38 = &kCFBooleanTrue;
            if (!v54)
            {
              v38 = &kCFBooleanFalse;
            }

            IORegistryEntrySetCFProperty(v6, @"Standby Enabled", *v38);
          }

          if ((IOPMFeatureIsAvailableWithSupportedTable() & 1) == 0)
          {
            goto LABEL_106;
          }

          goto LABEL_103;
        }

LABEL_80:
        if (IOPMFeatureIsAvailableWithSupportedTable())
        {
          if (DWORD2(v53))
          {
            v34 = v7;
          }

          else
          {
            v34 = v9;
          }

          IORegistryEntrySetCFProperty(v6, @"MobileMotionModule", v34);
        }

        if ((IOPMFeatureIsAvailableWithSupportedTable() & 1) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_91;
      }

LABEL_67:
      if (IOPMFeatureIsAvailableWithSupportedTable())
      {
        v31 = &kCFBooleanFalse;
        if (!DWORD2(v52))
        {
          v31 = &kCFBooleanTrue;
        }

        IORegistryEntrySetCFProperty(v6, @"Sleep On Power Button", *v31);
      }

      if ((IOPMFeatureIsAvailableWithSupportedTable() & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_76;
    }

LABEL_52:
    if (IOPMFeatureIsAvailableWithSupportedTable())
    {
      if (DWORD1(v52))
      {
        v28 = v7;
      }

      else
      {
        v28 = v9;
      }

      IORegistryEntrySetCFProperty(v6, @"Automatic Restart On Power Loss", v28);
    }

    if ((IOPMFeatureIsAvailableWithSupportedTable() & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  v10 = 0;
  CFProperty = 0;
  v14 = 0;
  v15 = 0;
  if (v8)
  {
    goto LABEL_124;
  }

  if (v7)
  {
LABEL_19:
    CFRelease(v7);
  }

LABEL_20:
  if (v14)
  {
    IOServiceClose(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v16 = sub_100037A64();
  if (v16)
  {
    v17 = v16;
    v18 = CFDictionaryGetTypeID();
    if (CFGetTypeID(a1) == v18)
    {
      Value = CFDictionaryGetValue(a1, @"Carrier Mode Low Voltage");
      v20 = CFNumberGetTypeID();
      if (Value && CFGetTypeID(Value) == v20 && IORegistryEntrySetCFProperty(v17, @"CarrierModeLowVoltage", Value) && os_log_type_enabled(qword_1000AC988, OS_LOG_TYPE_ERROR))
      {
        sub_10006D490();
      }

      v21 = CFDictionaryGetValue(a1, @"Carrier Mode High Voltage");
      v22 = CFNumberGetTypeID();
      if (v21 && CFGetTypeID(v21) == v22 && IORegistryEntrySetCFProperty(v17, @"CarrierModeHighVoltage", v21) && os_log_type_enabled(qword_1000AC988, OS_LOG_TYPE_ERROR))
      {
        sub_10006D490();
      }

      v23 = CFDictionaryGetValue(a1, @"Carrier Mode");
      v24 = CFNumberGetTypeID();
      if (v23 && CFGetTypeID(v23) == v24 && IORegistryEntrySetCFProperty(v17, @"CarrierModeStatus", v23) && os_log_type_enabled(qword_1000AC988, OS_LOG_TYPE_ERROR))
      {
        sub_10006D490();
      }
    }
  }

  sub_100051380(aggressiveness[0]);
  sub_100051584();
  return 0;
}

uint64_t sub_1000575B0()
{
  qword_1000AC988 = os_log_create("com.apple.powerd", "pmSettings");
  result = IOPMFindPowerManagement(0);
  dword_1000AD324 = result;
  if (result)
  {
    sub_100057690();
    v1 = sub_100011154();
    v2 = @"AC Power";
    if (v1 == 2)
    {
      v2 = @"Battery Power";
    }

    if (v1 == 3)
    {
      v2 = @"UPS Power";
    }

    qword_1000AD300 = v2;
    active = IOPMCopyActivePMPreferences();
    qword_1000AD2F8 = active;
    if (active)
    {
      sub_1000566DC(active, qword_1000AD300);
    }

    if (CFEqual(qword_1000AD300, @"AC Power"))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = dword_1000AD324;

    return IOPMSetAggressiveness(v5, 6uLL, v4);
  }

  return result;
}

void sub_100057690()
{
  v0 = IOPMCopySystemPowerSettings();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, @"SleepDisabled");
    v3 = sub_10001B168();
    if (kCFBooleanTrue == Value)
    {
      v4 = kCFBooleanTrue;
    }

    else
    {
      v4 = kCFBooleanFalse;
    }

    IORegistryEntrySetCFProperty(v3, @"SleepDisabled", v4);

    CFRelease(v1);
  }
}

void sub_100057730()
{
  v0 = qword_1000AC988;
  if (os_log_type_enabled(qword_1000AC988, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Energy Saver Prefs have changed", v3, 2u);
  }

  sub_100057690();
  if (qword_1000AD2F8)
  {
    CFRelease(qword_1000AD2F8);
  }

  v1 = IOPMCopyPMPreferences();
  qword_1000AD2F8 = v1;
  TypeID = CFDictionaryGetTypeID();
  if (v1 && CFGetTypeID(v1) == TypeID)
  {
    sub_1000566DC(qword_1000AD2F8, qword_1000AD300);
  }

  else
  {
    if (qword_1000AD2F8)
    {
      CFRelease(qword_1000AD2F8);
    }

    qword_1000AD2F8 = 0;
  }

  sub_10004EFC0();
}

void sub_10005798C(id a1)
{
  if (notify_register_check("com.apple.system.powersources.chargingiconography", &unk_1000AB770))
  {
    if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
    {
      sub_10006D580();
    }
  }
}

void sub_100058228(id a1)
{
  qword_1000AD370 = [[BatteryChargingStateManager alloc] initBatteryChargingStateData];

  _objc_release_x1();
}

void sub_1000583C4()
{
  v0 = os_log_create("com.apple.powerd", "batterychargingstate");
  v1 = qword_1000AC990;
  qword_1000AC990 = v0;

  v2 = dispatch_queue_create("com.apple.private.powerd.batteryChargingStateQ", 0);
  v3 = qword_1000AD330;
  qword_1000AD330 = v2;

  v4 = qword_1000AD330;
  if (qword_1000AD330)
  {

    dispatch_async(v4, &stru_10009ADD0);
  }
}

void sub_100058450(id a1)
{
  v1 = qword_1000AC990;
  if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "batteryChargingStateManager_prime init\n", v4, 2u);
  }

  dispatch_assert_queue_V2(qword_1000AD330);
  *out_token = 0;
  if (notify_register_dispatch("com.apple.system.powersources.timeremaining", out_token, qword_1000AD330, &stru_10009ADF0))
  {
    if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
    {
      sub_10006D96C();
    }
  }

  else if (notify_register_dispatch("com.apple.system.powersources", &out_token[1], qword_1000AD330, &stru_10009AE10))
  {
    if (os_log_type_enabled(qword_1000AC990, OS_LOG_TYPE_ERROR))
    {
      sub_10006D9EC();
    }
  }

  else
  {
    v2 = +[BatteryChargingStateManager InstanceManager];
    [v2 handleConnectionStateUpdate];

    v3 = +[BatteryChargingStateManager InstanceManager];
    [v3 handleChargingStateUpdate];
  }
}

void sub_100058578(id a1, int a2)
{
  v2 = +[BatteryChargingStateManager InstanceManager];
  [v2 handleConnectionStateUpdate];
}

void sub_1000585C0(id a1, int a2)
{
  v2 = +[BatteryChargingStateManager InstanceManager];
  [v2 handleChargingStateUpdate];
}

void sub_10005BD84(id a1)
{
  qword_1000AD390 = [[BatteryGaugingAccuracyManager alloc] initBatteryGaugingAccuracyData];

  _objc_release_x1();
}

void sub_10005C190(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = qword_1000AC998;
  if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "batteryGaugingMitigationEvent received\n", buf, 2u);
  }

  if (v3)
  {
    if (v4)
    {
      v6 = qword_1000AD380;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10005C2DC;
      v7[3] = &unk_1000992A0;
      v8 = v3;
      v9 = v4;
      dispatch_async(v6, v7);
    }

    else if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_ERROR))
    {
      sub_100065928();
    }
  }

  else if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_ERROR))
  {
    sub_10006D868();
  }
}

void sub_10005C2DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  dispatch_assert_queue_V2(qword_1000AD380);
  reply = xpc_dictionary_create_reply(v3);
  if (reply)
  {
    if (sub_100011DF8(v2, @"com.apple.private.iokit.battery-gauging-mitigation", 0))
    {
      v5 = xpc_dictionary_get_dictionary(v3, "batteryGaugingMitigation");
      if (v5)
      {
        v6 = v5;
        v7 = _CFXPCCreateCFObjectFromXPCObject();
        if (v7)
        {
          v8 = v7;
          v9 = [v7 objectForKeyedSubscript:@"batteryGaugingMitigationAction"];
          v10 = [v9 unsignedIntValue];

          if (v10 == 1)
          {
            v11 = qword_1000AD380;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000166FC;
            block[3] = &unk_100099210;
            v19 = reply;
            dispatch_async(v11, block);

            v12 = 0;
          }

          else
          {
            v12 = -536870206;
            if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_ERROR))
            {
              sub_10006DB2C();
            }
          }

          v17 = qword_1000AC998;
          if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109378;
            *&buf[4] = v10;
            LOWORD(v21) = 2112;
            *(&v21 + 2) = v8;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "received handleRequest %ud %@\n", buf, 0x12u);
          }

          goto LABEL_17;
        }

        if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_ERROR))
        {
          sub_10006D904();
        }

        v12 = -536870206;
      }

      else
      {
        v12 = -536870206;
        if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_ERROR))
        {
          sub_10006D938();
        }
      }
    }

    else
    {
      v12 = -536870207;
      if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_ERROR))
      {
        sub_10006D89C();
      }
    }

    v8 = 0;
LABEL_17:
    v13 = v2;
    v14 = reply;
    v15 = v14;
    if (v13)
    {
      v16 = qword_1000AD380;
      *buf = _NSConcreteStackBlock;
      *&v21 = 3221225472;
      *(&v21 + 1) = sub_100016B80;
      v22 = &unk_1000999D8;
      v23 = v14;
      v25 = v12;
      v24 = v13;
      dispatch_barrier_async(v16, buf);
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_ERROR))
  {
    sub_1000658F4();
  }

LABEL_20:
}

void sub_10005C634()
{
  v0 = os_log_create("com.apple.powerd", "batterygauging");
  v1 = qword_1000AC998;
  qword_1000AC998 = v0;

  v2 = dispatch_queue_create("com.apple.private.powerd.batteryGaugingQ", 0);
  v3 = qword_1000AD380;
  qword_1000AD380 = v2;

  v4 = qword_1000AD380;
  if (qword_1000AD380)
  {

    dispatch_async(v4, &stru_10009AE50);
  }
}

void sub_10005C6C0(id a1)
{
  v1 = qword_1000AC998;
  if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "batteryGaugingAccuracyManager_prime init\n", buf, 2u);
  }

  xpc_set_event_stream_handler("com.apple.alarm", 0, &stru_10009AE70);
  dispatch_assert_queue_V2(qword_1000AD380);
  out_token = 0;
  v2 = notify_register_dispatch("com.apple.system.powersources.source", &out_token, qword_1000AD380, &stru_10009AE90);
  v3 = qword_1000AC998;
  v4 = os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 136315138;
      v8 = "com.apple.system.powersources.source";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Could not get notification for %s. Exiting.\n", buf, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 136315138;
      v8 = "com.apple.system.powersources.source";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Register notification for %s. good.\n", buf, 0xCu);
    }

    v5 = +[BatteryGaugingAccuracyManager InstanceManager];
    [v5 handleBatteryStateDataUpdate];
  }
}

void sub_10005C848(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = qword_1000AD380;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005C8E0;
  block[3] = &unk_100099210;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_10005C8E0(uint64_t a1)
{
  v2 = +[BatteryGaugingAccuracyManager InstanceManager];
  [v2 handleAlarmEvent:*(a1 + 32)];
}

void sub_10005C938(id a1, int a2)
{
  v2 = qword_1000AC998;
  if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HandleBatteryDataUpdate AC change detected run update and action policy", v5, 2u);
  }

  v3 = +[BatteryGaugingAccuracyManager InstanceManager];
  [v3 periodicActions];

  v4 = +[BatteryGaugingAccuracyManager InstanceManager];
  [v4 handleBatteryStateDataUpdate];
}

void sub_10005C9DC()
{
  if (byte_1000AD3A7 == 1)
  {
    qword_1000AD3B8 = CFAbsoluteTimeGetCurrent();
  }
}

uint64_t sub_10005CA30(void *a1)
{
  if (a1)
  {
    *a1 = qword_1000AD3B0;
  }

  return byte_1000AD3A8;
}

void sub_10005CA4C(int a1)
{
  if (byte_1000AD3A7 == a1)
  {
    if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
    {
      sub_10006DC4C();
    }
  }

  else
  {
    if (a1)
    {
      v1 = 1;
      sub_10004B650(1, 0);
      sub_10004B04C();
      nullsub_3(v2, v3);
      byte_1000AD3A8 = 1;
    }

    else
    {
      v1 = 0;
    }

    byte_1000AD3A7 = v1;
    v4 = qword_1000AC9A0;
    if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = v1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "rootDomain's user activity state:%d\n", v5, 8u);
    }
  }
}

__CFDictionary *sub_10005CB64()
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  valuePtr = 0xFFFF;
  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v1)
  {
    v2 = v1;
    CFDictionaryAddValue(Mutable, @"DeviceUsage", v1);
    CFDictionaryAddValue(Mutable, @"DeviceUsagePage", v2);
    CFRelease(v2);
  }

  return Mutable;
}

void sub_10005CC08(const __CFString *a1, uint64_t a2)
{
  valuePtr = a2;
  dispatch_assert_queue_V2(qword_1000AD408);
  if (qword_1000AD3D0)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      IOHIDEventSystemClientSetProperty(qword_1000AD3D0, a1, v3);
      CFRelease(v4);
    }
  }
}

uint64_t sub_10005CC8C()
{
  out_token = 0;
  qword_1000AC9A0 = os_log_create("com.apple.powerd", "systemLoad");
  qword_1000AD408 = dispatch_queue_create("com.apple.powermanagement.systemload", 0);
  *&dword_1000AD3A0 = 0u;
  *&qword_1000AD3B0 = 0u;
  xmmword_1000AD3C0 = 0u;
  *&qword_1000AD3D0 = 0u;
  *&dword_1000AD3E0 = 0u;
  *&qword_1000AD3F0 = 0u;
  *&xmmword_1000AD3C0 = 0xFFFFLL;
  sub_10005CA4C(1);
  byte_1000AD3A7 = 1;
  qword_1000AD410 = SCDynamicStoreKeyCreate(kCFAllocatorDefault, @"%@%@", kSCDynamicStoreDomainState, @"/IOKit/PowerManagement/SystemLoad");
  qword_1000AD418 = SCDynamicStoreKeyCreate(kCFAllocatorDefault, @"%@%@", kSCDynamicStoreDomainState, @"/IOKit/PowerManagement/SystemLoad/Detailed");
  notify_register_check("com.apple.system.powermanagement.SystemLoadAdvisory", &dword_1000AD420);
  notify_register_check("com.apple.system.powermanagement.useractivity", &dword_1000AD3A0);
  notify_set_state(dword_1000AD3A0, 1uLL);
  v0 = sub_10004488C();
  v1 = sub_100010FE0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CE94;
  block[3] = &unk_100099AD0;
  v8 = v0;
  dispatch_sync(v1, block);
  sub_10005CE9C();
  sub_10005CF74(0);
  v2 = IONotificationPortCreate(0);
  v3 = sub_100002A58();
  IONotificationPortSetDispatchQueue(v2, v3);
  dword_1000AD3E0 = 300;
  v4 = sub_10000CDD8();
  word_1000AD3F8 = 1;
  qword_1000AD3E8 = v4;
  qword_1000AD3F0 = 0;
  dispatch_async(qword_1000AD408, &stru_10009AF30);
  byte_1000AD424 = sub_100007E48();
  v5 = sub_100002A58();
  return notify_register_dispatch(kOSThermalNotificationPressureLevelName, &out_token, v5, &stru_10009AEB0);
}

void sub_10005CE9C()
{
  v0 = sub_10001B964();
  v1 = SCDynamicStoreCopyValue(v0, @"State:/IOKit/PowerManagement/CurrentSettings");
  if (v1)
  {
    v2 = v1;
    valuePtr = 0;
    Value = CFDictionaryGetValue(v1, @"Display Sleep Timer");
    if (Value && (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr), byte_1000AD433 != (valuePtr != 0)))
    {
      byte_1000AD433 = valuePtr != 0;
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = CFDictionaryGetValue(v2, @"DarkWakeBackgroundTasks");
    if (v5 && (v6 = CFBooleanGetValue(v5) != 0, dword_1000AB780 != v6))
    {
      dword_1000AB780 = v6;
      CFRelease(v2);
    }

    else
    {
      CFRelease(v2);
      if (!v4)
      {
        return;
      }
    }

    sub_1000113DC();
  }
}

void sub_10005CF74(const __CFDictionary *a1)
{
  cpuPowerStatus = 0;
  v10 = 100;
  valuePtr = 100;
  v2 = dword_1000AD438;
  if (!dword_1000AD438)
  {
    v9 = 4;
    if (sysctlbyname("hw.ncpu", &dword_1000AD438, &v9, 0, 0) == -1)
    {
      v2 = 0;
      dword_1000AD438 = 0;
    }

    else
    {
      v2 = dword_1000AD438;
    }
  }

  LODWORD(v9) = v2;
  v3 = IOPMGetThermalWarningLevel(&dword_1000AD400) == 0;
  if (dword_1000AD400)
  {
    v4 = dword_1000AD400 == 255;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  byte_1000AD43C = v3 & v5;
  byte_1000AD43D = 0;
  byte_1000AD43E = 0;
  byte_1000AD43F = 0;
  if (a1)
  {
LABEL_12:
    Value = CFDictionaryGetValue(a1, @"CPU_Speed_Limit");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    }

    v7 = CFDictionaryGetValue(a1, @"CPU_Available_CPUs");
    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberIntType, &v9);
    }

    v8 = CFDictionaryGetValue(a1, @"CPU_Scheduler_Limit");
    if (v8)
    {
      CFNumberGetValue(v8, kCFNumberIntType, &v10);
    }

    if (valuePtr <= 50)
    {
      byte_1000AD43F = 1;
    }

    if (dword_1000AD438 > v9)
    {
      byte_1000AD43D = 1;
    }

    if (v10 != 100)
    {
      byte_1000AD43E = 1;
    }

    sub_1000113DC();
    goto LABEL_26;
  }

  if (!IOPMCopyCPUPowerStatus(&cpuPowerStatus))
  {
    a1 = cpuPowerStatus;
    if (!cpuPowerStatus)
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_26:
  if (cpuPowerStatus)
  {
    CFRelease(cpuPowerStatus);
  }
}

void sub_10005D128(id a1, int a2)
{
  notify_get_state(a2, &qword_1000AD428);
  byte_1000AD430 = 1;

  sub_1000113DC();
}

uint64_t sub_10005D168(uint64_t result)
{
  if (byte_1000AD424 != result)
  {
    v1 = result;
    byte_1000AD424 = result;
    if (result)
    {
      HIBYTE(word_1000AD3F8) = 0;
      sub_10005CA4C(0);
      v2 = 3;
    }

    else
    {
      v3 = sub_10000CD20();
      v4 = os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        if (v4)
        {
          sub_10006DEF4();
        }
      }

      else
      {
        if (v4)
        {
          sub_10006DEB8();
        }

        sub_10005CA4C(1);
      }

      v2 = 0;
    }

    sub_1000531E8(v2);
    v5 = qword_1000AC9A0;
    if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_1000AD424)
      {
        v6 = "Off";
      }

      else
      {
        v6 = "On";
      }

      v7 = 136315394;
      v8 = v6;
      v9 = 1024;
      v10 = sub_10000CD20();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Display state: %s NotificationWake : %d\n", &v7, 0x12u);
    }

    sub_1000113DC();
    sub_100015D90();
    sub_10004F550(v1);
    return sub_10004D06C();
  }

  return result;
}

void sub_10005D2D8(int a1)
{
  v2 = qword_1000AC9A0;
  v3 = os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEFAULT);
  if (a1)
  {
    if (v3)
    {
      v7 = 0;
      v4 = "Entered Domino";
      v5 = &v7;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    }
  }

  else if (v3)
  {
    v6 = 0;
    v4 = "Exited Domino";
    v5 = &v6;
    goto LABEL_6;
  }

  byte_1000AD431 = a1;
  sub_100015D90();
  sub_10004F550((byte_1000AD431 & 1) == 0);
}

void sub_10005D380(void *a1, void *a2)
{
  if (a1 && a2)
  {
    if (sub_100015094(a1, @"com.apple.private.iokit.dominoservice"))
    {
      v3 = xpc_dictionary_get_BOOL(a2, "dominoState");
      v4 = xpc_dictionary_get_BOOL(a2, "dominoMainDisplay");
      v5 = qword_1000AC9A0;
      if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEFAULT))
      {
        v6[0] = 67109376;
        v6[1] = v3;
        v7 = 1024;
        v8 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Domino set to %d on main display %d", v6, 0xEu);
      }

      sub_10005D2D8(v3);
      [+[PMSmartPowerNapService sharedInstance](PMSmartPowerNapService updateAmbientState:"updateAmbientState:", v3];
    }

    else if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_ERROR))
    {
      sub_10006DFA0();
    }
  }

  else if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_ERROR))
  {
    sub_10006DF30();
  }
}

void sub_10005D4EC(int a1)
{
  v2 = qword_1000AC9A0;
  v3 = os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEFAULT);
  if (a1)
  {
    if (v3)
    {
      v7 = 0;
      v4 = "Oneness mode is on";
      v5 = &v7;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    }
  }

  else if (v3)
  {
    v6 = 0;
    v4 = "Oneness mode is off";
    v5 = &v6;
    goto LABEL_6;
  }

  byte_1000AD432 = a1;
  sub_100015D90();
}

void sub_10005D584(void *a1, void *a2)
{
  if (a1 && a2)
  {
    if (sub_100015094(a1, @"com.apple.private.iokit.onenessservice"))
    {
      v3 = xpc_dictionary_get_BOOL(a2, "onenessState");
      v4 = qword_1000AC9A0;
      if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 67109120;
        v5[1] = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Oneness mode set to %d", v5, 8u);
      }

      sub_10005D4EC(v3);
    }

    else if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_ERROR))
    {
      sub_10006E04C();
    }
  }

  else if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_ERROR))
  {
    sub_10006DFDC();
  }
}

void sub_10005D6C8(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040D5C8FCC9uLL);
    if (v4)
    {
      v5 = v4;
      v4[2] = xpc_retain(a1);
      *(v5 + 24) = xpc_dictionary_get_uint64(a2, "ActivityTimeout");
      v6 = (v5 + 24);
      sub_10005D7C8(v5);
      v7 = qword_1000AC9A0;
      if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
      {
        sub_10006E0F8(a1, v6, v7);
      }
    }

    else if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_ERROR))
    {
      sub_10006E1AC();
    }
  }

  else if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_ERROR))
  {
    sub_10006E088();
  }
}

void sub_10005D7C8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 <= 4)
  {
    if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_ERROR))
    {
      sub_10006E1E8();
    }

    v2 = 5;
    *(a1 + 24) = 5;
  }

  if (v2 < dword_1000AD3E0)
  {
    dword_1000AD3E0 = v2;
    if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
    {
      sub_10006E258();
    }

    dispatch_async(qword_1000AD408, &stru_10009AF50);
    v3 = sub_10000CDD8();
    v4 = qword_1000AD3F0;
    if (qword_1000AD3F0)
    {
      v5 = v3;
      if (!qword_1000AD460)
      {
        v6 = sub_100002A58();
        qword_1000AD460 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
        dispatch_source_set_event_handler(qword_1000AD460, &stru_10009AF70);
        dispatch_source_set_cancel_handler(qword_1000AD460, &stru_10009AF90);
        v4 = qword_1000AD3F0;
      }

      v7 = v5 - v4;
      v8 = dword_1000AD3E0 >= v7;
      v9 = dword_1000AD3E0 - v7;
      if (v9 != 0 && v8)
      {
        v10 = dispatch_time(0, 1000000000 * v9);
        dispatch_source_set_timer(qword_1000AD460, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
        if ((byte_1000AD468 & 1) == 0)
        {
          dispatch_resume(qword_1000AD460);
          byte_1000AD468 = 1;
        }
      }
    }
  }

  v11 = *(&xmmword_1000AD3C0 + 1);
  if (*(&xmmword_1000AD3C0 + 1))
  {
    while (1)
    {
      v12 = v11;
      if (*(v11 + 6) > *(a1 + 24))
      {
        break;
      }

      v11 = *v11;
      if (!*v12)
      {
        *a1 = 0;
        *v12 = a1;
        goto LABEL_20;
      }
    }

    v13 = v11[1];
    *a1 = v11;
    *(a1 + 8) = v13;
    *v13 = a1;
    v11[1] = a1;
  }

  else
  {
    v12 = &xmmword_1000AD3C0 + 1;
    *(&xmmword_1000AD3C0 + 1) = a1;
    *a1 = 0;
LABEL_20:
    *(a1 + 8) = v12;
  }

  *(a1 + 32) = -1;
  sub_100015D90();
}

void sub_10005D99C(_xpc_connection_s *a1, xpc_object_t xdict)
{
  if (a1 && xdict)
  {
    v3 = *(&xmmword_1000AD3C0 + 1);
    while (v3)
    {
      v4 = v3;
      v3 = *v3;
      if (*(v4 + 16) == a1)
      {
        v5 = *(v4 + 8);
        if (v3)
        {
          v3[1] = v5;
        }

        *v5 = v3;
        *(v4 + 24) = xpc_dictionary_get_uint64(xdict, "ActivityTimeout");
        sub_10005D7C8(v4);
        v6 = qword_1000AC9A0;
        if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(v4 + 24);
          v8 = *(v4 + 16);
          v10[0] = 67109632;
          v10[1] = v7;
          v11 = 2048;
          v12 = v8;
          v13 = 1024;
          pid = xpc_connection_get_pid(a1);
          _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Updated idleTimeout to %d for  user inactivity client %p(pid %d)\n", v10, 0x18u);
        }

        return;
      }
    }

    v9 = qword_1000AC9A0;
    if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_ERROR))
    {
      sub_10006E43C(a1, v9);
    }
  }

  else if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_ERROR))
  {
    sub_10006E3CC();
  }
}

uint64_t sub_10005DB1C()
{
  v0 = sub_10000CDD8();
  if (v0 <= qword_1000AD3F0)
  {
    return 0;
  }

  else
  {
    return (v0 - qword_1000AD3F0);
  }
}

void sub_10005DB74(id a1)
{
  qword_1000AD3D0 = IOHIDEventSystemClientCreateWithType();
  if (qword_1000AD3D0)
  {
    sub_10005CB64();
    IOHIDEventSystemClientSetMatching();
    IOHIDEventSystemClientRegisterPropertyChangedCallback();
    IOHIDEventSystemClientScheduleWithDispatchQueue();
    sub_10005CC08(@"IdleNotificationTime", dword_1000AD3E0);

    sub_100015C08();
  }

  else if (os_log_type_enabled(qword_1000AC9A0, OS_LOG_TYPE_ERROR))
  {
    sub_10006E588();
  }
}

uint64_t sub_10005DCB0()
{
  qword_1000AD470 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v0 = SCDynamicStoreCreate(0, @"powerd", sub_100060308, 0);
  qword_1000AC9A8 = v0;
  if (v0)
  {
    v1 = v0;
    v2 = sub_100002A58();
    SCDynamicStoreSetDispatchQueue(v1, v2);
    v0 = qword_1000AC9A8;
  }

  return _SCDynamicStoreSetDisconnectCallBack(v0, sub_10005DD58);
}

uint64_t sub_10005DD58(uint64_t a1)
{
  v3 = qword_1000AC9A8;
  if (qword_1000AC9A8 != a1)
  {
    sub_10006E5C4();
  }

  v4 = qword_1000AD470;

  return SCDynamicStoreSetMultiple(v3, v4, 0, 0);
}

BOOL sub_10005DD9C(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFStringGetTypeID();
    if (CFGetTypeID(v1) == TypeID)
    {
      CFDictionaryRemoveValue(qword_1000AD470, v1);
      return SCDynamicStoreRemoveValue(qword_1000AC9A8, v1) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10005DE0C()
{
  ++dword_1000AD480;
  v0 = dword_1000AB788 + 1;
  if (dword_1000AB788 == -1)
  {
    v0 = 1;
  }

  dword_1000AB788 = v0;
}

BOOL sub_10005DEC4(_OWORD *a1)
{
  error = 0;
  v1 = a1[1];
  v6[0] = *a1;
  v6[1] = v1;
  v2 = sub_100006580(v6);
  v3 = v2;
  if (v2)
  {
    v4 = SecTaskCopyValueForEntitlement(v2, @"com.apple.private.xpc.launchd.job-manager", &error);
    CFRelease(v3);
    if (v4)
    {
      v3 = CFEqual(v4, @"com.apple.runningboard") != 0;
      CFRelease(v4);
    }

    else
    {
      v3 = 0;
    }

    if (error)
    {
      CFRelease(error);
    }
  }

  return v3;
}

uint64_t sub_10005DF60(const __CFString *a1, const void *a2)
{
  v4 = sub_10001B168();

  return IORegistryEntrySetCFProperty(v4, a1, a2);
}

const __CFString *sub_10005DFA0()
{
  v0 = sub_10001B168();
  if (off_1000AB790)
  {
    CFRelease(off_1000AB790);
  }

  CFProperty = IORegistryEntryCreateCFProperty(v0, @"Last Sleep Reason", kCFAllocatorDefault, 0);
  off_1000AB790 = CFProperty;
  TypeID = CFStringGetTypeID();
  if (CFProperty && CFGetTypeID(CFProperty) == TypeID)
  {
    return off_1000AB790;
  }

  result = &stru_10009BE60;
  off_1000AB790 = &stru_10009BE60;
  return result;
}

void sub_10005E034()
{
  if (off_1000AB798)
  {
    CFRelease(off_1000AB798);
  }

  if (off_1000AB7A0)
  {
    CFRelease(off_1000AB7A0);
  }

  if (qword_1000AD490)
  {
    CFRelease(qword_1000AD490);
  }

  v0 = qword_1000AD488;
  TypeID = CFArrayGetTypeID();
  if (v0 && CFGetTypeID(v0) == TypeID)
  {
    CFRelease(qword_1000AD488);
  }

  if (qword_1000AD4A0)
  {
    CFRelease(qword_1000AD4A0);
  }

  qword_1000AD490 = 0;
  qword_1000AD488 = 0;
  off_1000AB798 = &stru_10009BE60;
  off_1000AB7A0 = &stru_10009BE60;
  qword_1000AD4A0 = 0;
}

uint64_t sub_10005E0E8(const __CFString *a1)
{
  v2 = qword_1000AD4A0;
  TypeID = CFArrayGetTypeID();
  if (!v2)
  {
    return 0;
  }

  if (CFGetTypeID(v2) != TypeID)
  {
    return 0;
  }

  v4 = CFStringGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) != v4)
  {
    return 0;
  }

  Count = CFArrayGetCount(qword_1000AD4A0);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1000AD4A0, v7);
    v9 = CFStringGetTypeID();
    if (ValueAtIndex)
    {
      if (CFGetTypeID(ValueAtIndex) == v9 && CFStringCompare(a1, ValueAtIndex, 0) == kCFCompareEqualTo)
      {
        break;
      }
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  return 1;
}

void sub_10005E1C8(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1 || !v3)
  {
    goto LABEL_22;
  }

  v5 = a1;
  xpc_connection_get_audit_token();
  pid = xpc_connection_get_pid(v5);

  memset(__str, 0, 32);
  v7 = sub_100006580(__str);
  v8 = v7;
  if (v7)
  {
    v9 = SecTaskCopyValueForEntitlement(v7, @"com.apple.private.iokit.darkwake-control", 0);
    if (v9)
    {
      v10 = v9;
      string = xpc_dictionary_get_string(v4, "identity");
      v12 = xpc_dictionary_get_string(v4, "reason");
      v13 = v12;
      v14 = "--none--";
      if (string)
      {
        v15 = string;
      }

      else
      {
        v15 = "--none--";
      }

      if (v12)
      {
        v14 = v12;
      }

      snprintf(__str, 0xFFuLL, "AppWoke:%s Reason:%s", v15, v14);
      v16 = qword_1000AB9B0;
      if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v21 = __str;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s\n", buf, 0xCu);
        v16 = qword_1000AB9B0;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *__str = 136315394;
        *&__str[4] = v13;
        *&__str[12] = 2080;
        *&__str[14] = string;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wake reason: %s  identity: %s \n", __str, 0x16u);
      }

      v17 = CFStringCreateWithCString(0, v13, 0x8000100u);
      if (v17)
      {
        Mutable = qword_1000AD4A0;
        if (qword_1000AD4A0 || (Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks), (qword_1000AD4A0 = Mutable) != 0))
        {
          CFArrayAppendValue(Mutable, v17);
        }

        else if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
        {
          sub_10006E668();
        }
      }

      else if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
      {
        sub_10006E69C();
      }

      CFRelease(v8);
      CFRelease(v10);
      if (!v17)
      {
        goto LABEL_22;
      }

LABEL_21:
      CFRelease(v17);
      goto LABEL_22;
    }
  }

  v19 = qword_1000AB9B0;
  if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
  {
    sub_10006E6D0(pid, v19);
  }

  v17 = v8;
  if (v8)
  {
    goto LABEL_21;
  }

LABEL_22:
}

uint64_t sub_10005E48C(_DWORD *a1)
{
  v2 = sub_10001B168();
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"IOHibernateState", kCFAllocatorDefault, 0);
  TypeID = CFDataGetTypeID();
  if (!CFProperty)
  {
    return 0;
  }

  if (CFGetTypeID(CFProperty) == TypeID && CFDataGetLength(CFProperty) == 4 && (BytePtr = CFDataGetBytePtr(CFProperty)) != 0)
  {
    *a1 = *BytePtr;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(CFProperty);
  return v6;
}

const char *sub_10005E538(unsigned int a1)
{
  if (a1 > 7)
  {
    return "Unknown";
  }

  else
  {
    return (&off_10009B018)[a1];
  }
}

void sub_10005E570(void *a1, void *a2)
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
        v7 = xpc_dictionary_get_value(v5, "resetCustomBatteryProps");

        if (v7)
        {
          sub_100041E94();
          xpc_dictionary_set_uint64(reply, "returnCode", 0);
          v8 = qword_1000AB9B0;
          if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "System reset to use default battery properties\n", v9, 2u);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
        {
          sub_10006E748();
        }

        xpc_dictionary_set_uint64(reply, "returnCode", 0xFFFFFFFFE00002C1);
      }

      xpc_connection_send_message(v3, reply);
    }

    else if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
    {
      sub_1000658F4();
    }
  }

  else if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
  {
    sub_100065928();
  }
}

void sub_10005E704(void *a1, void *a2)
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
        v7 = xpc_dictionary_get_value(v5, "customBatteryProps");
        if (v7)
        {
          v8 = _CFXPCCreateCFObjectFromXPCObject();
          TypeID = CFDictionaryGetTypeID();
          if (v8 && CFGetTypeID(v8) == TypeID)
          {
            sub_100041BF0(v8);
            xpc_dictionary_set_uint64(reply, "returnCode", 0);
            xpc_connection_send_message(v3, reply);
LABEL_20:
            CFRelease(v8);
            goto LABEL_21;
          }
        }

        else
        {
          CFDictionaryGetTypeID();
          v8 = 0;
        }

        if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
        {
          sub_10006E7B0();
        }

        xpc_dictionary_set_uint64(reply, "returnCode", 0xFFFFFFFFE00002C2);
        xpc_connection_send_message(v3, reply);
        if (!v8)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
      {
        sub_10006E77C();
      }

      xpc_dictionary_set_uint64(reply, "returnCode", 0xFFFFFFFFE00002C1);
      xpc_connection_send_message(v3, reply);
    }

    else if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
    {
      sub_1000658F4();
    }

    v7 = 0;
LABEL_21:

    goto LABEL_22;
  }

  if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_ERROR))
  {
    sub_100065928();
  }

LABEL_22:
}

__asl_object_s *sub_10005E8F8()
{
  v0 = asl_new(0);
  asl_set(v0, "Level", "Notice");
  asl_set(v0, "Facility", "com.apple.iokit.power");
  return v0;
}

void sub_10005E950(int a1)
{
  v2 = sub_100037C24(a1);
  snprintf(__str, 0x78uLL, "SMC shutdown cause: %d: %s", a1, v2);
  v3 = qword_1000AB9B0;
  if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = __str;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }
}

void sub_10005EA14(const char *a1, uint64_t a2, uint64_t a3, int a4)
{
  v15[0] = 0;
  __str[0] = 0;
  v6 = sub_10001B168();
  valuePtr = -1;
  CFProperty = IORegistryEntryCreateCFProperty(v6, @"SleepRequestedByPID", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    TypeID = CFNumberGetTypeID();
    if (CFGetTypeID(CFProperty) == TypeID)
    {
      CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
    }
  }

  v9 = off_1000AB790;
  if (off_1000AB790)
  {
    v10 = CFStringGetTypeID();
    if (CFGetTypeID(v9) == v10)
    {
      if (CFStringGetCString(off_1000AB790, buffer, 50, 0x8000100u))
      {
        if (*buffer == 0x6572617774666F53 && *&buffer[6] == 0x7065656C53206572)
        {
          snprintf(__str, 0x64uLL, "'%s pid=%d'");
        }

        else
        {
          snprintf(__str, 0x64uLL, "'%s'");
        }
      }
    }
  }

  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  if (!strncmp(a1, "success", 8uLL))
  {
    if (a4 == 3)
    {
      strcpy(v15, "Entering Sleep state");
    }

    else
    {
      strcpy(v15, "Entering DarkWake state");
    }

    if (__str[0])
    {
      snprintf(v15, 0xC8uLL, "%s due to %s");
    }
  }

  else
  {
    snprintf(v15, 0xC8uLL, "Failure during sleep: %s : %s");
  }

  v12 = qword_1000AB9B0;
  if (os_log_type_enabled(qword_1000AB9B0, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 136446210;
    *&buffer[4] = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buffer, 0xCu);
  }
}

void sub_10005EC98()
{
  if (sub_100007E48())
  {
    v0 = sub_100002A58();
    dispatch_async(v0, &stru_10009AFB0);
  }
}

unint64_t sub_10005ECF8(uint64_t a1)
{
  v2 = dword_1000AD4E4;
  if (!dword_1000AD4E4)
  {
    mach_timebase_info(&dword_1000AD4E0);
    v2 = dword_1000AD4E4;
  }

  return dword_1000AD4E0 * a1 / (1000000000 * v2);
}

uint64_t sub_10005ED54(uid_t a1)
{
  v5 = 17;
  result = getpwuid(a1);
  if (result)
  {
    getgrouplist(*result, *(result + 20), v6, &v5);
    result = getgrnam("admin");
    if (result)
    {
      v2 = v5;
      if (v5 < 1)
      {
        return 0;
      }

      else
      {
        v3 = v6;
        while (1)
        {
          v4 = *v3++;
          if (v4 == *(result + 16))
          {
            break;
          }

          if (!--v2)
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  return result;
}

double sub_10005EE08()
{
  valuePtr = 0;
  MatchingService = dword_1000AD4E8;
  if (!dword_1000AD4E8)
  {
    v1 = IOServiceMatching("IOHIDSystem");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
    dword_1000AD4E8 = MatchingService;
    if (!MatchingService)
    {
      return 0.0;
    }
  }

  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"HIDIdleTime", 0, 0);
  TypeID = CFNumberGetTypeID();
  if (!CFProperty)
  {
    return 0.0;
  }

  v4 = 0.0;
  if (CFGetTypeID(CFProperty) == TypeID && CFNumberGetValue(CFProperty, kCFNumberSInt64Type, &valuePtr))
  {
    v4 = valuePtr / 1000000000.0;
  }

  CFRelease(CFProperty);
  return v4;
}

uint64_t sub_10005EEE4(int a1, const void *a2, unsigned int a3)
{
  if (!a1)
  {
    return 3758097118;
  }

  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v14 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v16[6] = 9;
  v13 = a1;
  result = sub_10005F020(&v13, &v8);
  if (!result)
  {
    if (BYTE8(v10))
    {
      if (BYTE8(v10) == 132)
      {
        return 3758097136;
      }

      else
      {
        return 3758097097;
      }
    }

    else
    {
      v16[6] = 6;
      v13 = a1;
      DWORD2(v15) = HIDWORD(v9);
      if (a2 && a3)
      {
        if (a3 >= 0x20)
        {
          v7 = 32;
        }

        else
        {
          v7 = a3;
        }

        memcpy(&v16[12], a2, (v7 - 1) + 1);
      }

      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
      LODWORD(result) = sub_10005F020(&v13, &v8);
      if (BYTE8(v10))
      {
        return 3758097097;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10005F020(const void *a1, void *a2)
{
  outputStructCnt = 80;
  connect = 0;
  v4 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (!MatchingService)
  {
    return 3758097084;
  }

  v6 = IOServiceOpen(MatchingService, mach_task_self_, 1u, &connect);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = connect == 0;
  }

  if (!v7)
  {
    v6 = IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (!v6)
    {
      v6 = IOConnectCallStructMethod(connect, 2u, a1, 0x50uLL, a2, &outputStructCnt);
    }

    if (connect)
    {
      IOConnectCallMethod(connect, 1u, 0, 0, 0, 0, 0, 0, 0, 0);
      IOServiceClose(connect);
    }
  }

  return v6;
}

uint64_t sub_10005F144(int a1, const void *a2, unsigned int a3)
{
  if (!a1)
  {
    return 3758097118;
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v22[6] = 9;
  v19 = a1;
  result = sub_10005F2B8(&v19, &v8);
  if (!result)
  {
    if (BYTE8(v10))
    {
      if (BYTE8(v10) == 132)
      {
        return 3758097136;
      }

      else
      {
        return 3758097097;
      }
    }

    else
    {
      v22[6] = 6;
      v19 = a1;
      DWORD2(v21) = HIDWORD(v9);
      if (a2 && a3)
      {
        if (a3 >= 0x78)
        {
          v7 = 120;
        }

        else
        {
          v7 = a3;
        }

        memcpy(&v22[12], a2, (v7 - 1) + 1);
      }

      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
      LODWORD(result) = sub_10005F2B8(&v19, &v8);
      if (BYTE8(v10))
      {
        return 3758097097;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10005F2B8(const void *a1, void *a2)
{
  outputStructCnt = 168;
  connect = 0;
  v4 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (!MatchingService)
  {
    return 3758097084;
  }

  v6 = IOServiceOpen(MatchingService, mach_task_self_, 1u, &connect);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = connect == 0;
  }

  if (!v7)
  {
    v6 = IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (!v6)
    {
      v6 = IOConnectCallStructMethod(connect, 2u, a1, 0xA8uLL, a2, &outputStructCnt);
    }

    if (connect)
    {
      IOConnectCallMethod(connect, 1u, 0, 0, 0, 0, 0, 0, 0, 0);
      IOServiceClose(connect);
    }
  }

  return v6;
}

BOOL sub_10005F3DC(_BOOL8 result)
{
  if (result)
  {
    v22 = 0;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    memset(v1, 0, sizeof(v1));
    v2 = 0u;
    v3 = 0u;
    v4 = 0u;
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    BYTE6(v14) = 9;
    v11 = result;
    sub_10005F2B8(&v11, v1);
    return BYTE8(v2) == 0;
  }

  return result;
}

uint64_t sub_10005F4A0(int a1, void *a2, _BYTE *a3, unsigned int a4)
{
  result = 3758097118;
  if (a1)
  {
    if (a2)
    {
      bzero(a2, *a3);
      v21 = 0u;
      memset(v22, 0, sizeof(v22));
      v20 = 0u;
      v19 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      BYTE6(v21) = 9;
      v18 = a1;
      result = sub_10005F020(&v18, &v13);
      if (!result)
      {
        if (BYTE8(v15))
        {
          if (BYTE8(v15) == 132)
          {
            return 3758097136;
          }

          else
          {
            return 3758097097;
          }
        }

        else
        {
          if (a4 > 1)
          {
            a4 = (BYTE4(v15) & 4) == 0;
          }

          BYTE6(v21) = 5;
          v18 = a1;
          DWORD2(v20) = HIDWORD(v14);
          v13 = 0u;
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          result = sub_10005F020(&v18, &v13);
          if (BYTE8(v15))
          {
            result = 3758097136;
            if (BYTE8(v15) != 132)
            {
              return 3758097097;
            }
          }

          else
          {
            LODWORD(v9) = *a3;
            if (DWORD2(v20) < v9)
            {
              LODWORD(v9) = BYTE8(v20);
              *a3 = BYTE8(v20);
            }

            if (v9)
            {
              v10 = 0;
              v11 = -1;
              do
              {
                v12 = v11 + v9;
                if (!a4)
                {
                  v12 = v10;
                }

                *(a2 + v10++) = *(&v16 + v12);
                v9 = *a3;
                --v11;
              }

              while (v10 < v9);
            }
          }
        }
      }
    }
  }

  return result;
}