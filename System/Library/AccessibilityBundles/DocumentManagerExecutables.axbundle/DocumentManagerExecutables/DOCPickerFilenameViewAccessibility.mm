@interface DOCPickerFilenameViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateTagButtonAccessibility:(id)accessibility;
@end

@implementation DOCPickerFilenameViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCPickerFilenameView" hasInstanceMethod:@"updateTagButtonAccessibility:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCPickerFilenameView" hasInstanceMethod:@"tags" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCPickerFilenameView" hasInstanceMethod:@"tagButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = DOCPickerFilenameViewAccessibility;
  [(DOCPickerFilenameViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(DOCPickerFilenameViewAccessibility *)self safeValueForKey:@"tagButton"];
  v4 = __UIAccessibilityCastAsClass();

  [(DOCPickerFilenameViewAccessibility *)self updateTagButtonAccessibility:v4];
}

- (void)updateTagButtonAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  v7 = [(DOCPickerFilenameViewAccessibility *)self safeArrayForKey:@"tags"];
  if ([v7 count])
  {
    v5 = @"Tags";
  }

  else
  {
    v5 = @"Add Tags";
  }

  v6 = accessibilityLocalizedString(v5);
  [accessibilityCopy setAccessibilityLabel:v6];
}

@end