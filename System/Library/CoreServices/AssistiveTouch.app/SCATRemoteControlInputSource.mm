@interface SCATRemoteControlInputSource
- (BOOL)_handleAXEvent:(id)a3;
- (BOOL)_handleRemoteControlEvent:(int64_t)a3;
- (SCATRemoteControlInputSource)init;
- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5;
- (void)_startRemoteControlEventProcessor;
- (void)_stopRemoteControlEventProcessor;
- (void)dealloc;
- (void)setDelegate:(id)a3 queue:(id)a4;
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

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v4.receiver = self;
  v4.super_class = SCATRemoteControlInputSource;
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

- (void)_startRemoteControlEventProcessor
{
  v3 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"Switch Control - Remote Control" HIDEventTapPriority:25 systemEventTapIdentifier:0 systemEventTapPriority:25];
  [(SCATRemoteControlInputSource *)self setEventProcessor:v3];

  v4 = [(SCATRemoteControlInputSource *)self eventProcessor];
  [v4 setHIDEventFilterMask:32];

  objc_initWeak(&location, self);
  objc_copyWeak(&v8, &location);
  v5 = [(SCATRemoteControlInputSource *)self eventProcessor:_NSConcreteStackBlock];
  [v5 setHIDEventHandler:&v7];

  v6 = [(SCATRemoteControlInputSource *)self eventProcessor];
  [v6 beginHandlingHIDEventsForReason:@"Switch Control Remote Control Event Handler"];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_stopRemoteControlEventProcessor
{
  v3 = [(SCATRemoteControlInputSource *)self eventProcessor];
  [v3 endHandlingHIDEventsForReason:@"Switch Control Remote Control Event Handler"];

  [(SCATRemoteControlInputSource *)self setEventProcessor:0];
}

- (BOOL)_handleAXEvent:(id)a3
{
  v4 = [a3 accessibilityData];
  if ([v4 page] == 6)
  {
    v5 = -[SCATRemoteControlInputSource _handleRemoteControlEvent:](self, "_handleRemoteControlEvent:", [v4 usage]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_handleRemoteControlEvent:(int64_t)a3
{
  v5 = AXParameterizedLocalizedString();
  v3 = v5;
  AXPerformBlockOnMainThread();

  return 1;
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
    v12[2] = sub_100097468;
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

@end