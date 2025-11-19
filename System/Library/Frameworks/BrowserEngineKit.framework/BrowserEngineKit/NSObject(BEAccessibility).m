@interface NSObject(BEAccessibility)
- (uint64_t)browserAccessibilityContainerType;
- (uint64_t)browserAccessibilityHasDOMFocus;
- (uint64_t)browserAccessibilityIsRequired;
- (uint64_t)browserAccessibilityPressedState;
- (uint64_t)browserAccessibilitySelectedTextRange;
- (void)browserAccessibilitySetSelectedTextRange:()BEAccessibility;
- (void)setBrowserAccessibilityContainerType:()BEAccessibility;
- (void)setBrowserAccessibilityHasDOMFocus:()BEAccessibility;
- (void)setBrowserAccessibilityIsRequired:()BEAccessibility;
- (void)setBrowserAccessibilityPressedState:()BEAccessibility;
@end

@implementation NSObject(BEAccessibility)

- (uint64_t)browserAccessibilityIsRequired
{
  v1 = objc_getAssociatedObject(a1, &BrowserAccessibilityIsRequired);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setBrowserAccessibilityIsRequired:()BEAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, &BrowserAccessibilityIsRequired, v2, 1);
}

- (uint64_t)browserAccessibilityHasDOMFocus
{
  v1 = objc_getAssociatedObject(a1, &BrowserAccessibilityHasDOMFocus);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setBrowserAccessibilityHasDOMFocus:()BEAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, &BrowserAccessibilityHasDOMFocus, v2, 1);
}

- (uint64_t)browserAccessibilityPressedState
{
  v1 = objc_getAssociatedObject(a1, &BrowserAccessibilityPressedState);
  v2 = [v1 integerValue];

  return v2;
}

- (void)setBrowserAccessibilityPressedState:()BEAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(a1, &BrowserAccessibilityPressedState, v2, 1);
}

- (uint64_t)browserAccessibilityContainerType
{
  v1 = objc_getAssociatedObject(a1, &BrowserAccessibilityContainerType);
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (void)setBrowserAccessibilityContainerType:()BEAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(a1, &BrowserAccessibilityContainerType, v2, 1);
}

- (uint64_t)browserAccessibilitySelectedTextRange
{
  v1 = objc_getAssociatedObject(a1, &BrowserAccessibilitySelectedTextRange);
  v2 = [v1 rangeValue];

  return v2;
}

- (void)browserAccessibilitySetSelectedTextRange:()BEAccessibility
{
  v2 = [MEMORY[0x1E696B098] valueWithRange:?];
  objc_setAssociatedObject(a1, &BrowserAccessibilitySelectedTextRange, v2, 1);
}

@end