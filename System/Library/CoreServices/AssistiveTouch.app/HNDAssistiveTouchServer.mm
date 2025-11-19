@interface HNDAssistiveTouchServer
+ (id)sharedInstance;
- (HNDAssistiveTouchServer)init;
- (id)_dictionaryElements;
- (id)_dictionaryElementsHandler:(id)a3;
- (id)_highlightDictionaryElementsHandler:(id)a3;
- (id)_longPressDictionaryElementHandler:(id)a3;
- (id)_pressDictionaryElementHandler:(id)a3;
- (id)_scrollDictionaryElementDownHandler:(id)a3;
- (id)_scrollDictionaryElementLeftHandler:(id)a3;
- (id)_scrollDictionaryElementRightHandler:(id)a3;
- (id)_scrollDictionaryElementToBottomHandler:(id)a3;
- (id)_scrollDictionaryElementToTopHandler:(id)a3;
- (id)_scrollDictionaryElementUpHandler:(id)a3;
- (id)_setDictionaryElementValueHandler:(id)a3;
- (id)_zoomInDictionaryElementHandler:(id)a3;
- (id)_zoomOutDictionaryElementHandler:(id)a3;
- (id)scatBackCursorUIContext;
- (id)scatBackCursorUIContextForDisplayID:(unsigned int)a3;
- (id)scatFrontCursorUIContext;
- (id)scatFrontCursorUIContextForDisplayID:(unsigned int)a3;
- (id)scatUIContext;
- (id)scatUIContextForDisplayID:(unsigned int)a3;
- (void)_enableHiddenNubbitMode:(BOOL)a3;
- (void)_enableServer:(BOOL)a3;
- (void)_highlightDictionaryElementsWithIndexes:(id)a3;
- (void)_home;
- (void)_lock;
- (void)_longPressDictionaryElementWithIndex:(unint64_t)a3;
- (void)_performAction:(int)a3 withIndex:(unint64_t)a4;
- (void)_pressDictionaryElementWithIndex:(unint64_t)a3;
- (void)_screenshot;
- (void)_scrollDictionaryElementWithIndex:(unint64_t)a3 direction:(int64_t)a4;
- (void)_scrollDictionaryElementWithIndex:(unint64_t)a3 position:(int64_t)a4;
- (void)_setDictionaryElementValueWithIndex:(unint64_t)a3 value:(id)a4;
- (void)_toggleMute;
- (void)_tripleHome;
- (void)_zoomDictionaryElementWithIndex:(unint64_t)a3 direction:(int64_t)a4;
- (void)accessibilityManager:(id)a3 didReceiveEvent:(int64_t)a4 data:(id)a5;
- (void)dealloc;
@end

@implementation HNDAssistiveTouchServer

- (id)_dictionaryElements
{
  v2 = +[HNDAccessibilityManager sharedManager];
  [v2 refreshElements];
  v3 = CACurrentMediaTime();
  while ((([v2 isFetchingElements] & 1) != 0 || objc_msgSend(v2, "willFetchElements")) && CACurrentMediaTime() - v3 < 5.0)
  {
    [NSThread sleepForTimeInterval:0.25];
  }

  v4 = [v2 elements];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100091A28;
  v7[3] = &unk_1001D3F68;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

- (void)_enableHiddenNubbitMode:(BOOL)a3
{
  v3 = a3;
  v5 = +[HNDHandManager sharedManager];
  [v5 updateAllSettings];
  [(HNDAssistiveTouchServer *)self _enableServer:v3];
}

- (void)_highlightDictionaryElementsWithIndexes:(id)a3
{
  v10 = a3;
  v4 = [(HNDAssistiveTouchServer *)self cursorManager];
  v5 = +[HNDAccessibilityManager sharedManager];
  v6 = [v5 elements];
  if (v6 && [v10 count])
  {
    v7 = [v10 objectAtIndexedSubscript:0];
    v8 = [v7 unsignedIntegerValue];

    v9 = [v6 objectAtIndexedSubscript:v8];
    [v4 updateMainCursorWithElement:v9];
  }

  else
  {
    [v4 updateMainCursorWithElement:0];
  }
}

- (void)_home
{
  if ((sub_1000424B4() & 1) == 0)
  {
    v2 = +[AXPISystemActionHelper sharedInstance];
    [v2 activateHomeButton];
  }
}

- (void)_lock
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateLockButton];
}

- (void)_longPressDictionaryElementWithIndex:(unint64_t)a3
{
  v7 = +[HNDAccessibilityManager sharedManager];
  v4 = [v7 elements];
  v5 = v4;
  if (v4 && [v4 count] > a3)
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
    [v6 longPress];
  }

  else
  {
    _AXLogWithFacility();
  }
}

- (void)_performAction:(int)a3 withIndex:(unint64_t)a4
{
  v5 = *&a3;
  v10 = +[HNDAccessibilityManager sharedManager];
  v6 = [v10 elements];
  v7 = v6;
  if (v6 && [v6 count] > a4)
  {
    v8 = [v7 objectAtIndexedSubscript:a4];
  }

  else
  {
    v8 = sub_100092084(0);
  }

  v9 = v8;
  if (([v8 performAction:v5] & 1) == 0)
  {
    _AXLogWithFacility();
  }
}

- (void)_pressDictionaryElementWithIndex:(unint64_t)a3
{
  v7 = +[HNDAccessibilityManager sharedManager];
  v4 = [v7 elements];
  v5 = v4;
  if (v4 && [v4 count] > a3)
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
    [v6 press];
  }

  else
  {
    _AXLogWithFacility();
  }
}

- (void)_screenshot
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 takeScreenshot];
}

- (void)_scrollDictionaryElementWithIndex:(unint64_t)a3 direction:(int64_t)a4
{
  v11 = +[HNDAccessibilityManager sharedManager];
  v6 = [v11 elements];
  v7 = v6;
  if (v6 && [v6 count] > a3)
  {
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  else
  {
    v8 = sub_100092084(kAXScrollableTrait);
  }

  v9 = v8;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v10 = 2009;
      goto LABEL_15;
    }

    if (a4 == 3)
    {
      v10 = 2007;
      goto LABEL_15;
    }

LABEL_12:
    _AXLogWithFacility();
    goto LABEL_16;
  }

  if (!a4)
  {
    v10 = 2006;
    goto LABEL_15;
  }

  if (a4 != 1)
  {
    goto LABEL_12;
  }

  v10 = 2008;
LABEL_15:
  [v8 performAction:v10];
LABEL_16:
}

- (void)_scrollDictionaryElementWithIndex:(unint64_t)a3 position:(int64_t)a4
{
  v6 = +[AXElement systemWideElement];
  v12 = [v6 currentApplication];

  v7 = +[HNDAccessibilityManager sharedManager];
  v8 = [v7 elements];
  v9 = v8;
  if (v8 && [v8 count] > a3)
  {
    v10 = [v9 objectAtIndexedSubscript:a3];
  }

  else
  {
    v10 = sub_100092084(kAXScrollableTrait);
  }

  v11 = v10;
  [v12 setAutoscrollTarget:v10];
  if (a4 == 1)
  {
    [v12 scrollToTop];
  }

  else if (a4)
  {
    _AXLogWithFacility();
  }

  else
  {
    [v12 scrollToBottom];
  }
}

- (void)_setDictionaryElementValueWithIndex:(unint64_t)a3 value:(id)a4
{
  v5 = a4;
  v12 = +[HNDAccessibilityManager sharedManager];
  v6 = [v12 elements];
  v7 = v6;
  if (v6 && [v6 count] > a3)
  {
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  else
  {
    v9 = +[AXElement systemWideElement];
    v10 = [v9 currentApplication];
    v8 = [v10 firstResponder];
  }

  v11 = [v8 uiElement];
  [v11 setAXAttribute:2006 withString:v5];
}

- (void)_toggleMute
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 toggleMute];
}

- (void)_tripleHome
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateTripleClick];
}

- (void)_zoomDictionaryElementWithIndex:(unint64_t)a3 direction:(int64_t)a4
{
  v11 = +[HNDAccessibilityManager sharedManager];
  v6 = [v11 elements];
  v7 = v6;
  if (v6 && [v6 count] > a3)
  {
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  else
  {
    v8 = sub_100092084(0);
  }

  v9 = v8;
  if (a4 == 1)
  {
    v10 = 2002;
    goto LABEL_9;
  }

  if (!a4)
  {
    v10 = 2001;
LABEL_9:
    [v8 performAction:v10 withValue:0];
    goto LABEL_11;
  }

  _AXLogWithFacility();
LABEL_11:
}

- (void)accessibilityManager:(id)a3 didReceiveEvent:(int64_t)a4 data:(id)a5
{
  v5 = [(HNDAssistiveTouchServer *)self cursorManager:a3];
  [v5 updateMainCursorWithElement:0];
}

- (id)scatUIContext
{
  v2 = +[HNDHandManager sharedManager];
  v3 = [v2 mainDisplayManager];
  v4 = [v3 scannerContentView];

  return v4;
}

- (id)scatBackCursorUIContext
{
  v2 = +[HNDHandManager sharedManager];
  v3 = [v2 mainDisplayManager];
  v4 = [v3 scannerBackCursorView];

  return v4;
}

- (id)scatFrontCursorUIContext
{
  v2 = +[HNDHandManager sharedManager];
  v3 = [v2 mainDisplayManager];
  v4 = [v3 scannerFrontCursorView];

  return v4;
}

- (id)scatUIContextForDisplayID:(unsigned int)a3
{
  v3 = *&a3;
  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagerForDisplayId:v3];
  v6 = [v5 scannerContentView];

  return v6;
}

- (id)scatFrontCursorUIContextForDisplayID:(unsigned int)a3
{
  v3 = *&a3;
  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagerForDisplayId:v3];
  v6 = [v5 scannerFrontCursorView];

  return v6;
}

- (id)scatBackCursorUIContextForDisplayID:(unsigned int)a3
{
  v3 = *&a3;
  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagerForDisplayId:v3];
  v6 = [v5 scannerBackCursorView];

  return v6;
}

- (void)dealloc
{
  v3 = +[HNDAccessibilityManager sharedManager];
  [v3 removeObserver:self];

  [(HNDAssistiveTouchServer *)self _enableHiddenNubbitMode:0];
  v4.receiver = self;
  v4.super_class = HNDAssistiveTouchServer;
  [(HNDAssistiveTouchServer *)&v4 dealloc];
}

- (HNDAssistiveTouchServer)init
{
  v15.receiver = self;
  v15.super_class = HNDAssistiveTouchServer;
  v2 = [(HNDAssistiveTouchServer *)&v15 init];
  if (v2)
  {
    v3 = +[AXSettings sharedInstance];
    -[HNDAssistiveTouchServer _enableHiddenNubbitMode:](v2, "_enableHiddenNubbitMode:", [v3 assistiveTouchInternalOnlyHiddenNubbitModeEnabled]);
    objc_initWeak(&location, v2);
    v4 = +[AXSettings sharedInstance];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100092CD4;
    v12 = &unk_1001D3460;
    objc_copyWeak(&v13, &location);
    [v4 registerUpdateBlock:&v9 forRetrieveSelector:"assistiveTouchInternalOnlyHiddenNubbitModeEnabled" withListener:v2];

    objc_destroyWeak(&v13);
    v5 = [SCATCursorManager alloc];
    v6 = [(SCATCursorManager *)v5 initWithDisplaySource:v2, v9, v10, v11, v12];
    [(HNDAssistiveTouchServer *)v2 setCursorManager:v6];
    v7 = +[HNDAccessibilityManager sharedManager];
    [v7 addObserver:v2];

    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_100218B28 != -1)
  {
    sub_10012A0A8();
  }

  v3 = qword_100218B20;

  return v3;
}

- (void)_enableServer:(BOOL)a3
{
  v3 = a3;
  v5 = [(HNDAssistiveTouchServer *)self server];
  v6 = v5;
  if (v3)
  {
    if (!v5)
    {
      v7 = [AXIPCServer alloc];
      v6 = [v7 initWithServiceName:AXAssistiveTouchServerServiceName perPidService:0];
      [v6 setHandlerWithTarget:self selector:"_dictionaryElementsHandler:" forKey:6000];
      [v6 setHandlerWithTarget:self selector:"_highlightDictionaryElementsHandler:" forKey:6001];
      [v6 setHandlerWithTarget:self selector:"_homeHandler:" forKey:6002];
      [v6 setHandlerWithTarget:self selector:"_lockHandler:" forKey:6003];
      [v6 setHandlerWithTarget:self selector:"_longPressDictionaryElementHandler:" forKey:6004];
      [v6 setHandlerWithTarget:self selector:"_pressDictionaryElementHandler:" forKey:6005];
      [v6 setHandlerWithTarget:self selector:"_screenshotHandler:" forKey:6006];
      [v6 setHandlerWithTarget:self selector:"_scrollDictionaryElementDownHandler:" forKey:6007];
      [v6 setHandlerWithTarget:self selector:"_scrollDictionaryElementLeftHandler:" forKey:6008];
      [v6 setHandlerWithTarget:self selector:"_scrollDictionaryElementRightHandler:" forKey:6009];
      [v6 setHandlerWithTarget:self selector:"_scrollDictionaryElementToBottomHandler:" forKey:6010];
      [v6 setHandlerWithTarget:self selector:"_scrollDictionaryElementToTopHandler:" forKey:6011];
      [v6 setHandlerWithTarget:self selector:"_scrollDictionaryElementUpHandler:" forKey:6012];
      [v6 setHandlerWithTarget:self selector:"_setDictionaryElementValueHandler:" forKey:6013];
      [v6 setHandlerWithTarget:self selector:"_toggleMuteHandler:" forKey:6014];
      [v6 setHandlerWithTarget:self selector:"_tripleHomeHandler:" forKey:6015];
      [v6 setHandlerWithTarget:self selector:"_zoomInDictionaryElementHandler:" forKey:6016];
      [v6 setHandlerWithTarget:self selector:"_zoomOutDictionaryElementHandler:" forKey:6017];
      [(HNDAssistiveTouchServer *)self setServer:v6];
    }

    if (([v6 isRunning] & 1) == 0)
    {
      v17 = 0;
      v8 = [v6 startServerWithError:&v17];
      v9 = v17;
      v10 = v9;
      if (v8)
      {
        v14 = @"Started AssistiveTouch message server";
      }

      else
      {
        v14 = @"AssistiveTouch could not start its message server: %@";
        v15 = v9;
      }

      LOBYTE(v13) = 1;
      _AXLogWithFacility();
    }

    v12 = [HNDAccessibilityManager sharedManager:v13];
    goto LABEL_14;
  }

  if ([v5 isRunning])
  {
    v16 = 0;
    [v6 stopServerWithError:&v16];
    v11 = v16;
    _AXLogWithFacility();
  }

  if (v6)
  {
    [v6 removeAllHandlersForTarget:self];
    [(HNDAssistiveTouchServer *)self setServer:0];
LABEL_14:
  }
}

- (id)_dictionaryElementsHandler:(id)a3
{
  v3 = [(HNDAssistiveTouchServer *)self _dictionaryElements];
  v7 = AXAssistiveTouchPayloadKeyDictionaryElements;
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [[AXIPCMessage alloc] initWithKey:6000 payload:v4];

  return v5;
}

- (id)_highlightDictionaryElementsHandler:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndexes];

  [(HNDAssistiveTouchServer *)self _highlightDictionaryElementsWithIndexes:v5];
  return 0;
}

- (id)_longPressDictionaryElementHandler:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  v6 = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _longPressDictionaryElementWithIndex:v6];
  return 0;
}

- (id)_pressDictionaryElementHandler:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  v6 = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _pressDictionaryElementWithIndex:v6];
  return 0;
}

- (id)_scrollDictionaryElementDownHandler:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  v6 = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _scrollDictionaryElementWithIndex:v6 direction:0];
  return 0;
}

- (id)_scrollDictionaryElementLeftHandler:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  v6 = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _scrollDictionaryElementWithIndex:v6 direction:1];
  return 0;
}

- (id)_scrollDictionaryElementRightHandler:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  v6 = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _scrollDictionaryElementWithIndex:v6 direction:2];
  return 0;
}

- (id)_scrollDictionaryElementToBottomHandler:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  v6 = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _scrollDictionaryElementWithIndex:v6 position:0];
  return 0;
}

- (id)_scrollDictionaryElementToTopHandler:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  v6 = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _scrollDictionaryElementWithIndex:v6 position:1];
  return 0;
}

- (id)_scrollDictionaryElementUpHandler:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  v6 = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _scrollDictionaryElementWithIndex:v6 direction:3];
  return 0;
}

- (id)_setDictionaryElementValueHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 payload];

  v9 = [v8 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementValue];

  [(HNDAssistiveTouchServer *)self _setDictionaryElementValueWithIndex:v7 value:v9];
  return 0;
}

- (id)_zoomInDictionaryElementHandler:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  v6 = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _zoomDictionaryElementWithIndex:v6 direction:0];
  return 0;
}

- (id)_zoomOutDictionaryElementHandler:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  v6 = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _zoomDictionaryElementWithIndex:v6 direction:1];
  return 0;
}

@end