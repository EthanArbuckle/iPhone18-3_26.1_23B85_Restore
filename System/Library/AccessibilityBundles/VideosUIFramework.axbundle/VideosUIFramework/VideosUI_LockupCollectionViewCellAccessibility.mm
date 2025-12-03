@interface VideosUI_LockupCollectionViewCellAccessibility
+ (id)specialCharacters;
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityOverlayView;
- (id)_accessibilityStackingPosterView;
- (id)_accessibilityTextBadge:(id)badge;
- (id)_axAttributedLabelFromComponentsOfStackingPosterView:(id)view overlayView:(id)overlayView;
- (id)_axLabelFromComponentsOfStackingPosterView:(id)view overlayView:(id)overlayView;
- (id)accessibilityAttributedLabel;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation VideosUI_LockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIStackingPosterView"];
  [validationsCopy validateClass:@"VUIStackingPosterView" hasProperty:@"mainImageComponent" withType:"@"];
  [validationsCopy validateClass:@"VUIStackingPosterView" hasProperty:@"components" withType:"@"];
  [validationsCopy validateClass:@"VideosUI.LockupCollectionViewCell" hasSwiftField:@"stackingPosterView" withSwiftType:"VUIStackingPosterView"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"selectionView" withSwiftType:"Optional<VUIImageView>"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"isLockupSelected" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"scorecardView" withSwiftType:"Optional<_UIHostingView<ScoreboardImageWrapper>>"];
  [validationsCopy validateClass:@"VUIBaseCollectionViewCell" hasInstanceMethod:@"vuiCollectionViewCellInteractor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VideosUI.MultiViewPlayerHUDTemplateController"];
  [validationsCopy validateClass:@"VideosUI.MultiPlayerViewController"];
  [validationsCopy validateClass:@"VideosUI.PageSwipeUpView"];
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
  accessibilityTraits = [(VideosUI_LockupCollectionViewCellAccessibility *)&v8 accessibilityTraits];
  _accessibilityOverlayView = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityOverlayView];
  v5 = [_accessibilityOverlayView safeSwiftValueForKey:@"selectionView"];
  if (((v5 != 0) & [_accessibilityOverlayView safeSwiftBoolForKey:@"isLockupSelected"]) != 0)
  {
    v6 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v6 = 0;
  }

  return v6 | accessibilityTraits;
}

- (id)accessibilityAttributedLabel
{
  _accessibilityStackingPosterView = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityStackingPosterView];
  _accessibilityOverlayView = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityOverlayView];
  v5 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _axAttributedLabelFromComponentsOfStackingPosterView:_accessibilityStackingPosterView overlayView:_accessibilityOverlayView];

  if (![v5 length])
  {
    v8.receiver = self;
    v8.super_class = VideosUI_LockupCollectionViewCellAccessibility;
    accessibilityAttributedLabel = [(VideosUI_LockupCollectionViewCellAccessibility *)&v8 accessibilityAttributedLabel];

    v5 = accessibilityAttributedLabel;
  }

  return v5;
}

- (id)accessibilityValue
{
  v31 = *MEMORY[0x29EDCA608];
  _accessibilityOverlayView = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityOverlayView];
  _accessibilityStackingPosterView = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityStackingPosterView];
  v5 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _axLabelFromComponentsOfStackingPosterView:_accessibilityStackingPosterView overlayView:_accessibilityOverlayView];

  orderedSet = [MEMORY[0x29EDB8E10] orderedSet];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  specialCharacters = [objc_opt_class() specialCharacters];
  v8 = [specialCharacters countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(specialCharacters);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if ([v5 containsString:v12])
        {
          specialCharacters2 = [objc_opt_class() specialCharacters];
          v14 = [specialCharacters2 objectForKey:v12];

          v15 = accessibilityLocalizedString(v14);
          [orderedSet addObject:v15];
        }
      }

      v9 = [specialCharacters countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  accessibilityValue = [_accessibilityOverlayView accessibilityValue];
  if ([accessibilityValue length])
  {
    v25 = 0;
    objc_opt_class();
    v17 = [(VideosUI_LockupCollectionViewCellAccessibility *)self safeValueForKey:@"vuiCollectionViewCellInteractor"];
    v18 = __UIAccessibilityCastAsClass();

    MEMORY[0x29ED3FF70](@"VideosUI.MultiViewPlayerHUDTemplateController");
    if (objc_opt_isKindOfClass())
    {
      v19 = accessibilityLocalizedString(@"multiview.selected.cell");
      [orderedSet addObject:v19];
    }

    else
    {
      [orderedSet addObject:accessibilityValue];
    }
  }

  if ([orderedSet count])
  {
    array = [orderedSet array];
    accessibilityValue2 = [array componentsJoinedByString:{@", "}];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = VideosUI_LockupCollectionViewCellAccessibility;
    accessibilityValue2 = [(VideosUI_LockupCollectionViewCellAccessibility *)&v24 accessibilityValue];
  }

  v22 = *MEMORY[0x29EDCA608];

  return accessibilityValue2;
}

- (id)accessibilityHint
{
  v4.receiver = self;
  v4.super_class = VideosUI_LockupCollectionViewCellAccessibility;
  accessibilityHint = [(VideosUI_LockupCollectionViewCellAccessibility *)&v4 accessibilityHint];

  return accessibilityHint;
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
  _accessibilityStackingPosterView = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityStackingPosterView];
  v3 = [_accessibilityStackingPosterView safeValueForKey:@"_mainImageComponent"];

  v4 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_361];

  return v4;
}

- (id)_accessibilityTextBadge:(id)badge
{
  badgeCopy = badge;
  v5 = [badgeCopy safeUIViewForKey:@"accessibilityTextBadge"];
  if (!v5)
  {
    v5 = [badgeCopy safeSwiftValueForKey:@"textBadge"];
    if (!v5)
    {
      v5 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29ED3FF70](@"VUITextBadgeView")];
    }
  }

  v6 = v5;

  return v6;
}

- (id)_axLabelFromComponentsOfStackingPosterView:(id)view overlayView:(id)overlayView
{
  v49 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  overlayViewCopy = overlayView;
  orderedSet = [MEMORY[0x29EDB8E10] orderedSet];
  v8 = [viewCopy safeValueForKey:@"animatedLabel"];
  accessibilityLabel = [v8 accessibilityLabel];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [accessibilityLabel length])
  {
    [orderedSet addObject:accessibilityLabel];
  }

  v10 = [viewCopy safeValueForKey:@"mainImageComponent"];
  accessibilityLabel2 = [v10 accessibilityLabel];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [accessibilityLabel2 length])
  {
    [orderedSet addObject:accessibilityLabel2];
  }

  [viewCopy safeArrayForKey:@"components"];
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
        v17 = accessibilityLabel2;
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        accessibilityLabel2 = [*(*(&v44 + 1) + 8 * i) accessibilityLabel];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [accessibilityLabel2 length])
        {
          [orderedSet addObject:accessibilityLabel2];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v14);
  }

  v18 = [overlayViewCopy safeValueForKey:@"accessibilityTitleLabel"];
  accessibilityLabel3 = [v18 accessibilityLabel];

  if ([accessibilityLabel3 length])
  {
    [orderedSet addObject:accessibilityLabel3];
  }

  v20 = [overlayViewCopy safeValueForKey:@"accessibilitySubtitleLabel"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v20 length])
  {
    [orderedSet addObject:v20];
  }

  v21 = [overlayViewCopy safeUIViewForKey:@"accessibilityAppImageView"];
  accessibilityLabel4 = [v21 accessibilityLabel];

  if ([accessibilityLabel4 length])
  {
    [orderedSet addObject:accessibilityLabel4];
  }

  v23 = [overlayViewCopy safeUIViewForKey:@"accessibilityLogoImageView"];
  accessibilityLabel5 = [v23 accessibilityLabel];

  if ([accessibilityLabel5 length])
  {
    [orderedSet addObject:accessibilityLabel5];
  }

  v25 = [overlayViewCopy safeValueForKey:@"accessibilityProgressView"];
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

    accessibilityLabel5 = v29;
  }

  if ([v31 length])
  {
    [orderedSet addObject:v31];
  }

  v32 = [overlayViewCopy safeUIViewForKey:@"accessibilityBadgeView"];
  accessibilityLabel6 = [v32 accessibilityLabel];

  if ([accessibilityLabel6 length])
  {
    [orderedSet addObject:accessibilityLabel6];
  }

  v34 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _accessibilityTextBadge:overlayViewCopy];
  accessibilityLabel7 = [v34 accessibilityLabel];

  if ([accessibilityLabel7 length])
  {
    [orderedSet addObject:accessibilityLabel7];
  }

  objc_opt_class();
  v36 = [overlayViewCopy safeSwiftValueForKey:@"scorecardView"];
  v37 = __UIAccessibilityCastAsClass();

  accessibilityLabel8 = [v37 accessibilityLabel];

  if ([accessibilityLabel8 length])
  {
    [orderedSet addObject:accessibilityLabel8];
  }

  array = [orderedSet array];
  v40 = [array componentsJoinedByString:{@", "}];

  v41 = *MEMORY[0x29EDCA608];

  return v40;
}

- (id)_axAttributedLabelFromComponentsOfStackingPosterView:(id)view overlayView:(id)overlayView
{
  v30 = *MEMORY[0x29EDCA608];
  overlayViewCopy = overlayView;
  v7 = [(VideosUI_LockupCollectionViewCellAccessibility *)self _axLabelFromComponentsOfStackingPosterView:view overlayView:overlayViewCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  specialCharacters = [objc_opt_class() specialCharacters];
  v9 = [specialCharacters countByEnumeratingWithState:&v23 objects:v29 count:16];
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
          objc_enumerationMutation(specialCharacters);
        }

        v7 = [v13 stringByReplacingOccurrencesOfString:*(*(&v23 + 1) + 8 * v12) withString:&stru_2A23A0858];

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [specialCharacters countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v10);
  }

  v14 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:v7];
  v15 = [overlayViewCopy safeUIViewForKey:@"accessibilityLogoImageView"];
  accessibilityLabel = [v15 accessibilityLabel];

  if (accessibilityLabel)
  {
    v17 = [v7 rangeOfString:accessibilityLabel];
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