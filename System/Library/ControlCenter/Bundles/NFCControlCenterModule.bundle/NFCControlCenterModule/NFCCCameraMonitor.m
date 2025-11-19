@interface NFCCCameraMonitor
- (NFCCCameraMonitor)init;
- (NFCCCameraMonitorDelegate)delegate;
- (unsigned)_service;
- (void)_capturingCameraTypesDidChange:(int64_t)a3;
- (void)_notifyDelegateIfNeeded;
- (void)_registerForCameraNotifications;
- (void)_unregisterForCameraNotifications;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation NFCCCameraMonitor

- (NFCCCameraMonitor)init
{
  v9.receiver = self;
  v9.super_class = NFCCCameraMonitor;
  v2 = [(NFCCCameraMonitor *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.BarcodeSupport.NFCControlCenterModule.NFCCCameraMonitor", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = v2;
  }

  return v2;
}

- (void)dealloc
{
  ioNotificationPort = self->_ioNotificationPort;
  if (ioNotificationPort)
  {
    IONotificationPortDestroy(ioNotificationPort);
  }

  notificationObject = self->_notificationObject;
  if (notificationObject)
  {
    IOObjectRelease(notificationObject);
  }

  v5.receiver = self;
  v5.super_class = NFCCCameraMonitor;
  [(NFCCCameraMonitor *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1A0C;
  v7[3] = &unk_C320;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_unregisterForCameraNotifications
{
  dispatch_assert_queue_V2(self->_queue);
  ioNotificationPort = self->_ioNotificationPort;
  if (ioNotificationPort)
  {
    IONotificationPortDestroy(ioNotificationPort);
    self->_ioNotificationPort = 0;
  }

  notificationObject = self->_notificationObject;
  if (notificationObject)
  {
    IOObjectRelease(notificationObject);
    self->_notificationObject = 0;
  }
}

- (void)_registerForCameraNotifications
{
  dispatch_assert_queue_V2(self->_queue);
  [(NFCCCameraMonitor *)self _unregisterForCameraNotifications];
  v3 = IONotificationPortCreate(kIOMasterPortDefault);
  self->_ioNotificationPort = v3;
  if (v3)
  {
    IONotificationPortSetDispatchQueue(v3, self->_queue);
    v4 = [(NFCCCameraMonitor *)self _service];
    if (v4)
    {
      v5 = v4;
      sub_1C2C(self, v4, -536870608);
      if (IOServiceAddInterestNotification(self->_ioNotificationPort, v5, "IOGeneralInterest", sub_1C2C, self, &self->_notificationObject))
      {
        if (qword_11B18 != -1)
        {
          sub_6240();
        }

        v6 = qword_11B10;
        if (os_log_type_enabled(qword_11B10, OS_LOG_TYPE_ERROR))
        {
          sub_6254(v6, v7, v8, v9, v10, v11, v12, v13);
        }
      }

      else
      {

        IOObjectRelease(v5);
      }
    }

    else
    {
      if (qword_11B18 != -1)
      {
        sub_6240();
      }

      v22 = qword_11B10;
      if (os_log_type_enabled(qword_11B10, OS_LOG_TYPE_ERROR))
      {
        sub_628C(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }
  }

  else
  {
    if (qword_11B18 != -1)
    {
      sub_6240();
    }

    v14 = qword_11B10;
    if (os_log_type_enabled(qword_11B10, OS_LOG_TYPE_ERROR))
    {
      sub_62C4(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }
}

- (unsigned)_service
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = IOServiceMatching(off_C340[v2]);
    result = IOServiceGetMatchingService(kIOMasterPortDefault, v4);
    if ((v3 & 1) == 0)
    {
      break;
    }

    v3 = 0;
    v2 = 1;
  }

  while (!result);
  return result;
}

- (void)_capturingCameraTypesDidChange:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (qword_11B18 != -1)
  {
    sub_6240();
  }

  v5 = qword_11B10;
  if (os_log_type_enabled(qword_11B10, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Capturing camera types did change: %d", &buf, 8u);
  }

  self->_cameraCapturing = a3 != 0;
  objc_initWeak(&buf, self);
  v6 = dispatch_time(0, 100000000);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1EA0;
  block[3] = &unk_C358;
  objc_copyWeak(&v9, &buf);
  dispatch_after(v6, queue, block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&buf);
}

- (void)_notifyDelegateIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  lastNotifiedCameraCapturing = self->_lastNotifiedCameraCapturing;
  if (!lastNotifiedCameraCapturing || (cameraCapturing = self->_cameraCapturing, cameraCapturing != [(NSNumber *)lastNotifiedCameraCapturing BOOLValue]))
  {
    v5 = [NSNumber numberWithBool:self->_cameraCapturing];
    v6 = self->_lastNotifiedCameraCapturing;
    self->_lastNotifiedCameraCapturing = v5;

    if (qword_11B18 != -1)
    {
      sub_6240();
    }

    v7 = qword_11B10;
    if (os_log_type_enabled(qword_11B10, OS_LOG_TYPE_INFO))
    {
      if (self->_cameraCapturing)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Notifying delegate, camera capturing: %@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_204C;
    block[3] = &unk_C380;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (NFCCCameraMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end