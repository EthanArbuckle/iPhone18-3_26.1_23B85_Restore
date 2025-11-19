@interface CNPhotoPickerSectionHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CNPhotoPickerSectionHeaderAccessibility)initWithFrame:(CGRect)a3;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CNPhotoPickerSectionHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPhotoPickerSectionHeader" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"CNPhotoPickerSectionHeader" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"CNPhotoPickerSectionHeader" hasInstanceVariable:@"_actionButton" withType:"UIButton"];
}

- (CNPhotoPickerSectionHeaderAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerSectionHeaderAccessibility;
  v3 = [(CNPhotoPickerSectionHeaderAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(CNPhotoPickerSectionHeaderAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  [v3 axSafelyAddObject:v4];

  v5 = [(CNPhotoPickerSectionHeaderAccessibility *)self safeUIViewForKey:@"_actionButton"];
  v6 = [v5 accessibilityLabel];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(CNPhotoPickerSectionHeaderAccessibility *)self safeUIViewForKey:@"_actionButton"];
    [v3 axSafelyAddObject:v8];
  }

  return v3;
}

@end