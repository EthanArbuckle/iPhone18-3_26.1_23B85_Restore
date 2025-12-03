@interface MTCCRoundButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MTCCRoundButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTCCRoundButton" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTCCRoundButton" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
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
    accessibilityIdentifier = [v5 accessibilityIdentifier];
    v7 = [accessibilityIdentifier isEqualToString:@"plus"];

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