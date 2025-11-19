@interface CMKShutterButtonAccessibility
- (BOOL)accessibilityActivate;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
@end

@implementation CMKShutterButtonAccessibility

- (id)accessibilityLabel
{
  if ([(CMKShutterButtonAccessibility *)self isAccessibilityElement])
  {
    v3 = [(CMKShutterButtonAccessibility *)self safeValueForKey:@"buttonMode"];
    v4 = [v3 integerValue];

    v5 = @"camera.video.stop.record.button.text";
    v6 = @"camera.video.record.button.text";
    if (v4 == 7)
    {
      v6 = @"camera.timelapse.stop";
    }

    if (v4 == 3)
    {
      v6 = @"camera.timelapse.start";
    }

    if (v4 - 5 >= 2)
    {
      v5 = v6;
    }

    if (v4 > 7 || ((1 << v4) & 0xEE) == 0)
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
  v3 = [(CMKShutterButtonAccessibility *)self isAccessibilityElement];
  accessibilityIdentifier_CheckingAXElement = 0;
  if (!v3)
  {
    return 0;
  }

  v4 = [(CMKShutterButtonAccessibility *)self safeValueForKey:@"buttonMode"];
  v5 = [v4 integerValue];

  v6 = @"PhotoCapture";
  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 2)
  {
    v6 = @"SlomoCapture";
  }

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return @"VideoCapture";
  }

  else
  {
    return v6;
  }
}

- (BOOL)accessibilityActivate
{
  v4.receiver = self;
  v4.super_class = CMKShutterButtonAccessibility;
  v2 = [(CMKShutterButtonAccessibility *)&v4 accessibilityActivate];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return v2;
}

@end