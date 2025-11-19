@interface _MKUserTrackingButtonAccessibility
- (id)accessibilityValue;
@end

@implementation _MKUserTrackingButtonAccessibility

- (id)accessibilityValue
{
  v2 = [(_MKUserTrackingButtonAccessibility *)self safeValueForKey:@"_state"];
  v3 = [v2 integerValue];

  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = AXMapKitLocString(off_29F2CB300[v3]);
  }

  return v4;
}

@end