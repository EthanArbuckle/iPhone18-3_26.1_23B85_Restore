@interface HNDVirtualHIDMouse
+ (BOOL)handleButtonNumber:(int64_t)number isDown:(BOOL)down;
+ (BOOL)handleEvent:(id)event;
+ (BOOL)handleEyeTrackingMovementWithDelta:(CGPoint)delta;
+ (BOOL)handleHeadTrackingMovementWithPoint:(CGPoint)point;
+ (BOOL)handleMovementWithDelta:(CGPoint)delta;
+ (BOOL)handleScrollWithDelta:(CGPoint)delta;
+ (id)_createHNDMovementEventWithDelta:(CGPoint)delta;
+ (id)addActiveClientWithReason:(id)reason;
+ (unint64_t)eventServiceID;
+ (void)reevaluateDeviceCleanupTimer;
+ (void)setupSharedVirtualDeviceIfNecessary;
- (BOOL)_handleButtonNumber:(int64_t)number isDown:(BOOL)down;
- (BOOL)_handleEyeTrackingMovementWithDelta:(CGPoint)delta;
- (BOOL)_handleHeadTrackingMovementWithAbsolutePoint:(CGPoint)point;
- (BOOL)_handleMovementWithDelta:(CGPoint)delta;
- (BOOL)_handleScrollWithDelta:(CGPoint)delta;
- (BOOL)setOutputEvent:(id)event forService:(id)service;
- (BOOL)setProperty:(id)property forKey:(id)key forService:(id)service;
- (id)_init;
- (id)copyEventMatching:(id)matching forService:(id)service;
- (id)propertyForKey:(id)key forService:(id)service;
- (void)_attachEyeTrackingMetadataToHIDEventRef:(__IOHIDEvent *)ref;
- (void)_disableUserInterfaceClient;
- (void)_showBannerWithText:(id)text;
- (void)dealloc;
- (void)notification:(int64_t)notification withProperty:(id)property forService:(id)service;
- (void)unload;
@end

@implementation HNDVirtualHIDMouse

+ (void)setupSharedVirtualDeviceIfNecessary
{
  if (sub_100042C64())
  {
    [self reevaluateDeviceCleanupTimer];
    if (!qword_100218B48)
    {
      v3 = ASTLogMouse();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Creating new shared virtual mouse device", buf, 2u);
      }

      _init = [[HNDVirtualHIDMouse alloc] _init];
      v5 = qword_100218B48;
      qword_100218B48 = _init;
    }

    if (!qword_100218B50)
    {
      v6 = ASTLogMouse();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Creating new active client helper", v9, 2u);
      }

      v7 = objc_alloc_init(HNDActiveClientHelper);
      v8 = qword_100218B50;
      qword_100218B50 = v7;
    }
  }
}

+ (void)reevaluateDeviceCleanupTimer
{
  hasActiveClients = [qword_100218B50 hasActiveClients];
  v3 = qword_100218B58;
  if (hasActiveClients)
  {
    if (qword_100218B58)
    {
      v4 = ASTLogMouse();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Active clients! Cancel virtual device cleanup timer", buf, 2u);
      }

      [qword_100218B58 cancel];
      v5 = qword_100218B58;
      qword_100218B58 = 0;
    }
  }

  else
  {
    if (!qword_100218B58)
    {
      v6 = ASTLogMouse();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "No active clients! Setting up virtual device cleanup timer", v11, 2u);
      }

      v7 = [AXDispatchTimer alloc];
      v8 = sub_1000A8954();
      v9 = [v7 initWithTargetSerialQueue:v8];
      v10 = qword_100218B58;
      qword_100218B58 = v9;

      [qword_100218B58 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
      v3 = qword_100218B58;
    }

    [v3 afterDelay:&stru_1001D68E8 processBlock:5.0];
  }
}

+ (id)addActiveClientWithReason:(id)reason
{
  reasonCopy = reason;
  [self setupSharedVirtualDeviceIfNecessary];
  v5 = [qword_100218B50 addActiveClientWithReason:reasonCopy];

  return v5;
}

- (id)_init
{
  v30.receiver = self;
  v30.super_class = HNDVirtualHIDMouse;
  v2 = [(HNDVirtualHIDMouse *)&v30 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    uuid = [v2 uuid];
    uUIDString = [uuid UUIDString];
    v26 = [NSString stringWithFormat:@"ASTVirtualHIDMouse.%@", uUIDString];

    v35[0] = @"Virtual-AssistiveTouch";
    v34[0] = @"Transport";
    v34[1] = @"PhysicalDeviceUniqueID";
    uuid2 = [v2 uuid];
    uUIDString2 = [uuid2 UUIDString];
    v35[1] = uUIDString2;
    v34[2] = @"PrimaryUsagePage";
    v9 = [NSNumber numberWithUnsignedShort:1];
    v35[2] = v9;
    v34[3] = @"PrimaryUsage";
    v10 = [NSNumber numberWithUnsignedShort:2];
    v35[3] = v10;
    v35[4] = v26;
    v34[4] = @"LocationID";
    v34[5] = @"VendorID";
    v35[5] = &off_1001E55C8;
    v35[6] = &off_1001E55C8;
    v34[6] = @"ProductID";
    v34[7] = @"Authenticated";
    v35[7] = &__kCFBooleanTrue;
    v35[8] = &off_1001E55E0;
    v34[8] = @"ReportInterval";
    v34[9] = @"DeviceUsagePairs";
    v31[0] = @"DeviceUsagePage";
    v11 = [NSNumber numberWithUnsignedShort:1];
    v31[1] = @"DeviceUsage";
    v32[0] = v11;
    v12 = [NSNumber numberWithUnsignedShort:2];
    v32[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
    v33 = v13;
    v14 = [NSArray arrayWithObjects:&v33 count:1];
    v35[9] = v14;
    v35[10] = &__kCFBooleanFalse;
    v34[10] = @"HIDSupportsPointerAcceleration";
    v34[11] = @"HIDSupportsScrollAcceleration";
    v35[11] = &__kCFBooleanFalse;
    v15 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:12];
    v16 = *(v2 + 2);
    *(v2 + 2) = v15;

    v17 = objc_opt_new();
    v18 = *(v2 + 3);
    *(v2 + 3) = v17;

    v19 = dispatch_group_create();
    v20 = *(v2 + 5);
    *(v2 + 5) = v19;

    dispatch_group_enter(*(v2 + 5));
    v21 = objc_opt_new();
    v22 = *(v2 + 4);
    *(v2 + 4) = v21;

    v23 = sub_1000A8954();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A8E18;
    block[3] = &unk_1001D36E8;
    v28 = v2;
    v29 = v23;
    v24 = v23;
    dispatch_sync(v24, block);
  }

  return v2;
}

- (void)unload
{
  [(HIDVirtualEventService *)self->_eventService cancel];
  eventService = self->_eventService;
  self->_eventService = 0;
}

- (void)dealloc
{
  [(HNDVirtualHIDMouse *)self unload];
  v3.receiver = self;
  v3.super_class = HNDVirtualHIDMouse;
  [(HNDVirtualHIDMouse *)&v3 dealloc];
}

+ (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  [self setupSharedVirtualDeviceIfNecessary];
  waitForOpenGroup = [qword_100218B48 waitForOpenGroup];
  v6 = dispatch_time(0, 2000000000);
  dispatch_group_wait(waitForOpenGroup, v6);

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = sub_1000A8954();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A9088;
  v10[3] = &unk_1001D6930;
  v11 = eventCopy;
  v12 = &v13;
  v8 = eventCopy;
  dispatch_sync(v7, v10);

  LOBYTE(v7) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v7;
}

+ (unint64_t)eventServiceID
{
  eventService = [qword_100218B48 eventService];
  serviceID = [eventService serviceID];

  return serviceID;
}

- (BOOL)_handleMovementWithDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  mach_absolute_time();
  v6 = +[HNDHandManager sharedManager];
  systemPointerController = [v6 systemPointerController];
  eventService = [(HNDVirtualHIDMouse *)self eventService];
  [systemPointerController buttonMaskForSenderID:{objc_msgSend(eventService, "serviceID")}];

  MouseEvent = IOHIDEventCreateMouseEvent();
  eventService2 = [(HNDVirtualHIDMouse *)self eventService];
  v11 = [eventService2 dispatchEvent:MouseEvent];

  v12 = ASTLogMouse();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10012AB2C(x, y);
  }

  if (MouseEvent)
  {
    CFRelease(MouseEvent);
  }

  return v11;
}

- (void)_disableUserInterfaceClient
{
  v3 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v3 mainDisplayManager];
  [mainDisplayManager removeUserInterfaceClientEnabler:@"AssistiveTouchVirtualHIDMouse"];
}

- (void)_showBannerWithText:(id)text
{
  textCopy = text;
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_disableUserInterfaceClient" object:0];
  v5 = +[HNDHandManager sharedManager];
  mainDisplayManager = [v5 mainDisplayManager];

  [mainDisplayManager addUserInterfaceClientEnabler:@"AssistiveTouchVirtualHIDMouse"];
  v6 = sub_100042B24(@"ASSISTIVE_TOUCH");
  [mainDisplayManager showSimpleBannerWithTitle:v6 text:textCopy];

  [(HNDVirtualHIDMouse *)self performSelector:"_disableUserInterfaceClient" withObject:0 afterDelay:15.0];
}

- (BOOL)_handleEyeTrackingMovementWithDelta:(CGPoint)delta
{
  mach_absolute_time();
  v4 = +[HNDHandManager sharedManager];
  systemPointerController = [v4 systemPointerController];
  eventService = [(HNDVirtualHIDMouse *)self eventService];
  [systemPointerController buttonMaskForSenderID:{objc_msgSend(eventService, "serviceID")}];

  MouseEvent = IOHIDEventCreateMouseEvent();
  [(HNDVirtualHIDMouse *)self _attachEyeTrackingMetadataToHIDEventRef:MouseEvent];
  eventService2 = [(HNDVirtualHIDMouse *)self eventService];
  v9 = [eventService2 dispatchEvent:MouseEvent];

  if (MouseEvent)
  {
    CFRelease(MouseEvent);
  }

  return v9;
}

- (void)_attachEyeTrackingMetadataToHIDEventRef:(__IOHIDEvent *)ref
{
  v4 = [AXEventRepresentation representationWithHIDEvent:ref hidStreamIdentifier:@"AST-IOHIDFilter"];
  v3 = [AXEventData dataWithSender:5 page:0 usage:4 modifierFlags:0 eventValue1:0.0 eventValue2:0.0];
  [v4 setAccessibilityData:v3];
  [v4 applyAccessibilityDataToCreatorHIDEvent];
}

- (BOOL)_handleHeadTrackingMovementWithAbsolutePoint:(CGPoint)point
{
  mach_absolute_time();
  v4 = +[HNDHandManager sharedManager];
  systemPointerController = [v4 systemPointerController];
  eventService = [(HNDVirtualHIDMouse *)self eventService];
  [systemPointerController buttonMaskForSenderID:{objc_msgSend(eventService, "serviceID")}];

  MouseEvent = IOHIDEventCreateMouseEvent();
  [(HNDVirtualHIDMouse *)self _attachEyeTrackingMetadataToHIDEventRef:MouseEvent];
  eventService2 = [(HNDVirtualHIDMouse *)self eventService];
  v9 = [eventService2 dispatchEvent:MouseEvent];

  if (MouseEvent)
  {
    CFRelease(MouseEvent);
  }

  return v9;
}

- (BOOL)_handleScrollWithDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  mach_absolute_time();
  ScrollEvent = IOHIDEventCreateScrollEvent();
  eventService = [(HNDVirtualHIDMouse *)self eventService];
  v8 = [eventService dispatchEvent:ScrollEvent];

  v9 = ASTLogMouse();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10012ABD0(x, y);
  }

  if (ScrollEvent)
  {
    CFRelease(ScrollEvent);
  }

  return v8;
}

- (BOOL)_handleButtonNumber:(int64_t)number isDown:(BOOL)down
{
  mach_absolute_time();
  v6 = +[HNDHandManager sharedManager];
  systemPointerController = [v6 systemPointerController];
  eventService = [(HNDVirtualHIDMouse *)self eventService];
  [systemPointerController buttonMaskForSenderID:{objc_msgSend(eventService, "serviceID")}];

  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  eventService2 = [(HNDVirtualHIDMouse *)self eventService];
  v11 = [eventService2 dispatchEvent:RelativePointerEvent];

  v12 = ASTLogMouse();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = NSStringFromBOOL();
    v15 = NSStringFromBOOL();
    v16 = 134218498;
    numberCopy = number;
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "handleButtonNumber: %li (isDown=%@), success: %@", &v16, 0x20u);
  }

  if (RelativePointerEvent)
  {
    CFRelease(RelativePointerEvent);
  }

  return v11;
}

- (id)propertyForKey:(id)key forService:(id)service
{
  keyCopy = key;
  if (sub_1000A9A5C(keyCopy))
  {
    [(HNDVirtualHIDMouse *)self dynamicMetaProperties];
  }

  else
  {
    [(HNDVirtualHIDMouse *)self properties];
  }
  v6 = ;
  v7 = [v6 objectForKeyedSubscript:keyCopy];

  return v7;
}

- (BOOL)setProperty:(id)property forKey:(id)key forService:(id)service
{
  propertyCopy = property;
  keyCopy = key;
  v9 = ASTLogMouse();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = propertyCopy;
    v16 = 2112;
    v17 = keyCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "setProperty: %@, forKey: %@", &v14, 0x16u);
  }

  if (sub_1000A9A5C(keyCopy))
  {
    dynamicMetaProperties = [(HNDVirtualHIDMouse *)self dynamicMetaProperties];
    [dynamicMetaProperties setObject:propertyCopy forKeyedSubscript:keyCopy];
  }

  v11 = [keyCopy isEqualToString:@"DeviceOpenedByEventSystem"];
  if (v11)
  {
    v12 = ASTLogMouse();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "device opened by event system!", &v14, 2u);
    }

    dispatch_group_leave(self->_waitForOpenGroup);
  }

  return v11;
}

- (id)copyEventMatching:(id)matching forService:(id)service
{
  matchingCopy = matching;
  v5 = ASTLogMouse();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = matchingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "copyEventMatching: %@", &v7, 0xCu);
  }

  return 0;
}

- (BOOL)setOutputEvent:(id)event forService:(id)service
{
  eventCopy = event;
  v5 = ASTLogMouse();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "setOutputEvent: %@", &v7, 0xCu);
  }

  return 0;
}

- (void)notification:(int64_t)notification withProperty:(id)property forService:(id)service
{
  propertyCopy = property;
  v7 = ASTLogMouse();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"HIDVirtualServiceNotificationTypeTerminated";
    if (notification == 10)
    {
      v8 = @"HIDVirtualServiceNotificationTypeEnumerated";
    }

    v9 = v8;
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = propertyCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "notification: %@, property: %@", &v10, 0x16u);
  }
}

+ (BOOL)handleMovementWithDelta:(CGPoint)delta
{
  selfCopy = self;
  v4 = [self _createHNDMovementEventWithDelta:{delta.x, delta.y}];
  LOBYTE(selfCopy) = [selfCopy handleEvent:v4];

  return selfCopy;
}

+ (BOOL)handleEyeTrackingMovementWithDelta:(CGPoint)delta
{
  selfCopy = self;
  v4 = [self _createHNDMovementEventWithDelta:{delta.x, delta.y}];
  [v4 setIsEyeTrackingEvent:1];
  LOBYTE(selfCopy) = [selfCopy handleEvent:v4];

  return selfCopy;
}

+ (BOOL)handleHeadTrackingMovementWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = objc_alloc_init(HNDEvent);
  [(HNDEvent *)v6 setType:3];
  [(HNDEvent *)v6 setLocation:x, y];
  [(HNDEvent *)v6 setIsHeadTrackingEvent:1];
  LOBYTE(self) = [self handleEvent:v6];

  return self;
}

+ (BOOL)handleScrollWithDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  v6 = objc_alloc_init(HNDEvent);
  [(HNDEvent *)v6 setType:4];
  [(HNDEvent *)v6 setDeltaX:x];
  [(HNDEvent *)v6 setDeltaY:y];
  LOBYTE(self) = [self handleEvent:v6];

  return self;
}

+ (BOOL)handleButtonNumber:(int64_t)number isDown:(BOOL)down
{
  downCopy = down;
  if (number == 1 && down)
  {
    v7 = +[AXOutputManager sharedOutputManager];
    [v7 playMouseClickSound];
  }

  v8 = objc_alloc_init(HNDEvent);
  v9 = v8;
  if (downCopy)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  [(HNDEvent *)v8 setType:v10];
  [(HNDEvent *)v9 setButtonNumber:number];
  v11 = [self handleEvent:v9];

  return v11;
}

+ (id)_createHNDMovementEventWithDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  v5 = objc_alloc_init(HNDEvent);
  [(HNDEvent *)v5 setType:3];
  [(HNDEvent *)v5 setDeltaX:x];
  [(HNDEvent *)v5 setDeltaY:y];

  return v5;
}

@end