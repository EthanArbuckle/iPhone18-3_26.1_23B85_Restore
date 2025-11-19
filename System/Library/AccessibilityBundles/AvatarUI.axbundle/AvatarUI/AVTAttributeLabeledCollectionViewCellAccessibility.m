@interface AVTAttributeLabeledCollectionViewCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVTAttributeLabeledCollectionViewCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = AVTAttributeLabeledCollectionViewCellAccessibility;
  [(AVTAttributeLabeledCollectionViewCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(AVTAttributeLabeledCollectionViewCellAccessibility *)self safeValueForKey:@"label"];
  [v3 setIsAccessibilityElement:0];
}

@end