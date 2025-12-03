@interface CKLargeTitleAccessoryViewAccessibility
+ (id)newComposeButton;
+ (id)newOptionsButton;
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKLargeTitleAccessoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKLargeTitleAccessoryView" hasInstanceMethod:@"accessoryButtons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKLargeTitleAccessoryView" hasClassMethod:@"newComposeButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKLargeTitleAccessoryView" hasClassMethod:@"newOptionsButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v23 = *MEMORY[0x29EDCA608];
  v21.receiver = self;
  v21.super_class = CKLargeTitleAccessoryViewAccessibility;
  [(CKLargeTitleAccessoryViewAccessibility *)&v21 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKLargeTitleAccessoryViewAccessibility *)self safeArrayForKey:@"accessoryButtons"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        accessibilityIdentifier = [v8 accessibilityIdentifier];
        v10 = [accessibilityIdentifier isEqualToString:@"composeButton"];

        v11 = @"compose.button.text";
        if ((v10 & 1) == 0)
        {
          accessibilityIdentifier2 = [v8 accessibilityIdentifier];
          v13 = [accessibilityIdentifier2 isEqualToString:@"optionsButton"];

          v11 = @"more.button.text";
          if ((v13 & 1) == 0)
          {
            accessibilityIdentifier3 = [v8 accessibilityIdentifier];
            v15 = [accessibilityIdentifier3 isEqualToString:@"quickHideButton"];

            v11 = @"quickhide.button.text";
            if (!v15)
            {
              continue;
            }
          }
        }

        v16 = accessibilityLocalizedString(v11);
        [v8 setAccessibilityLabel:v16];
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }
}

+ (id)newComposeButton
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CKLargeTitleAccessoryViewAccessibility;
  v2 = objc_msgSendSuper2(&v5, sel_newComposeButton);
  v3 = accessibilityLocalizedString(@"compose.button.text");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

+ (id)newOptionsButton
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CKLargeTitleAccessoryViewAccessibility;
  v2 = objc_msgSendSuper2(&v5, sel_newOptionsButton);
  v3 = accessibilityLocalizedString(@"more.button.text");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

@end