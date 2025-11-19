@interface AVTFunCamAvatarPickerTitleCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVTFunCamAvatarPickerTitleCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = AVTFunCamAvatarPickerTitleCellAccessibility;
  [(AVTFunCamAvatarPickerTitleCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(AVTFunCamAvatarPickerTitleCellAccessibility *)self safeValueForKeyPath:@"titleLabel"];
  [v3 setIsAccessibilityElement:0];
}

@end