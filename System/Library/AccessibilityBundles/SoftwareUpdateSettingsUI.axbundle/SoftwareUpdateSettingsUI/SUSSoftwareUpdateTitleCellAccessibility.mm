@interface SUSSoftwareUpdateTitleCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (id)newProgressBar;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyProgressViewLabel:(id)a3;
@end

@implementation SUSSoftwareUpdateTitleCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUSSoftwareUpdateTitleCell" hasInstanceMethod:@"newProgressBar" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUSSoftwareUpdateTitleCell" hasInstanceVariable:@"_progressBar" withType:"UIProgressView"];
  [v3 validateClass:@"SUSSoftwareUpdateTitleCell" hasInstanceMethod:@"updateStatusLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v8.receiver = self;
  v8.super_class = SUSSoftwareUpdateTitleCellAccessibility;
  v3 = [(SUSSoftwareUpdateTitleCellAccessibility *)&v8 accessibilityValue];
  v4 = [(SUSSoftwareUpdateTitleCellAccessibility *)self safeValueForKey:@"updateStatusLabel"];
  v7 = [v4 accessibilityLabel];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (void)_axApplyProgressViewLabel:(id)a3
{
  v3 = a3;
  v4 = accessibilityLocalizedString(@"download.progress");
  [v3 setAccessibilityLabel:v4];
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
  v3 = [(SUSSoftwareUpdateTitleCellAccessibility *)&v5 newProgressBar];
  [(SUSSoftwareUpdateTitleCellAccessibility *)self _axApplyProgressViewLabel:v3];
  return v3;
}

@end