@interface HNDApplication
+ (BOOL)usesScenes;
- (BOOL)_accessibilityApplicationDidBecomeFocused;
- (BOOL)_iosAccessibilityPerformAction:(int)action withValue:(id)value fencePort:(unsigned int)port;
- (HNDApplication)init;
- (id)_accessibilityMainWindow;
- (id)_accessibilityScannerCurrentFocusContext;
- (id)_accessibilityScannerCurrentLoopElements;
- (id)_accessibilityScannerCurrentLoopElementsForFocusContext:(id)context;
- (id)_iosAccessibilityAttributeValue:(int64_t)value;
- (unint64_t)_accessibilityScannerCurrentLoopIndex;
@end

@implementation HNDApplication

- (HNDApplication)init
{
  v5.receiver = self;
  v5.super_class = HNDApplication;
  v2 = [(HNDApplication *)&v5 init];
  if (v2)
  {
    v3 = +[AXValidationManager sharedInstance];
    [v3 performValidations:&stru_1001D5D18 withPreValidationHandler:&stru_1001D5D38 postValidationHandler:0];
  }

  return v2;
}

+ (BOOL)usesScenes
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___HNDApplication;
  return objc_msgSendSuper2(&v3, "usesScenes");
}

- (id)_accessibilityScannerCurrentFocusContext
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v2 = +[SCATScannerManager sharedManager];
    activeScannerDriver = [v2 activeScannerDriver];

    if ([activeScannerDriver isActive])
    {
      focusContext = [activeScannerDriver focusContext];
    }

    else
    {
      _AXLogWithFacility();
      focusContext = 0;
    }
  }

  else
  {
    _AXLogWithFacility();
    focusContext = 0;
  }

  return focusContext;
}

- (id)_accessibilityScannerCurrentLoopElements
{
  _accessibilityScannerCurrentFocusContext = [(HNDApplication *)self _accessibilityScannerCurrentFocusContext];
  v4 = [(HNDApplication *)self _accessibilityScannerCurrentLoopElementsForFocusContext:_accessibilityScannerCurrentFocusContext];

  return v4;
}

- (id)_accessibilityScannerCurrentLoopElementsForFocusContext:(id)context
{
  contextCopy = context;
  v4 = contextCopy;
  if (contextCopy)
  {
    element = [contextCopy element];
    if ([v4 selectBehavior] == 4)
    {
      if (([element isGroup] & 1) == 0)
      {
        _AXAssert();
      }

      v6 = element;
    }

    else
    {
      v18 = 0;
      v6 = [NSMutableArray arrayWithObject:element];
      v17 = 0;
      v7 = element;
      v8 = v7;
      do
      {
        v9 = v8;
        v10 = +[SCATScannerManager sharedManager];
        activeElementManager = [v10 activeElementManager];
        v8 = [activeElementManager siblingOfElement:v8 inDirection:0 didWrap:&v17 options:&v18];

        if (v17)
        {
          break;
        }

        [v6 addObject:v8];
      }

      while ((v17 & 1) == 0);
      v17 = 0;
      v12 = v7;

      while ((v17 & 1) == 0)
      {
        v13 = v12;
        v14 = +[SCATScannerManager sharedManager];
        activeElementManager2 = [v14 activeElementManager];
        v12 = [activeElementManager2 siblingOfElement:v12 inDirection:1 didWrap:&v17 options:&v18];

        if (v17)
        {
          break;
        }

        [v6 insertObject:v12 atIndex:0];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_accessibilityScannerCurrentLoopIndex
{
  _accessibilityScannerCurrentFocusContext = [(HNDApplication *)self _accessibilityScannerCurrentFocusContext];
  if (_accessibilityScannerCurrentFocusContext)
  {
    v4 = [(HNDApplication *)self _accessibilityScannerCurrentLoopElementsForFocusContext:_accessibilityScannerCurrentFocusContext];
    if ([_accessibilityScannerCurrentFocusContext selectBehavior] == 4)
    {
      v5 = [v4 count];
    }

    else
    {
      element = [_accessibilityScannerCurrentFocusContext element];
      v5 = [v4 indexOfObject:element];

      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        _AXAssert();
        v5 = 0x7FFFFFFFLL;
      }
    }
  }

  else
  {
    v5 = 0x7FFFFFFFLL;
  }

  return v5;
}

- (id)_accessibilityMainWindow
{
  v2 = +[HNDHandManager sharedManager];
  mainWindow = [v2 mainWindow];

  return mainWindow;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value
{
  v5 = +[AXSettings sharedInstance];
  appValidationTestingMode = [v5 appValidationTestingMode];

  if (appValidationTestingMode)
  {
    v7 = 0;
    goto LABEL_20;
  }

  if (value > 1991)
  {
    switch(value)
    {
      case 1992:
        if (_AXSAssistiveTouchScannerEnabled())
        {
          v11 = +[SCATScannerManager sharedManager];
          pointPicker = [v11 pointPicker];
          [pointPicker lastReceivedPoint];
          v14 = v13;
          v16 = v15;
        }

        else
        {
          v11 = +[HNDHandManager sharedManager];
          [v11 currentPointForPointer];
          v14 = v17;
          v16 = v18;
        }

        valuePtr[0] = v14;
        valuePtr[1] = v16;
        v10 = AXValueCreate(kAXValueTypeCGPoint, valuePtr);
        goto LABEL_19;
      case 1993:
        _accessibilityScannerCurrentLoopElements = +[SCATScannerManager sharedManager];
        recentSpeechOutputStrings = [_accessibilityScannerCurrentLoopElements recentSpeechOutputStrings];
        goto LABEL_15;
      case 5060:
        _accessibilityScannerCurrentLoopElements = +[HNDHandManager sharedManager];
        recentSpeechOutputStrings = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [_accessibilityScannerCurrentLoopElements nubbitVisible]);
LABEL_15:
        v7 = recentSpeechOutputStrings;

        goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (value == 1990)
  {
    _accessibilityScannerCurrentLoopElements = [(HNDApplication *)self _accessibilityScannerCurrentLoopElements];
    recentSpeechOutputStrings = sub_100084884(_accessibilityScannerCurrentLoopElements);
    goto LABEL_15;
  }

  if (value != 1991)
  {
LABEL_16:
    v20.receiver = self;
    v20.super_class = HNDApplication;
    v10 = [(HNDApplication *)&v20 _iosAccessibilityAttributeValue:value];
    goto LABEL_19;
  }

  v10 = [NSNumber numberWithUnsignedInteger:[(HNDApplication *)self _accessibilityScannerCurrentLoopIndex]];
LABEL_19:
  v7 = v10;
LABEL_20:

  return v7;
}

- (BOOL)_iosAccessibilityPerformAction:(int)action withValue:(id)value fencePort:(unsigned int)port
{
  v5 = *&port;
  v6 = *&action;
  valueCopy = value;
  if (v6 == 6002)
  {
    objc_opt_class();
    v13 = __UIAccessibilityCastAsClass();
    v14 = [v13 objectForKey:@"buttonNumber"];
    integerValue = [v14 integerValue];
    v20 = 0;
    objc_opt_class();
    v16 = __UIAccessibilityCastAsClass();
    v17 = [v16 objectForKey:@"isDown"];
    v12 = +[HNDVirtualHIDMouse handleButtonNumber:isDown:](HNDVirtualHIDMouse, "handleButtonNumber:isDown:", integerValue, [v17 BOOLValue]);
  }

  else
  {
    if (v6 == 6001)
    {
      v20 = 0;
      objc_opt_class();
      v9 = __UIAccessibilityCastAsClass();
      v10 = [v9 objectForKey:@"delta"];
      [v10 CGPointValue];
      v11 = [HNDVirtualHIDMouse handleScrollWithDelta:?];
    }

    else
    {
      if (v6 != 6000)
      {
        v19.receiver = self;
        v19.super_class = HNDApplication;
        v12 = [(HNDApplication *)&v19 _iosAccessibilityPerformAction:v6 withValue:valueCopy fencePort:v5];
        goto LABEL_9;
      }

      v20 = 0;
      objc_opt_class();
      v9 = __UIAccessibilityCastAsClass();
      v10 = [v9 objectForKey:@"delta"];
      [v10 CGPointValue];
      v11 = [HNDVirtualHIDMouse handleMovementWithDelta:?];
    }

    v12 = v11;
  }

LABEL_9:

  return v12;
}

- (BOOL)_accessibilityApplicationDidBecomeFocused
{
  _accessibilityNativeFocusElement = [(HNDApplication *)self _accessibilityNativeFocusElement];
  if (!_accessibilityNativeFocusElement)
  {
    v4 = FKALogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Manually poking focus system in AssistiveTouch because no focused item was found.", v6, 2u);
    }

    if (_AXSFullKeyboardAccessEnabled())
    {
      AXPerformSafeBlock();
    }

    [(HNDApplication *)self _accessibilityMoveFocusWithHeading:16];
  }

  return 1;
}

@end