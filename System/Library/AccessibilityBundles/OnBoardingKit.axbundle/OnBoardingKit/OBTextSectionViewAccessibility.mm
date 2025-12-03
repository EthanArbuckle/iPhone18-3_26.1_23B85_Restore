@interface OBTextSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (OBTextSectionViewAccessibility)initWithHeader:(id)header content:(id)content;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation OBTextSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"OBTextSectionView" hasInstanceMethod:@"headerLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"OBTextSectionView" hasInstanceMethod:@"initWithHeader:content:" withFullSignature:{"@", "@", "@", 0}];
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

- (OBTextSectionViewAccessibility)initWithHeader:(id)header content:(id)content
{
  v6.receiver = self;
  v6.super_class = OBTextSectionViewAccessibility;
  v4 = [(OBTextSectionViewAccessibility *)&v6 initWithHeader:header content:content];
  [(OBTextSectionViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end