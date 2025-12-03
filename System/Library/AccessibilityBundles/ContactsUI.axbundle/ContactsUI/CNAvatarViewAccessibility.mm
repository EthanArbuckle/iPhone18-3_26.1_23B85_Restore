@interface CNAvatarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityElementsHidden;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation CNAvatarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNAvatarView" hasInstanceMethod:@"contact" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNAvatarView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v17[1] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v3 = [(CNAvatarViewAccessibility *)self safeValueForKey:@"contact"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [MEMORY[0x29EDB8BA8] descriptorForRequiredKeysForStyle:0];
  v17[0] = v5;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v17 count:1];

  if (v4 && (([v4 areKeysAvailable:v6] & 1) != 0 || (objc_msgSend(v4, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7) || (accessibilityContactStore(), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "unifiedContactWithIdentifier:keysToFetch:error:", v9, v6, 0), v10 = objc_claimAutoreleasedReturnValue(), v4, v9, v8, (v4 = v10) != 0)) && (objc_msgSend(MEMORY[0x29EDB8BA8], "stringFromContact:style:", v4, 0), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = MEMORY[0x29EDBA0F8];
    v14 = accessibilityLocalizedString(@"person.photo");
    v15 = [v13 stringWithFormat:v14, v12];
  }

  else
  {
    v15 = accessibilityLocalizedString(@"person.photo.unknown");
  }

  return v15;
}

- (BOOL)accessibilityElementsHidden
{
  storedAccessibilityElementsHidden = [(CNAvatarViewAccessibility *)self storedAccessibilityElementsHidden];
  v4 = storedAccessibilityElementsHidden;
  if (storedAccessibilityElementsHidden)
  {
    LOBYTE(v5) = [storedAccessibilityElementsHidden BOOLValue];
  }

  else
  {
    v5 = ![(CNAvatarViewAccessibility *)self isAccessibilityElement];
  }

  return v5;
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(CNAvatarViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!isAccessibilityUserDefinedElement)
  {
    return AXDoesRequestingClientDeserveAutomation() != 0;
  }

  v5.receiver = self;
  v5.super_class = CNAvatarViewAccessibility;
  return [(CNAvatarViewAccessibility *)&v5 isAccessibilityElement];
}

- (id)automationElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(CNAvatarViewAccessibility *)self safeUIViewForKey:@"imageView"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end