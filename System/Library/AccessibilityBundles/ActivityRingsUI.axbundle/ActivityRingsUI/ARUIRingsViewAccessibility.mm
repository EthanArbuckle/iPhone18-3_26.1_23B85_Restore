@interface ARUIRingsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation ARUIRingsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ARUIRingsView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(ARUIRingsViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!v3)
  {
    return 1;
  }

  v4 = [(ARUIRingsViewAccessibility *)self isAccessibilityUserDefinedElement];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)accessibilityLabel
{
  v2 = +[NSMutableArray array];
  v34 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = v3;
  v5 = [v3 ringGroupControllers];
  v6 = [v5 count];

  if (v6)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = [v4 ringGroupControllers];
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v34 = 0;
          objc_opt_class();
          v13 = __UIAccessibilityCastAsSafeCategory();
          if (v34 == 1)
          {
            abort();
          }

          v14 = v13;
          v15 = [v13 _accessibilityLocalizedRingDescriptions];
          [v2 axSafelyAddObjectsFromArray:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v9);
    }
  }

  v16 = [v4 ringGroups];
  v17 = [v16 count];

  if (v17)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [v4 ringGroups];
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v26 + 1) + 8 * j) accessibilityLabel];
          [v2 axSafelyAddObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v20);
    }
  }

  v24 = [v2 componentsJoinedByString:{@", "}];

  return v24;
}

- (BOOL)canBecomeFocused
{
  if (([(ARUIRingsViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = ARUIRingsViewAccessibility;
  return [(ARUIRingsViewAccessibility *)&v4 canBecomeFocused];
}

@end