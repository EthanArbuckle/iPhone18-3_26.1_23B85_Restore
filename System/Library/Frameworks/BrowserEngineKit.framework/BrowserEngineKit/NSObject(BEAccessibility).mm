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
  v1 = objc_getAssociatedObject(self, &BrowserAccessibilityIsRequired);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setBrowserAccessibilityIsRequired:()BEAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, &BrowserAccessibilityIsRequired, v2, 1);
}

- (uint64_t)browserAccessibilityHasDOMFocus
{
  v1 = objc_getAssociatedObject(self, &BrowserAccessibilityHasDOMFocus);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setBrowserAccessibilityHasDOMFocus:()BEAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, &BrowserAccessibilityHasDOMFocus, v2, 1);
}

- (uint64_t)browserAccessibilityPressedState
{
  v1 = objc_getAssociatedObject(self, &BrowserAccessibilityPressedState);
  integerValue = [v1 integerValue];

  return integerValue;
}

- (void)setBrowserAccessibilityPressedState:()BEAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(self, &BrowserAccessibilityPressedState, v2, 1);
}

- (uint64_t)browserAccessibilityContainerType
{
  v1 = objc_getAssociatedObject(self, &BrowserAccessibilityContainerType);
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setBrowserAccessibilityContainerType:()BEAccessibility
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(self, &BrowserAccessibilityContainerType, v2, 1);
}

- (uint64_t)browserAccessibilitySelectedTextRange
{
  v1 = objc_getAssociatedObject(self, &BrowserAccessibilitySelectedTextRange);
  rangeValue = [v1 rangeValue];

  return rangeValue;
}

- (void)browserAccessibilitySetSelectedTextRange:()BEAccessibility
{
  v2 = [MEMORY[0x1E696B098] valueWithRange:?];
  objc_setAssociatedObject(self, &BrowserAccessibilitySelectedTextRange, v2, 1);
}

@end