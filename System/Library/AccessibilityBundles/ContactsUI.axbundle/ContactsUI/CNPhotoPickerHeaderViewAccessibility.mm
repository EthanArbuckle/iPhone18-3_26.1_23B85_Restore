@interface CNPhotoPickerHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didMoveToWindow;
- (void)didTapClearAvatarImageButton;
- (void)setClearAvatarImageButtonHidden:(BOOL)hidden;
@end

@implementation CNPhotoPickerHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPhotoPickerHeaderView" hasInstanceMethod:@"clearAvatarImageButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerHeaderView" hasInstanceMethod:@"didMoveToWindow" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerHeaderView" hasInstanceMethod:@"didTapClearAvatarImageButton" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerHeaderView" hasInstanceMethod:@"identityNameTextField" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNVisualIdentity"];
  [validationsCopy validateClass:@"CNPhotoPickerHeaderView" hasInstanceMethod:@"visualIdentity" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNVisualIdentity" hasInstanceMethod:@"canUpdateGroupName" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CNVisualIdentity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNVisualIdentityAvatarViewController"];
  [validationsCopy validateClass:@"CNPhotoPickerHeaderView" hasInstanceMethod:@"avatarViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerHeaderView" hasInstanceMethod:@"setClearAvatarImageButtonHidden:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CNVisualIdentityAvatarViewController"];
  [validationsCopy validateClass:@"CNVisualIdentityAvatarViewController" hasInstanceMethod:@"badgeImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNVisualIdentityAvatarViewController" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CNPhotoPickerHeaderViewAccessibility;
  [(CNPhotoPickerHeaderViewAccessibility *)&v3 didMoveToWindow];
  [(CNPhotoPickerHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v29.receiver = self;
  v29.super_class = CNPhotoPickerHeaderViewAccessibility;
  [(CNPhotoPickerHeaderViewAccessibility *)&v29 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNPhotoPickerHeaderViewAccessibility *)self safeValueForKey:@"clearAvatarImageButton"];
  v4 = accessibilityLocalizedString(@"clear.image.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(CNPhotoPickerHeaderViewAccessibility *)self safeValueForKey:@"visualIdentity"];
  if (([v5 safeBoolForKey:@"canUpdateGroupName"] & 1) == 0)
  {
    v6 = [(CNPhotoPickerHeaderViewAccessibility *)self safeUIViewForKey:@"identityNameTextField"];
    [v6 accessibilitySetIdentification:kAXPhotosTextFieldIdentifier];
  }

  v28 = 0;
  objc_opt_class();
  v7 = [(CNPhotoPickerHeaderViewAccessibility *)self safeValueForKey:@"avatarViewController"];
  v8 = __UIAccessibilityCastAsClass();

  if (v8)
  {
    v9 = [v8 safeValueForKey:@"contentView"];
    [v9 setIsAccessibilityElement:1];
    [v9 setAccessibilityTraits:*MEMORY[0x29EDC7F88]];
    v10 = [v5 safeStringForKey:@"name"];
    if (v10)
    {
      v11 = MEMORY[0x29EDBA0F8];
      v12 = accessibilityLocalizedString(@"person.photo");
      v13 = [v11 localizedStringWithFormat:v12, v10];
      [v9 setAccessibilityLabel:v13];
    }

    else
    {
      v12 = accessibilityLocalizedString(@"person.photo.unknown");
      [v9 setAccessibilityLabel:v12];
    }

    v28 = 0;
    objc_opt_class();
    v14 = [v8 safeValueForKey:@"badgeImageView"];
    v15 = __UIAccessibilityCastAsClass();

    image = [v15 image];
    v17 = [image safeValueForKey:@"_imageAsset"];
    v18 = [v17 safeStringForKey:@"assetName"];

    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 3221225472;
    v26[2] = __82__CNPhotoPickerHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v26[3] = &unk_29F2B5C48;
    v19 = v18;
    v27 = v19;
    [v15 _setIsAccessibilityElementBlock:v26];
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = __82__CNPhotoPickerHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    v24[3] = &unk_29F2B5E18;
    v20 = v19;
    v25 = v20;
    [v15 _setAccessibilityLabelBlock:v24];
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 3221225472;
    v22[2] = __82__CNPhotoPickerHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
    v22[3] = &unk_29F2B5E40;
    v23 = v20;
    v21 = v20;
    [v15 _setAccessibilityTraitsBlock:v22];
  }
}

id __82__CNPhotoPickerHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"xmark.circle.fill"])
  {
    v1 = accessibilityLocalizedString(@"clear.image.button");
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t __82__CNPhotoPickerHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) isEqualToString:@"xmark.circle.fill"];
  v2 = MEMORY[0x29EDC7F70];
  if (!v1)
  {
    v2 = MEMORY[0x29EDC7FA0];
  }

  return *v2;
}

- (void)didTapClearAvatarImageButton
{
  v2.receiver = self;
  v2.super_class = CNPhotoPickerHeaderViewAccessibility;
  [(CNPhotoPickerHeaderViewAccessibility *)&v2 didTapClearAvatarImageButton];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)setClearAvatarImageButtonHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = CNPhotoPickerHeaderViewAccessibility;
  [(CNPhotoPickerHeaderViewAccessibility *)&v4 setClearAvatarImageButtonHidden:hidden];
  [(CNPhotoPickerHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end