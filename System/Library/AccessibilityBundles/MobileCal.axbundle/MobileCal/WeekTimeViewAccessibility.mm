@interface WeekTimeViewAccessibility
- (WeekTimeViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation WeekTimeViewAccessibility

- (WeekTimeViewAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = WeekTimeViewAccessibility;
  v3 = [(WeekTimeViewAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WeekTimeViewAccessibility *)v3 setAccessibilityElementsHidden:1];
  }

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = WeekTimeViewAccessibility;
  [(WeekTimeViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(WeekTimeViewAccessibility *)self setAccessibilityElementsHidden:1];
}

@end