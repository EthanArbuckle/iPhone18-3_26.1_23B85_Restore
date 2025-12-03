@interface CUShutterButtonAccessibility
- (BOOL)accessibilityActivate;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CUShutterButtonAccessibility

- (id)accessibilityLabel
{
  if ([(CUShutterButtonAccessibility *)self isAccessibilityElement])
  {
    v3 = [(CUShutterButtonAccessibility *)self safeValueForKey:@"mode"];
    integerValue = [v3 integerValue];

    v5 = @"camera.video.stop.record.button.text";
    v6 = @"camera.video.record.button.text";
    if (integerValue == 8)
    {
      v6 = @"camera.timelapse.stop";
    }

    if (integerValue == 3)
    {
      v6 = @"camera.timelapse.start";
    }

    if ((integerValue & 0xFFFFFFFFFFFFFFFELL) != 6)
    {
      v5 = v6;
    }

    if (integerValue > 8 || ((1 << integerValue) & 0x1CE) == 0)
    {
      v8 = @"camera.photo.button.text";
    }

    else
    {
      v8 = v5;
    }

    v9 = accessibilityCameraKitLocalizedString(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)accessibilityIdentifier
{
  if (accessibilityIdentifier_CheckingAXElement)
  {
    return 0;
  }

  accessibilityIdentifier_CheckingAXElement = 1;
  isAccessibilityElement = [(CUShutterButtonAccessibility *)self isAccessibilityElement];
  accessibilityIdentifier_CheckingAXElement = 0;
  if (!isAccessibilityElement)
  {
    return 0;
  }

  v4 = [(CUShutterButtonAccessibility *)self safeValueForKey:@"mode"];
  integerValue = [v4 integerValue];

  if ((integerValue - 1) > 6)
  {
    return @"PhotoCapture";
  }

  else
  {
    return off_29F2AD590[integerValue - 1];
  }
}

- (BOOL)accessibilityActivate
{
  v4.receiver = self;
  v4.super_class = CUShutterButtonAccessibility;
  accessibilityActivate = [(CUShutterButtonAccessibility *)&v4 accessibilityActivate];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return accessibilityActivate;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CUShutterButtonAccessibility;
  return *MEMORY[0x29EDC7FC8] | [(CUShutterButtonAccessibility *)&v3 accessibilityTraits];
}

@end