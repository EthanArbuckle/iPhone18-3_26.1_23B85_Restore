@interface _CAMExpandingControlButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _CAMExpandingControlButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_CAMExpandingControlButton" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_CAMExpandingControlButton" hasInstanceMethod:@"isSlashed" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CAMExpandingControl"];
  [v3 validateClass:@"CAMExpandingControl" hasInstanceMethod:@"_titleView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMExpandingControl" hasInstanceMethod:@"_menuButtons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMExpandingControl" hasInstanceMethod:@"menu" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMExpandingControl" hasInstanceMethod:@"_selectedMenuItem" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(_CAMExpandingControlButtonAccessibility *)self safeStringForKey:@"titleText"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(_CAMExpandingControlButtonAccessibility *)self _axCameraExpandingControl];
    v5 = [v6 accessibilityLabel];
  }

  return v5;
}

- (id)accessibilityValue
{
  v3 = [(_CAMExpandingControlButtonAccessibility *)self _axCameraExpandingControl];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = [v3 safeValueForKey:@"_titleView"];
  v6 = [(_CAMExpandingControlButtonAccessibility *)self safeStringForKey:@"titleText"];
  v7 = v6;
  if (v5 != self)
  {

LABEL_4:
    v12.receiver = self;
    v12.super_class = _CAMExpandingControlButtonAccessibility;
    v8 = [(_CAMExpandingControlButtonAccessibility *)&v12 accessibilityValue];
    goto LABEL_12;
  }

  if (v6)
  {
    if (([(_CAMExpandingControlButtonAccessibility *)self safeBoolForKey:@"isSlashed"]& 1) != 0)
    {
      v9 = @"EXPANDING_CONTROL_OFF";
    }

    else
    {
      v9 = @"EXPANDING_CONTROL_ON";
    }

    v10 = accessibilityCameraUILocalizedString(v9);
  }

  else
  {
    v10 = [v4 accessibilityValue];
  }

  v8 = v10;

LABEL_12:

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v13.receiver = self;
  v13.super_class = _CAMExpandingControlButtonAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(_CAMExpandingControlButtonAccessibility *)&v13 accessibilityTraits];
  v4 = [(_CAMExpandingControlButtonAccessibility *)self _axCameraExpandingControl];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 safeArrayForKey:@"_menuButtons"];
    v7 = [v6 indexOfObject:self];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      v9 = [v5 safeArrayForKey:@"menu"];
      v10 = [v9 objectAtIndex:v8];
      v11 = [v5 safeValueForKey:@"_selectedMenuItem"];
      if (v10 == v11)
      {
        v3 |= *MEMORY[0x29EDC7FC0];
      }

      else
      {
        v3 &= ~*MEMORY[0x29EDC7FC0];
      }
    }
  }

  return v3;
}

@end