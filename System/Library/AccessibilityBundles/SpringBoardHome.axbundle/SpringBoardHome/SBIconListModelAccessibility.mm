@interface SBIconListModelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsVisibleByCompleteHitTest;
- (id)automationElements;
- (void)dealloc;
@end

@implementation SBIconListModelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"icons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceVariable:@"_iconLocation" withType:"NSString"];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"_axIconView" withFullSignature:{"@", 0}];
}

- (void)dealloc
{
  [(SBIconListModelAccessibility *)self _accessibilityUnregister];
  v3.receiver = self;
  v3.super_class = SBIconListModelAccessibility;
  [(SBIconListModelAccessibility *)&v3 dealloc];
}

- (id)automationElements
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0;
  objc_opt_class();
  v3 = [(SBIconListModelAccessibility *)self safeValueForKey:@"icons"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 safeValueForKey:{@"_axIconView", v16}];
        v13 = [v12 safeStringForKey:@"_iconLocation"];
        if (SBAXIsIconViewIgnoreLocation(v13))
        {

          v12 = 0;
        }

        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v11;
        }

        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_accessibilityIsVisibleByCompleteHitTest
{
  v14 = *MEMORY[0x29EDCA608];
  [(SBIconListModelAccessibility *)self automationElements];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _accessibilityParentView = [v6 _accessibilityParentView];
          LOBYTE(v3) = [_accessibilityParentView _accessibilityIsVisibleByCompleteHitTest];

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

@end