@interface TouchEventMonitor
+ (TouchEventInfo)copyCurrentTouchPositions;
+ (id)sharedTouchEventMonitor;
+ (void)removeAllTouchPositions;
+ (void)startMonitoringTouchEvents;
+ (void)stopMonitoringTouchEvents;
- (TouchEventMonitor)init;
- (void)dealloc;
@end

@implementation TouchEventMonitor

+ (id)sharedTouchEventMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D18;
  block[3] = &unk_100068BB0;
  block[4] = a1;
  if (qword_1000707D0 != -1)
  {
    dispatch_once(&qword_1000707D0, block);
  }

  v2 = qword_1000707C8;

  return v2;
}

- (TouchEventMonitor)init
{
  v5.receiver = self;
  v5.super_class = TouchEventMonitor;
  v2 = [(TouchEventMonitor *)&v5 init];
  if (v2)
  {
    v2->_hidEventClient = IOHIDEventSystemClientCreateWithType();
    v3 = objc_opt_new();
    [(TouchEventMonitor *)v2 setTouchInfoLock:v3];
  }

  return v2;
}

- (void)dealloc
{
  +[TouchEventMonitor stopMonitoringTouchEvents];
  hidEventClient = self->_hidEventClient;
  if (hidEventClient)
  {
    CFRelease(hidEventClient);
    self->_hidEventClient = 0;
  }

  [(TouchEventMonitor *)self setTouchInfoLock:0];
  v4.receiver = self;
  v4.super_class = TouchEventMonitor;
  [(TouchEventMonitor *)&v4 dealloc];
}

+ (void)stopMonitoringTouchEvents
{
  if (sub_1000423E0())
  {
    v2 = sub_100042E68();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "+[TouchEventMonitor stopMonitoringTouchEvents]";
      v24 = 1024;
      v25 = 67;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] stopMonitoringTouchEvents", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 67, "+[TouchEventMonitor stopMonitoringTouchEvents]", 7, 0, "stopMonitoringTouchEvents");
  v3 = +[TouchEventMonitor sharedTouchEventMonitor];
  v4 = [v3 touchInfoLock];
  [v4 lock];

  v5 = +[TouchEventMonitor sharedTouchEventMonitor];
  v6 = [v5 monitorCount];

  if (v6 < 1)
  {
    if (sub_1000423E0())
    {
      v14 = sub_100042E68();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "+[TouchEventMonitor stopMonitoringTouchEvents]";
        v24 = 1024;
        v25 = 99;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] stopMonitoringTouchEvents called when not monitoring", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 99, "+[TouchEventMonitor stopMonitoringTouchEvents]", 7, 0, "stopMonitoringTouchEvents called when not monitoring");
  }

  else
  {
    v7 = +[TouchEventMonitor sharedTouchEventMonitor];
    [v7 setMonitorCount:{objc_msgSend(v7, "monitorCount") - 1}];

    v8 = +[TouchEventMonitor sharedTouchEventMonitor];
    v9 = [v8 monitorCount];

    if (v9)
    {
      if (sub_1000423E0())
      {
        v10 = sub_100042E68();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = +[TouchEventMonitor sharedTouchEventMonitor];
          v12 = [v11 monitorCount];
          *buf = 136315650;
          v23 = "+[TouchEventMonitor stopMonitoringTouchEvents]";
          v24 = 1024;
          v25 = 96;
          v26 = 2048;
          v27 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] monitorCount %ld", buf, 0x1Cu);
        }
      }

      v13 = +[TouchEventMonitor sharedTouchEventMonitor];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 96, "+[TouchEventMonitor stopMonitoringTouchEvents]", 7, 0, "monitorCount %ld", [v13 monitorCount]);
LABEL_23:

      goto LABEL_24;
    }

    dispatch_async(&_dispatch_main_q, &stru_100068BF0);
    v15 = +[TouchEventMonitor sharedTouchEventMonitor];
    v16 = [v15 touchEventTimer];

    if (v16)
    {
      if (sub_1000423E0())
      {
        v17 = sub_100042E68();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v23 = "+[TouchEventMonitor stopMonitoringTouchEvents]";
          v24 = 1024;
          v25 = 90;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] stop timer", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 90, "+[TouchEventMonitor stopMonitoringTouchEvents]", 7, 0, "stop timer");
      v18 = +[TouchEventMonitor sharedTouchEventMonitor];
      v19 = [v18 touchEventTimer];
      dispatch_source_cancel(v19);

      v13 = +[TouchEventMonitor sharedTouchEventMonitor];
      [v13 setTouchEventTimer:0];
      goto LABEL_23;
    }
  }

LABEL_24:
  v20 = +[TouchEventMonitor sharedTouchEventMonitor];
  v21 = [v20 touchInfoLock];
  [v21 unlock];
}

+ (void)startMonitoringTouchEvents
{
  if (sub_1000423E0())
  {
    v2 = sub_100042E68();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "+[TouchEventMonitor startMonitoringTouchEvents]";
      v30 = 1024;
      v31 = 105;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] startMonitoringTouchEvents", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 105, "+[TouchEventMonitor startMonitoringTouchEvents]", 7, 0, "startMonitoringTouchEvents");
  v3 = +[TouchEventMonitor sharedTouchEventMonitor];
  v4 = [v3 touchInfoLock];
  [v4 lock];

  v5 = +[TouchEventMonitor sharedTouchEventMonitor];
  v6 = [v5 monitorCount];

  if (v6)
  {
    if (sub_1000423E0())
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = +[TouchEventMonitor sharedTouchEventMonitor];
        v9 = [v8 monitorCount];
        *buf = 136315650;
        v29 = "+[TouchEventMonitor startMonitoringTouchEvents]";
        v30 = 1024;
        v31 = 148;
        v32 = 2048;
        v33 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] [TouchEventMonitor sharedTouchEventMonitor].monitorCount %ld", buf, 0x1Cu);
      }
    }

    v10 = +[TouchEventMonitor sharedTouchEventMonitor];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 148, "+[TouchEventMonitor startMonitoringTouchEvents]", 7, 0, "[TouchEventMonitor sharedTouchEventMonitor].monitorCount %ld", [v10 monitorCount]);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, &stru_100068C10);
    v10 = dispatch_get_global_queue(2, 0);
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v10);
    v12 = +[TouchEventMonitor sharedTouchEventMonitor];
    [v12 setTouchEventTimer:v11];

    v13 = dispatch_walltime(0, 0);
    v14 = +[TouchEventMonitor sharedTouchEventMonitor];
    v15 = [v14 touchEventTimer];
    dispatch_source_set_timer(v15, v13, 0x2FAF080uLL, 0x3D0900uLL);

    if (sub_1000423E0())
    {
      v16 = sub_100042E68();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = +[TouchEventMonitor sharedTouchEventMonitor];
        v18 = [v17 touchEventTimer];
        *buf = 136315650;
        v29 = "+[TouchEventMonitor startMonitoringTouchEvents]";
        v30 = 1024;
        v31 = 136;
        v32 = 2048;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] [TouchEventMonitor sharedTouchEventMonitor].touchEventTimer %p", buf, 0x1Cu);
      }
    }

    v19 = +[TouchEventMonitor sharedTouchEventMonitor];
    v20 = [v19 touchEventTimer];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 136, "+[TouchEventMonitor startMonitoringTouchEvents]", 7, 0, "[TouchEventMonitor sharedTouchEventMonitor].touchEventTimer %p", v20);

    v21 = +[TouchEventMonitor sharedTouchEventMonitor];
    v22 = [v21 touchEventTimer];
    dispatch_source_set_event_handler(v22, &stru_100068C30);

    v23 = +[TouchEventMonitor sharedTouchEventMonitor];
    v24 = [v23 touchEventTimer];
    dispatch_resume(v24);
  }

  v25 = +[TouchEventMonitor sharedTouchEventMonitor];
  [v25 setMonitorCount:{objc_msgSend(v25, "monitorCount") + 1}];

  v26 = +[TouchEventMonitor sharedTouchEventMonitor];
  v27 = [v26 touchInfoLock];
  [v27 unlock];
}

+ (TouchEventInfo)copyCurrentTouchPositions
{
  v2 = +[TouchEventMonitor sharedTouchEventMonitor];
  v3 = [v2 touchInfoLock];
  [v3 lock];

  if (byte_1000707D8 == 1)
  {
    v4 = malloc_type_malloc(0x280uLL, 0x1000040F6D918ACuLL);
    memcpy(v4, dword_1000707E0, 0x280uLL);
    byte_1000707D8 = 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = +[TouchEventMonitor sharedTouchEventMonitor];
  v6 = [v5 touchInfoLock];
  [v6 unlock];

  return v4;
}

+ (void)removeAllTouchPositions
{
  v2 = +[TouchEventMonitor sharedTouchEventMonitor];
  v3 = [v2 touchInfoLock];
  [v3 lock];

  byte_1000707D8 = 0;
  v5 = +[TouchEventMonitor sharedTouchEventMonitor];
  v4 = [v5 touchInfoLock];
  [v4 unlock];
}

@end