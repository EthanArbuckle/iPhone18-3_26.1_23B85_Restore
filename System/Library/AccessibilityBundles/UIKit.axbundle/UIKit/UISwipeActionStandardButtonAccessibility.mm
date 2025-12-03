@interface UISwipeActionStandardButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation UISwipeActionStandardButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UISwipeActionStandardButton" hasInstanceVariable:@"_buttonWidth" withType:"d"];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v26 = [(UISwipeActionStandardButtonAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v18 = 0;
  v12 = 0;
  if ((v26 & 1) == 0)
  {
    v20 = MEMORY[0x29EDCA5F8];
    v21 = -1073741824;
    v22 = 0;
    v23 = __76__UISwipeActionStandardButtonAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v24 = &unk_29F30CEB0;
    v25 = MEMORY[0x29EDC9748](selfCopy);
    v19 = &v25;
    v18 = 1;
    v12 = (__76__UISwipeActionStandardButtonAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v12)
  {
    [(UISwipeActionStandardButtonAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:?];
    v17 = [(UISwipeActionStandardButtonAccessibility *)selfCopy accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
    [(UISwipeActionStandardButtonAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v30 = MEMORY[0x29EDC9748](v17);
    v16 = 1;
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v16 = 0;
  }

  if (v18)
  {
    objc_storeStrong(v19, 0);
  }

  if (!v16)
  {
    [(UISwipeActionStandardButtonAccessibility *)selfCopy accessibilityFrame];
    rect.origin.x = v4;
    rect.origin.y = v5;
    rect.size.width = v6;
    rect.size.height = v7;
    UIAccessibilityPointForPoint();
    point.x = v8;
    point.y = v9;
    if (CGRectContainsPoint(rect, point))
    {
      v30 = MEMORY[0x29EDC9748](selfCopy);
    }

    else
    {
      v13.receiver = selfCopy;
      v13.super_class = UISwipeActionStandardButtonAccessibility;
      v30 = [(UISwipeActionStandardButtonAccessibility *)&v13 _accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
    }

    v16 = 1;
  }

  objc_storeStrong(location, 0);
  v10 = v30;

  return v10;
}

BOOL __76__UISwipeActionStandardButtonAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &MACancelDownloadErrorDomain_block_invoke_onceToken_1;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_36);
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

  return Implementation != MACancelDownloadErrorDomain_block_invoke_BaseImplementation_1;
}

void __76__UISwipeActionStandardButtonAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    MACancelDownloadErrorDomain_block_invoke_BaseImplementation_1 = method_getImplementation(InstanceMethod);
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

- (CGRect)accessibilityFrame
{
  [(UISwipeActionStandardButtonAccessibility *)self bounds];
  rect.origin.x = v2;
  rect.origin.y = v3;
  rect.size.height = v4;
  [(UISwipeActionStandardButtonAccessibility *)self safeCGFloatForKey:@"_buttonWidth"];
  rect.size.width = v5;
  return UIAccessibilityConvertFrameToScreenCoordinates(rect, self);
}

@end