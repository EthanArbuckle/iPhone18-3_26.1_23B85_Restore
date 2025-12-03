@interface AXSB_UIAlertControllerSafeCategory
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_canDismissWithGestureRecognizer;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_applyAccessibilityLoadAccessibilityInformation;
@end

@implementation AXSB_UIAlertControllerSafeCategory

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIAlertController" hasInstanceMethod:@"_canDismissWithGestureRecognizer" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIAlertController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIAlertController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"_UIAlertControllerPhoneTVMacView" hasInstanceVariable:@"_mainInterfaceActionsGroupView" withType:"_UIAlertControllerInterfaceActionGroupView"];
  [validationsCopy validateClass:@"UIInterfaceActionGroupView" hasInstanceMethod:@"actionSequenceView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIAlertControllerInterfaceActionGroupView" isKindOfClass:@"UIInterfaceActionGroupView"];
  [validationsCopy validateClass:@"_UIInterfaceActionRepresentationsSequenceView" hasInstanceMethod:@"arrangedActionRepresentationViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIInterfaceActionCustomViewRepresentationView" hasInstanceVariable:@"_actionContentView" withType:"UIView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = AXSB_UIAlertControllerSafeCategory;
  [(AXSB_UIAlertControllerSafeCategory *)&v3 _accessibilityLoadAccessibilityInformation];
  [(AXSB_UIAlertControllerSafeCategory *)self _applyAccessibilityLoadAccessibilityInformation];
}

- (void)_applyAccessibilityLoadAccessibilityInformation
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(AXSB_UIAlertControllerSafeCategory *)self _accessibilityBoolValueForKey:@"IsTripleClick"])
  {
    LOBYTE(location) = 0;
    objc_opt_class();
    v2 = __UIAccessibilityCastAsClass();
    view = [v2 view];
    v13 = [view safeValueForKey:@"_mainInterfaceActionsGroupView"];

    v15 = [v13 safeValueForKey:@"actionSequenceView"];
    v4 = [v15 safeArrayForKey:@"arrangedActionRepresentationViews"];
    v5 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          [v5 axSafelyAddObject:{v9, v13}];
          v10 = [v9 safeValueForKey:@"_actionContentView"];
          if (objc_opt_respondsToSelector())
          {
            [v10 _accessibilitySetViewIsVisible:1];
          }

          objc_initWeak(&location, v9);
          if (objc_opt_respondsToSelector())
          {
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __85__AXSB_UIAlertControllerSafeCategory__applyAccessibilityLoadAccessibilityInformation__block_invoke;
            v17[3] = &unk_27842BC60;
            objc_copyWeak(&v18, &location);
            [v10 _setAccessibilityFrameBlock:v17];
            objc_destroyWeak(&v18);
          }

          objc_destroyWeak(&location);
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    if ([v5 count])
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    [v15 setAccessibilityElements:{v11, v13}];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canDismissWithGestureRecognizer
{
  if (([(AXSB_UIAlertControllerSafeCategory *)self _accessibilityBoolValueForKey:@"IsTripleClick"]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = AXSB_UIAlertControllerSafeCategory;
  return [(AXSB_UIAlertControllerSafeCategory *)&v4 _canDismissWithGestureRecognizer];
}

@end