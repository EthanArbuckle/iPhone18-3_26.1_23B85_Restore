@interface HNDAssistiveTouchServer
+ (id)sharedInstance;
- (HNDAssistiveTouchServer)init;
- (id)_dictionaryElements;
- (id)_dictionaryElementsHandler:(id)handler;
- (id)_highlightDictionaryElementsHandler:(id)handler;
- (id)_longPressDictionaryElementHandler:(id)handler;
- (id)_pressDictionaryElementHandler:(id)handler;
- (id)_scrollDictionaryElementDownHandler:(id)handler;
- (id)_scrollDictionaryElementLeftHandler:(id)handler;
- (id)_scrollDictionaryElementRightHandler:(id)handler;
- (id)_scrollDictionaryElementToBottomHandler:(id)handler;
- (id)_scrollDictionaryElementToTopHandler:(id)handler;
- (id)_scrollDictionaryElementUpHandler:(id)handler;
- (id)_setDictionaryElementValueHandler:(id)handler;
- (id)_zoomInDictionaryElementHandler:(id)handler;
- (id)_zoomOutDictionaryElementHandler:(id)handler;
- (id)scatBackCursorUIContext;
- (id)scatBackCursorUIContextForDisplayID:(unsigned int)d;
- (id)scatFrontCursorUIContext;
- (id)scatFrontCursorUIContextForDisplayID:(unsigned int)d;
- (id)scatUIContext;
- (id)scatUIContextForDisplayID:(unsigned int)d;
- (void)_enableHiddenNubbitMode:(BOOL)mode;
- (void)_enableServer:(BOOL)server;
- (void)_highlightDictionaryElementsWithIndexes:(id)indexes;
- (void)_home;
- (void)_lock;
- (void)_longPressDictionaryElementWithIndex:(unint64_t)index;
- (void)_performAction:(int)action withIndex:(unint64_t)index;
- (void)_pressDictionaryElementWithIndex:(unint64_t)index;
- (void)_screenshot;
- (void)_scrollDictionaryElementWithIndex:(unint64_t)index direction:(int64_t)direction;
- (void)_scrollDictionaryElementWithIndex:(unint64_t)index position:(int64_t)position;
- (void)_setDictionaryElementValueWithIndex:(unint64_t)index value:(id)value;
- (void)_toggleMute;
- (void)_tripleHome;
- (void)_zoomDictionaryElementWithIndex:(unint64_t)index direction:(int64_t)direction;
- (void)accessibilityManager:(id)manager didReceiveEvent:(int64_t)event data:(id)data;
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

  elements = [v2 elements];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100091A28;
  v7[3] = &unk_1001D3F68;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(elements, "count")}];
  v8 = v5;
  [elements enumerateObjectsUsingBlock:v7];

  return v5;
}

- (void)_enableHiddenNubbitMode:(BOOL)mode
{
  modeCopy = mode;
  v5 = +[HNDHandManager sharedManager];
  [v5 updateAllSettings];
  [(HNDAssistiveTouchServer *)self _enableServer:modeCopy];
}

- (void)_highlightDictionaryElementsWithIndexes:(id)indexes
{
  indexesCopy = indexes;
  cursorManager = [(HNDAssistiveTouchServer *)self cursorManager];
  v5 = +[HNDAccessibilityManager sharedManager];
  elements = [v5 elements];
  if (elements && [indexesCopy count])
  {
    v7 = [indexesCopy objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    v9 = [elements objectAtIndexedSubscript:unsignedIntegerValue];
    [cursorManager updateMainCursorWithElement:v9];
  }

  else
  {
    [cursorManager updateMainCursorWithElement:0];
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

- (void)_longPressDictionaryElementWithIndex:(unint64_t)index
{
  v7 = +[HNDAccessibilityManager sharedManager];
  elements = [v7 elements];
  v5 = elements;
  if (elements && [elements count] > index)
  {
    v6 = [v5 objectAtIndexedSubscript:index];
    [v6 longPress];
  }

  else
  {
    _AXLogWithFacility();
  }
}

- (void)_performAction:(int)action withIndex:(unint64_t)index
{
  v5 = *&action;
  v10 = +[HNDAccessibilityManager sharedManager];
  elements = [v10 elements];
  v7 = elements;
  if (elements && [elements count] > index)
  {
    v8 = [v7 objectAtIndexedSubscript:index];
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

- (void)_pressDictionaryElementWithIndex:(unint64_t)index
{
  v7 = +[HNDAccessibilityManager sharedManager];
  elements = [v7 elements];
  v5 = elements;
  if (elements && [elements count] > index)
  {
    v6 = [v5 objectAtIndexedSubscript:index];
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

- (void)_scrollDictionaryElementWithIndex:(unint64_t)index direction:(int64_t)direction
{
  v11 = +[HNDAccessibilityManager sharedManager];
  elements = [v11 elements];
  v7 = elements;
  if (elements && [elements count] > index)
  {
    v8 = [v7 objectAtIndexedSubscript:index];
  }

  else
  {
    v8 = sub_100092084(kAXScrollableTrait);
  }

  v9 = v8;
  if (direction > 1)
  {
    if (direction == 2)
    {
      v10 = 2009;
      goto LABEL_15;
    }

    if (direction == 3)
    {
      v10 = 2007;
      goto LABEL_15;
    }

LABEL_12:
    _AXLogWithFacility();
    goto LABEL_16;
  }

  if (!direction)
  {
    v10 = 2006;
    goto LABEL_15;
  }

  if (direction != 1)
  {
    goto LABEL_12;
  }

  v10 = 2008;
LABEL_15:
  [v8 performAction:v10];
LABEL_16:
}

- (void)_scrollDictionaryElementWithIndex:(unint64_t)index position:(int64_t)position
{
  v6 = +[AXElement systemWideElement];
  currentApplication = [v6 currentApplication];

  v7 = +[HNDAccessibilityManager sharedManager];
  elements = [v7 elements];
  v9 = elements;
  if (elements && [elements count] > index)
  {
    v10 = [v9 objectAtIndexedSubscript:index];
  }

  else
  {
    v10 = sub_100092084(kAXScrollableTrait);
  }

  v11 = v10;
  [currentApplication setAutoscrollTarget:v10];
  if (position == 1)
  {
    [currentApplication scrollToTop];
  }

  else if (position)
  {
    _AXLogWithFacility();
  }

  else
  {
    [currentApplication scrollToBottom];
  }
}

- (void)_setDictionaryElementValueWithIndex:(unint64_t)index value:(id)value
{
  valueCopy = value;
  v12 = +[HNDAccessibilityManager sharedManager];
  elements = [v12 elements];
  v7 = elements;
  if (elements && [elements count] > index)
  {
    firstResponder = [v7 objectAtIndexedSubscript:index];
  }

  else
  {
    v9 = +[AXElement systemWideElement];
    currentApplication = [v9 currentApplication];
    firstResponder = [currentApplication firstResponder];
  }

  uiElement = [firstResponder uiElement];
  [uiElement setAXAttribute:2006 withString:valueCopy];
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

- (void)_zoomDictionaryElementWithIndex:(unint64_t)index direction:(int64_t)direction
{
  v11 = +[HNDAccessibilityManager sharedManager];
  elements = [v11 elements];
  v7 = elements;
  if (elements && [elements count] > index)
  {
    v8 = [v7 objectAtIndexedSubscript:index];
  }

  else
  {
    v8 = sub_100092084(0);
  }

  v9 = v8;
  if (direction == 1)
  {
    v10 = 2002;
    goto LABEL_9;
  }

  if (!direction)
  {
    v10 = 2001;
LABEL_9:
    [v8 performAction:v10 withValue:0];
    goto LABEL_11;
  }

  _AXLogWithFacility();
LABEL_11:
}

- (void)accessibilityManager:(id)manager didReceiveEvent:(int64_t)event data:(id)data
{
  v5 = [(HNDAssistiveTouchServer *)self cursorManager:manager];
  [v5 updateMainCursorWithElement:0];
}

- (id)scatUIContext
{
  v2 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v2 mainDisplayManager];
  scannerContentView = [mainDisplayManager scannerContentView];

  return scannerContentView;
}

- (id)scatBackCursorUIContext
{
  v2 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v2 mainDisplayManager];
  scannerBackCursorView = [mainDisplayManager scannerBackCursorView];

  return scannerBackCursorView;
}

- (id)scatFrontCursorUIContext
{
  v2 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v2 mainDisplayManager];
  scannerFrontCursorView = [mainDisplayManager scannerFrontCursorView];

  return scannerFrontCursorView;
}

- (id)scatUIContextForDisplayID:(unsigned int)d
{
  v3 = *&d;
  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagerForDisplayId:v3];
  scannerContentView = [v5 scannerContentView];

  return scannerContentView;
}

- (id)scatFrontCursorUIContextForDisplayID:(unsigned int)d
{
  v3 = *&d;
  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagerForDisplayId:v3];
  scannerFrontCursorView = [v5 scannerFrontCursorView];

  return scannerFrontCursorView;
}

- (id)scatBackCursorUIContextForDisplayID:(unsigned int)d
{
  v3 = *&d;
  v4 = +[HNDHandManager sharedManager];
  v5 = [v4 displayManagerForDisplayId:v3];
  scannerBackCursorView = [v5 scannerBackCursorView];

  return scannerBackCursorView;
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

- (void)_enableServer:(BOOL)server
{
  serverCopy = server;
  server = [(HNDAssistiveTouchServer *)self server];
  v6 = server;
  if (serverCopy)
  {
    if (!server)
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

  if ([server isRunning])
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

- (id)_dictionaryElementsHandler:(id)handler
{
  _dictionaryElements = [(HNDAssistiveTouchServer *)self _dictionaryElements];
  v7 = AXAssistiveTouchPayloadKeyDictionaryElements;
  v8 = _dictionaryElements;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [[AXIPCMessage alloc] initWithKey:6000 payload:v4];

  return v5;
}

- (id)_highlightDictionaryElementsHandler:(id)handler
{
  payload = [handler payload];
  v5 = [payload objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndexes];

  [(HNDAssistiveTouchServer *)self _highlightDictionaryElementsWithIndexes:v5];
  return 0;
}

- (id)_longPressDictionaryElementHandler:(id)handler
{
  payload = [handler payload];
  v5 = [payload objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _longPressDictionaryElementWithIndex:unsignedIntegerValue];
  return 0;
}

- (id)_pressDictionaryElementHandler:(id)handler
{
  payload = [handler payload];
  v5 = [payload objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _pressDictionaryElementWithIndex:unsignedIntegerValue];
  return 0;
}

- (id)_scrollDictionaryElementDownHandler:(id)handler
{
  payload = [handler payload];
  v5 = [payload objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _scrollDictionaryElementWithIndex:unsignedIntegerValue direction:0];
  return 0;
}

- (id)_scrollDictionaryElementLeftHandler:(id)handler
{
  payload = [handler payload];
  v5 = [payload objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _scrollDictionaryElementWithIndex:unsignedIntegerValue direction:1];
  return 0;
}

- (id)_scrollDictionaryElementRightHandler:(id)handler
{
  payload = [handler payload];
  v5 = [payload objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _scrollDictionaryElementWithIndex:unsignedIntegerValue direction:2];
  return 0;
}

- (id)_scrollDictionaryElementToBottomHandler:(id)handler
{
  payload = [handler payload];
  v5 = [payload objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _scrollDictionaryElementWithIndex:unsignedIntegerValue position:0];
  return 0;
}

- (id)_scrollDictionaryElementToTopHandler:(id)handler
{
  payload = [handler payload];
  v5 = [payload objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _scrollDictionaryElementWithIndex:unsignedIntegerValue position:1];
  return 0;
}

- (id)_scrollDictionaryElementUpHandler:(id)handler
{
  payload = [handler payload];
  v5 = [payload objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _scrollDictionaryElementWithIndex:unsignedIntegerValue direction:3];
  return 0;
}

- (id)_setDictionaryElementValueHandler:(id)handler
{
  handlerCopy = handler;
  payload = [handlerCopy payload];
  v6 = [payload objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  payload2 = [handlerCopy payload];

  v9 = [payload2 objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementValue];

  [(HNDAssistiveTouchServer *)self _setDictionaryElementValueWithIndex:unsignedIntegerValue value:v9];
  return 0;
}

- (id)_zoomInDictionaryElementHandler:(id)handler
{
  payload = [handler payload];
  v5 = [payload objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _zoomDictionaryElementWithIndex:unsignedIntegerValue direction:0];
  return 0;
}

- (id)_zoomOutDictionaryElementHandler:(id)handler
{
  payload = [handler payload];
  v5 = [payload objectForKeyedSubscript:AXAssistiveTouchPayloadKeyDictionaryElementIndex];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  [(HNDAssistiveTouchServer *)self _zoomDictionaryElementWithIndex:unsignedIntegerValue direction:1];
  return 0;
}

@end