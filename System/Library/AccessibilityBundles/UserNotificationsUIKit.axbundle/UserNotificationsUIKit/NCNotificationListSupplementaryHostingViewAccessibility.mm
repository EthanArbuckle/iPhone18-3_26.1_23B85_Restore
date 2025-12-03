@interface NCNotificationListSupplementaryHostingViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation NCNotificationListSupplementaryHostingViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
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
    v10 = [(NCNotificationListSupplementaryHostingViewAccessibility *)&v12 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  return v10;
}

@end