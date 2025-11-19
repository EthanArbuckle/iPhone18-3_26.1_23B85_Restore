@interface PSSpecifierSliderConfigurationCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsLockingSegmentedSlider;
- (BOOL)_axIsSegmented;
- (BOOL)_axLocksToSegment;
- (CGPoint)accessibilityActivationPoint;
- (double)_axSliderIncreaseAmount:(BOOL)a3;
- (float)_axMaximumValue;
- (float)_axMinimumValue;
- (id)_accessibilityAbsoluteValue;
- (id)_axSpecifier;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)_axOffsetBetweenTicksForNumberOfTicks:(unint64_t)a3;
- (unint64_t)_axNumberOfTicks;
- (unint64_t)_axSegmentCount;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation PSSpecifierSliderConfigurationCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PSSpecifierSliderConfigurationCell" isKindOfClass:@"PSControlTableCell"];
  [v3 validateClass:@"PSSpecifierSliderConfigurationCell" hasInstanceMethod:@"slider" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axSpecifier];
  v4 = [v3 name];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PSSpecifierSliderConfigurationCellAccessibility;
    v5 = [(PSSpecifierSliderConfigurationCellAccessibility *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

- (id)accessibilityHint
{
  v2 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeValueForKey:@"slider"];
  v3 = [v2 accessibilityHint];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeValueForKey:@"slider"];
  v4 = [v3 accessibilityTraits];

  v5 = *MEMORY[0x29EDC7F70];
  if ((*MEMORY[0x29EDC7F70] & v4) == 0)
  {
    v5 = 0;
  }

  v6 = v5 ^ v4;
  v7 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeBoolForKey:@"isUserInteractionEnabled"];
  v8 = *MEMORY[0x29EDC7FA8];
  if (v7)
  {
    v8 = 0;
  }

  return v6 | v8;
}

- (id)accessibilityValue
{
  v3 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeValueForKey:@"slider"];
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = [v3 accessibilityValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PSSpecifierSliderConfigurationCellAccessibility;
    v4 = [(PSSpecifierSliderConfigurationCellAccessibility *)&v7 accessibilityValue];
  }

  v5 = v4;

  return v5;
}

- (id)_accessibilityAbsoluteValue
{
  v2 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeValueForKey:@"slider"];
  v3 = [v2 _accessibilityAbsoluteValue];

  return v3;
}

- (void)accessibilityIncrement
{
  if ([(PSSpecifierSliderConfigurationCellAccessibility *)self safeBoolForKey:@"isUserInteractionEnabled"])
  {
    if ([(PSSpecifierSliderConfigurationCellAccessibility *)self _axIsLockingSegmentedSlider])
    {

      [(PSSpecifierSliderConfigurationCellAccessibility *)self _axBumpSliderValue:1];
    }

    else
    {
      v3 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeValueForKey:@"slider"];
      [v3 accessibilityIncrement];
    }
  }
}

- (void)accessibilityDecrement
{
  if ([(PSSpecifierSliderConfigurationCellAccessibility *)self safeBoolForKey:@"isUserInteractionEnabled"])
  {
    if ([(PSSpecifierSliderConfigurationCellAccessibility *)self _axIsLockingSegmentedSlider])
    {

      [(PSSpecifierSliderConfigurationCellAccessibility *)self _axBumpSliderValue:0];
    }

    else
    {
      v3 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeValueForKey:@"slider"];
      [v3 accessibilityDecrement];
    }
  }
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeValueForKey:@"slider"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)_axSpecifier
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 specifier];

  return v3;
}

- (BOOL)_axIsLockingSegmentedSlider
{
  v3 = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axIsSegmented];
  if (v3)
  {

    LOBYTE(v3) = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axLocksToSegment];
  }

  return v3;
}

- (double)_axSliderIncreaseAmount:(BOOL)a3
{
  v3 = a3;
  v5 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeValueForKey:@"slider"];
  [v5 safeFloatForKey:@"value"];
  v7 = v6;

  v8 = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axNumberOfTicks];
  [(PSSpecifierSliderConfigurationCellAccessibility *)self _axMinimumValue];
  v10 = v9;
  v11 = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axOffsetBetweenTicksForNumberOfTicks:v8];
  v12 = v11;
  if (v11 <= 0)
  {
    _AXAssert();
    v16 = -0.1;
    if (v3)
    {
      v16 = 0.1;
    }

    return v16 + v7;
  }

  else
  {
    v13 = llroundf((v7 - v10) / v12);
    if (v3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = v13 - 1;
    }

    if ((v8 - 1) < v14)
    {
      v14 = v8 - 1;
    }

    return (v10 + (v12 * (v14 & ~(v14 >> 63))));
  }
}

- (float)_axMinimumValue
{
  v2 = [(PSSpecifierSliderConfigurationCellAccessibility *)self specifier];
  v3 = [v2 propertyForKey:*MEMORY[0x29EDC62C0]];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (float)_axMaximumValue
{
  v2 = [(PSSpecifierSliderConfigurationCellAccessibility *)self specifier];
  v3 = [v2 propertyForKey:*MEMORY[0x29EDC62B8]];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (BOOL)_axIsSegmented
{
  v2 = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axSpecifier];
  v3 = [v2 propertyForKey:*MEMORY[0x29EDC6338]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)_axLocksToSegment
{
  v2 = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axSpecifier];
  v3 = [v2 propertyForKey:*MEMORY[0x29EDC6340]];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (unint64_t)_axSegmentCount
{
  v2 = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axSpecifier];
  v3 = [v2 propertyForKey:*MEMORY[0x29EDC6348]];
  v4 = [v3 integerValue];

  return v4;
}

- (unint64_t)_axNumberOfTicks
{
  v3 = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axSegmentCount];
  if (v3)
  {
    return (v3 + 1);
  }

  else
  {
    [(PSSpecifierSliderConfigurationCellAccessibility *)self _axMaximumValue];
    v6 = v5;
    [(PSSpecifierSliderConfigurationCellAccessibility *)self _axMinimumValue];
    return ((v6 - v7) + 1.0);
  }
}

- (int64_t)_axOffsetBetweenTicksForNumberOfTicks:(unint64_t)a3
{
  v3 = a3;
  if (a3 <= 1)
  {
    v9 = a3;
    _AXAssert();
    v3 = 2;
  }

  [(PSSpecifierSliderConfigurationCellAccessibility *)self _axMaximumValue];
  v6 = v5;
  [(PSSpecifierSliderConfigurationCellAccessibility *)self _axMinimumValue];
  return ((v6 - v7) / (v3 - 1));
}

@end