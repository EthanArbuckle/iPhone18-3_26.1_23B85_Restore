@interface SCATAccessibilityEventInputSource
- (BOOL)_handleAccessibilityEvent:(id)event;
- (BOOL)_handleAutomationEvent:(int64_t)event;
- (BOOL)_handleBackTapEvent:(int64_t)event;
- (BOOL)_handleHandGestureEvent:(int64_t)event;
- (BOOL)_handleSoundEvent:(int64_t)event;
- (SCATAccessibilityEventInputSource)init;
- (id)_actionIdentifierForSwitch:(id)switch;
- (id)_axSwitchForAccessibilitySwitchSource:(id)source eventUsagePage:(int64_t)page eventUsage:(int64_t)usage;
- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold;
- (void)_logEventToCoreAnalytics:(int64_t)analytics;
- (void)_setupLogging;
- (void)_startAccessibilityEventProcessor;
- (void)_stopAccessibilityEventProcessor;
- (void)dealloc;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)startRunning;
- (void)stopRunning;
- (void)updateWithSwitches:(id)switches recipe:(id)recipe;
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

  eventProcessor = [(SCATAccessibilityEventInputSource *)self eventProcessor];
  [eventProcessor setHIDEventFilterMask:32];

  objc_initWeak(&location, self);
  objc_copyWeak(&v8, &location);
  v5 = [(SCATAccessibilityEventInputSource *)self eventProcessor:_NSConcreteStackBlock];
  [v5 setHIDEventHandler:&v7];

  eventProcessor2 = [(SCATAccessibilityEventInputSource *)self eventProcessor];
  [eventProcessor2 beginHandlingHIDEventsForReason:@"Switch Control Accessibility Event Handler"];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_stopAccessibilityEventProcessor
{
  eventProcessor = [(SCATAccessibilityEventInputSource *)self eventProcessor];
  [eventProcessor endHandlingHIDEventsForReason:@"Switch Control Accessibility Event Handler"];

  [(SCATAccessibilityEventInputSource *)self setEventProcessor:0];
}

- (BOOL)_handleAccessibilityEvent:(id)event
{
  accessibilityData = [event accessibilityData];
  if ([accessibilityData page] != 1)
  {
    if ([accessibilityData page] == 3)
    {
      if ([accessibilityData usage] - 1 <= 0xD)
      {
        v5 = -[SCATAccessibilityEventInputSource _handleSoundEvent:](self, "_handleSoundEvent:", [accessibilityData usage]);
        goto LABEL_3;
      }

      v8 = SWCHLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10012A888(accessibilityData, v8);
      }
    }

    else
    {
      if ([accessibilityData page] == 5)
      {
        v5 = -[SCATAccessibilityEventInputSource _handleAutomationEvent:](self, "_handleAutomationEvent:", [accessibilityData usage]);
        goto LABEL_3;
      }

      if ([accessibilityData page] == 2)
      {
        v5 = -[SCATAccessibilityEventInputSource _handleHandGestureEvent:](self, "_handleHandGestureEvent:", [accessibilityData usage]);
        goto LABEL_3;
      }
    }

    v6 = 0;
    goto LABEL_4;
  }

  v5 = -[SCATAccessibilityEventInputSource _handleBackTapEvent:](self, "_handleBackTapEvent:", [accessibilityData usage]);
LABEL_3:
  v6 = v5;
LABEL_4:

  return v6;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  v4.receiver = self;
  v4.super_class = SCATAccessibilityEventInputSource;
  [(SCATInputSource *)&v4 setDelegate:delegate queue:queue];
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

- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold
{
  identifierCopy = identifier;
  delegate = [(SCATInputSource *)self delegate];
  queue = [(SCATInputSource *)self queue];
  if (queue && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009B144;
    v12[3] = &unk_1001D5B70;
    v13 = delegate;
    selfCopy = self;
    v11 = identifierCopy;
    v15 = v11;
    startCopy = start;
    holdCopy = hold;
    [queue performAsynchronousWritingBlock:v12];
    HNDTestingSetLastFiredAction(v11);
  }
}

- (id)_actionIdentifierForSwitch:(id)switch
{
  switchCopy = switch;
  actions = [(SCATInputSource *)self actions];
  name = [switchCopy name];
  v7 = [actions objectForKeyedSubscript:name];

  if (v7)
  {
    actions2 = [(SCATInputSource *)self actions];
    name2 = [switchCopy name];
    v10 = [actions2 objectForKeyedSubscript:name2];
  }

  else
  {
    v10 = [SCATActionItem fromSwitch:switchCopy longPress:0];
  }

  return v10;
}

- (id)_axSwitchForAccessibilitySwitchSource:(id)source eventUsagePage:(int64_t)page eventUsage:(int64_t)usage
{
  sourceCopy = source;
  v8 = +[AXSettings sharedInstance];
  assistiveTouchSwitches = [v8 assistiveTouchSwitches];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = assistiveTouchSwitches;
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
        source = [v15 source];
        if ([source isEqualToString:sourceCopy] && objc_msgSend(v15, "accessibilityEventUsagePage") == page)
        {
          accessibilityEventUsage = [v15 accessibilityEventUsage];

          if (accessibilityEventUsage == usage)
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

- (BOOL)_handleBackTapEvent:(int64_t)event
{
  v4 = [(SCATAccessibilityEventInputSource *)self _axSwitchForAccessibilitySwitchSource:SCATSwitchSourceBackTap eventUsagePage:1 eventUsage:event];
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

- (BOOL)_handleSoundEvent:(int64_t)event
{
  v5 = [(SCATAccessibilityEventInputSource *)self _axSwitchForAccessibilitySwitchSource:SCATSwitchSourceSound eventUsagePage:3 eventUsage:event];
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
    block[5] = event;
    dispatch_async(analyticsQueue, block);

    v9 = 1;
  }

  else
  {
    v7 = SWCHLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      action = [v6 action];
      v16 = 2048;
      eventCopy = event;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_handleSoundSwitch received unknown actionID %ld for switch type %lu", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)_logEventToCoreAnalytics:(int64_t)analytics
{
  v4 = 1 << analytics;
  if ((self->_analyticsTracker & v4) != 0)
  {
    v5 = SWCHLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A900(analytics, v5);
    }
  }

  else
  {
    if ((analytics - 1) > 0xD)
    {
      return;
    }

    v7 = off_1001D6160[analytics - 1];
    AnalyticsSendEventLazy();
    self->_analyticsTracker |= v4;
    v5 = v7;
  }
}

- (BOOL)_handleAutomationEvent:(int64_t)event
{
  v4 = [(SCATAccessibilityEventInputSource *)self _axSwitchForAccessibilitySwitchSource:SCATSwitchSourceAutomation eventUsagePage:5 eventUsage:event];
  if (v4)
  {
    v7 = [(SCATAccessibilityEventInputSource *)self _actionIdentifierForSwitch:v4];
    v8 = v4;
    v5 = v7;
    AXPerformBlockOnMainThread();
  }

  return v4 != 0;
}

- (BOOL)_handleHandGestureEvent:(int64_t)event
{
  v4 = [(SCATAccessibilityEventInputSource *)self _axSwitchForAccessibilitySwitchSource:SCATSwitchSourceHandGestures eventUsagePage:2 eventUsage:event];
  if (v4)
  {
    v7 = [(SCATAccessibilityEventInputSource *)self _actionIdentifierForSwitch:v4];
    v8 = v4;
    v5 = v7;
    AXPerformBlockOnMainThread();
  }

  return v4 != 0;
}

- (void)updateWithSwitches:(id)switches recipe:(id)recipe
{
  recipeCopy = recipe;
  v16.receiver = self;
  v16.super_class = SCATAccessibilityEventInputSource;
  switchesCopy = switches;
  [(SCATInputSource *)&v16 updateWithSwitches:switchesCopy recipe:recipeCopy];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10009BEB8;
  v13 = &unk_1001D5DA8;
  v14 = recipeCopy;
  v15 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v8 = v15;
  v9 = recipeCopy;
  [switchesCopy enumerateObjectsUsingBlock:&v10];

  [(SCATInputSource *)self setActions:v8, v10, v11, v12, v13];
}

@end