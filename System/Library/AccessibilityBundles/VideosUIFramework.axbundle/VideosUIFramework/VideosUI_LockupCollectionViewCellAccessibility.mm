@interface VideosUI_LockupCollectionViewCellAccessibility
+ (id)specialCharacters;
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityOverlayView;
- (id)_accessibilityStackingPosterView;
- (id)_accessibilityTextBadge:(id)a3;
- (id)_axAttributedLabelFromComponentsOfStackingPosterView:(id)a3 overlayView:(id)a4;
- (id)_axLabelFromComponentsOfStackingPosterView:(id)a3 overlayView:(id)a4;
- (id)accessibilityAttributedLabel;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation VideosUI_LockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIStackingPosterView"];
  [v3 validateClass:@"VUIStackingPosterView" hasProperty:@"mainImageComponent" withType:"@"];
  [v3 validateClass:@"VUIStackingPosterView" hasProperty:@"components" withType:"@"];
  [v3 validateClass:@"VideosUI.LockupCollectionViewCell" hasSwiftField:@"stackingPosterView" withSwiftType:"VUIStackingPosterView"];
  [v3 validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"selectionView" withSwiftType:"Optional<VUIImageView>"];
  [v3 validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"isLockupSelected" withSwiftType:"Bool"];
  [v3 validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"scorecardView" withSwiftType:"Optional<_UIHostingView<ScoreboardImageWrapper>>"];
  [v3 validateClass:@"VUIBaseCollectionViewCell" hasInstanceMethod:@"vuiCollectionViewCellInteractor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosUI.MultiViewPlayerHUDTemplateController"];
  [v3 validateClass:@"VideosUI.MultiPlayerViewController"];
  [v3 validateClass:@"VideosUI.PageSwipeUpView"];
}

+ (id)specialCharacters
{
  if (specialCharacters_onceToken_specialCharacters != -1)
  {
    +[VideosUI_LockupCollectionViewCellAccessibility specialCharacters];
  }

  v3 = specialCharacters_specialCharacters;

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = VideosUI_LockupCollectionViewCellAccessibility;
  v3 = [(VideosUI_LockupCollectionViewCellAccessibility *)&v8 accessibilityTraits];
  v4 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityOverlayView];
  v5 = [v4 safeSwiftValueForKey:@"selectionView"];
  if (((v5 != 0) & [v4 safeSwiftBoolForKey:@"isLockupSelected"]) != 0)
  {
    v6 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v6 = 0;
  }

  return v6 | v3;
}

- (id)accessibilityAttributedLabel
{
  v3 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityStackingPosterView];
  v4 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityOverlayView];
  v5 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _axAttributedLabelFromComponentsOfStackingPosterView:v3 overlayView:v4];

  if (![v5 length])
  {
    v8.receiver = self;
    v8.super_class = VideosUI_LockupCollectionViewCellAccessibility;
    v6 = [(VideosUI_LockupCollectionViewCellAccessibility *)&v8 accessibilityAttributedLabel];

    v5 = v6;
  }

  return v5;
}

- (id)accessibilityValue
{
  v31 = *MEMORY[0x29EDCA608];
  v3 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityOverlayView];
  v4 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityStackingPosterView];
  v5 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _axLabelFromComponentsOfStackingPosterView:v4 overlayView:v3];

  v6 = [MEMORY[0x29EDB8E10] orderedSet];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [objc_opt_class() specialCharacters];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if ([v5 containsString:v12])
        {
          v13 = [objc_opt_class() specialCharacters];
          v14 = [v13 objectForKey:v12];

          v15 = accessibilityLocalizedString(v14);
          [v6 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v16 = [v3 accessibilityValue];
  if ([v16 length])
  {
    v25 = 0;
    objc_opt_class();
    v17 = [(VideosUI_LockupCollectionViewCellAccessibility *)self safeValueForKey:@"vuiCollectionViewCellInteractor"];
    v18 = __UIAccessibilityCastAsClass();

    MEMORY[0x29ED3FF70](@"VideosUI.MultiViewPlayerHUDTemplateController");
    if (objc_opt_isKindOfClass())
    {
      v19 = accessibilityLocalizedString(@"multiview.selected.cell");
      [v6 addObject:v19];
    }

    else
    {
      [v6 addObject:v16];
    }
  }

  if ([v6 count])
  {
    v20 = [v6 array];
    v21 = [v20 componentsJoinedByString:{@", "}];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = VideosUI_LockupCollectionViewCellAccessibility;
    v21 = [(VideosUI_LockupCollectionViewCellAccessibility *)&v24 accessibilityValue];
  }

  v22 = *MEMORY[0x29EDCA608];

  return v21;
}

- (id)accessibilityHint
{
  v4.receiver = self;
  v4.super_class = VideosUI_LockupCollectionViewCellAccessibility;
  v2 = [(VideosUI_LockupCollectionViewCellAccessibility *)&v4 accessibilityHint];

  return v2;
}

- (id)_accessibilityStackingPosterView
{
  v2 = [(VideosUI_LockupCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"stackingPosterView"];
  v3 = AXLogAppAccessibility();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_29C743000, v3, OS_LOG_TYPE_DEFAULT, "stackingPosterView was found! It seems like AX accessnotes are working", buf, 2u);
    }

    v5 = v2;
  }

  else
  {
    if (v4)
    {
      *v8 = 0;
      _os_log_impl(&dword_29C743000, v3, OS_LOG_TYPE_DEFAULT, "stackingPosterView was nil. It seems like AX accessnotes are not working", v8, 2u);
    }

    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    v5 = [v6 _accessibilityFindSubviewDescendant:&__block_literal_global_356];
  }

  return v5;
}

- (id)_accessibilityOverlayView
{
  v2 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityStackingPosterView];
  v3 = [v2 safeValueForKey:@"_mainImageComponent"];

  v4 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_361];

  return v4;
}

- (id)_accessibilityTextBadge:(id)a3
{
  v4 = a3;
  v5 = [v4 safeUIViewForKey:@"accessibilityTextBadge"];
  if (!v5)
  {
    v5 = [v4 safeSwiftValueForKey:@"textBadge"];
    if (!v5)
    {
      v5 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29ED3FF70](@"VUITextBadgeView")];
    }
  }

  v6 = v5;

  return v6;
}

- (id)_axLabelFromComponentsOfStackingPosterView:(id)a3 overlayView:(id)a4
{
  v49 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x29EDB8E10] orderedSet];
  v8 = [v5 safeValueForKey:@"animatedLabel"];
  v9 = [v8 accessibilityLabel];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
  {
    [v7 addObject:v9];
  }

  v10 = [v5 safeValueForKey:@"mainImageComponent"];
  v11 = [v10 accessibilityLabel];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 length])
  {
    [v7 addObject:v11];
  }

  [v5 safeArrayForKey:@"components"];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = v47 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        v17 = v11;
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v11 = [*(*(&v44 + 1) + 8 * i) accessibilityLabel];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 length])
        {
          [v7 addObject:v11];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v14);
  }

  v18 = [v6 safeValueForKey:@"accessibilityTitleLabel"];
  v19 = [v18 accessibilityLabel];

  if ([v19 length])
  {
    [v7 addObject:v19];
  }

  v20 = [v6 safeValueForKey:@"accessibilitySubtitleLabel"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v20 length])
  {
    [v7 addObject:v20];
  }

  v21 = [v6 safeUIViewForKey:@"accessibilityAppImageView"];
  v22 = [v21 accessibilityLabel];

  if ([v22 length])
  {
    [v7 addObject:v22];
  }

  v23 = [v6 safeUIViewForKey:@"accessibilityLogoImageView"];
  v24 = [v23 accessibilityLabel];

  if ([v24 length])
  {
    [v7 addObject:v24];
  }

  v25 = [v6 safeValueForKey:@"accessibilityProgressView"];
  [v25 safeCGFloatForKey:@"accessibilityProgress"];
  v27 = v26;

  if (v27 <= 0.01)
  {
    v31 = 0;
  }

  else
  {
    v28 = MEMORY[0x29EDBA0F8];
    v29 = accessibilityLocalizedString(@"content.percentage.complete");
    v30 = AXFormatFloatWithPercentage();
    v31 = [v28 stringWithFormat:v29, v30];

    v24 = v29;
  }

  if ([v31 length])
  {
    [v7 addObject:v31];
  }

  v32 = [v6 safeUIViewForKey:@"accessibilityBadgeView"];
  v33 = [v32 accessibilityLabel];

  if ([v33 length])
  {
    [v7 addObject:v33];
  }

  v34 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityTextBadge:v6];
  v35 = [v34 accessibilityLabel];

  if ([v35 length])
  {
    [v7 addObject:v35];
  }

  objc_opt_class();
  v36 = [v6 safeSwiftValueForKey:@"scorecardView"];
  v37 = __UIAccessibilityCastAsClass();

  v38 = [v37 accessibilityLabel];

  if ([v38 length])
  {
    [v7 addObject:v38];
  }

  v39 = [v7 array];
  v40 = [v39 componentsJoinedByString:{@", "}];

  v41 = *MEMORY[0x29EDCA608];

  return v40;
}

- (id)_axAttributedLabelFromComponentsOfStackingPosterView:(id)a3 overlayView:(id)a4
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _axLabelFromComponentsOfStackingPosterView:a3 overlayView:v6];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [objc_opt_class() specialCharacters];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v7 = [v13 stringByReplacingOccurrencesOfString:*(*(&v23 + 1) + 8 * v12) withString:&stru_2A23A0858];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v10);
  }

  v14 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:v7];
  v15 = [v6 safeUIViewForKey:@"accessibilityLogoImageView"];
  v16 = [v15 accessibilityLabel];

  if (v16)
  {
    v17 = [v7 rangeOfString:v16];
    v19 = v18;
    v27 = *MEMORY[0x29EDC7F38];
    v28 = MEMORY[0x29EDB8EB0];
    v20 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [v14 addAttributes:v20 range:{v17, v19}];
  }

  v21 = *MEMORY[0x29EDCA608];

  return v14;
}

@end