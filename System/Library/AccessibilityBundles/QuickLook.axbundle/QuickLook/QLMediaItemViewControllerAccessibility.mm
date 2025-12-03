@interface QLMediaItemViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyContentOffset:(id)offset contentOffset:(CGPoint)contentOffset;
- (void)_axSetLabelForTimeLabel;
- (void)_axSetUpScrubberView;
- (void)_axUpdateAccessibleElements;
- (void)setTimeLabelNeedsUpdate;
- (void)setUpTimeLabelIfNeeded;
@end

@implementation QLMediaItemViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIScrollView" hasInstanceMethod:@"isDragging" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"QLVideoScrubberView" hasInstanceMethod:@"isUserInteractingWithScrubber" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"QLMediaItemViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"QLMediaItemViewController" isKindOfClass:@"QLMediaItemBaseViewController"];
  [validationsCopy validateClass:@"QLMediaItemViewController" hasInstanceMethod:@"timeLabelScrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLMediaItemViewController" hasInstanceMethod:@"setUpTimeLabelIfNeeded" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"QLMediaItemViewController" hasInstanceMethod:@"setTimeLabelNeedsUpdate" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"QLMediaItemBaseViewController" hasInstanceMethod:@"elapsedTime" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"QLMediaItemViewController" hasInstanceVariable:@"_timeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"QLAudioItemViewController" isKindOfClass:@"QLMediaItemViewController"];
  [validationsCopy validateClass:@"QLMovieItemViewController" isKindOfClass:@"QLMediaItemViewController"];
  [validationsCopy validateClass:@"QLAudioItemViewController" hasInstanceVariable:@"_playButton" withType:"QLOverlayPlayButton"];
  [validationsCopy validateClass:@"QLMovieItemViewController"];
  [validationsCopy validateClass:@"QLMovieItemViewController" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = QLMediaItemViewControllerAccessibility;
  [(QLMediaItemViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(QLMediaItemViewControllerAccessibility *)self _axSetUpScrubberView];
}

- (void)_axApplyContentOffset:(id)offset contentOffset:(CGPoint)contentOffset
{
  y = contentOffset.y;
  x = contentOffset.x;
  offsetCopy = offset;
  objc_opt_class();
  v7 = [offsetCopy _accessibilityViewAncestorIsKindOf:MEMORY[0x29C2E9900](@"QLVideoScrubberView")];
  v8 = __UIAccessibilityCastAsSafeCategory();

  [offsetCopy _axSetIsDragging:1];
  [v8 _axSetIsScrubbering:1];
  [offsetCopy accessibilityApplyScrollContent:0 sendScrollStatus:0 animated:{x, y}];
  v11 = offsetCopy;
  v12 = v8;
  v9 = v8;
  v10 = offsetCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

uint64_t __78__QLMediaItemViewControllerAccessibility__axApplyContentOffset_contentOffset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _axSetIsDragging:0];
  v2 = *(a1 + 40);

  return [v2 _axSetIsScrubbering:0];
}

- (void)_axSetUpScrubberView
{
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(QLMediaItemViewControllerAccessibility *)self safeValueForKey:@"timeLabelScrollView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4 && ([v4 isAccessibilityElement] & 1) == 0)
  {
    objc_initWeak(&location, v4);
    [v4 accessibilitySetIdentification:@"MediaScrubber"];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __62__QLMediaItemViewControllerAccessibility__axSetUpScrubberView__block_invoke;
    v15[3] = &unk_29F2EF9C8;
    objc_copyWeak(&v16, &location);
    [v4 _setIsAccessibilityElementBlock:v15];
    v5 = accessibilityLocalizedString(@"media.scrubber");
    [v4 setAccessibilityLabel:v5];

    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F60]];
    v6 = accessibilityLocalizedString(@"media.scrubber.hint");
    [v4 setAccessibilityHint:v6];

    objc_initWeak(&from, self);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __62__QLMediaItemViewControllerAccessibility__axSetUpScrubberView__block_invoke_2;
    v12[3] = &unk_29F2EF9F0;
    objc_copyWeak(&v13, &from);
    [v4 _setAccessibilityValueBlock:v12];
    objc_initWeak(&v11, v4);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __62__QLMediaItemViewControllerAccessibility__axSetUpScrubberView__block_invoke_3;
    v9[3] = &unk_29F2EFA18;
    objc_copyWeak(&v10, &v11);
    v9[4] = self;
    [v4 _setAccessibilityIncrementBlock:v9];
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __62__QLMediaItemViewControllerAccessibility__axSetUpScrubberView__block_invoke_4;
    v7[3] = &unk_29F2EFA18;
    objc_copyWeak(&v8, &v11);
    v7[4] = self;
    [v4 _setAccessibilityDecrementBlock:v7];
    [(QLMediaItemViewControllerAccessibility *)self _axUpdateAccessibleElements];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

uint64_t __62__QLMediaItemViewControllerAccessibility__axSetUpScrubberView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityViewIsVisible];

  return v2;
}

uint64_t __62__QLMediaItemViewControllerAccessibility__axSetUpScrubberView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained safeCGFloatForKey:@"elapsedTime"];
  v3 = v2;

  v4.n128_u64[0] = v3;

  return MEMORY[0x2A1C5EC00](v4);
}

void __62__QLMediaItemViewControllerAccessibility__axSetUpScrubberView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained contentSize];
  v4 = v3;
  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 contentInset];
  v7 = v4 - v6;

  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 contentOffset];
  v10 = v9;
  v12 = v11;

  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 contentSize];
  v15 = v10 + v14 / 10.0;

  if (v15 >= v7)
  {
    v15 = v7;
  }

  v16 = *(a1 + 32);
  objc_opt_class();
  v18 = objc_loadWeakRetained((a1 + 40));
  v17 = __UIAccessibilityCastAsSafeCategory();
  [v16 _axApplyContentOffset:v17 contentOffset:{v15, v12}];
}

void __62__QLMediaItemViewControllerAccessibility__axSetUpScrubberView__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 contentSize];
  v9 = v4 + v8 / -10.0;

  v10 = *(a1 + 32);
  objc_opt_class();
  v12 = objc_loadWeakRetained((a1 + 40));
  v11 = __UIAccessibilityCastAsSafeCategory();
  [v10 _axApplyContentOffset:v11 contentOffset:{v9, v6}];
}

- (void)_axUpdateAccessibleElements
{
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  view = [v3 view];

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __69__QLMediaItemViewControllerAccessibility__axUpdateAccessibleElements__block_invoke;
  v5[3] = &unk_29F2EFA40;
  objc_copyWeak(&v6, &location);
  [view _setAccessibilityElementsBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __69__QLMediaItemViewControllerAccessibility__axUpdateAccessibleElements__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  MEMORY[0x29C2E9900](@"QLMovieItemViewController");
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 safeBoolForKey:@"isEditing"];

    if (v4)
    {
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = [MEMORY[0x29EDB8DE8] array];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 safeValueForKey:@"_playButton"];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 safeValueForKey:@"_timeLabel"];

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 safeUIViewForKey:@"timeLabelScrollView"];

  v12 = [v11 superview];
  [v12 setAccessibilityElementsHidden:1];

  [v5 axSafelyAddObject:v7];
  [v5 axSafelyAddObject:v9];
  [v5 axSafelyAddObject:v11];

LABEL_6:

  return v5;
}

- (void)_axSetLabelForTimeLabel
{
  v2 = [(QLMediaItemViewControllerAccessibility *)self safeValueForKey:@"_timeLabel"];
  if (v2)
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    text = [v3 text];

    if ([text hasPrefix:@"-"])
    {
      v5 = [text stringByReplacingOccurrencesOfString:@"-" withString:&stru_2A22BA860];

      v6 = @"media.time.remaining";
      text = v5;
    }

    else
    {
      v6 = @"media.time.elapsed";
    }

    v7 = AXLocalizeDurationTime();
    v8 = accessibilityLocalizedString(v6);
    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:v8, v7];

    [v2 setAccessibilityLabel:v9];
  }
}

- (void)setUpTimeLabelIfNeeded
{
  v3.receiver = self;
  v3.super_class = QLMediaItemViewControllerAccessibility;
  [(QLMediaItemViewControllerAccessibility *)&v3 setUpTimeLabelIfNeeded];
  [(QLMediaItemViewControllerAccessibility *)self _axSetUpScrubberView];
}

- (void)setTimeLabelNeedsUpdate
{
  v9.receiver = self;
  v9.super_class = QLMediaItemViewControllerAccessibility;
  [(QLMediaItemViewControllerAccessibility *)&v9 setTimeLabelNeedsUpdate];
  [(QLMediaItemViewControllerAccessibility *)self _axSetLabelForTimeLabel];
  v3 = [(QLMediaItemViewControllerAccessibility *)self safeValueForKey:@"timeLabelScrollView"];
  objc_opt_class();
  v4 = [v3 _accessibilityViewAncestorIsKindOf:MEMORY[0x29C2E9900](@"QLVideoScrubberView")];
  v5 = __UIAccessibilityCastAsSafeCategory();

  if ([v3 safeBoolForKey:@"isDragging"] && (objc_msgSend(v5, "safeBoolForKey:", @"_axIsScrubbering") & 1) == 0)
  {
    v6 = *MEMORY[0x29EDC7EA8];
    v7 = [(QLMediaItemViewControllerAccessibility *)self safeValueForKey:@"_timeLabel"];
    accessibilityLabel = [v7 accessibilityLabel];
    UIAccessibilityPostNotification(v6, accessibilityLabel);
  }
}

@end