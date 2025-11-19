@interface SBUISystemApertureElementSourceAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_handleSceneResizeAction:(id)a3;
- (id)traverseTreeForElementsFromView:(id)a3;
@end

@implementation SBUISystemApertureElementSourceAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBUISystemApertureElementSource" hasInstanceMethod:@"layoutMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBUISystemApertureElementSource" hasInstanceMethod:@"_handleSceneResizeAction:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"SBUISystemApertureElementSource" hasInstanceMethod:@"systemApertureElementViewController" withFullSignature:{"@", 0}];
}

- (BOOL)_handleSceneResizeAction:(id)a3
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SBUISystemApertureElementSourceAccessibility;
  v5 = [(SBUISystemApertureElementSourceAccessibility *)&v23 _handleSceneResizeAction:v4];
  if (UIAccessibilityIsVoiceOverRunning() && [(SBUISystemApertureElementSourceAccessibility *)self safeIntForKey:@"layoutMode"]== 4)
  {
    v22 = 0;
    objc_opt_class();
    v6 = [(SBUISystemApertureElementSourceAccessibility *)self safeValueForKey:@"systemApertureElementViewController"];
    v7 = __UIAccessibilityCastAsClass();

    v8 = [v7 view];
    v9 = [v8 window];

    [(SBUISystemApertureElementSourceAccessibility *)self traverseTreeForElementsFromView:v9];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v21 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) == 0 || ([v15 _accessibilityViewIsVisible])
          {
            UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v15);
            goto LABEL_14;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v16 = *MEMORY[0x29EDCA608];
  return v5;
}

- (id)traverseTreeForElementsFromView:(id)a3
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [MEMORY[0x29EDB8DE8] array];
  [v4 _accessibilitySubviews];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 isAccessibilityElement])
        {
          [v5 axSafelyAddObject:v11];
          goto LABEL_13;
        }

        v12 = [v11 accessibilityElements];

        if (v12)
        {
          v14 = [v11 accessibilityElements];
          [v5 axSafelyAddObjectsFromArray:v14];

          goto LABEL_13;
        }

        v13 = [(SBUISystemApertureElementSourceAccessibility *)self traverseTreeForElementsFromView:v11];
        [v5 axSafelyAddObjectsFromArray:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = *MEMORY[0x29EDCA608];

  return v5;
}

@end