@interface SBMainSwitcherControllerCoordinatorInvertColorsAccessibility
- (id)_axWindowsForInverColors;
- (void)_accessibilityAppleInvertToMainSwitcherIfNecessary;
@end

@implementation SBMainSwitcherControllerCoordinatorInvertColorsAccessibility

- (void)_accessibilityAppleInvertToMainSwitcherIfNecessary
{
  v3 = [UIApp safeValueForKey:@"windowSceneManager"];
  v4 = [v3 safeValueForKey:@"embeddedDisplayWindowScene"];
  v5 = [v4 safeValueForKey:@"switcherController"];

  -[SBMainSwitcherControllerCoordinatorInvertColorsAccessibility _accessibilityApplyInvertView:](self, "_accessibilityApplyInvertView:", [v5 safeBoolForKey:@"isMainSwitcherVisible"]);
}

- (id)_axWindowsForInverColors
{
  v3 = +[NSMutableArray array];
  v20 = 0;
  objc_opt_class();
  v4 = [(SBMainSwitcherControllerCoordinatorInvertColorsAccessibility *)self safeValueForKey:@"_switcherControllersByWindowScene"];
  v5 = __UIAccessibilityCastAsClass();

  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = v5;
  v6 = [v5 objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v20 = 0;
        objc_opt_class();
        v12 = [v11 safeValueForKey:@"switcherWindow"];
        v13 = __UIAccessibilityCastAsClass();

        if (v20 == 1)
        {
          abort();
        }

        [v3 axSafelyAddObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  return v3;
}

@end