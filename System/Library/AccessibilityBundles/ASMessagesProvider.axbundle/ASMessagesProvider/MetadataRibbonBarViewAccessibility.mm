@interface MetadataRibbonBarViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MetadataRibbonBarViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = MetadataRibbonBarViewAccessibility;
  [(MetadataRibbonBarViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(MetadataRibbonBarViewAccessibility *)self safeSwiftValueForKey:@"dividerLabel"];
  [v3 setIsAccessibilityElement:0];
}

@end