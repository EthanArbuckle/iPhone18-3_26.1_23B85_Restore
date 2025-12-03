@interface IMCustomSliderAccessibility
- (BOOL)_imaxSliderRepresentsBookPosition;
- (double)_accessibilityIncreaseAmount:(BOOL)amount;
- (id)_imaxDelegate;
- (id)_imaxDurationStringForDuration:(double)duration;
- (id)_imaxTarget;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)bookPositionAccessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation IMCustomSliderAccessibility

- (id)_imaxTarget
{
  v6 = 0;
  v3 = objc_opt_class();
  v4 = __IMAccessibilityCastAsClass(v3, self, 1, &v6);
  if (v6 == 1)
  {
    abort();
  }

  return v4;
}

- (id)_imaxDelegate
{
  _imaxTarget = [(IMCustomSliderAccessibility *)self _imaxTarget];
  delegate = [_imaxTarget delegate];

  return delegate;
}

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = IMCustomSliderAccessibility;
  accessibilityLabel = [(IMCustomSliderAccessibility *)&v6 accessibilityLabel];
  if ([(IMCustomSliderAccessibility *)self _imaxSliderRepresentsBookPosition])
  {
    bookPositionAccessibilityLabel = [(IMCustomSliderAccessibility *)self bookPositionAccessibilityLabel];

    accessibilityLabel = bookPositionAccessibilityLabel;
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v6.receiver = self;
  v6.super_class = IMCustomSliderAccessibility;
  accessibilityValue = [(IMCustomSliderAccessibility *)&v6 accessibilityValue];
  if ([(IMCustomSliderAccessibility *)self _imaxSliderRepresentsBookPosition])
  {
    bookPositionAccessibilityValue = [(IMCustomSliderAccessibility *)self bookPositionAccessibilityValue];

    accessibilityValue = bookPositionAccessibilityValue;
  }

  return accessibilityValue;
}

- (double)_accessibilityIncreaseAmount:(BOOL)amount
{
  amountCopy = amount;
  _imaxTarget = [(IMCustomSliderAccessibility *)self _imaxTarget];
  [_imaxTarget minimumValue];
  v7 = v6;

  _imaxTarget2 = [(IMCustomSliderAccessibility *)self _imaxTarget];
  [_imaxTarget2 maximumValue];
  v10 = v9;

  _imaxTarget3 = [(IMCustomSliderAccessibility *)self _imaxTarget];
  [_imaxTarget3 value];
  v13 = v12;

  v14 = (v10 - v7) / 20.0;
  if (!amountCopy)
  {
    v14 = -v14;
  }

  return (v14 + v13);
}

- (void)accessibilityIncrement
{
  _imaxTarget = [(IMCustomSliderAccessibility *)self _imaxTarget];
  isUserInteractionEnabled = [_imaxTarget isUserInteractionEnabled];

  if (isUserInteractionEnabled)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_75414;
    v5[3] = &unk_2C7D40;
    v5[4] = self;
    if (__IMAccessibilityPerformSafeBlock(v5))
    {
      abort();
    }
  }
}

- (void)accessibilityDecrement
{
  _imaxTarget = [(IMCustomSliderAccessibility *)self _imaxTarget];
  isUserInteractionEnabled = [_imaxTarget isUserInteractionEnabled];

  if (isUserInteractionEnabled)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_754C4;
    v5[3] = &unk_2C7D40;
    v5[4] = self;
    if (__IMAccessibilityPerformSafeBlock(v5))
    {
      abort();
    }
  }
}

- (id)bookPositionAccessibilityValue
{
  v4.receiver = self;
  v4.super_class = IMCustomSliderAccessibility;
  accessibilityValue = [(IMCustomSliderAccessibility *)&v4 accessibilityValue];

  return accessibilityValue;
}

- (id)_imaxDurationStringForDuration:(double)duration
{
  v5 = objc_opt_new();
  [v5 setZeroFormattingBehavior:1];
  [v5 setUnitsStyle:4];
  [v5 setAllowedUnits:224];
  if ((*&duration & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v6 = [v5 stringFromTimeInterval:duration];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_imaxSliderRepresentsBookPosition
{
  _imaxDelegate = [(IMCustomSliderAccessibility *)self _imaxDelegate];
  if (objc_opt_respondsToSelector())
  {
    _imaxTarget = [(IMCustomSliderAccessibility *)self _imaxTarget];
    v5 = [_imaxDelegate sliderIsProgressSlider:_imaxTarget];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end