@interface VUIMediaTagsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateAccessibilityInformation;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation VUIMediaTagsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIImageView"];
  [v3 validateClass:@"VUIImageView" hasProperty:@"image" withType:"@"];
  [v3 validateClass:@"VUIMediaTagsView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"VUIMediaTagsView" hasProperty:@"viewsMap" withType:"@"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v39 = *MEMORY[0x29EDCA608];
  v37.receiver = self;
  v37.super_class = VUIMediaTagsViewAccessibility;
  [(VUIMediaTagsViewAccessibility *)&v37 _accessibilityLoadAccessibilityInformation];
  v36 = 0;
  objc_opt_class();
  v3 = [(VUIMediaTagsViewAccessibility *)self safeValueForKey:@"viewsMap"];
  v4 = __UIAccessibilityCastAsClass();

  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    v30 = v5;
    v31 = *MEMORY[0x29EDC7FA0];
    v9 = 0x29EDBA000uLL;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = *(v9 + 248);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v11 isEqualToString:@"VUIMediaTagKeySeparator"])
          {
            v13 = [v4 objectForKey:@"VUIMediaTagKeySeparator"];
            [v13 setIsAccessibilityElement:0];
            goto LABEL_38;
          }

          if ([v11 isEqualToString:@"VUIMediaTagKeyBrandLinkButton"])
          {
            v13 = [v4 objectForKey:v11];
            [v13 setAccessibilityIdentifier:@"BrandLinkButton"];
            goto LABEL_38;
          }

          if (([v11 isEqualToString:@"VUIMediaTagKeyRatingImage"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"VUIMediaTagKeyClosedCaptionImage") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"VUIMediaTagKeyVideoResolutionImage") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"VUIMediaTagKeyVideoDynamicRangeImage") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"VUIMediaTagKeyADLocalesImage") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"VUIMediaTagKeySDHLocalesImage") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"VUIMediaTagKeyDolbyAtmosImage") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"VUIMediaTagKeyAvailabilityImage") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"VUIMediaTagKeyItunesExtras") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"VUIMediaTagKeyCommonSenseImage") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"VUIMediaTagKeyTomatoFreshnessImage"))
          {
            v13 = [v4 objectForKey:v11];
            MEMORY[0x29ED3FF70](@"VUIImageView");
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 safeValueForKey:@"image"];
            }

            else
            {
              v36 = 0;
              objc_opt_class();
              v14 = __UIAccessibilityCastAsClass();
              if (v36 == 1)
              {
                goto LABEL_42;
              }
            }

            v15 = v14;
            v16 = [v14 accessibilityIdentifier];

            v17 = [MEMORY[0x29EDBDDF0] sharedInstance];
            v18 = [v17 accessibilityLabelForID:v16];

            [v13 setAccessibilityTraits:v31];
            if ([v11 isEqualToString:@"VUIMediaTagKeyCommonSenseImage"])
            {
              v36 = 0;
              objc_opt_class();
              v19 = v4;
              v20 = @"VUIMediaTagKeyCommonSenseRating";
              goto LABEL_30;
            }

            if ([v11 isEqualToString:@"VUIMediaTagKeyTomatoFreshnessImage"])
            {
              v36 = 0;
              objc_opt_class();
              v19 = v4;
              v20 = @"VUIMediaTagKeyTomatoPercentage";
LABEL_30:
              v21 = [v19 objectForKey:v20];
              v22 = __UIAccessibilityCastAsClass();

              if (v36 == 1)
              {
LABEL_42:
                abort();
              }

              v23 = [v22 text];
              v24 = __UIAXStringForVariables();
              [v22 setAccessibilityLabel:{v24, v23, @"__AXStringForVariablesSentinel"}];
            }

            else
            {
              if ([v11 isEqualToString:@"VUIMediaTagKeyAvailabilityImage"] && (objc_msgSend(v13, "accessibilityIdentifier"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"Punchout"), v25, v26))
              {
                v27 = v13;
                v28 = 0;
              }

              else
              {
                [v13 setAccessibilityLabel:v18];
                v27 = v13;
                v28 = 1;
              }

              [v27 setIsAccessibilityElement:v28];
            }

            v5 = v30;
            v9 = 0x29EDBA000;
LABEL_38:

            continue;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v29 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityUpdateAccessibilityInformation
{
  v3 = [(VUIMediaTagsViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_14];
  if (v3)
  {
    v4 = v3;
    -[VUIMediaTagsViewAccessibility setAccessibilityTraits:](self, "setAccessibilityTraits:", [v3 accessibilityTraits]);
    [v4 accessibilityActivationPoint];
    [(VUIMediaTagsViewAccessibility *)self setAccessibilityActivationPoint:?];
    v3 = v4;
  }
}

uint64_t __77__VUIMediaTagsViewAccessibility__accessibilityUpdateAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"BrandLinkButton"];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(VUIMediaTagsViewAccessibility *)self subviews];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_389];
  v4 = AXLabelForElements();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  if (accessibilityTraits_onceToken_canonicalVCClass != -1)
  {
    [VUIMediaTagsViewAccessibility accessibilityTraits];
  }

  if (accessibilityTraits_canonicalVCClass && ([(VUIMediaTagsViewAccessibility *)self _accessibilityFindViewControllerAncestorOfType:?], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v6.receiver = self;
    v6.super_class = VUIMediaTagsViewAccessibility;
    return [(VUIMediaTagsViewAccessibility *)&v6 accessibilityTraits]& ~*MEMORY[0x29EDC7F80];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VUIMediaTagsViewAccessibility;
    return [(VUIMediaTagsViewAccessibility *)&v5 accessibilityTraits];
  }
}

uint64_t __52__VUIMediaTagsViewAccessibility_accessibilityTraits__block_invoke()
{
  result = MEMORY[0x29ED3FF70](@"VideosUI.CanonicalDocumentViewController");
  accessibilityTraits_canonicalVCClass = result;
  return result;
}

- (void)didMoveToWindow
{
  [(VUIMediaTagsViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v3.receiver = self;
  v3.super_class = VUIMediaTagsViewAccessibility;
  [(VUIMediaTagsViewAccessibility *)&v3 didMoveToWindow];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIMediaTagsViewAccessibility;
  [(VUIMediaTagsViewAccessibility *)&v3 layoutSubviews];
  [(VUIMediaTagsViewAccessibility *)self _accessibilityUpdateAccessibilityInformation];
}

@end