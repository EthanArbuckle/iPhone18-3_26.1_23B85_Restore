@interface MKPlaceHeaderButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation MKPlaceHeaderButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(MKPlaceHeaderButtonAccessibility *)self safeValueForKey:@"titleLabel"];
  v3 = [v2 accessibilityLabel];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];

  return v4;
}

@end