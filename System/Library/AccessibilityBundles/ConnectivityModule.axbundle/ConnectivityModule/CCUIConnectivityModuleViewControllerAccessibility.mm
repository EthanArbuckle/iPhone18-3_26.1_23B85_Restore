@interface CCUIConnectivityModuleViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axButtonViewWithControllerClass:(Class)class;
- (id)_axCreateMockElement;
- (id)_axElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setGridSizeClass:(int64_t)class;
@end

@implementation CCUIConnectivityModuleViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIConnectivityModuleViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CCUIConnectivityModuleViewController" hasInstanceMethod:@"orderedButtonViewControllers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIConnectivityModuleViewController" hasInstanceMethod:@"_isExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CCUIConnectivityButtonViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CCUILabeledRoundButton"];
  [validationsCopy validateClass:@"CCUILabeledRoundButton" hasInstanceMethod:@"buttonView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIConnectivityModuleViewController" hasInstanceMethod:@"setResizing:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CCUIConnectivityModuleViewController" hasInstanceMethod:@"setGridSizeClass:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"CCUICellularDataModuleViewController" hasInstanceMethod:@"buttonViewForCollapsedConnectivityModule" withFullSignature:{"@", 0}];
}

- (void)setGridSizeClass:(int64_t)class
{
  v4.receiver = self;
  v4.super_class = CCUIConnectivityModuleViewControllerAccessibility;
  [(CCUIConnectivityModuleViewControllerAccessibility *)&v4 setGridSizeClass:class];
  [(CCUIConnectivityModuleViewControllerAccessibility *)self _setAXMockElement:0];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CCUIConnectivityModuleViewControllerAccessibility;
  [(CCUIConnectivityModuleViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(CCUIConnectivityModuleViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __95__CCUIConnectivityModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2B4F10;
  objc_copyWeak(&v5, &location);
  [v3 setAccessibilityElementsBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __95__CCUIConnectivityModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained safeBoolForKey:@"_isExpanded"] & 1) != 0 || AXDoesRequestingClientDeserveAutomation())
  {
    v2 = 0;
  }

  else
  {
    v2 = [WeakRetained _axElements];
  }

  return v2;
}

- (id)_axElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(CCUIConnectivityModuleViewControllerAccessibility *)self safeArrayForKey:@"orderedButtonViewControllers"];
  if ([v4 count] < 5)
  {
    v11 = 0;
    goto LABEL_16;
  }

  selfCopy = self;
  for (i = 0; i != 3; ++i)
  {
    v6 = [v4 objectAtIndexedSubscript:i];
    v7 = [v6 safeValueForKey:@"view"];
    MEMORY[0x29C2D1760](@"CCUILabeledRoundButton");
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = @"buttonView";
LABEL_8:
      v10 = [v8 safeValueForKey:v9];
      goto LABEL_9;
    }

    MEMORY[0x29C2D1760](@"CCUIAirDropModuleViewController");
    if (objc_opt_isKindOfClass() & 1) != 0 || (MEMORY[0x29C2D1760](@"CCUIWiFiModuleViewController"), (objc_opt_isKindOfClass()))
    {
      v8 = v6;
      v9 = @"buttonViewForCollapsedConnectivityModule";
      goto LABEL_8;
    }

    v10 = 0;
LABEL_9:
    [array axSafelyAddObject:v10];
  }

  _axMockElement = [(CCUIConnectivityModuleViewControllerAccessibility *)selfCopy _axMockElement];

  if (!_axMockElement)
  {
    _axCreateMockElement = [(CCUIConnectivityModuleViewControllerAccessibility *)selfCopy _axCreateMockElement];
    [(CCUIConnectivityModuleViewControllerAccessibility *)selfCopy _setAXMockElement:_axCreateMockElement];
  }

  _axMockElement2 = [(CCUIConnectivityModuleViewControllerAccessibility *)selfCopy _axMockElement];
  [array addObject:_axMockElement2];

  v11 = array;
LABEL_16:

  return v11;
}

- (id)_axCreateMockElement
{
  v3 = [(CCUIConnectivityModuleViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4 = [(CCUIConnectivityModuleViewControllerAccessibility *)self _axButtonViewWithControllerClass:MEMORY[0x29C2D1760](@"CCUIWiFiModuleViewController")];
  v5 = [(CCUIConnectivityModuleViewControllerAccessibility *)self _axButtonViewWithControllerClass:MEMORY[0x29C2D1760](@"CCUICellularDataModuleViewController")];
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    [v5 accessibilityFrame];
    v7 = v6;
  }

  [v7 accessibilityFrame];
  [v6 accessibilityFrame];
  v8 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:v3];
  v9 = accessibilityLocalizedString(@"control.center.module.more.controls");
  [v8 setAccessibilityLabel:v9];

  v10 = accessibilityLocalizedString(@"control.center.module.expand.hint");
  [v8 setAccessibilityHint:v10];

  [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v8 setIsAccessibilityElement:1];
  [v8 _accessibilitySetAdditionalElementOrderedLast:1];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __73__CCUIConnectivityModuleViewControllerAccessibility__axCreateMockElement__block_invoke;
  v13[3] = &unk_29F2B4F38;
  objc_copyWeak(&v15, &location);
  v11 = v3;
  v14 = v11;
  [v8 setAccessibilityFrameBlock:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v8;
}

double __73__CCUIConnectivityModuleViewControllerAccessibility__axCreateMockElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained safeArrayForKey:@"orderedButtonViewControllers"];

  if ([v3 count] > 3)
  {
    v6 = [v3 objectAtIndexedSubscript:3];
    v7 = [v6 safeUIViewForKey:@"buttonViewForCollapsedConnectivityModule"];

    v8 = [v3 objectAtIndexedSubscript:2];
    MEMORY[0x29C2D1760](@"CCUIWiFiModuleViewController");
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && ([v3 objectAtIndexedSubscript:2], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "safeUIViewForKey:", @"buttonViewForCollapsedConnectivityModule"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
    {
      [v11 accessibilityFrame];
    }

    else
    {
      [v7 accessibilityFrame];
      [v7 accessibilityFrame];
    }

    [v7 accessibilityFrame];
    v5 = v12;
  }

  else
  {
    [*(a1 + 32) accessibilityFrame];
    v5 = v4;
  }

  return v5;
}

- (id)_axButtonViewWithControllerClass:(Class)class
{
  v17 = *MEMORY[0x29EDCA608];
  [(CCUIConnectivityModuleViewControllerAccessibility *)self safeArrayForKey:@"orderedButtonViewControllers"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 safeValueForKeyPath:{@"buttonViewForCollapsedConnectivityModule", v12}];
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

@end