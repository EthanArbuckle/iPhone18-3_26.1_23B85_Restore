@interface TUICandidateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityScannerGroupElements;
- (void)finalizeLayoutChange;
@end

@implementation TUICandidateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TUICandidateCell"];
  [validationsCopy validateClass:@"TUICandidateArrowButton"];
  [validationsCopy validateClass:@"TUICandidateView" hasInstanceMethod:@"finalizeLayoutChange" withFullSignature:{"v", 0}];
}

- (void)finalizeLayoutChange
{
  v2.receiver = self;
  v2.super_class = TUICandidateViewAccessibility;
  [(TUICandidateViewAccessibility *)&v2 finalizeLayoutChange];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)_accessibilityScannerGroupElements
{
  v46 = *MEMORY[0x29EDCA608];
  defaultSwitchControlOptions = [MEMORY[0x29EDC7328] defaultSwitchControlOptions];
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = v4;
  subviews = [v4 subviews];

  v7 = [subviews countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        v11 = [*(*(&v40 + 1) + 8 * i) _accessibilityLeafDescendantsWithOptions:defaultSwitchControlOptions];
        [v3 axSafelyAddObjectsFromArray:v11];
      }

      v8 = [subviews countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v8);
  }

  if ([v3 count] == 2)
  {
    firstObject = [v3 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = v3;
      v15 = [v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (!v15)
      {
        goto LABEL_19;
      }

      v16 = v15;
      v17 = *v36;
LABEL_13:
      v18 = 0;
      while (1)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v35 + 1) + 8 * v18);
        MEMORY[0x29ED3C2C0](@"TUICandidateArrowButton");
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (!v16)
          {
LABEL_19:
            v20 = v14;
            goto LABEL_29;
          }

          goto LABEL_13;
        }
      }

      v20 = v19;

      if (v20)
      {
        v39 = 0;
        objc_opt_class();
        firstObject2 = [v14 firstObject];
        v22 = [firstObject2 objectForKeyedSubscript:@"GroupElements"];
        v23 = __UIAccessibilityCastAsClass();

        if (v39 != 1)
        {
          if ([v23 count] != 1)
          {
            goto LABEL_28;
          }

          firstObject3 = [v23 firstObject];
          objc_opt_class();
          v25 = objc_opt_isKindOfClass();

          if ((v25 & 1) == 0)
          {
            goto LABEL_28;
          }

          v39 = 0;
          objc_opt_class();
          firstObject4 = [v23 firstObject];
          v27 = [firstObject4 objectForKeyedSubscript:@"GroupElements"];
          v28 = __UIAccessibilityCastAsClass();

          if (v39 != 1)
          {
            v29 = [v28 mutableCopy];

            firstObject5 = [v29 firstObject];
            MEMORY[0x29ED3C2C0](@"TUICandidateCell");
            v31 = objc_opt_isKindOfClass();

            if (v31)
            {
              [v14 removeObject:v20];
              [v29 addObject:v20];
              firstObject6 = [v23 firstObject];
              [firstObject6 setObject:v29 forKeyedSubscript:@"GroupElements"];
            }

LABEL_28:
LABEL_29:

            goto LABEL_30;
          }
        }

        abort();
      }
    }
  }

LABEL_30:

  v33 = *MEMORY[0x29EDCA608];

  return v3;
}

@end