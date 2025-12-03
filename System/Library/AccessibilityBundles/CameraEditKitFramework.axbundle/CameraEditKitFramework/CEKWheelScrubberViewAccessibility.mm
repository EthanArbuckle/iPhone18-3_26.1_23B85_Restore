@interface CEKWheelScrubberViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsFilterChooser;
- (BOOL)accessibilityActivate;
- (BOOL)isPhotoStyleScrubber;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (id)_axPhotoEffect;
- (id)_axPhotoFilterName;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axFilterAnnouncement;
@end

@implementation CEKWheelScrubberViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CEKWheelScrubberView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKWheelScrubberView" hasInstanceMethod:@"selectedIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CEKWheelScrubberView" hasInstanceMethod:@"markedIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CEKWheelScrubberView" hasInstanceMethod:@"switchToNextItem" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CEKWheelScrubberView" hasInstanceMethod:@"switchToPreviousItem" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CEKSlider" hasInstanceMethod:@"value" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CEKWheelScrubberView" isKindOfClass:@"UIView"];
}

- (BOOL)_axIsFilterChooser
{
  v2 = [(CEKWheelScrubberViewAccessibility *)self safeValueForKey:@"delegate"];
  MEMORY[0x29C2CE830](@"PUFilterToolController");
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    MEMORY[0x29C2CE830](@"CAMViewfinderViewController");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)_axPhotoEffect
{
  v3 = [(CEKWheelScrubberViewAccessibility *)self safeValueForKey:@"delegate"];
  v4 = [(CEKWheelScrubberViewAccessibility *)self safeIntegerForKey:@"selectedIndex"];
  MEMORY[0x29C2CE830](@"PUFilterToolController");
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = [v3 _effectForIndex:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_axFilterAnnouncement
{
  _axPhotoEffect = [(CEKWheelScrubberViewAccessibility *)self _axPhotoEffect];

  if (_axPhotoEffect)
  {
    v3 = MEMORY[0x29EDBD7E8];
    v4 = accessibilityCameraEditKitD2xLocalizedString(@"filter.intensity.hint");
    argument = [v3 axAttributedStringWithString:v4];

    [argument setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
  }
}

- (BOOL)isPhotoStyleScrubber
{
  v2 = [(CEKWheelScrubberViewAccessibility *)self safeValueForKey:@"delegate"];
  MEMORY[0x29C2CE830](@"PhotosUIPrivate.PUPhotoStyleToolController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  v3 = [(CEKWheelScrubberViewAccessibility *)self safeValueForKey:@"delegate"];
  MEMORY[0x29C2CE830](@"PUFilterToolController");
  if (objc_opt_isKindOfClass())
  {
    accessibilityLabel = accessibilityCameraEditKitD2xLocalizedString(@"filter.chooser");
  }

  else if ([(CEKWheelScrubberViewAccessibility *)self isPhotoStyleScrubber])
  {
    accessibilityLabel = accessibilityCameraEditKitV2LocalizedString(@"styles.chooser");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CEKWheelScrubberViewAccessibility;
    accessibilityLabel = [(CEKWheelScrubberViewAccessibility *)&v7 accessibilityLabel];
  }

  v5 = accessibilityLabel;

  return v5;
}

- (BOOL)accessibilityActivate
{
  if ([(CEKWheelScrubberViewAccessibility *)self isPhotoStyleScrubber])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CEKWheelScrubberViewAccessibility;
  return [(CEKWheelScrubberViewAccessibility *)&v4 accessibilityActivate];
}

- (CGPoint)accessibilityActivationPoint
{
  isPhotoStyleScrubber = [(CEKWheelScrubberViewAccessibility *)self isPhotoStyleScrubber];
  v4 = -1.0;
  v5 = -1.0;
  if (!isPhotoStyleScrubber)
  {
    v6.receiver = self;
    v6.super_class = CEKWheelScrubberViewAccessibility;
    [(CEKWheelScrubberViewAccessibility *)&v6 accessibilityActivationPoint:-1.0];
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (id)accessibilityValue
{
  v3 = [(CEKWheelScrubberViewAccessibility *)self safeValueForKey:@"delegate"];
  v4 = [(CEKWheelScrubberViewAccessibility *)self safeIntegerForKey:@"selectedIndex"];
  MEMORY[0x29C2CE830](@"CAMViewfinderViewController");
  if (objc_opt_isKindOfClass())
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 _filterTypeForItemIndex:v4];
      if (v5 > 0x10)
      {
        v6 = 0;
      }

      else
      {
        v6 = off_29F2AB798[v5];
      }
    }

    else
    {
      v6 = @"none";
    }

    _axPhotoFilterName = [MEMORY[0x29EDBA0F8] stringWithFormat:@"filter.%@", v6];
    accessibilityValue = accessibilityCameraEditKitD2xLocalizedString(_axPhotoFilterName);
    goto LABEL_17;
  }

  MEMORY[0x29C2CE830](@"PUFilterToolController");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (![(CEKWheelScrubberViewAccessibility *)self isPhotoStyleScrubber])
    {
      v14.receiver = self;
      v14.super_class = CEKWheelScrubberViewAccessibility;
      accessibilityValue = [(CEKWheelScrubberViewAccessibility *)&v14 accessibilityValue];
      goto LABEL_18;
    }

    _axPhotoFilterName = [v3 safeSwiftValueForKey:@"styleLabel"];
    accessibilityLabel = [_axPhotoFilterName accessibilityLabel];
    v11 = __UIAXStringForVariables();
    goto LABEL_15;
  }

  _axPhotoFilterName = [(CEKWheelScrubberViewAccessibility *)self _axPhotoFilterName];
  accessibilityLabel = [(CEKWheelScrubberViewAccessibility *)self _axPhotoEffect];
  if (!accessibilityLabel)
  {
    v11 = _axPhotoFilterName;
LABEL_15:
    accessibilityValue = v11;
    goto LABEL_16;
  }

  v9 = [v3 safeValueForKey:@"_slider"];
  [v9 safeCGFloatForKey:@"value"];
  v13 = AXFormatFloatWithPercentage();
  accessibilityValue = __UIAXStringForVariables();

LABEL_16:
LABEL_17:

LABEL_18:

  return accessibilityValue;
}

- (id)_axPhotoFilterName
{
  _axPhotoEffect = [(CEKWheelScrubberViewAccessibility *)self _axPhotoEffect];
  v3 = _axPhotoEffect;
  if (_axPhotoEffect)
  {
    cIFilterName = [_axPhotoEffect CIFilterName];
    if ([cIFilterName isEqualToString:@"CIPhotoEffect3DVivid"])
    {
      v5 = @"vivid";
    }

    else if ([cIFilterName isEqualToString:@"CIPhotoEffect3DVividWarm"])
    {
      v5 = @"vivid.warm";
    }

    else if ([cIFilterName isEqualToString:@"CIPhotoEffect3DVividCool"])
    {
      v5 = @"vivid.cool";
    }

    else if ([cIFilterName isEqualToString:@"CIPhotoEffect3DDramatic"])
    {
      v5 = @"dramatic";
    }

    else if ([cIFilterName isEqualToString:@"CIPhotoEffect3DDramaticWarm"])
    {
      v5 = @"dramatic.warm";
    }

    else if ([cIFilterName isEqualToString:@"CIPhotoEffect3DDramaticCool"])
    {
      v5 = @"dramatic.cool";
    }

    else if ([cIFilterName isEqualToString:@"CIPhotoEffectMono"])
    {
      v5 = @"mono";
    }

    else if ([cIFilterName isEqualToString:@"CIPhotoEffect3DSilverplate"])
    {
      v5 = @"silverplate";
    }

    else if ([cIFilterName isEqualToString:@"CIPhotoEffect3DNoir"])
    {
      v5 = @"noir";
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = @"none";
  }

  v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"filter.%@", v5];
  v7 = accessibilityCameraEditKitD2xLocalizedString(v6);

  return v7;
}

- (id)accessibilityHint
{
  v8.receiver = self;
  v8.super_class = CEKWheelScrubberViewAccessibility;
  accessibilityHint = [(CEKWheelScrubberViewAccessibility *)&v8 accessibilityHint];
  if ([(CEKWheelScrubberViewAccessibility *)self _axIsFilterChooser])
  {
    v4 = accessibilityCameraEditKitD2xLocalizedString(@"filter.adjustable.instructions");

    _axPhotoEffect = [(CEKWheelScrubberViewAccessibility *)self _axPhotoEffect];

    if (_axPhotoEffect)
    {
      v7 = accessibilityCameraEditKitD2xLocalizedString(@"filter.intensity.hint");
      accessibilityHint = __UIAXStringForVariables();
    }

    else
    {
      accessibilityHint = v4;
    }
  }

  return accessibilityHint;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = CEKWheelScrubberViewAccessibility;
  accessibilityTraits = [(CEKWheelScrubberViewAccessibility *)&v8 accessibilityTraits];
  v4 = [(CEKWheelScrubberViewAccessibility *)self safeIntegerForKey:@"selectedIndex"];
  v5 = [(CEKWheelScrubberViewAccessibility *)self safeIntegerForKey:@"markedIndex"];
  v6 = accessibilityTraits & ~*MEMORY[0x29EDC7FC0];
  if (v4 == v5)
  {
    v6 = *MEMORY[0x29EDC7FC0] | accessibilityTraits;
  }

  return *MEMORY[0x29EDC7F60] | v6;
}

uint64_t __59__CEKWheelScrubberViewAccessibility_accessibilityIncrement__block_invoke(uint64_t a1)
{
  [*(a1 + 32) switchToNextItem];
  v2 = *(a1 + 32);

  return [v2 _axFilterAnnouncement];
}

uint64_t __59__CEKWheelScrubberViewAccessibility_accessibilityDecrement__block_invoke(uint64_t a1)
{
  [*(a1 + 32) switchToPreviousItem];
  v2 = *(a1 + 32);

  return [v2 _axFilterAnnouncement];
}

- (CGRect)accessibilityFrame
{
  v25.receiver = self;
  v25.super_class = CEKWheelScrubberViewAccessibility;
  [(CEKWheelScrubberViewAccessibility *)&v25 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v12 = [(CEKWheelScrubberViewAccessibility *)self safeUIViewForKey:@"superview"];
  [v11 convertRect:v12 toView:{v4, v6, v8, v10}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)accessibilityPath
{
  [(CEKWheelScrubberViewAccessibility *)self accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v12 = [(CEKWheelScrubberViewAccessibility *)self safeUIViewForKey:@"superview"];
  [v11 convertRect:v12 fromView:{v4, v6, v8, v10}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [MEMORY[0x29EDC7948] bezierPathWithRect:{v14, v16, v18, v20}];

  return v21;
}

@end