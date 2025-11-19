@interface ProductDescriptionCollectionViewCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ProductDescriptionCollectionViewCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = ProductDescriptionCollectionViewCellAccessibility;
  [(ProductDescriptionCollectionViewCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(ProductDescriptionCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"bodyTextView"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end