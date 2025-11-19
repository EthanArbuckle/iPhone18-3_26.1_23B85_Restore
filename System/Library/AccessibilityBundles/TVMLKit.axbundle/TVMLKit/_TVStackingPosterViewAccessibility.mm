@interface _TVStackingPosterViewAccessibility
- (BOOL)_accessibilityShouldReverseComponents:(id)a3;
- (id)_accessibilityFrameDelegate;
- (id)_accessibilityLabelIncludingFallbackPlaceholder:(BOOL)a3 usesSubviewsForComponents:(BOOL)a4;
- (id)_accessibilitySupplementaryFooterViews;
- (unint64_t)_accessibilityScanningBehaviorTraits;
@end

@implementation _TVStackingPosterViewAccessibility

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(_TVStackingPosterViewAccessibility *)self _accessibleSubviews];
  v3 = [v2 axFilterObjectsUsingBlock:&__block_literal_global_7];

  return v3;
}

- (BOOL)_accessibilityShouldReverseComponents:(id)a3
{
  v3 = a3;
  if (_accessibilityShouldReverseComponents__onceToken != -1)
  {
    [_TVStackingPosterViewAccessibility _accessibilityShouldReverseComponents:];
  }

  if ([v3 count] >= 2 && objc_msgSend(v3, "ax_containsObjectUsingBlock:", &__block_literal_global_302))
  {
    v4 = [v3 lastObject];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)_accessibilityLabelIncludingFallbackPlaceholder:(BOOL)a3 usesSubviewsForComponents:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v38 = *MEMORY[0x29EDCA608];
  v36.receiver = self;
  v36.super_class = _TVStackingPosterViewAccessibility;
  v7 = [(_TVStackingPosterViewAccessibility *)&v36 accessibilityLabel];
  if (![v7 length])
  {
    v8 = [MEMORY[0x29EDB8E10] orderedSet];
    if (v4)
    {
      v9 = @"subviews";
    }

    else
    {
      v9 = @"components";
    }

    v10 = [(_TVStackingPosterViewAccessibility *)self safeArrayForKey:v9];
    v31 = v5;
    v30 = v7;
    if ([(_TVStackingPosterViewAccessibility *)self _accessibilityShouldReverseComponents:v10])
    {
      v11 = [v10 reverseObjectEnumerator];
      v12 = [v11 allObjects];

      v10 = v12;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          v19 = [v18 accessibilityLabel];
          if (v19)
          {
            v20 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
            v21 = [v19 stringByTrimmingCharactersInSet:v20];
            [v8 addObject:v21];
          }

          else
          {
            v22 = [v18 _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0];
            v20 = [v22 componentsSeparatedByString:{@", "}];

            if (v20)
            {
              [v8 addObjectsFromArray:v20];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v15);
    }

    v23 = [v8 array];
    v7 = MEMORY[0x29ED3B640]();

    if (![v7 length])
    {
      v24 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, NSClassFromString(&cfstr_Tvprogressview_0.isa)}];
      v25 = [(_TVStackingPosterViewAccessibility *)self safeValueForKey:@"overlayView"];
      v26 = [v25 _accessibilityTextForSubhierarchyIncludingHeaders:1 focusableItems:0 exclusions:0 classExclusions:v24];

      v7 = v26;
    }

    if (v31 && ![v7 length])
    {
      v27 = accessibilityLocalizedString(@"tvml.generic.poster");

      v7 = v27;
    }
  }

  v28 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)_accessibilityFrameDelegate
{
  v31 = *MEMORY[0x29EDCA608];
  if (_accessibilityFrameDelegate_onceToken != -1)
  {
    [_TVStackingPosterViewAccessibility _accessibilityFrameDelegate];
  }

  v28 = 0;
  objc_opt_class();
  v3 = [(_TVStackingPosterViewAccessibility *)self safeValueForKey:@"subviews"];
  v4 = __UIAccessibilityCastAsClass();

  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = _accessibilityFrameDelegate_FrameDelegateClasses;
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
LABEL_10:
          v15 = 0;
          while (1)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * v15);
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v13 == ++v15)
            {
              v13 = [v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
              if (v13)
              {
                goto LABEL_10;
              }

              goto LABEL_16;
            }
          }

          v17 = v10;

          if (v17)
          {
            goto LABEL_21;
          }
        }

        else
        {
LABEL_16:
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  v17 = 0;
LABEL_21:

  v18 = *MEMORY[0x29EDCA608];

  return v17;
}

- (unint64_t)_accessibilityScanningBehaviorTraits
{
  v3 = [(_TVStackingPosterViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _accessibilityScanningBehaviorTraits];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _TVStackingPosterViewAccessibility;
    v5 = [(_TVStackingPosterViewAccessibility *)&v8 _accessibilityScanningBehaviorTraits];
  }

  v6 = v5;

  return v6;
}

@end