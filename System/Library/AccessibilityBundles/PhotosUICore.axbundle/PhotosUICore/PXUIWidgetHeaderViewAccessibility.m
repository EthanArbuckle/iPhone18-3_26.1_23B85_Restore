@interface PXUIWidgetHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PXUIWidgetHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXUIWidgetHeaderView" hasInstanceMethod:@"_titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXUIWidgetHeaderView" hasInstanceMethod:@"_titleLabelCreateIfNeeded:" withFullSignature:{"@", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PXUIWidgetHeaderViewAccessibility;
  [(PXUIWidgetHeaderViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PXUIWidgetHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v4];
}

@end