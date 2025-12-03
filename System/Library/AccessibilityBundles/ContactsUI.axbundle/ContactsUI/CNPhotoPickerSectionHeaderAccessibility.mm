@interface CNPhotoPickerSectionHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CNPhotoPickerSectionHeaderAccessibility)initWithFrame:(CGRect)frame;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CNPhotoPickerSectionHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPhotoPickerSectionHeader" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerSectionHeader" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CNPhotoPickerSectionHeader" hasInstanceVariable:@"_actionButton" withType:"UIButton"];
}

- (CNPhotoPickerSectionHeaderAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerSectionHeaderAccessibility;
  v3 = [(CNPhotoPickerSectionHeaderAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CNPhotoPickerSectionHeaderAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerSectionHeaderAccessibility;
  [(CNPhotoPickerSectionHeaderAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = [(CNPhotoPickerSectionHeaderAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:v3];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(CNPhotoPickerSectionHeaderAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  [array axSafelyAddObject:v4];

  v5 = [(CNPhotoPickerSectionHeaderAccessibility *)self safeUIViewForKey:@"_actionButton"];
  accessibilityLabel = [v5 accessibilityLabel];
  v7 = [accessibilityLabel length];

  if (v7)
  {
    v8 = [(CNPhotoPickerSectionHeaderAccessibility *)self safeUIViewForKey:@"_actionButton"];
    [array axSafelyAddObject:v8];
  }

  return array;
}

@end