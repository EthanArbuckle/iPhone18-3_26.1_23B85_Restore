@interface AMUIPasscodeButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation AMUIPasscodeButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(AMUIPasscodeButtonAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end