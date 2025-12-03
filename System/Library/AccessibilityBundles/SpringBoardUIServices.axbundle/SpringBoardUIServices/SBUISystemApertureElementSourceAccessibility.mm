@interface SBUISystemApertureElementSourceAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_handleSceneResizeAction:(id)action;
- (id)traverseTreeForElementsFromView:(id)view;
@end

@implementation SBUISystemApertureElementSourceAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUISystemApertureElementSource" hasInstanceMethod:@"layoutMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBUISystemApertureElementSource" hasInstanceMethod:@"_handleSceneResizeAction:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"SBUISystemApertureElementSource" hasInstanceMethod:@"systemApertureElementViewController" withFullSignature:{"@", 0}];
}

- (BOOL)_handleSceneResizeAction:(id)action
{
  v25 = *MEMORY[0x29EDCA608];
  actionCopy = action;
  v23.receiver = self;
  v23.super_class = SBUISystemApertureElementSourceAccessibility;
  v5 = [(SBUISystemApertureElementSourceAccessibility *)&v23 _handleSceneResizeAction:actionCopy];
  if (UIAccessibilityIsVoiceOverRunning() && [(SBUISystemApertureElementSourceAccessibility *)self safeIntForKey:@"layoutMode"]== 4)
  {
    v22 = 0;
    objc_opt_class();
    v6 = [(SBUISystemApertureElementSourceAccessibility *)self safeValueForKey:@"systemApertureElementViewController"];
    v7 = __UIAccessibilityCastAsClass();

    view = [v7 view];
    window = [view window];

    [(SBUISystemApertureElementSourceAccessibility *)self traverseTreeForElementsFromView:window];
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

- (id)traverseTreeForElementsFromView:(id)view
{
  v22 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  array = [MEMORY[0x29EDB8DE8] array];
  [viewCopy _accessibilitySubviews];
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
          [array axSafelyAddObject:v11];
          goto LABEL_13;
        }

        accessibilityElements = [v11 accessibilityElements];

        if (accessibilityElements)
        {
          accessibilityElements2 = [v11 accessibilityElements];
          [array axSafelyAddObjectsFromArray:accessibilityElements2];

          goto LABEL_13;
        }

        v13 = [(SBUISystemApertureElementSourceAccessibility *)self traverseTreeForElementsFromView:v11];
        [array axSafelyAddObjectsFromArray:v13];
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

  return array;
}

@end