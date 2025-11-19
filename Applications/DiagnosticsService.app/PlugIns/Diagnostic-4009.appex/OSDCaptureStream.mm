@interface OSDCaptureStream
- (BOOL)_registerForStreamNotifications:(id *)a3;
- (BOOL)_unregisterForStreamNotifications:(id *)a3;
- (BOOL)start:(id *)a3;
- (BOOL)stop:(id *)a3;
- (OSDCaptureStream)initWithStream:(OpaqueFigCaptureStream *)a3;
- (id)name:(id *)a3;
- (int)backingCopyProperty:(__CFString *)a3 dest:(const void *)a4;
- (int)backingSetProperty:(__CFString *)a3 value:(void *)a4;
- (void)_receivedNotification:(__CFString *)a3 notificationObject:(id)a4 notificationPayload:(id)a5;
- (void)dealloc;
- (void)teardown;
@end

@implementation OSDCaptureStream

- (OSDCaptureStream)initWithStream:(OpaqueFigCaptureStream *)a3
{
  v9.receiver = self;
  v9.super_class = OSDCaptureStream;
  v4 = [(OSDCaptureStream *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (!a3)
    {
      sub_100008304();
    }

    v4->_streamRef = a3;
    CFRetain(a3);
    v6 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-4009.OSDCaptureDevice.workQueue", 0);
    workQueue = v5->_workQueue;
    v5->_workQueue = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(OSDCaptureStream *)self teardown];
  v3.receiver = self;
  v3.super_class = OSDCaptureStream;
  [(OSDCaptureStream *)&v3 dealloc];
}

- (void)teardown
{
  streamRef = self->_streamRef;
  if (streamRef)
  {
    CFRelease(streamRef);
    self->_streamRef = 0;
  }
}

- (id)name:(id *)a3
{
  v3 = [(OSDPropertyBasedDevice *)self copyProperty:kFigCaptureStreamProperty_PortType error:a3];

  return v3;
}

- (int)backingSetProperty:(__CFString *)a3 value:(void *)a4
{
  streamRef = self->_streamRef;
  FigBaseObject = FigCaptureStreamGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 56);
  if (!v9)
  {
    return -12782;
  }

  v10 = *(VTable + 8) + 56;

  return v9(FigBaseObject, a3, a4);
}

- (int)backingCopyProperty:(__CFString *)a3 dest:(const void *)a4
{
  streamRef = self->_streamRef;
  FigBaseObject = FigCaptureStreamGetFigBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return -12782;
  }

  return v8(FigBaseObject, a3, kCFAllocatorDefault, a4);
}

- (BOOL)_registerForStreamNotifications:(id *)a3
{
  CMNotificationCenterGetDefaultLocalCenter();
  v5 = kFigCaptureStreamNotification_Discontinuity;
  [(OSDCaptureStream *)self streamRef];
  v6 = CMNotificationCenterAddListener();
  v7 = v6 == 0;
  if (v6)
  {
    [OSDError setError:a3 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@: Failure to register for stream notification. Cannot add listener for %@", self, v5];
  }

  v8 = kFigCaptureStreamNotification_StreamStarted;
  [(OSDCaptureStream *)self streamRef];
  if (CMNotificationCenterAddListener())
  {
    [OSDError setError:a3 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@: Failure to register for stream notification. Cannot add listener for %@", self, v8];
    v7 = 0;
  }

  v9 = kFigCaptureStreamNotification_StreamStopped;
  [(OSDCaptureStream *)self streamRef];
  if (CMNotificationCenterAddListener())
  {
    [OSDError setError:a3 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@: Failure to register for stream notification. Cannot add listener for %@", self, v9];
    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully added stream notifications to %@", buf, 0xCu);
  }

  return 1;
}

- (BOOL)_unregisterForStreamNotifications:(id *)a3
{
  CMNotificationCenterGetDefaultLocalCenter();
  v5 = kFigCaptureStreamNotification_Discontinuity;
  [(OSDCaptureStream *)self streamRef];
  v6 = CMNotificationCenterRemoveListener();
  v7 = v6 == 0;
  if (v6)
  {
    [OSDError setError:a3 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@: Failure to unregister for stream notification. Cannot remove listener for %@", self, v5];
  }

  v8 = kFigCaptureStreamNotification_StreamStarted;
  [(OSDCaptureStream *)self streamRef];
  if (CMNotificationCenterRemoveListener())
  {
    [OSDError setError:a3 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@: Failure to unregister for stream notification. Cannot remove listener for %@", self, v8];
    v7 = 0;
  }

  v9 = kFigCaptureStreamNotification_StreamStopped;
  [(OSDCaptureStream *)self streamRef];
  if (CMNotificationCenterRemoveListener())
  {
    [OSDError setError:a3 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@: Failure to unregister for stream notification. Cannot remove listener for %@", self, v9];
    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully removed stream notifications from %@", buf, 0xCu);
  }

  return 1;
}

- (void)_receivedNotification:(__CFString *)a3 notificationObject:(id)a4 notificationPayload:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(OSDCaptureStream *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001DFC;
  block[3] = &unk_100010510;
  objc_copyWeak(v12, &location);
  v12[1] = a3;
  dispatch_async(v10, block);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

- (BOOL)start:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if ([(OSDCaptureStream *)v4 _registerForStreamNotifications:a3])
  {
    v5 = dispatch_semaphore_create(0);
    [(OSDCaptureStream *)v4 setStreamStartSemaphore:v5];

    v6 = [(OSDCaptureStream *)v4 streamRef];
    VTable = CMBaseObjectGetVTable();
    v8 = *(*(VTable + 16) + 8);
    if (v8)
    {
      v9 = *(VTable + 16) + 8;
      v10 = v8(v6);
    }

    else
    {
      v10 = 4294954514;
    }

    v11 = [(OSDCaptureStream *)v4 streamStartSemaphore];
    v12 = dispatch_time(0, 2000000000);
    v13 = dispatch_semaphore_wait(v11, v12);

    if (v13)
    {
      [OSDError setError:a3 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@ >> timed out trying to start the stream!", v4];
    }

    else
    {
      if (!v10)
      {
        [(OSDCaptureStream *)v4 setStreamStartSemaphore:0];
        v14 = 1;
        goto LABEL_11;
      }

      [OSDError setError:a3 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@ >> Error %d (0x%08x) cannot start the capture stream!", v4, v10, v10];
    }
  }

  v14 = 0;
LABEL_11:
  objc_sync_exit(v4);

  return v14;
}

- (BOOL)stop:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = dispatch_semaphore_create(0);
  [(OSDCaptureStream *)v4 setStreamStopSemaphore:v5];

  v6 = [(OSDCaptureStream *)v4 streamRef];
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 16);
  if (v8)
  {
    v9 = *(VTable + 16) + 16;
    v10 = v8(v6);
  }

  else
  {
    v10 = 4294954514;
  }

  v11 = [(OSDCaptureStream *)v4 streamStopSemaphore];
  v12 = dispatch_time(0, 2000000000);
  v13 = dispatch_semaphore_wait(v11, v12);

  if (v13)
  {
    [OSDError setError:a3 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@ >> timed out trying to stop the stream!", v4];
  }

  if (v10)
  {
    [OSDError setError:a3 withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@ >> Error %d (0x%08x) cannot stop the capture stream!", v4, v10, v10];
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  if (![(OSDCaptureStream *)v4 _unregisterForStreamNotifications:a3])
  {
    goto LABEL_11;
  }

  [(OSDCaptureStream *)v4 setStreamStopSemaphore:0];
  v14 = 1;
LABEL_12:
  objc_sync_exit(v4);

  return v14;
}

@end