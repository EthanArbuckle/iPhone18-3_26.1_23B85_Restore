@interface MKExploreGuidesViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MKExploreGuidesViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKExploreGuidesView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKExploreGuidesView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKExploreGuidesView" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(MKExploreGuidesViewAccessibility *)self safeValueForKey:@"button"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = MKExploreGuidesViewAccessibility;
  [(MKExploreGuidesViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(MKExploreGuidesViewAccessibility *)self safeValueForKey:@"button"];
  v4 = [(MKExploreGuidesViewAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v4 accessibilityLabel];

  v6 = [(MKExploreGuidesViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  accessibilityLabel2 = [v6 accessibilityLabel];

  v8 = __AXStringForVariables();
  [v3 setAccessibilityLabel:{v8, accessibilityLabel2, @"__AXStringForVariablesSentinel"}];
}

@end