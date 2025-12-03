@interface MKUserTrackingBarButtonItemAccessibility
- (id)accessibilityValue;
@end

@implementation MKUserTrackingBarButtonItemAccessibility

- (id)accessibilityValue
{
  v2 = [(MKUserTrackingBarButtonItemAccessibility *)self safeValueForKey:@"_state"];
  integerValue = [v2 integerValue];

  if (integerValue > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = AXMapKitLocString(off_29F2CB300[integerValue]);
  }

  return v4;
}

@end