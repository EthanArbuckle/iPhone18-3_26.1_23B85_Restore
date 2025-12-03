@interface MobileMail_UIDimmingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityObscuredScreenAllowedViews;
@end

@implementation MobileMail_UIDimmingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MailActionsViewController"];
  [validationsCopy validateClass:@"MFModernAddressAtom"];
  [validationsCopy validateClass:@"UIDimmingView" isKindOfClass:@"UIView"];
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = MobileMail_UIDimmingViewAccessibility;
  [(MobileMail_UIDimmingViewAccessibility *)&v18 _accessibilityObscuredScreenAllowedViews];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        NSClassFromString(&cfstr_Mfmodernaddres.isa);
        if (objc_opt_isKindOfClass())
        {

          v10 = [(MobileMail_UIDimmingViewAccessibility *)self safeValueForKey:@"superview", v14];
          v9 = [v10 _accessibilityFindDescendant:&__block_literal_global_15];

          if (v9)
          {
            v11 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_302];

            v3 = v11;
          }

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = v3;
LABEL_12:

  v12 = *MEMORY[0x29EDCA608];

  return v3;
}

@end