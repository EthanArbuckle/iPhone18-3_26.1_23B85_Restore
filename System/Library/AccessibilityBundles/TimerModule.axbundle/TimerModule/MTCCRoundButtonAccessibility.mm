@interface MTCCRoundButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MTCCRoundButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTCCRoundButton" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTCCRoundButton" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MTCCRoundButtonAccessibility *)self safeStringForKey:@"title"];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v5 = [(MTCCRoundButtonAccessibility *)self safeValueForKey:@"image"];
    v6 = [v5 accessibilityIdentifier];
    v7 = [v6 isEqualToString:@"plus"];

    if (v7)
    {
      accessibilityLocalizedString(@"timer.add.button");
    }

    else
    {
      [v5 accessibilityLabel];
    }
    v4 = ;
  }

  return v4;
}

@end