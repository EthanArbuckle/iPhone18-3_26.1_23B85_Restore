@interface TPSlidingButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
@end

@implementation TPSlidingButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TPSlidingButton" hasInstanceMethod:@"type" withFullSignature:{"i", 0}];
  [v3 validateClass:@"TPSlidingButton" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(TPSlidingButtonAccessibility *)self accessibilityUserDefinedLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_3:
    v6 = v5;
    goto LABEL_4;
  }

  v8 = [(TPSlidingButtonAccessibility *)self safeValueForKey:@"type"];
  v9 = [v8 integerValue];

  if ((v9 & 0xFFFFFFFD) == 0)
  {
    v5 = accessibilityLocalizedString(@"phone.action.answer");
    goto LABEL_3;
  }

  v13.receiver = self;
  v13.super_class = TPSlidingButtonAccessibility;
  v6 = [(TPSlidingButtonAccessibility *)&v13 accessibilityLabel];
  v10 = [(TPSlidingButtonAccessibility *)self safeValueForKey:@"_acceptButton"];

  if (v10)
  {
    v11 = [(TPSlidingButtonAccessibility *)self safeValueForKey:@"_acceptButton"];
    v12 = [v11 accessibilityLabel];

    v6 = v12;
  }

LABEL_4:

  return v6;
}

- (BOOL)accessibilityActivate
{
  v2 = [(TPSlidingButtonAccessibility *)self safeValueForKey:@"_acceptButton"];
  v3 = [v2 accessibilityActivate];

  return v3;
}

@end