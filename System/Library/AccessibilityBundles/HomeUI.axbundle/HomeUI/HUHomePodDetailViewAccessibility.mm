@interface HUHomePodDetailViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation HUHomePodDetailViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUHomePodDetailView" hasInstanceMethod:@"mediaSystemRole" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"HUHomePodDetailView" hasInstanceVariable:@"_unitNameLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(HUHomePodDetailViewAccessibility *)self safeIntegerForKey:@"mediaSystemRole"];
  if (v3 == 1)
  {
    v4 = @"left.homepod";
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = @"right.homepod";
LABEL_5:
    v5 = accessibilityHomeLocalizedString(v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v8 = [(HUHomePodDetailViewAccessibility *)self safeValueForKey:@"_unitNameLabel"];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end