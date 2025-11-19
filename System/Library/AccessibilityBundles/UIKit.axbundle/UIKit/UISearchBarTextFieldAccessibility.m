@interface UISearchBarTextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityRightButtons;
- (id)accessibilityLabel;
- (id)accessibilityLocalizedStringKey;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UISearchBarTextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UITextField";
  [location[0] validateClass:@"UISearchBarTextField" isKindOfClass:?];
  v5 = "@";
  [location[0] validateClass:@"UITextField" hasInstanceMethod:@"textStorage" withFullSignature:0];
  [location[0] validateClass:@"UITextFieldAccessibility" hasInstanceMethod:@"_accessibilityRightButtons" withFullSignature:{v5, 0}];
  v4 = @"_UISearchTokenAttachment";
  [location[0] validateClass:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"_viewProvider" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"NSTextAttachmentViewProvider" hasInstanceMethod:@"view" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, obj);
}

- (id)accessibilityLabel
{
  v8 = [(UISearchBarTextFieldAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v8)
  {
    v10 = [(UISearchBarTextFieldAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    LOBYTE(v7) = 0;
    if (_AXSAutomationEnabled())
    {
      v7 = !UIAccessibilityIsVoiceOverRunning();
    }

    v5 = [(UISearchBarTextFieldAccessibility *)self accessibilityValue];
    v6 = 1;
    if ([v5 length])
    {
      v6 = v7;
    }

    *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    if (v6)
    {
      v10 = [(UISearchBarTextFieldAccessibility *)self safeValueForKey:@"placeholder", v3];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)accessibilityValue
{
  v30 = self;
  v29[1] = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy__20;
  v28 = __Block_byref_object_dispose__20;
  v29[0] = [MEMORY[0x29EDBA0F8] string];
  v21 = 0;
  objc_opt_class();
  v9 = [(UISearchBarTextFieldAccessibility *)v30 safeValueForKey:@"textStorage"];
  v20 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v9);
  v19 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&v20, 0);
  v22 = v19;
  v7 = *MEMORY[0x29EDC7628];
  v8 = [v19 length];
  v32 = 0;
  v31 = v8;
  v33 = 0;
  v34 = v8;
  v17 = 0;
  v18 = v8;
  v11[1] = MEMORY[0x29EDCA5F8];
  v12 = -1073741824;
  v13 = 0;
  v14 = __55__UISearchBarTextFieldAccessibility_accessibilityValue__block_invoke;
  v15 = &unk_29F30DB10;
  v16 = &v23;
  [v19 enumerateAttribute:v7 inRange:0 options:v8 usingBlock:0];
  v11[0] = [MEMORY[0x29EDBA0F8] string];
  v10.receiver = v30;
  v10.super_class = UISearchBarTextFieldAccessibility;
  v5 = [(UISearchBarTextFieldAccessibility *)&v10 accessibilityValue];
  v2 = __UIAXStringForVariables();
  v3 = v24[5];
  v24[5] = v2;
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v5);
  v6 = MEMORY[0x29EDC9748](v24[5]);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v22, 0);
  _Block_object_dispose(&v23, 8);
  objc_storeStrong(v29, 0);

  return v6;
}

void __55__UISearchBarTextFieldAccessibility_accessibilityValue__block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[2] = a3;
  location[3] = a4;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uisearchtokena_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v7 = [location[0] accessibilityLabel];
    v4 = __UIAXStringForVariables();
    v5 = *(a1[4] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v7);
  }

  objc_storeStrong(location, 0);
}

- (id)accessibilityLocalizedStringKey
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(UISearchBarTextFieldAccessibility *)self safeValueForKey:@"placeholder"];
  v5 = [v6[0] _accessibilityAttributedLocalizedString];
  v4 = [v5 attributeValueForKey:@"UIAccessibilityTokenLocalizedStringKey"];
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UISearchBarTextFieldAccessibility;
  v4 = [(UISearchBarTextFieldAccessibility *)&v3 accessibilityTraits];
  return v4 | *MEMORY[0x29EDC7FB8];
}

- (id)_accessibilityRightButtons
{
  v24 = self;
  v23[1] = a2;
  v23[0] = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v21 = 0;
  objc_opt_class();
  v9 = [(UISearchBarTextFieldAccessibility *)v24 safeValueForKey:@"textStorage"];
  v20 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v9);
  v19 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&v20, 0);
  v22 = v19;
  v5 = v19;
  v4 = *MEMORY[0x29EDC7628];
  v2 = [v19 length];
  v26 = 0;
  v25 = v2;
  v27 = 0;
  v28 = v2;
  v17 = 0;
  v18 = v2;
  v11 = MEMORY[0x29EDCA5F8];
  v12 = -1073741824;
  v13 = 0;
  v14 = __63__UISearchBarTextFieldAccessibility__accessibilityRightButtons__block_invoke;
  v15 = &unk_29F30DB38;
  v16 = MEMORY[0x29EDC9748](v23[0]);
  [v5 enumerateAttribute:v4 inRange:v17 options:v18 usingBlock:{0, &v11}];
  v6 = v23[0];
  v10.receiver = v24;
  v10.super_class = UISearchBarTextFieldAccessibility;
  v7 = [(UISearchBarTextFieldAccessibility *)&v10 _accessibilityRightButtons];
  v8 = [v6 arrayByAddingObjectsFromArray:?];
  MEMORY[0x29EDC9740](v7);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(v23, 0);

  return v8;
}

void __63__UISearchBarTextFieldAccessibility__accessibilityRightButtons__block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[2] = a3;
  location[3] = a4;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uisearchtokena_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = a1[4];
    v6 = [location[0] safeValueForKey:@"_viewProvider"];
    v5 = [v6 safeValueForKey:@"view"];
    [v4 axSafelyAddObject:?];
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
  }

  objc_storeStrong(location, 0);
}

@end