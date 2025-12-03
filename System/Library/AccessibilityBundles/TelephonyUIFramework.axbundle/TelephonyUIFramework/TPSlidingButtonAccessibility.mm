@interface TPSlidingButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
@end

@implementation TPSlidingButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TPSlidingButton" hasInstanceMethod:@"type" withFullSignature:{"i", 0}];
  [validationsCopy validateClass:@"TPSlidingButton" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(TPSlidingButtonAccessibility *)self accessibilityUserDefinedLabel];
  v4 = accessibilityUserDefinedLabel;
  if (accessibilityUserDefinedLabel)
  {
    v5 = accessibilityUserDefinedLabel;
LABEL_3:
    accessibilityLabel = v5;
    goto LABEL_4;
  }

  v8 = [(TPSlidingButtonAccessibility *)self safeValueForKey:@"type"];
  integerValue = [v8 integerValue];

  if ((integerValue & 0xFFFFFFFD) == 0)
  {
    v5 = accessibilityLocalizedString(@"phone.action.answer");
    goto LABEL_3;
  }

  v13.receiver = self;
  v13.super_class = TPSlidingButtonAccessibility;
  accessibilityLabel = [(TPSlidingButtonAccessibility *)&v13 accessibilityLabel];
  v10 = [(TPSlidingButtonAccessibility *)self safeValueForKey:@"_acceptButton"];

  if (v10)
  {
    v11 = [(TPSlidingButtonAccessibility *)self safeValueForKey:@"_acceptButton"];
    accessibilityLabel2 = [v11 accessibilityLabel];

    accessibilityLabel = accessibilityLabel2;
  }

LABEL_4:

  return accessibilityLabel;
}

- (BOOL)accessibilityActivate
{
  v2 = [(TPSlidingButtonAccessibility *)self safeValueForKey:@"_acceptButton"];
  accessibilityActivate = [v2 accessibilityActivate];

  return accessibilityActivate;
}

@end