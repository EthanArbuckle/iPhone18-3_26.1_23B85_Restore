@interface UISwitchAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityKeyCommands;
- (id)_containerViewForLegacyFocusRing;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_fkaSwitchOff;
- (void)_fkaSwitchOn;
- (void)_keyboardActivate;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation UISwitchAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UISwitchVisualElement" isKindOfClass:@"UIView"];
  [location[0] validateClass:@"UISwitch" hasProperty:@"visualElement" withType:"@"];
  [location[0] validateClass:@"UISwitchModernVisualElement" hasInstanceVariable:@"_knobView" withType:"UIView"];
  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v5 = &_accessibilitySupportsActivateAction_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_37);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = objc_opt_class();
  return class_getInstanceMethod(v2, sel_accessibilityActivate) != _accessibilitySupportsActivateAction_BaseActivate;
}

Method __61__UISwitchAccessibility__accessibilitySupportsActivateAction__block_invoke()
{
  v0 = objc_opt_class();
  result = class_getInstanceMethod(v0, sel_accessibilityActivate);
  _accessibilitySupportsActivateAction_BaseActivate = result;
  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  v36[1] = a2;
  v36[0] = [(UISwitchAccessibility *)self safeUIViewForKey:@"visualElement"];
  if ([(UISwitchAccessibility *)selfCopy _accessibilityIsMacVisualAppearance])
  {
    v34 = 0;
    v33 = __UIAccessibilitySafeClass();
    v32 = MEMORY[0x29EDC9748](v33);
    objc_storeStrong(&v33, 0);
    v15 = v32;
    v16 = [v32 safeValueForKeyPath:@"_macCheckbox.cell"];
    v27 = 0;
    v25 = 0;
    if (v16)
    {
      v2 = MEMORY[0x29EDC9748](v16);
    }

    else
    {
      v31 = 0;
      v30 = __UIAccessibilitySafeClass();
      v29 = MEMORY[0x29EDC9748](v30);
      objc_storeStrong(&v30, 0);
      v28 = v29;
      v27 = 1;
      v26 = [v29 safeValueForKeyPath:@"_macSwitch.cell"];
      v25 = 1;
      v2 = MEMORY[0x29EDC9748](v26);
    }

    v35 = v2;
    if (v25)
    {
      MEMORY[0x29EDC9740](v26);
    }

    if (v27)
    {
      MEMORY[0x29EDC9740](v28);
    }

    MEMORY[0x29EDC9740](v16);
    MEMORY[0x29EDC9740](v15);
    v23 = 0;
    objc_opt_class();
    v14 = [v35 safeValueForKey:@"accessibilityActivationPointAttribute"];
    v22 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v14);
    v21 = MEMORY[0x29EDC9748](v22);
    objc_storeStrong(&v22, 0);
    v24 = v21;
    if (v21)
    {
      [v24 pointValue];
      v19 = v3;
      v20 = v4;
      UIAccessibilityPointForPoint();
      v38 = v5;
      v39 = v6;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    obj = 0;
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v35, 0);
    if (!v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v36[0])
    {
LABEL_16:
      v17.receiver = selfCopy;
      v17.super_class = UISwitchAccessibility;
      [(UISwitchAccessibility *)&v17 accessibilityActivationPoint];
      v38 = v9;
      v39 = v10;
      v18 = 1;
      goto LABEL_17;
    }

    [v36[0] accessibilityActivationPoint];
    v38 = v7;
    v39 = v8;
    v18 = 1;
  }

LABEL_17:
  objc_storeStrong(v36, 0);
  v11 = v38;
  v12 = v39;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  v14 = a2;
  enabledCopy = enabled;
  v5 = [(UISwitchAccessibility *)self safeValueForKey:?];
  bOOLValue = [v5 BOOLValue];
  *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v12 = bOOLValue;
  v11.receiver = selfCopy;
  v11.super_class = UISwitchAccessibility;
  [(UISwitchAccessibility *)&v11 setEnabled:enabledCopy, v3];
  v7 = [(UISwitchAccessibility *)selfCopy safeValueForKey:@"isEnabled"];
  bOOLValue2 = [v7 BOOLValue];
  *&v4 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  v10 = bOOLValue2;
  location = [(UISwitchAccessibility *)selfCopy safeValueForKey:@"superview", v4];
  if ((v12 & 1) != (bOOLValue2 & 1))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [location _accessibilityRemoveValueForKey:@"AXInternalData"];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    }
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v17 = [(UISwitchAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v9 = 0;
  v6 = 0;
  if ((v17 & 1) == 0)
  {
    v11 = MEMORY[0x29EDCA5F8];
    v12 = -1073741824;
    v13 = 0;
    v14 = __57__UISwitchAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v15 = &unk_29F30CEB0;
    v16 = MEMORY[0x29EDC9748](selfCopy);
    v10 = &v16;
    v9 = 1;
    v6 = (__57__UISwitchAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v6)
  {
    [(UISwitchAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:?];
    v8 = [(UISwitchAccessibility *)selfCopy accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
    [(UISwitchAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v21 = MEMORY[0x29EDC9748](v8);
    v7 = 1;
    objc_storeStrong(&v8, 0);
  }

  else
  {
    v7 = 0;
  }

  if (v9)
  {
    objc_storeStrong(v10, 0);
  }

  if (!v7)
  {
    if ([(UISwitchAccessibility *)selfCopy isAccessibilityElement]&& ([(UISwitchAccessibility *)selfCopy accessibilityElementsHidden]& 1) == 0)
    {
      if (([(UISwitchAccessibility *)selfCopy _accessibilityPointInside:location[0] withEvent:testCopy.x, testCopy.y]& 1) != 0)
      {
        v21 = MEMORY[0x29EDC9748](selfCopy);
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  objc_storeStrong(location, 0);
  v4 = v21;

  return v4;
}

BOOL __57__UISwitchAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &MACancelDownloadErrorDomain_block_invoke_onceToken_2;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_340_0);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != MACancelDownloadErrorDomain_block_invoke_BaseImplementation_2;
}

void __57__UISwitchAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    MACancelDownloadErrorDomain_block_invoke_BaseImplementation_2 = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(UISwitchAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  isAccessibilityUserDefinedElement2 = [(UISwitchAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
  MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  return v7;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v16[1] = a2;
  v16[0] = [(UISwitchAccessibility *)self accessibilityUserDefinedLabel];
  if (v16[0])
  {
    title2 = MEMORY[0x29EDC9748](v16[0]);
    v15 = 1;
  }

  else
  {
    v13 = 0;
    objc_opt_class();
    v12 = __UIAccessibilityCastAsClass();
    v11 = MEMORY[0x29EDC9748](v12);
    objc_storeStrong(&v12, 0);
    v14 = v11;
    title = [v11 title];
    v6 = [title length] != 0;
    *&v2 = MEMORY[0x29EDC9740](title).n128_u64[0];
    v10 = v6;
    v9 = [v14 preferredStyle] == 1;
    if (v6 && v9)
    {
      title2 = [v14 title];
      v15 = 1;
    }

    else
    {
      v8 = [(UISwitchAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AXIsInRetrieval"];
      if (v8)
      {
        title2 = MEMORY[0x29EDC9748](@"--");
        v15 = 1;
      }

      else
      {
        [(UISwitchAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:?];
        _accessibilityRetrieveLabelFromTableViewCell = [(UIViewAccessibility *)selfCopy _accessibilityRetrieveLabelFromTableViewCell];
        [(UISwitchAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"AXIsInRetrieval"];
        title2 = MEMORY[0x29EDC9748](_accessibilityRetrieveLabelFromTableViewCell);
        v15 = 1;
        objc_storeStrong(&_accessibilityRetrieveLabelFromTableViewCell, 0);
      }
    }

    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(v16, 0);
  v3 = title2;

  return v3;
}

- (id)accessibilityValue
{
  if (([(UISwitchAccessibility *)self safeBoolForKey:@"isOn", a2, self]& 1) != 0)
  {
    v2 = @"1";
  }

  else
  {
    v2 = @"0";
  }

  return v2;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UISwitchAccessibility *)self accessibilityUserDefinedTraits];
  if (location[0])
  {
    unsignedLongLongValue = [location[0] unsignedLongLongValue];
  }

  else
  {
    v6 = *MEMORY[0x29EDC7F70];
    v4 = [(UISwitchAccessibility *)selfCopy safeValueForKey:@"isEnabled"];
    bOOLValue = [v4 BOOLValue];
    *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
    if ((bOOLValue & 1) == 0)
    {
      v6 |= *MEMORY[0x29EDC7FA8];
    }

    v7 = v6 | *MEMORY[0x29EDC7FE8];
    if ([(UISwitchAccessibility *)selfCopy _accessibilityIsAccessibleViaTableViewCell])
    {
      v7 |= *MEMORY[0x29EDC7578];
    }

    unsignedLongLongValue = v7;
  }

  objc_storeStrong(location, 0);
  return unsignedLongLongValue;
}

- (id)_accessibilityKeyCommands
{
  v13[2] = *MEMORY[0x29EDCA608];
  v10 = MEMORY[0x29EDC7AF0];
  v11 = *MEMORY[0x29EDC8170];
  if (([(UISwitchAccessibility *)self _accessibilityIsRTL]& 1) != 0)
  {
    v9 = sel__fkaSwitchOff;
  }

  else
  {
    v9 = sel__fkaSwitchOn;
  }

  v6 = [v10 keyCommandWithInput:v11 modifierFlags:0 action:v9];
  v13[0] = v6;
  v7 = MEMORY[0x29EDC7AF0];
  v8 = *MEMORY[0x29EDC8168];
  if (([(UISwitchAccessibility *)self _accessibilityIsRTL]& 1) != 0)
  {
    v5 = sel__fkaSwitchOn;
  }

  else
  {
    v5 = sel__fkaSwitchOff;
  }

  v3 = [v7 keyCommandWithInput:v8 modifierFlags:0 action:v5];
  v13[1] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:2];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v6);

  return v4;
}

- (void)_fkaSwitchOn
{
  if (([(UISwitchAccessibility *)self safeBoolForKey:@"isOn"]& 1) == 0)
  {
    [(UISwitchAccessibility *)self _keyboardActivate];
  }
}

- (void)_fkaSwitchOff
{
  if (([(UISwitchAccessibility *)self safeBoolForKey:@"isOn"]& 1) != 0)
  {
    [(UISwitchAccessibility *)self _keyboardActivate];
  }
}

- (void)_keyboardActivate
{
  v7[2] = self;
  v7[1] = a2;
  v2 = MEMORY[0x29EDCA5F8];
  v3 = -1073741824;
  v4 = 0;
  v5 = __42__UISwitchAccessibility__keyboardActivate__block_invoke;
  v6 = &unk_29F30C7C8;
  v7[0] = MEMORY[0x29EDC9748](self);
  AXPerformSafeBlock();
  _UIAccessibilitySetAssociatedElementContextForNextNotification();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC75C8], MEMORY[0x29EDB8EA0]);
  objc_storeStrong(v7, 0);
}

id __42__UISwitchAccessibility__keyboardActivate__block_invoke(uint64_t a1)
{
  v4 = a1;
  v3 = a1;
  v2.receiver = *(a1 + 32);
  v2.super_class = UISwitchAccessibility;
  return objc_msgSendSuper2(&v2, sel__keyboardActivate);
}

- (id)accessibilityPath
{
  selfCopy = self;
  v38 = a2;
  v37 = AXRequestingClient();
  if (v37 == 3 || v37 == 4)
  {
    v40 = 0;
  }

  else if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    v20 = [(UIView *)selfCopy safeUIViewForKey:@"visualElement"];
    v36 = [v20 safeUIViewForKey:@"_knobView"];
    MEMORY[0x29EDC9740](v20);
    v21 = v36;
    [v36 bounds];
    v28 = v2;
    v29 = v3;
    v30 = v4;
    v31 = v5;
    [v21 convertRect:selfCopy toView:{v2, v3, v4, v5}];
    v32 = v6;
    v34 = v7;
    v35 = v8;
    v33 = v9 - 3.0;
    CGRectMake_4();
    AX_CGRectGetCenter();
    path[2] = v10;
    path[3] = v11;
    UIRectCenteredAboutPoint();
    *&v24 = v12;
    *(&v24 + 1) = v13;
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v26 = v24;
    v27 = v25;
    path[1] = COERCE_UIBEZIERPATH_(3.0);
    v22 = MEMORY[0x29EDC7948];
    AX_CGRectGetCenter();
    path[0] = [v22 bezierPathWithArcCenter:1 radius:v16 startAngle:v17 endAngle:*&v25 / 2.0 + 3.0 clockwise:{0.0, 6.28318531}];
    v40 = UIAccessibilityConvertPathToScreenCoordinates(path[0], selfCopy);
    objc_storeStrong(path, 0);
    objc_storeStrong(&v36, 0);
  }

  else
  {
    v40 = 0;
  }

  v18 = v40;

  return v18;
}

- (id)_containerViewForLegacyFocusRing
{
  v3 = [(UISwitchAccessibility *)self safeUIViewForKey:@"visualElement"];
  v4 = [v3 safeUIViewForKey:@"_knobView"];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

@end