@interface EKUIAvailabilityFreeSpanViewAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
@end

@implementation EKUIAvailabilityFreeSpanViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(EKUIAvailabilityFreeSpanViewAccessibility *)self safeValueForKey:@"startDate"];
  v3 = AXDateStringForFormat();

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  [(EKUIAvailabilityFreeSpanViewAccessibility *)self accessibilityFrame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MinX = CGRectGetMinX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MinY = CGRectGetMinY(v11);
  v8 = MinX;
  result.y = MinY;
  result.x = v8;
  return result;
}

@end