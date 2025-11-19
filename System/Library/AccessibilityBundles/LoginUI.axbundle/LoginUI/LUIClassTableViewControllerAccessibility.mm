@interface LUIClassTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation LUIClassTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LUIClassTableViewController" hasInstanceMethod:@"footerButtonPressed:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"LUIClassTableViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LUIClassTableViewControllerAccessibility;
  [(LUIClassTableViewControllerAccessibility *)&v3 viewDidLoad];
  [(LUIClassTableViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v21 = *MEMORY[0x29EDCA608];
  v19.receiver = self;
  v19.super_class = LUIClassTableViewControllerAccessibility;
  [(LUIClassTableViewControllerAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  objc_opt_class();
  v3 = [(LUIClassTableViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 subviews];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    v10 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v8)
          {
            v10 = 0;
          }

          else
          {
            v8 = v12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);

    if ((v10 & (v8 != 0)) == 1)
    {
      v13 = [v8 accessibilityTraits];
      [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v13];
    }
  }

  else
  {

    v8 = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (BOOL)accessibilityPerformEscape
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 3221225472;
  v8 = __70__LUIClassTableViewControllerAccessibility_accessibilityPerformEscape__block_invoke;
  v9 = &unk_29F2CA3A0;
  v10 = self;
  v11 = &v12;
  AXPerformSafeBlock();
  if (v13[3])
  {
    v3 = 1;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = LUIClassTableViewControllerAccessibility;
    v3 = [(LUIClassTableViewControllerAccessibility *)&v5 accessibilityPerformEscape];
    *(v13 + 24) = v3;
  }

  _Block_object_dispose(&v12, 8);
  return v3;
}

uint64_t __70__LUIClassTableViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) footerButtonPressed:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

@end