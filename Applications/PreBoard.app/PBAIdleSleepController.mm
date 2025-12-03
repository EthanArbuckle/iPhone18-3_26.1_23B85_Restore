@interface PBAIdleSleepController
+ (id)sharedController;
- (PBAIdleSleepController)init;
- (void)_allowIdleSleep;
- (void)_preventIdleSleep;
- (void)_preventIdleSleepForNumberOfSeconds:(float)seconds;
- (void)_setHIDUILockedState:(BOOL)state;
- (void)_undimDisplayForce;
- (void)dimDisplay;
- (void)resetIdleTimerAndUndim:(BOOL)undim;
- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion;
- (void)systemSleepMonitor:(id)monitor sleepRequestedWithResult:(id)result;
- (void)systemSleepMonitorDidWakeFromSleep:(id)sleep;
- (void)systemSleepMonitorSleepRequestAborted:(id)aborted;
- (void)systemSleepMonitorWillWakeFromSleep:(id)sleep;
- (void)undimDisplay;
@end

@implementation PBAIdleSleepController

+ (id)sharedController
{
  if (qword_100025780 != -1)
  {
    sub_10000D1EC();
  }

  v3 = qword_100025778;

  return v3;
}

- (PBAIdleSleepController)init
{
  v19.receiver = self;
  v19.super_class = PBAIdleSleepController;
  v2 = [(PBAIdleSleepController *)&v19 init];
  if (v2)
  {
    v3 = [BLSHLocalOnlyServiceConfiguration configurationWithFadeInDuration:0.0 fadeOutDuration:0.1];
    v4 = [BLSHService startLocalOnlyServiceWithConfiguration:v3];
    backlightService = v2->_backlightService;
    v2->_backlightService = v4;

    v6 = objc_alloc_init(AWAttentionAwarenessConfiguration);
    [v6 setIdentifier:@"PBAIdleTimer"];
    [v6 setEventMask:3967];
    [v6 setAttentionLostTimeout:30.0];
    v7 = objc_alloc_init(AWAttentionAwarenessClient);
    attentionAwarenessClient = v2->_attentionAwarenessClient;
    v2->_attentionAwarenessClient = v7;

    [(AWAttentionAwarenessClient *)v2->_attentionAwarenessClient setConfiguration:v6 shouldReset:1];
    objc_initWeak(&location, v2);
    v9 = v2->_attentionAwarenessClient;
    v10 = &_dispatch_main_q;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100005908;
    v16 = &unk_10001C7C0;
    objc_copyWeak(&v17, &location);
    [(AWAttentionAwarenessClient *)v9 setEventHandlerWithQueue:&_dispatch_main_q block:&v13];

    v11 = [SWSystemSleepMonitor monitorUsingMainQueue:v13];
    [v11 addObserver:v2];

    [(PBAIdleSleepController *)v2 setDisplayDim:0];
    [(PBAIdleSleepController *)v2 _undimDisplayForce];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_setHIDUILockedState:(BOOL)state
{
  if (byte_100025340 != state)
  {
    BKSHIDServicesSetHIDUILockedStateWithSource();
    byte_100025340 = state;
  }
}

- (void)_undimDisplayForce
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PBAScreenWillUnblankNotification" object:0];

  v4 = sub_10000A054();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Undimming display", buf, 2u);
  }

  v5 = [[BLSBacklightChangeRequest alloc] initWithRequestedActivityState:1 explanation:@"PreBoard Force Undim" timestamp:mach_continuous_time() sourceEvent:0 sourceEventMetadata:0];
  v6 = +[BLSBacklight sharedBacklight];
  v7 = [v6 performChangeRequest:v5];

  BKSHIDServicesSetBacklightFactorWithFadeDuration();
  [(PBAIdleSleepController *)self setDisplayDim:0];
  attentionAwarenessClient = self->_attentionAwarenessClient;
  v19 = 0;
  v9 = [(AWAttentionAwarenessClient *)attentionAwarenessClient resumeWithError:&v19];
  v10 = v19;
  if ((v9 & 1) == 0)
  {
    v11 = sub_10000A054();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000D200(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  [(PBAIdleSleepController *)self _preventIdleSleep];
  [(PBAIdleSleepController *)self _setHIDUILockedState:0];
  v18 = +[NSNotificationCenter defaultCenter];
  [v18 postNotificationName:@"PBAScreenDidUnblankNotification" object:0];
}

- (void)undimDisplay
{
  if (self->_displayDim)
  {
    [(PBAIdleSleepController *)self _undimDisplayForce];
  }
}

- (void)dimDisplay
{
  if (!self->_displayDim)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"PBAScreenWillBlankNotification" object:0];

    v4 = sub_10000A054();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dimming display", buf, 2u);
    }

    v5 = [[BLSBacklightChangeRequest alloc] initWithRequestedActivityState:0 explanation:@"PreBoard Dim Display" timestamp:mach_continuous_time() sourceEvent:0 sourceEventMetadata:0];
    v6 = +[BLSBacklight sharedBacklight];
    v7 = [v6 performChangeRequest:v5];

    [(PBAIdleSleepController *)self setDisplayDim:1];
    attentionAwarenessClient = self->_attentionAwarenessClient;
    v20 = 0;
    v9 = [(AWAttentionAwarenessClient *)attentionAwarenessClient suspendWithError:&v20];
    v10 = v20;
    if ((v9 & 1) == 0)
    {
      v12 = sub_10000A054();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10000D26C(v10, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    LODWORD(v11) = 1.0;
    [(PBAIdleSleepController *)self _preventIdleSleepForNumberOfSeconds:v11];
    [(PBAIdleSleepController *)self _setHIDUILockedState:1];
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 postNotificationName:@"PBAScreenDidBlankNotification" object:0];
  }
}

- (void)_allowIdleSleep
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_allowIdleSleep" object:0];

  [(PBAIdleSleepController *)self setPreventIdleSleep:0 forReason:@"backlight"];
}

- (void)_preventIdleSleep
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_allowIdleSleep" object:0];

  [(PBAIdleSleepController *)self setPreventIdleSleep:1 forReason:@"backlight"];
}

- (void)_preventIdleSleepForNumberOfSeconds:(float)seconds
{
  if (self->_displayDim)
  {
    [(PBAIdleSleepController *)self _preventIdleSleep];
    v6 = NSRunLoopCommonModes;
    v5 = [NSArray arrayWithObjects:&v6 count:1];
    [(PBAIdleSleepController *)self performSelector:"_allowIdleSleep" withObject:0 afterDelay:v5 inModes:seconds];
  }
}

- (void)resetIdleTimerAndUndim:(BOOL)undim
{
  if (undim)
  {
    [(PBAIdleSleepController *)self undimDisplay];
  }

  attentionAwarenessClient = self->_attentionAwarenessClient;
  v14 = 0;
  v5 = [(AWAttentionAwarenessClient *)attentionAwarenessClient resetAttentionLostTimeoutWithError:&v14];
  v6 = v14;
  if ((v5 & 1) == 0)
  {
    v7 = sub_10000A054();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000D2D8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (void)systemSleepMonitor:(id)monitor sleepRequestedWithResult:(id)result
{
  resultCopy = result;
  v5 = sub_10000A054();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Got kIOMessageCanSystemSleep", v7, 2u);
  }

  v6 = resultCopy[2](resultCopy, 1, 0);
}

- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_10000A054();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Got kIOMessageSystemWillSleep", v6, 2u);
  }

  completionCopy[2](completionCopy);
}

- (void)systemSleepMonitorSleepRequestAborted:(id)aborted
{
  v3 = sub_10000A054();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Got kIOMessageSystemWillNotSleep", v4, 2u);
  }
}

- (void)systemSleepMonitorWillWakeFromSleep:(id)sleep
{
  v3 = sub_10000A054();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Got kIOMessageSystemWillPowerOn", v4, 2u);
  }
}

- (void)systemSleepMonitorDidWakeFromSleep:(id)sleep
{
  v3 = sub_10000A054();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Got kIOMessageSystemHasPoweredOn", v4, 2u);
  }
}

@end