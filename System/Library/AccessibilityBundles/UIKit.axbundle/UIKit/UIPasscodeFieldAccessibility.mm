@interface UIPasscodeFieldAccessibility
- (id)_accessibilityChildren;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityLabel;
- (void)_accessibilitySetValue:(id)value;
- (void)setShowsOKButton:(BOOL)button;
@end

@implementation UIPasscodeFieldAccessibility

- (void)setShowsOKButton:(BOOL)button
{
  selfCopy = self;
  v5 = a2;
  buttonCopy = button;
  v3.receiver = self;
  v3.super_class = UIPasscodeFieldAccessibility;
  [(UIPasscodeFieldAccessibility *)&v3 setShowsOKButton:button];
  [(UIPasscodeFieldAccessibility *)selfCopy _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)_accessibilityChildren
{
  selfCopy = self;
  if (self)
  {
    v18 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
    objc_initWeak(&location, selfCopy);
    v16 = [selfCopy _accessibilityValueForKey:@"TextElement"];
    if (!v16)
    {
      v9 = objc_alloc(MEMORY[0x29EDC78F8]);
      v8 = [v9 initWithAccessibilityContainer:selfCopy];
      v16 = v8;
      [selfCopy _accessibilitySetRetainedValue:v8 forKey:{@"TextElement", MEMORY[0x29EDC9740](0).n128_f64[0]}];
      [v8 setAccessibilityDelegate:selfCopy];
      v10 = MEMORY[0x29EDCA5F8];
      v11 = -1073741824;
      v12 = 0;
      v13 = __54__UIPasscodeFieldAccessibility__accessibilityChildren__block_invoke;
      v14 = &unk_29F30CAE8;
      objc_copyWeak(&v15, &location);
      [v8 _setAccessibilityFrameBlock:&v10];
      [v16 setAccessibilityTraits:*MEMORY[0x29EDC7568] | *MEMORY[0x29EDC7598] | *MEMORY[0x29EDC7528]];
      objc_destroyWeak(&v15);
    }

    [v18 addObject:v16];
    v6 = [selfCopy safeValueForKey:@"showsOKButton"];
    bOOLValue = [v6 BOOLValue];
    *&v1 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    if (bOOLValue)
    {
      v5 = v18;
      v4 = [selfCopy safeValueForKey:{@"_okButton", v1}];
      [v5 axSafelyAddObject:?];
      MEMORY[0x29EDC9740](v4);
    }

    v20 = MEMORY[0x29EDC9748](v18);
    objc_storeStrong(&v16, 0);
    objc_destroyWeak(&location);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v20 = 0;
  }

  v2 = v20;

  return v2;
}

double __54__UIPasscodeFieldAccessibility__accessibilityChildren__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];
  v4 = v1;
  MEMORY[0x29EDC9740](WeakRetained);
  return v4;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v25 = [(UIPasscodeFieldAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v17 = 0;
  v9 = 0;
  if ((v25 & 1) == 0)
  {
    v19 = MEMORY[0x29EDCA5F8];
    v20 = -1073741824;
    v21 = 0;
    v22 = __64__UIPasscodeFieldAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v23 = &unk_29F30CEB0;
    v24 = MEMORY[0x29EDC9748](selfCopy);
    v18 = &v24;
    v17 = 1;
    v9 = (__64__UIPasscodeFieldAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v9)
  {
    [(UIPasscodeFieldAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:?];
    v16 = [(UIPasscodeFieldAccessibility *)selfCopy accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
    [(UIPasscodeFieldAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v29 = MEMORY[0x29EDC9748](v16);
    v15 = 1;
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v15 = 0;
  }

  if (v17)
  {
    objc_storeStrong(v18, 0);
  }

  if (!v15)
  {
    _accessibilityParentView = [(UIPasscodeFieldAccessibility *)selfCopy _accessibilityParentView];
    UIAccessibilityPointForPoint();
    point.x = v4;
    point.y = v5;
    MEMORY[0x29EDC9740](_accessibilityParentView);
    _accessibilityChildren = [(UIPasscodeFieldAccessibility *)selfCopy _accessibilityChildren];
    if ([_accessibilityChildren count] != 2 || ((v12 = objc_msgSend(_accessibilityChildren, "objectAtIndex:", 1), objc_msgSend(v12, "accessibilityFrame"), rect = v31, !CGRectContainsPoint(v31, point)) ? (v15 = 0) : (v29 = MEMORY[0x29EDC9748](v12), v15 = 1), objc_storeStrong(&v12, 0), !v15))
    {
      v10.receiver = selfCopy;
      v10.super_class = UIPasscodeFieldAccessibility;
      v29 = [(UIPasscodeFieldAccessibility *)&v10 _accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y, _accessibilityParentView];
      v15 = 1;
    }

    objc_storeStrong(&_accessibilityChildren, 0);
  }

  objc_storeStrong(location, 0);
  v6 = v29;

  return v6;
}

BOOL __64__UIPasscodeFieldAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &UIKBEmojiZeroWidthJoiner_block_invoke_onceToken_1;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_29);
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

  return Implementation != UIKBEmojiZeroWidthJoiner_block_invoke_BaseImplementation_1;
}

void __64__UIPasscodeFieldAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    UIKBEmojiZeroWidthJoiner_block_invoke_BaseImplementation_1 = method_getImplementation(InstanceMethod);
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

- (void)_accessibilitySetValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIPasscodeFieldAccessibility *)selfCopy setStringValue:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v15 = a2;
  v6 = [(UIPasscodeFieldAccessibility *)self safeValueForKey:@"numberOfEntryFields"];
  integerValue = [v6 integerValue];
  v7 = [(UIPasscodeFieldAccessibility *)selfCopy safeValueForKey:@"stringValue", MEMORY[0x29EDC9740](v6).n128_f64[0]];
  v11 = 0;
  v9 = 0;
  if ([v7 length])
  {
    v12 = accessibilityLocalizedString(@"secure.password.field");
    v11 = 1;
    v2 = MEMORY[0x29EDC9748](v12);
  }

  else
  {
    v10 = accessibilityLocalizedString(@"secure.password.field.empty");
    v9 = 1;
    v2 = MEMORY[0x29EDC9748](v10);
  }

  v13 = v2;
  if (v9)
  {
    MEMORY[0x29EDC9740](v10);
  }

  if (v11)
  {
    MEMORY[0x29EDC9740](v12);
  }

  MEMORY[0x29EDC9740](v7);
  v8 = accessibilityLocalizedString(@"secure.password.field.numchars.required");
  v4 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v8, integerValue];
  v5 = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v13, 0);

  return v5;
}

@end