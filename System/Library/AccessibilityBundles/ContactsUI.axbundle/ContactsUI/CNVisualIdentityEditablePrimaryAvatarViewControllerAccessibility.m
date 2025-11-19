@interface CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_axUpdateTextFieldWithProviderItem:(id)a3;
- (void)updateWithProviderItem:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPhotoPickerProviderItem"];
  [v3 validateClass:@"CNPhotoPickerEmojiProviderItem"];
  [v3 validateClass:@"CNPhotoPickerMonogramProviderItem"];
  [v3 validateClass:@"CNPhotoPickerEmojiProviderItem" isKindOfClass:@"CNPhotoPickerProviderItem"];
  [v3 validateClass:@"CNPhotoPickerMonogramProviderItem" isKindOfClass:@"CNPhotoPickerProviderItem"];
  [v3 validateClass:@"CNPhotoPickerEmojiProviderItem" conformsToProtocol:@"CNVisualIdentityPickerTextEditableProviderItem"];
  [v3 validateClass:@"CNPhotoPickerMonogramProviderItem" conformsToProtocol:@"CNVisualIdentityPickerTextEditableProviderItem"];
  [v3 validateClass:@"CNVisualIdentityEditablePrimaryAvatarViewController" hasInstanceMethod:@"providerItem" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"CNVisualIdentityPickerTextEditableProviderItem" hasRequiredInstanceMethod:@"backgroundColor"];
  [v3 validateClass:@"CNVisualIdentityEditablePrimaryAvatarViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CNVisualIdentityEditablePrimaryAvatarViewController" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility;
  [(CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility *)&v5 viewDidAppear:a3];
  v4 = [(CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility *)self safeValueForKey:@"providerItem"];
  [(CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility *)self _axUpdateTextFieldWithProviderItem:v4];
}

- (void)updateWithProviderItem:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility;
  v4 = a3;
  [(CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility *)&v5 updateWithProviderItem:v4];
  [(CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility *)self _axUpdateTextFieldWithProviderItem:v4, v5.receiver, v5.super_class];
}

- (void)_axUpdateTextFieldWithProviderItem:(id)a3
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29C2D1D50](@"CNVisualIdentityPickerTextEditableProviderItem");
  v6 = [v4 conformsToProtocol:v5];

  v13[0] = 0;
  objc_opt_class();
  v7 = [(CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility *)self safeValueForKey:@"textField"];
  v8 = __UIAccessibilityCastAsSafeCategory();

  [v8 _axSetIsTextEditable:v6];
  if (v6)
  {
    v13[0] = 0;
    objc_opt_class();
    v9 = [v4 safeValueForKey:@"backgroundColor"];
    v10 = __UIAccessibilityCastAsClass();

    v11 = AXLogTemp();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 138412290;
      *&v13[4] = v10;
      _os_log_impl(&dword_29BD25000, v11, OS_LOG_TYPE_INFO, "Color: %@", v13, 0xCu);
    }

    if (v10)
    {
      AXColorStringForColor();
    }

    else
    {
      accessibilityLocalizedString(@"default.background.color");
    }
    v12 = ;
    [v8 _axSetColorName:{v12, *v13}];
  }

  MEMORY[0x29C2D1D40](@"CNPhotoPickerEmojiProviderItem");
  [v8 _axSetIsEmoji:objc_opt_isKindOfClass() & 1];
}

@end