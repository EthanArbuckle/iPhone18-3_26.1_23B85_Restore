@interface VUILabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VUILabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUILabel" isKindOfClass:@"UILabel"];
  [validationsCopy validateClass:@"VUILabel" hasInstanceMethod:@"textLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUITextLayout" hasInstanceMethod:@"textTransform" withFullSignature:{"q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = VUILabelAccessibility;
  [(VUILabelAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(VUILabelAccessibility *)self tag]== 100)
  {
    [(VUILabelAccessibility *)self setIsAccessibilityElement:0];
  }
}

- (id)accessibilityLabel
{
  v9.receiver = self;
  v9.super_class = VUILabelAccessibility;
  accessibilityLabel = [(VUILabelAccessibility *)&v9 accessibilityLabel];
  v4 = [(VUILabelAccessibility *)self safeValueForKey:@"textLayout"];
  v5 = __UIAccessibilitySafeClass();

  if ([v5 safeIntegerForKey:@"textTransform"] == 2)
  {
    localizedLowercaseString = [accessibilityLabel localizedLowercaseString];

    accessibilityLabel = localizedLowercaseString;
  }

  v7 = [accessibilityLabel stringByReplacingOccurrencesOfString:@"·" withString:&stru_2A23A0858];

  return v7;
}

@end