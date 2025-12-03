@interface NUIContainerStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (id)_axVisibleViews;
- (id)accessibilityLabel;
@end

@implementation NUIContainerStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NUIContainerStackView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"NUIContainerView" hasInstanceMethod:@"visibleArrangedSubviews" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _axVisibleViews = [(NUIContainerStackViewAccessibility *)self _axVisibleViews];
  v3 = MEMORY[0x29C2D9FC0]();

  return v3;
}

- (id)_axVisibleViews
{
  objc_opt_class();
  v3 = [(NUIContainerStackViewAccessibility *)self safeValueForKey:@"visibleArrangedSubviews"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (BOOL)canBecomeFocused
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  gestureRecognizers = [v2 gestureRecognizers];

  v4 = [gestureRecognizers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [gestureRecognizers countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

@end