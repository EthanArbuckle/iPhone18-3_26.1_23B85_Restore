@interface SwiftUIVerticalTextViewAccessibility
- (CGPoint)accessibilityActivationPoint;
@end

@implementation SwiftUIVerticalTextViewAccessibility

- (CGPoint)accessibilityActivationPoint
{
  v9.receiver = self;
  v9.super_class = SwiftUIVerticalTextViewAccessibility;
  [(SwiftUIVerticalTextViewAccessibility *)&v9 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;
  if ([(SwiftUIVerticalTextViewAccessibility *)self safeIntegerForKey:@"marginTop"])
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 5.0;
  }

  v8 = v4;
  result.y = v7;
  result.x = v8;
  return result;
}

@end