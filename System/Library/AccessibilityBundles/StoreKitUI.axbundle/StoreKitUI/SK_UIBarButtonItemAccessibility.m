@interface SK_UIBarButtonItemAccessibility
- (id)accessibilityLabel;
@end

@implementation SK_UIBarButtonItemAccessibility

- (id)accessibilityLabel
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __53__SK_UIBarButtonItemAccessibility_accessibilityLabel__block_invoke;
  v11 = &unk_29F304190;
  v12 = self;
  v13 = &v14;
  AXPerformSafeBlock();
  v3 = v15[5];
  _Block_object_dispose(&v14, 8);

  if ([v3 isEqualToString:@"_shareButtonAction:"])
  {
    v4 = UIKitAccessibilityLocalizedString();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SK_UIBarButtonItemAccessibility;
    v4 = [(SK_UIBarButtonItemAccessibility *)&v7 accessibilityLabel];
  }

  v5 = v4;

  return v5;
}

@end