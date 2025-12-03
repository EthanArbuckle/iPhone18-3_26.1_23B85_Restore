@interface PUTiltWheelControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (CGAffineTransform)_transformForTiltAngle:(SEL)angle;
- (id)accessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation PUTiltWheelControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUTiltWheelControl" hasInstanceMethod:@"tiltAngle" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PUTiltWheelControl" hasInstanceMethod:@"maxTiltAngle" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PUTiltWheelControl" hasInstanceMethod:@"minTiltAngle" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PUTiltWheelControl" hasInstanceMethod:@"_setTiltAngleFromUserInteraction:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"PUTiltWheelControl" hasInstanceMethod:@"_transformForTiltAngle:" withFullSignature:{"{CGAffineTransform=dddddd}", "d", 0}];
}

- (id)accessibilityValue
{
  v3 = [(PUTiltWheelControlAccessibility *)self safeValueForKey:@"tiltAngle"];
  [v3 floatValue];
  [(PUTiltWheelControlAccessibility *)self _axRadiansToDegrees:v4];

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityPhotosEditUILocalizedString(@"tilt.degrees");
  v7 = AXFormatFloat();
  v8 = [v5 stringWithFormat:v6, v7];

  return v8;
}

- (void)accessibilityIncrement
{
  v3 = [(PUTiltWheelControlAccessibility *)self safeValueForKey:@"tiltAngle"];
  [v3 floatValue];

  v4 = [(PUTiltWheelControlAccessibility *)self safeValueForKey:@"maxTiltAngle"];
  [v4 floatValue];

  AXPerformSafeBlock();
}

uint64_t __57__PUTiltWheelControlAccessibility_accessibilityIncrement__block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 < *(result + 48))
  {
    return [*(result + 32) _setTiltAngleFromUserInteraction:v1 + 0.0174532925];
  }

  return result;
}

- (void)accessibilityDecrement
{
  v3 = [(PUTiltWheelControlAccessibility *)self safeValueForKey:@"tiltAngle"];
  [v3 floatValue];

  v4 = [(PUTiltWheelControlAccessibility *)self safeValueForKey:@"minTiltAngle"];
  [v4 floatValue];

  AXPerformSafeBlock();
}

uint64_t __57__PUTiltWheelControlAccessibility_accessibilityDecrement__block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 > *(result + 48))
  {
    return [*(result + 32) _setTiltAngleFromUserInteraction:v1 + -0.0174532925];
  }

  return result;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if ((scroll - 3) > 1)
  {
    v19.receiver = self;
    v19.super_class = PUTiltWheelControlAccessibility;
    return [(PUTiltWheelControlAccessibility *)&v19 accessibilityScroll:scroll];
  }

  else
  {
    v5 = [(PUTiltWheelControlAccessibility *)self safeValueForKey:@"tiltAngle"];
    [v5 floatValue];
    v7 = v6;

    [(PUTiltWheelControlAccessibility *)self _axRadiansToDegrees:v7];
    v9 = v8;
    if (scroll == 4)
    {
      v10 = [(PUTiltWheelControlAccessibility *)self safeValueForKey:@"maxTiltAngle"];
      [v10 floatValue];
      v12 = v11;

      [(PUTiltWheelControlAccessibility *)self _axRadiansToDegrees:v12];
      v28 = MEMORY[0x29EDCA5F8];
      v29 = 3221225472;
      v30 = __55__PUTiltWheelControlAccessibility_accessibilityScroll___block_invoke;
      v31 = &unk_29F2E55E8;
      v33 = v9;
      v34 = v13;
      v35 = v7;
      selfCopy = self;
    }

    else
    {
      v15 = [(PUTiltWheelControlAccessibility *)self safeValueForKey:@"minTiltAngle"];
      [v15 floatValue];
      v17 = v16;

      [(PUTiltWheelControlAccessibility *)self _axRadiansToDegrees:v17];
      v20 = MEMORY[0x29EDCA5F8];
      v21 = 3221225472;
      v22 = __55__PUTiltWheelControlAccessibility_accessibilityScroll___block_invoke_2;
      v23 = &unk_29F2E55E8;
      v25 = v9;
      v26 = v18;
      v27 = v7;
      selfCopy2 = self;
    }

    AXPerformSafeBlock();
    return 1;
  }
}

void __55__PUTiltWheelControlAccessibility_accessibilityScroll___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) < *(a1 + 48))
  {
    v2 = *(a1 + 56);
    [*(a1 + 32) _axDegreesToRadians:5.0];
    v4 = v2 + v3;
    [*(a1 + 32) _axRadiansToDegrees:*(a1 + 56)];
    v6 = v5 + 5.0;
    [*(a1 + 32) _setTiltAngleFromUserInteraction:v4];
    if (v6 <= *(a1 + 48))
    {
      v7 = MEMORY[0x29EDBA0F8];
      v8 = accessibilityPhotosEditUILocalizedString(@"tilt.degrees");
      v9 = AXFormatFloat();
      argument = [v7 stringWithFormat:v8, v9];

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
    }
  }
}

void __55__PUTiltWheelControlAccessibility_accessibilityScroll___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) > *(a1 + 48))
  {
    v2 = *(a1 + 56);
    [*(a1 + 32) _axDegreesToRadians:5.0];
    v4 = v2 - v3;
    [*(a1 + 32) _axRadiansToDegrees:*(a1 + 56)];
    v6 = v5 + -5.0;
    [*(a1 + 32) _setTiltAngleFromUserInteraction:v4];
    if (v6 >= *(a1 + 48))
    {
      v7 = MEMORY[0x29EDBA0F8];
      v8 = accessibilityPhotosEditUILocalizedString(@"tilt.degrees");
      v9 = AXFormatFloat();
      argument = [v7 stringWithFormat:v8, v9];

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
    }
  }
}

- (CGAffineTransform)_transformForTiltAngle:(SEL)angle
{
  [(PUTiltWheelControlAccessibility *)self _axRadiansToDegrees:?];
  v7 = v6;
  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityPhotosEditUILocalizedString(@"tilt.degrees");
  v10 = AXFormatFloat();
  v11 = [v8 stringWithFormat:v9, v10];

  v12 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v11];
  [v12 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
  v13 = v12;
  if ((-286331153 * v7 + 143165576) <= 0x11111110)
  {
    if (CFAbsoluteTimeGetCurrent() - *&_transformForTiltAngle__LastSend > 0.5)
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v13);
    }

    _transformForTiltAngle__LastSend = CFAbsoluteTimeGetCurrent();
  }

  v15.receiver = self;
  v15.super_class = PUTiltWheelControlAccessibility;
  [(CGAffineTransform *)&v15 _transformForTiltAngle:a4];

  return result;
}

@end