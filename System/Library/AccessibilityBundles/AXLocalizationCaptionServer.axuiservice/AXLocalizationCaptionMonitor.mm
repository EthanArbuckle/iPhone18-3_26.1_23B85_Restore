@interface AXLocalizationCaptionMonitor
+ (id)monitor;
- (AXLocalizationCaptionMonitor)init;
- (void)_handleTouchEvent:(id)event;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation AXLocalizationCaptionMonitor

+ (id)monitor
{
  if (qword_D3C0 != -1)
  {
    sub_42B8();
  }

  v3 = qword_D3B8;

  return v3;
}

- (AXLocalizationCaptionMonitor)init
{
  v6.receiver = self;
  v6.super_class = AXLocalizationCaptionMonitor;
  v2 = [(AXLocalizationCaptionMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AXLocalizationCaptionMonitor", 0);
    [(AXLocalizationCaptionMonitor *)v2 setHandlingQueue:v3];

    v4 = v2;
  }

  return v2;
}

- (void)_handleTouchEvent:(id)event
{
  eventCopy = event;
  handInfo = [eventCopy handInfo];
  eventType = [handInfo eventType];

  if (eventType == 1)
  {
    v6 = [AXDispatchTimer alloc];
    v7 = dispatch_get_global_queue(0, 0);
    v8 = [v6 initWithTargetSerialQueue:v7];
    downTimer = self->_downTimer;
    self->_downTimer = v8;

    [(AXDispatchTimer *)self->_downTimer afterDelay:&stru_82D0 processBlock:1.0];
  }

  else if (([eventCopy isLift] & 1) != 0 || (objc_msgSend(eventCopy, "isCancel") & 1) != 0 || objc_msgSend(eventCopy, "isInRangeLift"))
  {
    [(AXDispatchTimer *)self->_downTimer cancel];
    v10 = self->_downTimer;
    self->_downTimer = 0;
  }

  handInfo2 = [eventCopy handInfo];
  if ([handInfo2 eventType] == 1)
  {
  }

  else
  {
    handInfo3 = [eventCopy handInfo];
    eventType2 = [handInfo3 eventType];

    if (eventType2 != 2)
    {
      v20 = eventCopy;
      goto LABEL_14;
    }
  }

  v14 = [eventCopy denormalizedEventRepresentation:0 descale:1];

  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
  handInfo4 = [v14 handInfo];
  paths = [handInfo4 paths];
  firstPath = [paths firstPath];
  [firstPath pathLocation];
  v18 = [AXElement elementAtCoordinate:0 withVisualPadding:?];

  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPopReason();
  if (v18)
  {
    elementCallback = [(AXLocalizationCaptionMonitor *)self elementCallback];
    (elementCallback)[2](elementCallback, v18);
  }

  v20 = v14;
LABEL_14:
}

- (void)startMonitoring
{
  processor = [(AXLocalizationCaptionMonitor *)self processor];

  if (!processor)
  {
    [(AXLocalizationCaptionMonitor *)self _initializeAccessibility];
    v4 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"LocQACaptions" HIDEventTapPriority:70 systemEventTapIdentifier:0 systemEventTapPriority:10];
    [(AXLocalizationCaptionMonitor *)self setProcessor:v4];

    objc_initWeak(&location, self);
    objc_copyWeak(&v9, &location);
    v5 = [(AXLocalizationCaptionMonitor *)self processor:_NSConcreteStackBlock];
    [v5 setHIDEventHandler:&v8];

    processor2 = [(AXLocalizationCaptionMonitor *)self processor];
    [processor2 setHIDEventFilterMask:1];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  processor3 = [(AXLocalizationCaptionMonitor *)self processor];
  [processor3 beginHandlingHIDEventsForReason:@"LocQACaptions"];
}

- (void)stopMonitoring
{
  processor = [(AXLocalizationCaptionMonitor *)self processor];
  isHandlingHIDEvents = [processor isHandlingHIDEvents];

  if (isHandlingHIDEvents)
  {
    processor2 = [(AXLocalizationCaptionMonitor *)self processor];
    [processor2 endHandlingHIDEventsForReason:@"LocQACaptions"];

    [(AXLocalizationCaptionMonitor *)self _endAccessibility];
  }
}

@end