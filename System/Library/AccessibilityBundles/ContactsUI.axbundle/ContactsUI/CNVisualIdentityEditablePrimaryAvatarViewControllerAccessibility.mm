@interface CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_axUpdateTextFieldWithProviderItem:(id)item;
- (void)updateWithProviderItem:(id)item;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPhotoPickerProviderItem"];
  [validationsCopy validateClass:@"CNPhotoPickerEmojiProviderItem"];
  [validationsCopy validateClass:@"CNPhotoPickerMonogramProviderItem"];
  [validationsCopy validateClass:@"CNPhotoPickerEmojiProviderItem" isKindOfClass:@"CNPhotoPickerProviderItem"];
  [validationsCopy validateClass:@"CNPhotoPickerMonogramProviderItem" isKindOfClass:@"CNPhotoPickerProviderItem"];
  [validationsCopy validateClass:@"CNPhotoPickerEmojiProviderItem" conformsToProtocol:@"CNVisualIdentityPickerTextEditableProviderItem"];
  [validationsCopy validateClass:@"CNPhotoPickerMonogramProviderItem" conformsToProtocol:@"CNVisualIdentityPickerTextEditableProviderItem"];
  [validationsCopy validateClass:@"CNVisualIdentityEditablePrimaryAvatarViewController" hasInstanceMethod:@"providerItem" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"CNVisualIdentityPickerTextEditableProviderItem" hasRequiredInstanceMethod:@"backgroundColor"];
  [validationsCopy validateClass:@"CNVisualIdentityEditablePrimaryAvatarViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CNVisualIdentityEditablePrimaryAvatarViewController" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility;
  [(CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility *)&v5 viewDidAppear:appear];
  v4 = [(CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility *)self safeValueForKey:@"providerItem"];
  [(CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility *)self _axUpdateTextFieldWithProviderItem:v4];
}

- (void)updateWithProviderItem:(id)item
{
  v5.receiver = self;
  v5.super_class = CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility;
  itemCopy = item;
  [(CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility *)&v5 updateWithProviderItem:itemCopy];
  [(CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility *)self _axUpdateTextFieldWithProviderItem:itemCopy, v5.receiver, v5.super_class];
}

- (void)_axUpdateTextFieldWithProviderItem:(id)item
{
  v14 = *MEMORY[0x29EDCA608];
  itemCopy = item;
  v5 = MEMORY[0x29C2D1D50](@"CNVisualIdentityPickerTextEditableProviderItem");
  v6 = [itemCopy conformsToProtocol:v5];

  v13[0] = 0;
  objc_opt_class();
  v7 = [(CNVisualIdentityEditablePrimaryAvatarViewControllerAccessibility *)self safeValueForKey:@"textField"];
  v8 = __UIAccessibilityCastAsSafeCategory();

  [v8 _axSetIsTextEditable:v6];
  if (v6)
  {
    v13[0] = 0;
    objc_opt_class();
    v9 = [itemCopy safeValueForKey:@"backgroundColor"];
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