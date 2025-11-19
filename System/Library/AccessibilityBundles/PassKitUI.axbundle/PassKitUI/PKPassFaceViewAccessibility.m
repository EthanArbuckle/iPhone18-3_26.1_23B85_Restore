@interface PKPassFaceViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)createBodyInvariantViews;
- (void)setPass:(id)a3 colorProfile:(id)a4;
@end

@implementation PKPassFaceViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v16.receiver = self;
  v16.super_class = PKPassFaceViewAccessibility;
  [(PKPassFaceViewAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_backgroundView"];
  v4 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_pass"];
  v5 = [v4 safeValueForKey:@"logoRect"];
  [v3 _accessibilitySetRetainedValue:v5 forKey:@"LogoRect"];

  v6 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_pass"];
  v7 = [v6 safeValueForKey:@"localizedDescription"];
  v15 = [v6 safeValueForKey:@"organizationName"];
  v8 = __UIAXStringForVariables();

  if ([v8 length])
  {
    v9 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_backgroundView"];
    [v9 accessibilitySetIdentification:@"LogoImage"];

    v10 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_backgroundView"];
    v11 = accessibilityLocalizedString(@"card.logo.hint");
    [v10 setAccessibilityHint:v11];

    v12 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_backgroundView"];
    [v12 setIsAccessibilityElement:1];

    v13 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_backgroundView"];
    [v13 setAccessibilityLabel:v8];
  }

  v14 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_backgroundView"];
  [v14 setIsAccessibilityElement:0];
}

- (void)setPass:(id)a3 colorProfile:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKPassFaceViewAccessibility;
  [(PKPassFaceViewAccessibility *)&v5 setPass:a3 colorProfile:a4];
  [(PKPassFaceViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)createBodyInvariantViews
{
  v2.receiver = self;
  v2.super_class = PKPassFaceViewAccessibility;
  [(PKPassFaceViewAccessibility *)&v2 createBodyInvariantViews];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __55__PKPassFaceViewAccessibility_createBodyInvariantViews__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x29EDCA608];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v1 = [*(a1 + 32) safeValueForKey:@"contentView"];
  v2 = [v1 safeValueForKey:@"subviews"];

  v3 = [v2 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v42;
    v6 = 0x29EDC7000uLL;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v42 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        v9 = *(v6 + 2392);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v8;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v11 = [v10 allTargets];
          v29 = [v11 countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v29)
          {
            v12 = *v38;
            v31 = v11;
            v32 = v2;
            v26 = v4;
            v27 = v5;
            v28 = *v38;
            do
            {
              v13 = 0;
              do
              {
                if (*v38 != v12)
                {
                  v14 = v13;
                  objc_enumerationMutation(v11);
                  v13 = v14;
                }

                v30 = v13;
                v15 = *(*(&v37 + 1) + 8 * v13);
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v16 = [v10 actionsForTarget:v15 forControlEvent:64];
                v17 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v34;
                  while (2)
                  {
                    for (j = 0; j != v18; ++j)
                    {
                      if (*v34 != v19)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v21 = *(*(&v33 + 1) + 8 * j);
                      if ([v21 isEqualToString:@"_deleteButtonPressed:"])
                      {
                        v22 = accessibilityLocalizedString(@"trash.button");
                        [v10 setAccessibilityLabel:v22];
                      }

                      else if ([v21 isEqualToString:@"_shareButtonPressed:"])
                      {
                        v24 = accessibilityLocalizedString(@"share.button");
                        [v10 setAccessibilityLabel:v24];

                        v2 = v32;
                        goto LABEL_29;
                      }
                    }

                    v18 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
                    if (v18)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v13 = v30 + 1;
                v11 = v31;
                v2 = v32;
                v4 = v26;
                v5 = v27;
                v6 = 0x29EDC7000;
                v12 = v28;
              }

              while (v30 + 1 != v29);
              v23 = [v31 countByEnumeratingWithState:&v37 objects:v46 count:16];
              v12 = v28;
              v29 = v23;
            }

            while (v23);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v4);
  }

LABEL_29:

  v25 = *MEMORY[0x29EDCA608];
}

@end