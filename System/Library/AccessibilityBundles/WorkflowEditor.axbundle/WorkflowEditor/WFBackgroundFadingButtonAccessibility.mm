@interface WFBackgroundFadingButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setBackgroundColor:(id)color forState:(unint64_t)state;
@end

@implementation WFBackgroundFadingButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WFBackgroundFadingButton" hasInstanceMethod:@"backgroundColorsByState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFBackgroundFadingButton" hasInstanceMethod:@"setBackgroundColor:forState:" withFullSignature:{"v", "@", "Q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v33 = *MEMORY[0x29EDCA608];
  v31.receiver = self;
  v31.super_class = WFBackgroundFadingButtonAccessibility;
  [(WFBackgroundFadingButtonAccessibility *)&v31 _accessibilityLoadAccessibilityInformation];
  v30 = 0;
  objc_opt_class();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 3221225472;
  v20 = __83__WFBackgroundFadingButtonAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v21 = &unk_29F322FB8;
  selfCopy = self;
  v23 = &v24;
  AXPerformSafeBlock();
  v3 = v25[5];
  _Block_object_dispose(&v24, 8);

  v4 = __UIAccessibilityCastAsClass();

  if (v30 == 1)
  {
    abort();
  }

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v32 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        unsignedIntegerValue = [v9 unsignedIntegerValue];
        v12 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:unsignedIntegerValue | 8];
        [v4 setObject:v10 forKey:v12];
      }

      v6 = [allKeys countByEnumeratingWithState:&v14 objects:v32 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t __83__WFBackgroundFadingButtonAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundColorsByState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (void)setBackgroundColor:(id)color forState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = WFBackgroundFadingButtonAccessibility;
  [(WFBackgroundFadingButtonAccessibility *)&v5 setBackgroundColor:color forState:state];
  [(WFBackgroundFadingButtonAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end