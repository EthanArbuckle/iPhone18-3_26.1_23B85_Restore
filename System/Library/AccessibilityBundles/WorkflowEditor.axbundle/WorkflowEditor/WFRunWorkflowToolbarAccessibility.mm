@interface WFRunWorkflowToolbarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
- (void)updateShareButtonVisibility;
@end

@implementation WFRunWorkflowToolbarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WFRunWorkflowToolbar" hasInstanceMethod:@"toolbar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIBarButtonItem" hasInstanceMethod:@"tintColor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIBarButtonItem" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFRunWorkflowToolbar" hasInstanceMethod:@"shareItem" withFullSignature:{"@", 0}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WFRunWorkflowToolbarAccessibility;
  [(WFRunWorkflowToolbarAccessibility *)&v3 layoutSubviews];
  [(WFRunWorkflowToolbarAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v24 = *MEMORY[0x29EDCA608];
  v22.receiver = self;
  v22.super_class = WFRunWorkflowToolbarAccessibility;
  [(WFRunWorkflowToolbarAccessibility *)&v22 _accessibilityLoadAccessibilityInformation];
  v21 = 0;
  objc_opt_class();
  v3 = [(WFRunWorkflowToolbarAccessibility *)self safeValueForKey:@"toolbar"];
  v4 = __UIAccessibilityCastAsClass();

  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = v4;
  items = [v4 items];
  v6 = [items countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        tintColor = [v10 tintColor];
        clearColor = [MEMORY[0x29EDC7A00] clearColor];
        v13 = [tintColor isEqual:clearColor];

        if (v13)
        {
          v14 = [v10 safeValueForKey:@"view"];
          [v14 setIsAccessibilityElement:0];
        }
      }

      v7 = [items countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x29EDCA608];
}

- (void)updateShareButtonVisibility
{
  v8.receiver = self;
  v8.super_class = WFRunWorkflowToolbarAccessibility;
  [(WFRunWorkflowToolbarAccessibility *)&v8 updateShareButtonVisibility];
  v3 = [(WFRunWorkflowToolbarAccessibility *)self safeValueForKey:@"shareItem"];
  MEMORY[0x29ED42E40](@"UIBarButtonItem");
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeValueForKey:@"tintColor"];
    clearColor = [MEMORY[0x29EDC7A00] clearColor];
    v6 = [v4 isEqual:clearColor];

    if (v6)
    {
      v7 = [v3 safeValueForKey:@"view"];
      [v7 setIsAccessibilityElement:0];
    }
  }
}

@end