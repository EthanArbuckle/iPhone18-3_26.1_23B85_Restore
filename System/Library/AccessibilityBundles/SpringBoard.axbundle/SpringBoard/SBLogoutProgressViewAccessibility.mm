@interface SBLogoutProgressViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateViewData;
@end

@implementation SBLogoutProgressViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBLogoutProgressView" hasInstanceVariable:@"_goodbyeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SBLogoutProgressView" hasInstanceVariable:@"_savingDocumentsLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SBLogoutProgressView" hasInstanceVariable:@"_savingDocumentsMoreLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SBLogoutProgressView" hasInstanceVariable:@"_blameAppNameLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SBLogoutProgressView" hasInstanceVariable:@"_blameAppIconView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SBLogoutProgressView" hasInstanceVariable:@"_userAvatarView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SBLogoutProgressView" hasInstanceVariable:@"_userContact" withType:"CNContact"];
  [validationsCopy validateClass:@"SBLogoutProgressView" hasInstanceMethod:@"_updateViewData" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBUILegibilityLabel" hasInstanceMethod:@"string" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v23 = *MEMORY[0x29EDCA608];
  v21.receiver = self;
  v21.super_class = SBLogoutProgressViewAccessibility;
  [(SBLogoutProgressViewAccessibility *)&v21 _accessibilityLoadAccessibilityInformation];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [&unk_2A230C9B8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(&unk_2A230C9B8);
        }

        v7 = [(SBLogoutProgressViewAccessibility *)self safeValueForKey:*(*(&v17 + 1) + 8 * i)];
        [v7 setIsAccessibilityElement:1];
      }

      v4 = [&unk_2A230C9B8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  v8 = [(SBLogoutProgressViewAccessibility *)self safeValueForKey:@"_blameAppIconView"];
  [v8 setIsAccessibilityElement:0];

  v9 = [(SBLogoutProgressViewAccessibility *)self safeValueForKey:@"_userAvatarView"];
  objc_opt_class();
  v10 = [(SBLogoutProgressViewAccessibility *)self safeValueForKey:@"_userContact"];
  v11 = __UIAccessibilityCastAsClass();

  if (v11)
  {
    v12 = [MEMORY[0x29EDB8C08] monogramTypeForContact:v11];
    [v9 setIsAccessibilityElement:1];
    v13 = [MEMORY[0x29EDB8BA8] stringFromContact:v11 style:0];
    if (v12 == 1)
    {
      v14 = @"contact.description.initials";
    }

    else
    {
      v14 = @"contact.description.photo";
    }

    v15 = accessibilityLocalizedString(v14);
    v16 = [MEMORY[0x29EDBA0F8] stringWithFormat:v15, v13];
    [v9 setAccessibilityLabel:v16];
  }
}

- (void)_updateViewData
{
  v3.receiver = self;
  v3.super_class = SBLogoutProgressViewAccessibility;
  [(SBLogoutProgressViewAccessibility *)&v3 _updateViewData];
  [(SBLogoutProgressViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end