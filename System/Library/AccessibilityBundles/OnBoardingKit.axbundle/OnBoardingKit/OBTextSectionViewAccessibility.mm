@interface OBTextSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (OBTextSectionViewAccessibility)initWithHeader:(id)a3 content:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation OBTextSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OBTextSectionView" hasInstanceMethod:@"headerLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OBTextSectionView" hasInstanceMethod:@"initWithHeader:content:" withFullSignature:{"@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = OBTextSectionViewAccessibility;
  [(OBTextSectionViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = *MEMORY[0x29EDC7FD0];
  v5 = [(OBTextSectionViewAccessibility *)self safeUIViewForKey:@"headerLabel"];
  [v5 setAccessibilityTraits:v4 | v3];
}

- (OBTextSectionViewAccessibility)initWithHeader:(id)a3 content:(id)a4
{
  v6.receiver = self;
  v6.super_class = OBTextSectionViewAccessibility;
  v4 = [(OBTextSectionViewAccessibility *)&v6 initWithHeader:a3 content:a4];
  [(OBTextSectionViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end