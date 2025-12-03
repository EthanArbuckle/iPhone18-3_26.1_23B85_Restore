@interface OSDCaptureStream
- (BOOL)_registerForStreamNotifications:(id *)notifications;
- (BOOL)_unregisterForStreamNotifications:(id *)notifications;
- (BOOL)start:(id *)start;
- (BOOL)stop:(id *)stop;
- (OSDCaptureStream)initWithStream:(OpaqueFigCaptureStream *)stream;
- (id)name:(id *)name;
- (int)backingCopyProperty:(__CFString *)property dest:(const void *)dest;
- (int)backingSetProperty:(__CFString *)property value:(void *)value;
- (void)_receivedNotification:(__CFString *)notification notificationObject:(id)object notificationPayload:(id)payload;
- (void)dealloc;
- (void)teardown;
@end

@implementation OSDCaptureStream

- (OSDCaptureStream)initWithStream:(OpaqueFigCaptureStream *)stream
{
  v9.receiver = self;
  v9.super_class = OSDCaptureStream;
  v4 = [(OSDCaptureStream *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (!stream)
    {
      sub_100008304();
    }

    v4->_streamRef = stream;
    CFRetain(stream);
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

- (id)name:(id *)name
{
  v3 = [(OSDPropertyBasedDevice *)self copyProperty:kFigCaptureStreamProperty_PortType error:name];

  return v3;
}

- (int)backingSetProperty:(__CFString *)property value:(void *)value
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

  return v9(FigBaseObject, property, value);
}

- (int)backingCopyProperty:(__CFString *)property dest:(const void *)dest
{
  streamRef = self->_streamRef;
  FigBaseObject = FigCaptureStreamGetFigBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return -12782;
  }

  return v8(FigBaseObject, property, kCFAllocatorDefault, dest);
}

- (BOOL)_registerForStreamNotifications:(id *)notifications
{
  CMNotificationCenterGetDefaultLocalCenter();
  v5 = kFigCaptureStreamNotification_Discontinuity;
  [(OSDCaptureStream *)self streamRef];
  v6 = CMNotificationCenterAddListener();
  v7 = v6 == 0;
  if (v6)
  {
    [OSDError setError:notifications withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@: Failure to register for stream notification. Cannot add listener for %@", self, v5];
  }

  v8 = kFigCaptureStreamNotification_StreamStarted;
  [(OSDCaptureStream *)self streamRef];
  if (CMNotificationCenterAddListener())
  {
    [OSDError setError:notifications withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@: Failure to register for stream notification. Cannot add listener for %@", self, v8];
    v7 = 0;
  }

  v9 = kFigCaptureStreamNotification_StreamStopped;
  [(OSDCaptureStream *)self streamRef];
  if (CMNotificationCenterAddListener())
  {
    [OSDError setError:notifications withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@: Failure to register for stream notification. Cannot add listener for %@", self, v9];
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully added stream notifications to %@", buf, 0xCu);
  }

  return 1;
}

- (BOOL)_unregisterForStreamNotifications:(id *)notifications
{
  CMNotificationCenterGetDefaultLocalCenter();
  v5 = kFigCaptureStreamNotification_Discontinuity;
  [(OSDCaptureStream *)self streamRef];
  v6 = CMNotificationCenterRemoveListener();
  v7 = v6 == 0;
  if (v6)
  {
    [OSDError setError:notifications withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@: Failure to unregister for stream notification. Cannot remove listener for %@", self, v5];
  }

  v8 = kFigCaptureStreamNotification_StreamStarted;
  [(OSDCaptureStream *)self streamRef];
  if (CMNotificationCenterRemoveListener())
  {
    [OSDError setError:notifications withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@: Failure to unregister for stream notification. Cannot remove listener for %@", self, v8];
    v7 = 0;
  }

  v9 = kFigCaptureStreamNotification_StreamStopped;
  [(OSDCaptureStream *)self streamRef];
  if (CMNotificationCenterRemoveListener())
  {
    [OSDError setError:notifications withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@: Failure to unregister for stream notification. Cannot remove listener for %@", self, v9];
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully removed stream notifications from %@", buf, 0xCu);
  }

  return 1;
}

- (void)_receivedNotification:(__CFString *)notification notificationObject:(id)object notificationPayload:(id)payload
{
  objectCopy = object;
  payloadCopy = payload;
  objc_initWeak(&location, self);
  workQueue = [(OSDCaptureStream *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001DFC;
  block[3] = &unk_100010510;
  objc_copyWeak(v12, &location);
  v12[1] = notification;
  dispatch_async(workQueue, block);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

- (BOOL)start:(id *)start
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(OSDCaptureStream *)selfCopy _registerForStreamNotifications:start])
  {
    v5 = dispatch_semaphore_create(0);
    [(OSDCaptureStream *)selfCopy setStreamStartSemaphore:v5];

    streamRef = [(OSDCaptureStream *)selfCopy streamRef];
    VTable = CMBaseObjectGetVTable();
    v8 = *(*(VTable + 16) + 8);
    if (v8)
    {
      v9 = *(VTable + 16) + 8;
      v10 = v8(streamRef);
    }

    else
    {
      v10 = 4294954514;
    }

    streamStartSemaphore = [(OSDCaptureStream *)selfCopy streamStartSemaphore];
    v12 = dispatch_time(0, 2000000000);
    v13 = dispatch_semaphore_wait(streamStartSemaphore, v12);

    if (v13)
    {
      [OSDError setError:start withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@ >> timed out trying to start the stream!", selfCopy];
    }

    else
    {
      if (!v10)
      {
        [(OSDCaptureStream *)selfCopy setStreamStartSemaphore:0];
        v14 = 1;
        goto LABEL_11;
      }

      [OSDError setError:start withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@ >> Error %d (0x%08x) cannot start the capture stream!", selfCopy, v10, v10];
    }
  }

  v14 = 0;
LABEL_11:
  objc_sync_exit(selfCopy);

  return v14;
}

- (BOOL)stop:(id *)stop
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = dispatch_semaphore_create(0);
  [(OSDCaptureStream *)selfCopy setStreamStopSemaphore:v5];

  streamRef = [(OSDCaptureStream *)selfCopy streamRef];
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 16);
  if (v8)
  {
    v9 = *(VTable + 16) + 16;
    v10 = v8(streamRef);
  }

  else
  {
    v10 = 4294954514;
  }

  streamStopSemaphore = [(OSDCaptureStream *)selfCopy streamStopSemaphore];
  v12 = dispatch_time(0, 2000000000);
  v13 = dispatch_semaphore_wait(streamStopSemaphore, v12);

  if (v13)
  {
    [OSDError setError:stop withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@ >> timed out trying to stop the stream!", selfCopy];
  }

  if (v10)
  {
    [OSDError setError:stop withDomain:@"com.apple.osdiags.OSDCaptureDevice" withCode:1 format:@"%@ >> Error %d (0x%08x) cannot stop the capture stream!", selfCopy, v10, v10];
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  if (![(OSDCaptureStream *)selfCopy _unregisterForStreamNotifications:stop])
  {
    goto LABEL_11;
  }

  [(OSDCaptureStream *)selfCopy setStreamStopSemaphore:0];
  v14 = 1;
LABEL_12:
  objc_sync_exit(selfCopy);

  return v14;
}

@end