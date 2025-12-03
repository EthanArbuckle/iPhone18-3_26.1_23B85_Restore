@interface ARUIRingsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation ARUIRingsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ARUIRingsView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(ARUIRingsViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  isAccessibilityUserDefinedElement2 = [(ARUIRingsViewAccessibility *)self isAccessibilityUserDefinedElement];
  bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];

  return bOOLValue;
}

- (id)accessibilityLabel
{
  v2 = +[NSMutableArray array];
  v34 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = v3;
  ringGroupControllers = [v3 ringGroupControllers];
  v6 = [ringGroupControllers count];

  if (v6)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    ringGroupControllers2 = [v4 ringGroupControllers];
    v8 = [ringGroupControllers2 countByEnumeratingWithState:&v30 objects:v36 count:16];
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
            objc_enumerationMutation(ringGroupControllers2);
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
          _accessibilityLocalizedRingDescriptions = [v13 _accessibilityLocalizedRingDescriptions];
          [v2 axSafelyAddObjectsFromArray:_accessibilityLocalizedRingDescriptions];
        }

        v9 = [ringGroupControllers2 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v9);
    }
  }

  ringGroups = [v4 ringGroups];
  v17 = [ringGroups count];

  if (v17)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    ringGroups2 = [v4 ringGroups];
    v19 = [ringGroups2 countByEnumeratingWithState:&v26 objects:v35 count:16];
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
            objc_enumerationMutation(ringGroups2);
          }

          accessibilityLabel = [*(*(&v26 + 1) + 8 * j) accessibilityLabel];
          [v2 axSafelyAddObject:accessibilityLabel];
        }

        v20 = [ringGroups2 countByEnumeratingWithState:&v26 objects:v35 count:16];
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