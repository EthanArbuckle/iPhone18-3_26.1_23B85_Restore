@interface HNDApplication
+ (BOOL)usesScenes;
- (BOOL)_accessibilityApplicationDidBecomeFocused;
- (BOOL)_iosAccessibilityPerformAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5;
- (HNDApplication)init;
- (id)_accessibilityMainWindow;
- (id)_accessibilityScannerCurrentFocusContext;
- (id)_accessibilityScannerCurrentLoopElements;
- (id)_accessibilityScannerCurrentLoopElementsForFocusContext:(id)a3;
- (id)_iosAccessibilityAttributeValue:(int64_t)a3;
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
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___HNDApplication;
  return objc_msgSendSuper2(&v3, "usesScenes");
}

- (id)_accessibilityScannerCurrentFocusContext
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v2 = +[SCATScannerManager sharedManager];
    v3 = [v2 activeScannerDriver];

    if ([v3 isActive])
    {
      v4 = [v3 focusContext];
    }

    else
    {
      _AXLogWithFacility();
      v4 = 0;
    }
  }

  else
  {
    _AXLogWithFacility();
    v4 = 0;
  }

  return v4;
}

- (id)_accessibilityScannerCurrentLoopElements
{
  v3 = [(HNDApplication *)self _accessibilityScannerCurrentFocusContext];
  v4 = [(HNDApplication *)self _accessibilityScannerCurrentLoopElementsForFocusContext:v3];

  return v4;
}

- (id)_accessibilityScannerCurrentLoopElementsForFocusContext:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 element];
    if ([v4 selectBehavior] == 4)
    {
      if (([v5 isGroup] & 1) == 0)
      {
        _AXAssert();
      }

      v6 = v5;
    }

    else
    {
      v18 = 0;
      v6 = [NSMutableArray arrayWithObject:v5];
      v17 = 0;
      v7 = v5;
      v8 = v7;
      do
      {
        v9 = v8;
        v10 = +[SCATScannerManager sharedManager];
        v11 = [v10 activeElementManager];
        v8 = [v11 siblingOfElement:v8 inDirection:0 didWrap:&v17 options:&v18];

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
        v15 = [v14 activeElementManager];
        v12 = [v15 siblingOfElement:v12 inDirection:1 didWrap:&v17 options:&v18];

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
  v3 = [(HNDApplication *)self _accessibilityScannerCurrentFocusContext];
  if (v3)
  {
    v4 = [(HNDApplication *)self _accessibilityScannerCurrentLoopElementsForFocusContext:v3];
    if ([v3 selectBehavior] == 4)
    {
      v5 = [v4 count];
    }

    else
    {
      v6 = [v3 element];
      v5 = [v4 indexOfObject:v6];

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
  v3 = [v2 mainWindow];

  return v3;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)a3
{
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 appValidationTestingMode];

  if (v6)
  {
    v7 = 0;
    goto LABEL_20;
  }

  if (a3 > 1991)
  {
    switch(a3)
    {
      case 1992:
        if (_AXSAssistiveTouchScannerEnabled())
        {
          v11 = +[SCATScannerManager sharedManager];
          v12 = [v11 pointPicker];
          [v12 lastReceivedPoint];
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
        v8 = +[SCATScannerManager sharedManager];
        v9 = [v8 recentSpeechOutputStrings];
        goto LABEL_15;
      case 5060:
        v8 = +[HNDHandManager sharedManager];
        v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 nubbitVisible]);
LABEL_15:
        v7 = v9;

        goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (a3 == 1990)
  {
    v8 = [(HNDApplication *)self _accessibilityScannerCurrentLoopElements];
    v9 = sub_100084884(v8);
    goto LABEL_15;
  }

  if (a3 != 1991)
  {
LABEL_16:
    v20.receiver = self;
    v20.super_class = HNDApplication;
    v10 = [(HNDApplication *)&v20 _iosAccessibilityAttributeValue:a3];
    goto LABEL_19;
  }

  v10 = [NSNumber numberWithUnsignedInteger:[(HNDApplication *)self _accessibilityScannerCurrentLoopIndex]];
LABEL_19:
  v7 = v10;
LABEL_20:

  return v7;
}

- (BOOL)_iosAccessibilityPerformAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a3;
  v8 = a4;
  if (v6 == 6002)
  {
    objc_opt_class();
    v13 = __UIAccessibilityCastAsClass();
    v14 = [v13 objectForKey:@"buttonNumber"];
    v15 = [v14 integerValue];
    v20 = 0;
    objc_opt_class();
    v16 = __UIAccessibilityCastAsClass();
    v17 = [v16 objectForKey:@"isDown"];
    v12 = +[HNDVirtualHIDMouse handleButtonNumber:isDown:](HNDVirtualHIDMouse, "handleButtonNumber:isDown:", v15, [v17 BOOLValue]);
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
        v12 = [(HNDApplication *)&v19 _iosAccessibilityPerformAction:v6 withValue:v8 fencePort:v5];
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
  v3 = [(HNDApplication *)self _accessibilityNativeFocusElement];
  if (!v3)
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