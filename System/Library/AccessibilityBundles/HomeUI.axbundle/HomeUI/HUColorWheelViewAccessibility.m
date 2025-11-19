@interface HUColorWheelViewAccessibility
- (CGPoint)accessibilityActivationPoint;
@end

@implementation HUColorWheelViewAccessibility

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(HUColorWheelViewAccessibility *)self superview];
  v3 = [v2 subviews];

  v4 = [v3 axFilterObjectsUsingBlock:&__block_literal_global_4];
  v5 = [v4 firstObject];

  [v5 accessibilityActivationPoint];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

uint64_t __61__HUColorWheelViewAccessibility_accessibilityActivationPoint__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2DA460](@"HUQuickControlMagnifierView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end