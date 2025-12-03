@interface VideosUI_CardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axDownloadButtonPressed:(id)pressed;
- (id)accessibilityAttributedValue;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)automationElements;
- (int64_t)_axCompareStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (unint64_t)_accessibilityDownloadState;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VideosUI_CardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVProgressView"];
  [validationsCopy validateClass:@"VideosUI.CardView" hasSwiftField:@"labelViews" withSwiftType:"Optional<Array<VUILabel>>"];
  [validationsCopy validateClass:@"VideosUI.CardView" hasSwiftField:@"imageView" withSwiftType:"Optional<UIImageView>"];
  [validationsCopy validateClass:@"VideosUI.CardView" hasSwiftField:@"appImageView" withSwiftType:"Optional<UIImageView>"];
  [validationsCopy validateClass:@"VideosUI.CardView" hasSwiftField:@"overlayView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VUIBadgeViewWrapper" hasProperty:@"badgeElement" withType:"@"];
  [validationsCopy validateClass:@"IKImageElement" hasProperty:@"url" withType:"@"];
  [validationsCopy validateClass:@"VUITextLayout" hasInstanceMethod:@"textStyle" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"VUILabel" hasInstanceMethod:@"textLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIPlaybackManager"];
  [validationsCopy validateClass:@"VUIPlaybackManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIPlaybackManager" hasInstanceMethod:@"multiviewPlayerCount" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"VUIPlaybackManager" hasInstanceMethod:@"maxMultiviewPlayerCount" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"isLockupSelected" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"VUIDownloadButton"];
  [validationsCopy validateClass:@"VideosUI.ContextMenuButton"];
  [validationsCopy validateClass:@"VideosUI.CardCollectionViewCell"];
  [validationsCopy validateClass:@"VideosUI.CardView" hasSwiftField:@"button" withSwiftType:"Optional<UIControl>"];
  [validationsCopy validateClass:@"VUIDownloadButton" hasProperty:@"viewModel" withType:"@"];
  [validationsCopy validateClass:@"VUIDownloadButtonViewModel" hasProperty:@"downloadState" withType:"Q"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = VideosUI_CardViewAccessibility;
  [(VideosUI_CardViewAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v3 = [(VideosUI_CardViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = *MEMORY[0x29EDC7FA0];
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v8++) setAccessibilityTraits:v7];
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x29EDCA608];
}

- (id)automationElements
{
  v8.receiver = self;
  v8.super_class = VideosUI_CardViewAccessibility;
  automationElements = [(VideosUI_CardViewAccessibility *)&v8 automationElements];
  v4 = [automationElements mutableCopy];
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];

    if (!array)
    {
      array = [MEMORY[0x29EDB8DE8] array];
    }
  }

  v6 = [(VideosUI_CardViewAccessibility *)self safeSwiftValueForKey:@"button"];
  [array axSafelyAddObject:v6];

  return array;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(VideosUI_CardViewAccessibility *)self safeSwiftValueForKey:@"button"];
  MEMORY[0x29ED3FF70](@"VUIDownloadButton");
  if (objc_opt_isKindOfClass())
  {
    _accessibilityDownloadState = [(VideosUI_CardViewAccessibility *)self _accessibilityDownloadState];
    if (_accessibilityDownloadState > 4)
    {
      v6 = @"download.button.stop.action";
    }

    else
    {
      v6 = off_29F31C1B8[_accessibilityDownloadState];
    }

    v7 = accessibilityLocalizedString(v6);
    v8 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v7 target:self selector:sel__axDownloadButtonPressed_];
    [array axSafelyAddObject:v8];
  }

  MEMORY[0x29ED3FF70](@"VideosUI.ContextMenuButton");
  if (objc_opt_isKindOfClass())
  {
    v9 = accessibilityLocalizedString(@"tv.button.contextmenu");
    objc_initWeak(&location, v4);
    v10 = objc_alloc(MEMORY[0x29EDC78E0]);
    v28[0] = MEMORY[0x29EDCA5F8];
    v28[1] = 3221225472;
    v28[2] = __60__VideosUI_CardViewAccessibility_accessibilityCustomActions__block_invoke;
    v28[3] = &unk_29F31C0A8;
    objc_copyWeak(&v29, &location);
    v11 = [v10 initWithName:v9 actionHandler:v28];
    [array axSafelyAddObject:v11];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  v12 = [(VideosUI_CardViewAccessibility *)self safeSwiftArrayForKey:@"labelViews"];
  lastObject = [v12 lastObject];

  v14 = accessibilityLocalizedString(@"tv.details");
  v15 = [(VideosUI_CardViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29ED3FF70](@"VideosUI.CardCollectionViewCell")];
  if (v15)
  {
    v16 = v15;
    accessibilityLabel = [lastObject accessibilityLabel];
    v18 = [accessibilityLabel isEqual:v14];

    if (v18)
    {
      v27.receiver = self;
      v27.super_class = VideosUI_CardViewAccessibility;
      [(VideosUI_CardViewAccessibility *)&v27 accessibilityActivationPoint];
      v20 = v19;
      v22 = v21;
      [(VideosUI_CardViewAccessibility *)self accessibilityFrame];
      v24 = v22 + (v22 - v23) * 0.5;
      v25 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v14 actionHandler:&__block_literal_global_406];
      [v25 setActivationPoint:{v20, v24}];
      [array axSafelyAddObject:v25];
    }
  }

  return array;
}

- (BOOL)_axDownloadButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  objc_opt_class();
  v5 = [(VideosUI_CardViewAccessibility *)self safeSwiftValueForKey:@"button"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 sendActionsForControlEvents:64];
  return 1;
}

- (unint64_t)_accessibilityDownloadState
{
  v2 = [(VideosUI_CardViewAccessibility *)self safeSwiftValueForKey:@"button"];
  v3 = [v2 safeValueForKey:@"viewModel"];
  v4 = [v3 safeIntegerForKey:@"downloadState"];

  return v4;
}

- (int64_t)_axCompareStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  if (style > 0x12 || ((1 << style) & 0x401C0) == 0)
  {
    goto LABEL_38;
  }

  result = 1;
  if (toStyle > 0x12 || ((1 << toStyle) & 0x401C0) == 0)
  {
    return result;
  }

  if (((1 << style) & 0x401C0) == 0)
  {
LABEL_38:
    if (toStyle <= 0x12 && ((1 << toStyle) & 0x401C0) != 0)
    {
      return -1;
    }

    if (style <= 5)
    {
      if (toStyle >= 6)
      {
        return 1;
      }

      goto LABEL_15;
    }

    if (toStyle < 6)
    {
      return -1;
    }
  }

  v5 = toStyle - 9;
  if ((style - 9) <= 2)
  {
    if (v5 >= 3)
    {
      return 1;
    }

    goto LABEL_15;
  }

  if (v5 < 3)
  {
    return -1;
  }

LABEL_15:
  if (style == 20 || style == 14)
  {
    if (toStyle != 14 && toStyle != 20)
    {
      return -1;
    }
  }

  else
  {
    result = 1;
    if (toStyle == 14 || toStyle == 20)
    {
      return result;
    }
  }

  if (style != 19 && style != 13)
  {
    return toStyle == 19 || toStyle == 13;
  }

  v7 = toStyle != 19 && toStyle != 13;
  return v7 << 63 >> 63;
}

- (id)accessibilityLabel
{
  v56 = *MEMORY[0x29EDCA608];
  v3 = [(VideosUI_CardViewAccessibility *)self safeSwiftArrayForKey:@"labelViews"];
  v4 = [v3 mutableCopy];

  v53[0] = MEMORY[0x29EDCA5F8];
  v53[1] = 3221225472;
  v53[2] = __52__VideosUI_CardViewAccessibility_accessibilityLabel__block_invoke;
  v53[3] = &unk_29F31C158;
  v53[4] = self;
  [v4 sortUsingComparator:v53];
  v52 = 0;
  objc_opt_class();
  v5 = [(VideosUI_CardViewAccessibility *)self safeSwiftValueForKey:@"overlayView"];
  v6 = __UIAccessibilityCastAsClass();

  v41 = v6;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v49;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v48 + 1) + 8 * v11);
        v52 = 0;
        objc_opt_class();
        v14 = __UIAccessibilityCastAsClass();
        if (v52 == 1)
        {
          abort();
        }

        v15 = v14;
        accessibilityLabel = [v14 accessibilityLabel];
        v9 = __UIAXStringForVariables();

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v48 objects:v55 count:{16, accessibilityLabel, @"__AXStringForVariablesSentinel"}];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if ([v9 length])
  {
    v16 = v41;
  }

  else
  {
    v17 = [(VideosUI_CardViewAccessibility *)self safeSwiftValueForKey:@"imageView"];
    v18 = [(VideosUI_CardViewAccessibility *)self safeSwiftValueForKey:@"appImageView"];
    accessibilityLabel2 = [v17 accessibilityLabel];
    accessibilityLabel3 = [v18 accessibilityLabel];
    v16 = v41;
    v21 = [v41 safeValueForKey:@"titleLabel"];
    accessibilityLabel4 = [v21 accessibilityLabel];
    v40 = @"__AXStringForVariablesSentinel";
    accessibilityLabel5 = accessibilityLabel2;
    v38 = accessibilityLabel3;
    v22 = __UIAXStringForVariables();

    v9 = v22;
  }

  MEMORY[0x29ED3FF70](@"VideosUI.UnifiedOverlayView");
  if (objc_opt_isKindOfClass())
  {
    accessibilityLabel5 = [v16 accessibilityLabel];
    v38 = @"__AXStringForVariablesSentinel";
    v23 = __UIAXStringForVariables();

    v9 = v23;
  }

  if (objc_opt_respondsToSelector())
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = [v16 safeArrayForKey:@"badgeViewWrappers"];
    v24 = [v42 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v45;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(v42);
          }

          v28 = *(*(&v44 + 1) + 8 * i);
          mEMORY[0x29EDBDDF0] = [MEMORY[0x29EDBDDF0] sharedInstance];
          v30 = [v28 safeValueForKeyPath:@"badgeElement.url"];
          v31 = [mEMORY[0x29EDBDDF0] accessibilityIdentifierForResourceURL:v30];

          if (([v31 isEqualToString:@"Badge-Play"] & 1) == 0)
          {
            accessibilityLabel5 = v31;
            v38 = @"__AXStringForVariablesSentinel";
            v32 = __UIAXStringForVariables();

            v9 = v32;
          }
        }

        v25 = [v42 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v25);
    }

    v16 = v41;
  }

  v33 = v9;

  v34 = *MEMORY[0x29EDCA608];
  return v9;
}

- (id)accessibilityUserInputLabels
{
  v3 = MEMORY[0x29EDB8E20];
  v10.receiver = self;
  v10.super_class = VideosUI_CardViewAccessibility;
  accessibilityUserInputLabels = [(VideosUI_CardViewAccessibility *)&v10 accessibilityUserInputLabels];
  v5 = [v3 setWithArray:accessibilityUserInputLabels];

  v6 = [(VideosUI_CardViewAccessibility *)self safeSwiftArrayForKey:@"labelViews"];
  v7 = [v6 ax_filteredArrayUsingBlock:&__block_literal_global_431_0];
  [v5 axSafelyAddObjectsFromArray:v7];

  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)accessibilityAttributedValue
{
  v31[1] = *MEMORY[0x29EDCA608];
  v3 = objc_alloc_init(MEMORY[0x29EDBA038]);
  v4 = [(VideosUI_CardViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_437_0];
  firstObject = [v4 firstObject];

  accessibilityLabel = [firstObject accessibilityLabel];
  accessibilityValue = [firstObject accessibilityValue];
  v7 = __UIAXStringForVariables();

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_2A23A0858;
  }

  v9 = [(VideosUI_CardViewAccessibility *)self safeSwiftValueForKey:@"button"];
  MEMORY[0x29ED3FF70](@"VUIDownloadButton");
  if (objc_opt_isKindOfClass())
  {
    accessibilityLabel2 = [v9 accessibilityLabel];
    accessibilityValue2 = [v9 accessibilityValue];
    v11 = __UIAXStringForVariables();

    if ([v11 length])
    {
      v27 = v11;
      v29 = @"__AXStringForVariablesSentinel";
      v12 = __UIAXStringForVariables();

      v8 = v12;
    }
  }

  v13 = [(VideosUI_CardViewAccessibility *)self safeSwiftValueForKey:@"overlayView", v27, v29];
  v14 = [v13 safeValueForKey:@"textLabel"];
  accessibilityLabel3 = [v14 accessibilityLabel];

  if ([accessibilityLabel3 length])
  {
    v16 = objc_alloc(MEMORY[0x29EDB9F30]);
    v30 = *MEMORY[0x29EDBD8B0];
    v31[0] = MEMORY[0x29EDB8EB0];
    v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v18 = [v16 initWithString:accessibilityLabel3 attributes:v17];

    v19 = accessibilityLocalizedString(@"playback.time.remaining");
    v20 = __UIAXStringForVariables();

    v21 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:{v20, v8, @"__AXStringForVariablesSentinel"}];
    v22 = [v20 rangeOfString:@"%@"];
    [v21 replaceCharactersInRange:v22 withAttributedString:{v23, v18}];
    [v3 appendAttributedString:v21];
  }

  v24 = *MEMORY[0x29EDCA608];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = VideosUI_CardViewAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(VideosUI_CardViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(VideosUI_CardViewAccessibility *)self safeSwiftValueForKey:@"overlayView"];
  if ([v4 safeSwiftBoolForKey:@"isLockupSelected"])
  {
    v5 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v5 = 0;
  }

  return v3 | v5;
}

- (id)accessibilityHint
{
  v3 = MEMORY[0x29ED3FF70](@"VideosUI.MultiViewPlayerHUDTemplateController", a2);
  v13 = 0;
  objc_opt_class();
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __51__VideosUI_CardViewAccessibility_accessibilityHint__block_invoke;
  v12[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
  v12[4] = v3;
  v4 = [(VideosUI_CardViewAccessibility *)self _accessibilityFindViewAncestor:v12 startWithSelf:0];
  v5 = __UIAccessibilityCastAsClass();

  if (v13 == 1)
  {
    abort();
  }

  _accessibilityViewController = [v5 _accessibilityViewController];

  if (!_accessibilityViewController)
  {
    goto LABEL_5;
  }

  v7 = [MEMORY[0x29ED3FF70](@"VUIPlaybackManager") safeValueForKey:@"sharedInstance"];
  v8 = [v7 safeIntegerForKey:@"multiviewPlayerCount"];
  if (v8 < [v7 safeIntegerForKey:@"maxMultiviewPlayerCount"])
  {

LABEL_5:
    v11.receiver = self;
    v11.super_class = VideosUI_CardViewAccessibility;
    accessibilityHint = [(VideosUI_CardViewAccessibility *)&v11 accessibilityHint];
    goto LABEL_7;
  }

  accessibilityHint = accessibilityLocalizedString(@"multiview.hint.max.cells.reached");

LABEL_7:

  return accessibilityHint;
}

@end