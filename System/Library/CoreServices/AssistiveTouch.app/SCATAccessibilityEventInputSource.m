@interface SCATAccessibilityEventInputSource
- (BOOL)_handleAccessibilityEvent:(id)a3;
- (BOOL)_handleAutomationEvent:(int64_t)a3;
- (BOOL)_handleBackTapEvent:(int64_t)a3;
- (BOOL)_handleHandGestureEvent:(int64_t)a3;
- (BOOL)_handleSoundEvent:(int64_t)a3;
- (SCATAccessibilityEventInputSource)init;
- (id)_actionIdentifierForSwitch:(id)a3;
- (id)_axSwitchForAccessibilitySwitchSource:(id)a3 eventUsagePage:(int64_t)a4 eventUsage:(int64_t)a5;
- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5;
- (void)_logEventToCoreAnalytics:(int64_t)a3;
- (void)_setupLogging;
- (void)_startAccessibilityEventProcessor;
- (void)_stopAccessibilityEventProcessor;
- (void)dealloc;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)startRunning;
- (void)stopRunning;
- (void)updateWithSwitches:(id)a3 recipe:(id)a4;
@end

@implementation SCATAccessibilityEventInputSource

- (SCATAccessibilityEventInputSource)init
{
  v5.receiver = self;
  v5.super_class = SCATAccessibilityEventInputSource;
  v2 = [(SCATInputSource *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SCATAccessibilityEventInputSource *)v2 _startAccessibilityEventProcessor];
    [(SCATAccessibilityEventInputSource *)v3 _setupLogging];
  }

  return v3;
}

- (void)_setupLogging
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v4 = dispatch_queue_create("com.apple.accessibility.scat.voice_triggers.analytics", v3);
  analyticsQueue = self->_analyticsQueue;
  self->_analyticsQueue = v4;

  self->_analyticsTracker = 0;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009AAE0;
  v8[3] = &unk_1001D6118;
  objc_copyWeak(&v9, &location);
  v6 = [NSTimer timerWithTimeInterval:1 repeats:v8 block:86400.0];
  analyticsTimer = self->_analyticsTimer;
  self->_analyticsTimer = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_startAccessibilityEventProcessor
{
  v3 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"Switch Control" HIDEventTapPriority:25 systemEventTapIdentifier:0 systemEventTapPriority:25];
  [(SCATAccessibilityEventInputSource *)self setEventProcessor:v3];

  v4 = [(SCATAccessibilityEventInputSource *)self eventProcessor];
  [v4 setHIDEventFilterMask:32];

  objc_initWeak(&location, self);
  objc_copyWeak(&v8, &location);
  v5 = [(SCATAccessibilityEventInputSource *)self eventProcessor:_NSConcreteStackBlock];
  [v5 setHIDEventHandler:&v7];

  v6 = [(SCATAccessibilityEventInputSource *)self eventProcessor];
  [v6 beginHandlingHIDEventsForReason:@"Switch Control Accessibility Event Handler"];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_stopAccessibilityEventProcessor
{
  v3 = [(SCATAccessibilityEventInputSource *)self eventProcessor];
  [v3 endHandlingHIDEventsForReason:@"Switch Control Accessibility Event Handler"];

  [(SCATAccessibilityEventInputSource *)self setEventProcessor:0];
}

- (BOOL)_handleAccessibilityEvent:(id)a3
{
  v4 = [a3 accessibilityData];
  if ([v4 page] != 1)
  {
    if ([v4 page] == 3)
    {
      if ([v4 usage] - 1 <= 0xD)
      {
        v5 = -[SCATAccessibilityEventInputSource _handleSoundEvent:](self, "_handleSoundEvent:", [v4 usage]);
        goto LABEL_3;
      }

      v8 = SWCHLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10012A888(v4, v8);
      }
    }

    else
    {
      if ([v4 page] == 5)
      {
        v5 = -[SCATAccessibilityEventInputSource _handleAutomationEvent:](self, "_handleAutomationEvent:", [v4 usage]);
        goto LABEL_3;
      }

      if ([v4 page] == 2)
      {
        v5 = -[SCATAccessibilityEventInputSource _handleHandGestureEvent:](self, "_handleHandGestureEvent:", [v4 usage]);
        goto LABEL_3;
      }
    }

    v6 = 0;
    goto LABEL_4;
  }

  v5 = -[SCATAccessibilityEventInputSource _handleBackTapEvent:](self, "_handleBackTapEvent:", [v4 usage]);
LABEL_3:
  v6 = v5;
LABEL_4:

  return v6;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v4.receiver = self;
  v4.super_class = SCATAccessibilityEventInputSource;
  [(SCATInputSource *)&v4 setDelegate:a3 queue:a4];
}

- (void)startRunning
{
  if (![(SCATInputSource *)self isRunning])
  {

    [(SCATInputSource *)self setRunning:1];
  }
}

- (void)stopRunning
{
  if ([(SCATInputSource *)self isRunning])
  {

    [(SCATInputSource *)self setRunning:0];
  }
}

- (void)dealloc
{
  [(SCATAccessibilityEventInputSource *)self _stopAccessibilityEventProcessor];
  [(NSTimer *)self->_analyticsTimer invalidate];
  [(SCATAccessibilityEventInputSource *)self stopRunning];
  v3.receiver = self;
  v3.super_class = SCATAccessibilityEventInputSource;
  [(SCATAccessibilityEventInputSource *)&v3 dealloc];
}

- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5
{
  v8 = a3;
  v9 = [(SCATInputSource *)self delegate];
  v10 = [(SCATInputSource *)self queue];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009B144;
    v12[3] = &unk_1001D5B70;
    v13 = v9;
    v14 = self;
    v11 = v8;
    v15 = v11;
    v16 = a4;
    v17 = a5;
    [v10 performAsynchronousWritingBlock:v12];
    HNDTestingSetLastFiredAction(v11);
  }
}

- (id)_actionIdentifierForSwitch:(id)a3
{
  v4 = a3;
  v5 = [(SCATInputSource *)self actions];
  v6 = [v4 name];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [(SCATInputSource *)self actions];
    v9 = [v4 name];
    v10 = [v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = [SCATActionItem fromSwitch:v4 longPress:0];
  }

  return v10;
}

- (id)_axSwitchForAccessibilitySwitchSource:(id)a3 eventUsagePage:(int64_t)a4 eventUsage:(int64_t)a5
{
  v7 = a3;
  v8 = +[AXSettings sharedInstance];
  v9 = [v8 assistiveTouchSwitches];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 source];
        if ([v16 isEqualToString:v7] && objc_msgSend(v15, "accessibilityEventUsagePage") == a4)
        {
          v17 = [v15 accessibilityEventUsage];

          if (v17 == a5)
          {
            v18 = v15;
            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (BOOL)_handleBackTapEvent:(int64_t)a3
{
  v4 = [(SCATAccessibilityEventInputSource *)self _axSwitchForAccessibilitySwitchSource:SCATSwitchSourceBackTap eventUsagePage:1 eventUsage:a3];
  v5 = v4;
  if (v4 && [v4 isEnabled])
  {
    v9 = [(SCATAccessibilityEventInputSource *)self _actionIdentifierForSwitch:v5];
    v10 = v5;
    v6 = v9;
    AXPerformBlockOnMainThread();

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_handleSoundEvent:(int64_t)a3
{
  v5 = [(SCATAccessibilityEventInputSource *)self _axSwitchForAccessibilitySwitchSource:SCATSwitchSourceSound eventUsagePage:3 eventUsage:a3];
  v6 = v5;
  if (v5 && [v5 isEnabled])
  {
    [(SCATAccessibilityEventInputSource *)self _actionIdentifierForSwitch:v6];
    block[6] = _NSConcreteStackBlock;
    block[7] = 3221225472;
    block[8] = sub_10009B7A8;
    block[9] = &unk_1001D3C80;
    v12 = block[10] = self;
    v13 = v6;
    v7 = v12;
    AXPerformBlockOnMainThread();
    analyticsQueue = self->_analyticsQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009B880;
    block[3] = &unk_1001D4430;
    block[4] = self;
    block[5] = a3;
    dispatch_async(analyticsQueue, block);

    v9 = 1;
  }

  else
  {
    v7 = SWCHLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v15 = [v6 action];
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_handleSoundSwitch received unknown actionID %ld for switch type %lu", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)_logEventToCoreAnalytics:(int64_t)a3
{
  v4 = 1 << a3;
  if ((self->_analyticsTracker & v4) != 0)
  {
    v5 = SWCHLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A900(a3, v5);
    }
  }

  else
  {
    if ((a3 - 1) > 0xD)
    {
      return;
    }

    v7 = off_1001D6160[a3 - 1];
    AnalyticsSendEventLazy();
    self->_analyticsTracker |= v4;
    v5 = v7;
  }
}

- (BOOL)_handleAutomationEvent:(int64_t)a3
{
  v4 = [(SCATAccessibilityEventInputSource *)self _axSwitchForAccessibilitySwitchSource:SCATSwitchSourceAutomation eventUsagePage:5 eventUsage:a3];
  if (v4)
  {
    v7 = [(SCATAccessibilityEventInputSource *)self _actionIdentifierForSwitch:v4];
    v8 = v4;
    v5 = v7;
    AXPerformBlockOnMainThread();
  }

  return v4 != 0;
}

- (BOOL)_handleHandGestureEvent:(int64_t)a3
{
  v4 = [(SCATAccessibilityEventInputSource *)self _axSwitchForAccessibilitySwitchSource:SCATSwitchSourceHandGestures eventUsagePage:2 eventUsage:a3];
  if (v4)
  {
    v7 = [(SCATAccessibilityEventInputSource *)self _actionIdentifierForSwitch:v4];
    v8 = v4;
    v5 = v7;
    AXPerformBlockOnMainThread();
  }

  return v4 != 0;
}

- (void)updateWithSwitches:(id)a3 recipe:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = SCATAccessibilityEventInputSource;
  v7 = a3;
  [(SCATInputSource *)&v16 updateWithSwitches:v7 recipe:v6];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10009BEB8;
  v13 = &unk_1001D5DA8;
  v14 = v6;
  v15 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v8 = v15;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:&v10];

  [(SCATInputSource *)self setActions:v8, v10, v11, v12, v13];
}

@end