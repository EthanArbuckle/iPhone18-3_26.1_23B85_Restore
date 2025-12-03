@interface KeyboardControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)specifiers;
@end

@implementation KeyboardControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"KeyboardController"];
  [validationsCopy validateClass:@"KeyboardController" hasInstanceMethod:@"specifiers" withFullSignature:{"@", 0}];
}

- (id)specifiers
{
  v19 = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = KeyboardControllerAccessibility;
  [(KeyboardControllerAccessibility *)&v17 specifiers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = *MEMORY[0x29EDC6320];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 propertyForKey:{v6, v13}];
        v10 = [v9 isEqualToString:@"KeyboardPeriodShortcut"];

        if (v10)
        {
          [v8 accessibilitySetIdentification:@"KeyboardPeriodShortcut"];
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x29EDCA608];

  return v2;
}

@end