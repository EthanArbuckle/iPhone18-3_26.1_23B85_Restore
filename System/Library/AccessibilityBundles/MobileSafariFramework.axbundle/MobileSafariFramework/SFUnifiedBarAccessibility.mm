@interface SFUnifiedBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SFUnifiedBarAccessibility)initWithFrame:(CGRect)frame;
- (id)accessibilityElements;
- (id)preferredFocusEnvironments;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFUnifiedBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFUnifiedBar" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SFUnifiedTabBar"];
  [validationsCopy validateClass:@"SFUnifiedBar" hasInstanceVariable:@"_squishedBarButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SFUnifiedBar" hasInstanceVariable:@"_squishedContentView" withType:"UIView"];
  [validationsCopy validateClass:@"SFUnifiedTabBar" hasInstanceVariable:@"_squishedTitleContainer" withType:"SFUnifiedTabBarItemTitleContainerView"];
  [validationsCopy validateClass:@"SFUnifiedBar" hasInstanceMethod:@"_showsSquishedContent" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SFUnifiedBar" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBar" hasInstanceMethod:@"searchField" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = SFUnifiedBarAccessibility;
  [(SFUnifiedBarAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(SFUnifiedBarAccessibility *)self safeValueForKey:@"_squishedBarButton"];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __71__SFUnifiedBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v6[3] = &unk_29F2D6A40;
  objc_copyWeak(&v7, &location);
  [v3 _setIsAccessibilityElementBlock:v6];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __71__SFUnifiedBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v4[3] = &unk_29F2D6910;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityValueBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
}

uint64_t __71__SFUnifiedBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"_showsSquishedContent"];

  return v2;
}

id __71__SFUnifiedBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeArrayForKey:{@"subviews", 0}];

  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        MEMORY[0x29C2E0540](@"SFUnifiedTabBar");
        if (objc_opt_isKindOfClass())
        {
          v9 = [v7 safeValueForKey:@"_squishedTitleContainer"];
          v8 = [v9 accessibilityValue];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v10 = *MEMORY[0x29EDCA608];

  return v8;
}

- (SFUnifiedBarAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SFUnifiedBarAccessibility;
  v3 = [(SFUnifiedBarAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFUnifiedBarAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

- (id)accessibilityElements
{
  if ([(SFUnifiedBarAccessibility *)self safeBoolForKey:@"_showsSquishedContent"])
  {
    v3 = MEMORY[0x29EDB8D80];
    v4 = [(SFUnifiedBarAccessibility *)self safeValueForKey:@"_squishedContentView"];
    v5 = [v3 axArrayByIgnoringNilElementsWithCount:{1, v4}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)preferredFocusEnvironments
{
  selfCopy = self;
  v24 = *MEMORY[0x29EDCA608];
  if ([(SFUnifiedBarAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0;
    objc_opt_class();
    v15 = selfCopy;
    v3 = __UIAccessibilityCastAsClass();
    subviews = [v3 subviews];

    v5 = [subviews countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(subviews);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          MEMORY[0x29C2E0540](@"SFUnifiedTabBar");
          if (objc_opt_isKindOfClass())
          {
            v17 = 0;
            objc_opt_class();
            v10 = [v9 safeValueForKey:@"searchField"];
            v11 = __UIAccessibilityCastAsClass();

            if ([v11 isFirstResponder])
            {
              v22 = v11;
              preferredFocusEnvironments = [MEMORY[0x29EDB8D80] arrayWithObjects:&v22 count:1];

              goto LABEL_15;
            }
          }
        }

        v6 = [subviews countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = v15;
  }

  v16.receiver = selfCopy;
  v16.super_class = SFUnifiedBarAccessibility;
  preferredFocusEnvironments = [(SFUnifiedBarAccessibility *)&v16 preferredFocusEnvironments];
LABEL_15:
  v13 = *MEMORY[0x29EDCA608];

  return preferredFocusEnvironments;
}

@end