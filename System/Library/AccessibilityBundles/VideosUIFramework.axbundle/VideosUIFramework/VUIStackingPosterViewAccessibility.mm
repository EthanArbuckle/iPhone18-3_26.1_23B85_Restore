@interface VUIStackingPosterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VUIStackingPosterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.LegacyEditorialCollectionViewCell"];
  [validationsCopy validateClass:@"VUILabel"];
  [validationsCopy validateClass:@"VUIStackingPosterView" hasInstanceMethod:@"animatedLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIStackingPosterView" hasInstanceMethod:@"mainImageComponent" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIStackingPosterView" hasInstanceMethod:@"filteredComponents" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v36 = *MEMORY[0x29EDCA608];
  v34.receiver = self;
  v34.super_class = VUIStackingPosterViewAccessibility;
  [(VUIStackingPosterViewAccessibility *)&v34 _accessibilityLoadAccessibilityInformation];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0;
  objc_opt_class();
  selfCopy = self;
  v3 = __UIAccessibilityCastAsClass();
  subviews = [v3 subviews];

  obj = subviews;
  v5 = [subviews countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    v22 = v27;
    v8 = @"VUIStackedImageView";
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        MEMORY[0x29ED3FF70](v8);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          MEMORY[0x29ED3FF70](@"VUILayeredImageContainerView");
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        v11 = [(VUIStackingPosterViewAccessibility *)selfCopy _accessibilityAncestorIsKindOf:MEMORY[0x29ED3FF70](@"VideosUI.LegacyEditorialCollectionViewCell")];
        if (v11)
        {
          accessibilityLabel = [v10 accessibilityLabel];
          v26[0] = MEMORY[0x29EDCA5F8];
          v26[1] = 3221225472;
          v27[0] = __80__VUIStackingPosterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
          v27[1] = &unk_29F31C520;
          v28 = accessibilityLabel;
          v25 = accessibilityLabel;
          v13 = [v11 _accessibilityFindSubviewDescendantsPassingTest:v26];
          v14 = MEMORY[0x29EDB8D80];
          v15 = AXLabelForElements();
          v16 = [v14 axArrayByIgnoringNilElementsWithCount:{2, v25, v15, v22}];
          AXLabelForElements();
          v17 = v6;
          v18 = v7;
          v20 = v19 = v8;
          [v10 setAccessibilityLabel:v20];

          v8 = v19;
          v7 = v18;
          v6 = v17;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x29EDCA608];
}

uint64_t __80__VUIStackingPosterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  MEMORY[0x29ED3FF70](@"VUILabel");
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 accessibilityLabel];
    if ([v4 length])
    {
      v5 = *(a1 + 32);
      v6 = [v3 accessibilityLabel];
      v7 = [v5 axContainsString:v6] ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accessibilityLabel
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = [(VUIStackingPosterViewAccessibility *)self safeArrayForKey:@"filteredComponents"];
  v4 = [(VUIStackingPosterViewAccessibility *)self safeValueForKey:@"animatedLabel"];
  v5 = [(VUIStackingPosterViewAccessibility *)self safeValueForKey:@"mainImageComponent"];
  accessibilityLabel = [v4 accessibilityLabel];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v19 = accessibilityExpandTVEpisodeNumber(accessibilityLabel2);
  v8 = __UIAXStringForVariables();

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:{16, v19, @"__AXStringForVariablesSentinel"}];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (v14 != v4 && v14 != v5)
        {
          accessibilityLabel3 = [v14 accessibilityLabel];
          v16 = __UIAXStringForVariables();

          v8 = v16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x29EDCA608];

  return v8;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIStackingPosterViewAccessibility;
  [(VUIStackingPosterViewAccessibility *)&v3 layoutSubviews];
  [(VUIStackingPosterViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end