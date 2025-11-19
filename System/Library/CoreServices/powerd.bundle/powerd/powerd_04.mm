uint64_t sub_10005F64C(const char *a1, _DWORD *a2)
{
  v4 = 3758097084;
  properties = 0;
  v5 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v5)
  {
    v6 = v5;
    if (!IORegistryEntryCreateCFProperties(v5, &properties, 0, 0))
    {
      v7 = CFStringCreateWithCStringNoCopy(0, a1, 0x8000100u, kCFAllocatorNull);
      TypeID = CFStringGetTypeID();
      if (v7)
      {
        if (CFGetTypeID(v7) == TypeID)
        {
          Value = CFDictionaryGetValue(properties, v7);
          if (Value)
          {
            v4 = 0;
            *a2 = *CFDataGetBytePtr(Value);
          }
        }

        CFRelease(v7);
      }
    }

    if (properties)
    {
      CFRelease(properties);
    }

    IOObjectRelease(v6);
  }

  return v4;
}

uint64_t sub_10005F748(const char *a1, char *a2, CFIndex a3)
{
  v6 = 3758097084;
  properties = 0;
  v7 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v7)
  {
    v8 = v7;
    if (!IORegistryEntryCreateCFProperties(v7, &properties, 0, 0))
    {
      v9 = CFStringCreateWithCStringNoCopy(0, a1, 0x8000100u, kCFAllocatorNull);
      TypeID = CFStringGetTypeID();
      if (v9)
      {
        if (CFGetTypeID(v9) == TypeID)
        {
          Value = CFDictionaryGetValue(properties, v9);
          v12 = CFStringGetTypeID();
          if (Value)
          {
            if (CFGetTypeID(Value) == v12)
            {
              if (CFStringGetCString(Value, a2, a3, 0x8000100u))
              {
                v6 = 0;
              }

              else
              {
                v6 = 3758097115;
              }
            }
          }
        }

        CFRelease(v9);
      }
    }

    if (properties)
    {
      CFRelease(properties);
    }

    IOObjectRelease(v8);
  }

  return v6;
}

uint64_t sub_10005F880(const char *a1, char *const *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v18 = 0;
  v17 = -1;
  posix_spawn_file_actions_init(&v18);
  posix_spawn_file_actions_addopen(&v18, 0, "/dev/null", 0, 0x1B6u);
  posix_spawn_file_actions_addopen(&v18, 1, "/dev/null", 1, 0x1B6u);
  posix_spawn_file_actions_addopen(&v18, 2, "/dev/null", 1, 0x1B6u);
  v8 = _NSGetEnviron();
  LODWORD(a2) = posix_spawn(&v17, a1, &v18, 0, a2, *v8);
  v9 = *__error();
  posix_spawn_file_actions_destroy(&v18);
  if (a2 == -1)
  {
    *__error() = v9;
    a4 = 0xFFFFFFFFLL;
  }

  else if (a4)
  {
    v10 = dispatch_source_create(&_dispatch_source_type_proc, v17, 0x80000000uLL, v7);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005FA14;
    v13[3] = &unk_10009AFD8;
    v16 = v17;
    v14 = v10;
    v15 = a4;
    v11 = v10;
    dispatch_source_set_event_handler(v11, v13);
    dispatch_activate(v11);

    a4 = 0;
  }

  return a4;
}

void sub_10005FA14(uint64_t a1)
{
  v2 = 0;
  waitpid(*(a1 + 48), &v2, 0);
  (*(a1 + 40))(*(a1 + 48), v2);
  dispatch_source_cancel(*(a1 + 32));
}

void sub_10005FA68(void *a1, const char *a2)
{
  v3 = a1;
  v4 = notify_post(a2);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10006E7E4(a2, v5, v3);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "posted '%s'\n", &v6, 0xCu);
  }
}

void sub_10005FB48(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_1000AD4F0;
  qword_1000AD4F0 = v1;

  v3 = qword_1000AD4F0;

  [v3 setCountLimit:50];
}

void start()
{
  v0 = sub_100002A58();
  dispatch_sync_f(v0, 0, sub_10005FBC4);
  dispatch_main();
}

uint64_t sub_10005FBC4()
{
  v0 = bootstrap_check_in(bootstrap_port, "com.apple.PowerManagement.control", &dword_1000AD530);
  v1 = sub_100002A58();
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", v1, 1uLL);
  v3 = sub_100002A58();
  xpc_connection_set_target_queue(mach_service, v3);
  xpc_connection_set_event_handler(mach_service, &stru_10009B058);
  xpc_connection_resume(mach_service);
  if (v0)
  {
    syslog(3, "PM configd: bootstrap_register %s error = %d\n", "com.apple.PowerManagement.control", v0);
  }

  if (dword_1000AD530)
  {
    sub_100002A58();
    qword_1000AD538 = dispatch_mach_create_f();
    dispatch_mach_connect();
  }

  sub_10005DCB0();
  sub_10003E890();
  sub_100002A58();
  qword_1000AC9B0 = IOPMRegisterPrefsChangeNotification();
  notification = 0;
  v4 = IONotificationPortCreate(0);
  v5 = IOServiceMatching("IODTNVRAM");
  if (!IOServiceAddMatchingNotification(v4, "IOServiceFirstMatch", v5, sub_1000606A4, v4, &notification))
  {
    sub_1000606A4(v4, notification);
  }

  out_token = 0;
  state64[0] = 0;
  v6 = sub_100002A58();
  notify_register_dispatch("com.apple.iokit.hid.displayStatus", &out_token, v6, &stru_10009B0A0);
  notify_get_state(out_token, state64);
  byte_1000AD518 = state64[0] == 0;
  v7 = sub_100002A58();
  IONotificationPortSetDispatchQueue(v4, v7);
  qword_1000AD558 = CFStringCreateWithCString(kCFAllocatorDefault, "NSSystemTimeZoneDidChangeDistributedNotification", 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100060854, qword_1000AD558, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  sub_1000601D8();
  LODWORD(state64[0]) = 0;
  if (!mach_port_allocate(mach_task_self_, 1u, state64))
  {
    v9 = mach_host_self();
    if (!host_request_notification(v9, 0, state64[0]))
    {
      sub_100002A58();
      qword_1000AD560 = dispatch_mach_create_f();
      dispatch_mach_connect();
    }
  }

  LODWORD(state64[0]) = 0;
  sub_10005DF60(@"System Shutdown", kCFBooleanFalse);
  notify_register_mach_port("com.apple.system.power.CPU", state64, 0, &dword_1000AD570);
  notify_register_mach_port("com.apple.system.loginwindow.shutdownInitiated", state64, 1, &dword_1000AD574);
  notify_register_mach_port("com.apple.system.loginwindow.restartinitiated", state64, 1, &dword_1000AD578);
  notify_register_mach_port("com.apple.system.loginwindow.logoutcancelled", state64, 1, &dword_1000AD57C);
  notify_register_mach_port("com.apple.system.loginwindow.logoutNoReturn", state64, 1, &dword_1000AD580);
  notify_register_mach_port("com.apple.system.loginwindow.sulogoutinitiated", state64, 1, &dword_1000AD584);
  sub_100002A58();
  qword_1000AD568 = dispatch_mach_create_f();
  dispatch_mach_connect();
  LODWORD(state64[0]) = 0;
  v10 = IORegistryEntryFromPath(kIOMainPortDefault, "IOPower:/IOPowerConnection/IOPMrootDomain");
  if (v10)
  {
    v11 = v10;
    v12 = IONotificationPortCreate(0);
    if (v12)
    {
      v13 = v12;
      if (!IOServiceAddInterestNotification(v12, v11, "IOGeneralInterest", sub_10001ACB4, 0, state64))
      {
        v14 = sub_100002A58();
        IONotificationPortSetDispatchQueue(v13, v14);
      }
    }

    IOObjectRelease(v11);
  }

  sub_100037CFC();
  sub_10004A3AC();
  state64[0] = 0;
  notification = 0;
  dword_1000AD514 = IORegisterForSystemPower(0, state64, sub_100019D08, &notification);
  if (dword_1000AD514)
  {
    v15 = state64[0];
    if (state64[0])
    {
      v16 = sub_100002A58();
      IONotificationPortSetDispatchQueue(v15, v16);
    }
  }

  sub_1000605B4();
  sub_1000420A4();
  sub_1000575B0();
  sub_1000407D8();
  sub_100053B48();
  sub_100055A58();
  sub_10005CC8C();
  sub_10003031C();
  sub_10005C634();
  sub_1000583C4();
  sub_10002AEC4();
  v17 = sub_10004B650(0, 0);
  nullsub_3(v17, v18);
  pthread_set_qos_class_self_np(QOS_CLASS_USER_INITIATED, 0);
  pthread_set_fixedpriority_self();
  sub_1000424E4();
  if (objc_opt_class())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10006E85C();
    }

    qword_1000AD540 = +[PMLowPowerModeService sharedInstance];
  }

  if (objc_opt_class())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state64[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Initializing SmartPowerNap service", state64, 2u);
    }

    qword_1000AD548 = +[PMSmartPowerNapService sharedInstance];
  }

  if (objc_opt_class())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state64[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Initializing CoreSmartPowerNap service", state64, 2u);
    }

    qword_1000AD550 = +[PMCoreSmartPowerNapService sharedInstance];
  }

  if ([+[USBDeviceMode start]&& os_log_type_enabled(&_os_log_default sharedInstance]
  {
    LOWORD(state64[0]) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Initializing USBDeviceMode notifications", state64, 2u);
  }

  sub_100056100();
  return notify_post("com.apple.system.powermanagement.assertionresync");
}

void sub_1000601D8()
{
  CFTimeZoneResetSystem();
  v0 = CFTimeZoneCopySystem();
  if (v0)
  {
    v1 = v0;
    Current = CFAbsoluteTimeGetCurrent();
    valuePtr = CFTimeZoneGetSecondsFromGMT(v1, Current);
    v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      sub_10005DF60(@"TimeZoneOffsetSeconds", v3);
      CFRelease(v1);
      v1 = v4;
    }

    CFRelease(v1);
  }
}

uint64_t sub_10006025C(intptr_t type, int a2)
{
  if (a2)
  {
    v3 = dword_1000AD514;

    return IOAllowPowerChange(v3, type);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cancelling sleep due to async assertions\n", v5, 2u);
    }

    sub_10001A238(1);
    return IOCancelPowerChange(dword_1000AD514, type);
  }
}

uint64_t sub_100060310(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, _DWORD *a5)
{
  *pidp = 0;
  v9 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v9;
  audit_token_to_au32(&atoken, 0, 0, 0, &pidp[1], 0, pidp, 0, 0);
  *a5 = 0;
  switch(a3)
  {
    case 9:
      v11 = a2[1];
      *atoken.val = *a2;
      *&atoken.val[4] = v11;
      if (sub_1000064E4(&atoken, @"com.apple.private.iokit.reservepower-control"))
      {
        *a5 = sub_100050F9C(a4);
      }

      else
      {
        *a5 = -536870207;
      }

      break;
    case 8:
      sub_10000D2DC(pidp[0], a4);
      break;
    case 7:
      nullsub_3(a4, v10);
      break;
  }

  return 0;
}

uint64_t sub_1000603F4(uint64_t a1, _OWORD *a2, uint64_t a3, _DWORD *a4)
{
  ruidp = 0;
  v5 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v5;
  audit_token_to_au32(&atoken, 0, 0, 0, &ruidp, 0, 0, 0, 0);
  *a4 = 0;
  return 0;
}

uint64_t sub_100060458(uint64_t a1, _OWORD *a2, const char *a3, unsigned int a4, int *a5)
{
  v8 = -536870206;
  euidp = 0;
  v9 = a2[1];
  *atoken.val = *a2;
  *&atoken.val[4] = v9;
  audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, 0, 0, 0);
  if (euidp)
  {
    *a5 = -536870207;
  }

  else
  {
    v10 = IOCFUnserialize(a3, 0, 0, 0);
    TypeID = CFDictionaryGetTypeID();
    if (v10)
    {
      if (CFGetTypeID(v10) == TypeID)
      {
        v8 = sub_100057800(v10);
      }

      *a5 = v8;
      CFRelease(v10);
    }

    else
    {
      *a5 = -536870206;
    }
  }

  vm_deallocate(mach_task_self_, a3, a4);
  return 0;
}

uint64_t sub_100060558(uint64_t a1, void *a2, _DWORD *a3, void *a4, _DWORD *a5, int *a6)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  if (byte_1000AD510)
  {
    v6 = -536870184;
  }

  else
  {
    v6 = 0;
    *a2 = qword_1000AD520;
    *a3 = 8;
    *a4 = qword_1000AD528;
    *a5 = 8;
  }

  *a6 = v6;
  return 0;
}

const void *sub_1000605B4()
{
  result = sub_10001B168();
  if (result)
  {
    v1 = result;
    memset(out, 0, sizeof(out));
    memset(v2, 0, sizeof(v2));
    uuid_generate(out);
    uuid_unparse_upper(out, v2);
    if (qword_1000AD598)
    {
      CFRelease(qword_1000AD598);
      qword_1000AD598 = 0;
    }

    result = CFStringCreateWithCString(0, v2, 0x8000100u);
    qword_1000AD598 = result;
    if (result)
    {
      return IORegistryEntrySetCFProperty(v1, @"SleepWakeUUID", result);
    }
  }

  return result;
}

void sub_100060678(id a1)
{
  sub_100057730();
  nullsub_3(v1, v2);

  sub_10005CE9C();
}

uint64_t sub_1000606A4(IONotificationPort *a1, io_iterator_t iterator)
{
  notification = 0;
  result = IOIteratorNext(iterator);
  if (result)
  {
    CFProperty = IORegistryEntryCreateCFProperty(result, @"aapl,panic-info", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(iterator);
    v6 = IOServiceMatching("AppleSMC");
    result = IOServiceAddMatchingNotification(a1, "IOServiceFirstMatch", v6, sub_100060798, a1, &notification);
    if (!result)
    {
      return sub_100060798(0, notification);
    }
  }

  return result;
}

void sub_100060750(id a1, int a2)
{
  state64 = 0;
  notify_get_state(a2, &state64);
  byte_1000AD518 = state64 == 0;
  sub_10005D168(state64 == 0);
  sub_10005EC98();
}

uint64_t sub_100060798(int a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    CFProperty = IORegistryEntryCreateCFProperty(result, @"ShutdownCause", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      if (CFStringGetCString(CFProperty, v7, 8, 0))
      {
        v6 = strtol(v7, 0, 10);
        sub_10005E950(v6);
      }

      CFRelease(v5);
    }

    return IOObjectRelease(iterator);
  }

  return result;
}

void sub_100060854(int a1, int a2, CFTypeRef cf1)
{
  if (CFEqual(cf1, qword_1000AD558))
  {

    sub_1000601D8();
  }
}

void sub_100060894(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return;
  }

  msg = dispatch_mach_msg_get_msg();
  msgh_id = msg->msgh_id;
  if (msgh_id == dword_1000AD570)
  {
    sub_10005CF74(0);
  }

  else
  {
    if (msgh_id == dword_1000AD584)
    {
      v5 = 5;
    }

    else if (msgh_id == dword_1000AD574 || msgh_id == dword_1000AD578)
    {
      byte_1000AD588 = 1;
      v5 = 2;
    }

    else if (msgh_id == dword_1000AD57C)
    {
      byte_1000AD588 = 0;
      v5 = 1;
    }

    else
    {
      if (byte_1000AD588 != 1 || msgh_id != dword_1000AD580)
      {
        goto LABEL_11;
      }

      sub_10005DF60(@"System Shutdown", kCFBooleanTrue);
      v5 = 4;
    }

    dword_1000AB7C8 = v5;
  }

LABEL_11:
  if (dword_1000AD58C != dword_1000AB7C8)
  {
    v6 = CFNumberCreate(0, kCFNumberIntType, &dword_1000AB7C8);
    if (v6)
    {
      v7 = v6;
      sub_10005DF60(@"ConsoleShutdown", v6);
      CFRelease(v7);
    }

    dword_1000AD58C = dword_1000AB7C8;
  }

  mach_msg_destroy(msg);
}

void sub_100060A08(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

uint64_t sub_100060A24(mach_port_t a1, int a2, uint64_t a3, int a4)
{
  v11 = 1;
  v12 = a3;
  v13 = 16777472;
  v14 = a4;
  v15 = NDR_record;
  v16 = a2;
  v17 = a4;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0xEA6000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x3Cu, 0x2Cu, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v8;
  }

  if (v7)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v8;
  }

  if (msg.msgh_id == 71)
  {
    v8 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v8;
  }

  if (msg.msgh_id != 60100)
  {
    v8 = 4294966995;
    goto LABEL_18;
  }

  v8 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v8 = HIDWORD(v12);
  if (HIDWORD(v12))
  {
    goto LABEL_18;
  }

  return v8;
}

uint64_t sub_100060BA0(mach_port_t a1, int a2, void *a3, _DWORD *a4)
{
  memset(&v14[1] + 4, 0, 28);
  msg.msgh_size = 0;
  v14[0] = NDR_record;
  LODWORD(v14[1]) = a2;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0xEA6100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&msg, 3, 0x24u, 0x40u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 60101)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v10 = 4294966996;
          if (LODWORD(v14[0]) == 1 && msg.msgh_size == 56 && !msg.msgh_remote_port && HIBYTE(v14[1]) == 1)
          {
            v11 = v14[2];
            if (LODWORD(v14[2]) == HIDWORD(v14[3]))
            {
              v10 = 0;
              *a3 = *(v14 + 4);
              *a4 = v11;
              return v10;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v10 = 4294966996;
          if (LODWORD(v14[1]))
          {
            if (msg.msgh_remote_port)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v14[1]);
            }
          }
        }

        else
        {
          v10 = 4294966996;
        }
      }

      else
      {
        v10 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v10;
}

uint64_t sub_100060D80(mach_port_t a1, int a2, void *a3, _DWORD *a4)
{
  memset(&v14[1] + 4, 0, 28);
  msg.msgh_size = 0;
  v14[0] = NDR_record;
  LODWORD(v14[1]) = a2;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0xEA6200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&msg, 3, 0x24u, 0x40u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 60102)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v10 = 4294966996;
          if (LODWORD(v14[0]) == 1 && msg.msgh_size == 56 && !msg.msgh_remote_port && HIBYTE(v14[1]) == 1)
          {
            v11 = v14[2];
            if (LODWORD(v14[2]) == HIDWORD(v14[3]))
            {
              v10 = 0;
              *a3 = *(v14 + 4);
              *a4 = v11;
              return v10;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v10 = 4294966996;
          if (LODWORD(v14[1]))
          {
            if (msg.msgh_remote_port)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v14[1]);
            }
          }
        }

        else
        {
          v10 = 4294966996;
        }
      }

      else
      {
        v10 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v10;
}

uint64_t sub_100060F60(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 73036) >= 0xFFFFFFDC)
  {
    return *(&off_10009B0C0 + 5 * (v1 - 73000) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100060FA0(uint64_t result, uint64_t a2)
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
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v6;
  result = sub_1000603F4(v4, v7, v5, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_10006105C(uint64_t result, uint64_t a2)
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
  result = sub_100060310(v4, v8, v5, v6, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100061118(uint64_t result, uint64_t a2)
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
  result = sub_100060458(v5, v8, v6, v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100061204(uint64_t result, uint64_t a2)
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
  result = sub_10003ED2C(v5, v9, v6, v3, v7, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_1000612F4(_DWORD *result, uint64_t a2)
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
  result = sub_10003F278(v5, v7, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_1000613A8(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777472;
  *(a2 + 52) = 16777472;
  result = sub_100060558(result[3], (a2 + 28), (a2 + 68), (a2 + 44), (a2 + 72), (a2 + 76));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  v3 = *(a2 + 72);
  *(a2 + 40) = *(a2 + 68);
  *(a2 + 56) = v3;
  *(a2 + 60) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 80;
  *(a2 + 24) = 2;
  return result;
}

uint64_t sub_100061460(uint64_t result, uint64_t a2)
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
  v7 = *(v3 + 52);
  v8 = *(v3 + 28);
  v9 = *(v3 + 100);
  v10[0] = *(v3 + 84);
  v10[1] = v9;
  result = sub_10005014C(v6, v10, v7, v8, v4, (v3 + 60), (a2 + 40), (a2 + 44));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 36) = *(v3 + 60);
    *(a2 + 4) = 48;
  }

  return result;
}

uint64_t sub_100061560(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || (v3 = result, *(result + 24) != 1) || *(result + 4) != 60)
  {
    v5 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v4 = *(result + 40), v4 != *(result + 52)))
  {
    v5 = -300;
    goto LABEL_10;
  }

  if (*(result + 60) || *(result + 64) <= 0x1Fu)
  {
    v5 = -309;
LABEL_10:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v6 = *(result + 12);
  v7 = *(v3 + 28);
  v8 = *(v3 + 96);
  v9[0] = *(v3 + 80);
  v9[1] = v8;
  result = sub_1000503F8(v6, v9, v7, v4, (v3 + 56), (a2 + 40), (a2 + 44));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 36) = *(v3 + 56);
    *(a2 + 4) = 48;
  }

  return result;
}

_DWORD *sub_10006165C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v5 = 0;
    result = sub_10004AE0C(result[3], result[8], (a2 + 44), &v5);
    *(a2 + 32) = result;
    v3 = NDR_record;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      result = strlen((a2 + 44));
      if ((result + 1) >> 32)
      {
        *(a2 + 32) = -304;
        *(a2 + 24) = v3;
      }

      else
      {
        *(a2 + 36) = 0;
        *(a2 + 40) = result + 1;
        v4 = (result + 4) & 0xFFFFFFFC;
        *(a2 + 4) = v4 + 48;
        *(a2 + v4 + 44) = v5;
      }
    }
  }

  return result;
}

const char *sub_10006172C(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = *(result + 1), v4 - 1069 < 0xFFFFFBFF) || (v5 = *(result + 9), v5 > 0x400) || ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 44 >= v5) ? (v7 = v4 == v6 + 44) : (v7 = 0), !v7 || (v4 >= 0x428 ? (v8 = 1064) : (v8 = v4), (result = memchr((result + 40), 0, v8 - 40)) == 0)))
  {
    v10 = -304;
    goto LABEL_17;
  }

  v9 = &v3[(v4 + 3) & 0xFFC];
  if (*v9 || *(v9 + 1) <= 0x1Fu)
  {
    v10 = -309;
LABEL_17:
    *(a2 + 32) = v10;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v11 = *(v3 + 3);
  v12 = *&v3[v6 + 40];
  v13 = *(v9 + 36);
  v14[0] = *(v9 + 20);
  v14[1] = v13;
  result = sub_10004A6D4(v11, v14, v3 + 40, v12, (a2 + 36), (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_100061854(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v3 = -304;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_9;
  }

  if (*(result + 56) || *(result + 60) <= 0x1Fu)
  {
    v3 = -309;
LABEL_9:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 48);
  v7 = *(result + 52);
  v8 = *(result + 92);
  v9[0] = *(result + 76);
  v9[1] = v8;
  result = sub_10004A800(v4, v9, v6, v5, v7, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_100061938(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10004AB94(result[3], result[8], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_1000619BC(uint64_t result, uint64_t a2)
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
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 52);
  v6 = *(result + 56);
  v7 = *(result + 28);
  v8 = *(result + 84);
  v9 = *(result + 100);
  result = sub_10004ACFC();
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_100061AAC(_DWORD *result, uint64_t a2)
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
  result = sub_100042FFC(v5, v7, a2 + 36, (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_100061B64(uint64_t result, uint64_t a2)
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
  result = sub_1000435C4(v5, v9, v6, v7, v3, a2 + 36);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100061C54(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    result = 4294966992;
  }

  else if (*(a1 + 36) || *(a1 + 40) < 0x20u)
  {
    result = 4294966987;
  }

  else
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 32);
    v6 = *(a1 + 72);
    v7[0] = *(a1 + 56);
    v7[1] = v6;
    result = sub_1000441C0(v4, v7, v5);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100061CEC(uint64_t result, uint64_t a2)
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
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v6;
  result = sub_100049498(v4, v7, v5, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_100061DA8(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_100049820(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100061E54(uint64_t result, uint64_t a2)
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
  result = sub_10004AD04(v4, v8, v5, v6, (a2 + 36), (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_100061F14(uint64_t result, uint64_t a2)
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
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v6;
  result = sub_10004ADE8(v4, v7, v5, (a2 + 36), (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_100061FD4(uint64_t result, uint64_t a2)
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
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v6;
  result = sub_10004ADF8(v4, v7, v5, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100062090(uint64_t result, uint64_t a2)
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
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v6;
  result = sub_1000500A0(v4, v7, v5, (a2 + 36), (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_100062150(uint64_t result, uint64_t a2)
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
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v6;
  result = sub_10004AE78(v4, v7, v5, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

const char *sub_10006220C(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = *(result + 1), v4 - 1069 < 0xFFFFFBFF) || (v5 = *(result + 9), v5 > 0x400) || ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 44 >= v5) ? (v7 = v4 == v6 + 44) : (v7 = 0), !v7 || (v4 >= 0x428 ? (v8 = 1064) : (v8 = v4), (result = memchr((result + 40), 0, v8 - 40)) == 0)))
  {
    v10 = -304;
    goto LABEL_17;
  }

  v9 = &v3[(v4 + 3) & 0xFFC];
  if (*v9 || *(v9 + 1) <= 0x1Fu)
  {
    v10 = -309;
LABEL_17:
    *(a2 + 32) = v10;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v11 = *(v3 + 3);
  v12 = *&v3[v6 + 40];
  v13 = *(v9 + 36);
  v14[0] = *(v9 + 20);
  v14[1] = v13;
  result = sub_10004EB90(v11, v14, v3 + 40, v12, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

const char *sub_100062330(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = *(result + 1), v4 - 1069 < 0xFFFFFBFF) || (v5 = *(result + 9), v5 > 0x400) || ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 44 >= v5) ? (v7 = v4 == v6 + 44) : (v7 = 0), !v7 || (v4 >= 0x428 ? (v8 = 1064) : (v8 = v4), (result = memchr((result + 40), 0, v8 - 40)) == 0)))
  {
    v10 = -304;
    goto LABEL_17;
  }

  v9 = &v3[(v4 + 3) & 0xFFC];
  if (*v9 || *(v9 + 1) <= 0x1Fu)
  {
    v10 = -309;
LABEL_17:
    *(a2 + 32) = v10;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v11 = *(v3 + 3);
  v12 = *&v3[v6 + 40];
  v13 = *(v9 + 36);
  v14[0] = *(v9 + 20);
  v14[1] = v13;
  result = sub_1000506EC(v11, v14, v3 + 40, v12, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_100062454(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, result[1] != 36))
  {
    v4 = -304;
    goto LABEL_7;
  }

  if (result[9] || result[10] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v5 = result[3];
  v6 = *(v3 + 18);
  v7[0] = *(v3 + 14);
  v7[1] = v6;
  result = sub_10004D410(v5, v7, (a2 + 28), (a2 + 52), v3 + 8, (a2 + 60), (a2 + 64));
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *(a2 + 56) = v3[8];
    *a2 |= 0x80000000;
    *(a2 + 4) = 68;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10006254C(uint64_t result, uint64_t a2)
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
  result = sub_1000507BC(v5, v8, v6, v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100062638(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 73036) >= 0xFFFFFFDC && (v5 = *(&off_10009B0C0 + 5 * (v4 - 73000) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

void sub_100062770(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Connection not present for client %@", &v3, 0xCu);
}

void sub_100062814()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062864(void *a1, void *a2)
{
  v3 = a1;
  [a2 delta_to_query];
  v5 = 134218240;
  v6 = v4;
  v7 = 1024;
  v8 = [a2 plugin_state];
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "SmartPowerNap: setting timer to fire after %.2f seconds (PluggedIn=%u)", &v5, 0x12u);
}

void sub_100062A18()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062A54()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062A90()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062ACC()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100062BBC()
{
  sub_100018BF0();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100062C2C()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100062C9C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062CD8()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062D14()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100062D84()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100062E74()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062EB0()
{
  sub_100025F98();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100062F24()
{
  sub_100025F98();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100062F98()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062FD4()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100063044()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100063080()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000630BC()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000630F8()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100063134()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000631FC()
{
  sub_10001C0B0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063278()
{
  sub_10001C0B0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000632F4()
{
  sub_10001C0B0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063370()
{
  sub_10001C0B0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10006346C()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000634DC()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063560()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000635E4(void *a1, void *a2)
{
  v3 = a1;
  [a2 processIdentifier];
  sub_100018BFC();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "LPM: listener: rejected new connection from PID %d (no entitlement)\n", v4, 8u);
}

void sub_100063718(unsigned __int8 *a1, uint64_t *a2)
{
  v7 = *a1;
  v8 = *a2;
  sub_100018C08();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000637A0()
{
  sub_100018BFC();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1000638B8()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100063928()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100063964()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100063A34(uint64_t a1)
{
  v6 = *(a1 + 24);
  sub_100018C08();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100063B08(void *a1)
{
  v1 = a1;
  v2 = 136315138;
  v3 = [@"com.apple.powerd.batterytrusteddata.dailytaskQueue" UTF8String];
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to create queue %s", &v2, 0xCu);
}

uint64_t sub_100063D44()
{
  dlerror();
  v0 = abort_report_np();
  return sub_100063D68(v0);
}

void sub_1000640D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Sync Remote Location Error %@", &v2, 0xCu);
}

void sub_100064320()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064554()
{
  sub_100018BF0();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000645F8()
{
  sub_100018BF0();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064668()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064740(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "New cycle count: %d. Previous cycle count at which data is saved: %d\n", v3, 0xEu);
}

void sub_1000647C8(int *a1)
{
  v6 = *a1;
  sub_10001C010();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_100064C88()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100064CD8()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100064D14()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100064D50(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Restoring state from disk:%@\n", &v2, 0xCu);
}

void sub_100064DC8()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100064E38(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Current boot session UUID: %@", &v2, 0xCu);
}

void sub_100064EB0()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100064F20()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100064F90()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100065000(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 64);
  sub_10001C050();
  sub_100018BD8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000650A0(void *a1, void *a2)
{
  v3 = a1;
  [a2 delta_to_query];
  v5 = 134217984;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "CoreSmartPowerNap: setting timer to fire after %.2f seconds", &v5, 0xCu);
}

void sub_1000651B4()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000651F0()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100065348()
{
  sub_100018BF0();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000653EC()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100065560(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectForKeyedSubscript:@"sessionDurationHrFloat"];
  [v4 doubleValue];
  sub_100018C38();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10006560C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectForKeyedSubscript:@"predictedDurationHrFloat"];
  [v4 doubleValue];
  sub_100018C38();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1000656B8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectForKeyedSubscript:@"predictedDurationHrFloat"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [a2 objectForKeyedSubscript:@"sessionDurationHrFloat"];
  [v7 doubleValue];
  v9 = 134218240;
  v10 = v6;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Session interrupted but predicted duration (%.2f hours) < session duration (%.2f hours)", &v9, 0x16u);
}

void sub_1000657E0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectForKeyedSubscript:@"entryConfidenceValueInt"];
  [v4 intValue];
  sub_100018C38();
  _os_log_error_impl(v5, v6, v7, v8, v9, 8u);
}

void sub_1000659F8(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to get times: %i", v1, 8u);
}

void sub_100065B58(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid type\n", buf, 2u);
}

void sub_100065B98(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSFileManager defaultManager];
  v4 = os_transaction_create();
  if ([objc_loadWeak((a1 + 40)) collectAtSBC])
  {
    v5 = sub_100042604();
    v6 = qword_1000AB7E8;
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = dword_1000AB1BC;
      *&buf[8] = 1024;
      *&buf[10] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Battery percentage last %d now %d", buf, 0xEu);
    }

    if (dword_1000AB1BC == v5)
    {
      goto LABEL_93;
    }

    dword_1000AB1BC = v5;
  }

  v7 = [objc_loadWeak((a1 + 40)) createDataDictCollectionBlock];
  v81 = @"DataColumnNames";
  v82 = [objc_loadWeak((a1 + 40)) columnNames];
  v8 = v7[2](v7, [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1]);
  if (!v8)
  {
    if (sub_10003E824())
    {
      *buf = 0;
      sub_10003E7EC();
      _os_log_error_impl(v64, v65, v66, v67, v68, v69);
    }

LABEL_93:
    v31 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_86;
  }

  v9 = v8;
  if ([*(a1 + 32) skipCSVAndUsePowerlog])
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_42;
  }

  v12 = [qword_1000ACBD8 stringForKey:{objc_msgSend(objc_loadWeak((a1 + 40)), "getLastUsedDataFileNameDefaultsKey")}];
  v76 = v4;
  if (![sub_10003E878() fileExistsAtPath:?])
  {
    goto LABEL_12;
  }

  v13 = -[NSString containsString:](v12, "containsString:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"version%@", [objc_loadWeak((a1 + 40)) formatVersion]));
  if (([objc_loadWeak((a1 + 40)) collectOnce] & 1) == 0)
  {
    v16 = [sub_10003E878() attributesOfItemAtPath:? error:?];
    -[NSDate timeIntervalSinceDate:](+[NSDate now](NSDate, "now"), "timeIntervalSinceDate:", [v16 objectForKeyedSubscript:NSFileCreationDate]);
    v18 = v17;
    v19 = [v16 objectForKeyedSubscript:NSFileProtectionKey];
    if (NSFileProtectionCompleteUntilFirstUserAuthentication == v19 || NSFileProtectionNone == v19)
    {
      v21 = NSFileProtectionCompleteUntilFirstUserAuthentication == [v16 objectForKeyedSubscript:NSFileProtectionKey] && MKBDeviceUnlockedSinceBoot() == 0;
    }

    else
    {
      if (sub_10003E824())
      {
        sub_10000E654();
        *&buf[12] = 2112;
        *&buf[14] = v12;
        sub_10003E7F8();
        _os_log_error_impl(v44, v45, v46, v47, v48, 0x16u);
      }

      v21 = 1;
    }

    v14 = [objc_msgSend(objc_loadWeak((a1 + 40)) "collationPeriod")] <= v18 || v21;
    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_25:
    v15 = [objc_loadWeak((a1 + 40)) batteryChanged] | v14;
    goto LABEL_26;
  }

  v14 = 0;
  if (v13)
  {
    goto LABEL_25;
  }

LABEL_12:
  v15 = 1;
LABEL_26:
  if ([objc_loadWeak((a1 + 40)) collectOnce] && (v15 & 1) == 0)
  {
    v56 = qword_1000AB7E8;
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [objc_loadWeak((a1 + 40)) dataGroupName];
      *buf = 138412290;
      *&buf[4] = v57;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Data already collected for %@", buf, 0xCu);
    }

    v31 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_100;
  }

  if (v15)
  {
    v10 = objc_alloc_init(NSDateFormatter);
    [v10 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
    [v10 setTimeZone:{+[NSTimeZone timeZoneWithAbbreviation:](NSTimeZone, "timeZoneWithAbbreviation:", @"GMT"}];
    v23 = [objc_loadWeak((a1 + 40)) dirPath];
    v24 = [objc_loadWeak((a1 + 40)) dataGroupName];
    v25 = [objc_loadWeak((a1 + 40)) formatVersion];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@_version%@_%@.csv", v23, v24, v25, [v10 stringFromDate:sub_10000E288()]);
    v26 = qword_1000AB7E8;
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [objc_loadWeak((a1 + 40)) dataGroupName];
      *buf = 138412546;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ Rolling over to new file %@", buf, 0x16u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (([sub_10003E878() fileExistsAtPath:?] & 1) == 0)
  {
    v78 = 0;
    v28 = sub_100039FB4(@"BDC_Data_Storage_Path", 3u);
    if ([(NSFileManager *)v3 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:&v78])
    {
      if ([sub_10003E878() createFileAtPath:? contents:? attributes:?])
      {
        [qword_1000ACBD8 setObject:v12 forKey:{objc_msgSend(objc_loadWeak((a1 + 40)), "getLastUsedDataFileNameDefaultsKey")}];
        -[NSString writeToFile:atomically:encoding:error:](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@", [objc_msgSend(v9 objectForKeyedSubscript:{@"OrderedKeys", "componentsJoinedByString:", @", "}], @"\n"), "writeToFile:atomically:encoding:error:", v12, 1, 4, 0);
        goto LABEL_36;
      }

      if (!sub_10003E824())
      {
LABEL_104:
        v31 = 0;
        v11 = 0;
        v4 = v76;
        goto LABEL_86;
      }

      *buf = 138412290;
      *&buf[4] = v12;
      sub_10003E7F8();
      v63 = 12;
    }

    else
    {
      if (!os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_104;
      }

      *buf = 138412546;
      *&buf[4] = v28;
      sub_10003E854();
      sub_10003E864();
    }

    _os_log_error_impl(v58, v59, v60, v61, v62, v63);
    goto LABEL_104;
  }

LABEL_36:
  v11 = [NSFileHandle fileHandleForWritingAtPath:v12];
  [(NSFileHandle *)v11 seekToEndOfFile];
  v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@", [objc_msgSend(v9 objectsForKeys:objc_msgSend(v9 notFoundMarker:{"objectForKeyedSubscript:", @"OrderedKeys", &stru_10009BE60), "componentsJoinedByString:", @", "}], @"\n");
  v78 = 0;
  if (![(NSFileHandle *)v11 writeData:[(NSString *)v29 dataUsingEncoding:4] error:&v78])
  {
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v12;
      sub_10003E854();
      sub_10003E864();
      _os_log_error_impl(v70, v71, v72, v73, v74, v75);
    }

    v31 = 0;
LABEL_100:
    v4 = v76;
    goto LABEL_86;
  }

  if (v15)
  {
    v79 = NSFileProtectionKey;
    v80 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    if (![(NSFileManager *)v3 setAttributes:[NSDictionary dictionaryWithObjects:&v79 forKeys:1 count:?], v12, &v78])
    {
      v30 = qword_1000AB7E8;
      if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v12;
        sub_10003E854();
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to encrypt file %@ error %@", buf, 0x16u);
      }
    }
  }

  v4 = v76;
LABEL_42:
  v31 = [v9 mutableCopy];
  [v31 removeObjectForKey:@"OrderedKeys"];
  [v31 removeObjectForKey:@"TimeStamp"];
  v32 = [objc_loadWeak((a1 + 40)) dataGroupName];
  v33 = [objc_loadWeak((a1 + 40)) collectionQueue];
  if (!sub_10000DF94())
  {
    if (!sub_10003E824())
    {
      goto LABEL_84;
    }

    *buf = 0;
    goto LABEL_54;
  }

  if (!sub_10000DF94() || !sub_10000E064() || !sub_10000DF94() || !sub_10000E150())
  {
    if (!sub_10003E824())
    {
      goto LABEL_84;
    }

    *buf = 0;
LABEL_54:
    sub_10003E7EC();
LABEL_55:
    _os_log_error_impl(v38, v39, v40, v41, v42, v43);
    goto LABEL_84;
  }

  v77 = v4;
  if ([v32 isEqualToString:@"BDC_Once"])
  {
    v34 = v2;
    v35 = &qword_1000ACBE0;
    v36 = qword_1000ACBE0;
    if (!qword_1000ACBE0)
    {
      v37 = @"BDC_Once";
      goto LABEL_74;
    }

LABEL_78:
    v49 = qword_1000AB7E8;
    if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000E654();
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Sending data to powerlog for group %@", buf, 0xCu);
    }

    if ([v32 isEqualToString:@"BDC_Once"])
    {
      v50 = dispatch_time(0, 600000000000);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10003E60C;
      v84 = &unk_10009A028;
      v85 = v31;
      v86 = v36;
      dispatch_after(v50, v33, buf);
    }

    else
    {
      sub_10000E23C(v36, v31);
    }

    v2 = v34;
    v4 = v77;
    goto LABEL_84;
  }

  if ([v32 isEqualToString:@"BDC_Daily"])
  {
    v34 = v2;
    v35 = &qword_1000ACBE8;
    v36 = qword_1000ACBE8;
    if (qword_1000ACBE8)
    {
      goto LABEL_78;
    }

    v37 = @"BDC_Daily";
LABEL_74:
    v36 = sub_10003E5C0(v37);
    *v35 = v36;
    if (!v36)
    {
      if (sub_10003E824())
      {
        sub_10000E654();
        sub_10003E7F8();
        _os_log_error_impl(v51, v52, v53, v54, v55, 0xCu);
      }

      v36 = 0;
    }

    goto LABEL_78;
  }

  if ([v32 isEqualToString:@"BDC_Weekly"])
  {
    v34 = v2;
    v35 = &qword_1000ACBF0;
    v36 = qword_1000ACBF0;
    if (qword_1000ACBF0)
    {
      goto LABEL_78;
    }

    v37 = @"BDC_Weekly";
    goto LABEL_74;
  }

  if ([v32 isEqualToString:@"BDC_SBC"])
  {
    v34 = v2;
    v35 = &qword_1000ACBF8;
    v36 = qword_1000ACBF8;
    if (qword_1000ACBF8)
    {
      goto LABEL_78;
    }

    v37 = @"BDC_SBC";
    goto LABEL_74;
  }

  if ([v32 isEqualToString:@"BDC_OBC"])
  {
    v34 = v2;
    v35 = &qword_1000ACC00;
    v36 = qword_1000ACC00;
    if (qword_1000ACC00)
    {
      goto LABEL_78;
    }

    v37 = @"BDC_OBC";
    goto LABEL_74;
  }

  if ([v32 isEqualToString:@"BDC_AMA"])
  {
    v34 = v2;
    v35 = &qword_1000ACC08;
    v36 = qword_1000ACC08;
    if (qword_1000ACC08)
    {
      goto LABEL_78;
    }

    v37 = @"BDC_AMA";
    goto LABEL_74;
  }

  if ([v32 isEqualToString:@"BDC_SmartCharging"])
  {
    v34 = v2;
    v35 = &qword_1000ACC10;
    v36 = qword_1000ACC10;
    if (qword_1000ACC10)
    {
      goto LABEL_78;
    }

    v37 = @"BDC_SmartCharging";
    goto LABEL_74;
  }

  if (sub_10003E824())
  {
    sub_10000E654();
    sub_10003E7F8();
    v43 = 12;
    goto LABEL_55;
  }

LABEL_84:
  [qword_1000ACBD8 setObject:sub_10000E288() forKey:{objc_msgSend(*(a1 + 32), "getLastDataLoggedTimestampDefaultsKey")}];
  if ([objc_loadWeak((a1 + 40)) batteryChanged])
  {
    [objc_loadWeak((a1 + 40)) setBatteryChanged:0];
  }

LABEL_86:

  [(NSFileHandle *)v11 closeFile];
  if (v4)
  {
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000667CC()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000668BC()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006692C()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100066A04()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100066A40()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100066A7C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    sub_10003E808();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
  }
}

void sub_100066AD4()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100066B10(NSObject *a1, uint64_t a2, uint64_t *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = *a3;
    sub_10003E884();
    sub_10003E814();
    sub_10001C068();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_100066BB4()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100066C24()
{
  if (sub_10003E824())
  {
    sub_10001C068();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100066C7C()
{
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    sub_10003E808();
    _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
  }
}

void sub_100066CDC()
{
  if (os_log_type_enabled(qword_1000AB7E8, OS_LOG_TYPE_DEFAULT))
  {
    sub_10003E808();
    _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
  }
}

void sub_100066D3C(uint64_t *a1)
{
  v1 = *a1;
  sub_10003E814();
  sub_100018BD8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100066DC0()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100066DFC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100018BF0();
  sub_10003E814();
  sub_100018C18(&_mh_execute_header, v3, v4, "Failed to get size for file %@. Error %@");
}

void sub_100066F3C()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100066F78()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100066FB4()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100066FF0()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100067060(void *a1)
{
  [a1 path];
  sub_100018BF0();
  sub_10001C068();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000670F0()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100067194(uint64_t a1, uint64_t *a2)
{
  if (sub_10003E824())
  {
    v3 = *a2;
    sub_10003E884();
    sub_10003E814();
    sub_10001C068();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_100067238()
{
  if (sub_10003E824())
  {
    sub_10003E884();
    sub_10001C068();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_100067340(uint64_t a1, id *a2)
{
  v2 = *(a1 + 24);
  [*a2 intValue];
  sub_10003E884();
  sub_10001C068();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1000673D8()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100067414()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100067450()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_10006748C(void *a1)
{
  if (sub_10003E83C())
  {
    sub_100018C38();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

uint64_t sub_1000674EC(uint64_t a1, io_object_t a2)
{
  if (sub_10003E83C())
  {
    sub_100018C38();
    _os_log_error_impl(v4, v5, v6, v7, v8, 8u);
  }

  return IOObjectRelease(a2);
}

void sub_100067598(_DWORD *a1)
{
  if (sub_10003E83C())
  {
    sub_100018C38();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 5;
}

void sub_1000675FC()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006766C(void *a1)
{
  if (sub_10003E83C())
  {
    sub_100018C38();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000676CC(void *a1)
{
  if (sub_10003E83C())
  {
    sub_100018C38();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  *a1 = 0;
}

void sub_10006776C()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000677DC()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100067860()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_10006789C()
{
  sub_100018BF0();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_100018C18(&_mh_execute_header, v0, v1, "Value of type %lu. Expected type %lu ", v2, v3);
}

void sub_100067910(void *a1)
{
  if (sub_10003E83C())
  {
    sub_100018C38();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100067970(void *a1)
{
  if (sub_10003E83C())
  {
    sub_100018C38();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100067A38()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100067A74()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100067AB0()
{
  if (sub_10003E824())
  {
    sub_10001C068();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100067B08()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100067B44(void *a1)
{
  [a1 count];
  sub_100018BF0();
  sub_10003E808();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
}

void sub_100067BC8(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100018C38();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a2 = 0;
}

void sub_100067C28(void *a1)
{
  if (sub_10003E83C())
  {
    sub_100018C38();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  *a1 = 0;
}

void sub_100067D3C()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100067D78()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100067DB4()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100067DF0()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100067E2C()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_100067E68(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003E7EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, v7);
}

void sub_100067EA4(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003E7EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, v7);
}

void sub_100067EE0(void *a1)
{
  if (sub_10003E83C())
  {
    sub_100018C38();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100067F40(void *a1)
{
  if (sub_10003E83C())
  {
    sub_100018C38();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

NSError *sub_100067FA0(NSError *result, NSErrorUserInfoKey *a2, void *a3, void *a4)
{
  if (result)
  {
    p_isa = &result->super.isa;
    *a2 = NSUnderlyingErrorKey;
    *a3 = @"key not found";
    result = [NSError errorWithDomain:NSPOSIXErrorDomain code:14 userInfo:[NSDictionary dictionaryWithObjects:"dictionaryWithObjects:forKeys:count:" forKeys:? count:?]];
    *p_isa = result;
  }

  *a4 = 0;
  return result;
}

void sub_100068030()
{
  sub_100018BE4();
  sub_10003E7EC();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_10006806C(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100018BD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000680E4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to send request to service: 0x%x", v2, 8u);
}

void sub_1000682D8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "AutoWakeScheduler: Not arming timer for a past or distant future event %{public}@\n", &v3, 0xCu);
}

void sub_100068354(uint64_t *a1)
{
  v6 = *a1;
  sub_10001C010();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100068534()
{
  sub_100018BF0();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006868C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000686C8()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100068738(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100047AFC();
  sub_10001C010();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000687AC()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006881C()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006888C()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000688FC()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006896C()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000689DC()
{
  sub_100047B08();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100068A64()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068AA0()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068ADC()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100068B4C()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068B88()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068BC4()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068C00()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068C3C()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100068CAC()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068CE8()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068D24()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100068D94()
{
  sub_10001C038();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100068E04()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068E40()
{
  sub_100047B08();
  v4 = 1024;
  v5 = v0;
  v6 = 2080;
  v7 = "IOPSBatteryHealthServiceState";
  v8 = 1024;
  v9 = v1;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s: %d %s: %d", v3, 0x22u);
}

void sub_100068EE8(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSString stringWithFormat:@"%@", a2];
  *buf = 136315138;
  v6 = [v4 UTF8String];
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s\n", buf, 0xCu);
}

void sub_100068FB4()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068FF0()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006902C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069068(uint64_t *a1)
{
  v1 = *a1;
  sub_100047B08();
  sub_100018BD8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100069154()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069190()
{
  sub_100047AF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100069210()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006924C()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000692BC()
{
  sub_10001C0E0();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10006932C(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = [a2 objectForKeyedSubscript:@"Trusted Maximum Capacity"];
  [v6 intValue];
  v8[0] = 67109376;
  v8[1] = a3;
  sub_100047AF0();
  *(&v8[2] + 2) = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "monotonicity interrupted saved (%d) incoming (%d)\n", v8, 0xEu);
}

void sub_1000693F4()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069430()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000694A0()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000694DC()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006954C()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000695BC(unsigned int *a1)
{
  v1 = *a1;
  sub_100047AFC();
  sub_10001C010();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100069630()
{
  sub_10001C0E0();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000696A0()
{
  sub_10001C038();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100069710()
{
  sub_100047B08();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006978C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000697C8(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100047AFC();
  sub_100047AF0();
  sub_100018C08();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100069848()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069884()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000698C0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Battery Data not found", buf, 2u);
}

void sub_100069900()
{
  sub_100018BF0();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100069970()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000699E0()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100069AF8()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069B34()
{
  sub_100047AFC();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100069BB0()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069BEC()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069C28()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069C64()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069CA0()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100069D10()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100069D80()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069DD0()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100069E40()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100069EB0()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100069F20()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069F5C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069F98()
{
  sub_10001C0E0();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10006A008()
{
  sub_10001C0E0();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10006A078(unsigned int *a1)
{
  v1 = *a1;
  sub_100047AFC();
  sub_10001C010();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10006A0EC()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006A15C(unsigned int *a1)
{
  v1 = *a1;
  sub_100047AFC();
  sub_100047AF0();
  sub_100018BD8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10006A1D8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Not a class", buf, 2u);
}

void sub_10006A218()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A254()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A290()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A2CC()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A308()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A344()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A380(void *a1, const void *a2)
{
  v3 = a1;
  CFGetTypeID(a2);
  sub_100018BF0();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unexpected data type for mitigatedUPOCnt(type:%lu)\n", v4, 0xCu);
}

void sub_10006A418()
{
  sub_100047AFC();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006A494()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A4D0()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A50C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A548()
{
  sub_100018BFC();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006A5B8()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A5F4()
{
  sub_100047AFC();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10006A678()
{
  sub_100018BFC();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006A6E8()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A724()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A760(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100047AFC();
  sub_100047AF0();
  sub_100018C08();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10006A7E0()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A81C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A858()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A894()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A8D0()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A90C()
{
  sub_100018BFC();
  sub_100047AF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10006A988()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A9C4()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006AB70(os_log_t log, double a2, double a3)
{
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Not the current wake %f > now %f", &v3, 0x16u);
}

void sub_10006ABF8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unhandled inMessageType (%x)\n", v2, 8u);
}

void sub_10006AC70(unsigned int *a1)
{
  v1 = *a1;
  sub_100018C48();
  sub_100018C08();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10006ACE4(unsigned int *a1)
{
  v1 = *a1;
  sub_100018C48();
  sub_100018C08();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10006ADC0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "WakeTime: useractive %llu\n", &v3, 0xCu);
}

void sub_10006B00C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "logAsyncAssertionActivity: No kIOPMAssertionActivityAction key present when trying to log.", buf, 2u);
}

void sub_10006B1EC(unsigned int *a1)
{
  sub_100054A30(a1, __stack_chk_guard);
  sub_100018C08();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10006B26C()
{
  sub_100018BF0();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006B2DC()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006B318()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006B354()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006B390(unsigned int *a1)
{
  sub_100054A30(a1, __stack_chk_guard);
  sub_100047AFC();
  sub_100018C08();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10006B40C(unsigned int *a1)
{
  sub_100054A30(a1, __stack_chk_guard);
  sub_100047AFC();
  sub_100018BD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10006B490(unsigned int *a1)
{
  sub_100054A30(a1, __stack_chk_guard);
  sub_100047AFC();
  sub_100018BD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10006B514()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006B584()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006B5F4()
{
  sub_100018BFC();
  sub_100054A08();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10006B668()
{
  sub_100018BFC();
  sub_100054A08();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10006B6DC()
{
  sub_100018BFC();
  sub_100054A08();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10006B750()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006B7C0()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006B7FC(const __CFArray *a1, uint64_t a2, NSObject *a3)
{
  CFArrayGetCount(a1);
  v6 = *(a2 + 96);
  sub_100018BF0();
  v9 = 2112;
  v10 = a1;
  v11 = 1024;
  v12 = v7;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Only logging data : Received logging data of length %ld %@ for pid %d", v8, 0x1Cu);
}

void sub_10006B8B0(uint64_t a1)
{
  sub_100054A24(a1);
  sub_100047AFC();
  sub_10001C010();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10006B920()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006BA10()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006BA80()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006BAF0()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006BB60()
{
  sub_100018BFC();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006BBD0(_xpc_connection_s *a1)
{
  xpc_connection_get_pid(a1);
  sub_100018BD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10006BC68()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006BCD8()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006BD48()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006BDB8()
{
  sub_100018BFC();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006BE28(uint64_t a1)
{
  v1 = *(a1 + 52);
  sub_100047AFC();
  sub_100018BD8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10006BE9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a2 + 52);
  sub_100047AFC();
  sub_100018C08();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10006BF20(uint64_t a1)
{
  sub_100054A24(a1);
  sub_100047AFC();
  sub_100018BD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10006BF90(uint64_t a1)
{
  sub_100054A24(a1);
  sub_100047AFC();
  sub_100018BD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10006C000()
{
  sub_100018BFC();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006C070()
{
  sub_100018BF0();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006C0E0()
{
  sub_100018BFC();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10006C15C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C198()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C1D4()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C210()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C24C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C288(uint64_t a1)
{
  v1 = *(a1 + 96);
  sub_100047AFC();
  sub_10001C010();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10006C310(uint64_t a1)
{
  sub_100054A24(a1);
  sub_100047AFC();
  sub_100018BD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10006C380()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006C3F0()
{
  sub_100018BFC();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006C460()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006C4D0()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C50C()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C548(unsigned int *a1)
{
  sub_100054A18(a1);
  sub_100047AFC();
  sub_100018BD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10006C5B8(unsigned int *a1)
{
  sub_100054A18(a1);
  sub_100047AFC();
  sub_100018BD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10006C628(unsigned int *a1)
{
  sub_100054A18(a1);
  sub_100047AFC();
  sub_100018BD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10006C698()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C6D4(uint64_t a1, NSObject *a2)
{
  v3 = 134218752;
  v4 = a1;
  v5 = 2048;
  v6 = qword_1000AD188;
  v7 = 1024;
  v8 = sub_100007E48();
  v9 = 1024;
  v10 = sub_10005C9D0();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Avoiding display tickle. cTime:%lld lTime:%lld Display:%d rd:%d\n", &v3, 0x22u);
}

void sub_10006C79C()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C7D8()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006C848()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C884()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C8C0()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C8FC()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C938()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C974()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C9B0()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006C9EC()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006CA5C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006CA98()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006CAD4()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006CB10()
{
  sub_100018BF0();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006CB80(unsigned int *a1)
{
  sub_100054A18(a1);
  sub_100047AFC();
  sub_100018BD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10006CBF0()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006CCB0()
{
  sub_100018BF0();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10006CD2C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006CD7C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006CDB8(uint64_t a1)
{
  v6 = 24 * *(*(*a1 + 8) + 24);
  sub_100018BD8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10006CEB8()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006CEF4()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006CF88(int a1)
{
  v2 = qword_1000AC970;
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "IOServiceAddMatchingNotification failed: %08x", v3, 8u);
  }
}

void sub_10006D02C(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_ERROR))
  {
    sub_100018C38();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  *a2 = 0;
}

void sub_10006D0D8(uint64_t *a1, void *a2)
{
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_ERROR))
  {
    v9 = *a1;
    sub_100018C38();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  *a2 = 0;
}

void sub_10006D188(int a1, uint64_t a2, void *a3)
{
  v6 = qword_1000AC970;
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "IOServiceAddInterestNotification failed: %08x", v7, 8u);
  }

  *a3 = a2;
}

id sub_10006D240(void *a1, void *a2, void *a3)
{
  v6 = [a1 transportNotifiers];
  v7 = [NSNumber numberWithUnsignedLongLong:*a2];
  [v6 removeObjectForKey:v7];

  v8 = [a1 dataRole];
  v9 = [NSNumber numberWithUnsignedLongLong:*a2];
  [v8 removeObjectForKey:v9];

  v10 = qword_1000AC970;
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [a1 dataRole];
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Current date roles %@", &v15, 0xCu);
  }

  v13 = [a3 unsignedIntValue];
  if (v13)
  {
    IOObjectRelease(v13);
  }

  return [a1 releasePowerAssertion];
}

void sub_10006D5F4(uint8_t *a1, id a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = [a2 UTF8String];
  *a1 = 136315138;
  *a4 = v10;
  _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unknown key name :%s in charge limit on hold and override dictionary\n", a1, 0xCu);
}

void sub_10006D77C(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = 136315138;
  v7 = [a1 UTF8String];
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No policy found for name %s from charge limit array\n", &v6, 0xCu);
}

void sub_10006DAA0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to write to key bvt0: %#x\n", v2, 8u);
}

void sub_10006DBD4()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006DC10()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006DCC4()
{
  sub_100018BFC();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006DD34()
{
  sub_100018BFC();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10006DDB8()
{
  sub_100018BFC();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "nextIdleTimeout: %d legacyNextIdleTimeout:%d\n", v2, 0xEu);
}

void sub_10006DE3C()
{
  sub_100018BFC();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10006DEB8()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006DEF4()
{
  sub_100018BE4();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006DF30()
{
  sub_10001C114();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10006DFA0()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006DFDC()
{
  sub_10001C114();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10006E04C()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006E088()
{
  sub_10001C114();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10006E0F8(_xpc_connection_s *a1, int *a2, NSObject *a3)
{
  pid = xpc_connection_get_pid(a1);
  v7 = *a2;
  v8 = 134218496;
  v9 = a1;
  v10 = 1024;
  v11 = pid;
  v12 = 1024;
  v13 = v7;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Registered user inactivity client %p(pid %d) with timeout(%d)\n", &v8, 0x18u);
}

void sub_10006E1AC()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006E1E8()
{
  sub_100018BFC();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006E258()
{
  sub_100018BFC();
  sub_10001C010();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006E2C8(_xpc_connection_s *a1, NSObject *a2)
{
  xpc_connection_get_pid(a1);
  sub_10005DC98();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Deregistered user inactivity client %p(pid %d)\n", v3, 0x12u);
}

void sub_10006E3CC()
{
  sub_10001C114();
  sub_100018C08();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10006E43C(_xpc_connection_s *a1, NSObject *a2)
{
  xpc_connection_get_pid(a1);
  sub_10005DC98();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Update request from unexpected connection(%p)(pid:%d)\n", v3, 0x12u);
}

void sub_10006E588()
{
  sub_100018BE4();
  sub_100018BD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006E5F0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 67109378;
  HIDWORD(v3) = a2;
  LOWORD(v4) = 2112;
  *(&v4 + 2) = a1;
  sub_10001C078(&_mh_execute_header, a2, a3, "PID %d doesnt have entitlement %@\n", v3, v4, WORD4(v4));
}

void sub_10006E6D0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PID %d is not entitled to set wake reason\n", v2, 8u);
}

void sub_10006E7E4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 136315394;
  HIDWORD(v3) = a1;
  sub_10001C078(&_mh_execute_header, a2, a3, "failed to post '%s'. rc:%#x\n", v3, HIDWORD(a1));
}

void sub_10006E8A4(uint64_t a1)
{
  pid = xpc_connection_get_pid(*(a1 + 32));
  v2[0] = 67109120;
  v2[1] = pid;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected xpc type from PID %u\n", v2, 8u);
}

void sub_10006E92C(uint64_t a1, xpc_connection_t connection)
{
  v2 = 136315650;
  v3 = a1;
  v4 = 2048;
  v5 = connection;
  v6 = 1024;
  pid = xpc_connection_get_pid(connection);
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Received error %s on peer %p(pid %d)\n", &v2, 0x1Cu);
}

void sub_10006E9DC(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006EA58(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006EAD4(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006EB50(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006EBCC(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006EC48(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006ECC4(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006ED40(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006EDBC(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006EE38(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006EEB4(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006EF30(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006EFAC(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F028(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F0A4(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F120(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F19C(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F218(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F294(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F310(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F38C(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F408(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F484(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F500(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F57C(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F5F8(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F674(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F6F0(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F76C(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F7E8(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F864(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F8E0(uint64_t a1)
{
  sub_10001C098(a1, __stack_chk_guard);
  sub_10001C12C();
  sub_100060A08(&_mh_execute_header, &_os_log_default, v1, "XPC %s from PID %u\n", v2, v3, v4, v5, 2u);
}

void sub_10006F95C(uint64_t a1)
{
  pid = xpc_connection_get_pid(*(a1 + 32));
  v2[0] = 67109120;
  v2[1] = pid;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected xpc dictionary from PID %u\n", v2, 8u);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, const char *);
  return _CFCalendarDecomposeAbsoluteTime(calendar, at, v3);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}