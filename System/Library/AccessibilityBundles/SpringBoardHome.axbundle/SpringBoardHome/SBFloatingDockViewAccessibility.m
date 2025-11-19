@interface SBFloatingDockViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityPerformEscape;
- (id)_accessibilityScannerGroupElements;
- (id)_axAccessoryViews;
- (id)_axDockListViews;
- (id)accessibilityElements;
@end

@implementation SBFloatingDockViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFloatingDockView" hasInstanceMethod:@"userIconListView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFloatingDockView" hasInstanceMethod:@"recentIconListView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFloatingDockView" hasInstanceMethod:@"utilitiesIconListView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFloatingDockView" hasInstanceMethod:@"accessoryIconView" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  v2 = AXSBFloatingDockControllerFromActiveDisplayWindowScene();
  v3 = [v2 safeBoolForKey:@"_allowGestureRecognizers"];
  if (v3)
  {
    v5 = v2;
    AXPerformSafeBlock();
  }

  return v3;
}

- (BOOL)accessibilityElementsHidden
{
  v2 = [MEMORY[0x29EDBDFA8] server];
  v3 = [v2 isScreenLockedWithPasscode:0];

  return v3;
}

- (id)accessibilityElements
{
  v3 = [(SBFloatingDockViewAccessibility *)self _axDockListViews];
  v4 = [(SBFloatingDockViewAccessibility *)self _axAccessoryViews];
  v5 = [MEMORY[0x29EDB8D80] axArrayWithPossiblyNilArrays:{2, v3, v4}];

  return v5;
}

- (id)_accessibilityScannerGroupElements
{
  v32[2] = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [MEMORY[0x29EDB8DE8] array];
  v31[0] = @"GroupTraits";
  v31[1] = @"GroupElements";
  v32[0] = &unk_2A2318CE0;
  v32[1] = v4;
  v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v23 = v3;
  [v3 addObject:v5];

  v6 = [(SBFloatingDockViewAccessibility *)self _axDockListViews];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = MEMORY[0x29EDB8E90];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 accessibilityElements];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v10;
        }

        v16 = v15;

        v17 = [v12 accessibilityIdentifier];
        v18 = [v17 isEqualToString:@"utilities icon list view"];

        if (v18)
        {
          v19 = [(SBFloatingDockViewAccessibility *)self _axAccessoryViews];
          v20 = [MEMORY[0x29EDB8D80] axArrayWithPossiblyNilArrays:{2, v16, v19}];

          v16 = v20;
          if (!v20)
          {
            continue;
          }
        }

        v28[0] = @"GroupTraits";
        v28[1] = @"GroupElements";
        v29[0] = &unk_2A2318CE0;
        v29[1] = v16;
        v21 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
        [v4 addObject:v21];
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
  }

  return v23;
}

- (id)_axDockListViews
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(SBFloatingDockViewAccessibility *)self safeValueForKey:@"userIconListView"];
  v5 = [(SBFloatingDockViewAccessibility *)self safeValueForKey:@"recentIconListView"];
  v6 = [(SBFloatingDockViewAccessibility *)self safeValueForKey:@"utilitiesIconListView"];
  v7 = [v3 axArrayByIgnoringNilElementsWithCount:{3, v4, v5, v6}];

  return v7;
}

- (id)_axAccessoryViews
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(SBFloatingDockViewAccessibility *)self safeValueForKey:@"accessoryIconView"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end