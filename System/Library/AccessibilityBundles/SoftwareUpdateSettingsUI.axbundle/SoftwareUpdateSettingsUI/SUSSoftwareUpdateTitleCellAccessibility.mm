@interface SUSSoftwareUpdateTitleCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (id)newProgressBar;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyProgressViewLabel:(id)label;
@end

@implementation SUSSoftwareUpdateTitleCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUSSoftwareUpdateTitleCell" hasInstanceMethod:@"newProgressBar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUSSoftwareUpdateTitleCell" hasInstanceVariable:@"_progressBar" withType:"UIProgressView"];
  [validationsCopy validateClass:@"SUSSoftwareUpdateTitleCell" hasInstanceMethod:@"updateStatusLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v8.receiver = self;
  v8.super_class = SUSSoftwareUpdateTitleCellAccessibility;
  accessibilityValue = [(SUSSoftwareUpdateTitleCellAccessibility *)&v8 accessibilityValue];
  v4 = [(SUSSoftwareUpdateTitleCellAccessibility *)self safeValueForKey:@"updateStatusLabel"];
  accessibilityLabel = [v4 accessibilityLabel];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (void)_axApplyProgressViewLabel:(id)label
{
  labelCopy = label;
  v4 = accessibilityLocalizedString(@"download.progress");
  [labelCopy setAccessibilityLabel:v4];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SUSSoftwareUpdateTitleCellAccessibility;
  [(SUSSoftwareUpdateTitleCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SUSSoftwareUpdateTitleCellAccessibility *)self safeUIViewForKey:@"_progressBar"];
  [(SUSSoftwareUpdateTitleCellAccessibility *)self _axApplyProgressViewLabel:v3];
}

- (id)newProgressBar
{
  v5.receiver = self;
  v5.super_class = SUSSoftwareUpdateTitleCellAccessibility;
  newProgressBar = [(SUSSoftwareUpdateTitleCellAccessibility *)&v5 newProgressBar];
  [(SUSSoftwareUpdateTitleCellAccessibility *)self _axApplyProgressViewLabel:newProgressBar];
  return newProgressBar;
}

@end