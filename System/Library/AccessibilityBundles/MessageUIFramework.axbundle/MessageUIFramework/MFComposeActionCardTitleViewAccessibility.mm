@interface MFComposeActionCardTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didMoveToWindow;
@end

@implementation MFComposeActionCardTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFComposeActionCardTitleView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFComposeActionCardTitleView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIDimmingView"];
  [validationsCopy validateClass:@"UITransitionView"];
  [validationsCopy validateClass:@"UIDropShadowView"];
  [validationsCopy validateClass:@"MFMailComposeView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v32 = *MEMORY[0x29EDCA608];
  v30.receiver = self;
  v30.super_class = MFComposeActionCardTitleViewAccessibility;
  [(MFComposeActionCardTitleViewAccessibility *)&v30 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFComposeActionCardTitleViewAccessibility *)self safeValueForKey:@"titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  v4 = [(MFComposeActionCardTitleViewAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Uitransitionvi.isa)];
  array = [MEMORY[0x29EDB8DE8] array];
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = __87__MFComposeActionCardTitleViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v28[3] = &unk_29F2D19A8;
  v6 = array;
  v29 = v6;
  v7 = [v4 _accessibilityFindSubviewDescendant:v28];
  v27 = 0;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  window = [v8 window];
  v10 = [window _accessibilityFindSubviewDescendant:&__block_literal_global_0];

  v11 = [v10 _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Uidropshadowvi.isa)];
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = __87__MFComposeActionCardTitleViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v25[3] = &unk_29F2D19A8;
  v12 = v6;
  v26 = v12;
  v13 = [v11 _accessibilityFindSubviewDescendant:v25];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * i);
        [v19 setAccessibilityViewIsModal:{0, v21}];
        [v19 setAccessibilityContainerType:0];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x29EDCA608];
}

uint64_t __87__MFComposeActionCardTitleViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSClassFromString(&cfstr_Uidimmingview.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [*(a1 + 32) addObject:v3];
  }

  return isKindOfClass & 1;
}

uint64_t __87__MFComposeActionCardTitleViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Mfmailcomposev.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __87__MFComposeActionCardTitleViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  NSClassFromString(&cfstr_Uidimmingview.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [*(a1 + 32) addObject:v3];
  }

  return isKindOfClass & 1;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MFComposeActionCardTitleViewAccessibility;
  [(MFComposeActionCardTitleViewAccessibility *)&v3 didMoveToWindow];
  [(MFComposeActionCardTitleViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end