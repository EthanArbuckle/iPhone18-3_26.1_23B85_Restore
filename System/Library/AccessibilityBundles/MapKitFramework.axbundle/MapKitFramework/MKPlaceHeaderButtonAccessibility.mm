@interface MKPlaceHeaderButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation MKPlaceHeaderButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(MKPlaceHeaderButtonAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];
  v4 = [accessibilityLabel stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];

  return v4;
}

@end