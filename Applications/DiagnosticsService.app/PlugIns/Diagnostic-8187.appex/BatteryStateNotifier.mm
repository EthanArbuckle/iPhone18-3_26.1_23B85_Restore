@interface BatteryStateNotifier
+ (BOOL)disableUSBCharging;
+ (BOOL)enableUSBCharging;
+ (void)registerForBatteryEvents;
+ (void)unregisterForBatteryEvents;
@end

@implementation BatteryStateNotifier

+ (void)registerForBatteryEvents
{
  notification = 0;
  v2 = IONotificationPortCreate(kIOMainPortDefault);
  qword_10001F838 = v2;
  if (!v2)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000B5E8();
    }

    goto LABEL_11;
  }

  RunLoopSource = IONotificationPortGetRunLoopSource(v2);
  if (!RunLoopSource)
  {
    IONotificationPortDestroy(qword_10001F838);
    qword_10001F838 = 0;
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000B5B4();
    }

LABEL_11:

    return;
  }

  v4 = RunLoopSource;
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, v4, kCFRunLoopCommonModes);
  v6 = qword_10001F838;
  v7 = IOServiceMatching("IOPMPowerSource");
  LODWORD(v6) = IOServiceAddMatchingNotification(v6, "IOServiceFirstMatch", v7, sub_1000063C0, &qword_10001F838, &notification);
  v8 = DiagnosticLogHandleForCategory();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000B580();
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Registered for battery status changes: added matching notification", v11, 2u);
    }

    sub_1000063C0(&qword_10001F838, notification);
  }

  IOObjectRelease(notification);
}

+ (void)unregisterForBatteryEvents
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Unregistering for battery status changes", v9, 2u);
  }

  if (dword_10001F840)
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B65C();
    }

    IOObjectRelease(dword_10001F840);
    dword_10001F840 = 0;
  }

  if (qword_10001F838)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(qword_10001F838);
    if (RunLoopSource)
    {
      v5 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopRemoveSource(Current, v5, kCFRunLoopCommonModes);
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B690();
      }
    }

    else
    {
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10000B6C4();
      }
    }

    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B6F8();
    }

    IONotificationPortDestroy(qword_10001F838);
    qword_10001F838 = 0;
  }
}

+ (BOOL)disableUSBCharging
{
  if (qword_10001F848)
  {
    v2 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      return 1;
    }

    LOWORD(v10) = 0;
    v3 = "Not disabling charging as it was already disabled.";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, &v10, 2u);
    goto LABEL_5;
  }

  v5 = IOPSLimitBatteryLevelRegister();
  if (v5)
  {
    v6 = v5;
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to acquire battery limit token. Reason: 0x%x", &v10, 8u);
    }

    return 0;
  }

  else
  {
    v8 = IOPSLimitBatteryLevel();
    v2 = DiagnosticLogHandleForCategory();
    v9 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      if (!v9)
      {
        goto LABEL_5;
      }

      LOWORD(v10) = 0;
      v3 = "Successfully disabled charging.";
      goto LABEL_4;
    }

    if (v9)
    {
      v10 = 67109120;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unable to disable charging. Reason: 0x%x", &v10, 8u);
    }

    IOPSLimitBatteryLevelCancel();
    result = 0;
    qword_10001F848 = 0;
  }

  return result;
}

+ (BOOL)enableUSBCharging
{
  if (!qword_10001F848)
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      v5 = "Not enabling charging as it was already enabled.";
      v6 = v3;
      v7 = 2;
      goto LABEL_7;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_12;
  }

  v2 = IOPSLimitBatteryLevelCancel();
  qword_10001F848 = 0;
  v3 = DiagnosticLogHandleForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v10[0] = 67109120;
      v10[1] = v2;
      v5 = "Unable to resume charging. Reason: 0x%x";
      v6 = v3;
      v7 = 8;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, v10, v7);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v4)
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Successfully enabled charging.", v10, 2u);
  }

  v8 = 1;
LABEL_12:

  return v8;
}

@end