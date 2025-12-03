@interface SCATScreenInputSource
- (BOOL)handledEvent:(id)event;
- (id)_actionIdentifierWithType:(id)type;
- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold;
- (void)_startHandlingEvents;
- (void)_stopHandlingEvents;
- (void)dealloc;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)startRunning;
- (void)stopRunning;
- (void)updateWithSwitches:(id)switches recipe:(id)recipe;
@end

@implementation SCATScreenInputSource

- (void)_didReceiveActionWithIdentifier:(id)identifier start:(BOOL)start ignoreInputHold:(BOOL)hold
{
  identifierCopy = identifier;
  delegate = [(SCATInputSource *)self delegate];
  queue = [(SCATInputSource *)self queue];
  if (queue && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007D568;
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

- (id)_actionIdentifierWithType:(id)type
{
  typeCopy = type;
  actions = [(SCATInputSource *)self actions];

  if (actions)
  {
    actions2 = [(SCATInputSource *)self actions];
    v7 = [actions2 objectForKeyedSubscript:typeCopy];
  }

  else
  {
    _AXLogWithFacility();
    v7 = 0;
  }

  return v7;
}

- (BOOL)handledEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  if (type == 3001)
  {
    handInfo = [eventCopy handInfo];
    eventType = [handInfo eventType];

    handInfo2 = [eventCopy handInfo];
    eventType2 = [handInfo2 eventType];

    if (eventType2 <= 0xA && ((1 << eventType2) & 0x640) != 0)
    {
      v10 = 0;
    }

    else
    {
      if (eventType != 1)
      {
        _AXSAutomationEnabled();
        goto LABEL_11;
      }

      v10 = 1;
    }

    v11 = [(SCATScreenInputSource *)self _actionIdentifierWithType:@"SwitchActionTypeNormal"];
    v12 = [(SCATScreenInputSource *)self _actionIdentifierWithType:@"SwitchActionTypeLongPress"];
    switchDisplayName = [(SCATScreenInputSource *)self switchDisplayName];
    [(SCATInputSource *)self _handleAction:v11 longPressAction:v12 start:eventType == 1 switchIdentifier:@"FullScreen" switchDisplayName:switchDisplayName];

    v14 = _AXSAutomationEnabled();
    if ((v10 & 1) == 0 && v14)
    {
      UIAccessibilityPostNotification(0xFA2u, &off_1001E5778);
    }
  }

LABEL_11:

  return type == 3001;
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

- (void)setDelegate:(id)delegate queue:(id)queue
{
  v4.receiver = self;
  v4.super_class = SCATScreenInputSource;
  [(SCATInputSource *)&v4 setDelegate:delegate queue:queue];
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

- (void)updateWithSwitches:(id)switches recipe:(id)recipe
{
  recipeCopy = recipe;
  v14.receiver = self;
  v14.super_class = SCATScreenInputSource;
  switchesCopy = switches;
  [(SCATInputSource *)&v14 updateWithSwitches:switchesCopy recipe:recipeCopy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007DAA8;
  v10[3] = &unk_1001D5B98;
  v11 = recipeCopy;
  v12 = [[NSMutableDictionary alloc] initWithCapacity:2];
  selfCopy = self;
  v8 = v12;
  v9 = recipeCopy;
  [switchesCopy enumerateObjectsUsingBlock:v10];

  [(SCATInputSource *)self setActions:v8];
}

@end