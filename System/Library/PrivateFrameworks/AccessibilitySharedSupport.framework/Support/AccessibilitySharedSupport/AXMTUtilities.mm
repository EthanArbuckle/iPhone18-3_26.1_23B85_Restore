@interface AXMTUtilities
+ (AXMTUtilities)sharedInstance;
+ (int64_t)errorCodeForFaceKitPayload:(id)a3 lastReportedFailureNumber:(id)a4;
- (AXMTUtilities)init;
- (CGPoint)convertPoint:(CGPoint)a3 fromOrientation:(int64_t)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toOrientation:(int64_t)a4;
- (CGPoint)convertPointFromDeviceOrientation:(CGPoint)a3;
- (CGPoint)convertPointFromInterfaceOrientation:(CGPoint)a3;
- (CGPoint)convertPointToDeviceOrientation:(CGPoint)a3;
- (CGPoint)convertPointToInterfaceOrientation:(CGPoint)a3;
- (CGRect)_screenBounds;
- (CGRect)_screenBoundsFromFrontBoard;
- (CGRect)screenBoundsAccountingForInterfaceOrientation;
- (CGRect)screenBoundsAccountingForPhysicalDeviceOrientation;
- (void)_accelerometerDataUpdated:(id)a3;
- (void)_checkBackboardEffectiveDeviceOrientation;
- (void)_checkBackboardOrientationLockStatus;
- (void)_deviceOrientationChanged:(int64_t)a3;
- (void)_handleAccelerometerDataUpdate:(id)a3;
- (void)_interfaceOrientationChanged:(int64_t)a3;
- (void)_startMonitoringEffectiveDeviceOrientation;
- (void)_startMonitoringOrientationLockStatus;
- (void)_stopMonitoringEffectiveDeviceOrientation;
- (void)_stopMonitoringOrientationLockStatus;
- (void)_tearDownMotionManager;
- (void)_updateForDeviceOrientationOverride:(id)a3;
- (void)_updateScreenBounds;
- (void)dealloc;
- (void)registerListener:(id)a3 needsPhysicalOrientationEvents:(BOOL)a4;
- (void)unregisterListener:(id)a3;
@end

@implementation AXMTUtilities

+ (AXMTUtilities)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CC14;
  block[3] = &unk_100048BE0;
  block[4] = a1;
  if (qword_100054548 != -1)
  {
    dispatch_once(&qword_100054548, block);
  }

  v2 = qword_100054550;

  return v2;
}

- (AXMTUtilities)init
{
  v19.receiver = self;
  v19.super_class = AXMTUtilities;
  v2 = [(AXMTUtilities *)&v19 init];
  if (v2)
  {
    v3 = [NSPointerArray pointerArrayWithOptions:5];
    listeners = v2->__listeners;
    v2->__listeners = v3;

    v5 = [NSPointerArray pointerArrayWithOptions:5];
    listenersForDeviceOrientationEvents = v2->__listenersForDeviceOrientationEvents;
    v2->__listenersForDeviceOrientationEvents = v5;

    v2->_currentInterfaceOrientation = 0;
    v2->_currentDeviceOrientation = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v7 = off_100054578;
    v23 = off_100054578;
    if (!off_100054578)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10000F480;
      v25 = &unk_100048BA8;
      v26 = &v20;
      sub_10000F480(buf);
      v7 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v7)
    {
      sub_100029794();
      __break(1u);
    }

    v2->__screenBounds.origin.x = v7();
    v2->__screenBounds.origin.y = v8;
    v2->__screenBounds.size.width = v9;
    v2->__screenBounds.size.height = v10;
    v11 = AXSSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = NSStringFromCGRect(v2->__screenBounds);
      *buf = 136315394;
      *&buf[4] = "[AXMTUtilities init]";
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s: initializing with screen bounds: %@", buf, 0x16u);
    }

    if (CGRectIsNull(v2->__screenBounds) || CGRectIsEmpty(v2->__screenBounds))
    {
      v12 = AXSSLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromCGRect(v2->__screenBounds);
        *buf = 136315394;
        *&buf[4] = "[AXMTUtilities init]";
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: ERROR!! Got invalid screen bounds: %@", buf, 0x16u);
      }
    }

    v2->__screenBoundsUpdateAttempts = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10000CFB8, @"SBSpringBoardDidLaunchNotification", 0, CFNotificationSuspensionBehaviorDrop);
    [(AXMTUtilities *)v2 _startMonitoringOrientationLockStatus];
    [(AXMTUtilities *)v2 _startMonitoringEffectiveDeviceOrientation];
    if (v2->_orientationLocked)
    {
      v14 = AXSSLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_10000FA10(v2, v14);
      }

      v2->_currentDeviceOrientation = v2->_bksEffectiveOrientation;
    }

    v15 = +[NSDistributedNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"_updateForDeviceOrientationOverride:" name:AXSSMotionTrackingDeviceOrientationOverrideDistributedNotificationName object:0];

    [(AXMTUtilities *)v2 _updateForDeviceOrientationOverride:0];
  }

  return v2;
}

- (void)dealloc
{
  [(FBSOrientationObserver *)self->__orientationObserver invalidate];
  orientationObserver = self->__orientationObserver;
  self->__orientationObserver = 0;

  [(CMMotionManager *)self->__motionManager stopAccelerometerUpdates];
  motionManager = self->__motionManager;
  self->__motionManager = 0;

  motionManagerCallbackQueue = self->__motionManagerCallbackQueue;
  self->__motionManagerCallbackQueue = 0;

  self->_currentDeviceOrientation = 0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SBSpringBoardDidLaunchNotification", 0);
  [(AXMTUtilities *)self _stopMonitoringOrientationLockStatus];
  [(AXMTUtilities *)self _stopMonitoringEffectiveDeviceOrientation];
  v7.receiver = self;
  v7.super_class = AXMTUtilities;
  [(AXMTUtilities *)&v7 dealloc];
}

- (CGRect)screenBoundsAccountingForInterfaceOrientation
{
  [(AXMTUtilities *)self _screenBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(AXMTUtilities *)self currentInterfaceOrientation];
  v12 = [(AXMTUtilities *)self _listeners];
  v13 = [v12 count];

  if (!v13)
  {
    v11 = [UIDevice currentDeviceOrientationAllowingAmbiguous:0];
  }

  if ((v11 - 3) >= 2)
  {
    v14 = v10;
  }

  else
  {
    v14 = v8;
  }

  if ((v11 - 3) >= 2)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  v16 = v4;
  v17 = v6;
  result.size.height = v14;
  result.size.width = v15;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)screenBoundsAccountingForPhysicalDeviceOrientation
{
  [(AXMTUtilities *)self _screenBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(AXMTUtilities *)self currentDeviceOrientation];
  v12 = [(AXMTUtilities *)self _listeners];
  v13 = [v12 count];

  if (!v13)
  {
    v11 = [UIDevice currentDeviceOrientationAllowingAmbiguous:0];
  }

  if ((v11 - 3) >= 2)
  {
    v14 = v8;
  }

  else
  {
    v14 = v10;
  }

  if ((v11 - 3) >= 2)
  {
    v15 = v10;
  }

  else
  {
    v15 = v8;
  }

  v16 = v4;
  v17 = v6;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGPoint)convertPointToDeviceOrientation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXMTUtilities *)self currentDeviceOrientation];

  [(AXMTUtilities *)self convertPoint:v6 toOrientation:x, y];
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)convertPointToInterfaceOrientation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXMTUtilities *)self currentInterfaceOrientation];

  [(AXMTUtilities *)self convertPoint:v6 toOrientation:x, y];
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toOrientation:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  [(AXMTUtilities *)self _screenBounds];
  v9 = v8 - y;
  v10 = v7 - x;
  if (a4 == 2)
  {
    v11 = v7 - x;
  }

  else
  {
    v11 = x;
  }

  if (a4 == 2)
  {
    v12 = v8 - y;
  }

  else
  {
    v12 = y;
  }

  if (a4 == 3)
  {
    v11 = y;
  }

  else
  {
    v10 = v12;
  }

  if (a4 == 4)
  {
    v10 = x;
  }

  else
  {
    v9 = v11;
  }

  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)convertPointFromDeviceOrientation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXMTUtilities *)self currentDeviceOrientation];

  [(AXMTUtilities *)self convertPoint:v6 fromOrientation:x, y];
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)convertPointFromInterfaceOrientation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXMTUtilities *)self currentInterfaceOrientation];

  [(AXMTUtilities *)self convertPoint:v6 fromOrientation:x, y];
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromOrientation:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  [(AXMTUtilities *)self _screenBounds];
  v8 = v7 - x;
  v10 = v9 - y;
  v11 = v7 - y;
  v12 = v9 - x;
  if (a4 != 2)
  {
    v12 = x;
    v11 = y;
  }

  if (a4 == 3)
  {
    v13 = x;
  }

  else
  {
    v10 = v12;
    v13 = v11;
  }

  if (a4 == 4)
  {
    v10 = y;
  }

  else
  {
    v8 = v13;
  }

  result.y = v8;
  result.x = v10;
  return result;
}

- (void)registerListener:(id)a3 needsPhysicalOrientationEvents:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AXSSLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10000FAA0();
  }

  v8 = [(AXMTUtilities *)self _listeners];
  v9 = [v8 count];

  v10 = [(AXMTUtilities *)self _listeners];
  [v10 addPointer:v6];

  if (v4)
  {
    v11 = [(AXMTUtilities *)self _listenersForDeviceOrientationEvents];
    v12 = [v11 count];

    if (v12)
    {
LABEL_16:
      v29 = [(AXMTUtilities *)self _listenersForDeviceOrientationEvents];
      [v29 addPointer:v6];

      goto LABEL_17;
    }

    v13 = objc_alloc_init(NSOperationQueue);
    [(AXMTUtilities *)self set_motionManagerCallbackQueue:v13];

    v14 = [(AXMTUtilities *)self _motionManagerCallbackQueue];
    [v14 setMaxConcurrentOperationCount:1];

    v15 = [(AXMTUtilities *)self _motionManagerCallbackQueue];
    [v15 setQualityOfService:33];

    v16 = objc_alloc_init(CMMotionManager);
    [(AXMTUtilities *)self set_motionManager:v16];

    v17 = [(AXMTUtilities *)self _motionManager];
    v18 = [v17 isAccelerometerAvailable];

    if (v18)
    {
      v19 = [(AXMTUtilities *)self _motionManager];
      [v19 setAccelerometerUpdateInterval:1.0];

      v20 = [(AXMTUtilities *)self _motionManager];
      v21 = [(AXMTUtilities *)self _motionManagerCallbackQueue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10000D804;
      v37[3] = &unk_100048D30;
      v37[4] = self;
      [v20 startAccelerometerUpdatesToQueue:v21 withHandler:v37];

      v22 = [(AXMTUtilities *)self _motionManager];
      v23 = [v22 accelerometerData];
      if (v23)
      {
        v24 = v23;
        v25 = [(AXMTUtilities *)self orientationLocked];

        if ((v25 & 1) == 0)
        {
          v26 = [(AXMTUtilities *)self _motionManager];
          v27 = [v26 accelerometerData];
          [(AXMTUtilities *)self _handleAccelerometerDataUpdate:v27];

LABEL_11:
          goto LABEL_16;
        }
      }

      else
      {
      }

      v28 = AXSSLogForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_10000FBBC(self);
      }

      [(AXMTUtilities *)self setCurrentDeviceOrientation:[(AXMTUtilities *)self bksEffectiveOrientation]];
      goto LABEL_16;
    }

    v26 = AXSSLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10000FB3C();
    }

    goto LABEL_11;
  }

LABEL_17:
  if (!v9)
  {
    objc_initWeak(&location, self);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10000D880;
    v34[3] = &unk_100048D58;
    objc_copyWeak(&v35, &location);
    v30 = objc_retainBlock(v34);
    v31 = objc_alloc_init(FBSOrientationObserver);
    [(AXMTUtilities *)self set_orientationObserver:v31];

    v32 = [(AXMTUtilities *)self _orientationObserver];
    [v32 setHandler:v30];

    v33 = [(AXMTUtilities *)self _orientationObserver];
    -[AXMTUtilities setCurrentInterfaceOrientation:](self, "setCurrentInterfaceOrientation:", [v33 activeInterfaceOrientation]);

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }
}

- (void)unregisterListener:(id)a3
{
  v4 = a3;
  v5 = AXSSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000FD44();
  }

  v6 = [(AXMTUtilities *)self _listeners];
  if ([v6 count])
  {
    v7 = 0;
    while ([v6 pointerAtIndex:v7] != v4)
    {
      if (++v7 >= [v6 count])
      {
        goto LABEL_9;
      }
    }

    [v6 removePointerAtIndex:v7];
  }

LABEL_9:
  [v6 compact];
  v8 = [(AXMTUtilities *)self _listenersForDeviceOrientationEvents];
  if ([v8 count])
  {
    v9 = 0;
    while ([v8 pointerAtIndex:v9] != v4)
    {
      if (++v9 >= [v8 count])
      {
        goto LABEL_15;
      }
    }

    [v8 removePointerAtIndex:v9];
  }

LABEL_15:
  [v8 addPointer:0];
  [v8 compact];
  if (![v8 count])
  {
    [(AXMTUtilities *)self _tearDownMotionManager];
  }

  if (![v6 count])
  {
    v10 = [(AXMTUtilities *)self _orientationObserver];
    [v10 invalidate];

    [(AXMTUtilities *)self set_orientationObserver:0];
    [(AXMTUtilities *)self setCurrentInterfaceOrientation:0];
  }
}

- (void)_updateForDeviceOrientationOverride:(id)a3
{
  if (AXSSIsAppleInternalBuild())
  {
    if (qword_100054560 != -1)
    {
      sub_10000FDAC();
    }

    v4 = [qword_100054558 objectForKey:AXSSMotionTrackingDeviceOrientationOverridePreferenceKey];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = [v4 integerValue], (v5 - 1) <= 3))
    {
      v6 = v5;
      v7 = AXSSLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v10 = "[AXMTUtilities _updateForDeviceOrientationOverride:]";
        v11 = 2048;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: overriding device orientation to: %ld", buf, 0x16u);
      }

      [(AXMTUtilities *)self setIgnoreAccelerometerUpdatesForAutomation:1];
      [(AXMTUtilities *)self setCurrentDeviceOrientation:v6];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000DCFC;
      v8[3] = &unk_1000489C0;
      v8[4] = self;
      v8[5] = v6;
      dispatch_async(&_dispatch_main_q, v8);
    }

    else
    {
      [(AXMTUtilities *)self setIgnoreAccelerometerUpdatesForAutomation:0];
    }
  }
}

- (void)_handleAccelerometerDataUpdate:(id)a3
{
  v4 = a3;
  if (v4 && ![(AXMTUtilities *)self orientationLocked]&& (!AXSSIsAppleInternalBuild() || ![(AXMTUtilities *)self ignoreAccelerometerUpdatesForAutomation]))
  {
    [v4 acceleration];
    v6 = fabs(v5);
    v8 = fabs(v7);
    v9 = 3;
    if (v7 > 0.0)
    {
      v9 = 4;
    }

    if (v8 <= v6)
    {
      v9 = 0;
    }

    v10 = 2;
    if (v5 <= 0.0)
    {
      v10 = 1;
    }

    if (v6 > v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if ([(AXMTUtilities *)self currentDeviceOrientation]!= v11)
    {
      [(AXMTUtilities *)self setCurrentDeviceOrientation:v11];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000DE7C;
      block[3] = &unk_1000489C0;
      block[4] = self;
      block[5] = v11;
      dispatch_async(&_dispatch_main_q, block);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000DE88;
    v12[3] = &unk_100048948;
    v12[4] = self;
    v13 = v4;
    dispatch_async(&_dispatch_main_q, v12);
  }
}

- (void)_tearDownMotionManager
{
  v3 = [(AXMTUtilities *)self _motionManager];
  [v3 stopAccelerometerUpdates];

  [(AXMTUtilities *)self set_motionManager:0];
  [(AXMTUtilities *)self set_motionManagerCallbackQueue:0];

  [(AXMTUtilities *)self setCurrentDeviceOrientation:0];
}

- (void)_deviceOrientationChanged:(int64_t)a3
{
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000FDC0(self);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(AXMTUtilities *)self _listenersForDeviceOrientationEvents];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v10 axmtUtilities_deviceOrientationChanged:{-[AXMTUtilities currentDeviceOrientation](self, "currentDeviceOrientation")}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = [(AXMTUtilities *)self _listenersForDeviceOrientationEvents];
  [v11 compact];
}

- (void)_accelerometerDataUpdated:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(AXMTUtilities *)self _listenersForDeviceOrientationEvents];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v10 axmtUtilities_accelerometerDataUpdated:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = [(AXMTUtilities *)self _listenersForDeviceOrientationEvents];
  [v11 compact];
}

- (void)_interfaceOrientationChanged:(int64_t)a3
{
  [(AXMTUtilities *)self setCurrentInterfaceOrientation:a3];
  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000FE58(self);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(AXMTUtilities *)self _listeners];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v10 axmtUtilities_interfaceOrientationChanged:{-[AXMTUtilities currentInterfaceOrientation](self, "currentInterfaceOrientation")}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = [(AXMTUtilities *)self _listeners];
  [v11 compact];
}

- (void)_startMonitoringOrientationLockStatus
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10000E464;
  v9 = &unk_100048DA0;
  objc_copyWeak(&v10, &location);
  v4 = notify_register_dispatch("com.apple.backboardd.orientationlock", &self->_lockStatusToken, &_dispatch_main_q, &v6);

  if (v4)
  {
    v5 = AXSSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000FED8();
    }
  }

  [(AXMTUtilities *)self _checkBackboardOrientationLockStatus:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_checkBackboardOrientationLockStatus
{
  state64 = 0;
  if (notify_register_check("com.apple.backboardd.orientationlock", &dword_1000540C8))
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_1000540C8 == -1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    notify_get_state(dword_1000540C8, &state64);
    v5 = AXSSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v9 = state64;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Detected orientation lock status: %llu", buf, 0xCu);
    }

    v4 = state64 != 0;
  }

  [(AXMTUtilities *)self setOrientationLocked:v4];
}

- (void)_stopMonitoringOrientationLockStatus
{
  if (notify_is_valid_token([(AXMTUtilities *)self lockStatusToken]))
  {
    notify_cancel([(AXMTUtilities *)self lockStatusToken]);
  }

  [(AXMTUtilities *)self setLockStatusToken:0xFFFFFFFFLL];
}

- (void)_startMonitoringEffectiveDeviceOrientation
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10000E790;
  v9 = &unk_100048DA0;
  objc_copyWeak(&v10, &location);
  v4 = notify_register_dispatch("com.apple.backboardd.orientation", &self->_effectiveOrientationToken, &_dispatch_main_q, &v6);

  if (v4)
  {
    v5 = AXSSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000FF90();
    }
  }

  [(AXMTUtilities *)self _checkBackboardEffectiveDeviceOrientation:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_checkBackboardEffectiveDeviceOrientation
{
  if (notify_register_check("com.apple.backboardd.orientation", &dword_1000540CC))
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_1000540CC == -1;
  }

  if (!v3)
  {
    state64 = 0;
    notify_get_state(dword_1000540CC, &state64);
    [(AXMTUtilities *)self setBksEffectiveOrientation:state64];
    v4 = AXSSLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(AXMTUtilities *)self bksEffectiveOrientation];
      *buf = 136315394;
      v8 = "[AXMTUtilities _checkBackboardEffectiveDeviceOrientation]";
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: Detected effective orientation from backboard: %ld", buf, 0x16u);
    }
  }
}

- (void)_stopMonitoringEffectiveDeviceOrientation
{
  if (notify_is_valid_token([(AXMTUtilities *)self effectiveOrientationToken]))
  {
    notify_cancel([(AXMTUtilities *)self effectiveOrientationToken]);
  }

  [(AXMTUtilities *)self setEffectiveOrientationToken:0xFFFFFFFFLL];
}

- (void)_updateScreenBounds
{
  [(AXMTUtilities *)self set_screenBoundsUpdateAttempts:[(AXMTUtilities *)self _screenBoundsUpdateAttempts]+ 1];
  [(AXMTUtilities *)self _screenBoundsFromFrontBoard];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AXMTUtilities *)self _screenBounds];
  v27.origin.x = v11;
  v27.origin.y = v12;
  v27.size.width = v13;
  v27.size.height = v14;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  if (CGRectEqualToRect(v26, v27))
  {
    if ([(AXMTUtilities *)self _screenBoundsUpdateAttempts]< 0xA)
    {
      v24 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000EAD0;
      block[3] = &unk_1000488F8;
      block[4] = self;
      dispatch_after(v24, &_dispatch_main_q, block);
    }

    else
    {
      [(AXMTUtilities *)self set_screenBoundsUpdateAttempts:0];
      v15 = AXSSLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100010068(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }

  else
  {
    v23 = AXSSLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_10000FFD0(v4, v6, v8, v10);
    }

    [(AXMTUtilities *)self set_screenBounds:v4, v6, v8, v10];
    [(AXMTUtilities *)self set_screenBoundsUpdateAttempts:0];
  }
}

- (CGRect)_screenBoundsFromFrontBoard
{
  v2 = objc_alloc_init(FBSDisplayMonitor);
  v3 = [v2 mainConfiguration];
  v4 = [v3 currentMode];

  [v4 size];
  v6 = v5;
  v8 = v7;

  v9 = 0.0;
  v10 = 0.0;
  v11 = v6;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

+ (int64_t)errorCodeForFaceKitPayload:(id)a3 lastReportedFailureNumber:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_100054570 != -1)
  {
    sub_1000100E0();
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v7 = qword_100054588;
  v41 = qword_100054588;
  if (!qword_100054588)
  {
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_10000F698;
    v36 = &unk_100048BA8;
    v37 = &v38;
    v8 = sub_10000F6E8();
    v9 = dlsym(v8, "kCVAFaceTracking_DataFailure");
    *(v37[1] + 24) = v9;
    qword_100054588 = *(v37[1] + 24);
    v7 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v7)
  {
    goto LABEL_30;
  }

  v10 = [v5 objectForKeyedSubscript:*v7];
  if (v10)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v11 = qword_100054598;
    v41 = qword_100054598;
    if (!qword_100054598)
    {
      v33 = _NSConcreteStackBlock;
      v34 = 3221225472;
      v35 = sub_10000F85C;
      v36 = &unk_100048BA8;
      v37 = &v38;
      v12 = sub_10000F6E8();
      v13 = dlsym(v12, "kCVAFaceTracking_DataFailureImageTooDark");
      *(v37[1] + 24) = v13;
      qword_100054598 = *(v37[1] + 24);
      v11 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (!v11)
    {
      goto LABEL_30;
    }

    v14 = [v10 objectForKeyedSubscript:*v11];
    if ([v14 BOOLValue])
    {
      v30[3] = 5;
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v15 = qword_1000545A0;
    v41 = qword_1000545A0;
    if (!qword_1000545A0)
    {
      v33 = _NSConcreteStackBlock;
      v34 = 3221225472;
      v35 = sub_10000F8AC;
      v36 = &unk_100048BA8;
      v37 = &v38;
      v16 = sub_10000F6E8();
      v17 = dlsym(v16, "kCVAFaceTracking_DataFailureSensorCovered");
      *(v37[1] + 24) = v17;
      qword_1000545A0 = *(v37[1] + 24);
      v15 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (!v15)
    {
      goto LABEL_30;
    }

    v18 = [v10 objectForKeyedSubscript:*v15];
    if ([v18 BOOLValue])
    {
      v30[3] = 6;
    }
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v19 = qword_1000545A8;
  v41 = qword_1000545A8;
  if (!qword_1000545A8)
  {
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_10000F8FC;
    v36 = &unk_100048BA8;
    v37 = &v38;
    v20 = sub_10000F6E8();
    v21 = dlsym(v20, "kCVAFaceTracking_TrackedFacesArray");
    *(v37[1] + 24) = v21;
    qword_1000545A8 = *(v37[1] + 24);
    v19 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v19)
  {
LABEL_30:
    dlerror();
    result = abort_report_np();
    __break(1u);
    return result;
  }

  v22 = [v5 objectForKeyedSubscript:*v19];
  v23 = v22;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  LODWORD(v36) = 0;
  v24 = v30;
  if (v22 && !v30[3])
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000F104;
    v28[3] = &unk_100048DE8;
    v28[4] = &v33;
    v28[5] = &v29;
    [v22 enumerateObjectsUsingBlock:v28];
    v24 = v30;
  }

  v25 = v24[3];
  if (v6 && !v25)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000F2DC;
    v27[3] = &unk_100048E10;
    v27[4] = &v29;
    v27[5] = [v6 integerValue];
    [qword_100054568 enumerateObjectsUsingBlock:v27];
    v24 = v30;
    v25 = v30[3];
  }

  if (!v25)
  {
    v25 = 1;
    v24[3] = 1;
  }

  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v29, 8);
  return v25;
}

- (CGRect)_screenBounds
{
  x = self->__screenBounds.origin.x;
  y = self->__screenBounds.origin.y;
  width = self->__screenBounds.size.width;
  height = self->__screenBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end