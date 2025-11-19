@interface AXLocalizationCaptionMonitor
+ (id)monitor;
- (AXLocalizationCaptionMonitor)init;
- (void)_handleTouchEvent:(id)a3;
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

- (void)_handleTouchEvent:(id)a3
{
  v21 = a3;
  v4 = [v21 handInfo];
  v5 = [v4 eventType];

  if (v5 == 1)
  {
    v6 = [AXDispatchTimer alloc];
    v7 = dispatch_get_global_queue(0, 0);
    v8 = [v6 initWithTargetSerialQueue:v7];
    downTimer = self->_downTimer;
    self->_downTimer = v8;

    [(AXDispatchTimer *)self->_downTimer afterDelay:&stru_82D0 processBlock:1.0];
  }

  else if (([v21 isLift] & 1) != 0 || (objc_msgSend(v21, "isCancel") & 1) != 0 || objc_msgSend(v21, "isInRangeLift"))
  {
    [(AXDispatchTimer *)self->_downTimer cancel];
    v10 = self->_downTimer;
    self->_downTimer = 0;
  }

  v11 = [v21 handInfo];
  if ([v11 eventType] == 1)
  {
  }

  else
  {
    v12 = [v21 handInfo];
    v13 = [v12 eventType];

    if (v13 != 2)
    {
      v20 = v21;
      goto LABEL_14;
    }
  }

  v14 = [v21 denormalizedEventRepresentation:0 descale:1];

  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
  v15 = [v14 handInfo];
  v16 = [v15 paths];
  v17 = [v16 firstPath];
  [v17 pathLocation];
  v18 = [AXElement elementAtCoordinate:0 withVisualPadding:?];

  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPopReason();
  if (v18)
  {
    v19 = [(AXLocalizationCaptionMonitor *)self elementCallback];
    (v19)[2](v19, v18);
  }

  v20 = v14;
LABEL_14:
}

- (void)startMonitoring
{
  v3 = [(AXLocalizationCaptionMonitor *)self processor];

  if (!v3)
  {
    [(AXLocalizationCaptionMonitor *)self _initializeAccessibility];
    v4 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"LocQACaptions" HIDEventTapPriority:70 systemEventTapIdentifier:0 systemEventTapPriority:10];
    [(AXLocalizationCaptionMonitor *)self setProcessor:v4];

    objc_initWeak(&location, self);
    objc_copyWeak(&v9, &location);
    v5 = [(AXLocalizationCaptionMonitor *)self processor:_NSConcreteStackBlock];
    [v5 setHIDEventHandler:&v8];

    v6 = [(AXLocalizationCaptionMonitor *)self processor];
    [v6 setHIDEventFilterMask:1];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  v7 = [(AXLocalizationCaptionMonitor *)self processor];
  [v7 beginHandlingHIDEventsForReason:@"LocQACaptions"];
}

- (void)stopMonitoring
{
  v3 = [(AXLocalizationCaptionMonitor *)self processor];
  v4 = [v3 isHandlingHIDEvents];

  if (v4)
  {
    v5 = [(AXLocalizationCaptionMonitor *)self processor];
    [v5 endHandlingHIDEventsForReason:@"LocQACaptions"];

    [(AXLocalizationCaptionMonitor *)self _endAccessibility];
  }
}

@end