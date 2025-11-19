@interface _UIScrollViewScrollIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (id)_axBasicDescription;
- (id)accessibilityLabel;
- (id)accessibilityScrollIndicatorDelegate;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (uint64_t)accessibilityScrollDirection;
- (uint64_t)accessibilityScrollIndicatorIsFocused;
- (uint64_t)setAccessibilityScrollDirection:(uint64_t)result;
- (uint64_t)setAccessibilityScrollIndicatorIsFocused:(uint64_t)result;
- (void)accessibilityDecrement;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)accessibilityIncrement;
- (void)setAccessibilityScrollIndicatorDelegate:(uint64_t)a1;
@end

@implementation _UIScrollViewScrollIndicatorAccessibility

- (id)accessibilityScrollIndicatorDelegate
{
  if (a1)
  {
    v2 = __UIAccessibilityGetAssociatedNonRetainedObject();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAccessibilityScrollIndicatorDelegate:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedNonRetainedObject();
  }

  objc_storeStrong(&location, 0);
}

- (uint64_t)accessibilityScrollDirection
{
  if (a1)
  {
    return __UIAccessibilityGetAssociatedLong();
  }

  else
  {
    return 0;
  }
}

- (uint64_t)setAccessibilityScrollDirection:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedLong();
  }

  return result;
}

- (uint64_t)accessibilityScrollIndicatorIsFocused
{
  if (a1)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)setAccessibilityScrollIndicatorIsFocused:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (BOOL)isAccessibilityElement
{
  v3 = [(_UIScrollViewScrollIndicatorAccessibility *)self accessibilityScrollIndicatorDelegate];
  v4 = [v3 accessibilityShouldEnableScrollIndicator:self];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)_axBasicDescription
{
  v9 = a1;
  if (a1)
  {
    v8 = 0;
    v7 = [(_UIScrollViewScrollIndicatorAccessibility *)v9 accessibilityScrollDirection];
    if (v7 == 1)
    {
      v1 = accessibilityLocalizedString(@"scroll.bar.vertical");
      v2 = v8;
      v8 = v1;
      MEMORY[0x29EDC9740](v2);
    }

    else if (v7 == 2)
    {
      v3 = accessibilityLocalizedString(@"scroll.bar.horizontal");
      v4 = v8;
      v8 = v3;
      MEMORY[0x29EDC9740](v4);
    }

    v10 = MEMORY[0x29EDC9748](v8);
    objc_storeStrong(&v8, 0);
  }

  else
  {
    v10 = 0;
  }

  v5 = v10;

  return v5;
}

- (id)accessibilityLabel
{
  v12 = self;
  v11[1] = a2;
  v11[0] = [(_UIScrollViewScrollIndicatorAccessibility *)self _axBasicDescription];
  v6 = [(_UIScrollViewScrollIndicatorAccessibility *)v12 accessibilityScrollIndicatorDelegate];
  v7 = [v6 accessibilityNumberOfPagesForScrollIndicator:v12];
  MEMORY[0x29EDC9740](v6);
  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityLocalizedString(@"page.count");
  v5 = [v8 localizedStringWithFormat:v7];
  v2 = __UIAXStringForVariables();
  v3 = v11[0];
  v11[0] = v2;
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v9);
  v10 = MEMORY[0x29EDC9748](v11[0]);
  objc_storeStrong(v11, 0);

  return v10;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(_UIScrollViewScrollIndicatorAccessibility *)self _axBasicDescription];
  v4 = MEMORY[0x29ED3D9A0]();
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(_UIScrollViewScrollIndicatorAccessibility *)self accessibilityScrollIndicatorDelegate];
  [v3 accessibilityProgressForScrollIndicator:self];
  v4 = AXFormatFloatWithPercentage();
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (CGRect)accessibilityFrame
{
  v10 = [(_UIScrollViewScrollIndicatorAccessibility *)self accessibilityScrollIndicatorDelegate];
  [v10 accessibilityFrameForScrollIndicator:self];
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  MEMORY[0x29EDC9740](v10);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  v22 = self;
  v21 = a2;
  v14 = 0;
  objc_opt_class();
  v13 = __UIAccessibilityCastAsClass();
  v12 = MEMORY[0x29EDC9748](v13);
  objc_storeStrong(&v13, 0);
  [v12 bounds];
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  AX_CGRectGetCenter();
  v19 = v6;
  v20 = v7;
  UIAccessibilityPointForPoint();
  v23 = v8;
  v24 = v9;
  MEMORY[0x29EDC9740](v12);
  v10 = v23;
  v11 = v24;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)accessibilityIncrement
{
  v2 = [(_UIScrollViewScrollIndicatorAccessibility *)self accessibilityScrollIndicatorDelegate];
  [v2 accessibilityScrollIndicator:self addProgress:-0.1];
  MEMORY[0x29EDC9740](v2);
}

- (void)accessibilityDecrement
{
  v2 = [(_UIScrollViewScrollIndicatorAccessibility *)self accessibilityScrollIndicatorDelegate];
  [v2 accessibilityScrollIndicator:self addProgress:0.1];
  MEMORY[0x29EDC9740](v2);
}

- (void)accessibilityElementDidBecomeFocused
{
  [_UIScrollViewScrollIndicatorAccessibility setAccessibilityScrollIndicatorIsFocused:?];
  v2 = [(_UIScrollViewScrollIndicatorAccessibility *)self accessibilityScrollIndicatorDelegate];
  [v2 accessibilityScrollIndicator:self didBecomeFocused:1];
  MEMORY[0x29EDC9740](v2);
}

- (void)accessibilityElementDidLoseFocus
{
  [_UIScrollViewScrollIndicatorAccessibility setAccessibilityScrollIndicatorIsFocused:?];
  v2 = [(_UIScrollViewScrollIndicatorAccessibility *)self accessibilityScrollIndicatorDelegate];
  [v2 accessibilityScrollIndicator:self didBecomeFocused:0];
  MEMORY[0x29EDC9740](v2);
}

@end