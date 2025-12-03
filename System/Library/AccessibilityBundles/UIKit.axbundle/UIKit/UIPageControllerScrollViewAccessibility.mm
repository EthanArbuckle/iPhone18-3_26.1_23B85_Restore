@interface UIPageControllerScrollViewAccessibility
- (id)_accessibilityScrollStatus;
- (void)_accessibilitySendScrollStatus;
@end

@implementation UIPageControllerScrollViewAccessibility

- (void)_accessibilitySendScrollStatus
{
  v3[2] = self;
  v3[1] = a2;
  v3[0] = [(UIPageControllerScrollViewAccessibility *)self _accessibilityScrollStatus];
  argument = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v3[0]];
  [argument setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBDB20]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EF0], argument);
  objc_storeStrong(&argument, 0);
  objc_storeStrong(v3, 0);
}

- (id)_accessibilityScrollStatus
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UIPageControllerScrollViewAccessibility *)self safeValueForKey:@"_pageController"];
  if (location[0])
  {
    v4 = [location[0] safeValueForKey:@"visibleIndex"];
    integerValue = [v4 integerValue];
    v5 = [location[0] safeValueForKey:{@"pageCount", MEMORY[0x29EDC9740](v4).n128_f64[0]}];
    integerValue2 = [v5 integerValue];
    MEMORY[0x29EDC9740](v5);
    v13 = integerValue2;
    v7 = MEMORY[0x29EDBA0F8];
    v10 = accessibilityLocalizedString(@"scroll.page.summary");
    v9 = AXFormatInteger();
    v8 = AXFormatInteger();
    _accessibilityScrollStatus = [v7 stringWithFormat:v10, v9, v8];
    MEMORY[0x29EDC9740](v8);
    MEMORY[0x29EDC9740](v9);
    MEMORY[0x29EDC9740](v10);
  }

  else
  {
    v11.receiver = selfCopy;
    v11.super_class = UIPageControllerScrollViewAccessibility;
    _accessibilityScrollStatus = [(UIPageControllerScrollViewAccessibility *)&v11 _accessibilityScrollStatus];
  }

  v12 = 1;
  objc_storeStrong(location, 0);
  v2 = _accessibilityScrollStatus;

  return v2;
}

@end