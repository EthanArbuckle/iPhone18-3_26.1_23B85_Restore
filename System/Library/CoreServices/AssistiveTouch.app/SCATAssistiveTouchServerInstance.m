@interface SCATAssistiveTouchServerInstance
+ (id)serverInstance;
- (SCATAssistiveTouchServerInstance)init;
- (id)_initServer;
- (id)closeMenu:(id)a3;
- (id)currentBubbleElement:(id)a3;
- (id)getMenuItemPosition:(id)a3;
- (id)getNubbitPosition:(id)a3;
- (id)getPointerPosition:(id)a3;
- (id)home:(id)a3;
- (id)isMenuOpen:(id)a3;
- (id)menuAction:(id)a3;
- (id)menuItems:(id)a3;
- (id)openMenu:(id)a3;
- (id)pointerClick:(id)a3;
- (id)setNubbitPosition:(id)a3;
- (id)setPointerPosition:(id)a3;
- (id)tapMenuItem:(id)a3;
- (id)virtualPointer:(id)a3;
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

- (id)home:(id)a3
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 activateHomeButton];

  v4 = [[AXIPCMessage alloc] initWithKey:6002 payload:&off_1001E5868];

  return v4;
}

- (id)getNubbitPosition:(id)a3
{
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 mainDisplayManager];

  v5 = [v4 rocker];
  [v5 center];
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

- (id)setNubbitPosition:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 objectForKey:@"action"];
  [v4 CGPointValue];
  v6 = v5;
  v8 = v7;

  v9 = +[HNDHandManager sharedManager];
  v10 = [v9 mainDisplayManager];

  [v10 moveNubbitToPoint:{v6, v8}];
  v11 = [[AXIPCMessage alloc] initWithKey:6024 payload:&off_1001E5890];

  return v11;
}

- (id)openMenu:(id)a3
{
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 mainDisplayManager];

  [v4 showMenu:1];
  v5 = [[AXIPCMessage alloc] initWithKey:6020 payload:&__NSDictionary0__struct];

  return v5;
}

- (id)closeMenu:(id)a3
{
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 mainDisplayManager];

  [v4 showMenu:0];
  v5 = [[AXIPCMessage alloc] initWithKey:6021 payload:&__NSDictionary0__struct];

  return v5;
}

- (id)isMenuOpen:(id)a3
{
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 mainDisplayManager];

  v5 = [v4 isMenuVisible];
  v6 = [AXIPCMessage alloc];
  v11 = @"result";
  v7 = [NSNumber numberWithBool:v5];
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [v6 initWithKey:6022 payload:v8];

  return v9;
}

- (id)menuItems:(id)a3
{
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 mainDisplayManager];

  v21 = v4;
  v5 = [v4 rocker];
  v6 = [v5 currentlyVisibleRockerItems];

  v7 = objc_alloc_init(NSMutableString);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
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
        v13 = [v12 title];
        v14 = [v12 type];
        v15 = [NSString stringWithFormat:@"%@#%@", v13, v14];

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

- (id)tapMenuItem:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 objectForKey:@"action"];

  v5 = +[HNDHandManager sharedManager];
  v6 = [v5 mainDisplayManager];

  v7 = [v6 rocker];
  v8 = [v7 currentlyVisibleRockerItems];

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10008B480;
  v20 = &unk_1001D5E48;
  v21 = v4;
  v9 = v4;
  v10 = [v8 indexOfObjectPassingTest:&v17];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v8 objectAtIndex:{v10, v17, v18, v19, v20, v21}];
    [v11 performPress:1];
    [v11 performPress:0];
  }

  v12 = [AXIPCMessage alloc];
  v22 = @"result";
  v13 = [NSNumber numberWithBool:v10 != 0x7FFFFFFFFFFFFFFFLL];
  v23 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v15 = [v12 initWithKey:6026 payload:v14];

  return v15;
}

- (id)menuAction:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 objectForKey:@"action"];

  v5 = +[HNDHandManager sharedManager];
  v6 = [v5 mainDisplayManager];

  [v6 activateAssistiveTouchAction:v4 fromButtonPress:0];
  v7 = [[AXIPCMessage alloc] initWithKey:6027 payload:&off_1001E58B8];

  return v7;
}

- (id)getMenuItemPosition:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 objectForKey:@"action"];
  v5 = [v4 stringValue];

  v6 = +[HNDHandManager sharedManager];
  v7 = [v6 mainDisplayManager];

  v8 = [v7 rocker];
  v9 = [v8 currentlyVisibleRockerItems];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10008B83C;
  v29[3] = &unk_1001D5E48;
  v30 = v5;
  v10 = v5;
  v11 = [v9 indexOfObjectPassingTest:v29];
  v12 = -1.0;
  v13 = -1.0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [v9 objectAtIndex:v11];
    [v14 center];
    v16 = v15;
    v18 = v17;
    v19 = [v7 rocker];
    v20 = [v7 window];
    [v19 convertPoint:v20 toView:{v16, v18}];
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

- (id)virtualPointer:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKey:@"action"];
  v6 = [v5 BOOLValue];

  v7 = +[HNDDeviceManager sharedManager];
  v8 = +[SCATAssistiveTouchWorkspace sharedWorkspace];
  if (v6)
  {
    v9 = objc_opt_new();
    virtualMouse = self->_virtualMouse;
    self->_virtualMouse = v9;

    [v7 addDevice:self->_virtualMouse];
    [(HNDDevice *)self->_virtualMouse setDelegate:v8];
    v11 = +[HNDHandManager sharedManager];
    v12 = [v11 systemPointerController];
    [v12 addPointerStreamObserver:v8];

    v13 = [NSString stringWithFormat:@"AXAutomation"];
    v14 = [HNDVirtualHIDMouse addActiveClientWithReason:v13];
    [(SCATAssistiveTouchServerInstance *)self setVirtualMouseClient:v14];
  }

  else
  {
    v15 = +[HNDHandManager sharedManager];
    v16 = [v15 systemPointerController];
    [v16 removePointerStreamObserver:v8];

    [v7 removeDevice:self->_virtualMouse];
    v13 = [(SCATAssistiveTouchServerInstance *)self virtualMouseClient];
    [v13 invalidate];
  }

  v17 = [[AXIPCMessage alloc] initWithKey:6028 payload:&off_1001E58E0];

  return v17;
}

- (id)getPointerPosition:(id)a3
{
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 systemPointerController];
  [v4 currentSystemPointerPoint];
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

- (id)setPointerPosition:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 objectForKey:@"action"];
  [v4 axCGPointValue];
  v6 = v5;
  v8 = v7;

  v9 = +[HNDHandManager sharedManager];
  v10 = [v9 systemPointerController];
  [v10 currentSystemPointerPoint];
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

- (id)pointerClick:(id)a3
{
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 systemPointerController];
  [v4 currentSystemPointerPoint];
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

- (id)currentBubbleElement:(id)a3
{
  v3 = +[HNDHandManager sharedManager];
  v4 = [v3 currentBubbleModeFocusedElement];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 uiElement];
    v7 = [v6 axElement];

    if (v7)
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