@interface MFArrowControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MFArrowControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFArrowControlsView" hasInstanceMethod:@"upButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFArrowControlsView" hasInstanceMethod:@"downButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = MFArrowControlsViewAccessibility;
  [(MFArrowControlsViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFArrowControlsViewAccessibility *)self safeValueForKey:@"upButton"];
  v4 = accessibilityLocalizedString(@"previous.message.text");
  [v3 setAccessibilityLabel:v4];

  v5 = [(MFArrowControlsViewAccessibility *)self safeValueForKey:@"downButton"];
  v6 = accessibilityLocalizedString(@"next.message.text");
  [v5 setAccessibilityLabel:v6];
}

@end