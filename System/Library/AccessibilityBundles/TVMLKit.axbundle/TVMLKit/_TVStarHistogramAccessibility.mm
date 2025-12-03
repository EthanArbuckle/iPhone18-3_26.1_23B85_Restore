@interface _TVStarHistogramAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityAncestorFocusParcel;
- (id)accessibilityLabel;
@end

@implementation _TVStarHistogramAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVStarHistogram" hasInstanceMethod:@"starBars" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVStarBar" hasInstanceMethod:@"numStars" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"_TVStarBar" hasInstanceMethod:@"countStr" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v43 = *MEMORY[0x29EDCA608];
  v41 = 0;
  objc_opt_class();
  v3 = [(_TVStarHistogramAccessibility *)self safeValueForKey:@"starBars"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 count])
  {
    v32 = v4;
    selfCopy = self;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0x29EDBA000uLL;
      v9 = @"numStars";
      v10 = *v38;
      do
      {
        v11 = 0;
        v34 = v6;
        do
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v37 + 1) + 8 * v11);
          v41 = 0;
          v13 = *(v8 + 112);
          objc_opt_class();
          v14 = [v12 safeValueForKey:v9];
          v15 = __UIAccessibilityCastAsClass();

          if (v41 == 1 || (v41 = 0, objc_opt_class(), [v12 safeValueForKey:@"countStr"], v16 = objc_claimAutoreleasedReturnValue(), __UIAccessibilityCastAsClass(), v17 = objc_claimAutoreleasedReturnValue(), v16, v41 == 1))
          {
            abort();
          }

          if (v15)
          {
            v18 = v17 == 0;
          }

          else
          {
            v18 = 1;
          }

          if (!v18)
          {
            string = [v17 string];
            integerValue = [string integerValue];

            if (integerValue >= 1)
            {
              v21 = MEMORY[0x29EDBA0F8];
              accessibilityLocalizedString(@"star.histogram");
              v22 = v10;
              v23 = v9;
              v25 = v24 = v8;
              v30 = [v21 stringWithFormat:v25, integerValue, objc_msgSend(v15, "integerValue")];
              v31 = @"__AXStringForVariablesSentinel";
              v26 = __UIAXStringForVariables();

              v8 = v24;
              v9 = v23;
              v10 = v22;
              v6 = v34;
              v7 = v26;
            }
          }

          ++v11;
        }

        while (v6 != v11);
        v6 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v4 = v32;
    self = selfCopy;
  }

  else
  {
    v7 = 0;
  }

  if (![v7 length])
  {
    v36.receiver = self;
    v36.super_class = _TVStarHistogramAccessibility;
    accessibilityLabel = [(_TVStarHistogramAccessibility *)&v36 accessibilityLabel];

    v7 = accessibilityLabel;
  }

  v28 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)_accessibilityAncestorFocusParcel
{
  mEMORY[0x29EDBDDF0] = [MEMORY[0x29EDBDDF0] sharedInstance];
  isProcessTVAppStore = [mEMORY[0x29EDBDDF0] isProcessTVAppStore];

  if (isProcessTVAppStore)
  {
    _accessibilityAncestorFocusParcel = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _TVStarHistogramAccessibility;
    _accessibilityAncestorFocusParcel = [(_TVStarHistogramAccessibility *)&v7 _accessibilityAncestorFocusParcel];
  }

  return _accessibilityAncestorFocusParcel;
}

@end