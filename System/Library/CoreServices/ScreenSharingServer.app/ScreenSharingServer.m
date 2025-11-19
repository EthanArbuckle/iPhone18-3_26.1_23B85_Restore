void sub_10000320C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || [v5 count] != 1)
  {
    if (sub_1000423E0())
    {
      v12 = sub_100042E68();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v6 description];
        *buf = 136315906;
        v19 = "[NWConnectionManager startRead:]_block_invoke";
        v20 = 1024;
        v21 = 190;
        v22 = 2080;
        v23 = [v13 UTF8String];
        v24 = 2048;
        v25 = [v5 count];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d]  read failed with error %s, , datagrams count %lu ", buf, 0x26u);
      }
    }

    v11 = [v6 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 190, "-[NWConnectionManager startRead:]_block_invoke", 7, 0, " read failed with error %s, , datagrams count %lu ", [v11 UTF8String], objc_msgSend(v5, "count"));
  }

  else
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000342C;
    block[3] = &unk_100068B18;
    v15 = v7;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v16 = v9;
    v17 = v10;
    dispatch_async(v8, block);

    v11 = v15;
  }
}

void sub_10000342C(uint64_t a1)
{
  v4 = [*(a1 + 32) objectAtIndex:0];
  v2 = *(a1 + 40);
  v3 = v4;
  [v2 handleIncomingData:objc_msgSend(v4 dataSize:{"bytes"), objc_msgSend(v4, "length")}];
  if (([*(a1 + 48) stopConnection] & 1) == 0)
  {
    [*(a1 + 48) startRead:*(a1 + 40)];
  }
}

void sub_1000036C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 description];
        *buf = 136315650;
        v8 = "[NWConnectionManager writeData:size:]_block_invoke";
        v9 = 1024;
        v10 = 234;
        v11 = 2080;
        v12 = [v5 UTF8String];
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] error when writing %s", buf, 0x1Cu);
      }
    }

    v6 = [v3 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 234, "-[NWConnectionManager writeData:size:]_block_invoke", 7, 0, "error when writing %s", [v6 UTF8String]);
  }

  [*(a1 + 32) removeAllObjects];
  dispatch_semaphore_signal(*(*(a1 + 40) + 16));
}

uint64_t sub_1000038DC(void *(__cdecl *a1)(void *), void *a2, pthread_t *a3)
{
  memset(&v16, 0, sizeof(v16));
  v9 = 0;
  pthread_attr_init(&v16);
  pthread_attr_setdetachstate(&v16, 2);
  v6 = pthread_create(&v9, &v16, a1, a2);
  pthread_attr_destroy(&v16);
  if (v6)
  {
    if (sub_1000423E0())
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v11 = "RDCreateTask";
        v12 = 1024;
        v13 = 29;
        v14 = 1024;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%s:%d] error from pthread_create: %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/RDThread.c", 84, 29, "RDCreateTask", 3, 0, "error from pthread_create: %d", v6);
  }

  else if (a3)
  {
    *a3 = v9;
  }

  return v6;
}

uint64_t sub_100003A3C(char *a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = dword_1000707C0;
  if (!dword_1000707C0)
  {
    v4 = open("/dev/random", 0);
    dword_1000707C0 = v4;
    if (v4 != -1)
    {
      goto LABEL_8;
    }

    v4 = open("/dev/urandom", 0);
    dword_1000707C0 = v4;
  }

  if (v4 == -1)
  {
    if (sub_1000423E0())
    {
      v5 = sub_100042E68();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "AuthGetRandomBytes";
        v16 = 1024;
        v17 = 40;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%s:%d] FATAL ERROR - unable to open /dev/random", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/AuthRandom.c", 89, 40, "AuthGetRandomBytes", 3, 0, "FATAL ERROR - unable to open /dev/random");
    goto LABEL_19;
  }

LABEL_8:
  if (v2)
  {
    v6 = v2;
    v7 = a1;
    while (1)
    {
      v8 = read(v4, v7, v6);
      if (v8 < 0)
      {
        break;
      }

      v2 = (v2 - v8);
      if (!v2)
      {
        return 0;
      }

      a1 += v8;
      usleep(0xF4240u);
      v4 = dword_1000707C0;
      v7 = a1;
      v6 = v2;
    }

    v10 = v8;
    if (sub_1000423E0())
    {
      v11 = sub_100042E68();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *__error();
        *buf = 136315906;
        v15 = "AuthGetRandomBytes";
        v16 = 1024;
        v17 = 51;
        v18 = 2048;
        v19 = v10;
        v20 = 1024;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%s:%d] FATAL ERROR - read returned %zd  errno %d", buf, 0x22u);
      }
    }

    v13 = *__error();
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/AuthRandom.c", 89, 51, "AuthGetRandomBytes", 3, 0, "FATAL ERROR - read returned %zd  errno %d", v10);
LABEL_19:
    exit(1);
  }

  return 0;
}

uint64_t sub_100003D18(uint64_t a1)
{
  qword_1000707C8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10000427C(id a1)
{
  v1 = +[TouchEventMonitor sharedTouchEventMonitor];
  v2 = [v1 hidEventClient];

  if (v2)
  {
    +[TouchEventMonitor sharedTouchEventMonitor];
    IOHIDEventSystemClientUnregisterEventFilterCallback();
    CFRunLoopGetCurrent();
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    v3 = +[TouchEventMonitor sharedTouchEventMonitor];
    [v3 setMonitoringEvents:0];

    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "+[TouchEventMonitor stopMonitoringTouchEvents]_block_invoke";
        v8 = 1024;
        v9 = 82;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] no longer monitoring touch events", &v6, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 82, "+[TouchEventMonitor stopMonitoringTouchEvents]_block_invoke", 7, 0, "no longer monitoring touch events");
  }

  else
  {
    if (sub_1000423E0())
    {
      v5 = sub_100042E68();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "+[TouchEventMonitor stopMonitoringTouchEvents]_block_invoke";
        v8 = 1024;
        v9 = 85;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] no HID event client", &v6, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 85, "+[TouchEventMonitor stopMonitoringTouchEvents]_block_invoke", 7, 0, "no HID event client");
  }
}

void sub_100004910(id a1)
{
  v1 = +[TouchEventMonitor sharedTouchEventMonitor];
  v2 = [v1 hidEventClient];

  if (v2)
  {
    CFRunLoopGetCurrent();
    IOHIDEventSystemClientScheduleWithRunLoop();
    +[TouchEventMonitor sharedTouchEventMonitor];
    IOHIDEventSystemClientRegisterEventFilterCallback();
    v3 = +[TouchEventMonitor sharedTouchEventMonitor];
    [v3 setMonitoringEvents:1];

    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "+[TouchEventMonitor startMonitoringTouchEvents]_block_invoke";
        v8 = 1024;
        v9 = 117;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] monitoring touch events", &v6, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 117, "+[TouchEventMonitor startMonitoringTouchEvents]_block_invoke", 7, 0, "monitoring touch events");
  }

  else
  {
    if (sub_1000423E0())
    {
      v5 = sub_100042E68();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "+[TouchEventMonitor startMonitoringTouchEvents]_block_invoke";
        v8 = 1024;
        v9 = 120;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] no HID event client", &v6, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 120, "+[TouchEventMonitor startMonitoringTouchEvents]_block_invoke", 7, 0, "no HID event client");
  }
}

void sub_100004B1C(id a1)
{
  if (byte_1000707D8 == 1)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"TouchEventUpdate" object:0];
  }
}

uint64_t sub_100004D80()
{
  result = IOHIDEventGetType();
  if (result == 14 || result == 11)
  {
    if (!IOHIDEventGetIntegerValue())
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      if (IntegerValue > 0x13)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_100043968(IntegerValue);
        }
      }

      else if (IOHIDEventGetIntegerValue() == 1)
      {
        IOHIDEventGetFloatValue();
        v2 = &dword_1000707E0[8 * IntegerValue];
        *v2 = v3;
        IOHIDEventGetFloatValue();
        *(v2 + 1) = v4;
        IOHIDEventGetFloatValue();
        *(v2 + 2) = v5;
        *(v2 + 6) = 1;
      }

      else
      {
        dword_1000707E0[8 * IntegerValue + 6] = 0;
      }

      byte_1000707D8 = 1;
    }

    result = IOHIDEventGetChildren();
    if (result)
    {
      v6 = result;
      result = CFArrayGetCount(result);
      if (result >= 1)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
          sub_100004D80(ValueAtIndex);
          v7 = ++v8;
          result = CFArrayGetCount(v6);
        }

        while (result > v8);
      }
    }
  }

  return result;
}

uint64_t sub_1000052BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000052D4(uint64_t a1, void *a2)
{
  v3 = [a2 arrayForJSON];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

id sub_100005668()
{
  v0 = [RDMutex alloc];

  return [(RDMutex *)v0 initWithoutTracking];
}

void sub_10000D1C0(id a1)
{
  qword_100070AF8 = +[NSMutableSet set];

  _objc_release_x1();
}

void sub_10000D844(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  [v1 performSelector:"userFinishedTermsAndConditions:" withObject:v2];
}

void sub_10000E5EC(id a1, BOOL a2)
{
  v2 = a2;
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v5 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]_block_invoke";
      v6 = 1024;
      v7 = 326;
      v8 = 1024;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] activated:%d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 326, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]_block_invoke", 7, 0, "activated:%d", v2);
}

void sub_10000E6E8(uint64_t a1, int a2)
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]_block_invoke_2";
      v8 = 1024;
      v9 = 329;
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] deactivated:%d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 329, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]_block_invoke", 7, 0, "deactivated:%d", a2);
  v5 = [*(a1 + 32) vsSemaphore];
  dispatch_semaphore_signal(v5);
}

void sub_10000F5D8(id a1)
{
  qword_100070AF8 = +[NSMutableSet set];

  _objc_release_x1();
}

void sub_1000101EC(id a1, BOOL a2)
{
  v2 = a2;
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v5 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]_block_invoke";
      v6 = 1024;
      v7 = 308;
      v8 = 1024;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] activated:%d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 308, "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]_block_invoke", 7, 0, "activated:%d", v2);
}

void sub_1000102E8(uint64_t a1, int a2)
{
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]_block_invoke_2";
      v8 = 1024;
      v9 = 311;
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] deactivated:%d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 311, "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]_block_invoke", 7, 0, "deactivated:%d", a2);
  v5 = [*(a1 + 32) vsSemaphore];
  dispatch_semaphore_signal(v5);
}

void sub_100010708(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  [v1 performSelector:"userFinishedTermsAndConditions:" withObject:v2];
}

uint64_t sub_100010868(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  for (i = 0; a3; --a3)
  {
    v5 = *a1++;
    v4 = v5;
    v6 = *a2++;
    i = i | v6 ^ v4;
  }

  return i;
}

void sub_100010C20(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(OS_xpc_object *)v2 description];
      *buf = 136315650;
      v7 = "[IDSServiceEmbeddedController initScreenSharingIDSService]_block_invoke";
      v8 = 1024;
      v9 = 231;
      v10 = 2080;
      v11 = [v4 UTF8String];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] xpc_set_event_stream_handler: xpcEvent: %s", buf, 0x1Cu);
    }
  }

  v5 = [(OS_xpc_object *)v2 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 231, "-[IDSServiceEmbeddedController initScreenSharingIDSService]_block_invoke", 7, 0, "xpc_set_event_stream_handler: xpcEvent: %s", [v5 UTF8String]);
}

void sub_10001622C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setWallpaperSuspensionAssertion:a2];
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) wallpaperSuspensionAssertion];
      *buf = 136315650;
      v7 = "[IDSServiceEmbeddedController addActiveSession:]_block_invoke";
      v8 = 1024;
      v9 = 964;
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] wallpaper assertion %p", buf, 0x1Cu);
    }
  }

  v5 = [*(a1 + 32) wallpaperSuspensionAssertion];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 964, "[IDSServiceEmbeddedController addActiveSession:]_block_invoke", 7, 0, "wallpaper assertion %p", v5);
}

void sub_100016CDC(uint64_t a1)
{
  v2 = [*(a1 + 32) exitTimer];

  if (!v2)
  {
    v3 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"exitTimerCallback:" selector:0 userInfo:0 repeats:30.0];
    [*(a1 + 32) setExitTimer:v3];
  }

  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController checkIfNoSessions]_block_invoke";
      v7 = 1024;
      v8 = 1076;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] created timer", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1076, "[IDSServiceEmbeddedController checkIfNoSessions]_block_invoke", 7, 0, "created timer");
}

void sub_10001711C(id a1, BOOL a2)
{
  v2 = a2;
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v5 = "[IDSServiceEmbeddedController createStatusBar]_block_invoke";
      v6 = 1024;
      v7 = 1128;
      v8 = 1024;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] acquired:%d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1128, "[IDSServiceEmbeddedController createStatusBar]_block_invoke", 7, 0, "acquired:%d", v2);
}

void sub_100017218(id a1)
{
  if (sub_1000423E0())
  {
    v1 = sub_100042E68();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315394;
      v3 = "[IDSServiceEmbeddedController createStatusBar]_block_invoke_2";
      v4 = 1024;
      v5 = 1131;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalidationHandler", &v2, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1131, "[IDSServiceEmbeddedController createStatusBar]_block_invoke", 7, 0, "invalidationHandler");
}

id sub_10001737C()
{
  [qword_100070A78 setScreenLocked:sub_100027378()];
  if (sub_1000423E0())
  {
    v0 = sub_100042E68();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "LockStatusChangedCFNotification";
      v11 = 1024;
      v12 = 163;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification called screen is locked", &v9, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 163, "LockStatusChangedCFNotification", 7, 0, "notification called screen is locked");
  v1 = [qword_100070A78 screenLocked];
  v2 = [qword_100070A78 screenPausedBeforeLock];
  v3 = v2;
  if (v1)
  {
    v4 = sub_1000423E0();
    if (v3)
    {
      if (v4)
      {
        v5 = sub_100042E68();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315394;
          v10 = "LockStatusChangedCFNotification";
          v11 = 1024;
          v12 = 168;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen was already paused", &v9, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 168, "LockStatusChangedCFNotification", 7, 0, "screen was already paused");
    }

    else
    {
      if (v4)
      {
        v7 = sub_100042E68();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315394;
          v10 = "LockStatusChangedCFNotification";
          v11 = 1024;
          v12 = 173;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to pause since locked screen", &v9, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 173, "LockStatusChangedCFNotification", 7, 0, "going to pause since locked screen");
      [qword_100070A78 pauseScreenSharing:1 pausingDueToScreenLock:1];
    }
  }

  else if ((v2 & 1) == 0)
  {
    if (sub_1000423E0())
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = "LockStatusChangedCFNotification";
        v11 = 1024;
        v12 = 188;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to unpause since unlocked screen", &v9, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 188, "LockStatusChangedCFNotification", 7, 0, "going to unpause since unlocked screen");
    [qword_100070A78 pauseScreenSharing:0];
  }

  return [qword_100070A78 sendLockScreenChangeMessageToAllSessions:v1];
}

id sub_100017FB0(uint64_t a1, uint64_t a2)
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v26 = "AskToCopyToPasteboardCallback";
      v27 = 1024;
      v28 = 1259;
      v29 = 2048;
      v30 = [qword_100070AF8 count];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] AskToToCopyToPasteboarCallback  called  count %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1259, "AskToCopyToPasteboardCallback", 7, 0, "AskToToCopyToPasteboarCallback  called  count %ld", [qword_100070AF8 count]);
  if ([qword_100070A78 askToCopyToPasteboardNotification])
  {
    CFRelease([qword_100070A78 askToCopyToPasteboardNotification]);
    [qword_100070A78 setAskToCopyToPasteboardNotification:0];
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "AskToCopyToPasteboardCallback";
        v27 = 1024;
        v28 = 1265;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] cleared notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1265, "AskToCopyToPasteboardCallback", 7, 0, "cleared notification");
  }

  v5 = [qword_100070A78 askToCopyToPasteboardTimeoutTimer];

  if (v5)
  {
    if (sub_1000423E0())
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "AskToCopyToPasteboardCallback";
        v27 = 1024;
        v28 = 1270;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] get rid of timer", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1270, "AskToCopyToPasteboardCallback", 7, 0, "get rid of timer");
    v7 = [qword_100070A78 askToCopyToPasteboardTimeoutTimer];
    [v7 invalidate];

    [qword_100070A78 setAskToCopyToPasteboardTimeoutTimer:0];
  }

  v8 = sub_1000423E0();
  switch(a2)
  {
    case 1:
      if (v8)
      {
        v18 = sub_100042E68();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "AskToCopyToPasteboardCallback";
          v27 = 1024;
          v28 = 1285;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] alternate response - user declined", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1285, "AskToCopyToPasteboardCallback", 7, 0, "alternate response - user declined");
      v10 = [qword_100070A78 askToCopyToPasteboardDelegate];
      v15 = [qword_100070A78 askToCopyToPasteboardToken];
      v16 = v10;
      v17 = 0;
      goto LABEL_40;
    case 3:
      if (v8)
      {
        v13 = sub_100042E68();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "AskToCopyToPasteboardCallback";
          v27 = 1024;
          v28 = 1290;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification was cancelled", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1290, "AskToCopyToPasteboardCallback", 7, 0, "notification was cancelled");
      if (![qword_100070A78 askToCopyToPasteboardTimedOut])
      {
        v21 = sub_100027378();
        v22 = sub_1000423E0();
        if (v21)
        {
          if (v22)
          {
            v23 = sub_100042E68();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v26 = "AskToCopyToPasteboardCallback";
              v27 = 1024;
              v28 = 1300;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is still locked?", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1300, "AskToCopyToPasteboardCallback", 7, 0, "screen is still locked?");
        }

        else
        {
          if (v22)
          {
            v24 = sub_100042E68();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v26 = "AskToCopyToPasteboardCallback";
              v27 = 1024;
              v28 = 1304;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen was locked and is now unlocked  post new notification", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1304, "AskToCopyToPasteboardCallback", 7, 0, "screen was locked and is now unlocked  post new notification");
          [qword_100070A78 postAskToCopyToPasteboardNotification];
        }

        return [qword_100070A78 setAskToCopyToPasteboardUserMessage:0];
      }

      if (sub_1000423E0())
      {
        v14 = sub_100042E68();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "AskToCopyToPasteboardCallback";
          v27 = 1024;
          v28 = 1293;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification timed out", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1293, "AskToCopyToPasteboardCallback", 7, 0, "notification timed out");
      v10 = [qword_100070A78 askToCopyToPasteboardDelegate];
      v15 = [qword_100070A78 askToCopyToPasteboardToken];
      v16 = v10;
      v17 = 2;
LABEL_40:
      [v16 userRequestResult:v17 senderToken:v15];
LABEL_41:

      return [qword_100070A78 setAskToCopyToPasteboardUserMessage:0];
    case 2:
      if (v8)
      {
        v9 = sub_100042E68();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "AskToCopyToPasteboardCallback";
          v27 = 1024;
          v28 = 1277;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] other response - user accepted", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1277, "AskToCopyToPasteboardCallback", 7, 0, "other response - user accepted");
      v10 = +[UIPasteboard generalPasteboard];
      v11 = [qword_100070A78 askToCopyToPasteboardUserMessage];
      [v10 setString:v11];

      v12 = [qword_100070A78 askToCopyToPasteboardDelegate];
      [v12 userRequestResult:1 senderToken:{objc_msgSend(qword_100070A78, "askToCopyToPasteboardToken")}];

      goto LABEL_41;
  }

  if (v8)
  {
    v19 = sub_100042E68();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "AskToCopyToPasteboardCallback";
      v27 = 1024;
      v28 = 1310;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] unexpected response", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1310, "AskToCopyToPasteboardCallback", 7, 0, "unexpected response");
  return [qword_100070A78 setAskToCopyToPasteboardUserMessage:0];
}

void sub_100018754(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"askToToCopyToPasteboardTimeout:" selector:0 userInfo:0 repeats:28.0];
  [*(a1 + 32) setAskToCopyToPasteboardTimeoutTimer:v2];

  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]_block_invoke";
      v6 = 1024;
      v7 = 1251;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] created timer", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1251, "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]_block_invoke", 7, 0, "created timer");
}

void sub_100019584(uint64_t a1, uint64_t a2)
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = "AskToOpenURLCallback";
      v31 = 1024;
      v32 = 1450;
      v33 = 2048;
      v34 = [qword_100070AF8 count];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] AskToOpenURLCallback  called  count %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1450, "AskToOpenURLCallback", 7, 0, "AskToOpenURLCallback  called  count %ld", [qword_100070AF8 count]);
  if ([qword_100070A78 askToOpenURLNotification])
  {
    CFRelease([qword_100070A78 askToOpenURLNotification]);
    [qword_100070A78 setAskToOpenURLNotification:0];
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = "AskToOpenURLCallback";
        v31 = 1024;
        v32 = 1456;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] cleared notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1456, "AskToOpenURLCallback", 7, 0, "cleared notification");
  }

  v5 = [qword_100070A78 askToOpenURLTimeoutTimer];

  if (v5)
  {
    if (sub_1000423E0())
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = "AskToOpenURLCallback";
        v31 = 1024;
        v32 = 1461;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] get rid of timer", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1461, "AskToOpenURLCallback", 7, 0, "get rid of timer");
    v7 = [qword_100070A78 askToOpenURLTimeoutTimer];
    [v7 invalidate];

    [qword_100070A78 setAskToOpenURLTimeoutTimer:0];
  }

  v8 = sub_1000423E0();
  switch(a2)
  {
    case 1:
      if (v8)
      {
        v23 = sub_100042E68();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "AskToOpenURLCallback";
          v31 = 1024;
          v32 = 1477;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] alternate response - user declined", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1477, "AskToOpenURLCallback", 7, 0, "alternate response - user declined");
      v17 = [qword_100070A78 askToOpenURLDelegate];
      v18 = [qword_100070A78 askToOpenURLToken];
      v19 = v17;
      v20 = 0;
      goto LABEL_44;
    case 3:
      if (v8)
      {
        v21 = sub_100042E68();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "AskToOpenURLCallback";
          v31 = 1024;
          v32 = 1482;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification was cancelled", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1482, "AskToOpenURLCallback", 7, 0, "notification was cancelled");
      if ([qword_100070A78 askToOpenURLTimedOut])
      {
        if (sub_1000423E0())
        {
          v22 = sub_100042E68();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v30 = "AskToOpenURLCallback";
            v31 = 1024;
            v32 = 1485;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification timed out", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1485, "AskToOpenURLCallback", 7, 0, "notification timed out");
        v17 = [qword_100070A78 askToOpenURLDelegate];
        v18 = [qword_100070A78 askToOpenURLToken];
        v19 = v17;
        v20 = 2;
        goto LABEL_44;
      }

      v25 = sub_100027378();
      v26 = sub_1000423E0();
      if (v25)
      {
        if (v26)
        {
          v27 = sub_100042E68();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v30 = "AskToOpenURLCallback";
            v31 = 1024;
            v32 = 1492;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is still locked?", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1492, "AskToOpenURLCallback", 7, 0, "screen is still locked?");
      }

      else
      {
        if (v26)
        {
          v28 = sub_100042E68();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v30 = "AskToOpenURLCallback";
            v31 = 1024;
            v32 = 1496;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen was locked and is now unlocked  post new notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1496, "AskToOpenURLCallback", 7, 0, "screen was locked and is now unlocked  post new notification");
        [qword_100070A78 postAskToOpenURLNotification];
      }

      break;
    case 2:
      if (v8)
      {
        v9 = sub_100042E68();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "AskToOpenURLCallback";
          v31 = 1024;
          v32 = 1468;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] other response - user said open*", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1468, "AskToOpenURLCallback", 7, 0, "other response - user said open*");
      if (sub_1000423E0())
      {
        v10 = sub_100042E68();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [qword_100070A78 urlToOpen];
          v12 = [v11 UTF8String];
          *buf = 136315650;
          v30 = "AskToOpenURLCallback";
          v31 = 1024;
          v32 = 1469;
          v33 = 2080;
          v34 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] url string is %s", buf, 0x1Cu);
        }
      }

      v13 = [qword_100070A78 urlToOpen];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1469, "AskToOpenURLCallback", 7, 0, "url string is %s", [v13 UTF8String]);

      v14 = +[LSApplicationWorkspace defaultWorkspace];
      v15 = [qword_100070A78 urlToOpen];
      v16 = [NSURL URLWithString:v15];
      [v14 openURL:v16];

      v17 = [qword_100070A78 askToOpenURLDelegate];
      v18 = [qword_100070A78 askToOpenURLToken];
      v19 = v17;
      v20 = 1;
LABEL_44:
      [v19 userRequestResult:v20 senderToken:v18];

      return;
    default:
      if (v8)
      {
        v24 = sub_100042E68();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "AskToOpenURLCallback";
          v31 = 1024;
          v32 = 1502;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] unexpected response", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1502, "AskToOpenURLCallback", 7, 0, "unexpected response");
      break;
  }
}

void sub_100019E1C(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"askToOpenURLTimeout:" selector:0 userInfo:0 repeats:28.0];
  [*(a1 + 32) setAskToOpenURLTimeoutTimer:v2];

  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[IDSServiceEmbeddedController postAskToOpenURLNotification]_block_invoke";
      v6 = 1024;
      v7 = 1443;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] created timer", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1443, "[IDSServiceEmbeddedController postAskToOpenURLNotification]_block_invoke", 7, 0, "created timer");
}

void sub_10001AB4C(uint64_t a1, uint64_t a2)
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v27 = "AskToResumeCallback";
      v28 = 1024;
      v29 = 1640;
      v30 = 2048;
      v31 = COERCE_DOUBLE([qword_100070AF8 count]);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] AskToResumeCallback callback called  count %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1640, "AskToResumeCallback", 7, 0, "AskToResumeCallback callback called  count %ld", [qword_100070AF8 count]);
  if ([qword_100070A78 askToResumeNotification])
  {
    CFRelease([qword_100070A78 askToResumeNotification]);
    [qword_100070A78 setAskToResumeNotification:0];
  }

  v4 = [qword_100070A78 askToResumeTimeoutTimer];

  if (v4)
  {
    if (sub_1000423E0())
    {
      v5 = sub_100042E68();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v27 = "AskToResumeCallback";
        v28 = 1024;
        v29 = 1650;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] get rid of timer", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1650, "AskToResumeCallback", 7, 0, "get rid of timer");
    v6 = [qword_100070A78 askToResumeTimeoutTimer];
    [v6 invalidate];

    [qword_100070A78 setAskToResumeTimeoutTimer:0];
  }

  v7 = sub_1000423E0();
  switch(a2)
  {
    case 1:
      if (v7)
      {
        v20 = sub_100042E68();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "AskToResumeCallback";
          v28 = 1024;
          v29 = 1663;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] alternate response - user declined", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1663, "AskToResumeCallback", 7, 0, "alternate response - user declined");
      v9 = [qword_100070A78 askToResumeDelegate];
      v10 = [qword_100070A78 askToResumeToken];
      v11 = v9;
      v12 = 0;
      goto LABEL_40;
    case 3:
      if (v7)
      {
        v13 = sub_100042E68();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "AskToResumeCallback";
          v28 = 1024;
          v29 = 1668;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification was cancelled", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1668, "AskToResumeCallback", 7, 0, "notification was cancelled");
      v14 = +[NSDate date];
      v15 = [qword_100070A78 notificationStartTime];
      [v14 timeIntervalSinceDate:v15];
      v17 = v16;

      if (sub_1000423E0())
      {
        v18 = sub_100042E68();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v27 = "AskToResumeCallback";
          v28 = 1024;
          v29 = 1670;
          v30 = 2048;
          v31 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] timeUsed = %f", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1670, "AskToResumeCallback", 7, 0, "timeUsed = %f", v17);
      if ([qword_100070A78 askToResumeTimedOut])
      {
        if (sub_1000423E0())
        {
          v19 = sub_100042E68();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v27 = "AskToResumeCallback";
            v28 = 1024;
            v29 = 1674;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification timed out", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1674, "AskToResumeCallback", 7, 0, "notification timed out");
        v9 = [qword_100070A78 askToResumeDelegate];
        v10 = [qword_100070A78 askToResumeToken];
        v11 = v9;
        v12 = 2;
        goto LABEL_40;
      }

      v22 = sub_100027378();
      v23 = sub_1000423E0();
      if (v22)
      {
        if (v23)
        {
          v24 = sub_100042E68();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v27 = "AskToResumeCallback";
            v28 = 1024;
            v29 = 1681;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is still locked?", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1681, "AskToResumeCallback", 7, 0, "screen is still locked?");
      }

      else
      {
        if (v23)
        {
          v25 = sub_100042E68();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v27 = "AskToResumeCallback";
            v28 = 1024;
            v29 = 1685;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen was locked and is now unlocked  post new notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1685, "AskToResumeCallback", 7, 0, "screen was locked and is now unlocked  post new notification");
        [qword_100070A78 postAskToResumeNotification];
      }

      break;
    case 2:
      if (v7)
      {
        v8 = sub_100042E68();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "AskToResumeCallback";
          v28 = 1024;
          v29 = 1657;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] other response - user accepted", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1657, "AskToResumeCallback", 7, 0, "other response - user accepted");
      [qword_100070A78 pauseScreenSharing:0];
      v9 = [qword_100070A78 askToResumeDelegate];
      v10 = [qword_100070A78 askToResumeToken];
      v11 = v9;
      v12 = 1;
LABEL_40:
      [v11 userRequestResult:v12 senderToken:v10];

      return;
    default:
      if (v7)
      {
        v21 = sub_100042E68();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "AskToResumeCallback";
          v28 = 1024;
          v29 = 1691;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] unexpected response", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1691, "AskToResumeCallback", 7, 0, "unexpected response");
      break;
  }
}

void sub_10001B304(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"askToResumeTimeout:" selector:0 userInfo:0 repeats:28.0];
  [*(a1 + 32) setAskToResumeTimeoutTimer:v2];

  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[IDSServiceEmbeddedController postAskToResumeNotification]_block_invoke";
      v6 = 1024;
      v7 = 1632;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] created timer", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1632, "[IDSServiceEmbeddedController postAskToResumeNotification]_block_invoke", 7, 0, "created timer");
}

void sub_10001BEB8(uint64_t a1, uint64_t a2)
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "ShowUserMessageCallback";
      v20 = 1024;
      v21 = 1808;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] ShowUserMessageCallback", &v18, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1808, "ShowUserMessageCallback", 7, 0, "ShowUserMessageCallback");
  if ([qword_100070A78 showUserMessageNotification])
  {
    CFRelease([qword_100070A78 showUserMessageNotification]);
    [qword_100070A78 setShowUserMessageNotification:0];
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315394;
        v19 = "ShowUserMessageCallback";
        v20 = 1024;
        v21 = 1814;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] cleared notification", &v18, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1814, "ShowUserMessageCallback", 7, 0, "cleared notification");
  }

  v5 = [qword_100070A78 showUserMessageTimeoutTimer];

  if (v5)
  {
    if (sub_1000423E0())
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315394;
        v19 = "ShowUserMessageCallback";
        v20 = 1024;
        v21 = 1819;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] get rid of timer", &v18, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1819, "ShowUserMessageCallback", 7, 0, "get rid of timer");
    v7 = [qword_100070A78 showUserMessageTimeoutTimer];
    [v7 invalidate];

    [qword_100070A78 setShowUserMessageTimeoutTimer:0];
  }

  v8 = sub_1000423E0();
  switch(a2)
  {
    case 1:
      if (v8)
      {
        v12 = sub_100042E68();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315394;
          v19 = "ShowUserMessageCallback";
          v20 = 1024;
          v21 = 1830;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] alternate response - user declined", &v18, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1830, "ShowUserMessageCallback", 7, 0, "alternate response - user declined");
      break;
    case 3:
      if (v8)
      {
        v10 = sub_100042E68();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315394;
          v19 = "ShowUserMessageCallback";
          v20 = 1024;
          v21 = 1834;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification was cancelled", &v18, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1834, "ShowUserMessageCallback", 7, 0, "notification was cancelled");
      if ([qword_100070A78 showUserMessageTimedOut])
      {
        if (sub_1000423E0())
        {
          v11 = sub_100042E68();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 136315394;
            v19 = "ShowUserMessageCallback";
            v20 = 1024;
            v21 = 1837;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification timed out", &v18, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1837, "ShowUserMessageCallback", 7, 0, "notification timed out");
      }

      else
      {
        v14 = sub_100027378();
        v15 = sub_1000423E0();
        if (v14)
        {
          if (v15)
          {
            v16 = sub_100042E68();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v18 = 136315394;
              v19 = "ShowUserMessageCallback";
              v20 = 1024;
              v21 = 1843;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is still locked?", &v18, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1843, "ShowUserMessageCallback", 7, 0, "screen is still locked?");
        }

        else
        {
          if (v15)
          {
            v17 = sub_100042E68();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = 136315394;
              v19 = "ShowUserMessageCallback";
              v20 = 1024;
              v21 = 1847;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen was locked and is now unlocked  post new notification", &v18, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1847, "ShowUserMessageCallback", 7, 0, "screen was locked and is now unlocked  post new notification");
          [qword_100070A78 postShowUserMessageNotification];
        }
      }

      break;
    case 2:
      if (v8)
      {
        v9 = sub_100042E68();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315394;
          v19 = "ShowUserMessageCallback";
          v20 = 1024;
          v21 = 1826;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] other response - user accepted", &v18, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1826, "ShowUserMessageCallback", 7, 0, "other response - user accepted");
      break;
    default:
      if (v8)
      {
        v13 = sub_100042E68();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315394;
          v19 = "ShowUserMessageCallback";
          v20 = 1024;
          v21 = 1853;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] unexpected response", &v18, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1853, "ShowUserMessageCallback", 7, 0, "unexpected response");
      break;
  }
}

void sub_10001C550(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"showUserMessageTimeout:" selector:0 userInfo:0 repeats:28.0];
  [*(a1 + 32) setShowUserMessageTimeoutTimer:v2];

  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[IDSServiceEmbeddedController postShowUserMessageNotification]_block_invoke";
      v6 = 1024;
      v7 = 1800;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] created timer", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1800, "[IDSServiceEmbeddedController postShowUserMessageNotification]_block_invoke", 7, 0, "created timer");
}

void sub_10001D03C()
{
  if (sub_1000423E0())
  {
    v0 = sub_100042E68();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315394;
      v3 = "ShowViewerPausedMessageCallback";
      v4 = 1024;
      v5 = 1962;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[%s:%d] ShowUserMessageCallback", &v2, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1962, "ShowViewerPausedMessageCallback", 7, 0, "ShowUserMessageCallback");
  if ([qword_100070A78 showViewerPausedNotification])
  {
    CFRelease([qword_100070A78 showViewerPausedNotification]);
    [qword_100070A78 setShowViewerPausedNotification:0];
    if (sub_1000423E0())
    {
      v1 = sub_100042E68();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v2 = 136315394;
        v3 = "ShowViewerPausedMessageCallback";
        v4 = 1024;
        v5 = 1968;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[%s:%d] cleared notification", &v2, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1968, "ShowViewerPausedMessageCallback", 7, 0, "cleared notification");
  }
}

void sub_10001D1E8(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"showViewerPausedTimeout:" selector:0 userInfo:0 repeats:28.0];
  [*(a1 + 32) setShowViewerPausedTimeoutTimer:v2];

  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[IDSServiceEmbeddedController postViewerPausedMessageNotification]_block_invoke";
      v6 = 1024;
      v7 = 1954;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] created timer", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1954, "[IDSServiceEmbeddedController postViewerPausedMessageNotification]_block_invoke", 7, 0, "created timer");
}

void sub_100020F30(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setVsHelper:v2];

  v3 = *(a1 + 32);
  v4 = [v3 vsHelper];
  [v4 setDelegate:v3];

  v5 = [*(a1 + 32) vsHelper];
  [v5 run];

  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IDSServiceEmbeddedController initViewServiceHelper]_block_invoke";
      v9 = 1024;
      v10 = 2490;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] setup viewservice helper", &v7, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2490, "[IDSServiceEmbeddedController initViewServiceHelper]_block_invoke", 7, 0, "setup viewservice helper");
}

uint64_t sub_100022828()
{
  if ((byte_100070A89 & 1) == 0)
  {
    v0 = MGCopyAnswer();
    if (v0)
    {
      v1 = v0;
      byte_100070A88 = CFEqual(v0, @"Internal") != 0;
      if (sub_1000423E0())
      {
        v2 = sub_100042E68();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v5 = "InternalBuildInstalled";
          v6 = 1024;
          v7 = 2594;
          v8 = 1024;
          v9 = byte_100070A88;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] build is %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2594, "InternalBuildInstalled", 7, 0, "build is %d", byte_100070A88);
      CFRelease(v1);
    }

    byte_100070A89 = 1;
  }

  return byte_100070A88;
}

void sub_100022984(uint64_t a1)
{
  if (sub_1000398E4(1, 0, (a1 + 24)))
  {
    if (sub_1000423E0())
    {
      v2 = sub_100042E68();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "InitializeUDPSendThread";
        v16 = 1024;
        v17 = 64;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to create s->sendSemaphoreUDP", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 64, "InitializeUDPSendThread", 7, 0, "Unable to create s->sendSemaphoreUDP");
  }

  v3 = sub_100005668();
  *(a1 + 32) = v3;
  if (!v3)
  {
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "InitializeUDPSendThread";
        v16 = 1024;
        v17 = 68;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to create s->bufferPtrCRUDP", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 68, "InitializeUDPSendThread", 7, 0, "Unable to create s->bufferPtrCRUDP");
  }

  v5 = sub_100005668();
  *(a1 + 64) = v5;
  if (!v5)
  {
    if (sub_1000423E0())
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "InitializeUDPSendThread";
        v16 = 1024;
        v17 = 72;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to create s->UDPSendCR", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 72, "InitializeUDPSendThread", 7, 0, "Unable to create s->UDPSendCR");
  }

  v7 = sub_100005668();
  *(a1 + 56) = v7;
  if (!v7)
  {
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "InitializeUDPSendThread";
        v16 = 1024;
        v17 = 76;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to create s->sendInfoCR", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 76, "InitializeUDPSendThread", 7, 0, "Unable to create s->sendInfoCR");
  }

  if (sub_1000398E4(1, 0, (a1 + 40)))
  {
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "InitializeUDPSendThread";
        v16 = 1024;
        v17 = 80;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to create s->statusSempahore", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 80, "InitializeUDPSendThread", 7, 0, "Unable to create s->statusSempahore");
  }

  v10 = sub_1000038DC(sub_100022E60, a1, (a1 + 72));
  if (v10)
  {
    v11 = v10;
    if (sub_1000423E0())
    {
      v12 = sub_100042E68();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "InitializeUDPSendThread";
        v16 = 1024;
        v17 = 90;
        v18 = 1024;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to create server send thread %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 90, "InitializeUDPSendThread", 7, 0, "Unable to create server send thread %d", v11);
  }

  if (sub_1000423E0())
  {
    v13 = sub_100042E68();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "InitializeUDPSendThread";
      v16 = 1024;
      v17 = 92;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] INITAILIALIZED UDP SEND INFO", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 92, "InitializeUDPSendThread", 7, 0, "INITAILIALIZED UDP SEND INFO");
}

void sub_100022E60(uint64_t a1)
{
  if (sub_1000423E0())
  {
    v2 = sub_100042E68();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v97 = "UDPSend_ScreenSharing";
      v98 = 1024;
      v99 = 188;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] ***UDPSend_ScreenSharing", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 188, "UDPSend_ScreenSharing", 7, 0, "***UDPSend_ScreenSharing");
  [*(a1 + 64) lock];
  *(a1 + 104) = sub_100035FAC();
  if (*(a1 + 114) - 1 <= 1)
  {
    v3 = *(a1 + 2702) * *(a1 + 2708) + 30;
    v4 = malloc_type_calloc(1uLL, v3, 0xDC98F95FuLL);
    v5 = sub_1000423E0();
    if (!v4)
    {
      if (v5)
      {
        v6 = sub_100042E68();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v97 = "SendMachineIndex";
          v98 = 1024;
          v99 = 1325;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to allocate memory", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1325, "SendMachineIndex", 7, 0, "Unable to allocate memory");
      exit(1);
    }

    if (v5)
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v97 = "SendMachineIndex";
        v98 = 1024;
        v99 = 1328;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] send macine index", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1328, "SendMachineIndex", 7, 0, "send macine index");
    *v4 = 50331904;
    v4[3] = bswap32(*a1);
    *(v4 + 9) = 0;
    v4[2] = bswap32(*(a1 + 84) + 1);
    *(v4 + 8) = bswap32(*(a1 + 112)) >> 16;
    v8 = *(a1 + 2702);
    v9 = __rev16(v8);
    *(v4 + 10) = v9;
    *(v4 + 11) = 256;
    *(v4 + 12) = v9;
    *(v4 + 13) = bswap32(*(a1 + 2706)) >> 16;
    if (v8)
    {
      v10 = 0;
      v11 = *(a1 + 3248);
      v12 = (v4 + 7);
      do
      {
        if (*v11 != 2)
        {
          memcpy(v12, v11 + 38, *(a1 + 2708));
          v12 += *(a1 + 2708);
          LOWORD(v8) = *(a1 + 2702);
        }

        v11 += 60;
        ++v10;
      }

      while (v10 < v8);
    }

    if (!sub_100024520(a1, 0))
    {
      sub_100025D40(a1, v4, v3);
      sub_100026438(a1, v4, v3, 0);
      ++*(a1 + 84);
    }
  }

  v93 = sub_100040318();
  if (*(a1 + 3173))
  {
    v94 = 0;
    goto LABEL_92;
  }

  v94 = 0;
LABEL_22:
  v13 = sub_100039D00(*(a1 + 24), 0xBB8u);
  if (*(a1 + 3173))
  {
    if (sub_1000423E0())
    {
      v84 = sub_100042E68();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v97 = "UDPSend_ScreenSharing";
        v98 = 1024;
        v99 = 210;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "[%s:%d] UDPSend stop", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 210, "UDPSend_ScreenSharing", 7, 0, "UDPSend stop");
    goto LABEL_92;
  }

  v14 = v13;
  [*(a1 + 32) lock];
  v15 = *(a1 + 8);
  if (!v15)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    [*(a1 + 32) unlock];
    if (v14)
    {
      sub_100025268(a1);
      sub_100025AFC(a1);
    }

    goto LABEL_84;
  }

  v16 = *(v15 + 6);
  v17 = *(a1 + 16);
  if (v15 == v17 || (v16 & 1) != 0)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v19 = v15;
    goto LABEL_46;
  }

  LODWORD(v20) = 0;
  v21 = v94 + 1;
  LOWORD(v22) = *(v15 + 6);
  v23 = *(a1 + 8);
  while (1)
  {
    v24 = v21;
    v20 = (v23[2] + v20);
    if (!*v23)
    {
      break;
    }

    if ((v22 & 1) == 0)
    {
      v22 = *(*v23 + 12);
      ++v21;
      v23 = *v23;
      if (((v22 ^ v16) & 0x10) == 0)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  if (v17 == v23)
  {
LABEL_37:
    v94 = v24;
    v19 = malloc_type_malloc(v20 + 14, 0x108004043D1B9D8uLL);
    *v19 = 0;
    v19[2] = 0;
    *(v19 + 6) = 0;
    while (*v15 || *(a1 + 16) == v15)
    {
      memcpy(v19 + v19[2] + 14, v15 + 14, *(v15 + 2));
      *(v19 + 6) |= *(v15 + 6);
      v19[2] += *(v15 + 2);
      v25 = *v15;
      v26 = *(v15 + 6);
      free(v15);
      if (v25)
      {
        v15 = v25;
        if ((v26 & 1) == 0)
        {
          continue;
        }
      }

      if ((v26 & 1) != 0 && v25)
      {
        *(a1 + 8) = v25;
      }

      else
      {
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

LABEL_46:
      [*(a1 + 32) unlock];
      if (*(a1 + 3173))
      {
        if (sub_1000423E0())
        {
          v85 = sub_100042E68();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v97 = "UDPSend_ScreenSharing";
            v98 = 1024;
            v99 = 304;
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "[%s:%d] terminate flag set", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 304, "UDPSend_ScreenSharing", 7, 0, "terminate flag set");
        goto LABEL_92;
      }

      v27 = *(v19 + 6);
      v28 = v19[2];
      if (v28)
      {
        v29 = v19 + 14;
        v95 = *(v19 + 6);
        v30 = (v27 << 30 >> 31) & 0x600;
        v31 = v19[2];
        while (1)
        {
          if (v31 >= 0x44C)
          {
            v32 = 1100;
          }

          else
          {
            v32 = v31;
          }

          v33 = v32 + 20;
          v34 = malloc_type_malloc((v32 + 20), 0xE17DA7E9uLL);
          if (!v34)
          {
            goto LABEL_91;
          }

          v35 = v34;
          *v34 = 256;
          v34[3] = bswap32(*a1);
          *(v34 + 9) = 0;
          *(v34 + 1) = v30;
          v34[2] = bswap32(*(a1 + 84) + 1);
          *(v34 + 8) = bswap32(*(a1 + 112)) >> 16;
          if (*(a1 + 114) - 3 <= 1)
          {
            v34[3] = bswap32(*(a1 + 3164));
          }

          memcpy(v34 + 5, v29, v32);
          v36 = sub_100024520(a1, 0);
          if (v36)
          {
            break;
          }

          *(v35 + 18) = 0;
          sub_100025D40(a1, v35, (v32 + 20));
          sub_100026438(a1, v35, v33, v32);
          ++*(a1 + 84);
          sub_100025268(a1);
          if (*(a1 + 114) - 3 <= 1)
          {
            *(a1 + 3164) += v33;
          }

          v29 += v32;
          v31 -= v32;
          if (!v31)
          {
            *(a1 + 3200) += v28;
            LOBYTE(v27) = v95;
            goto LABEL_64;
          }
        }

        v44 = v36;
        if (sub_1000423E0())
        {
          v45 = sub_100042E68();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v97 = "SendBufferToUDPReceivers";
            v98 = 1024;
            v99 = 589;
            v100 = 1024;
            LODWORD(v101) = v44;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%s:%d] error from validatepackets %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 589, "SendBufferToUDPReceivers", 7, 0, "error from validatepackets %d", v44);
        free(v35);
LABEL_91:
        *(a1 + 3173) = 1;
LABEL_92:
        [*(a1 + 56) lock];
        if (sub_1000423E0())
        {
          v46 = sub_100042E68();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = *(a1 + 3173);
            *buf = 136315650;
            v97 = "UDPSend_ScreenSharing";
            v98 = 1024;
            v99 = 455;
            v100 = 1024;
            LODWORD(v101) = v47;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%s:%d] s->terminateThreadFlag = %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 455, "UDPSend_ScreenSharing", 7, 0, "s->terminateThreadFlag = %d", *(a1 + 3173));
        if (sub_100039B0C(*(a1 + 24)))
        {
          if (sub_1000423E0())
          {
            v48 = sub_100042E68();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v97 = "UDPSend_ScreenSharing";
              v98 = 1024;
              v99 = 459;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to delete s->sendSemaphoreUDP", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 459, "UDPSend_ScreenSharing", 7, 0, "Unable to delete s->sendSemaphoreUDP");
        }

        if (sub_1000423E0())
        {
          v49 = sub_100042E68();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v97 = "UDPSend_ScreenSharing";
            v98 = 1024;
            v99 = 461;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%s:%d] terminate udp send thread - delete s->sendSemaphoreUDP", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 461, "UDPSend_ScreenSharing", 7, 0, "terminate udp send thread - delete s->sendSemaphoreUDP");
        *(a1 + 24) = 0;

        *(a1 + 32) = 0;
        *(a1 + 56) = 0;
        v50 = *(a1 + 8);
        if (v50)
        {
          do
          {
            v51 = *v50;
            free(v50);
            v50 = v51;
          }

          while (v51);
        }

        v52 = 0;
        while (1)
        {
          v53 = *(a1 + 120 + v52);
          if (v53)
          {
            free(v53);
          }

          v52 += 8;
          if (v52 == 1024)
          {
            if (!*(a1 + 3272) && !*(a1 + 3240))
            {
              if (sub_1000423E0())
              {
                v54 = sub_100042E68();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                {
                  v55 = *(a1 + 2696);
                  *buf = 136315650;
                  v97 = "UDPSend_ScreenSharing";
                  v98 = 1024;
                  v99 = 496;
                  v100 = 1024;
                  LODWORD(v101) = v55;
                  _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%s:%d] close %d", buf, 0x18u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 496, "UDPSend_ScreenSharing", 7, 0, "close %d", *(a1 + 2696));
              if (close(*(a1 + 2696)))
              {
                if (sub_1000423E0())
                {
                  v56 = sub_100042E68();
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    v57 = __error();
                    v58 = strerror(*v57);
                    *buf = 136315650;
                    v97 = "UDPSend_ScreenSharing";
                    v98 = 1024;
                    v99 = 499;
                    v100 = 2080;
                    v101 = v58;
                    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "[%s:%d] error closing socket %s", buf, 0x1Cu);
                  }
                }

                v59 = __error();
                v60 = strerror(*v59);
                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 499, "UDPSend_ScreenSharing", 3, 0, "error closing socket %s", v60);
              }
            }

            v61 = *(a1 + 48);
            if (v61)
            {
              sub_100039C0C(v61);
            }

            if (sub_1000423E0())
            {
              v62 = sub_100042E68();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                v63 = sub_100040318();
                *buf = 136315650;
                v97 = "UDPSend_ScreenSharing";
                v98 = 1024;
                v99 = 506;
                v100 = 1024;
                LODWORD(v101) = v63 - v93;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[%s:%d] TOTAL TIME UDPSend Thread %u", buf, 0x18u);
              }
            }

            v64 = sub_100040318();
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 506, "UDPSend_ScreenSharing", 7, 0, "TOTAL TIME UDPSend Thread %u", v64 - v93);
            if (sub_1000423E0())
            {
              v65 = sub_100042E68();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                v66 = *(a1 + 112);
                *buf = 136315650;
                v97 = "UDPSend_ScreenSharing";
                v98 = 1024;
                v99 = 507;
                v100 = 1024;
                LODWORD(v101) = v66;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ending RetryInterval: %u", buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 507, "UDPSend_ScreenSharing", 7, 0, "Ending RetryInterval: %u", *(a1 + 112));
            if (sub_1000423E0())
            {
              v67 = sub_100042E68();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = *(a1 + 3176);
                *buf = 136315650;
                v97 = "UDPSend_ScreenSharing";
                v98 = 1024;
                v99 = 508;
                v100 = 1024;
                LODWORD(v101) = v68;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[%s:%d] Missed Packets Sent: %u", buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 508, "UDPSend_ScreenSharing", 7, 0, "Missed Packets Sent: %u", *(a1 + 3176));
            if (sub_1000423E0())
            {
              v69 = sub_100042E68();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                v70 = *(a1 + 96);
                *buf = 136315650;
                v97 = "UDPSend_ScreenSharing";
                v98 = 1024;
                v99 = 509;
                v100 = 1024;
                LODWORD(v101) = v70;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[%s:%d] Last Validated Packet: %u", buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 509, "UDPSend_ScreenSharing", 7, 0, "Last Validated Packet: %u", *(a1 + 96));
            if (sub_1000423E0())
            {
              v71 = sub_100042E68();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                v72 = *(a1 + 3184);
                *buf = 136315650;
                v97 = "UDPSend_ScreenSharing";
                v98 = 1024;
                v99 = 510;
                v100 = 1024;
                LODWORD(v101) = v72;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[%s:%d] Status Requests Sent: %u", buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 510, "UDPSend_ScreenSharing", 7, 0, "Status Requests Sent: %u", *(a1 + 3184));
            if (sub_1000423E0())
            {
              v73 = sub_100042E68();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                v74 = *(a1 + 3200);
                *buf = 136315650;
                v97 = "UDPSend_ScreenSharing";
                v98 = 1024;
                v99 = 512;
                v100 = 2048;
                v101 = v74;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "[%s:%d] Total Bytes Sent: %lu", buf, 0x1Cu);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 512, "UDPSend_ScreenSharing", 7, 0, "Total Bytes Sent: %lu", *(a1 + 3200));
            if (sub_1000423E0())
            {
              v75 = sub_100042E68();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                v76 = *(a1 + 3208);
                *buf = 136315650;
                v97 = "UDPSend_ScreenSharing";
                v98 = 1024;
                v99 = 513;
                v100 = 2048;
                v101 = v76;
                _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "[%s:%d] Total Bytes Validated: %lu", buf, 0x1Cu);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 513, "UDPSend_ScreenSharing", 7, 0, "Total Bytes Validated: %lu", *(a1 + 3208));
            if (sub_1000423E0())
            {
              v77 = sub_100042E68();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                v78 = *(a1 + 3256);
                *buf = 136315650;
                v97 = "UDPSend_ScreenSharing";
                v98 = 1024;
                v99 = 514;
                v100 = 2048;
                v101 = v78;
                _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "[%s:%d] Estimated Thruput: %lu", buf, 0x1Cu);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 514, "UDPSend_ScreenSharing", 7, 0, "Estimated Thruput: %lu", *(a1 + 3256));
            if (sub_1000423E0())
            {
              v79 = sub_100042E68();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v97 = "UDPSend_ScreenSharing";
                v98 = 1024;
                v99 = 515;
                v100 = 1024;
                LODWORD(v101) = v94;
                _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "[%s:%d] Collated Buffers %u", buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 515, "UDPSend_ScreenSharing", 7, 0, "Collated Buffers %u", v94);
            [*(a1 + 64) unlock];
            pthread_exit(0);
          }
        }
      }

      if (sub_1000423E0())
      {
        v37 = sub_100042E68();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v97 = "UDPSend_ScreenSharing";
          v98 = 1024;
          v99 = 382;
          v100 = 2048;
          v101 = v19;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%s:%d] buffsize is 0 %p", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 382, "UDPSend_ScreenSharing", 7, 0, "buffsize is 0 %p", v19);
      v28 = 0;
LABEL_64:
      [*(a1 + 32) lock];
      v38 = *(a1 + 3192) - v28;
      *(a1 + 3192) = v38;
      if (v38 < 0)
      {
        if (sub_1000423E0())
        {
          v39 = sub_100042E68();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = *(a1 + 3192);
            *buf = 136315650;
            v97 = "UDPSend_ScreenSharing";
            v98 = 1024;
            v99 = 388;
            v100 = 2048;
            v101 = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%s:%d] total bytes pending is < 0 %lld", buf, 0x1Cu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 388, "UDPSend_ScreenSharing", 7, 0, "total bytes pending is < 0 %lld", *(a1 + 3192));
      }

      if (!*(a1 + 8) && *(a1 + 3192))
      {
        if (sub_1000423E0())
        {
          v41 = sub_100042E68();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(a1 + 3192);
            *buf = 136315650;
            v97 = "UDPSend_ScreenSharing";
            v98 = 1024;
            v99 = 395;
            v100 = 1024;
            LODWORD(v101) = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%s:%d] bytes still pending! %u", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 395, "UDPSend_ScreenSharing", 7, 0, "bytes still pending! %u", *(a1 + 3192));
      }

      [*(a1 + 32) unlock];
      free(v19);
      if ((v27 & 1) == 0)
      {
        if ((v27 & 2) == 0)
        {
          goto LABEL_77;
        }

LABEL_83:
        sub_100024520(a1, 1);
        if ((v27 & 1) == 0)
        {
          goto LABEL_84;
        }

LABEL_162:
        if (sub_1000423E0())
        {
          v86 = sub_100042E68();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v97 = "UDPSend_ScreenSharing";
            v98 = 1024;
            v99 = 431;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "[%s:%d] kRFBFlagLastBuffer set - break out", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 431, "UDPSend_ScreenSharing", 7, 0, "kRFBFlagLastBuffer set - break out");
        goto LABEL_92;
      }

      if (sub_1000423E0())
      {
        v43 = sub_100042E68();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v97 = "UDPSend_ScreenSharing";
          v98 = 1024;
          v99 = 411;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%s:%d] last buffer not at end of linked list!", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 411, "UDPSend_ScreenSharing", 7, 0, "last buffer not at end of linked list!");
      if ((v27 & 2) != 0)
      {
        goto LABEL_83;
      }

LABEL_77:
      if (v27)
      {
        goto LABEL_162;
      }

LABEL_84:
      if (*(a1 + 3173))
      {
        goto LABEL_92;
      }

      goto LABEL_22;
    }

    if (sub_1000423E0())
    {
      v80 = sub_100042E68();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = *v15;
        v82 = *(a1 + 16);
        *buf = 136315906;
        v97 = "UDPSend_ScreenSharing";
        v98 = 1024;
        v99 = 259;
        v100 = 2048;
        v101 = v81;
        v102 = 2048;
        v103 = v82;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "[%s:%d] p->next %p s->lastFrameBuffer %p", buf, 0x26u);
      }
    }

    v83 = *v15;
    v91 = *(a1 + 16);
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 259, "UDPSend_ScreenSharing", 5, 0, "p->next %p s->lastFrameBuffer %p", *v15);
  }

  else
  {
    if (sub_1000423E0())
    {
      v87 = sub_100042E68();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        v88 = *v23;
        v89 = *(a1 + 16);
        *buf = 136315906;
        v97 = "UDPSend_ScreenSharing";
        v98 = 1024;
        v99 = 236;
        v100 = 2048;
        v101 = v88;
        v102 = 2048;
        v103 = v89;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[%s:%d] p->next %p s->lastFrameBuffer %p", buf, 0x26u);
      }
    }

    v90 = *v23;
    v92 = *(a1 + 16);
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 236, "UDPSend_ScreenSharing", 5, 0, "p->next %p s->lastFrameBuffer %p", *v23);
  }

  exit(90);
}

uint64_t sub_10002442C(uint64_t a1)
{
  if (sub_1000423E0())
  {
    v2 = sub_100042E68();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "StopUDPSendThread";
      v6 = 1024;
      v7 = 110;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] StopUDPSendThread", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 110, "StopUDPSendThread", 7, 0, "StopUDPSendThread");
  *(a1 + 3173) = 1;
  return sub_100039C0C(*(a1 + 24));
}

uint64_t sub_100024520(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(a1 + 84);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 2 * *(a1 + 112);
    v6 = *(a1 + 84);
    if (v5 <= v6)
    {
      v7 = v6 - v5;
      v4 = v7 + 1;
      if (v7 == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  sub_1000268A0(a1);
  v8 = *(a1 + 2710);
  v96 = sub_100035FAC();
  v9 = *(a1 + 96);
  if (v9 == -1)
  {
    if (a2)
    {
      goto LABEL_25;
    }

LABEL_10:
    sub_100025268(a1);
LABEL_11:
    v10 = *(a1 + 84);
    v11 = *(a1 + 100);
    v12 = *(a1 + 112);
    if (v10 < v11 + 2 * v12 && (!(v11 + v12) || !*(a1 + 2712)))
    {
      return 0;
    }

    v13 = *(a1 + 96);
    if (v13 == -1)
    {
      goto LABEL_176;
    }

    if (!*(a1 + 2702))
    {
      goto LABEL_179;
    }

    v14 = 0;
    v15 = 0;
    v16 = (*(a1 + 3248) + 68);
    do
    {
      v18 = *v16;
      v16 += 30;
      v17 = v18;
      if (v18 > v15)
      {
        v15 = v17;
      }

      ++v14;
    }

    while (v14 < *(a1 + 2702));
    if (v10 >> 6 >= v15)
    {
LABEL_179:
      if (*(a1 + 2712))
      {
        v19 = v12 >> 1;
        *(a1 + 2712) = 0;
        v75 = *(a1 + 3168);
        v28 = v75 >= 0x3E8;
        v76 = v75 - 1000;
        if (v28)
        {
          *(a1 + 3168) = v76;
        }
      }

      else
      {
        v82 = v13 > v10 - 2 * v12;
        v19 = v12 + (v12 >> 3);
        if (v82)
        {
          LOWORD(v19) = v19 + 1;
        }

        else
        {
          LOWORD(v19) = *(a1 + 112);
        }
      }

      v19 = v19;
      if (v19 >= 0x3Eu)
      {
        v19 = 62;
      }

      v82 = v19 > 8;
      v83 = 8;
      goto LABEL_158;
    }

    if (*(a1 + 2712))
    {
      *(a1 + 2712) = 0;
      v19 = v12 >> 1;
      v20 = *(a1 + 3168) + 2000;
      if (v20 >= 0x4650)
      {
        v20 = 18000;
      }
    }

    else
    {
      LOWORD(v19) = v12 + 1;
      v84 = *(a1 + 3168);
      v28 = v84 >= 0x3E8;
      v20 = v84 - 1000;
      if (!v28)
      {
        goto LABEL_155;
      }
    }

    *(a1 + 3168) = v20;
LABEL_155:
    v19 = v19;
    if (v19 >= 0x28u)
    {
      v19 = 40;
    }

    v82 = v19 > 4;
    v83 = 4;
LABEL_158:
    if (v82)
    {
      v12 = v19;
    }

    else
    {
      v12 = v83;
    }

    [*(a1 + 56) lock];
    if (*(a1 + 2702))
    {
      LODWORD(v85) = 0;
      v86 = 0;
      v87 = (*(a1 + 3248) + 56);
      do
      {
        v89 = *v87;
        v87 += 30;
        v88 = v89;
        if (v89 <= v85)
        {
          v85 = v85;
        }

        else
        {
          v85 = v88;
        }

        ++v86;
      }

      while (v86 < *(a1 + 2702));
      if (v85)
      {
        v90 = 2200000000u * *(a1 + 112) / v85;
        v91 = *(a1 + 3256);
        if (v91)
        {
          v90 = (v91 + (v90 - v91) / 8) & ~((v91 + (v90 - v91) / 8) >> 63);
        }

        *(a1 + 3256) = v90;
      }
    }

    [*(a1 + 56) unlock];
    if (v12 != *(a1 + 112))
    {
      if (sub_1000423E0())
      {
        v92 = sub_100042E68();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          v93 = *(a1 + 112);
          *buf = 136315906;
          v101 = "AdjustReplyInterval";
          v102 = 1024;
          v103 = 709;
          v104 = 1024;
          *v105 = v12;
          *&v105[4] = 1024;
          *&v105[6] = v93;
          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "[%s:%d] new reply interval %d  old %d", buf, 0x1Eu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 709, "AdjustReplyInterval", 7, 0, "new reply interval %d  old %d", v12, *(a1 + 112));
    }

LABEL_176:
    result = 0;
    *(a1 + 112) = v12;
    *(a1 + 100) = *(a1 + 84);
    return result;
  }

  if (!a2 && *(a1 + 84) - v9 + 1 < 2 * *(a1 + 112))
  {
    goto LABEL_10;
  }

LABEL_25:
  v94 = v8;
  v21 = 0;
  v95 = bswap32(v4);
  do
  {
    sub_100025268(a1);
    if ((v21 & 1) != 0 && *(a1 + 2702))
    {
      v22 = 0;
      v23 = *(a1 + 3248) + 48;
      do
      {
        if (*(v23 - 48) != 2 && *(v23 - 4) < v4)
        {
          sched_yield();
          v24 = *(v23 + 4);
          v25 = sub_100035FAC();
          if (!v24)
          {
            *(v23 + 4) = v25;
            v24 = v25;
          }

          if (v25 <= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v25;
          }

          if (v25 - v24 <= 0x1DCD6500)
          {
            v27 = v25;
          }

          else
          {
            v27 = v26;
          }

          v28 = *(a1 + 114) - 5 <= 0xFFFFFFFD && v27 - v24 >= 0x2AEA541;
          if (v28)
          {
            if (sub_1000423E0())
            {
              v51 = sub_100042E68();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v101 = "SendStatusRequests";
                v102 = 1024;
                v103 = 1716;
                v104 = 1024;
                *v105 = v22;
                *&v105[4] = 1024;
                *&v105[6] = v27;
                v106 = 1024;
                v107 = v24;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[%s:%d] fatal comm error %x time %u lasttime %u", buf, 0x24u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1716, "SendStatusRequests", 7, 0, "fatal comm error %x time %u lasttime %u", v22, v27, v24);
            *(v23 - 48) = 2;
            *(v23 - 44) = -1;
            ++*(a1 + 2710);
          }

          else
          {
            v29 = *(v23 - 36);
            v30 = (v23 - 12);
            if (!v29)
            {
              v30 = v23;
            }

            v31 = *(v23 + 8);
            if (!v31)
            {
              v30 = (a1 + 104);
            }

            v32 = *v30;
            v33 = 500000 * v29 + 500000 + v31;
            if (v29 > 3)
            {
              v33 = 2500000;
            }

            v34 = 2 * v31;
            if (v29)
            {
              v35 = v33;
            }

            else
            {
              v35 = v34;
            }

            v36 = *(a1 + 108) + v35;
            *(a1 + 108) = 0;
            v37 = *(a1 + 2702);
            if (v37 <= 1)
            {
              v38 = 1000;
            }

            else
            {
              v38 = (v37 << 11) + 5000;
            }

            if (*(v23 - 4) < 0x400u)
            {
              v38 = 500000;
            }

            if (v36 <= v38)
            {
              v36 = v38;
            }

            if (v36 >= 0x2625A0)
            {
              v39 = 2500000;
            }

            else
            {
              v39 = v36;
            }

            if (v27 - v32 > v39)
            {
              if (sub_1000423E0())
              {
                v40 = sub_100042E68();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = sub_100035FAC();
                  v42 = *(v23 + 8);
                  v43 = *(a1 + 96);
                  v44 = *(a1 + 112);
                  v45 = *(a1 + 104);
                  v46 = *(v23 - 36);
                  *buf = 136317954;
                  v101 = "SendStatusRequests";
                  v102 = 1024;
                  v103 = 1754;
                  v104 = 1024;
                  *v105 = v22;
                  *&v105[4] = 1024;
                  *&v105[6] = v41;
                  v106 = 1024;
                  v107 = v32;
                  v108 = 1024;
                  v109 = v42;
                  v110 = 1024;
                  v111 = v4;
                  v112 = 1024;
                  v113 = v43;
                  v114 = 1024;
                  v115 = v44;
                  v116 = 1024;
                  v117 = v39;
                  v118 = 1024;
                  v119 = v45;
                  v120 = 1024;
                  v121 = v46;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%s:%d] send status request %d, %u  stattime %u roundtrip %u for  minpkt %d maxval %u retryinteral %u wait %u 1st %u pend %d", buf, 0x4Eu);
                }
              }

              v47 = sub_100035FAC();
              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1754, "SendStatusRequests", 7, 0, "send status request %d, %u  stattime %u roundtrip %u for  minpkt %d maxval %u retryinteral %u wait %u 1st %u pend %d", v22, v47, v32, *(v23 + 8), v4, *(a1 + 96), *(a1 + 112), v39, *(a1 + 104), *(v23 - 36));
              if (*(v23 + 4) < *v23)
              {
                *(v23 + 4) = sub_100035FAC();
              }

              ++*(v23 - 36);
              v99 = 0;
              v98 = 0;
              v48 = bswap32(*a1);
              v97 = 16777472;
              HIDWORD(v98) = v95;
              LODWORD(v99) = v48;
              ++*(v23 - 46);
              if ((~++dword_100070A8C & 0x1F) == 0)
              {
                if (sub_1000423E0())
                {
                  v49 = sub_100042E68();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    v101 = "SendStatusRequestPacket";
                    v102 = 1024;
                    v103 = 1809;
                    v104 = 1024;
                    *v105 = dword_100070A8C;
                    *&v105[4] = 1024;
                    *&v105[6] = v4;
                    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%s:%d] status request count %d  packetIndex %d", buf, 0x1Eu);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1809, "SendStatusRequestPacket", 7, 0, "status request count %d  packetIndex %d", dword_100070A8C, v4);
              }

              if (sub_1000423E0())
              {
                v50 = sub_100042E68();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v101 = "SendStatusRequestPacket";
                  v102 = 1024;
                  v103 = 1815;
                  v104 = 1024;
                  *v105 = v4;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[%s:%d] send status requst - min packet should be %u", buf, 0x18u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1815, "SendStatusRequestPacket", 7, 0, "send status requst - min packet should be %u", v4);
              sub_1000264F4(a1, (v23 + 44), &v97, 20);
              *(v23 - 12) = sub_100035FAC();
              ++*(a1 + 3184);
            }
          }
        }

        ++v22;
        v23 += 120;
      }

      while (v22 < *(a1 + 2702));
    }

    if (*(a1 + 3173))
    {
      if (sub_1000423E0())
      {
        v77 = sub_100042E68();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v101 = "ValidatePackets";
          v102 = 1024;
          v103 = 1982;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "[%s:%d] ValidatePackets - terminateThreadFlag", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1982, "ValidatePackets", 7, 0, "ValidatePackets - terminateThreadFlag");
      return 4294967294;
    }

    v52 = *(a1 + 3248);
    v53 = sub_100035FAC();
    v54 = *(a1 + 2702);
    if (!v54)
    {
      goto LABEL_110;
    }

    v55 = v53;
    v56 = 0;
    v57 = 0;
    v58 = (v52 + 36);
    v59 = -1;
    do
    {
      v60 = v58[2];
      if (v60 < v4)
      {
        if (*(a1 + 92) <= v60)
        {
          if (*(v58 - 17))
          {
            v61 = *v58;
          }

          else
          {
            v61 = *(a1 + 1144 + 4 * (v4 & 0x7F));
            if (v55 < v61)
            {
              if (sub_1000423E0())
              {
                v62 = sub_100042E68();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v101 = "GetMinTimeoutNeeded";
                  v102 = 1024;
                  v103 = 923;
                  v104 = 1024;
                  *v105 = v55;
                  *&v105[4] = 1024;
                  *&v105[6] = v61;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[%s:%d] curtime %u senttime %u", buf, 0x1Eu);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 923, "GetMinTimeoutNeeded", 7, 0, "curtime %u senttime %u", v55, v61);
            }
          }
        }

        else if (*(a1 + 88) <= *v58)
        {
          v61 = *v58;
        }

        else
        {
          v61 = *(a1 + 88);
        }

        v63 = v58[7];
        if (!v63)
        {
          v63 = 250000;
          v58[7] = 250000;
        }

        v64 = v55 - v61;
        v65 = v63 << *(v58 - 17);
        if (*(v58 - 17))
        {
          v56 = 1;
        }

        v66 = v65 - v64;
        if (v65 - v64 >= v59)
        {
          v66 = v59;
        }

        if (v65 > v64)
        {
          v59 = v66;
        }
      }

      ++v57;
      v58 += 30;
    }

    while (v57 < *(a1 + 2702));
    LOBYTE(v54) = v56 != 0;
    v67 = v59 >= 0x16E360 ? 1500000 : v59;
    if (v59 == -1)
    {
LABEL_110:
      v67 = 50000;
    }

    if (((v67 >> 5 < 0x271) & v54) != 0)
    {
      v68 = 20000;
    }

    else
    {
      v68 = v67;
    }

    if (v68 >= 0x1389)
    {
      sub_100035FAC();
      *(a1 + 3175) = 1;
      sub_100039D00(*(a1 + 40), v68 >> 10);
      if (sub_1000423E0())
      {
        v69 = sub_100042E68();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v101 = "ValidatePackets";
          v102 = 1024;
          v103 = 1998;
          v104 = 2048;
          *v105 = v68 >> 10;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[%s:%d] waited for %lu", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1998, "ValidatePackets", 7, 0, "waited for %lu", v68 >> 10);
      *(a1 + 3175) = 0;
      if (sub_100035FAC() - v96 >= 0x4C4B41)
      {
        sub_100025AFC(a1);
        v96 = sub_100035FAC();
      }
    }

    sub_100025268(a1);
    sub_1000268A0(a1);
    v70 = *(a1 + 2710);
    v71 = *(a1 + 2702);
    if (v70 >= v71)
    {
      break;
    }

    v72 = *(a1 + 96);
    v21 = 1;
  }

  while (v72 == -1 || v72 < v4);
  if (v70 != v71 && (!*(a1 + 2710) || *(a1 + 3172)))
  {
    if (v70 > v94)
    {
      v78 = *(a1 + 3248);
      v79 = sub_100035FAC();
      v80 = *(a1 + 2702);
      if (*(a1 + 2702))
      {
        v81 = 0;
        do
        {
          if (*v78 != 2)
          {
            *(v78 + 52) = v79;
          }

          v78 += 120;
          ++v81;
        }

        while (v81 < v80);
      }
    }

    goto LABEL_11;
  }

  if (sub_1000423E0())
  {
    v73 = sub_100042E68();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v101 = "ValidatePackets";
      v102 = 1024;
      v103 = 2032;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "[%s:%d] ValidatePackets - gave up", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 2032, "ValidatePackets", 7, 0, "ValidatePackets - gave up");
  return 0xFFFFFFFFLL;
}

void sub_100025268(uint64_t a1)
{
  v1 = *(a1 + 84);
  if (!v1)
  {
    return;
  }

  v3 = v1 < 0x81 ? 1 : v1 - 127;
  v67[0] = 0;
  v67[1] = 0;
  if (!*(a1 + 2702))
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v54 = 0;
  v7 = *(a1 + 3248);
  do
  {
    v8 = [*(a1 + 56) lock];
    if (v8)
    {
      v9 = v8;
      if (sub_1000423E0())
      {
        v10 = sub_100042E68();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v59 = "SendMissedPackets";
          v60 = 1024;
          v61 = 1127;
          v62 = 1024;
          v63 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****enter cr err %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1127, "SendMissedPackets", 7, 0, "*****enter cr err %d", v9);
    }

    if (*v7 != 1)
    {
      v26 = v6;
      goto LABEL_42;
    }

    v50 = v5;
    v55 = v6 + 1;
    v11 = v54;
    if (!v6)
    {
      v11 = (v7 + 92);
    }

    v54 = v11;
    v12 = *(v7 + 40);
    v13 = *(v7 + 16);
    __memcpy_chk();
    if (!*(v7 + 16))
    {
      v15 = 0;
LABEL_40:
      *(v7 + 68) = vadd_s32(*(v7 + 68), vdup_n_s32(v15));
      goto LABEL_41;
    }

    v14 = 0;
    v15 = 0;
    v16 = v12 - 8 * v13 + 1;
    v17 = v66;
    v51 = &v66[(*(v7 + 16) - 1)];
    v18 = v66;
    while (1)
    {
      v19 = *v18;
      v52 = v18 + 1;
      v53 = v17;
      if (*v18)
      {
        break;
      }

      v16 += 8;
LABEL_32:
      v18 = v52;
      v17 = v52;
      if (v53 == v51)
      {
        goto LABEL_40;
      }
    }

    v20 = 0;
    v21 = 128;
    while ((v21 & v19) == 0)
    {
LABEL_28:
      ++v16;
      v21 >>= 1;
      v25 = v20++ >= 7;
      if (v25)
      {
        goto LABEL_32;
      }
    }

    v22 = *(a1 + 84);
    v23 = sub_1000423E0();
    if (v16 <= v22)
    {
      if (v23)
      {
        v24 = sub_100042E68();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v59 = "SendMissedPackets";
          v60 = 1024;
          v61 = 1171;
          v62 = 1024;
          v63 = v16;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] missed %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1171, "SendMissedPackets", 7, 0, "missed %d", v16);
      if (!v14 && v16 - 1 > *(v7 + 44))
      {
        *(v7 + 44) = v16 - 1;
      }

      ++v15;
      v14 = 1;
      *(v67 + ((v16 - v3) >> 3)) |= 1 << (~(v16 - v3) & 7);
      goto LABEL_28;
    }

    if (v23)
    {
      v27 = sub_100042E68();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 84);
        *buf = 136315906;
        v59 = "SendMissedPackets";
        v60 = 1024;
        v61 = 1168;
        v62 = 1024;
        v63 = v16;
        v64 = 1024;
        v65 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] Too large value %u %u ", buf, 0x1Eu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1168, "SendMissedPackets", 7, 0, "Too large value %u %u ", v16, *(a1 + 84));
LABEL_41:
    v4 = 1;
    v26 = v55;
    v5 = v50;
LABEL_42:
    v29 = [*(a1 + 56) unlock];
    if (v29)
    {
      v30 = v29;
      if (sub_1000423E0())
      {
        v31 = sub_100042E68();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v59 = "SendMissedPackets";
          v60 = 1024;
          v61 = 1211;
          v62 = 1024;
          v63 = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] ****exit cr err %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1211, "SendMissedPackets", 7, 0, "****exit cr err %d", v30);
    }

    v7 += 120;
    ++v5;
    v6 = v26;
  }

  while (v5 < *(a1 + 2702));
  if (v4)
  {
    v32 = 0;
    v33 = a1 + 1656;
    v34 = a1 + 2168;
    v56 = v26;
    do
    {
      v57 = v32;
      v35 = *(v67 + v32);
      if (*(v67 + v32))
      {
        v36 = 0;
        v37 = 128;
        do
        {
          if ((v37 & v35) != 0)
          {
            ++*(a1 + 3176);
            if (v3 > *(a1 + 92))
            {
              *(a1 + 92) = v3;
            }

            *(a1 + 2712) = 1;
            if (v3 != *(v33 + 4 * (v3 & 0x7F)))
            {
              if (sub_1000423E0())
              {
                v38 = sub_100042E68();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  v39 = *(v33 + 4 * (v3 & 0x7F));
                  *buf = 136315906;
                  v59 = "SendMissedPackets";
                  v60 = 1024;
                  v61 = 1249;
                  v62 = 1024;
                  v63 = v3;
                  v64 = 1024;
                  v65 = v39;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "[%s:%d] wrong packet index %u %u ", buf, 0x1Eu);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1249, "SendMissedPackets", 1, 0, "wrong packet index %u %u ", v3, *(v33 + 4 * (v3 & 0x7F)));
              LOWORD(v26) = v56;
            }

            if (v26 == 1)
            {
              sub_1000264F4(a1, v54, *(a1 + 120 + 8 * (v3 & 0x7F)), *(v34 + 2 * (v3 & 0x7F)));
              if ((~++dword_100070A90 & 0x1F) == 0)
              {
                if (sub_1000423E0())
                {
                  v40 = sub_100042E68();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v59 = "SendMissedPackets";
                    v60 = 1024;
                    v61 = 1261;
                    v62 = 1024;
                    v63 = dword_100070A90;
                    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%s:%d] missed packet count %d", buf, 0x18u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1261, "SendMissedPackets", 7, 0, "missed packet count %d", dword_100070A90);
                LOWORD(v26) = v56;
              }
            }

            else
            {
              sub_100025D40(a1, *(a1 + 120 + 8 * (v3 & 0x7F)), *(v34 + 2 * (v3 & 0x7F)));
            }
          }

          v37 >>= 1;
          ++v3;
          v25 = v36++ >= 7;
        }

        while (!v25);
      }

      else
      {
        v3 += 8;
      }

      v32 = v57 + 1;
    }

    while (v57 != 15);
    v41 = *(a1 + 3248);
    v42 = [*(a1 + 56) lock];
    if (v42)
    {
      v43 = v42;
      if (sub_1000423E0())
      {
        v44 = sub_100042E68();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v59 = "SendMissedPackets";
          v60 = 1024;
          v61 = 1282;
          v62 = 1024;
          v63 = v43;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****enter cr err %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1282, "SendMissedPackets", 7, 0, "*****enter cr err %d", v43);
    }

    v45 = *(a1 + 2702);
    if (*(a1 + 2702))
    {
      v46 = 0;
      do
      {
        if (*v41 == 1)
        {
          *v41 = 0;
        }

        v41 += 60;
        ++v46;
      }

      while (v46 < v45);
    }

    v47 = [*(a1 + 56) unlock];
    if (v47)
    {
      v48 = v47;
      if (sub_1000423E0())
      {
        v49 = sub_100042E68();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v59 = "SendMissedPackets";
          v60 = 1024;
          v61 = 1293;
          v62 = 1024;
          v63 = v48;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%s:%d] ****exit cr err %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1293, "SendMissedPackets", 7, 0, "****exit cr err %d", v48);
    }
  }
}

void sub_100025AFC(uint64_t a1)
{
  *&v14[6] = 0;
  *v14 = 0;
  v13 = 67109120;
  v2 = bswap32(*a1);
  v15 = 0;
  *&v14[4] = bswap32(*(a1 + 84));
  *&v14[8] = v2;
  sub_100025D40(a1, &v13, 20);
  v3 = sub_100035FAC();
  if (*(a1 + 2702))
  {
    v4 = v3;
    v5 = 0;
    v6 = *(a1 + 3248);
    do
    {
      if (*v6 == 1)
      {
        v7 = [*(a1 + 56) lock];
        if (v7)
        {
          v8 = v7;
          if (sub_1000423E0())
          {
            v9 = sub_100042E68();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v17 = "SendTicklePacket";
              v18 = 1024;
              v19 = 1856;
              v20 = 1024;
              v21 = v8;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****enter cr err %d", buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1856, "SendTicklePacket", 7, 0, "*****enter cr err %d", v8);
        }

        *(v6 + 48) = v4;
        v10 = [*(a1 + 56) unlock];
        if (v10)
        {
          v11 = v10;
          if (sub_1000423E0())
          {
            v12 = sub_100042E68();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v17 = "SendTicklePacket";
              v18 = 1024;
              v19 = 1860;
              v20 = 1024;
              v21 = v11;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] ****exit cr err %d", buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1860, "SendTicklePacket", 7, 0, "****exit cr err %d", v11);
        }
      }

      v6 += 120;
      ++v5;
    }

    while (v5 < *(a1 + 2702));
  }
}

uint64_t sub_100025D40(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 2702);
  if (*(result + 2702))
  {
    v7 = 0;
    v8 = (*(result + 3248) + 8);
    v9 = -1;
    do
    {
      if (*v8 < v9)
      {
        v9 = *v8;
      }

      *v8 = -1;
      v8 += 30;
      ++v7;
    }

    while (v7 < v6);
    if (v9 <= 0x3D08F)
    {
      v10 = 280000 - v9;
      if (sub_1000423E0())
      {
        v11 = sub_100042E68();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v63 = "SendPacketToAllReceivers";
          v64 = 1024;
          v65 = 1542;
          v66 = 1024;
          v67 = (4294968 * v10) >> 32;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] *wait %u milliseconds", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1542, "SendPacketToAllReceivers", 7, 0, "*wait %u milliseconds", (4294968 * v10) >> 32);
      result = usleep(v10);
      *(v5 + 108) += v10;
    }
  }

  v12 = *(v5 + 84);
  if (v12 >= 0x65 && *(v5 + 3176) > v12 >> 2)
  {
    v13 = *(v5 + 2702);
    if (*(v5 + 2702))
    {
      v14 = 0;
      v15 = (*(v5 + 3248) + 92);
      do
      {
        if (*&v15[-6].sa_data[2] != 2)
        {
          result = sub_1000264F4(v5, v15, a2, a3);
          v13 = *(v5 + 2702);
        }

        ++v14;
        v15 = (v15 + 120);
      }

      while (v14 < v13);
    }

    return result;
  }

  v16 = *(v5 + 3232);
  result = sub_100035FAC();
  v17 = bswap32(result);
  if (!result)
  {
    v17 = 0x1000000;
  }

  a2[1] = v17;
  v18 = *(v5 + 2716);
  if (v18)
  {
    v19 = 0;
    v20 = v5 + 2720;
    v61 = a2;
    do
    {
      if (v18 >= 2)
      {
        v21 = (v20 + 4 * v19);
        if (setsockopt(*(v5 + 2696), 0, 9, v21, 4u))
        {
          if (sub_1000423E0())
          {
            v22 = sub_100042E68();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = v20;
              v24 = *v21;
              v25 = *__error();
              v26 = __error();
              v27 = strerror(*v26);
              *buf = 136316162;
              v63 = "SendPacketToAllReceivers";
              v64 = 1024;
              v65 = 1581;
              v66 = 1024;
              v67 = v24;
              v20 = v23;
              a2 = v61;
              v68 = 1024;
              *v69 = v25;
              *&v69[4] = 2080;
              *&v69[6] = v27;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%s:%d] SendPacketToAllReceivers - unable to set outgoing interface %x err %d %s", buf, 0x28u);
            }
          }

          v28 = *v21;
          v29 = *__error();
          v30 = __error();
          v31 = strerror(*v30);
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1581, "SendPacketToAllReceivers", 3, 0, "SendPacketToAllReceivers - unable to set outgoing interface %x err %d %s", v28, v29, v31);
        }
      }

      v32 = *(v5 + 3240);
      v33 = *(v5 + 2696);
      v34 = (v5 + 3120);
      if (v32)
      {
        v35 = v32(v33, v34, a2, a3, v5);
      }

      else
      {
        v35 = sub_100035FD8(v33, v34, a2, a3);
      }

      v36 = v35;
      if (v35)
      {
        if (sub_1000423E0())
        {
          v37 = sub_100042E68();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = *__error();
            v39 = __error();
            v40 = strerror(*v39);
            *buf = 136316162;
            v63 = "SendPacketToAllReceivers";
            v64 = 1024;
            v65 = 1591;
            v66 = 1024;
            v67 = v36;
            v68 = 1024;
            *v69 = v38;
            *&v69[4] = 2080;
            *&v69[6] = v40;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "[%s:%d] SendPacketToAllReceivers multicast error %d %d %s", buf, 0x28u);
          }
        }

        v41 = *__error();
        v42 = __error();
        v43 = strerror(*v42);
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1591, "SendPacketToAllReceivers", 3, 0, "SendPacketToAllReceivers multicast error %d %d %s", v36, v41, v43);
      }

      result = sub_1000266CC(v5, a3);
      ++v19;
      v18 = *(v5 + 2716);
    }

    while (v18 > v19);
  }

  v44 = *(v5 + 114);
  if ((v44 - 3) >= 2)
  {
    if ((v44 - 1) > 1 || !*(v5 + 2700))
    {
      return result;
    }

    v45 = 0;
    while (1)
    {
      v46 = *(v5 + 3240);
      v47 = *(v5 + 2696);
      if (v46)
      {
        if (v46(v47, v16, a2, a3, v5))
        {
          goto LABEL_46;
        }
      }

      else if (sub_100035FD8(v47, v16, a2, a3))
      {
LABEL_46:
        if (sub_1000423E0())
        {
          v48 = sub_100042E68();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = *__error();
            v50 = __error();
            v51 = strerror(*v50);
            *buf = 136315906;
            v63 = "SendPacketToAllReceivers";
            v64 = 1024;
            v65 = 1611;
            v66 = 1024;
            v67 = v49;
            v68 = 2080;
            *v69 = v51;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "[%s:%d] SendPacketToAllReceivers  error %d %s", buf, 0x22u);
          }
        }

        v52 = *__error();
        v53 = __error();
        v54 = strerror(*v53);
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1611, "SendPacketToAllReceivers", 3, 0, "SendPacketToAllReceivers  error %d %s", v52, v54);
      }

      v16 = (v16 + v16->sa_len);
      result = sub_1000266CC(v5, a3);
      if (++v45 >= *(v5 + 2700))
      {
        return result;
      }
    }
  }

  if (*(v5 + 3272))
  {
    sub_1000020A8(*(v5 + 3264), a2, a3);
  }

  else
  {
    if (*(v5 + 115))
    {
      v55 = a2;
      v56 = 0;
      sa_len = 0;
    }

    else
    {
      v56 = *(v5 + 3232);
      sa_len = v56->sa_len;
      v55 = a2;
    }

    sendto(*(v5 + 2696), v55, a3, 0, v56, sa_len);
  }

  v58 = *(v5 + 3168);
  if (v58)
  {
    usleep(v58);
    if (sub_1000423E0())
    {
      v59 = sub_100042E68();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = *(v5 + 3168);
        *buf = 136315650;
        v63 = "SendPacketToAllReceivers";
        v64 = 1024;
        v65 = 1647;
        v66 = 1024;
        v67 = v60;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "[%s:%d] waited %u", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1647, "SendPacketToAllReceivers", 7, 0, "waited %u", *(v5 + 3168));
  }

  return sub_1000266CC(v5, a3);
}

void sub_100026438(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4)
{
  v8 = bswap32(*(a2 + 8));
  [*(a1 + 56) lock];
  v9 = a1 + 8 * (v8 & 0x7F);
  v10 = *(v9 + 120);
  *(v9 + 120) = a2;
  v11 = a1 + 4 * (v8 & 0x7F);
  *(v11 + 1144) = bswap32(*(a2 + 4));
  *(v11 + 1656) = v8;
  v12 = a1 + 2 * (v8 & 0x7F);
  *(v12 + 2168) = a3;
  *(v12 + 2424) = a4;
  [*(a1 + 56) unlock];
  if (v10)
  {

    free(v10);
  }
}

uint64_t sub_1000264F4(uint64_t a1, sockaddr *a2, _DWORD *a3, uint64_t a4)
{
  v8 = sub_100035FAC();
  v9 = bswap32(v8);
  if (!v8)
  {
    v9 = 0x1000000;
  }

  a3[1] = v9;
  v10 = *(a1 + 114);
  if ((v10 - 3) < 2)
  {
    if (sub_1000423E0())
    {
      v13 = sub_100042E68();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = bswap32(a3[2]);
        *buf = 136315650;
        v20 = "SendPacketToOneReceiver";
        v21 = 1024;
        v22 = 1414;
        v23 = 1024;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] send packet to one index %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1414, "SendPacketToOneReceiver", 7, 0, "send packet to one index %d", bswap32(a3[2]));
    if (*(a1 + 3272))
    {
      sub_1000020A8(*(a1 + 3264), a3, a4);
    }

    else
    {
      if (*(a1 + 115))
      {
        v15 = a3;
        v16 = 0;
        sa_len = 0;
      }

      else
      {
        v16 = *(a1 + 3232);
        sa_len = v16->sa_len;
        v15 = a3;
      }

      sendto(*(a1 + 2696), v15, a4, 0, v16, sa_len);
    }
  }

  else if ((v10 - 1) <= 1)
  {
    v11 = *(a1 + 3240);
    v12 = *(a1 + 2696);
    if (v11)
    {
      v11(v12, a2, a3, a4, a1);
    }

    else
    {
      sub_100035FD8(v12, a2, a3, a4);
    }
  }

  return sub_1000266CC(a1, a4);
}

uint64_t sub_1000266CC(uint64_t result, int a2)
{
  v2 = *(result + 3152);
  if (v2)
  {
    v4 = result;
    v5 = (v2 >> 1) - (v2 >> 6);
    if (!*(result + 3156))
    {
      result = sub_100035FAC();
      *(v4 + 3156) = result;
    }

    v6 = *(v4 + 3160) + a2;
    *(v4 + 3160) = v6;
    if (v6 >= v5)
    {
      v7 = *(v4 + 3156) - sub_100035FAC();
      if (v7 < 0xFFF85EE0)
      {
        result = sub_100035FAC();
        v8 = 0;
      }

      else
      {
        v8 = *(v4 + 3160) - v5;
        v9 = v8 * 500000.0 / v5 + v8 * 500000.0 / v5;
        v10 = ((v7 + 500000) + v9);
        if (sub_1000423E0())
        {
          v11 = sub_100042E68();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v13 = "CheckBandwidthLimits";
            v14 = 1024;
            v15 = 798;
            v16 = 1024;
            v17 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] will sleep for %u", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 798, "CheckBandwidthLimits", 7, 0, "will sleep for %u", v10);
        usleep(v10);
        result = ((v9 + 500000.0) + *(v4 + 3156));
      }

      *(v4 + 3156) = result;
      *(v4 + 3160) = v8;
    }
  }

  return result;
}

void sub_1000268A0(uint64_t a1)
{
  v2 = [*(a1 + 56) lock];
  if (v2)
  {
    v3 = v2;
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "UpdateValidatedPacketID";
        v16 = 1024;
        v17 = 2071;
        v18 = 1024;
        v19 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] UpdateValidatedPacketID enter cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 2071, "UpdateValidatedPacketID", 7, 0, "UpdateValidatedPacketID enter cr err %d", v3);
  }

  if (*(a1 + 2702))
  {
    v5 = 0;
    v6 = *(a1 + 96);
    v7 = *(a1 + 3248);
    v8 = -1;
    do
    {
      if (*v7 != 2 && *(v7 + 44) < v8)
      {
        v8 = *(v7 + 44);
      }

      v7 += 120;
      ++v5;
    }

    while (v5 < *(a1 + 2702));
    *(a1 + 96) = v8;
    if (v8 != -1 && v8 > v6)
    {
      v9 = v6 + 1;
      v10 = *(a1 + 3208);
      do
      {
        v10 += *(a1 + 2424 + 2 * (v9++ & 0x7F));
      }

      while (v9 <= v8);
      *(a1 + 3208) = v10;
    }
  }

  else
  {
    *(a1 + 96) = -1;
  }

  v11 = [*(a1 + 56) unlock];
  if (v11)
  {
    v12 = v11;
    if (sub_1000423E0())
    {
      v13 = sub_100042E68();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "UpdateValidatedPacketID";
        v16 = 1024;
        v17 = 2085;
        v18 = 1024;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] UpdateValidatedPacketID exit cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 2085, "UpdateValidatedPacketID", 7, 0, "UpdateValidatedPacketID exit cr err %d", v12);
  }
}

void sub_100026AE4(id a1, uint64_t a2)
{
  v4 = [qword_100070AF8 copy];
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 count];
      *buf = 136315650;
      v40 = "InvitationCallback";
      v41 = 1024;
      v42 = 76;
      v43 = 2048;
      v44 = *&v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] invitation callback called  count %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 76, "InvitationCallback", 7, 0, "invitation callback called  count %ld", [v4 count]);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        if (sub_1000423E0())
        {
          v12 = sub_100042E68();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v40 = "InvitationCallback";
            v41 = 1024;
            v42 = 79;
            v43 = 2048;
            v44 = *&v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] invitation callback session controller %p", buf, 0x1Cu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 79, "InvitationCallback", 7, 0, "invitation callback session controller %p", v11);
        if ([v11 invitationNotification] == a1)
        {
          if (sub_1000423E0())
          {
            v13 = sub_100042E68();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v40 = "InvitationCallback";
              v41 = 1024;
              v42 = 83;
              v43 = 2048;
              v44 = *&a2;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] found notification  %lx", buf, 0x1Cu);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 83, "InvitationCallback", 7, 0, "found notification  %lx", a2);
          v14 = [v11 notificationTimeoutTimer];
          [v14 invalidate];

          [v11 setNotificationTimeoutTimer:0];
          CFRelease(a1);
          [v11 setInvitationNotification:0];
          [qword_100070AF8 removeObject:v11];
          v15 = sub_1000423E0();
          switch(a2)
          {
            case 1:
              if (v15)
              {
                v24 = sub_100042E68();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v40 = "InvitationCallback";
                  v41 = 1024;
                  v42 = 99;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] alternate response - user declined", buf, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 99, "InvitationCallback", 7, 0, "alternate response - user declined");
              v25 = v11;
              v26 = @"UserDeclined";
              goto LABEL_58;
            case 3:
              if (v15)
              {
                v17 = sub_100042E68();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v40 = "InvitationCallback";
                  v41 = 1024;
                  v42 = 105;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification was cancelled", buf, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 105, "InvitationCallback", 7, 0, "notification was cancelled");
              v18 = +[NSDate date];
              v19 = [v11 notificationStartTime];
              [v18 timeIntervalSinceDate:v19];
              v21 = v20;

              if (sub_1000423E0())
              {
                v22 = sub_100042E68();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v40 = "InvitationCallback";
                  v41 = 1024;
                  v42 = 107;
                  v43 = 2048;
                  v44 = v21;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] timeUsed = %f", buf, 0x1Cu);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 107, "InvitationCallback", 7, 0, "timeUsed = %f", v21);
              if ([v11 notificationTimedOut])
              {
                if (sub_1000423E0())
                {
                  v23 = sub_100042E68();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v40 = "InvitationCallback";
                    v41 = 1024;
                    v42 = 111;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification timed out", buf, 0x12u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 111, "InvitationCallback", 7, 0, "notification timed out");
LABEL_57:
                v25 = v11;
                v26 = @"UserDidNotAnswer";
LABEL_58:
                [v25 doDeclineIDSInvitationWithReasonString:v26];
                break;
              }

              v28 = MKBGetDeviceLockState() - 1;
              v29 = sub_1000423E0();
              if (v28 <= 1)
              {
                if (v29)
                {
                  v30 = sub_100042E68();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v40 = "InvitationCallback";
                    v41 = 1024;
                    v42 = 118;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is still locked?", buf, 0x12u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 118, "InvitationCallback", 7, 0, "screen is still locked?");
                goto LABEL_57;
              }

              if (v29)
              {
                v31 = sub_100042E68();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v40 = "InvitationCallback";
                  v41 = 1024;
                  v42 = 123;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen was locked and is now unlocked  post new notification", buf, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 123, "InvitationCallback", 7, 0, "screen was locked and is now unlocked  post new notification");
              [v11 postInvitationNotification];
              break;
            case 2:
              if (v15)
              {
                v16 = sub_100042E68();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v40 = "InvitationCallback";
                  v41 = 1024;
                  v42 = 92;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] other response - user accepted", buf, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 92, "InvitationCallback", 7, 0, "other response - user accepted");
              [v11 doAcceptIDSInvitation];
              break;
            default:
              if (v15)
              {
                v27 = sub_100042E68();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v40 = "InvitationCallback";
                  v41 = 1024;
                  v42 = 129;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] unexpected response", buf, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 129, "InvitationCallback", 7, 0, "unexpected response");
              break;
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v32 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v8 = v32;
    }

    while (v32);
  }
}

id sub_1000273A0(uint64_t a1)
{
  if (a1)
  {
    v9 = 0;
    v10 = 0;
    v1 = [NSPropertyListSerialization propertyListWithData:a1 options:0 format:&v10 error:&v9];
    v2 = v9;
    if (v2)
    {
      if (sub_1000423E0())
      {
        v3 = sub_100042E68();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v4 = [v2 description];
          v5 = [v4 UTF8String];
          *buf = 136315650;
          v12 = "DataToDictionary";
          v13 = 1024;
          v14 = 149;
          v15 = 2080;
          v16 = v5;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%s:%d] error: %s", buf, 0x1Cu);
        }
      }

      v6 = [v2 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 149, "DataToDictionary", 3, 0, "error: %s", [v6 UTF8String]);

      v7 = 0;
    }

    else
    {
      v7 = v1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_100027558(uint64_t a1)
{
  if (a1)
  {
    v9 = 0;
    v1 = [NSPropertyListSerialization dataWithPropertyList:a1 format:100 options:0 error:&v9];
    v2 = v9;
    if (v2)
    {
      if (sub_1000423E0())
      {
        v3 = sub_100042E68();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v4 = [v2 description];
          v5 = [v4 UTF8String];
          *buf = 136315650;
          v11 = "DictionaryToData";
          v12 = 1024;
          v13 = 166;
          v14 = 2080;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%s:%d] error: %s", buf, 0x1Cu);
        }
      }

      v6 = [v2 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 166, "DictionaryToData", 3, 0, "error: %s", [v6 UTF8String]);

      v7 = 0;
    }

    else
    {
      v7 = v1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100028958(id a1)
{
  qword_100070AF8 = +[NSMutableSet set];

  _objc_release_x1();
}

uint64_t sub_10002DA9C(uint64_t a1, const void *a2, unsigned int a3)
{
  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "WriteDataToViewer";
      v18 = 1024;
      v19 = 397;
      v20 = 1024;
      v21 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] write data to viewer %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 397, "WriteDataToViewer", 7, 0, "write data to viewer %d", a3);
  v7 = *(a1 + 2480);
  if (v7)
  {
    [0 lock];
    v8 = malloc_type_malloc(a3 + 14, 0x108004043D1B9D8uLL);
    *v8 = 0;
    v8[6] = 2;
    *(v8 + 2) = a3;
    memcpy(v8 + 7, a2, a3);
    [*(v7 + 32) lock];
    *(v7 + 3192) += a3;
    v9 = *(v7 + 8);
    if (v9)
    {
      **(v7 + 16) = v8;
    }

    else
    {
      *(v7 + 8) = v8;
    }

    *(v7 + 16) = v8;
    v12 = [*(v7 + 32) unlock];
    if (v12)
    {
      v13 = v12;
      if (sub_1000423E0())
      {
        v14 = sub_100042E68();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v17 = "WriteDataToViewer";
          v18 = 1024;
          v19 = 428;
          v20 = 1024;
          v21 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] ****exit cr err %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 428, "WriteDataToViewer", 7, 0, "****exit cr err %d", v13);
    }

    if (!v9)
    {
      sub_100039C0C(*(v7 + 24));
      if (sub_1000423E0())
      {
        v15 = sub_100042E68();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v17 = "WriteDataToViewer";
          v18 = 1024;
          v19 = 432;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] signalled semaphore", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 432, "WriteDataToViewer", 7, 0, "signalled semaphore");
    }

    [0 unlock];
    return 0;
  }

  else
  {
    if (sub_1000423E0())
    {
      v10 = sub_100042E68();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "WriteDataToViewer";
        v18 = 1024;
        v19 = 439;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%s:%d] send info not set", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 439, "WriteDataToViewer", 3, 0, "send info not set");
    return 4294967294;
  }
}

void sub_10002E738(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 2480);
  if (v3)
  {
    [0 lock];
    [*(v3 + 32) lock];
    *(v3 + 3192) += a2[2];
    if (*(v3 + 8))
    {
      **(v3 + 16) = a2;
      *(v3 + 16) = a2;
      [*(v3 + 32) unlock];
    }

    else
    {
      *(v3 + 8) = a2;
      *(v3 + 16) = a2;
      [*(v3 + 32) unlock];
      sub_100039C0C(*(v3 + 24));
    }

    [0 unlock];
  }

  else
  {
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "SendBufferToViewer";
        v7 = 1024;
        v8 = 1636;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%s:%d] udp buffer not set", &v5, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1636, "SendBufferToViewer", 3, 0, "udp buffer not set");
    free(a2);
  }
}

double sub_100030E90(uint64_t a1)
{
  if (sub_1000423E0())
  {
    v2 = sub_100042E68();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 159);
      v4 = *(a1 + 160);
      *buf = 136315906;
      v28 = "EncodeDisplayInfo";
      v29 = 1024;
      v30 = 1347;
      v31 = 1024;
      *v32 = v3;
      *&v32[4] = 1024;
      *&v32[6] = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] EncodeDisplayInfo %d %d", buf, 0x1Eu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1347, "EncodeDisplayInfo", 7, 0, "EncodeDisplayInfo %d %d", *(a1 + 159), *(a1 + 160));
  if (*(a1 + 160))
  {
    if (sub_1000423E0())
    {
      v5 = sub_100042E68();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v29 = 1024;
        v30 = 1469;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] DispayInfo2Encoding", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1469, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "DispayInfo2Encoding");
    v6 = malloc_type_calloc(1uLL, 0x6CuLL, 0x108004043D1B9D8uLL);
    *(v6 + 30) = 50351104;
    *(v6 + 25) = 256;
    if (sub_1000423E0())
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v29 = 1024;
        v30 = 1480;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] set dsplay count", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1480, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "set dsplay count");
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v28 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v29 = 1024;
        v30 = 1490;
        v31 = 1024;
        *v32 = 544;
        *&v32[4] = 1024;
        *&v32[6] = 960;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] got screen bounds %d %d", buf, 0x1Eu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1490, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "got screen bounds %d %d", 544, 960);
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v28 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v29 = 1024;
        v30 = 1495;
        v31 = 1024;
        *v32 = 0;
        *&v32[4] = 1024;
        *&v32[6] = 0;
        v33 = 1024;
        v34 = 960;
        v35 = 1024;
        v36 = 544;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] global pixels %d %d %d %d", buf, 0x2Au);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1495, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "global pixels %d %d %d %d", 0, 0, 960, 544);
    if (sub_1000423E0())
    {
      v10 = sub_100042E68();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v28 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v29 = 1024;
        v30 = 1497;
        v31 = 1024;
        *v32 = 0;
        *&v32[4] = 1024;
        *&v32[6] = 0;
        v33 = 1024;
        v34 = 960;
        v35 = 1024;
        v36 = 544;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] global points %d %d %d %d", buf, 0x2Au);
      }
    }

    v11 = 544;
    v12 = 960;
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1497, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "global points %d %d %d %d", 0, 0, 960, 544);
    *(v6 + 34) = -1073537022;
    if (*(a1 + 1394))
    {
      v13 = *(a1 + 1400);
      v11 = llround(v13 * -0.0 + v13 * 544.0);
      v12 = llround(v13 * -0.0 + v13 * 960.0);
      if (sub_1000423E0())
      {
        v14 = sub_100042E68();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v28 = "EncodeDisplayInfo_DispayInfo2Encoding";
          v29 = 1024;
          v30 = 1512;
          v31 = 1024;
          *v32 = v11;
          *&v32[4] = 1024;
          *&v32[6] = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] %d  %d", buf, 0x1Eu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1512, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "%d  %d", v11, v12);
    }

    *(v6 + 19) = bswap32(v11) >> 16;
    *(v6 + 20) = bswap32(v12) >> 16;
    *(v6 + 42) = 0x1000000;
    *(v6 + 14) = 0x1000000;
    *(v6 + 18) = 0;
    *(v6 + 26) = 1359216640;
    *(v6 + 25) = 256;
    *(v6 + 52) = 0x3FF0000000000000;
    if (sub_1000423E0())
    {
      v20 = sub_100042E68();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(v6 + 52);
        *buf = 136315650;
        v28 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v29 = 1024;
        v30 = 1534;
        v31 = 2048;
        *v32 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] res = %f", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1534, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "res = %f", *(v6 + 52));
    *(v6 + 52) = bswap64(*(v6 + 52));
    if (*(a1 + 1394))
    {
      v22 = *(a1 + 1400);
    }

    else
    {
      v22 = 0x3FF0000000000000;
    }

    *(v6 + 60) = bswap64(v22);
    *(v6 + 17) = 0x1000000;
    *(v6 + 22) = 0x1000000;
    *(v6 + 9) = 0x2002C00300000000;
    *(v6 + 10) = 0x2002C00300000000;
    *(v6 + 23) = 16785440;
    *(v6 + 12) = 0x810FF00FF00FF00;
    v6[104] = 0;
    *(v6 + 2) = 94;
    *(v6 + 6) = 0;
    if (sub_1000423E0())
    {
      v23 = sub_100042E68();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v29 = 1024;
        v30 = 1592;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] send display info to viewer", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1592, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "send display info to viewer");
    sub_10002E738(a1, v6);
  }

  else
  {
    v15 = malloc_type_calloc(1uLL, 0x44uLL, 0x108004043D1B9D8uLL);
    *(v15 + 30) = 3221430274;
    if (*(a1 + 1394))
    {
      v16 = *(a1 + 1400);
      v17 = llround(v16 * 544.0);
      v18 = llround(v16 * 960.0);
      if (sub_1000423E0())
      {
        v19 = sub_100042E68();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v28 = "EncodeDisplayInfo_DispayInfoEncoding";
          v29 = 1024;
          v30 = 1423;
          v31 = 1024;
          *v32 = v17;
          *&v32[4] = 1024;
          *&v32[6] = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] scaled screen res change - width = %d  height %d", buf, 0x1Eu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1423, "EncodeDisplayInfo_DispayInfoEncoding", 7, 0, "scaled screen res change - width = %d  height %d", v17, v18);
    }

    else
    {
      v18 = 960;
      v17 = 544;
    }

    *(v15 + 14) = 0x1000000;
    v25 = bswap32(v17) >> 16;
    *(v15 + 11) = v25;
    v26 = bswap32(v18) >> 16;
    *(v15 + 12) = v26;
    *(v15 + 26) = 1292107776;
    *(v15 + 19) = 256;
    *(v15 + 12) = 0;
    *(v15 + 10) = 0x1000000;
    *(v15 + 22) = v25;
    *(v15 + 23) = v26;
    *&result = 16785440;
    *(v15 + 13) = 16785440;
    *(v15 + 7) = 0x810FF00FF00FF00;
    v15[64] = 0;
  }

  return result;
}

void sub_100031E5C(uint64_t a1)
{
  v2 = *(a1 + 2976);
}

void sub_100031EA0(uint64_t a1, uint64_t a2, const void *a3)
{
  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v39 = "StartSystemInfoRequest";
      v40 = 1024;
      v41 = 668;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] system info request", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 668, "StartSystemInfoRequest", 7, 0, "system info request");
  v7 = *(a2 + 10);
  v8 = *(a2 + 6);
  v9 = *(a2 + 12);
  v10 = malloc_type_malloc(v9 + 1, 0xA3E9973FuLL);
  memcpy(v10, a3, v9);
  *(v10 + v9) = 0;
  if (v7 == 3)
  {
    v11 = [[NSMutableDictionary alloc] initWithCapacity:5];
    v12 = +[NSProcessInfo processInfo];
    v13 = [v12 operatingSystemVersionString];
    [v11 setObject:v13 forKey:@"OSVersion"];

    v14 = MGCopyAnswer();
    [v11 setObject:v14 forKey:@"ComputerName"];

    v15 = MGCopyAnswer();
    [v11 setObject:v15 forKey:@"ComputerModel"];

    [v11 setObject:@"mobile" forKey:@"ShortUserName"];
    v16 = sub_100040228();
    if (v16)
    {
      v17 = v16;
      [v11 setObject:v16 forKey:@"SerialNumber"];
      CFRelease(v17);
    }

    else
    {
      if (sub_1000423E0())
      {
        v19 = sub_100042E68();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v39 = "StartSystemInfoRequest";
          v40 = 1024;
          v41 = 705;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] unable to get serial number", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 705, "StartSystemInfoRequest", 7, 0, "unable to get serial number");
    }

    if ([v11 count] != 5)
    {
      if (sub_1000423E0())
      {
        v20 = sub_100042E68();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v11 count];
          *buf = 136315650;
          v39 = "StartSystemInfoRequest";
          v40 = 1024;
          v41 = 708;
          v42 = 2048;
          v43 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] size of dictionary %ld", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 708, "StartSystemInfoRequest", 7, 0, "size of dictionary %ld", [v11 count]);
    }

    v37 = 0;
    v22 = [NSPropertyListSerialization dataWithPropertyList:v11 format:100 options:0 error:&v37];
    v23 = v37;
    if (v23)
    {
      if (sub_1000423E0())
      {
        v24 = sub_100042E68();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v23 description];
          v26 = [v25 UTF8String];
          *buf = 136315650;
          v39 = "StartSystemInfoRequest";
          v40 = 1024;
          v41 = 717;
          v42 = 2080;
          v43 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] system information error: %s", buf, 0x1Cu);
        }
      }

      v27 = [v23 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 717, "StartSystemInfoRequest", 7, 0, "system information error: %s", [v27 UTF8String]);
    }

    else
    {
      v28 = v8;
      v29 = [v22 length];
      __src = [v22 bytes];
      if (sub_1000423E0())
      {
        v30 = sub_100042E68();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v39 = "StartSystemInfoRequest";
          v40 = 1024;
          v41 = 729;
          v42 = 1024;
          LODWORD(v43) = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%s:%d] length = %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 729, "StartSystemInfoRequest", 7, 0, "length = %d", v29);
      v31 = malloc_type_calloc(1uLL, v29 + 38, 0x108004043D1B9D8uLL);
      if (v31)
      {
        v32 = v31;
        v35 = a1;
        v31[14] = 81;
        v33 = v31 + 14;
        *(v31 + 2) = v29 + 24;
        *(v31 + 10) = 256;
        *(v31 + 22) = v28;
        if (sub_1000423E0())
        {
          v34 = sub_100042E68();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v39 = "StartSystemInfoRequest";
            v40 = 1024;
            v41 = 744;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%s:%d] use uncompressed buffer for now", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 744, "StartSystemInfoRequest", 7, 0, "use uncompressed buffer for now");
        memcpy(v32 + 38, __src, v29);
        *(v32 + 34) = bswap32(v29);
        *(v32 + 26) = 0;
        *(v32 + 4) = bswap32(v29 + 18);
        sub_10002DA9C(v35, v33, v29 + 24);
        free(v32);
      }
    }

    free(v10);
  }

  else
  {
    if (sub_1000423E0())
    {
      v18 = sub_100042E68();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v39 = "StartSystemInfoRequest";
        v40 = 1024;
        v41 = 679;
        v42 = 1024;
        LODWORD(v43) = v7;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] ignore command %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 679, "StartSystemInfoRequest", 7, 0, "ignore command %d", v7);
    free(v10);
  }
}

uint64_t sub_100032608(_CCCryptor *a1, _OWORD *a2, void *dataIn, _BYTE *a4)
{
  *a4 = 0;
  *v20 = *a2;
  v5 = v20[0];
  v20[0] += 77;
  if (v5 >= 0xB3)
  {
    v6 = 1;
    do
    {
      if (++v20[v6])
      {
        v8 = 1;
      }

      else
      {
        v8 = v6 == 15;
      }

      ++v6;
    }

    while (!v8);
  }

  dataOutMoved = 0;
  v9 = CCCryptorUpdate(a1, dataIn, 0x10uLL, dataOut, 0x10uLL, &dataOutMoved);
  if (v9)
  {
    if (sub_1000423E0())
    {
      v10 = sub_100042E68();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v14 = "AuthKeyVerificationServerCheckResponse";
        v15 = 1024;
        v16 = 961;
        v17 = 1024;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorUpdate %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 961, "AuthKeyVerificationServerCheckResponse", 5, 0, "CCCryptorUpdate %d", v9);
  }

  else if (!sub_100010868(v20, dataOut, 16))
  {
    *a4 = 1;
  }

  return v9;
}

uint64_t sub_100032794(_CCCryptor *a1, _CCCryptor *a2, void *dataIn, _OWORD *a4, void *a5)
{
  dataOutMoved = 0;
  v8 = CCCryptorUpdate(a1, dataIn, 0x10uLL, &dataOut, 0x10uLL, &dataOutMoved);
  if (v8)
  {
    v9 = v8;
    if (sub_1000423E0())
    {
      v10 = sub_100042E68();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = "AuthKeyVerificationClientGenerateResponse";
        v21 = 1024;
        v22 = 1048;
        v23 = 1024;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorUpdate %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1048, "AuthKeyVerificationClientGenerateResponse", 5, 0, "CCCryptorUpdate %d");
    return 4294967294;
  }

  v11 = dataOut;
  LOBYTE(dataOut) = dataOut + 77;
  if (v11 >= 0xB3)
  {
    v12 = 1;
    do
    {
      if (++*(&dataOut + v12))
      {
        v14 = 1;
      }

      else
      {
        v14 = v12 == 15;
      }

      ++v12;
    }

    while (!v14);
  }

  if (a4)
  {
    *a4 = dataOut;
  }

  result = CCCryptorUpdate(a2, &dataOut, 0x10uLL, a5, 0x10uLL, &dataOutMoved);
  if (result)
  {
    v16 = result;
    if (sub_1000423E0())
    {
      v17 = sub_100042E68();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = "AuthKeyVerificationClientGenerateResponse";
        v21 = 1024;
        v22 = 1061;
        v23 = 1024;
        v24 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorUpdate %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1061, "AuthKeyVerificationClientGenerateResponse", 5, 0, "CCCryptorUpdate %d");
    return 4294967294;
  }

  return result;
}

uint64_t sub_1000329D4(uint64_t a1)
{
  memset(v13, 0, 10);
  if (sub_1000423E0())
  {
    v2 = sub_100042E68();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "HandleModifySessionFlag";
      v16 = 1024;
      v17 = 1676;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] handle ModifySessionFlag", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1676, "HandleModifySessionFlag", 7, 0, "handle ModifySessionFlag");
  if (sub_10003ABCC(*(a1 + 8)) < 0xA)
  {
    return 0xFFFFFFFFLL;
  }

  sub_10003A56C(*(a1 + 8), 0xAu, v13);
  v4 = bswap32(WORD1(v13[0])) >> 16;
  WORD1(v13[0]) = v4;
  WORD2(v13[0]) = bswap32(WORD2(v13[0])) >> 16;
  *(v13 + 6) = bswap32(*(v13 + 6));
  if (v4 < 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 - 6;
    if (sub_1000423E0())
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v15 = "HandleModifySessionFlag";
        v16 = 1024;
        v17 = 1693;
        v18 = 1024;
        v19 = v5;
        v20 = 1024;
        v21 = WORD1(v13[0]);
        v22 = 2048;
        v23 = 6;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d message size %d noheader %lu", buf, 0x28u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1693, "HandleModifySessionFlag", 7, 0, "extra amount %d message size %d noheader %lu", v5, WORD1(v13[0]), 6);
    if (v5 + 10 > sub_10003ABCC(*(a1 + 8)))
    {
      return 0xFFFFFFFFLL;
    }
  }

  sub_10003A284(*(a1 + 8), v5 + 10);
  v7 = BYTE6(v13[0]);
  v8 = sub_1000423E0();
  if (v7)
  {
    if (v8)
    {
      v10 = sub_100042E68();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "HandleModifySessionFlag";
        v16 = 1024;
        v17 = 1705;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] pause screen sharing", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1705, "HandleModifySessionFlag", 7, 0, "pause screen sharing");
    v11 = +[IDSServiceEmbeddedController sharedIDServiceController];
    [v11 pauseScreenSharing:1];

    v12 = +[IDSServiceEmbeddedController sharedIDServiceController];
    [v12 postViewerPausedMessageNotification];
  }

  else
  {
    if (v8)
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "HandleModifySessionFlag";
        v16 = 1024;
        v17 = 1710;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] pause flag not set", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1710, "HandleModifySessionFlag", 7, 0, "pause flag not set");
  }

  return 0;
}

uint64_t sub_100032DA0(uint64_t a1, void *a2)
{
  memset(v52, 0, 18);
  if (sub_1000423E0())
  {
    v4 = sub_100042E68();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v54 = "HandleUserRequestMessage";
      v55 = 1024;
      v56 = 1727;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] user request", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1727, "HandleUserRequestMessage", 7, 0, "user request");
  if (sub_10003ABCC(*(a1 + 8)) < 0x12)
  {
    return 0xFFFFFFFFLL;
  }

  sub_10003A56C(*(a1 + 8), 0x12u, v52);
  v6 = bswap32(v52[0].u16[1]) >> 16;
  v52[0].i16[1] = v6;
  v7 = v52[0].u16[2];
  v52[0].i16[2] = __rev16(v52[0].u16[2]);
  if (v7 == 256)
  {
    if (v6 < 0xF)
    {
      v12 = *(a1 + 8);
      v11 = 18;
      goto LABEL_24;
    }

    v8 = v6 - 14;
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v54 = "HandleUserRequestMessage";
        v55 = 1024;
        v56 = 1744;
        v57 = 1024;
        LODWORD(v58) = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1744, "HandleUserRequestMessage", 7, 0, "extra amount %d", v8);
    v10 = sub_10003ABCC(*(a1 + 8));
    v11 = v8 + 18;
    if (v8 + 18 <= v10)
    {
      v12 = *(a1 + 8);
LABEL_24:
      sub_10003A284(v12, v11);
      v16 = 0;
      v17 = bswap32(*(&v52[0].u32[1] + 2));
      v18 = vrev32_s8(*(&v52[1] + 2));
      goto LABEL_25;
    }

    return 0xFFFFFFFFLL;
  }

  memset(v51, 0, 20);
  if (sub_10003ABCC(*(a1 + 8)) < 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  sub_10003A56C(*(a1 + 8), 0x14u, v51);
  v13 = bswap32(WORD1(v51[0])) >> 16;
  WORD1(v51[0]) = v13;
  WORD2(v51[0]) = bswap32(WORD2(v51[0])) >> 16;
  v14 = bswap32(WORD1(v51[2])) >> 16;
  WORD1(v51[2]) = v14;
  if (v14 + 16 > v13)
  {
    if (sub_1000423E0())
    {
      v15 = sub_100042E68();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v54 = "HandleUserRequestMessage";
        v55 = 1024;
        v56 = 1776;
        v57 = 2048;
        v58 = WORD1(v51[2]) + 16;
        v59 = 1024;
        v60 = WORD1(v51[0]);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalid message size %lu %d", buf, 0x22u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1776, "HandleUserRequestMessage", 5, 0, "invalid message size %lu %d", WORD1(v51[2]) + 16, WORD1(v51[0]));
    return 4294967294;
  }

  v27 = *(v51 + 6);
  v28 = *(&v51[1] + 2);
  v29 = v13 + 4;
  if (sub_1000423E0())
  {
    v30 = sub_100042E68();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v54 = "HandleUserRequestMessage";
      v55 = 1024;
      v56 = 1782;
      v57 = 1024;
      LODWORD(v58) = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%s:%d] full message size %u", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1782, "HandleUserRequestMessage", 7, 0, "full message size %u", v29);
  if (sub_10003ABCC(*(a1 + 8)) < v29)
  {
    return 0xFFFFFFFFLL;
  }

  sub_10003A284(*(a1 + 8), 0x14u);
  if (WORD1(v51[2]))
  {
    v31 = malloc_type_calloc(1uLL, WORD1(v51[2]) + 1, 0x48FB1865uLL);
    if (!v31)
    {
      return 4294967294;
    }

    v16 = v31;
    sub_100039EA8(*(a1 + 8), WORD1(v51[2]), v31);
    v32 = WORD1(v51[2]) + 16;
  }

  else
  {
    v16 = 0;
    v32 = 16;
  }

  v17 = bswap32(v27);
  if (v32 < WORD1(v51[0]))
  {
    v46 = WORD1(v51[0]) - v32;
    if (sub_1000423E0())
    {
      v47 = sub_100042E68();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v54 = "HandleUserRequestMessage";
        v55 = 1024;
        v56 = 1804;
        v57 = 1024;
        LODWORD(v58) = v46;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1804, "HandleUserRequestMessage", 7, 0, "extra amount %d", v46);
    sub_10003A284(*(a1 + 8), v46);
  }

  v18 = vrev32_s8(v28);
LABEL_25:
  v50 = v18;
  v19 = sub_100040464();
  v20 = v50.i32[1];
  if (!v19 || v50.i32[0] != 1)
  {
    switch(v50.i32[0])
    {
      case 1:
        goto LABEL_51;
      case 3:
        if ((v50.i32[1] - 1) <= 4)
        {
          v38 = a1;
          v37 = v17;
          v39 = 5;
          goto LABEL_85;
        }

        goto LABEL_83;
      case 2:
        v23 = sub_1000423E0();
        if (v50.i32[1] > 5u)
        {
          if (v23)
          {
            v48 = sub_100042E68();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v54 = "HandleUserRequestMessage";
              v55 = 1024;
              v56 = 1868;
              v57 = 1024;
              LODWORD(v58) = v50.i32[1];
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalid response %d", buf, 0x18u);
            }
          }

          v49 = v50.u32[1];
          v25 = "invalid response %d";
          v26 = 1868;
          v45 = 5;
LABEL_107:
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, v26, "HandleUserRequestMessage", v45, 0, v25, v49);
          if (!v16)
          {
            return 0;
          }

          goto LABEL_86;
        }

        if (v23)
        {
          v24 = sub_100042E68();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v54 = "HandleUserRequestMessage";
            v55 = 1024;
            v56 = 1865;
            v57 = 1024;
            LODWORD(v58) = v50.i32[1];
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] got response %d", buf, 0x18u);
          }
        }

        v49 = v50.u32[1];
        v25 = "got response %d";
        v26 = 1865;
        break;
      default:
        sub_1000339E8(a1, v17, 3u);
        if (sub_1000423E0())
        {
          v44 = sub_100042E68();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v54 = "HandleUserRequestMessage";
            v55 = 1024;
            v56 = 1892;
            v57 = 1024;
            LODWORD(v58) = v50.i32[0];
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%s:%d] send unknown message type %d", buf, 0x18u);
          }
        }

        v49 = v50.u32[0];
        v25 = "send unknown message type %d";
        v26 = 1892;
        break;
    }

    v45 = 7;
    goto LABEL_107;
  }

  if (v50.i32[1] == 2)
  {
    if (sub_1000423E0())
    {
      v21 = sub_100042E68();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v54 = "HandleUserRequestMessage";
        v55 = 1024;
        v56 = 1817;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] ask to resume ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1817, "HandleUserRequestMessage", 7, 0, "ask to resume ");
    v22 = +[IDSServiceEmbeddedController sharedIDServiceController];
    [v22 postAskToResumeNotification:a2 senderToken:v17];
LABEL_73:

    if (!v16)
    {
      return 0;
    }

    goto LABEL_86;
  }

  sub_1000339E8(a1, v17, 0);
  v20 = v50.i32[1];
LABEL_51:
  if (v20 > 2)
  {
    switch(v20)
    {
      case 3:
        if (sub_1000423E0())
        {
          v40 = sub_100042E68();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v54 = "HandleUserRequestMessage";
            v55 = 1024;
            v56 = 1834;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%s:%d] ask to copy text", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1834, "HandleUserRequestMessage", 7, 0, "ask to copy text");
        v22 = +[IDSServiceEmbeddedController sharedIDServiceController];
        v34 = [NSString stringWithUTF8String:v16];
        [v22 askToCopyToPasteboard:a2 senderToken:v17 message:v34];
        goto LABEL_72;
      case 4:
        if (sub_1000423E0())
        {
          v41 = sub_100042E68();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v54 = "HandleUserRequestMessage";
            v55 = 1024;
            v56 = 1844;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%s:%d] ask to show message", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1844, "HandleUserRequestMessage", 7, 0, "ask to show message");
        v42 = +[IDSServiceEmbeddedController sharedIDServiceController];
        v43 = [NSString stringWithUTF8String:v16];
        [v42 showMessageToUser:v43];

        if (!v16)
        {
          return 0;
        }

        goto LABEL_86;
      case 5:
        if (sub_1000423E0())
        {
          v33 = sub_100042E68();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v54 = "HandleUserRequestMessage";
            v55 = 1024;
            v56 = 1850;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%s:%d] ask to open url", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1850, "HandleUserRequestMessage", 7, 0, "ask to open url");
        v22 = +[IDSServiceEmbeddedController sharedIDServiceController];
        v34 = [NSString stringWithUTF8String:v16];
        v35 = [a2 sessionController];
        [v22 askToOpenURL:a2 senderToken:v17 URL:v34 sessionController:v35];

LABEL_72:
        goto LABEL_73;
    }

    goto LABEL_83;
  }

  if (v20 == 1)
  {
    v38 = a1;
    v37 = v17;
    v39 = 0;
  }

  else
  {
    if (v20 != 2)
    {
LABEL_83:
      v38 = a1;
      v37 = v17;
      v39 = 4;
      goto LABEL_85;
    }

    if (sub_1000423E0())
    {
      v36 = sub_100042E68();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v54 = "HandleUserRequestMessage";
        v55 = 1024;
        v56 = 1839;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%s:%d] not actually paused, send back OK", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1839, "HandleUserRequestMessage", 7, 0, "not actually paused, send back OK");
    v37 = *(&v52[0].u32[1] + 2);
    v38 = a1;
    v39 = 1;
  }

LABEL_85:
  sub_1000339E8(v38, v37, v39);
  if (v16)
  {
LABEL_86:
    free(v16);
  }

  return 0;
}

void sub_1000339E8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "SendUserRequestResponse";
      v11 = 1024;
      v12 = 1908;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] SendUserRequestResponse", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1908, "SendUserRequestResponse", 7, 0, "SendUserRequestResponse");
  if (*(a1 + 2640) && (*(a1 + 2676) & 0x10) != 0)
  {
    v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x108004043D1B9D8uLL);
    v7[6] = 0;
    *(v7 + 2) = 18;
    *(v7 + 14) = 35;
    *(v7 + 4) = 16780800;
    *(v7 + 5) = bswap32(a2);
    *(v7 + 6) = 0x2000000;
    *(v7 + 7) = bswap32(a3);
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v10 = "SendUserRequestResponse";
        v11 = 1024;
        v12 = 1923;
        v13 = 1024;
        v14 = a3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] responseCode %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1923, "SendUserRequestResponse", 7, 0, "responseCode %d", a3);
    sub_10002E738(a1, v7);
  }
}

void sub_100033BFC()
{
  if (sub_1000423E0())
  {
    v0 = sub_100042E68();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315394;
      v3 = "TouchEventEncoding_Start";
      v4 = 1024;
      v5 = 1931;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[%s:%d] start sending touch events", &v2, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1931, "TouchEventEncoding_Start", 7, 0, "start sending touch events");
  +[TouchEventMonitor startMonitoringTouchEvents];
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 addObserver:qword_100070AA0 selector:"notificationHandler:" name:@"TouchEventUpdate" object:0];
}

void sub_100033D2C()
{
  if (sub_1000423E0())
  {
    v0 = sub_100042E68();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315394;
      v3 = "TouchEventEncoding_Stop";
      v4 = 1024;
      v5 = 1943;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[%s:%d] stop sending touch events", &v2, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1943, "TouchEventEncoding_Stop", 7, 0, "stop sending touch events");
  +[TouchEventMonitor stopMonitoringTouchEvents];
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 removeObserver:qword_100070AA0];
}

uint64_t start()
{
  if (sub_1000423E0())
  {
    v0 = sub_100042E68();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "main";
      v6 = 1024;
      v7 = 1954;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[%s:%d] start screen sharing server", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1954, "main", 7, 0, "start screen sharing server");
  GSInitialize();
  v1 = +[IDSServiceEmbeddedController sharedIDServiceController];
  [v1 initScreenSharingIDSService];

  if (sub_1000423E0())
  {
    v2 = sub_100042E68();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "main";
      v6 = 1024;
      v7 = 1957;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] going into runloop", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1957, "main", 7, 0, "going into runloop");
  CFRunLoopRun();
  return 0;
}

uint64_t sub_1000341D0(uint64_t a1, unsigned __int16 *a2, size_t a3)
{
  if ((a3 - 1532) <= 0xFA17u)
  {
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v51 = "UDPReceiverHandlePacket";
        v52 = 1024;
        v53 = 330;
        v54 = 1024;
        v55 = a3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] bad packet size %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 330, "UDPReceiverHandlePacket", 7, 0, "bad packet size %d", a3);
    return 4294967294;
  }

  if (*a2 != 256)
  {
    v14 = a3;
    if (sub_1000423E0())
    {
      v15 = sub_100042E68();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = bswap32(*a2);
        *buf = 136315906;
        v51 = "UDPReceiverHandlePacket";
        v52 = 1024;
        v53 = 338;
        v54 = 1024;
        v55 = HIWORD(v16);
        v56 = 1024;
        v57 = a3;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] bad packet version %d got length %d", buf, 0x1Eu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 338, "UDPReceiverHandlePacket", 7, 0, "bad packet version %d got length %d", bswap32(*a2) >> 16, a3);
    sub_100042C68("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 339, "UDPReceiverHandlePacket", 7, "badpacket", a2, v14);
    return 0;
  }

  *(a1 + 52) = sub_100035FAC();
  v8 = a2[1];
  v9 = __rev16(v8);
  a2[1] = v9;
  *(a2 + 2) = vrev32_s8(*(a2 + 2));
  a2[8] = bswap32(a2[8]) >> 16;
  a2[9] = bswap32(a2[9]) >> 16;
  if (v9 >= 8)
  {
    if (sub_1000423E0())
    {
      v10 = sub_100042E68();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = a2[1];
        *buf = 136315650;
        v51 = "UDPReceiverHandlePacket";
        v52 = 1024;
        v53 = 363;
        v54 = 1024;
        v55 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] udpreceiver - invalid packet type %d - ignoring", buf, 0x18u);
      }
    }

    v48 = a2[1];
    v12 = "udpreceiver - invalid packet type %d - ignoring";
    v13 = 363;
    goto LABEL_12;
  }

  if (v8 == 1792)
  {
    if (!*(a1 + 1368))
    {
      *(a1 + 1368) = -2;
    }

    if (sub_1000423E0())
    {
      v17 = sub_100042E68();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v51 = "UDPReceiverHandlePacket";
        v52 = 1024;
        v53 = 371;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] got fatal error packet from sender", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 371, "UDPReceiverHandlePacket", 5, 0, "got fatal error packet from sender");
    sub_100039C0C(*(a1 + 1416));
  }

  if (!*(a1 + 1368))
  {
    v19 = a2[1];
    if (v19 != 4)
    {
      if (v19 == 2)
      {
        return sub_1000352B4(a1, a2, a3);
      }

      if (v19 != 1)
      {
        v22 = *(a2 + 2);
        v23 = *(a1 + 44);
        if (v22 >= v23)
        {
          if (v22 != v23)
          {
            if (v22 >= v23 + 128)
            {
              if (sub_1000423E0())
              {
                v31 = sub_100042E68();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  v32 = *(a2 + 2);
                  *buf = 136315650;
                  v51 = "UDPReceiverHandlePacket";
                  v52 = 1024;
                  v53 = 503;
                  v54 = 1024;
                  v55 = v32;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] packet out of range index %u", buf, 0x18u);
                }
              }

              v33 = *(a2 + 2);
              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 503, "UDPReceiverHandlePacket", 5, 0, "packet out of range index %u");
            }

            else
            {
              sub_100035AB0(a1, a2, a3);
            }

            return 0;
          }

          *(a1 + 1364) += a3;
          v27 = *(a2 + 1);
          v28 = sub_1000357F4(a1, a2, a3);
          v29 = a2[8];
          if (v28)
          {
            v30 = *(a1 + 44);
            if (v30 <= *(a1 + 1372))
            {
              return 0;
            }
          }

          else
          {
            v34 = *(a1 + 44);
            v35 = v34 & 0x7F;
            v36 = (a1 + 1096 + 2 * v35);
            v37 = *v36;
            if (*v36)
            {
              while (1)
              {
                v38 = *(a1 + 72 + 8 * v35);
                v39 = *(a1 + 1364);
                if (*(a1 + 1353) - 3 <= 1 && bswap32(*(v38 + 12)) != v39)
                {
                  break;
                }

                *(a1 + 1364) = v39 + v37;
                v40 = sub_1000357F4(a1, v38, v37);
                v29 = *(v38 + 16);
                free(v38);
                *v36 = 0;
                v30 = *(a1 + 44);
                if (!v40)
                {
                  v35 = v30 & 0x7F;
                  v36 = (a1 + 1096 + 2 * v35);
                  v37 = *v36;
                  if (*v36)
                  {
                    continue;
                  }
                }

                goto LABEL_66;
              }

              if (sub_1000423E0())
              {
                v41 = sub_100042E68();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = *(v38 + 8);
                  v43 = bswap32(*(v38 + 12));
                  v44 = *(a1 + 1364);
                  *buf = 136316162;
                  v51 = "UDPReceiverHandlePacket";
                  v52 = 1024;
                  v53 = 451;
                  v54 = 1024;
                  v55 = v42;
                  v56 = 1024;
                  v57 = v43;
                  v58 = 1024;
                  v59 = v44;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%s:%d] pkt index %u bufferSize %u expected %u", buf, 0x24u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 451, "UDPReceiverHandlePacket", 7, 0, "pkt index %u bufferSize %u expected %u", *(v38 + 8), bswap32(*(v38 + 12)), *(a1 + 1364));
              free(v38);
              *v36 = 0;
              v30 = *(a1 + 44);
LABEL_66:
              if (v30 <= *(a1 + 1372))
              {
                if (v30 - 1 >= *(a1 + 68))
                {
                  sub_100034BC4(a1, v27, v30 - 1);
                }

                return 0;
              }
            }

            else
            {
              v30 = *(a1 + 44);
              if (v34 <= *(a1 + 1372))
              {
                return 0;
              }
            }
          }

          sub_100034BC4(a1, v27, v30 - 1);
          v45 = v29 % *(a1 + 60);
          v46 = *(a1 + 1372);
          if (*(a1 + 64) == 1)
          {
            v47 = v46 + 3;
          }

          else
          {
            v47 = v46 + v45 + *(a1 + 1408) - *(a1 + 1410);
          }

          result = 0;
          *(a1 + 1372) = v47;
          *(a1 + 1408) = v29;
          *(a1 + 1410) = v45;
          return result;
        }

        if (sub_1000423E0())
        {
          v24 = sub_100042E68();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a2 + 2);
            v26 = *(a1 + 44);
            *buf = 136315906;
            v51 = "UDPReceiverHandlePacket";
            v52 = 1024;
            v53 = 406;
            v54 = 1024;
            v55 = v25;
            v56 = 1024;
            v57 = v26;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] *OLD %d wanted %d", buf, 0x1Eu);
          }
        }

        v48 = *(a2 + 2);
        v49 = *(a1 + 44);
        v12 = "*OLD %d wanted %d";
        v13 = 406;
LABEL_12:
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, v13, "UDPReceiverHandlePacket", 7, 0, v12, v48, v49);
        return 0;
      }

      if (sub_1000423E0())
      {
        v20 = sub_100042E68();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a2 + 2);
          *buf = 136315650;
          v51 = "UDPReceiverHandlePacket";
          v52 = 1024;
          v53 = 386;
          v54 = 1024;
          v55 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] got status request for %u", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 386, "UDPReceiverHandlePacket", 7, 0, "got status request for %u", *(a2 + 2));
    }

    return sub_10003517C(a1, a2, a3);
  }

  if (sub_1000423E0())
  {
    v18 = sub_100042E68();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v51 = "UDPReceiverHandlePacket";
      v52 = 1024;
      v53 = 377;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] got fatal error calling SendStatusBack", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 377, "UDPReceiverHandlePacket", 5, 0, "got fatal error calling SendStatusBack");
  sub_100034BC4(a1, *(a2 + 1), *(a1 + 44) - 1);
  return 4294967292;
}

uint64_t sub_100034B18(uint64_t a1)
{
  result = sub_100035FAC();
  *(a1 + 52) = result;
  if (*(a1 + 1353) - 3 < 2)
  {
    *(a1 + 60) = 0x100000001;
    *(a1 + 1372) = 2;
    return result;
  }

  v3 = result & 7;
  *(a1 + 60) = v3;
  *(a1 + 64) = v3;
  if ((result & 7) == 0)
  {
    *(a1 + 60) = 0x100000001;
    v4 = *(a1 + 1372);
    goto LABEL_7;
  }

  v4 = *(a1 + 1372);
  if (v3 == 1)
  {
LABEL_7:
    LOWORD(v5) = 0;
    v6 = v4 + 3;
    goto LABEL_8;
  }

  v5 = 6 % v3;
  v6 = v4 + *(a1 + 1408) + v5 - *(a1 + 1410);
LABEL_8:
  *(a1 + 1372) = v6;
  *(a1 + 1408) = 6;
  *(a1 + 1410) = v5;
  return result;
}

void sub_100034BC4(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  a1[12] = a1[11] - 1;
  memset(v52, 0, 44);
  v6 = a1[340];
  v7 = sub_10003ADC0(*(a1 + 172));
  v8 = *(a1 + 30) - 1;
  if (a1[342])
  {
    BYTE12(v52[1]) = a1[342];
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[342];
        *buf = 136315650;
        v44 = "SendStatusBack";
        v45 = 1024;
        v46 = 939;
        v47 = 1024;
        v48 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] RFB datagram: fatal error %u", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 939, "SendStatusBack", 7, 0, "RFB datagram: fatal error %u", a1[342]);
    v11 = 0;
    a3 = 0;
    v12 = 512;
  }

  else
  {
    v13 = a1[11];
    if (v13 <= a3)
    {
      if (v13 + 127 < a3)
      {
        if (sub_1000423E0())
        {
          v14 = sub_100042E68();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = a1[11];
            *buf = 136315906;
            v44 = "SendStatusBack";
            v45 = 1024;
            v46 = 964;
            v47 = 1024;
            v48 = a3;
            v49 = 1024;
            *v50 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%s:%d] sender is too far ahead %u am at %u", buf, 0x1Eu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 964, "SendStatusBack", 1, 0, "sender is too far ahead %u am at %u", a3, a1[11]);
        v13 = a1[11];
        a3 = v13 + 127;
      }

      v16 = a3 - v13 + 8;
      v11 = v16 >> 3;
      WORD5(v52[1]) = v16 >> 3;
      v42 = v16 & 0xFFFFFFF8;
      if ((v16 & 0xFFFFFFF8) != 0)
      {
        v39 = v8;
        v40 = v6;
        v41 = a2;
        v17 = 0;
        v18 = a1 + 274;
        v19 = -(v16 & 0xFFFFFFF8);
        v20 = 128;
        do
        {
          v21 = a3 + v19 + 1;
          if (v21 <= a3 && v21 >= a1[11] && !*(v18 + (v21 & 0x7F)))
          {
            if (sub_1000423E0())
            {
              v22 = sub_100042E68();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v44 = "SendStatusBack";
                v45 = 1024;
                v46 = 987;
                v47 = 1024;
                v48 = a3 + v19 + 1;
                v49 = 1024;
                *v50 = v21 & 0x7F;
                *&v50[4] = 1024;
                *&v50[6] = v42;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] missed pkt %d  offset %d  bitfieldSize %d", buf, 0x24u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 987, "SendStatusBack", 7, 0, "missed pkt %d  offset %d  bitfieldSize %d", a3 + v19 + 1, v21 & 0x7F, v42);
            v18 = a1 + 274;
            *(&v52[1] + v17 + 12) |= v20;
            if (a3 > a1[17])
            {
              a1[17] = a3;
            }
          }

          if (v20 >= 2)
          {
            v20 >>= 1;
          }

          else
          {
            ++v17;
            v20 = 128;
          }
        }

        while (!__CFADD__(v19++, 1));
        v12 = 256;
        a2 = v41;
        v8 = v39;
        v6 = v40;
      }

      else
      {
        v12 = 256;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      a3 = v13 - 1;
    }
  }

  LODWORD(v52[0]) = 33554688;
  *(v52 + 4) = _byteswap_uint64(__PAIR64__(a2, a3));
  HIDWORD(v52[0]) = bswap32(v6);
  LOWORD(v52[1]) = bswap32(v8) >> 16;
  WORD2(v52[1]) = v12;
  *(&v52[1] + 6) = bswap32(v7);
  WORD5(v52[1]) = bswap32(v11) >> 16;
  v24 = *(a1 + 1353);
  if ((v24 - 3) < 2)
  {
    strcpy(&v52[1] + 2, ",");
    v28 = *(a1 + 182);
    if (*(v28 + 3272))
    {
      sub_1000020A8(*(v28 + 3264), v52, 44);
    }

    else
    {
      if (*(a1 + 1440))
      {
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v29 = (a1 + 4);
        v30 = *(a1 + 16);
      }

      if (sendto(*a1, v52, 0x2CuLL, 0, v29, v30) == -1)
      {
        if (sub_1000423E0())
        {
          v31 = sub_100042E68();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *__error();
            v33 = __error();
            v34 = strerror(*v33);
            v35 = *a1;
            *buf = 136316162;
            v44 = "SendStatusBack";
            v45 = 1024;
            v46 = 1055;
            v47 = 1024;
            v48 = v32;
            v49 = 2080;
            *v50 = v34;
            *&v50[8] = 1024;
            v51 = v35;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] SendStatusBack errno %d %s r->readSockFD = %d", buf, 0x28u);
          }
        }

        v36 = *__error();
        v37 = __error();
        v38 = strerror(*v37);
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 1055, "SendStatusBack", 7, 0, "SendStatusBack errno %d %s r->readSockFD = %d", v36, v38, *a1);
      }
    }
  }

  else if ((v24 - 1) <= 1)
  {
    v25 = *(a1 + 179);
    v26 = *a1;
    v27 = (a1 + 4);
    if (v25)
    {
      v25(v26, v27, v52, 44, 0);
    }

    else
    {
      sub_100035FD8(v26, v27, v52, 0x2Cu);
    }
  }
}

uint64_t sub_10003517C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 0x13)
  {
    sub_100034BC4(a1, *(a2 + 4), *(a2 + 8));
    v7 = *(a1 + 1376);
    if (*(v7 + 48))
    {
      result = sub_10003ABCC(v7);
      if (!result)
      {
        return result;
      }

      sub_100039C0C(*(*(a1 + 1376) + 32));
    }

    return 0;
  }

  else
  {
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = "ProcessStatusRequest";
        v10 = 1024;
        v11 = 780;
        v12 = 1024;
        v13 = a3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] status requst too small %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 780, "ProcessStatusRequest", 7, 0, "status requst too small %d", a3);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000352B4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 20) = bswap32(*(a2 + 20)) >> 16;
  *(a2 + 22) = bswap32(*(a2 + 22));
  *(a2 + 26) = bswap32(*(a2 + 26)) >> 16;
  if (a3 > 0x2B)
  {
    v6 = *(a1 + 1456);
    if (v6)
    {
      v8 = *(v6 + 3248);
      if (*(a2 + 8) >= *(v8 + 44))
      {
        [*(v6 + 56) lock];
        ++*(v6 + 80);
        v9 = *(a2 + 20);
        *v8 = v9;
        *(v8 + 40) = *(a2 + 8);
        *(v8 + 12) = 0;
        *(v8 + 2) = 0;
        if (!v9)
        {
          v10 = sub_100035FAC();
          *(v8 + 48) = v10;
          *(v8 + 52) = v10;
        }

        *(v8 + 8) = *(a2 + 22);
        v11 = *(a2 + 26);
        if (v11 < 0x11)
        {
          if (*v8 == 1)
          {
            *(v8 + 16) = v11;
            memcpy((v8 + 18), (a2 + 28), v11);
          }

          else if (!*v8)
          {
            *(v8 + 44) = *(v8 + 40);
          }

          v16 = sub_100035FAC();
          v17 = *(a2 + 4);
          if (v17)
          {
            v18 = v16 - v17;
            if (v18 >= 0x989680)
            {
              v19 = 10000000;
            }

            else
            {
              v19 = v18;
            }

            v20 = *(v8 + 56);
            v21 = *(v8 + 60);
            v22 = v19 - v20;
            v23 = v19 - v20 + 7;
            if (v19 - v20 >= 0)
            {
              v23 = v19 - v20;
            }

            v24 = (v20 + (v23 >> 3)) & ~((v20 + (v23 >> 3)) >> 31);
            if (v22 >= 0)
            {
              v25 = v22;
            }

            else
            {
              v25 = -v22;
            }

            v26 = v25 - v21;
            if (v25 < v21)
            {
              v26 = v25 - v21 + 3;
            }

            v27 = v21 + (v26 >> 2);
            *(v8 + 56) = v24;
            *(v8 + 60) = v27;
            *(v8 + 64) = (v24 + 4 * v27) & ~((v24 + 4 * v27) >> 31);
            if (sub_1000423E0())
            {
              v28 = sub_100042E68();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = *(v8 + 56);
                *buf = 136315650;
                v38 = "ProcessStatusReply";
                v39 = 1024;
                v40 = 709;
                v41 = 1024;
                v42 = v29;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] receiver->smoothedRoundTripTime %u", buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 709, "ProcessStatusReply", 7, 0, "receiver->smoothedRoundTripTime %u", *(v8 + 56));
            if ((~++dword_100070AA8 & 0x1FF) == 0)
            {
              if (sub_1000423E0())
              {
                v30 = sub_100042E68();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  v31 = *(v8 + 56);
                  v32 = *(v8 + 60);
                  v33 = *(v8 + 64);
                  *buf = 136316674;
                  v38 = "ProcessStatusReply";
                  v39 = 1024;
                  v40 = 723;
                  v41 = 1024;
                  v42 = v19;
                  v43 = 1024;
                  *v44 = v25;
                  *&v44[4] = 1024;
                  *&v44[6] = v31;
                  v45 = 1024;
                  v46 = v32;
                  v47 = 1024;
                  v48 = v33;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%s:%d] rt time %u delta %u smoothed %u deviation %u timeout %d", buf, 0x30u);
                }
              }

              v34 = *(v8 + 56);
              v35 = *(v8 + 60);
              v36 = *(v8 + 64);
              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 723, "ProcessStatusReply", 7, 0, "rt time %u delta %u smoothed %u deviation %u timeout %d", v19, v25);
            }
          }
        }

        else
        {
          if (sub_1000423E0())
          {
            v12 = sub_100042E68();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = *(a2 + 26);
              *buf = 136315650;
              v38 = "ProcessStatusReply";
              v39 = 1024;
              v40 = 669;
              v41 = 1024;
              v42 = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] protocol error - bitmap size wrong %d", buf, 0x18u);
            }
          }

          v14 = *(a2 + 26);
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 669, "ProcessStatusReply", 5, 0, "protocol error - bitmap size wrong %d");
        }

        [*(v6 + 56) unlock];
        if (*(v6 + 3175))
        {
          sub_100039C0C(*(v6 + 40));
        }
      }

      return 0;
    }

    else
    {
      if (sub_1000423E0())
      {
        v15 = sub_100042E68();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v38 = "ProcessStatusReply";
          v39 = 1024;
          v40 = 636;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%s:%d] status reply, no sender info set", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 636, "ProcessStatusReply", 1, 0, "status reply, no sender info set");
      return 4294967294;
    }
  }

  else
  {
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v38 = "ProcessStatusReply";
        v39 = 1024;
        v40 = 621;
        v41 = 1024;
        v42 = a3;
        v43 = 2048;
        *v44 = 44;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%s:%d] status reply too small %d %zu", buf, 0x22u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 621, "ProcessStatusReply", 1, 0, "status reply too small %d %zu", a3, 0x2CuLL);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000357F4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a2 + 2);
  if (v6 == 6)
  {
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "DispatchPacket";
        v14 = 1024;
        v15 = 887;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] got kRFBDatagramDataPacketForceReply", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 887, "DispatchPacket", 7, 0, "got kRFBDatagramDataPacketForceReply");
    return sub_100035D18(a1, a2, a3, 1);
  }

  else if (v6 == 3)
  {
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "DispatchPacket";
        v14 = 1024;
        v15 = 882;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] machine index", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 882, "DispatchPacket", 7, 0, "machine index");
    return 0;
  }

  else if (*(a2 + 2))
  {
    if (sub_1000423E0())
    {
      v10 = sub_100042E68();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 2);
        *buf = 136315650;
        v13 = "DispatchPacket";
        v14 = 1024;
        v15 = 893;
        v16 = 1024;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] unknwon packet type %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 893, "DispatchPacket", 7, 0, "unknwon packet type %d", *(a2 + 2));
    return 0xFFFFFFFFLL;
  }

  else
  {

    return sub_100035D18(a1, a2, a3, 0);
  }
}

void sub_100035AB0(uint64_t a1, uint64_t a2, size_t size)
{
  v5 = *(a2 + 8) & 0x7F;
  if (*(a1 + 1096 + 2 * v5))
  {
    if (sub_1000423E0())
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a2 + 8);
        v8 = *(a1 + 44);
        *buf = 136315906;
        v20 = "BufferPendingPacket";
        v21 = 1024;
        v22 = 822;
        v23 = 1024;
        v24 = v7;
        v25 = 1024;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] already received %u wanted %u", buf, 0x1Eu);
      }
    }

    v18 = *(a1 + 44);
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 822, "BufferPendingPacket", 7, 0, "already received %u wanted %u", *(a2 + 8));
  }

  else
  {
    *(a1 + 1096 + 2 * v5) = size;
    v9 = size;
    v10 = malloc_type_malloc(size, 0xE6842B85uLL);
    if (v10)
    {
      v11 = v10;
      memcpy(v10, a2, v9);
      *(a1 + 8 * v5 + 72) = v11;
      v12 = *(a2 + 8);
      v13 = *(a1 + 1372);
      if (v12 >= v13)
      {
        if (*(a1 + 44) >= *(a1 + 68))
        {
          sub_100034BC4(a1, *(a2 + 4), v12);
          v13 = *(a1 + 1372);
        }

        v14 = *(a2 + 16);
        v15 = v14 % *(a1 + 60);
        if (*(a1 + 64) == 1)
        {
          v16 = v13 + 3;
        }

        else
        {
          v16 = v13 + v15 + *(a1 + 1408) - *(a1 + 1410);
        }

        *(a1 + 1372) = v16;
        *(a1 + 1408) = v14;
        *(a1 + 1410) = v15;
      }
    }

    else
    {
      if (sub_1000423E0())
      {
        v17 = sub_100042E68();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v20 = "BufferPendingPacket";
          v21 = 1024;
          v22 = 832;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] BufferPendingPacket - unable to allocate memory for packet", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 832, "BufferPendingPacket", 7, 0, "BufferPendingPacket - unable to allocate memory for packet");
    }
  }
}

uint64_t sub_100035D18(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = sub_10003ADC0(*(a1 + 1376));
  v9 = a3 - 20;
  v10 = *(a1 + 1376);
  if (v9 <= v8)
  {
    v15 = sub_10003A880(v10, v9, (a2 + 20));
    if (v15)
    {
      v16 = v15;
      if (sub_1000423E0())
      {
        v17 = sub_100042E68();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v21 = "ProcessDataPacket";
          v22 = 1024;
          v23 = 569;
          v24 = 1024;
          v25 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] unexpected error netbufferadd %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 569, "ProcessDataPacket", 5, 0, "unexpected error netbufferadd %d", v16);
    }

    else
    {
      v18 = *(a1 + 1376);
      if (*(v18 + 48))
      {
        sub_100039C0C(*(v18 + 32));
      }

      v19 = *(a1 + 44);
      *(a1 + 44) = v19 + 1;
      if (a4 || v8 <= 0xFDE7 && v19 + 1 > *(a1 + 48) + 5 && *(a1 + 1372) > v19 + 9)
      {
        sub_100034BC4(a1, *(a2 + 4), v19);
      }
    }

    return 0;
  }

  else
  {
    sub_100039C0C(*(v10 + 32));
    if (sub_1000423E0())
    {
      v11 = sub_100042E68();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = sub_10003ABCC(*(a1 + 1376));
        *buf = 136316162;
        v21 = "ProcessDataPacket";
        v22 = 1024;
        v23 = 540;
        v24 = 1024;
        v25 = v8;
        v26 = 1024;
        v27 = v12;
        v28 = 1024;
        v29 = a3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] buffer full - freespace %u available %u packetSize %d", buf, 0x24u);
      }
    }

    v13 = sub_10003ABCC(*(a1 + 1376));
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 540, "ProcessDataPacket", 7, 0, "buffer full - freespace %u available %u packetSize %d", v8, v13, a3);
    sub_100034BC4(a1, *(a2 + 4), *(a1 + 44) - 2);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100035FAC()
{
  v1 = 0;
  sub_1000402B4(&v1);
  return v1;
}

uint64_t sub_100035FD8(int a1, sockaddr *a2, void *a3, unsigned int a4)
{
  if (a4 < 0x5C9)
  {
    v6 = sendto(a1, a3, a4, 0, a2, a2->sa_len);
    result = 0;
    if (v6 == a4)
    {
      return result;
    }

    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *__error();
        v10 = __error();
        v11 = strerror(*v10);
        *buf = 136315906;
        v15 = "UDPWriteNetworkPacket";
        v16 = 1024;
        v17 = 193;
        v18 = 1024;
        v19 = v9;
        v20 = 2080;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] UDPWriteNetworkPacket result looks wrong %d %s", buf, 0x22u);
      }
    }

    v12 = *__error();
    v13 = __error();
    strerror(*v13);
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/UDPUtils.c", 87, 193, "UDPWriteNetworkPacket", 7, 0, "UDPWriteNetworkPacket result looks wrong %d %s", v12);
  }

  else
  {
    if (sub_1000423E0())
    {
      v5 = sub_100042E68();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "UDPWriteNetworkPacket";
        v16 = 1024;
        v17 = 180;
        v18 = 1024;
        v19 = a4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] pkt too large %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/UDPUtils.c", 87, 180, "UDPWriteNetworkPacket", 7, 0, "pkt too large %d");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000361DC(uint64_t a1, void *a2)
{
  if (*(a1 + 28) == 4)
  {

    return sub_100036308(a1, a2);
  }

  else
  {
    if (sub_1000423E0())
    {
      v3 = sub_100042E68();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315394;
        v5 = "HandleViewerMessage";
        v6 = 1024;
        v7 = 106;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] bad viewer state", &v4, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 106, "HandleViewerMessage", 7, 0, "bad viewer state");
    return 4294967294;
  }
}

uint64_t sub_100036308(uint64_t a1, void *a2)
{
  v175 = 0;
  if (*(a1 + 1514))
  {
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 1513);
        buf = 136315650;
        v184 = "HandleViewerCommand";
        v185 = 1024;
        v186 = 130;
        v187 = 1024;
        LODWORD(v188) = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer->pendingCmd %d", &buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 130, "HandleViewerCommand", 7, 0, "viewer->pendingCmd %d", *(a1 + 1513));
    v6 = *(a1 + 1513);
    v175 = *(a1 + 1513);
  }

  else
  {
    sub_10003A56C(*(a1 + 8), 1u, &v175);
    v6 = v175;
  }

  switch(v6)
  {
    case 0:
      if (sub_1000423E0())
      {
        v7 = sub_100042E68();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleViewerCommand";
          v185 = 1024;
          v186 = 139;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] set pixel format", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 139, "HandleViewerCommand", 7, 0, "set pixel format");
      if (sub_10003ABCC(*(a1 + 8)) < 0x14)
      {
        return 0xFFFFFFFFLL;
      }

      memset(v176, 0, 20);
      sub_100039EA8(*(a1 + 8), 0x14u, v176);
      if (sub_1000423E0())
      {
        v8 = sub_100042E68();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleSetPixelFormatMessage";
          v185 = 1024;
          v186 = 879;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetPixelFormatMessage", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 879, "HandleSetPixelFormatMessage", 7, 0, "HandleSetPixelFormatMessage");
      [0 lock];
      v176[1].i16[0] = bswap32(v176[1].u16[0]) >> 16;
      v176[1].i16[1] = bswap32(v176[1].u16[1]) >> 16;
      v176[1].i16[2] = bswap32(v176[1].u16[2]) >> 16;
      *(a1 + 104) = *&v176[0].u8[4];
      if (sub_1000423E0())
      {
        v9 = sub_100042E68();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSetPixelFormatMessage";
          v185 = 1024;
          v186 = 890;
          v187 = 1024;
          LODWORD(v188) = v176[0].u8[4];
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] bitsperpixel %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 890, "HandleSetPixelFormatMessage", 7, 0, "bitsperpixel %d", v176[0].u8[4]);
      if (sub_1000423E0())
      {
        v10 = sub_100042E68();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSetPixelFormatMessage";
          v185 = 1024;
          v186 = 891;
          v187 = 1024;
          LODWORD(v188) = v176[0].u8[5];
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] depth %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 891, "HandleSetPixelFormatMessage", 7, 0, "depth %d", v176[0].u8[5]);
      if (sub_1000423E0())
      {
        v11 = sub_100042E68();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSetPixelFormatMessage";
          v185 = 1024;
          v186 = 892;
          v187 = 1024;
          LODWORD(v188) = v176[0].u8[6];
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] bigEndianFlag %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 892, "HandleSetPixelFormatMessage", 7, 0, "bigEndianFlag %d", v176[0].u8[6]);
      if (sub_1000423E0())
      {
        v12 = sub_100042E68();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSetPixelFormatMessage";
          v185 = 1024;
          v186 = 893;
          v187 = 1024;
          LODWORD(v188) = v176[0].u8[7];
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] trueColorFlag %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 893, "HandleSetPixelFormatMessage", 7, 0, "trueColorFlag %d", v176[0].u8[7]);
      if (sub_1000423E0())
      {
        v13 = sub_100042E68();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSetPixelFormatMessage";
          v185 = 1024;
          v186 = 894;
          v187 = 1024;
          LODWORD(v188) = v176[1].u16[0];
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] redMax %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 894, "HandleSetPixelFormatMessage", 7, 0, "redMax %d", v176[1].u16[0]);
      if (sub_1000423E0())
      {
        v14 = sub_100042E68();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSetPixelFormatMessage";
          v185 = 1024;
          v186 = 895;
          v187 = 1024;
          LODWORD(v188) = v176[1].u16[1];
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] greenMax %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 895, "HandleSetPixelFormatMessage", 7, 0, "greenMax %d", v176[1].u16[1]);
      if (sub_1000423E0())
      {
        v15 = sub_100042E68();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSetPixelFormatMessage";
          v185 = 1024;
          v186 = 896;
          v187 = 1024;
          LODWORD(v188) = v176[1].u16[2];
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] blueMax %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 896, "HandleSetPixelFormatMessage", 7, 0, "blueMax %d", v176[1].u16[2]);
      if (sub_1000423E0())
      {
        v16 = sub_100042E68();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSetPixelFormatMessage";
          v185 = 1024;
          v186 = 897;
          v187 = 1024;
          LODWORD(v188) = v176[1].u8[6];
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] redShift %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 897, "HandleSetPixelFormatMessage", 7, 0, "redShift %d", v176[1].u8[6]);
      if (sub_1000423E0())
      {
        v17 = sub_100042E68();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSetPixelFormatMessage";
          v185 = 1024;
          v186 = 898;
          v187 = 1024;
          LODWORD(v188) = v176[1].u8[7];
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] greenShift %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 898, "HandleSetPixelFormatMessage", 7, 0, "greenShift %d", v176[1].u8[7]);
      if (sub_1000423E0())
      {
        v18 = sub_100042E68();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSetPixelFormatMessage";
          v185 = 1024;
          v186 = 899;
          v187 = 1024;
          LODWORD(v188) = v176[2].u8[0];
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] blueShift %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 899, "HandleSetPixelFormatMessage", 7, 0, "blueShift %d", v176[2].u8[0]);
      if (v176[0].u8[5] > 8u)
      {
        *(a1 + 122) = 32;
        if (sub_1000423E0())
        {
          v108 = sub_100042E68();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            v109 = *(a1 + 122);
            buf = 136315650;
            v184 = "HandleSetPixelFormatMessage";
            v185 = 1024;
            v186 = 911;
            v187 = 1024;
            LODWORD(v188) = v109;
            _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetPixelFormatMessage %d", &buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 911, "HandleSetPixelFormatMessage", 7, 0, "HandleSetPixelFormatMessage %d", *(a1 + 122));
        if (sub_1000423E0())
        {
          v110 = sub_100042E68();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
          {
            v111 = *(a1 + 1280);
            v112 = *(a1 + 1264);
            buf = 136315906;
            v184 = "HandleSetPixelFormatMessage";
            v185 = 1024;
            v186 = 913;
            v187 = 1024;
            LODWORD(v188) = v111;
            WORD2(v188) = 2048;
            *(&v188 + 6) = v112;
            _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer->translatedPixelSize %d  viewer->trans_func %p", &buf, 0x22u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 913, "HandleSetPixelFormatMessage", 7, 0, "viewer->translatedPixelSize %d  viewer->trans_func %p", *(a1 + 1280), *(a1 + 1264));
        v20 = 0;
        *(a1 + 156) = 0;
      }

      else
      {
        if (sub_1000423E0())
        {
          v19 = sub_100042E68();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v184 = "HandleSetPixelFormatMessage";
            v185 = 1024;
            v186 = 903;
            v187 = 1024;
            LODWORD(v188) = v176[0].u8[5];
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] %d Only 16 or 32 bit pixels supported.", &buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 903, "HandleSetPixelFormatMessage", 7, 0, "%d Only 16 or 32 bit pixels supported.", v176[0].u8[5]);
        v20 = 4294967294;
      }

      [0 unlock];
      return v20;
    case 2:
      if (sub_1000423E0())
      {
        v58 = sub_100042E68();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleViewerCommand";
          v185 = 1024;
          v186 = 143;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[%s:%d] set encodings", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 143, "HandleViewerCommand", 7, 0, "set encodings");
      if (sub_10003ABCC(*(a1 + 8)) < 4)
      {
        return 0xFFFFFFFFLL;
      }

      v177 = 0;
      memset(v176, 0, sizeof(v176));
      sub_10003A56C(*(a1 + 8), 4u, v176);
      v176[0].i16[1] = bswap32(v176[0].u16[1]) >> 16;
      v59 = sub_10003ABCC(*(a1 + 8));
      v60 = v176[0].u16[1];
      v61 = 4 * v176[0].u16[1];
      if (v61 + 4 > v59)
      {
        return 0xFFFFFFFFLL;
      }

      if (v176[0].u16[1] > 0x64u)
      {
        return 4294967294;
      }

      sub_10003A284(*(a1 + 8), 4u);
      sub_100039EA8(*(a1 + 8), v61, &buf);
      if (v60)
      {
        p_buf = &buf;
        v63 = v60;
        do
        {
          *p_buf = bswap32(*p_buf);
          ++p_buf;
          --v63;
        }

        while (v63);
        for (i = 0; i != v60; ++i)
        {
          v65 = *(&buf + i);
          if ((v65 - 1000) <= 0xB && ((1 << (v65 + 24)) & 0x807) != 0 || v65 == 6 || v65 == 16)
          {
            goto LABEL_303;
          }
        }

        v69 = (a1 + 140);
        *(a1 + 144) = *(a1 + 140);
        v70 = (a1 + 144);
      }

      else
      {
        LODWORD(i) = 0;
LABEL_303:
        v69 = (a1 + 140);
        *(a1 + 144) = *(a1 + 140);
        v70 = (a1 + 144);
        if (i != v60)
        {
          *v69 = *(&buf + i);
          if (sub_1000423E0())
          {
            v143 = sub_100042E68();
            if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
            {
              v144 = *v69;
              *__str = 136315650;
              *&__str[4] = "HandleSetEncodingsMessage";
              v179 = 1024;
              v180 = 563;
              v181 = 1024;
              LODWORD(v182) = v144;
              _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "[%s:%d] preferred codec %u", __str, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 563, "HandleSetEncodingsMessage", 7, 0, "preferred codec %u", *v69);
          goto LABEL_309;
        }
      }

      *v69 = 0;
LABEL_309:
      *(a1 + 664) = 0;
      *(a1 + 148) = 0;
      v145 = 1;
      *(a1 + 158) = 0;
      if (!v60)
      {
LABEL_358:
        if (*v70 != *v69)
        {
          *(a1 + 1506) = 1;
          if (sub_1000423E0())
          {
            v160 = sub_100042E68();
            if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
            {
              *__str = 136315394;
              *&__str[4] = "HandleSetEncodingsMessage";
              v179 = 1024;
              v180 = 662;
              _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "[%s:%d] codec change", __str, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 662, "HandleSetEncodingsMessage", 7, 0, "codec change");
        }

        if (*(a1 + 664))
        {
          if (sub_1000423E0())
          {
            v161 = sub_100042E68();
            if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
            {
              *__str = 136315394;
              *&__str[4] = "HandleSetEncodingsMessage";
              v179 = 1024;
              v180 = 669;
              _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer wants user info", __str, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 669, "HandleSetEncodingsMessage", 7, 0, "viewer wants user info");
        }

        v162 = *(a1 + 3056);
        if (v145)
        {
          if (*(a1 + 3056))
          {
            if (sub_1000423E0())
            {
              v163 = sub_100042E68();
              if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
              {
                *__str = 136315394;
                *&__str[4] = "HandleSetEncodingsMessage";
                v179 = 1024;
                v180 = 687;
                _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "[%s:%d] do not send touch events", __str, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 687, "HandleSetEncodingsMessage", 7, 0, "do not send touch events");
            *(a1 + 3056) = 0;
            sub_100033D2C();
          }
        }

        else
        {
          v164 = sub_1000423E0();
          if (v162)
          {
            if (v164)
            {
              v165 = sub_100042E68();
              if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
              {
                *__str = 136315394;
                *&__str[4] = "HandleSetEncodingsMessage";
                v179 = 1024;
                v180 = 681;
                _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "[%s:%d] already monitoring touch events", __str, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 681, "HandleSetEncodingsMessage", 7, 0, "already monitoring touch events");
          }

          else
          {
            if (v164)
            {
              v170 = sub_100042E68();
              if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
              {
                *__str = 136315394;
                *&__str[4] = "HandleSetEncodingsMessage";
                v179 = 1024;
                v180 = 676;
                _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "[%s:%d] send touch events", __str, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 676, "HandleSetEncodingsMessage", 7, 0, "send touch events");
            *(a1 + 3056) = 1;
            sub_100033BFC();
          }
        }

        [0 unlock];
        return 0;
      }

      v173 = v70;
      v174 = 0;
      v146 = &buf;
      while (1)
      {
        v147 = *v146;
        if (*v146 <= 999)
        {
          if (v147 <= 0)
          {
            if (v147 == -239)
            {
              *(a1 + 154) = 1;
            }

            else if (v147 == -223)
            {
              *(a1 + 158) = 1;
            }

            goto LABEL_327;
          }

          if (v147 == 1)
          {
            *(a1 + 152) = 1;
          }

          else if (v147 == 6 || v147 == 16)
          {
LABEL_323:
            if (sub_1000423E0())
            {
              v149 = sub_100042E68();
              if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
              {
                v150 = *v146;
                *__str = 136315650;
                *&__str[4] = "HandleSetEncodingsMessage";
                v179 = 1024;
                v180 = 641;
                v181 = 1024;
                LODWORD(v182) = v150;
                _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "[%s:%d] lossless codec %d", __str, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 641, "HandleSetEncodingsMessage", 7, 0, "lossless codec %d", *v146);
            *(a1 + 148) = *v146;
          }
        }

        else if (v147 > 1100)
        {
          if (v147 > 1104)
          {
            if (v147 != 1105)
            {
              if (v147 == 1106)
              {
                v151 = MGGetSInt32Answer();
                v152 = sub_1000423E0();
                if (v151 == 4)
                {
                  if (v152)
                  {
                    v153 = sub_100042E68();
                    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                    {
                      *__str = 136315394;
                      *&__str[4] = "HandleSetEncodingsMessage";
                      v179 = 1024;
                      v180 = 653;
                      _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "[%s:%d] do not send touch positions", __str, 0x12u);
                    }
                  }

                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 653, "HandleSetEncodingsMessage", 7, 0, "do not send touch positions");
                }

                else
                {
                  if (v152)
                  {
                    v159 = sub_100042E68();
                    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
                    {
                      *__str = 136315394;
                      *&__str[4] = "HandleSetEncodingsMessage";
                      v179 = 1024;
                      v180 = 650;
                      _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "[%s:%d] send touch positions", __str, 0x12u);
                    }
                  }

                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 650, "HandleSetEncodingsMessage", 7, 0, "send touch positions");
                  v174 = 1;
                }
              }

              goto LABEL_327;
            }
          }

          else if (v147 != 1101)
          {
            if (v147 == 1104)
            {
              *(a1 + 153) = 1;
            }

            goto LABEL_327;
          }

          v154 = *(a1 + 160);
          if (v147 == 1101)
          {
            v157 = *(a1 + 159);
            *(a1 + 159) = 1;
            v156 = v154;
            if (!v157)
            {
              goto LABEL_350;
            }
          }

          else
          {
            v155 = *(a1 + 160);
            v156 = 1;
            *(a1 + 160) = 1;
          }

          if (!v154 && v156)
          {
LABEL_350:
            if (sub_1000423E0())
            {
              v158 = sub_100042E68();
              if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
              {
                *__str = 136315394;
                *&__str[4] = "HandleSetEncodingsMessage";
                v179 = 1024;
                v180 = 627;
                _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "[%s:%d] send encoding", __str, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 627, "HandleSetEncodingsMessage", 7, 0, "send encoding");
            *(a1 + 1454) = 1;
          }
        }

        else
        {
          if ((v147 - 1000) < 3)
          {
            goto LABEL_323;
          }

          if (v147 == 1100)
          {
            *(a1 + 155) = 1;
          }
        }

LABEL_327:
        ++v146;
        if (!--v60)
        {
          v145 = v174 == 0;
          v70 = v173;
          goto LABEL_358;
        }
      }

    case 3:
      if (sub_1000423E0())
      {
        v31 = sub_100042E68();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleViewerCommand";
          v185 = 1024;
          v186 = 147;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] frame buffer update request", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 147, "HandleViewerCommand", 7, 0, "frame buffer update request");
      v176[1].i16[0] = 0;
      v176[0] = 0;
      if (sub_1000423E0())
      {
        v32 = sub_100042E68();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleFrameBuferUpdateRequestMessage";
          v185 = 1024;
          v186 = 228;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleFrameBuferUpdateRequestMessage", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 228, "HandleFrameBuferUpdateRequestMessage", 7, 0, "HandleFrameBuferUpdateRequestMessage");
      if (sub_10003ABCC(*(a1 + 8)) < 0xA)
      {
        return 0xFFFFFFFFLL;
      }

      if (*(a1 + 1499))
      {
        return 4294967294;
      }

      sub_100039EA8(*(a1 + 8), 0xAu, v176);
      v20 = 0;
      *(a1 + 121) = 2;
      return v20;
    case 4:
      if (sub_1000423E0())
      {
        v100 = sub_100042E68();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
        {
          buf = 136315394;
          v184 = "HandleViewerCommand";
          v185 = 1024;
          v186 = 151;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "[%s:%d] key event received - close conenction", &buf, 0x12u);
        }
      }

      v24 = "HandleViewerCommand";
      v25 = "key event received - close conenction";
      v26 = 151;
      goto LABEL_221;
    case 5:
      if (sub_1000423E0())
      {
        v101 = sub_100042E68();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          buf = 136315394;
          v184 = "HandleViewerCommand";
          v185 = 1024;
          v186 = 155;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "[%s:%d] pointer event received - close conenction", &buf, 0x12u);
        }
      }

      v24 = "HandleViewerCommand";
      v25 = "pointer event received - close conenction";
      v26 = 155;
      goto LABEL_221;
    case 7:
      if (sub_1000423E0())
      {
        v33 = sub_100042E68();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleViewerCommand";
          v185 = 1024;
          v186 = 159;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%s:%d] kRFBSetScreenDepth", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 159, "HandleViewerCommand", 7, 0, "kRFBSetScreenDepth");
      if (sub_10003ABCC(*(a1 + 8)) < 4)
      {
        return 0xFFFFFFFFLL;
      }

      buf = 0;
      v34 = *(a1 + 8);
      v35 = &buf;
      v36 = 4;
      goto LABEL_211;
    case 8:
      if (sub_1000423E0())
      {
        v71 = sub_100042E68();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleViewerCommand";
          v185 = 1024;
          v186 = 163;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[%s:%d] kRFBSetServerScaling", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 163, "HandleViewerCommand", 7, 0, "kRFBSetServerScaling");
      if (sub_10003ABCC(*(a1 + 8)) < 0xA)
      {
        return 0xFFFFFFFFLL;
      }

      v176[1].i16[0] = 0;
      v176[0] = 0;
      sub_100039EA8(*(a1 + 8), 0xAu, v176);
      v72 = COERCE_DOUBLE(bswap64(*(v176 + 2)));
      *(v176 + 2) = *&v72;
      v20 = 4294967294;
      if (v72 <= 0.0 || v72 > 1.0)
      {
        return v20;
      }

      v73 = [0 lock];
      if (v73)
      {
        v74 = v73;
        if (sub_1000423E0())
        {
          v75 = sub_100042E68();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v184 = "HandleSetServerScalingMessage";
            v185 = 1024;
            v186 = 989;
            v187 = 1024;
            LODWORD(v188) = v74;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****enter HandleSetServerScalingMessage err %d", &buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 989, "HandleSetServerScalingMessage", 7, 0, "*****enter HandleSetServerScalingMessage err %d", v74);
      }

      v76 = *(v176 + 2);
      *(a1 + 1400) = *(v176 + 2);
      *(a1 + 1395) = 1;
      *(a1 + 1394) = v76 < 1.0;
      if (sub_1000423E0())
      {
        v77 = sub_100042E68();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v78 = *(a1 + 1400);
          buf = 136315650;
          v184 = "HandleSetServerScalingMessage";
          v185 = 1024;
          v186 = 1003;
          v187 = 2048;
          *&v188 = v78;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetServerScalingMessage - set scaling to %f", &buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1003, "HandleSetServerScalingMessage", 7, 0, "HandleSetServerScalingMessage - set scaling to %f", *(a1 + 1400));
      *(a1 + 1392) = 1;
      v79 = [0 unlock];
      if (v79)
      {
        v80 = v79;
        if (sub_1000423E0())
        {
          v81 = sub_100042E68();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v184 = "HandleSetServerScalingMessage";
            v185 = 1024;
            v186 = 1008;
            v187 = 1024;
            LODWORD(v188) = v80;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****enter HandleSetServerScalingMessage err %d", &buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1008, "HandleSetServerScalingMessage", 7, 0, "*****enter HandleSetServerScalingMessage err %d");
      }

      return 0;
    case 9:
      if (sub_1000423E0())
      {
        v82 = sub_100042E68();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleViewerCommand";
          v185 = 1024;
          v186 = 167;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "[%s:%d] kRFBAutoFrameBufferUpdates", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 167, "HandleViewerCommand", 7, 0, "kRFBAutoFrameBufferUpdates");
      if (sub_10003ABCC(*(a1 + 8)) < 0x10)
      {
        return 0xFFFFFFFFLL;
      }

      if (*(a1 + 1499))
      {
        return 4294967294;
      }

      v176[0] = 0;
      v176[1] = 0;
      sub_100039EA8(*(a1 + 8), 0x10u, v176);
      [0 lock];
      v176[0].i16[1] = bswap32(v176[0].u16[1]) >> 16;
      v83 = v176[0].i32[1];
      v176[0].i32[1] = bswap32(v176[0].u32[1]);
      v84 = vrev16_s8(v176[1]);
      v176[1] = v84;
      *(a1 + 48) = v176[0].i32[1];
      *(a1 + 44) = v83 != -1;
      v85 = v84.i16[1];
      *(a1 + 64) = v84.i16[1];
      v86 = v84.i16[0];
      *(a1 + 66) = v84.i16[0];
      v87 = v84.i16[3] + v84.i16[1];
      *(a1 + 68) = v84.i16[3] + v84.i16[1];
      v88 = v84.i16[2] + v84.i16[0];
      *(a1 + 70) = v84.i16[2] + v84.i16[0];
      if (*(a1 + 1394))
      {
        v89 = *(a1 + 1400);
        v85 = llround(v84.u16[1] / v89);
        v86 = llround(v84.u16[0] / v89);
        v88 = v86 + llround(v84.u16[2] / v89);
        v87 = v85 + llround(v84.u16[3] / v89);
      }

      *(a1 + 56) = v85;
      *(a1 + 58) = v86;
      *(a1 + 62) = v88;
      *(a1 + 60) = v87;
      if (v85 < 0)
      {
        *(a1 + 56) = 0;
        if ((v86 & 0x8000) == 0)
        {
LABEL_180:
          if ((v88 & 0x8000) == 0)
          {
            goto LABEL_181;
          }

          goto LABEL_300;
        }
      }

      else if ((v86 & 0x8000) == 0)
      {
        goto LABEL_180;
      }

      *(a1 + 58) = 0;
      if ((v88 & 0x8000) == 0)
      {
LABEL_181:
        if ((v87 & 0x8000) == 0)
        {
          goto LABEL_182;
        }

        goto LABEL_301;
      }

LABEL_300:
      *(a1 + 62) = 0;
      if ((v87 & 0x8000) == 0)
      {
        goto LABEL_182;
      }

LABEL_301:
      *(a1 + 60) = 0;
LABEL_182:
      [0 unlock];
      if (sub_1000423E0())
      {
        v90 = sub_100042E68();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v91 = *(a1 + 44);
          buf = 136315650;
          v184 = "HandleAutoFrameBufferUpdateMessage";
          v185 = 1024;
          v186 = 1074;
          v187 = 1024;
          LODWORD(v188) = v91;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleAutoFrameBufferUpdateMessage2  flag %d", &buf, 0x18u);
        }
      }

      v92 = *(a1 + 44);
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1074, "HandleAutoFrameBufferUpdateMessage", 7, 0, "HandleAutoFrameBufferUpdateMessage2  flag %d");
      return 0;
    case 10:
      if (sub_1000423E0())
      {
        v103 = sub_100042E68();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleViewerCommand";
          v185 = 1024;
          v186 = 171;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "[%s:%d] kRFBSetMode", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 171, "HandleViewerCommand", 7, 0, "kRFBSetMode");
      if (sub_10003ABCC(*(a1 + 8)) < 4)
      {
        return 0xFFFFFFFFLL;
      }

      buf = 0;
      sub_100039EA8(*(a1 + 8), 4u, &buf);
      v106 = __rev16(HIWORD(buf));
      if (v106 > 2)
      {
        return 4294967294;
      }

      if ((v106 - 1) <= 1u && (*(a1 + 1492) || HIWORD(buf) == 512 && !*(a1 + 1493)))
      {
        return 0;
      }

      v20 = 0;
      *(a1 + 26) = v106;
      return v20;
    case 13:
      v176[0] = 0;
      if (sub_1000423E0())
      {
        v102 = sub_100042E68();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleSetDisplayMessage";
          v185 = 1024;
          v186 = 493;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "[%s:%d] start HandleSetDisplayMessage", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 493, "HandleSetDisplayMessage", 7, 0, "start HandleSetDisplayMessage");
      if (sub_10003ABCC(*(a1 + 8)) < 8)
      {
        return 0xFFFFFFFFLL;
      }

      v34 = *(a1 + 8);
      v35 = v176;
      v36 = 8;
LABEL_211:
      sub_100039EA8(v34, v36, v35);
      return 0;
    case 18:
      if (sub_10003ABCC(*(a1 + 8)) < 8)
      {
        return 0xFFFFFFFFLL;
      }

      *__str = 0;
      sub_10003A56C(*(a1 + 8), 8u, __str);
      *&__str[2] = bswap32(*&__str[2]) >> 16;
      *&__str[4] = bswap32(*&__str[4]) >> 16;
      *&__str[6] = bswap32(*&__str[6]) >> 16;
      if (sub_1000423E0())
      {
        v22 = sub_100042E68();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSetEncryptionMessage";
          v185 = 1024;
          v186 = 724;
          v187 = 1024;
          LODWORD(v188) = *&__str[2];
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetEncryptionMessage cmd %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 724, "HandleSetEncryptionMessage", 7, 0, "HandleSetEncryptionMessage cmd %d", *&__str[2]);
      if (*&__str[2] == 2)
      {
        sub_10003A284(*(a1 + 8), 8u);
        if (*&__str[4] == 1)
        {
          if (sub_1000423E0())
          {
            v125 = sub_100042E68();
            if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315394;
              v184 = "HandleSetEncryptionMessage";
              v185 = 1024;
              v186 = 783;
              _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "[%s:%d] **going to decrypt everything that is received", &buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 783, "HandleSetEncryptionMessage", 7, 0, "**going to decrypt everything that is received");
          *(a1 + 2218) = 1;
          v126 = *(a1 + 2488);
          if (v126)
          {
            v20 = 0;
            *(v126 + 1352) = 1;
            return v20;
          }
        }

        else
        {
          *(a1 + 2218) = 0;
          if (sub_1000423E0())
          {
            v142 = sub_100042E68();
            if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315394;
              v184 = "HandleSetEncryptionMessage";
              v185 = 1024;
              v186 = 794;
              _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "[%s:%d] stop encrypting the stream", &buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 794, "HandleSetEncryptionMessage", 7, 0, "stop encrypting the stream", v172);
        }

        return 0;
      }

      if (*&__str[2] != 1)
      {
        if (sub_1000423E0())
        {
          v127 = sub_100042E68();
          if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v184 = "HandleSetEncryptionMessage";
            v185 = 1024;
            v186 = 807;
            v187 = 1024;
            LODWORD(v188) = *&__str[2];
            _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetEncryptionMessage - invalid encryptionCommand %d", &buf, 0x18u);
          }
        }

        v172 = *&__str[2];
        v24 = "HandleSetEncryptionMessage";
        v25 = "HandleSetEncryptionMessage - invalid encryptionCommand %d";
        v26 = 807;
        goto LABEL_273;
      }

      if (*&__str[6] >= 0x65u)
      {
        if (sub_1000423E0())
        {
          v23 = sub_100042E68();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v184 = "HandleSetEncryptionMessage";
            v185 = 1024;
            v186 = 730;
            v187 = 1024;
            LODWORD(v188) = *&__str[6];
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetEncryptionMessage - invalid # of encryption methods: %d", &buf, 0x18u);
          }
        }

        v172 = *&__str[6];
        v24 = "HandleSetEncryptionMessage";
        v25 = "HandleSetEncryptionMessage - invalid # of encryption methods: %d";
        v26 = 730;
LABEL_273:
        v105 = 5;
        goto LABEL_222;
      }

      v134 = sub_10003ABCC(*(a1 + 8));
      v135 = *&__str[6];
      v136 = 4 * *&__str[6];
      if (v136 + 8 > v134)
      {
        return 0xFFFFFFFFLL;
      }

      sub_10003A284(*(a1 + 8), 8u);
      sub_100039EA8(*(a1 + 8), v136, &buf);
      if (!v135)
      {
LABEL_290:
        if (sub_1000423E0())
        {
          v141 = sub_100042E68();
          if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            v176[0].i32[0] = 136315394;
            *(v176 + 4) = "HandleSetEncryptionMessage";
            v176[1].i16[2] = 1024;
            *(&v176[1].i32[1] + 2) = 760;
            _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetEncryptionMessage - no valid encryption method found", v176, 0x12u);
          }
        }

        v24 = "HandleSetEncryptionMessage";
        v25 = "HandleSetEncryptionMessage - no valid encryption method found";
        v26 = 760;
        goto LABEL_273;
      }

      v137 = &buf;
      v138 = v135;
      do
      {
        *v137 = bswap32(*v137);
        ++v137;
        --v138;
      }

      while (v138);
      v139 = &buf;
      while (1)
      {
        v140 = *v139++;
        if (v140 == 1)
        {
          break;
        }

        if (!--v135)
        {
          goto LABEL_290;
        }
      }

      [0 lock];
      *(a1 + 2178) = 1;
      *(a1 + 2180) = 1;
      *(a1 + 2184) = *&__str[4];
      sub_100003A3C((a1 + 2202), 16);
      sub_100003A3C((a1 + 2186), 16);
      [0 unlock];
      if (sub_1000423E0())
      {
        v171 = sub_100042E68();
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
        {
          v176[0].i32[0] = 136315394;
          *(v176 + 4) = "HandleSetEncryptionMessage";
          v176[1].i16[2] = 1024;
          *(&v176[1].i32[1] + 2) = 776;
          _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetEncryptionMessage 2", v176, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 776, "HandleSetEncryptionMessage", 7, 0, "HandleSetEncryptionMessage 2");
      return 0;
    case 22:
      memset(v176, 0, 34);
      if (sub_10003ABCC(*(a1 + 8)) < 0x10)
      {
        return 0xFFFFFFFFLL;
      }

      while (2)
      {
        v37 = sub_10003A56C(*(a1 + 8), 0x10u, v176);
        if (v37)
        {
          v38 = v37;
          if (sub_1000423E0())
          {
            v39 = sub_100042E68();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315650;
              v184 = "HandleAssistCursorMessage";
              v185 = 1024;
              v186 = 357;
              v187 = 1024;
              LODWORD(v188) = v38;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%s:%d] NetBufferViewData:%d", &buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 357, "HandleAssistCursorMessage", 7, 0, "NetBufferViewData:%d", v38);
        }

        if (v176[0].u8[0] != 22)
        {
          return 0;
        }

        v40 = bswap32(v176[0].u16[1]) >> 16;
        v176[0].i16[1] = v40;
        v41 = bswap32(v176[0].u16[2]);
        v42 = HIWORD(v41);
        v176[0].i16[2] = HIWORD(v41);
        if (HIWORD(v41) < 2u)
        {
          if (v40 < 0xD)
          {
            v53 = *(a1 + 8);
            LODWORD(v50) = 16;
            goto LABEL_123;
          }

          v51 = v40 - 12;
          if (sub_1000423E0())
          {
            v52 = sub_100042E68();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315650;
              v184 = "HandleAssistCursorMessageV1";
              v185 = 1024;
              v186 = 415;
              v187 = 1024;
              LODWORD(v188) = v51;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d", &buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 415, "HandleAssistCursorMessageV1", 7, 0, "extra amount %d", v51);
          v49 = sub_10003ABCC(*(a1 + 8));
          v50 = v51 + 16;
        }

        else
        {
          if (sub_10003ABCC(*(a1 + 8)) < 0x22)
          {
            return 0xFFFFFFFFLL;
          }

          if (v176[0].u16[1] < 0x1Eu)
          {
            goto LABEL_121;
          }

          v43 = sub_10003A56C(*(a1 + 8), 0x22u, v176);
          if (v43)
          {
            v44 = v43;
            if (sub_1000423E0())
            {
              v45 = sub_100042E68();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                buf = 136315650;
                v184 = "HandleAssistCursorMessageV2";
                v185 = 1024;
                v186 = 445;
                v187 = 1024;
                LODWORD(v188) = v44;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%s:%d] NetBufferViewData:%d", &buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 445, "HandleAssistCursorMessageV2", 7, 0, "NetBufferViewData:%d", v44);
          }

          v176[0].i16[1] = bswap32(v176[0].u16[1]) >> 16;
          v176[0].i16[2] = bswap32(v176[0].u16[2]) >> 16;
          *&v176[2].i16[1] = vrev64q_s8(*&v176[2].i16[1]);
          if (sub_1000423E0())
          {
            v46 = sub_100042E68();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136316162;
              v184 = "HandleAssistCursorMessageV2";
              v185 = 1024;
              v186 = 454;
              v187 = 1024;
              LODWORD(v188) = v176[2].u8[0];
              WORD2(v188) = 2048;
              *(&v188 + 6) = *(&v176[2] + 2);
              HIWORD(v188) = 2048;
              v189 = *(&v176[3] + 2);
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%s:%d] orientation: %d, new coords: (%f, %f)", &buf, 0x2Cu);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 454, "HandleAssistCursorMessageV2", 7, 0, "orientation: %d, new coords: (%f, %f)", v176[2].u8[0], *(&v176[2] + 2), *(&v176[3] + 2));
          if (v176[0].u16[1] < 0x1Fu)
          {
LABEL_121:
            v53 = *(a1 + 8);
            LODWORD(v50) = 34;
            goto LABEL_123;
          }

          v47 = v176[0].i16[1] - 30;
          if (sub_1000423E0())
          {
            v48 = sub_100042E68();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315650;
              v184 = "HandleAssistCursorMessageV2";
              v185 = 1024;
              v186 = 461;
              v187 = 1024;
              LODWORD(v188) = v47;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d", &buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 461, "HandleAssistCursorMessageV2", 7, 0, "extra amount %d", v47);
          v49 = sub_10003ABCC(*(a1 + 8));
          v50 = v47 + 34;
        }

        if (v50 > v49)
        {
          return 0xFFFFFFFFLL;
        }

        v53 = *(a1 + 8);
LABEL_123:
        sub_10003A284(v53, v50);
        if ((sub_100040464() & 1) == 0)
        {
          v54 = bswap32(v176[1].u32[1]);
          v55 = (bswap32(v176[1].u16[0]) >> 16);
          v56 = (bswap32(v176[1].u16[1]) >> 16);
          if (v42 <= 1)
          {
            v57 = 0;
          }

          else
          {
            v57 = &v176[2];
          }

          sub_1000430F0(v54, v57, v55, v56);
        }

        if (sub_10003ABCC(*(a1 + 8)) <= 0x10)
        {
          return 0;
        }

        continue;
      }

    case 24:
      if (sub_1000423E0())
      {
        v27 = sub_100042E68();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleViewerCommand";
          v185 = 1024;
          v186 = 190;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] kRFBSystemInfoRequest", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 190, "HandleViewerCommand", 7, 0, "kRFBSystemInfoRequest");
      *(v176 + 6) = 0;
      v176[0] = 0;
      if (sub_1000423E0())
      {
        v28 = sub_100042E68();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleSystemInfoRequest";
          v185 = 1024;
          v186 = 263;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] handle system info request", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 263, "HandleSystemInfoRequest", 7, 0, "handle system info request");
      if (sub_10003ABCC(*(a1 + 8)) < 0xE)
      {
        return 0xFFFFFFFFLL;
      }

      sub_10003A56C(*(a1 + 8), 0xEu, v176);
      v176[0].i16[1] = bswap32(v176[0].u16[1]) >> 16;
      v176[0].i16[2] = bswap32(v176[0].u16[2]) >> 16;
      v176[1].i16[1] = bswap32(v176[1].u16[1]) >> 16;
      v176[1].i16[2] = bswap32(v176[1].u16[2]) >> 16;
      if (sub_1000423E0())
      {
        v29 = sub_100042E68();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315906;
          v184 = "HandleSystemInfoRequest";
          v185 = 1024;
          v186 = 276;
          v187 = 1024;
          LODWORD(v188) = v176[0].u16[1];
          WORD2(v188) = 1024;
          *(&v188 + 6) = v176[1].u16[2];
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] size %d %d", &buf, 0x1Eu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 276, "HandleSystemInfoRequest", 7, 0, "size %d %d", v176[0].u16[1], v176[1].u16[2]);
      if (v176[1].u16[2] + 10 > v176[0].u16[1])
      {
        if (sub_1000423E0())
        {
          v30 = sub_100042E68();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315394;
            v184 = "HandleSystemInfoRequest";
            v185 = 1024;
            v186 = 279;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%s:%d] message size is invalid", &buf, 0x12u);
          }
        }

        v24 = "HandleSystemInfoRequest";
        v25 = "message size is invalid";
        v26 = 279;
        goto LABEL_235;
      }

      if (v176[1].u16[2] > 0x1000u)
      {
        if (sub_1000423E0())
        {
          v107 = sub_100042E68();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315394;
            v184 = "HandleSystemInfoRequest";
            v185 = 1024;
            v186 = 285;
            _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "[%s:%d] arguments size is too large", &buf, 0x12u);
          }
        }

        v24 = "HandleSystemInfoRequest";
        v25 = "arguments size is too large";
        v26 = 285;
LABEL_235:
        v105 = 7;
LABEL_222:
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, v26, v24, v105, 0, v25, v172);
        return 4294967294;
      }

      v128 = sub_10003ABCC(*(a1 + 8));
      if (v176[1].u16[2] + 10 > v128)
      {
        return 0xFFFFFFFFLL;
      }

      sub_10003A284(*(a1 + 8), 0xEu);
      if (sub_1000423E0())
      {
        v129 = sub_100042E68();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSystemInfoRequest";
          v185 = 1024;
          v186 = 298;
          v187 = 1024;
          LODWORD(v188) = v176[1].u16[2] + 1;
          _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "[%s:%d] allocate %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 298, "HandleSystemInfoRequest", 7, 0, "allocate %d", v176[1].u16[2] + 1);
      v130 = malloc_type_malloc(v176[1].u16[2] + 1, 0xA5AE487FuLL);
      v131 = sub_100039EA8(*(a1 + 8), v176[1].u16[2], v130);
      if (v131 << 16)
      {
        v132 = v131;
        if (sub_1000423E0())
        {
          v133 = sub_100042E68();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v184 = "HandleSystemInfoRequest";
            v185 = 1024;
            v186 = 303;
            v187 = 1024;
            LODWORD(v188) = v132;
            _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "[%s:%d] NetBufferRemoveData returned error: %d", &buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 303, "HandleSystemInfoRequest", 7, 0, "NetBufferRemoveData returned error: %d", v132);
        free(v130);
        return 4294967294;
      }

      v130[v176[1].u16[2]] = 0;
      if (sub_1000423E0())
      {
        v166 = sub_100042E68();
        if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleSystemInfoRequest";
          v185 = 1024;
          v186 = 309;
          v187 = 2080;
          *&v188 = v130;
          _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "[%s:%d] args = %s", &buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 309, "HandleSystemInfoRequest", 7, 0, "args = %s", v130);
      v167 = v176[1].u16[2] + 10;
      if (v167 < v176[0].u16[1])
      {
        v168 = v176[0].i16[1] - v167;
        if (sub_1000423E0())
        {
          v169 = sub_100042E68();
          if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v184 = "HandleSystemInfoRequest";
            v185 = 1024;
            v186 = 316;
            v187 = 1024;
            LODWORD(v188) = v168;
            _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d", &buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 316, "HandleSystemInfoRequest", 7, 0, "extra amount %d", v168);
        sub_10003A284(*(a1 + 8), v168);
      }

      if (*(a1 + 2923))
      {
        sub_100031EA0(a1, v176, v130);
      }

      free(v130);
      return 0;
    case 25:
      return sub_1000329D4(a1);
    case 33:
      memset(v176, 0, 66);
      if (sub_1000423E0())
      {
        v93 = sub_100042E68();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v184 = "HandleViewerInfoMessage";
          v185 = 1024;
          v186 = 1140;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleViewerInfoMessage", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1140, "HandleViewerInfoMessage", 7, 0, "HandleViewerInfoMessage");
      if (sub_10003ABCC(*(a1 + 8)) < 0x42)
      {
        return 0xFFFFFFFFLL;
      }

      sub_10003A56C(*(a1 + 8), 0x42u, v176);
      v94 = bswap32(v176[0].u16[1]) >> 16;
      v176[0].i16[1] = v94;
      v176[0].i16[2] = bswap32(v176[0].u16[2]) >> 16;
      if (v94 < 0x3F)
      {
        v99 = *(a1 + 8);
        v98 = 66;
        goto LABEL_245;
      }

      v95 = v94 - 62;
      if (sub_1000423E0())
      {
        v96 = sub_100042E68();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v184 = "HandleViewerInfoMessage";
          v185 = 1024;
          v186 = 1155;
          v187 = 1024;
          LODWORD(v188) = v95;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1155, "HandleViewerInfoMessage", 7, 0, "extra amount %d", v95);
      v97 = sub_10003ABCC(*(a1 + 8));
      v98 = v95 + 66;
      if (v95 + 66 <= v97)
      {
        v99 = *(a1 + 8);
LABEL_245:
        sub_10003A284(v99, v98);
        if (v176[0].u16[2] != 1)
        {
          if (sub_1000423E0())
          {
            v113 = sub_100042E68();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315906;
              v184 = "HandleViewerInfoMessage";
              v185 = 1024;
              v186 = 1166;
              v187 = 1024;
              LODWORD(v188) = 1;
              WORD2(v188) = 1024;
              *(&v188 + 6) = v176[0].u16[2];
              _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "[%s:%d] message version %d %d ", &buf, 0x1Eu);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1166, "HandleViewerInfoMessage", 7, 0, "message version %d %d ", 1, v176[0].u16[2]);
        }

        *(a1 + 2644) = vrev32q_s8(*(&v176[0].u32[1] + 2));
        *(a1 + 2660) = vrev32_s8(*(&v176[2] + 6));
        *(a1 + 2668) = bswap32(*(&v176[3].u32[1] + 2));
        *(a1 + 2672) = *&v176[4].i16[1];
        *(a1 + 2688) = *&v176[6].i16[1];
        *(a1 + 2640) = 1;
        if (sub_1000423E0())
        {
          v114 = sub_100042E68();
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            v115 = *(a1 + 2644);
            v116 = *(a1 + 2648);
            v117 = *(a1 + 2652);
            v118 = *(a1 + 2656);
            v119 = *(a1 + 2660);
            v120 = *(a1 + 2664);
            v121 = *(a1 + 2668);
            buf = 136317186;
            v184 = "HandleViewerInfoMessage";
            v185 = 1024;
            v186 = 1179;
            v187 = 1024;
            LODWORD(v188) = v115;
            WORD2(v188) = 1024;
            *(&v188 + 6) = v116;
            WORD5(v188) = 1024;
            HIDWORD(v188) = v117;
            LOWORD(v189) = 1024;
            *(&v189 + 2) = v118;
            HIWORD(v189) = 1024;
            v190 = v119;
            v191 = 1024;
            v192 = v120;
            v193 = 1024;
            v194 = v121;
            _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "[%s:%d] appID %d app version %d.%d.%d OS version %d.%d.%d", &buf, 0x3Cu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1179, "HandleViewerInfoMessage", 7, 0, "appID %d app version %d.%d.%d OS version %d.%d.%d", *(a1 + 2644), *(a1 + 2648), *(a1 + 2652), *(a1 + 2656), *(a1 + 2660), *(a1 + 2664), *(a1 + 2668));
        bzero(&buf, 0xA00uLL);
        __strlcpy_chk();
        for (j = 0; j != 256; ++j)
        {
          if ((v176[4].u8[(j >> 3) + 2] >> (~j & 7)))
          {
            snprintf(__str, 0xAuLL, " %d", j);
            __strlcat_chk();
          }
        }

        if (sub_1000423E0())
        {
          v123 = sub_100042E68();
          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
          {
            *__str = 136315650;
            *&__str[4] = "HandleViewerInfoMessage";
            v179 = 1024;
            v180 = 1198;
            v181 = 2080;
            v182 = &buf;
            _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "[%s:%d] %s", __str, 0x1Cu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1198, "HandleViewerInfoMessage", 7, 0, "%s");
        return 0;
      }

      return 0xFFFFFFFFLL;
    case 35:
      return sub_100032DA0(a1, a2);
    default:
      if (sub_1000423E0())
      {
        v104 = sub_100042E68();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          buf = 136315650;
          v184 = "HandleViewerCommand";
          v185 = 1024;
          v186 = 204;
          v187 = 1024;
          LODWORD(v188) = v175;
          _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "[%s:%d] unknown command %d", &buf, 0x18u);
        }
      }

      v172 = v175;
      v24 = "HandleViewerCommand";
      v25 = "unknown command %d";
      v26 = 204;
LABEL_221:
      v105 = 3;
      goto LABEL_222;
  }
}

uint64_t sub_1000398E4(int a1, int a2, dispatch_semaphore_t *a3)
{
  if (!a1)
  {
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "RDCreateSemaphore";
        v11 = 1024;
        v12 = 17;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%s:%d] RDCreateSemaphore requires maximumValue > 0", &v9, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/RDSemaphore.c", 87, 17, "RDCreateSemaphore", 3, 0, "RDCreateSemaphore requires maximumValue > 0");
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    if (sub_1000423E0())
    {
      v3 = sub_100042E68();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "RDCreateSemaphore";
        v11 = 1024;
        v12 = 21;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%s:%d] RDCreateSemaphore requires initialValue == 0", &v9, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/RDSemaphore.c", 87, 21, "RDCreateSemaphore", 3, 0, "RDCreateSemaphore requires initialValue == 0");
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    if (sub_1000423E0())
    {
      v8 = sub_100042E68();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "RDCreateSemaphore";
        v11 = 1024;
        v12 = 25;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%s:%d] RDCreateSemaphore requires semaphore != NULL", &v9, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/RDSemaphore.c", 87, 25, "RDCreateSemaphore", 3, 0, "RDCreateSemaphore requires semaphore != NULL");
    return 0xFFFFFFFFLL;
  }

  v7 = dispatch_semaphore_create((a1 - 1));
  *a3 = v7;
  if (v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100039B0C(NSObject *a1)
{
  if (a1)
  {
    dispatch_semaphore_signal(a1);
    dispatch_release(a1);
  }

  else
  {
    if (sub_1000423E0())
    {
      v2 = sub_100042E68();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315394;
        v5 = "RDDeleteSemaphore";
        v6 = 1024;
        v7 = 41;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] RDDeleteSemaphore called with NULL semaphore", &v4, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/RDSemaphore.c", 87, 41, "RDDeleteSemaphore", 7, 0, "RDDeleteSemaphore called with NULL semaphore");
  }

  return 0;
}

uint64_t sub_100039C0C(NSObject *a1)
{
  if (a1)
  {
    dispatch_semaphore_signal(a1);
  }

  else
  {
    if (sub_1000423E0())
    {
      v1 = sub_100042E68();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v3 = 136315394;
        v4 = "RDSignalSemaphore";
        v5 = 1024;
        v6 = 57;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[%s:%d] RDSignalSemaphore called with NULL semaphore", &v3, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/RDSemaphore.c", 87, 57, "RDSignalSemaphore", 7, 0, "RDSignalSemaphore called with NULL semaphore");
  }

  return 0;
}

intptr_t sub_100039D00(NSObject *a1, unsigned int a2)
{
  if (a2)
  {
    v3 = dispatch_time(0, 1000000 * a2);
  }

  else
  {
    v3 = -1;
  }

  return dispatch_semaphore_wait(a1, v3);
}

uint64_t sub_100039D58(size_t size, void *a2)
{
  v3 = size;
  *a2 = 0;
  v4 = malloc_type_malloc(size, 0xBB82CD9BuLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B00406AF97CF0uLL);
  if (!v6)
  {
    free(v5);
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *v6 = 1851946342;
  v6[2] = v5;
  v8 = sub_100005668();
  *(v7 + 5) = v8;
  if (!v8 || (result = sub_1000398E4(1, 0, v7 + 4), result))
  {
    sub_100039E1C(v7);
    return 0xFFFFFFFFLL;
  }

  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 6) = v3;
  *a2 = v7;
  return result;
}