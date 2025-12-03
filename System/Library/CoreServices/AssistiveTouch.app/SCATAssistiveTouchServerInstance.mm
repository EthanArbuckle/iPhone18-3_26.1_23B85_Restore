@interface SCATAssistiveTouchServerInstance
+ (id)serverInstance;
- (SCATAssistiveTouchServerInstance)init;
- (id)_initServer;
- (id)closeMenu:(id)menu;
- (id)currentBubbleElement:(id)element;
- (id)getMenuItemPosition:(id)position;
- (id)getNubbitPosition:(id)position;
- (id)getPointerPosition:(id)position;
- (id)home:(id)home;
- (id)isMenuOpen:(id)open;
- (id)menuAction:(id)action;
- (id)menuItems:(id)items;
- (id)openMenu:(id)menu;
- (id)pointerClick:(id)click;
- (id)setNubbitPosition:(id)position;
- (id)setPointerPosition:(id)position;
- (id)tapMenuItem:(id)item;
- (id)virtualPointer:(id)pointer;
- (void)dealloc;
@end

@implementation SCATAssistiveTouchServerInstance

- (SCATAssistiveTouchServerInstance)init
{
  v5.receiver = self;
  v5.super_class = SCATAssistiveTouchServerInstance;
  v2 = [(SCATAssistiveTouchServerInstance *)&v5 init];
  virtualMouse = v2->_virtualMouse;
  v2->_virtualMouse = 0;

  return v2;
}

+ (id)serverInstance
{
  if (qword_100218B18 != -1)
  {
    sub_100129F00();
  }

  v3 = qword_100218B10;

  return v3;
}

- (id)_initServer
{
  v13.receiver = self;
  v13.super_class = SCATAssistiveTouchServerInstance;
  v2 = [(SCATAssistiveTouchServerInstance *)&v13 init];
  if (v2)
  {
    v3 = +[SCATAssistiveTouchWorkspace sharedWorkspace];
    v4 = [AXIPCServer alloc];
    v5 = [v4 initWithServiceName:AXAssistiveTouchServerServiceName perPidService:0];
    server = v2->_server;
    v2->_server = v5;

    v7 = v2->_server;
    v12 = 0;
    [(AXIPCServer *)v7 startServerWithError:&v12];
    v8 = v12;
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"home:" forKey:6002 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"getNubbitPosition:" forKey:6023 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"setNubbitPosition:" forKey:6024 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"openMenu:" forKey:6020 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"closeMenu:" forKey:6021 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"isMenuOpen:" forKey:6022 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"menuItems:" forKey:6025 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"tapMenuItem:" forKey:6026 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"menuAction:" forKey:6027 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"getMenuItemPosition:" forKey:6033 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"virtualPointer:" forKey:6028 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"getPointerPosition:" forKey:6029 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"setPointerPosition:" forKey:6030 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"pointerClick:" forKey:6032 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"currentBubbleElement:" forKey:6031 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    if (v8)
    {
      v9 = ASTLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001281B4(v8, v9);
      }
    }

    v10 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(AXIPCServer *)self->_server removeAllHandlersForTarget:self];
  v3.receiver = self;
  v3.super_class = SCATAssistiveTouchServerInstance;
  [(SCATAssistiveTouchServerInstance *)&v3 dealloc];
}

- (id)home:(id)home
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 activateHomeButton];

  v4 = [[AXIPCMessage alloc] initWithKey:6002 payload:&off_1001E5868];

  return v4;
}

- (id)getNubbitPosition:(id)position
{
  v3 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v3 mainDisplayManager];

  rocker = [mainDisplayManager rocker];
  [rocker center];
  v7 = v6;
  v9 = v8;

  v10 = [AXIPCMessage alloc];
  v16 = @"result";
  v15[0] = v7;
  v15[1] = v9;
  v11 = [NSValue valueWithBytes:v15 objCType:"{CGPoint=dd}"];
  v17 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v13 = [v10 initWithKey:6023 payload:v12];

  return v13;
}

- (id)setNubbitPosition:(id)position
{
  payload = [position payload];
  v4 = [payload objectForKey:@"action"];
  [v4 CGPointValue];
  v6 = v5;
  v8 = v7;

  v9 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v9 mainDisplayManager];

  [mainDisplayManager moveNubbitToPoint:{v6, v8}];
  v11 = [[AXIPCMessage alloc] initWithKey:6024 payload:&off_1001E5890];

  return v11;
}

- (id)openMenu:(id)menu
{
  v3 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v3 mainDisplayManager];

  [mainDisplayManager showMenu:1];
  v5 = [[AXIPCMessage alloc] initWithKey:6020 payload:&__NSDictionary0__struct];

  return v5;
}

- (id)closeMenu:(id)menu
{
  v3 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v3 mainDisplayManager];

  [mainDisplayManager showMenu:0];
  v5 = [[AXIPCMessage alloc] initWithKey:6021 payload:&__NSDictionary0__struct];

  return v5;
}

- (id)isMenuOpen:(id)open
{
  v3 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v3 mainDisplayManager];

  isMenuVisible = [mainDisplayManager isMenuVisible];
  v6 = [AXIPCMessage alloc];
  v11 = @"result";
  v7 = [NSNumber numberWithBool:isMenuVisible];
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [v6 initWithKey:6022 payload:v8];

  return v9;
}

- (id)menuItems:(id)items
{
  v3 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v3 mainDisplayManager];

  v21 = mainDisplayManager;
  rocker = [mainDisplayManager rocker];
  currentlyVisibleRockerItems = [rocker currentlyVisibleRockerItems];

  v7 = objc_alloc_init(NSMutableString);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = currentlyVisibleRockerItems;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        title = [v12 title];
        type = [v12 type];
        v15 = [NSString stringWithFormat:@"%@#%@", title, type];

        if ([v7 length])
        {
          [v7 appendString:@"|"];
        }

        [v7 appendString:v15];
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v9);
  }

  v16 = [AXIPCMessage alloc];
  v27 = @"result";
  v17 = [v7 copy];
  v28 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v19 = [v16 initWithKey:6025 payload:v18];

  return v19;
}

- (id)tapMenuItem:(id)item
{
  payload = [item payload];
  v4 = [payload objectForKey:@"action"];

  v5 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v5 mainDisplayManager];

  rocker = [mainDisplayManager rocker];
  currentlyVisibleRockerItems = [rocker currentlyVisibleRockerItems];

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10008B480;
  v20 = &unk_1001D5E48;
  v21 = v4;
  v9 = v4;
  v10 = [currentlyVisibleRockerItems indexOfObjectPassingTest:&v17];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [currentlyVisibleRockerItems objectAtIndex:{v10, v17, v18, v19, v20, v21}];
    [v11 performPress:1];
    [v11 performPress:0];
  }

  v12 = [AXIPCMessage alloc];
  v22 = @"result";
  0x7FFFFFFFFFFFFFFFLL = [NSNumber numberWithBool:v10 != 0x7FFFFFFFFFFFFFFFLL];
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v15 = [v12 initWithKey:6026 payload:v14];

  return v15;
}

- (id)menuAction:(id)action
{
  payload = [action payload];
  v4 = [payload objectForKey:@"action"];

  v5 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v5 mainDisplayManager];

  [mainDisplayManager activateAssistiveTouchAction:v4 fromButtonPress:0];
  v7 = [[AXIPCMessage alloc] initWithKey:6027 payload:&off_1001E58B8];

  return v7;
}

- (id)getMenuItemPosition:(id)position
{
  payload = [position payload];
  v4 = [payload objectForKey:@"action"];
  stringValue = [v4 stringValue];

  v6 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v6 mainDisplayManager];

  rocker = [mainDisplayManager rocker];
  currentlyVisibleRockerItems = [rocker currentlyVisibleRockerItems];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10008B83C;
  v29[3] = &unk_1001D5E48;
  v30 = stringValue;
  v10 = stringValue;
  v11 = [currentlyVisibleRockerItems indexOfObjectPassingTest:v29];
  v12 = -1.0;
  v13 = -1.0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [currentlyVisibleRockerItems objectAtIndex:v11];
    [v14 center];
    v16 = v15;
    v18 = v17;
    rocker2 = [mainDisplayManager rocker];
    window = [mainDisplayManager window];
    [rocker2 convertPoint:window toView:{v16, v18}];
    v12 = v21;
    v13 = v22;
  }

  v23 = [AXIPCMessage alloc];
  v31 = @"result";
  *v28 = v12;
  *&v28[1] = v13;
  v24 = [NSValue valueWithBytes:v28 objCType:"{CGPoint=dd}"];
  v32 = v24;
  v25 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v26 = [v23 initWithKey:6033 payload:v25];

  return v26;
}

- (id)virtualPointer:(id)pointer
{
  payload = [pointer payload];
  v5 = [payload objectForKey:@"action"];
  bOOLValue = [v5 BOOLValue];

  v7 = +[HNDDeviceManager sharedManager];
  v8 = +[SCATAssistiveTouchWorkspace sharedWorkspace];
  if (bOOLValue)
  {
    v9 = objc_opt_new();
    virtualMouse = self->_virtualMouse;
    self->_virtualMouse = v9;

    [v7 addDevice:self->_virtualMouse];
    [(HNDDevice *)self->_virtualMouse setDelegate:v8];
    v11 = +[HNDHandManager sharedManager];
    systemPointerController = [v11 systemPointerController];
    [systemPointerController addPointerStreamObserver:v8];

    virtualMouseClient = [NSString stringWithFormat:@"AXAutomation"];
    v14 = [HNDVirtualHIDMouse addActiveClientWithReason:virtualMouseClient];
    [(SCATAssistiveTouchServerInstance *)self setVirtualMouseClient:v14];
  }

  else
  {
    v15 = +[HNDHandManager sharedManager];
    systemPointerController2 = [v15 systemPointerController];
    [systemPointerController2 removePointerStreamObserver:v8];

    [v7 removeDevice:self->_virtualMouse];
    virtualMouseClient = [(SCATAssistiveTouchServerInstance *)self virtualMouseClient];
    [virtualMouseClient invalidate];
  }

  v17 = [[AXIPCMessage alloc] initWithKey:6028 payload:&off_1001E58E0];

  return v17;
}

- (id)getPointerPosition:(id)position
{
  v3 = +[HNDHandManager sharedManager];
  systemPointerController = [v3 systemPointerController];
  [systemPointerController currentSystemPointerPoint];
  v6 = v5;
  v8 = v7;

  v9 = [AXIPCMessage alloc];
  v15 = @"result";
  v14[0] = v6;
  v14[1] = v8;
  v10 = [NSValue valueWithBytes:v14 objCType:"{CGPoint=dd}"];
  v16 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v12 = [v9 initWithKey:6029 payload:v11];

  return v12;
}

- (id)setPointerPosition:(id)position
{
  payload = [position payload];
  v4 = [payload objectForKey:@"action"];
  [v4 axCGPointValue];
  v6 = v5;
  v8 = v7;

  v9 = +[HNDHandManager sharedManager];
  systemPointerController = [v9 systemPointerController];
  [systemPointerController currentSystemPointerPoint];
  v12 = v11;
  v14 = v13;

  v15 = [HNDVirtualHIDMouse handleMovementWithDelta:v6 - v12, v8 - v14];
  [v9 _startDwellTimer];
  v16 = [AXIPCMessage alloc];
  v21 = @"result";
  v17 = [NSNumber numberWithBool:v15];
  v22 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v19 = [v16 initWithKey:6030 payload:v18];

  return v19;
}

- (id)pointerClick:(id)click
{
  v3 = +[HNDHandManager sharedManager];
  systemPointerController = [v3 systemPointerController];
  [systemPointerController currentSystemPointerPoint];
  v6 = v5;
  v8 = v7;

  v9 = objc_alloc_init(HNDEvent);
  [(HNDEvent *)v9 setType:1];
  [(HNDEvent *)v9 setActionOverride:AXAssistiveTouchIconTypeMousePrimaryClick];
  [(HNDEvent *)v9 setLocation:v6, v8];
  [v3 handleButtonEvent:v9];
  [(HNDEvent *)v9 setType:2];
  [v3 handleButtonEvent:v9];
  v10 = [[AXIPCMessage alloc] initWithKey:6032 payload:&off_1001E5908];

  return v10;
}

- (id)currentBubbleElement:(id)element
{
  v3 = +[HNDHandManager sharedManager];
  currentBubbleModeFocusedElement = [v3 currentBubbleModeFocusedElement];
  v5 = currentBubbleModeFocusedElement;
  if (currentBubbleModeFocusedElement)
  {
    uiElement = [currentBubbleModeFocusedElement uiElement];
    axElement = [uiElement axElement];

    if (axElement)
    {
      Data = _AXUIElementCreateData();
      v9 = [AXIPCMessage alloc];
      v15 = @"result";
      v16 = Data;
      v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v11 = [v9 initWithKey:6031 payload:v10];

      goto LABEL_7;
    }

    v12 = [AXIPCMessage alloc];
    v13 = 6501;
  }

  else
  {
    v12 = [AXIPCMessage alloc];
    v13 = 6031;
  }

  v11 = [v12 initWithKey:v13 payload:0];
LABEL_7:

  return v11;
}

@end