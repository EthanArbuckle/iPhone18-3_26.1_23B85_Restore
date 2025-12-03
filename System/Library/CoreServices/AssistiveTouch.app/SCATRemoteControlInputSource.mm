@interface SCATRemoteControlInputSource
- (BOOL)_handleAXEvent:(id)event;
- (BOOL)_handleRemoteControlEvent:(int64_t)event;
- (SCATRemoteControlInputSource)init;
- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold;
- (void)_startRemoteControlEventProcessor;
- (void)_stopRemoteControlEventProcessor;
- (void)dealloc;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)startRunning;
- (void)stopRunning;
@end

@implementation SCATRemoteControlInputSource

- (SCATRemoteControlInputSource)init
{
  v5.receiver = self;
  v5.super_class = SCATRemoteControlInputSource;
  v2 = [(SCATInputSource *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SCATRemoteControlInputSource *)v2 _startRemoteControlEventProcessor];
  }

  return v3;
}

- (void)dealloc
{
  [(SCATRemoteControlInputSource *)self _stopRemoteControlEventProcessor];
  [(SCATRemoteControlInputSource *)self stopRunning];
  v3.receiver = self;
  v3.super_class = SCATRemoteControlInputSource;
  [(SCATRemoteControlInputSource *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  v4.receiver = self;
  v4.super_class = SCATRemoteControlInputSource;
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

- (void)_startRemoteControlEventProcessor
{
  v3 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"Switch Control - Remote Control" HIDEventTapPriority:25 systemEventTapIdentifier:0 systemEventTapPriority:25];
  [(SCATRemoteControlInputSource *)self setEventProcessor:v3];

  eventProcessor = [(SCATRemoteControlInputSource *)self eventProcessor];
  [eventProcessor setHIDEventFilterMask:32];

  objc_initWeak(&location, self);
  objc_copyWeak(&v8, &location);
  v5 = [(SCATRemoteControlInputSource *)self eventProcessor:_NSConcreteStackBlock];
  [v5 setHIDEventHandler:&v7];

  eventProcessor2 = [(SCATRemoteControlInputSource *)self eventProcessor];
  [eventProcessor2 beginHandlingHIDEventsForReason:@"Switch Control Remote Control Event Handler"];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_stopRemoteControlEventProcessor
{
  eventProcessor = [(SCATRemoteControlInputSource *)self eventProcessor];
  [eventProcessor endHandlingHIDEventsForReason:@"Switch Control Remote Control Event Handler"];

  [(SCATRemoteControlInputSource *)self setEventProcessor:0];
}

- (BOOL)_handleAXEvent:(id)event
{
  accessibilityData = [event accessibilityData];
  if ([accessibilityData page] == 6)
  {
    v5 = -[SCATRemoteControlInputSource _handleRemoteControlEvent:](self, "_handleRemoteControlEvent:", [accessibilityData usage]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_handleRemoteControlEvent:(int64_t)event
{
  v5 = AXParameterizedLocalizedString();
  v3 = v5;
  AXPerformBlockOnMainThread();

  return 1;
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
    v12[2] = sub_100097468;
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

@end