@interface CKDetailsLocationShareCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKDetailsLocationShareCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CKDetailsLocationShareCellAccessibility;
  [(CKDetailsLocationShareCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKDetailsLocationShareCellAccessibility *)self safeValueForKey:@"button"];
  [v3 setIsAccessibilityElement:0];

  [(CKDetailsLocationShareCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
}

@end