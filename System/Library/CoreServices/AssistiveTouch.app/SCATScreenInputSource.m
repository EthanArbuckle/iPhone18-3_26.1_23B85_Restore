@interface SCATScreenInputSource
- (BOOL)handledEvent:(id)a3;
- (id)_actionIdentifierWithType:(id)a3;
- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5;
- (void)_startHandlingEvents;
- (void)_stopHandlingEvents;
- (void)dealloc;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)startRunning;
- (void)stopRunning;
- (void)updateWithSwitches:(id)a3 recipe:(id)a4;
@end

@implementation SCATScreenInputSource

- (void)_didReceiveActionWithIdentifier:(id)a3 start:(BOOL)a4 ignoreInputHold:(BOOL)a5
{
  v8 = a3;
  v9 = [(SCATInputSource *)self delegate];
  v10 = [(SCATInputSource *)self queue];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007D568;
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

- (id)_actionIdentifierWithType:(id)a3
{
  v4 = a3;
  v5 = [(SCATInputSource *)self actions];

  if (v5)
  {
    v6 = [(SCATInputSource *)self actions];
    v7 = [v6 objectForKeyedSubscript:v4];
  }

  else
  {
    _AXLogWithFacility();
    v7 = 0;
  }

  return v7;
}

- (BOOL)handledEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 3001)
  {
    v6 = [v4 handInfo];
    v7 = [v6 eventType];

    v8 = [v4 handInfo];
    v9 = [v8 eventType];

    if (v9 <= 0xA && ((1 << v9) & 0x640) != 0)
    {
      v10 = 0;
    }

    else
    {
      if (v7 != 1)
      {
        _AXSAutomationEnabled();
        goto LABEL_11;
      }

      v10 = 1;
    }

    v11 = [(SCATScreenInputSource *)self _actionIdentifierWithType:@"SwitchActionTypeNormal"];
    v12 = [(SCATScreenInputSource *)self _actionIdentifierWithType:@"SwitchActionTypeLongPress"];
    v13 = [(SCATScreenInputSource *)self switchDisplayName];
    [(SCATInputSource *)self _handleAction:v11 longPressAction:v12 start:v7 == 1 switchIdentifier:@"FullScreen" switchDisplayName:v13];

    v14 = _AXSAutomationEnabled();
    if ((v10 & 1) == 0 && v14)
    {
      UIAccessibilityPostNotification(0xFA2u, &off_1001E5778);
    }
  }

LABEL_11:

  return v5 == 3001;
}

- (void)_startHandlingEvents
{
  v3 = +[HNDHandManager sharedManager];
  [v3 addEventHandler:self];
}

- (void)_stopHandlingEvents
{
  v3 = +[HNDHandManager sharedManager];
  [v3 removeEventHandler:self];
}

- (void)dealloc
{
  [(SCATScreenInputSource *)self stopRunning];
  v3.receiver = self;
  v3.super_class = SCATScreenInputSource;
  [(SCATScreenInputSource *)&v3 dealloc];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v4.receiver = self;
  v4.super_class = SCATScreenInputSource;
  [(SCATInputSource *)&v4 setDelegate:a3 queue:a4];
}

- (void)startRunning
{
  if (![(SCATInputSource *)self isRunning])
  {
    [(SCATScreenInputSource *)self _startHandlingEvents];

    [(SCATInputSource *)self setRunning:1];
  }
}

- (void)stopRunning
{
  if ([(SCATInputSource *)self isRunning])
  {
    [(SCATScreenInputSource *)self _stopHandlingEvents];

    [(SCATInputSource *)self setRunning:0];
  }
}

- (void)updateWithSwitches:(id)a3 recipe:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = SCATScreenInputSource;
  v7 = a3;
  [(SCATInputSource *)&v14 updateWithSwitches:v7 recipe:v6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007DAA8;
  v10[3] = &unk_1001D5B98;
  v11 = v6;
  v12 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v13 = self;
  v8 = v12;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v10];

  [(SCATInputSource *)self setActions:v8];
}

@end