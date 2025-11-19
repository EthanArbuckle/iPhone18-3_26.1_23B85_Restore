@interface NCNotificationListSupplementaryHostingViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation NCNotificationListSupplementaryHostingViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(NCNotificationListSupplementaryHostingViewAccessibility *)self safeValueForKey:@"hostedView"];
  NSClassFromString(&cfstr_Csprominentuis.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NCNotificationListSupplementaryHostingViewAccessibility;
    v10 = [(NCNotificationListSupplementaryHostingViewAccessibility *)&v12 _accessibilityHitTest:v7 withEvent:x, y];
  }

  return v10;
}

@end