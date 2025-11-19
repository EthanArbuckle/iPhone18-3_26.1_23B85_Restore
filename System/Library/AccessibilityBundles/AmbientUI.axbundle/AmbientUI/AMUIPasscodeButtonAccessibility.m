@interface AMUIPasscodeButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation AMUIPasscodeButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(AMUIPasscodeButtonAccessibility *)self safeValueForKey:@"_titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end