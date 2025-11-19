@interface MobileCalUITransitionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityObscuredScreenAllowedViews;
@end

@implementation MobileCalUITransitionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AdaptiveSearchController"];
  [v3 validateClass:@"_UISearchBarContainerView"];
  [v3 validateClass:@"UITransitionView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v25 = *MEMORY[0x29EDCA608];
  v22.receiver = self;
  v22.super_class = MobileCalUITransitionViewAccessibility;
  v3 = [(MobileCalUITransitionViewAccessibility *)&v22 _accessibilityObscuredScreenAllowedViews];
  v21 = 0;
  objc_opt_class();
  v4 = [(MobileCalUITransitionViewAccessibility *)self safeValueForKey:@"delegate"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 presentedViewController];
  NSClassFromString(&cfstr_Adaptivesearch.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(MobileCalUITransitionViewAccessibility *)self superview];
    v9 = [v8 subviews];

    v10 = [v9 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          NSClassFromString(&cfstr_Uisearchbarcon.isa);
          if (objc_opt_isKindOfClass())
          {
            if (v3)
            {
              v15 = [v3 arrayByAddingObject:v14];

              v3 = v15;
            }

            else
            {
              v23 = v14;
              v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v23 count:1];
            }

            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v3;
}

@end