@interface SectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SectionHeaderView" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKVibrantLabel" hasInstanceVariable:@"_label" withType:"UILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SectionHeaderViewAccessibility;
  [(SectionHeaderViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SectionHeaderViewAccessibility *)self safeUIViewForKey:@"label"];
  v4 = [v3 safeUIViewForKey:@"_label"];

  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | *MEMORY[0x29EDC7FD0]];
}

@end