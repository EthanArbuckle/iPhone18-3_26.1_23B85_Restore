@interface AXMTHIDBasedLookAtPointTracker
- (AXMTHIDBasedLookAtPointTracker)initWithInput:(id)a3 trackingType:(unint64_t)a4;
- (AXMTLookAtPointTrackerDelegate)delegate;
- (CGPoint)_lastValidPoint;
- (UIView)debugOverlayRootView;
- (void)_cleanUpPowerAssertionAndTimer;
- (void)_cleanUpPowerAssertionIfNecessary;
- (void)_deviceNotification:(id)a3 added:(BOOL)a4;
- (void)_didReceivePointOnBackgroundThread:(CGPoint)a3;
- (void)_elementUpdated:(id)a3 forDevice:(id)a4;
- (void)_failedToTrackFaceWithErrorOnBackgroundThread:(id)a3;
- (void)_initializationTimerFired:(id)a3;
- (void)_inputSourceWasInterruptedOnMainThread;
- (void)_positionalHIDElementUpdated:(id)a3 forDevice:(id)a4;
- (void)_powerAssertionTimerFired;
- (void)_setCurrentFrequency:(id)a3;
- (void)_setCurrentStatus:(unint64_t)a3;
- (void)_setUpPowerAssertionIfNecessary;
- (void)_statusHIDElementUpdated:(id)a3 forDevice:(id)a4;
- (void)_updateFrequencyUsingDevice:(id)a3;
- (void)dealloc;
- (void)startTracking;
- (void)stopTracking;
@end

@implementation AXMTHIDBasedLookAtPointTracker

- (AXMTHIDBasedLookAtPointTracker)initWithInput:(id)a3 trackingType:(unint64_t)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = AXSSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100019FD8(v5, v12);
    }

    goto LABEL_10;
  }

  if (([v5 mfiAuthenticated] & 1) == 0)
  {
    v12 = AXSSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001A050(v5, v12);
    }

LABEL_10:

    v11 = 0;
    goto LABEL_11;
  }

  v14.receiver = self;
  v14.super_class = AXMTHIDBasedLookAtPointTracker;
  v6 = [(AXMTHIDBasedLookAtPointTracker *)&v14 init];
  if (v6)
  {
    v7 = [v5 copy];
    input = v6->_input;
    v6->_input = v7;

    v9 = dispatch_queue_create("com.apple.HIDBasedLookAtPointTracker.hidManagerDispatchQueue", 0);
    hidManagerDispatchQueue = v6->__hidManagerDispatchQueue;
    v6->__hidManagerDispatchQueue = v9;

    v6->__powerAssertionID = 0;
  }

  self = v6;
  v11 = self;
LABEL_11:

  return v11;
}

- (void)dealloc
{
  v3 = +[AXMTUtilities sharedInstance];
  [v3 unregisterListener:self];

  [(HIDManager *)self->__hidManager cancel];
  [(HIDManager *)self->__hidManager close];
  [(AXMTHIDBasedLookAtPointTracker *)self _cleanUpPowerAssertionAndTimer];
  v4.receiver = self;
  v4.super_class = AXMTHIDBasedLookAtPointTracker;
  [(AXMTHIDBasedLookAtPointTracker *)&v4 dealloc];
}

- (void)startTracking
{
  if (![(AXMTHIDBasedLookAtPointTracker *)self _isStarted])
  {
    v3 = AXSSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AXMTHIDBasedLookAtPointTracker: startTracking: called", &buf, 2u);
    }

    v4 = +[AXMTUtilities sharedInstance];
    [v4 registerListener:self needsPhysicalOrientationEvents:1];

    v5 = [[HIDManager alloc] initWithOptions:0];
    [(AXMTHIDBasedLookAtPointTracker *)self set_hidManager:v5];

    v6 = [(AXMTHIDBasedLookAtPointTracker *)self input];
    v7 = [v6 hidMatchingDictionary];
    v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

    v9 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    [v9 setDeviceMatching:v8];

    v10 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    v11 = +[AXSSMotionTrackingUtilities axss_xPositionElementMatchingDict];
    v30[0] = v11;
    v12 = +[AXSSMotionTrackingUtilities axss_yPositionElementMatchingDict];
    v30[1] = v12;
    v13 = +[AXSSMotionTrackingUtilities axss_statusElementMatchingDict];
    v30[2] = v13;
    v14 = +[AXSSMotionTrackingUtilities axss_frequencyElementMatchingDict];
    v30[3] = v14;
    v15 = [NSArray arrayWithObjects:v30 count:4];
    [v10 setInputElementMatching:v15];

    v16 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    v17 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManagerDispatchQueue];
    [v16 setDispatchQueue:v17];

    objc_initWeak(&buf, self);
    v18 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100018954;
    v27[3] = &unk_100048F50;
    objc_copyWeak(&v28, &buf);
    [v18 setDeviceNotificationHandler:v27];

    v19 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1000189C0;
    v25 = &unk_100048F78;
    objc_copyWeak(&v26, &buf);
    [v19 setInputElementHandler:&v22];

    v20 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager:v22];
    [v20 open];

    v21 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    [v21 activate];

    [(AXMTHIDBasedLookAtPointTracker *)self set_isStarted:1];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&buf);
  }
}

- (void)stopTracking
{
  if ([(AXMTHIDBasedLookAtPointTracker *)self _isStarted])
  {
    v3 = AXSSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AXMTHIDBasedLookAtPointTracker: stopTracking", v7, 2u);
    }

    v4 = +[AXMTUtilities sharedInstance];
    [v4 unregisterListener:self];

    v5 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    [v5 cancel];

    v6 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    [v6 close];

    [(AXMTHIDBasedLookAtPointTracker *)self set_hidManager:0];
    [(AXMTHIDBasedLookAtPointTracker *)self set_isStarted:0];
    [(AXMTHIDBasedLookAtPointTracker *)self _cleanUpPowerAssertionAndTimer];
  }
}

- (void)_setCurrentStatus:(unint64_t)a3
{
  if (self->__currentStatus != a3)
  {
    self->__currentStatus = a3;
  }
}

- (void)_setCurrentFrequency:(id)a3
{
  v4 = a3;
  v5 = v4;
  currentFrequency = self->__currentFrequency;
  v10 = v4;
  if (!v4)
  {
    if (!currentFrequency)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!currentFrequency || (v7 = [v4 isEqualToNumber:?], v5 = v10, (v7 & 1) == 0))
  {
LABEL_6:
    v8 = [v5 copy];
    v9 = self->__currentFrequency;
    self->__currentFrequency = v8;
  }

LABEL_7:

  _objc_release_x1();
}

- (void)_elementUpdated:(id)a3 forDevice:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v8 usage];
  if ((v7 - 33) >= 2)
  {
    if (v7 == 769)
    {
      [(AXMTHIDBasedLookAtPointTracker *)self _statusHIDElementUpdated:v8 forDevice:v6];
    }
  }

  else
  {
    [(AXMTHIDBasedLookAtPointTracker *)self _positionalHIDElementUpdated:v8 forDevice:v6];
  }

  [(AXMTHIDBasedLookAtPointTracker *)self _updateFrequencyUsingDevice:v6];
}

- (void)_updateFrequencyUsingDevice:(id)a3
{
  v4 = a3;
  v5 = +[AXSSMotionTrackingUtilities axss_frequencyElementMatchingDict];
  v6 = [v4 elementsMatching:v5];

  v7 = [v6 firstObject];

  if (v7)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = [v7 integerValue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100018D80;
    v8[3] = &unk_100048B58;
    v8[4] = self;
    v8[5] = v9;
    dispatch_async(&_dispatch_main_q, v8);
    _Block_object_dispose(v9, 8);
  }
}

- (void)_statusHIDElementUpdated:(id)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = +[AXSSMotionTrackingUtilities axss_statusElementMatchingDict];
  v7 = [v5 elementsMatching:v6];

  v8 = [v7 firstObject];

  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = [v8 integerValue];
  if (v8)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100018EFC;
    v9[3] = &unk_100048FA0;
    v9[4] = self;
    v9[5] = v10;
    dispatch_async(&_dispatch_main_q, v9);
  }

  _Block_object_dispose(v10, 8);
}

- (void)_positionalHIDElementUpdated:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 usage];
  if (v8 == 34)
  {
    [(AXMTHIDBasedLookAtPointTracker *)self set_YPositionElementUpdated:1];
  }

  else if (v8 == 33)
  {
    [(AXMTHIDBasedLookAtPointTracker *)self set_XPositionElementUpdated:1];
  }

  v9 = +[AXSSMotionTrackingUtilities axss_xPositionElementMatchingDict];
  v10 = [v7 elementsMatching:v9];
  v11 = [v10 firstObject];

  v12 = +[AXSSMotionTrackingUtilities axss_yPositionElementMatchingDict];
  v13 = [v7 elementsMatching:v12];
  v14 = [v13 firstObject];

  if (v11 && v14)
  {
    v15 = [v11 integerValue];
    v16 = [v14 integerValue];
    [v11 scaleValue:2];
    v18 = v17;
    [v14 scaleValue:2];
    v20 = v19;
    v21 = +[AXMTUtilities sharedInstance];
    [v21 screenBoundsAccountingForPhysicalDeviceOrientation];
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [(AXMTHIDBasedLookAtPointTracker *)self _lastValidPoint];
    v46 = 0;
    v30 = AXMTScreenPointForHIDPoint(v15, v16, &v46, v18, v20, v28, v29, v23, v25, v27);
    v32 = v31;
    v33 = v46;
    v34 = +[AXMTUtilities sharedInstance];
    [v34 convertPointFromDeviceOrientation:{v30, v32}];
    v36 = v35;
    v38 = v37;

    v39 = +[AXMTUtilities sharedInstance];
    [v39 convertPointToInterfaceOrientation:{v36, v38}];
    v41 = v40;
    v43 = v42;

    if (v33)
    {
      [(AXMTHIDBasedLookAtPointTracker *)self set_XPositionElementUpdated:0];
      [(AXMTHIDBasedLookAtPointTracker *)self set_YPositionElementUpdated:0];
      [(AXMTHIDBasedLookAtPointTracker *)self _failedToTrackFaceWithErrorOnBackgroundThread:v33];
    }

    else if ([(AXMTHIDBasedLookAtPointTracker *)self _XPositionElementUpdated])
    {
      if ([(AXMTHIDBasedLookAtPointTracker *)self _YPositionElementUpdated])
      {
        AXMTLogFPS();
        [(AXMTHIDBasedLookAtPointTracker *)self set_XPositionElementUpdated:0];
        [(AXMTHIDBasedLookAtPointTracker *)self set_YPositionElementUpdated:0];
        [(AXMTHIDBasedLookAtPointTracker *)self set_lastTimePointReceived:mach_absolute_time()];
        [(AXMTHIDBasedLookAtPointTracker *)self _lastValidPoint];
        if (v45 != v41 || v44 != v43)
        {
          [(AXMTHIDBasedLookAtPointTracker *)self set_lastValidPoint:v41, v43];
          [(AXMTHIDBasedLookAtPointTracker *)self _didReceivePointOnBackgroundThread:v41, v43];
        }
      }
    }
  }

  else
  {
    v33 = AXSSLogForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10001A0C8(v6, v7, v33);
    }
  }
}

- (void)_deviceNotification:(id)a3 added:(BOOL)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000194B4;
  block[3] = &unk_100048FC8;
  v9 = a4;
  v7 = a3;
  v8 = self;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_initializationTimerFired:(id)a3
{
  if ([(AXMTHIDBasedLookAtPointTracker *)self _currentStatus]!= 1)
  {
    v4 = [NSError alloc];
    v5 = [v4 initWithDomain:AXSSMotionTrackingErrorDomain code:12 userInfo:0];
    [(AXMTHIDBasedLookAtPointTracker *)self _failedToTrackFaceWithErrorOnBackgroundThread:v5];
  }

  v6 = [(AXMTHIDBasedLookAtPointTracker *)self _initializationTimer];
  [v6 invalidate];

  [(AXMTHIDBasedLookAtPointTracker *)self set_initializationTimer:0];
}

- (void)_setUpPowerAssertionIfNecessary
{
  if (![(AXMTHIDBasedLookAtPointTracker *)self _powerAssertionID])
  {
    v3 = IOPMAssertionCreateWithDescription(@"PreventUserIdleDisplaySleep", @"Accessibility Motion Tracking Daemon", @"Eye Tracker actively in use", 0, 0, 0.0, 0, &self->__powerAssertionID);
    v4 = AXSSLogForCategory();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10001A150(v3, v5);
      }

      [(AXMTHIDBasedLookAtPointTracker *)self set_powerAssertionID:0];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_10001A1DC(v5, v6, v7, v8, v9, v10, v11, v12);
      }

      v13 = [(AXMTHIDBasedLookAtPointTracker *)self _powerAssertionTimer];
      [v13 invalidate];

      v14 = [NSTimer scheduledTimerWithTimeInterval:self target:"_powerAssertionTimerFired" selector:0 userInfo:1 repeats:30.0];
      [(AXMTHIDBasedLookAtPointTracker *)self set_powerAssertionTimer:v14];
    }
  }
}

- (void)_powerAssertionTimerFired
{
  v3 = mach_absolute_time();
  v4 = [(AXMTHIDBasedLookAtPointTracker *)self _lastTimePointReceived];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v5 = off_1000545B8;
  v11 = off_1000545B8;
  if (!off_1000545B8)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100019E24;
    v7[3] = &unk_100048BA8;
    v7[4] = &v8;
    sub_100019E24(v7);
    v5 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v5)
  {
    v6 = sub_100029794();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  if (v5(v3 - v4) / 1000000000.0 <= 30.0)
  {
    [(AXMTHIDBasedLookAtPointTracker *)self _setUpPowerAssertionIfNecessary];
  }

  else
  {
    [(AXMTHIDBasedLookAtPointTracker *)self _cleanUpPowerAssertionIfNecessary];
  }
}

- (void)_cleanUpPowerAssertionIfNecessary
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A254(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  if ([(AXMTHIDBasedLookAtPointTracker *)self _powerAssertionID])
  {
    IOPMAssertionRelease([(AXMTHIDBasedLookAtPointTracker *)self _powerAssertionID]);
    [(AXMTHIDBasedLookAtPointTracker *)self set_powerAssertionID:0];
  }
}

- (void)_cleanUpPowerAssertionAndTimer
{
  [(AXMTHIDBasedLookAtPointTracker *)self _cleanUpPowerAssertionIfNecessary];
  v3 = [(AXMTHIDBasedLookAtPointTracker *)self _powerAssertionTimer];
  [v3 invalidate];

  [(AXMTHIDBasedLookAtPointTracker *)self set_powerAssertionTimer:0];
}

- (void)_didReceivePointOnBackgroundThread:(CGPoint)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000199E8;
  block[3] = &unk_1000489E8;
  v4 = a3;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_inputSourceWasInterruptedOnMainThread
{
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A2CC(v3);
  }

  v4 = [(AXMTHIDBasedLookAtPointTracker *)self delegate];
  [v4 lookAtPointTrackerWasInterrupted:self];
}

- (void)_failedToTrackFaceWithErrorOnBackgroundThread:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019B98;
  v5[3] = &unk_100048948;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (AXMTLookAtPointTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)debugOverlayRootView
{
  WeakRetained = objc_loadWeakRetained(&self->_debugOverlayRootView);

  return WeakRetained;
}

- (CGPoint)_lastValidPoint
{
  x = self->__lastValidPoint.x;
  y = self->__lastValidPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end