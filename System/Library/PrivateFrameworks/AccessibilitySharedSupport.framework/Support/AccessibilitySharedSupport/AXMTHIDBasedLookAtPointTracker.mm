@interface AXMTHIDBasedLookAtPointTracker
- (AXMTHIDBasedLookAtPointTracker)initWithInput:(id)input trackingType:(unint64_t)type;
- (AXMTLookAtPointTrackerDelegate)delegate;
- (CGPoint)_lastValidPoint;
- (UIView)debugOverlayRootView;
- (void)_cleanUpPowerAssertionAndTimer;
- (void)_cleanUpPowerAssertionIfNecessary;
- (void)_deviceNotification:(id)notification added:(BOOL)added;
- (void)_didReceivePointOnBackgroundThread:(CGPoint)thread;
- (void)_elementUpdated:(id)updated forDevice:(id)device;
- (void)_failedToTrackFaceWithErrorOnBackgroundThread:(id)thread;
- (void)_initializationTimerFired:(id)fired;
- (void)_inputSourceWasInterruptedOnMainThread;
- (void)_positionalHIDElementUpdated:(id)updated forDevice:(id)device;
- (void)_powerAssertionTimerFired;
- (void)_setCurrentFrequency:(id)frequency;
- (void)_setCurrentStatus:(unint64_t)status;
- (void)_setUpPowerAssertionIfNecessary;
- (void)_statusHIDElementUpdated:(id)updated forDevice:(id)device;
- (void)_updateFrequencyUsingDevice:(id)device;
- (void)dealloc;
- (void)startTracking;
- (void)stopTracking;
@end

@implementation AXMTHIDBasedLookAtPointTracker

- (AXMTHIDBasedLookAtPointTracker)initWithInput:(id)input trackingType:(unint64_t)type
{
  inputCopy = input;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = AXSSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100019FD8(inputCopy, v12);
    }

    goto LABEL_10;
  }

  if (([inputCopy mfiAuthenticated] & 1) == 0)
  {
    v12 = AXSSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001A050(inputCopy, v12);
    }

LABEL_10:

    selfCopy = 0;
    goto LABEL_11;
  }

  v14.receiver = self;
  v14.super_class = AXMTHIDBasedLookAtPointTracker;
  v6 = [(AXMTHIDBasedLookAtPointTracker *)&v14 init];
  if (v6)
  {
    v7 = [inputCopy copy];
    input = v6->_input;
    v6->_input = v7;

    v9 = dispatch_queue_create("com.apple.HIDBasedLookAtPointTracker.hidManagerDispatchQueue", 0);
    hidManagerDispatchQueue = v6->__hidManagerDispatchQueue;
    v6->__hidManagerDispatchQueue = v9;

    v6->__powerAssertionID = 0;
  }

  self = v6;
  selfCopy = self;
LABEL_11:

  return selfCopy;
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

    input = [(AXMTHIDBasedLookAtPointTracker *)self input];
    hidMatchingDictionary = [input hidMatchingDictionary];
    v8 = [NSMutableDictionary dictionaryWithDictionary:hidMatchingDictionary];

    _hidManager = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    [_hidManager setDeviceMatching:v8];

    _hidManager2 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    v11 = +[AXSSMotionTrackingUtilities axss_xPositionElementMatchingDict];
    v30[0] = v11;
    v12 = +[AXSSMotionTrackingUtilities axss_yPositionElementMatchingDict];
    v30[1] = v12;
    v13 = +[AXSSMotionTrackingUtilities axss_statusElementMatchingDict];
    v30[2] = v13;
    v14 = +[AXSSMotionTrackingUtilities axss_frequencyElementMatchingDict];
    v30[3] = v14;
    v15 = [NSArray arrayWithObjects:v30 count:4];
    [_hidManager2 setInputElementMatching:v15];

    _hidManager3 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    _hidManagerDispatchQueue = [(AXMTHIDBasedLookAtPointTracker *)self _hidManagerDispatchQueue];
    [_hidManager3 setDispatchQueue:_hidManagerDispatchQueue];

    objc_initWeak(&buf, self);
    _hidManager4 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100018954;
    v27[3] = &unk_100048F50;
    objc_copyWeak(&v28, &buf);
    [_hidManager4 setDeviceNotificationHandler:v27];

    _hidManager5 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1000189C0;
    v25 = &unk_100048F78;
    objc_copyWeak(&v26, &buf);
    [_hidManager5 setInputElementHandler:&v22];

    v20 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager:v22];
    [v20 open];

    _hidManager6 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    [_hidManager6 activate];

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

    _hidManager = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    [_hidManager cancel];

    _hidManager2 = [(AXMTHIDBasedLookAtPointTracker *)self _hidManager];
    [_hidManager2 close];

    [(AXMTHIDBasedLookAtPointTracker *)self set_hidManager:0];
    [(AXMTHIDBasedLookAtPointTracker *)self set_isStarted:0];
    [(AXMTHIDBasedLookAtPointTracker *)self _cleanUpPowerAssertionAndTimer];
  }
}

- (void)_setCurrentStatus:(unint64_t)status
{
  if (self->__currentStatus != status)
  {
    self->__currentStatus = status;
  }
}

- (void)_setCurrentFrequency:(id)frequency
{
  frequencyCopy = frequency;
  v5 = frequencyCopy;
  currentFrequency = self->__currentFrequency;
  v10 = frequencyCopy;
  if (!frequencyCopy)
  {
    if (!currentFrequency)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!currentFrequency || (v7 = [frequencyCopy isEqualToNumber:?], v5 = v10, (v7 & 1) == 0))
  {
LABEL_6:
    v8 = [v5 copy];
    v9 = self->__currentFrequency;
    self->__currentFrequency = v8;
  }

LABEL_7:

  _objc_release_x1();
}

- (void)_elementUpdated:(id)updated forDevice:(id)device
{
  updatedCopy = updated;
  deviceCopy = device;
  usage = [updatedCopy usage];
  if ((usage - 33) >= 2)
  {
    if (usage == 769)
    {
      [(AXMTHIDBasedLookAtPointTracker *)self _statusHIDElementUpdated:updatedCopy forDevice:deviceCopy];
    }
  }

  else
  {
    [(AXMTHIDBasedLookAtPointTracker *)self _positionalHIDElementUpdated:updatedCopy forDevice:deviceCopy];
  }

  [(AXMTHIDBasedLookAtPointTracker *)self _updateFrequencyUsingDevice:deviceCopy];
}

- (void)_updateFrequencyUsingDevice:(id)device
{
  deviceCopy = device;
  v5 = +[AXSSMotionTrackingUtilities axss_frequencyElementMatchingDict];
  v6 = [deviceCopy elementsMatching:v5];

  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = [firstObject integerValue];
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

- (void)_statusHIDElementUpdated:(id)updated forDevice:(id)device
{
  deviceCopy = device;
  v6 = +[AXSSMotionTrackingUtilities axss_statusElementMatchingDict];
  v7 = [deviceCopy elementsMatching:v6];

  firstObject = [v7 firstObject];

  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = [firstObject integerValue];
  if (firstObject)
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

- (void)_positionalHIDElementUpdated:(id)updated forDevice:(id)device
{
  updatedCopy = updated;
  deviceCopy = device;
  usage = [updatedCopy usage];
  if (usage == 34)
  {
    [(AXMTHIDBasedLookAtPointTracker *)self set_YPositionElementUpdated:1];
  }

  else if (usage == 33)
  {
    [(AXMTHIDBasedLookAtPointTracker *)self set_XPositionElementUpdated:1];
  }

  v9 = +[AXSSMotionTrackingUtilities axss_xPositionElementMatchingDict];
  v10 = [deviceCopy elementsMatching:v9];
  firstObject = [v10 firstObject];

  v12 = +[AXSSMotionTrackingUtilities axss_yPositionElementMatchingDict];
  v13 = [deviceCopy elementsMatching:v12];
  firstObject2 = [v13 firstObject];

  if (firstObject && firstObject2)
  {
    integerValue = [firstObject integerValue];
    integerValue2 = [firstObject2 integerValue];
    [firstObject scaleValue:2];
    v18 = v17;
    [firstObject2 scaleValue:2];
    v20 = v19;
    v21 = +[AXMTUtilities sharedInstance];
    [v21 screenBoundsAccountingForPhysicalDeviceOrientation];
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [(AXMTHIDBasedLookAtPointTracker *)self _lastValidPoint];
    v46 = 0;
    v30 = AXMTScreenPointForHIDPoint(integerValue, integerValue2, &v46, v18, v20, v28, v29, v23, v25, v27);
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
      sub_10001A0C8(updatedCopy, deviceCopy, v33);
    }
  }
}

- (void)_deviceNotification:(id)notification added:(BOOL)added
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000194B4;
  block[3] = &unk_100048FC8;
  addedCopy = added;
  notificationCopy = notification;
  selfCopy = self;
  v5 = notificationCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_initializationTimerFired:(id)fired
{
  if ([(AXMTHIDBasedLookAtPointTracker *)self _currentStatus]!= 1)
  {
    v4 = [NSError alloc];
    v5 = [v4 initWithDomain:AXSSMotionTrackingErrorDomain code:12 userInfo:0];
    [(AXMTHIDBasedLookAtPointTracker *)self _failedToTrackFaceWithErrorOnBackgroundThread:v5];
  }

  _initializationTimer = [(AXMTHIDBasedLookAtPointTracker *)self _initializationTimer];
  [_initializationTimer invalidate];

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

      _powerAssertionTimer = [(AXMTHIDBasedLookAtPointTracker *)self _powerAssertionTimer];
      [_powerAssertionTimer invalidate];

      v14 = [NSTimer scheduledTimerWithTimeInterval:self target:"_powerAssertionTimerFired" selector:0 userInfo:1 repeats:30.0];
      [(AXMTHIDBasedLookAtPointTracker *)self set_powerAssertionTimer:v14];
    }
  }
}

- (void)_powerAssertionTimerFired
{
  v3 = mach_absolute_time();
  _lastTimePointReceived = [(AXMTHIDBasedLookAtPointTracker *)self _lastTimePointReceived];
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

  if (v5(v3 - _lastTimePointReceived) / 1000000000.0 <= 30.0)
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
  _powerAssertionTimer = [(AXMTHIDBasedLookAtPointTracker *)self _powerAssertionTimer];
  [_powerAssertionTimer invalidate];

  [(AXMTHIDBasedLookAtPointTracker *)self set_powerAssertionTimer:0];
}

- (void)_didReceivePointOnBackgroundThread:(CGPoint)thread
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000199E8;
  block[3] = &unk_1000489E8;
  threadCopy = thread;
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

  delegate = [(AXMTHIDBasedLookAtPointTracker *)self delegate];
  [delegate lookAtPointTrackerWasInterrupted:self];
}

- (void)_failedToTrackFaceWithErrorOnBackgroundThread:(id)thread
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019B98;
  v5[3] = &unk_100048948;
  threadCopy = thread;
  selfCopy = self;
  v4 = threadCopy;
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