@interface BKUIButtonTrayAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation BKUIButtonTrayAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BKUIButtonTray" hasInstanceVariable:@"_nextStateButton" withType:"UIButton"];
  [validationsCopy validateClass:@"BKUIButtonTray" hasInstanceVariable:@"_bottomLinkButton" withType:"UIButton"];
  [validationsCopy validateClass:@"BKUIButtonTray" hasInstanceMethod:@"initWithFrame:willUseActionDelegate:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v18 = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = BKUIButtonTrayAccessibility;
  [(BKUIButtonTrayAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&unk_2A2127978 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v3)
  {
    v4 = *v13;
    v5 = MEMORY[0x29EDCA5F8];
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(&unk_2A2127978);
        }

        v7 = [(BKUIButtonTrayAccessibility *)self safeUIViewForKey:*(*(&v12 + 1) + 8 * v6)];
        objc_initWeak(&location, v7);
        v9[0] = v5;
        v9[1] = 3221225472;
        v9[2] = __73__BKUIButtonTrayAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
        v9[3] = &unk_29F2A8250;
        objc_copyWeak(&v10, &location);
        [v7 _setIsAccessibilityElementBlock:v9];
        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);

        ++v6;
      }

      while (v3 != v6);
      v3 = [&unk_2A2127978 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x29EDCA608];
}

BOOL __73__BKUIButtonTrayAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained alpha];
  if (v3 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 accessibilityLabel];
    v6 = [v5 length] != 0;
  }

  return v6;
}

@end