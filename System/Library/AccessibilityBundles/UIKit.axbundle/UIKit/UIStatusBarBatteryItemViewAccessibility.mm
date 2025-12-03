@interface UIStatusBarBatteryItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (double)_axSetCapacityDirty:(void *)dirty;
- (id)_accessibilityIsBatteryPercentVisible;
- (id)_axCachedAXLabel;
- (id)accessibilityLabel;
- (uint64_t)_accessibilityNonQuantizedBatteryLevel;
- (uint64_t)_accessibilitySetNonQuantizedBatteryLevel:(uint64_t)result;
- (uint64_t)_axIsCapacityDirty;
- (unint64_t)accessibilityTraits;
- (void)_axSetCachedAXLabel:(void *)label;
@end

@implementation UIStatusBarBatteryItemViewAccessibility

- (uint64_t)_accessibilityNonQuantizedBatteryLevel
{
  if (self)
  {
    return __UIAccessibilityGetAssociatedInteger();
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_accessibilitySetNonQuantizedBatteryLevel:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedInteger();
  }

  return result;
}

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIStatusBarComposedData"];
  v4 = @"UIStatusBarBatteryItemView";
  v3 = "i";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UIStatusBarBatteryItemView" hasInstanceVariable:@"_state" withType:"i"];
  [location[0] validateClass:@"UIStatusBarBatteryPercentItemView" hasInstanceVariable:@"_percentString" withType:"NSString"];
  v5 = "B";
  [location[0] validateClass:@"UIStatusBarBatteryItemView" hasInstanceMethod:@"updateForNewData: actions:" withFullSignature:{"@", "i", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"cachedBatteryStyle" withFullSignature:{"Q", 0}];
  [location[0] validateClass:v4 hasInstanceVariable:@"_batterySaverModeActive" withType:v5];
  objc_storeStrong(v7, v6);
}

- (id)_accessibilityIsBatteryPercentVisible
{
  v18 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  if (self)
  {
    superview = [selfCopy superview];
    location = [superview subviews];
    MEMORY[0x29EDC9740](superview);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](location);
    v10 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
    if (v10)
    {
      v5 = *__b[2];
      v6 = 0;
      v7 = v10;
      while (1)
      {
        v4 = v6;
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(__b[1] + 8 * v6);
        NSClassFromString(&cfstr_Uistatusbarbat_0.isa);
        if (objc_opt_isKindOfClass())
        {
          [v13 alpha];
          if (CGFAbs_1(v1) - 0.0 >= 0.000001)
          {
            break;
          }
        }

        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
          if (!v7)
          {
            goto LABEL_12;
          }
        }
      }

      v16 = MEMORY[0x29EDC9748](v13);
      v11 = 1;
    }

    else
    {
LABEL_12:
      v11 = 0;
    }

    MEMORY[0x29EDC9740](obj);
    if (!v11)
    {
      v16 = 0;
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v16 = 0;
  }

  v2 = v16;

  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  v13 = a2;
  v8.receiver = self;
  v8.super_class = UIStatusBarBatteryItemViewAccessibility;
  [(UIStatusBarBatteryItemViewAccessibility *)&v8 accessibilityFrame];
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  AX_CGRectGetCenter();
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  v12 = a2;
  memset(&v14, 0, sizeof(v14));
  v11.receiver = self;
  v11.super_class = UIStatusBarBatteryItemViewAccessibility;
  [(UIStatusBarBatteryItemViewAccessibility *)&v11 accessibilityFrame];
  v14.origin.x = v2;
  v14.origin.y = v3;
  v14.size.width = v4;
  v14.size.height = v5;
  location = [(UIStatusBarBatteryItemViewAccessibility *)selfCopy _accessibilityIsBatteryPercentVisible];
  if (location)
  {
    [location accessibilityFrame];
    v14 = CGRectUnion(v15, v14);
  }

  objc_storeStrong(&location, 0);
  y = v14.origin.y;
  x = v14.origin.x;
  height = v14.size.height;
  width = v14.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v32[1] = a2;
  _axCachedAXLabel = [(UIStatusBarBatteryItemViewAccessibility *)self _axCachedAXLabel];
  LOBYTE(v19) = 0;
  if (_axCachedAXLabel)
  {
    v19 = [(UIStatusBarBatteryItemViewAccessibility *)selfCopy _axIsCapacityDirty]^ 1;
  }

  *&v2 = MEMORY[0x29EDC9740](_axCachedAXLabel).n128_u64[0];
  if (v19)
  {
    _axCachedAXLabel2 = [(UIStatusBarBatteryItemViewAccessibility *)selfCopy _axCachedAXLabel];
    goto LABEL_28;
  }

  v32[0] = [MEMORY[0x29EDC7A58] currentDevice];
  isBatteryMonitoringEnabled = [v32[0] isBatteryMonitoringEnabled];
  if ((isBatteryMonitoringEnabled & 1) == 0)
  {
    [v32[0] setBatteryMonitoringEnabled:1];
  }

  v30 = -1.0;
  _accessibilityIsBatteryPercentVisible = [(UIStatusBarBatteryItemViewAccessibility *)selfCopy _accessibilityIsBatteryPercentVisible];
  if (_accessibilityIsBatteryPercentVisible)
  {
    v17 = [_accessibilityIsBatteryPercentVisible safeStringForKey:@"_percentString"];
    v3 = [v17 intValue] / 100.0;
    v30 = v3;
    MEMORY[0x29EDC9740](v17);
  }

  else if (([(UIStatusBarBatteryItemViewAccessibility *)selfCopy _axIsCapacityDirty]& 1) != 0)
  {
    _accessibilityNonQuantizedBatteryLevel = [(UIStatusBarBatteryItemViewAccessibility *)selfCopy _accessibilityNonQuantizedBatteryLevel];
    v4 = _accessibilityNonQuantizedBatteryLevel / 100.0;
    v30 = v4;
  }

  v5 = v30;
  if (v30 <= 0.0 || (v5 = v30, v30 > 1.0))
  {
    [v32[0] batteryLevel];
    v30 = v6;
  }

  v14 = MEMORY[0x29EDBA0F8];
  v16 = accessibilityLocalizedString(@"status.battery.capacity");
  v15 = AXFormatFloatWithPercentage();
  v27 = [v14 stringWithFormat:v16, v15];
  MEMORY[0x29EDC9740](v15);
  batteryState = [v32[0] batteryState];
  v25 = 0;
  if (batteryState == 2)
  {
    v24 = [(UIStatusBarBatteryItemViewAccessibility *)selfCopy safeIntegerForKey:@"cachedBatteryStyle"];
    if (v24)
    {
      v8 = accessibilityLocalizedString(@"status.battery.charging");
    }

    else
    {
      v8 = accessibilityLocalizedString(@"status.not.charging");
    }
  }

  else
  {
    if (batteryState != 3)
    {
      goto LABEL_23;
    }

    v22 = MGGetBoolAnswer();
    v23 = v22 & 1;
    if (v22)
    {
      v8 = accessibilityLocalizedString(@"status.battery.charging.usb-c");
    }

    else
    {
      v8 = accessibilityLocalizedString(@"status.battery.charging.lightning");
    }
  }

  v9 = v25;
  v25 = v8;
  *&v7 = MEMORY[0x29EDC9740](v9).n128_u64[0];
LABEL_23:
  v21 = 0;
  if (([(UIStatusBarBatteryItemViewAccessibility *)selfCopy safeBoolForKey:@"_batterySaverModeActive", v7]& 1) != 0)
  {
    v10 = accessibilityLocalizedString(@"status.low.power.mode");
    v11 = v21;
    v21 = v10;
    MEMORY[0x29EDC9740](v11);
  }

  if ((isBatteryMonitoringEnabled & 1) == 0)
  {
    [v32[0] setBatteryMonitoringEnabled:0];
  }

  v20 = __UIAXStringForVariables();
  [(UIStatusBarBatteryItemViewAccessibility *)selfCopy _axSetCachedAXLabel:v20];
  _axCachedAXLabel2 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&_accessibilityIsBatteryPercentVisible, 0);
  objc_storeStrong(v32, 0);
LABEL_28:
  v12 = _axCachedAXLabel2;

  return v12;
}

- (id)_axCachedAXLabel
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &AXCachedAXLabelKey);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_axIsCapacityDirty
{
  selfCopy = self;
  if (self)
  {
    location = objc_getAssociatedObject(selfCopy, &AXBatteryLevelIsDirtyKey);
    if (location)
    {
      v4 = [location BOOLValue] & 1;
    }

    else
    {
      v4 = 0;
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)_axSetCachedAXLabel:(void *)label
{
  labelCopy = label;
  location = 0;
  objc_storeStrong(&location, a2);
  if (labelCopy)
  {
    objc_setAssociatedObject(labelCopy, &AXCachedAXLabelKey, location, 1);
  }

  objc_storeStrong(&location, 0);
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarBatteryItemViewAccessibility;
  return [(UIStatusBarBatteryItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  actionsCopy = actions;
  v16.receiver = selfCopy;
  v16.super_class = UIStatusBarBatteryItemViewAccessibility;
  v17 = [(UIStatusBarBatteryItemViewAccessibility *)&v16 updateForNewData:location[0] actions:actions];
  NSClassFromString(&cfstr_Uistatusbarcom.isa);
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x20000000;
    v13 = 32;
    v14 = 0;
    v9[1] = &v10;
    v9[0] = MEMORY[0x29EDC9748](location[0]);
    AXPerformSafeBlock();
    v8 = v11[3];
    objc_storeStrong(v9, 0);
    _Block_object_dispose(&v10, 8);
    v15 = v8;
    _accessibilityNonQuantizedBatteryLevel = [(UIStatusBarBatteryItemViewAccessibility *)selfCopy _accessibilityNonQuantizedBatteryLevel];
    if (_accessibilityNonQuantizedBatteryLevel != *(v15 + 2104))
    {
      [UIStatusBarBatteryItemViewAccessibility _accessibilitySetNonQuantizedBatteryLevel:selfCopy];
      [(UIStatusBarBatteryItemViewAccessibility *)selfCopy _axSetCapacityDirty:?];
    }
  }

  v6 = v17;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

uint64_t __68__UIStatusBarBatteryItemViewAccessibility_updateForNewData_actions___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) rawData];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)_axSetCapacityDirty:(void *)dirty
{
  if (dirty)
  {
    v3 = [MEMORY[0x29EDBA070] numberWithBool:a2 & 1];
    objc_setAssociatedObject(dirty, &AXBatteryLevelIsDirtyKey, v3, 1);
    *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  }

  return result;
}

@end