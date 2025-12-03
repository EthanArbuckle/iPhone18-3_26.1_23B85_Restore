@interface PSSpecifierSliderConfigurationCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsLockingSegmentedSlider;
- (BOOL)_axIsSegmented;
- (BOOL)_axLocksToSegment;
- (CGPoint)accessibilityActivationPoint;
- (double)_axSliderIncreaseAmount:(BOOL)amount;
- (float)_axMaximumValue;
- (float)_axMinimumValue;
- (id)_accessibilityAbsoluteValue;
- (id)_axSpecifier;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)_axOffsetBetweenTicksForNumberOfTicks:(unint64_t)ticks;
- (unint64_t)_axNumberOfTicks;
- (unint64_t)_axSegmentCount;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation PSSpecifierSliderConfigurationCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PSSpecifierSliderConfigurationCell" isKindOfClass:@"PSControlTableCell"];
  [validationsCopy validateClass:@"PSSpecifierSliderConfigurationCell" hasInstanceMethod:@"slider" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _axSpecifier = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axSpecifier];
  name = [_axSpecifier name];

  if ([name length])
  {
    accessibilityLabel = name;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PSSpecifierSliderConfigurationCellAccessibility;
    accessibilityLabel = [(PSSpecifierSliderConfigurationCellAccessibility *)&v8 accessibilityLabel];
  }

  v6 = accessibilityLabel;

  return v6;
}

- (id)accessibilityHint
{
  v2 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeValueForKey:@"slider"];
  accessibilityHint = [v2 accessibilityHint];

  return accessibilityHint;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeValueForKey:@"slider"];
  accessibilityTraits = [v3 accessibilityTraits];

  v5 = *MEMORY[0x29EDC7F70];
  if ((*MEMORY[0x29EDC7F70] & accessibilityTraits) == 0)
  {
    v5 = 0;
  }

  v6 = v5 ^ accessibilityTraits;
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
    accessibilityValue = [v3 accessibilityValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PSSpecifierSliderConfigurationCellAccessibility;
    accessibilityValue = [(PSSpecifierSliderConfigurationCellAccessibility *)&v7 accessibilityValue];
  }

  v5 = accessibilityValue;

  return v5;
}

- (id)_accessibilityAbsoluteValue
{
  v2 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeValueForKey:@"slider"];
  _accessibilityAbsoluteValue = [v2 _accessibilityAbsoluteValue];

  return _accessibilityAbsoluteValue;
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
  specifier = [v2 specifier];

  return specifier;
}

- (BOOL)_axIsLockingSegmentedSlider
{
  _axIsSegmented = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axIsSegmented];
  if (_axIsSegmented)
  {

    LOBYTE(_axIsSegmented) = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axLocksToSegment];
  }

  return _axIsSegmented;
}

- (double)_axSliderIncreaseAmount:(BOOL)amount
{
  amountCopy = amount;
  v5 = [(PSSpecifierSliderConfigurationCellAccessibility *)self safeValueForKey:@"slider"];
  [v5 safeFloatForKey:@"value"];
  v7 = v6;

  _axNumberOfTicks = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axNumberOfTicks];
  [(PSSpecifierSliderConfigurationCellAccessibility *)self _axMinimumValue];
  v10 = v9;
  v11 = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axOffsetBetweenTicksForNumberOfTicks:_axNumberOfTicks];
  v12 = v11;
  if (v11 <= 0)
  {
    _AXAssert();
    v16 = -0.1;
    if (amountCopy)
    {
      v16 = 0.1;
    }

    return v16 + v7;
  }

  else
  {
    v13 = llroundf((v7 - v10) / v12);
    if (amountCopy)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = v13 - 1;
    }

    if ((_axNumberOfTicks - 1) < v14)
    {
      v14 = _axNumberOfTicks - 1;
    }

    return (v10 + (v12 * (v14 & ~(v14 >> 63))));
  }
}

- (float)_axMinimumValue
{
  specifier = [(PSSpecifierSliderConfigurationCellAccessibility *)self specifier];
  v3 = [specifier propertyForKey:*MEMORY[0x29EDC62C0]];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (float)_axMaximumValue
{
  specifier = [(PSSpecifierSliderConfigurationCellAccessibility *)self specifier];
  v3 = [specifier propertyForKey:*MEMORY[0x29EDC62B8]];
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
  _axSpecifier = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axSpecifier];
  v3 = [_axSpecifier propertyForKey:*MEMORY[0x29EDC6338]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)_axLocksToSegment
{
  _axSpecifier = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axSpecifier];
  v3 = [_axSpecifier propertyForKey:*MEMORY[0x29EDC6340]];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (unint64_t)_axSegmentCount
{
  _axSpecifier = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axSpecifier];
  v3 = [_axSpecifier propertyForKey:*MEMORY[0x29EDC6348]];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (unint64_t)_axNumberOfTicks
{
  _axSegmentCount = [(PSSpecifierSliderConfigurationCellAccessibility *)self _axSegmentCount];
  if (_axSegmentCount)
  {
    return (_axSegmentCount + 1);
  }

  else
  {
    [(PSSpecifierSliderConfigurationCellAccessibility *)self _axMaximumValue];
    v6 = v5;
    [(PSSpecifierSliderConfigurationCellAccessibility *)self _axMinimumValue];
    return ((v6 - v7) + 1.0);
  }
}

- (int64_t)_axOffsetBetweenTicksForNumberOfTicks:(unint64_t)ticks
{
  ticksCopy = ticks;
  if (ticks <= 1)
  {
    ticksCopy2 = ticks;
    _AXAssert();
    ticksCopy = 2;
  }

  [(PSSpecifierSliderConfigurationCellAccessibility *)self _axMaximumValue];
  v6 = v5;
  [(PSSpecifierSliderConfigurationCellAccessibility *)self _axMinimumValue];
  return ((v6 - v7) / (ticksCopy - 1));
}

@end