@interface UIPageControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsUserInteractionEnabled;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityPath;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (int64_t)_accessibilityPageCount;
- (int64_t)_accessibilityPageIndex;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setCurrentPage:(int64_t)page;
@end

@implementation UIPageControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v6 = @"UIPageControl";
  v3 = "v";
  [location[0] validateClass:"q" hasInstanceMethod:0 withFullSignature:?];
  v4 = "B";
  [location[0] validateClass:v6 hasInstanceMethod:@"_updateCurrentPageDisplayWithForceUpdate:" withFullSignature:{v3, "B", 0}];
  v5 = @"UIControl";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v6 isKindOfClass:v5];
  [location[0] validateClass:v6 hasInstanceVariable:@"_visualProvider" withType:"_UIPageControlVisualProvider"];
  v7 = @"_UIInteractivePageControlVisualProvider";
  [location[0] validateClass:?];
  [location[0] validateClass:v7 hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  objc_storeStrong(v9, v8);
}

- (int64_t)_accessibilityPageCount
{
  v3 = [(UIPageControlAccessibility *)self safeValueForKey:@"numberOfPages"];
  integerValue = [v3 integerValue];
  MEMORY[0x29EDC9740](v3);
  return integerValue;
}

- (int64_t)_accessibilityPageIndex
{
  v3 = [(UIPageControlAccessibility *)self safeValueForKey:@"currentPage"];
  integerValue = [v3 integerValue];
  MEMORY[0x29EDC9740](v3);
  return integerValue;
}

- (void)setCurrentPage:(int64_t)page
{
  selfCopy = self;
  v9 = a2;
  pageCopy = page;
  v4 = [(UIPageControlAccessibility *)self safeValueForKey:@"currentPage"];
  integerValue = [v4 integerValue];
  *&v3 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v7 = integerValue;
  v6.receiver = selfCopy;
  v6.super_class = UIPageControlAccessibility;
  [(UIPageControlAccessibility *)&v6 setCurrentPage:pageCopy, v3];
  if (pageCopy != v7)
  {
    [(UIPageControlAccessibility *)selfCopy _accessibilityCurrentPageDidChange];
  }
}

- (CGRect)accessibilityFrame
{
  v6 = [(UIPageControlAccessibility *)self safeValueForKey:@"bounds"];
  [v6 rectValue];
  MEMORY[0x29EDC9740](v6);
  UIAccessibilityFrameForBounds();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)accessibilityPath
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [(UIPageControlAccessibility *)self safeValueForKey:@"_visualProvider"];
  NSClassFromString(&cfstr_Uiinteractivep.isa);
  if (objc_opt_isKindOfClass())
  {
    v7 = [v8[0] safeUIViewForKey:@"contentView"];
    [v7 accessibilityFrame];
    rect = v12;
    accessibilityPath = [MEMORY[0x29EDC7948] _bezierPathWithArcRoundedRect:v12.origin.x cornerRadius:{v12.origin.y, v12.size.width, v12.size.height, CGRectGetHeight(v12) / 2.0}];
    v5 = 1;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UIPageControlAccessibility;
    accessibilityPath = [(UIPageControlAccessibility *)&v4 accessibilityPath];
    v5 = 1;
  }

  objc_storeStrong(v8, 0);
  v2 = accessibilityPath;

  return v2;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v20 = [(UIPageControlAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v12 = 0;
  v8 = 0;
  if ((v20 & 1) == 0)
  {
    v14 = MEMORY[0x29EDCA5F8];
    v15 = -1073741824;
    v16 = 0;
    v17 = __62__UIPageControlAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v18 = &unk_29F30CEB0;
    v19 = MEMORY[0x29EDC9748](selfCopy);
    v13 = &v19;
    v12 = 1;
    v8 = (__62__UIPageControlAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v8)
  {
    [(UIPageControlAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:?];
    v11 = [(UIPageControlAccessibility *)selfCopy accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
    [(UIPageControlAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v24 = MEMORY[0x29EDC9748](v11);
    v10 = 1;
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v10 = 0;
  }

  if (v12)
  {
    objc_storeStrong(v13, 0);
  }

  if (!v10)
  {
    UIAccessibilityPointForPoint();
    point.x = v4;
    point.y = v5;
    if ([(UIPageControlAccessibility *)selfCopy isAccessibilityElement]&& ([(UIPageControlAccessibility *)selfCopy accessibilityFrame], CGRectContainsPoint(v26, point)))
    {
      v24 = MEMORY[0x29EDC9748](selfCopy);
    }

    else
    {
      v24 = 0;
    }
  }

  objc_storeStrong(location, 0);
  v6 = v24;

  return v6;
}

BOOL __62__UIPageControlAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &UIKBEmojiZeroWidthJoiner_block_invoke_onceToken_0;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_28);
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

  return Implementation != UIKBEmojiZeroWidthJoiner_block_invoke_BaseImplementation_0;
}

void __62__UIPageControlAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    UIKBEmojiZeroWidthJoiner_block_invoke_BaseImplementation_0 = method_getImplementation(InstanceMethod);
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
  isAccessibilityUserDefinedElement = [(UIPageControlAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(UIPageControlAccessibility *)self isAccessibilityUserDefinedElement];
    v11 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  }

  else
  {
    v6 = [(UIPageControlAccessibility *)self safeValueForKey:@"numberOfPages", v2];
    integerValue = [v6 integerValue];
    *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    if (integerValue >= 1)
    {
      v5 = [(UIPageControlAccessibility *)self safeValueForKey:@"hidden", v3];
      v11 = ([v5 BOOLValue] ^ 1) & 1;
      MEMORY[0x29EDC9740](v5);
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

- (id)accessibilityValue
{
  selfCopy = self;
  v17[1] = a2;
  accessibilityUserDefinedValue = [(UIPageControlAccessibility *)self accessibilityUserDefinedValue];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedValue).n128_u64[0];
  if (accessibilityUserDefinedValue)
  {
    accessibilityUserDefinedValue2 = [(UIPageControlAccessibility *)selfCopy accessibilityUserDefinedValue];
  }

  else
  {
    v16 = 0;
    objc_opt_class();
    v15 = __UIAccessibilityCastAsClass();
    v14 = MEMORY[0x29EDC9748](v15);
    objc_storeStrong(&v15, 0);
    v17[0] = v14;
    v13[2] = ([v14 currentPage] + 1);
    v13[1] = [v17[0] numberOfPages];
    v13[0] = [v17[0] progress];
    if (v13[0])
    {
      v11 = accessibilityLocalizedString(@"page.control.format.text.with.progress");
      v10 = AXFormatInteger();
      v9 = AXFormatInteger();
      [v13[0] currentProgress];
      v7 = AXFormatFloatWithPercentage();
      accessibilityUserDefinedValue2 = AXCFormattedString();
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v9);
      MEMORY[0x29EDC9740](v10);
      MEMORY[0x29EDC9740](v11);
    }

    else
    {
      v8 = accessibilityLocalizedString(@"page.control.format.text");
      v5 = AXFormatInteger();
      v6 = AXFormatInteger();
      accessibilityUserDefinedValue2 = AXCFormattedString();
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](v8);
    }

    objc_storeStrong(v13, 0);
    objc_storeStrong(v17, 0);
  }

  v3 = accessibilityUserDefinedValue2;

  return v3;
}

- (BOOL)_accessibilityIsUserInteractionEnabled
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIPageControlAccessibility;
  return [(UIPageControlAccessibility *)&v3 _accessibilityIsUserInteractionEnabled];
}

- (void)accessibilityIncrement
{
  selfCopy = self;
  v7 = a2;
  if ([(UIPageControlAccessibility *)self _accessibilityIsUserInteractionEnabled])
  {
    v2 = [(UIPageControlAccessibility *)selfCopy safeValueForKey:@"currentPage"];
    v6 = ([v2 integerValue] + 1);
    v3 = [(UIPageControlAccessibility *)selfCopy safeValueForKey:@"numberOfPages", MEMORY[0x29EDC9740](v2).n128_f64[0]];
    integerValue = [v3 integerValue];
    MEMORY[0x29EDC9740](v3);
    v5[2] = integerValue;
    if (v6 < integerValue)
    {
      v5[0] = MEMORY[0x29EDC9748](selfCopy);
      v5[1] = v6;
      AXPerformSafeBlock();
      objc_storeStrong(v5, 0);
    }
  }
}

void __52__UIPageControlAccessibility_accessibilityIncrement__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setCurrentPage:*(a1 + 40)];
  if (([*(a1 + 32) safeBoolForKey:@"defersCurrentPageDisplay"] & 1) == 0)
  {
    [*(a1 + 32) _updateCurrentPageDisplayWithForceUpdate:1];
  }

  [*(a1 + 32) sendActionsForControlEvents:4096];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *(a1 + 32));
}

- (void)accessibilityDecrement
{
  selfCopy = self;
  v6 = a2;
  if ([(UIPageControlAccessibility *)self _accessibilityIsUserInteractionEnabled])
  {
    v2 = [(UIPageControlAccessibility *)selfCopy safeValueForKey:@"currentPage"];
    v3 = [v2 integerValue] - 1;
    MEMORY[0x29EDC9740](v2);
    v5 = v3;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4[0] = MEMORY[0x29EDC9748](selfCopy);
      v4[1] = v5;
      AXPerformSafeBlock();
      objc_storeStrong(v4, 0);
    }
  }
}

void __52__UIPageControlAccessibility_accessibilityDecrement__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setCurrentPage:*(a1 + 40)];
  if (([*(a1 + 32) safeBoolForKey:@"defersCurrentPageDisplay"] & 1) == 0)
  {
    [*(a1 + 32) _updateCurrentPageDisplayWithForceUpdate:1];
  }

  [*(a1 + 32) sendActionsForControlEvents:4096];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *(a1 + 32));
}

- (id)accessibilityUserInputLabels
{
  selfCopy = self;
  v12[1] = a2;
  v11.receiver = self;
  v11.super_class = UIPageControlAccessibility;
  v12[0] = [(UIPageControlAccessibility *)&v11 accessibilityUserInputLabels];
  if (![v12[0] count])
  {
    accessibilityLabel = [(UIPageControlAccessibility *)selfCopy accessibilityLabel];
    v2 = MEMORY[0x29ED3D9A0]();
    v3 = v12[0];
    v12[0] = v2;
    MEMORY[0x29EDC9740](v3);
    *&v4 = MEMORY[0x29EDC9740](accessibilityLabel).n128_u64[0];
    if (![v12[0] count])
    {
      v9 = accessibilityLocalizedString(@"page.control.text");
      v5 = MEMORY[0x29ED3D9A0]();
      v6 = v12[0];
      v12[0] = v5;
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v9);
    }
  }

  v8 = MEMORY[0x29EDC9748](v12[0]);
  objc_storeStrong(v12, 0);

  return v8;
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UIPageControlAccessibility;
  canBecomeFocused = [(UIPageControlAccessibility *)&v3 canBecomeFocused];
  if (([(UIPageControlAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    canBecomeFocused = 1;
  }

  return canBecomeFocused & 1;
}

@end