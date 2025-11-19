@interface MKUserTrackingBarButtonItemAccessibility
- (id)accessibilityValue;
@end

@implementation MKUserTrackingBarButtonItemAccessibility

- (id)accessibilityValue
{
  v2 = [(MKUserTrackingBarButtonItemAccessibility *)self safeValueForKey:@"_state"];
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