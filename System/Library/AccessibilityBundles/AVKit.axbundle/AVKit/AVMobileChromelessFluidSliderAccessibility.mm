@interface AVMobileChromelessFluidSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityAnnounceNewValue;
- (void)_accessibilityBumpValue:(BOOL)value;
- (void)_sliderFluidInteractionWillContinue:(id)continue withLocation:(CGPoint)location;
- (void)_sliderFluidInteractionWillEnd:(id)end;
@end

@implementation AVMobileChromelessFluidSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVMobileChromelessFluidSlider" isKindOfClass:@"UISlider"];
  [validationsCopy validateClass:@"AVMobileChromelessFluidSlider" hasInstanceMethod:@"_sliderFluidInteractionWillContinue:withLocation:" withFullSignature:{"v", "@", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"AVMobileChromelessTimelineView" hasInstanceMethod:@"leadingTimeText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVMobileChromelessTimelineView" hasInstanceMethod:@"trailingTimeText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVMobileGlassTimelineView" hasInstanceMethod:@"leadingTimeText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVMobileGlassTimelineView" hasInstanceMethod:@"trailingTimeText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVMobileChromelessFluidSlider" hasInstanceMethod:@"_sliderFluidInteractionWillEnd:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"AVMobileChromelessFluidSlider" hasInstanceMethod:@"_sliderFluidInteractionDidEnd:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"AVMobileChromelessFluidSlider" hasInstanceMethod:@"usesVolumeStyle" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AVMediaTimelineControl"];
  [validationsCopy validateClass:@"AVMediaTimelineControl" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  if (AXProcessIsPhotos())
  {
    [validationsCopy validateProtocol:@"AVMediaTimelineControlDelegate" hasRequiredInstanceMethod:@"mediaTimelineControl:didChangeValue:"];
    [validationsCopy validateProtocol:@"AVMediaTimelineControlDelegate" hasRequiredInstanceMethod:@"mediaTimelineControlWillBeginChanging:"];
    [validationsCopy validateProtocol:@"AVMediaTimelineControlDelegate" hasRequiredInstanceMethod:@"mediaTimelineControlDidEndChanging:"];
  }
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AVMobileChromelessFluidSliderAccessibility;
  return *MEMORY[0x29EDC7F60] | [(AVMobileChromelessFluidSliderAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  v3 = [(AVMobileChromelessFluidSliderAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2C6300](@"AVMobileChromelessTimelineView", a2)];
  if (!v3)
  {
    v3 = [(AVMobileChromelessFluidSliderAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2C6300](@"AVMobileGlassTimelineView")];
  }

  v4 = [v3 safeStringForKey:@"leadingTimeText"];
  v5 = [v3 safeStringForKey:@"trailingTimeText"];
  v6 = v5;
  if (!(v4 | v5))
  {
    v41 = 0;
    objc_opt_class();
    v12 = __UIAccessibilityCastAsClass();
    [v12 maximumValue];
    v14 = v13;
    [v12 value];
    v16 = MEMORY[0x29C2C6280](1, v15);
    v17 = MEMORY[0x29C2C6280](1, v14);
    v18 = MEMORY[0x29EDBA0F8];
    v19 = accessibilityLocalizedString(@"track.position.value");
    v11 = [v18 stringWithFormat:v19, v16, v17];

    goto LABEL_12;
  }

  if (!v4)
  {
    v11 = &stru_2A20DBC40;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_9:
    if ([v6 containsString:{@"−", v38, v39}])
    {
      v20 = [v6 componentsSeparatedByString:@"−"];
      lastObject = [v20 lastObject];
      v22 = AXLocalizeDurationTime();

      v23 = MEMORY[0x29EDBA0F8];
      v24 = accessibilityLocalizedString(@"media.time.remaining");
      v25 = [v23 localizedStringWithFormat:v24, v22];

      v38 = v25;
      v39 = @"__AXStringForVariablesSentinel";
      v26 = __UIAXStringForVariables();

      v11 = v26;
    }

    else
    {
      v27 = AXLocalizeDurationTime();
      v28 = MEMORY[0x29EDBA0F8];
      v29 = accessibilityLocalizedString(@"media.time.total");
      v30 = [v28 localizedStringWithFormat:v29, v27];

      v38 = v30;
      v39 = @"__AXStringForVariablesSentinel";
      v31 = __UIAXStringForVariables();

      v11 = v31;
    }

    goto LABEL_12;
  }

  v7 = AXLocalizeDurationTime();
  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityLocalizedString(@"media.time.elapsed");
  v10 = [v8 localizedStringWithFormat:v9, v7];

  v38 = v10;
  v39 = @"__AXStringForVariablesSentinel";
  v11 = __UIAXStringForVariables();

  if (v6)
  {
    goto LABEL_9;
  }

LABEL_12:
  whitespaceCharacterSet = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
  v33 = [(__CFString *)v11 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v34 = [v33 length];

  if (v34)
  {
    accessibilityValue = v11;
  }

  else
  {
    v40.receiver = self;
    v40.super_class = AVMobileChromelessFluidSliderAccessibility;
    accessibilityValue = [(AVMobileChromelessFluidSliderAccessibility *)&v40 accessibilityValue];
  }

  v36 = accessibilityValue;

  return v36;
}

- (void)_accessibilityBumpValue:(BOOL)value
{
  MEMORY[0x29C2C6300](@"UISlider", a2);
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    [v4 minimumValue];
    [v4 maximumValue];
    [v4 value];
    v5 = [(AVMobileChromelessFluidSliderAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_4 startWithSelf:0];
    v6 = [v5 safeValueForKey:@"delegate"];
    v10 = v4;
    v11 = v5;
    v7 = v5;
    v8 = v6;
    v9 = v4;
    AXPerformSafeBlock();
  }
}

uint64_t __70__AVMobileChromelessFluidSliderAccessibility__accessibilityBumpValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2C6300](@"AVMediaTimelineControl");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __70__AVMobileChromelessFluidSliderAccessibility__accessibilityBumpValue___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  *&v2 = v2;
  [*(a1 + 32) setValue:v2];
  if (!*(a1 + 40))
  {
    [*(a1 + 32) sendActionsForControlEvents:4096];
    v3 = *(a1 + 40);
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) mediaTimelineControlWillBeginChanging:*(a1 + 48)];
  }

  v4 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 64);
    *&v5 = v5;
    [*(a1 + 40) mediaTimelineControl:*(a1 + 56) didChangeValue:v5];
  }

  v6 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) mediaTimelineControlDidEndChanging:*(a1 + 48)];
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 32);

  return [v7 _sliderFluidInteractionDidEnd:v8];
}

- (void)_accessibilityAnnounceNewValue
{
  v2 = *MEMORY[0x29EDC7EA8];
  _accessibilityAXAttributedValue = [(AVMobileChromelessFluidSliderAccessibility *)self _accessibilityAXAttributedValue];
  UIAccessibilityPostNotification(v2, _accessibilityAXAttributedValue);
}

- (void)_sliderFluidInteractionWillContinue:(id)continue withLocation:(CGPoint)location
{
  v4.receiver = self;
  v4.super_class = AVMobileChromelessFluidSliderAccessibility;
  [(AVMobileChromelessFluidSliderAccessibility *)&v4 _sliderFluidInteractionWillContinue:continue withLocation:location.x, location.y];
  AXPerformSafeBlock();
}

- (void)_sliderFluidInteractionWillEnd:(id)end
{
  v3.receiver = self;
  v3.super_class = AVMobileChromelessFluidSliderAccessibility;
  [(AVMobileChromelessFluidSliderAccessibility *)&v3 _sliderFluidInteractionWillEnd:end];
  AXPerformSafeBlock();
}

@end