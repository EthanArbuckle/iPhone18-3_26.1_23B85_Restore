@interface IMCustomSliderAccessibility
- (BOOL)_imaxSliderRepresentsBookPosition;
- (double)_accessibilityIncreaseAmount:(BOOL)a3;
- (id)_imaxDelegate;
- (id)_imaxDurationStringForDuration:(double)a3;
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
  v2 = [(IMCustomSliderAccessibility *)self _imaxTarget];
  v3 = [v2 delegate];

  return v3;
}

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = IMCustomSliderAccessibility;
  v3 = [(IMCustomSliderAccessibility *)&v6 accessibilityLabel];
  if ([(IMCustomSliderAccessibility *)self _imaxSliderRepresentsBookPosition])
  {
    v4 = [(IMCustomSliderAccessibility *)self bookPositionAccessibilityLabel];

    v3 = v4;
  }

  return v3;
}

- (id)accessibilityValue
{
  v6.receiver = self;
  v6.super_class = IMCustomSliderAccessibility;
  v3 = [(IMCustomSliderAccessibility *)&v6 accessibilityValue];
  if ([(IMCustomSliderAccessibility *)self _imaxSliderRepresentsBookPosition])
  {
    v4 = [(IMCustomSliderAccessibility *)self bookPositionAccessibilityValue];

    v3 = v4;
  }

  return v3;
}

- (double)_accessibilityIncreaseAmount:(BOOL)a3
{
  v3 = a3;
  v5 = [(IMCustomSliderAccessibility *)self _imaxTarget];
  [v5 minimumValue];
  v7 = v6;

  v8 = [(IMCustomSliderAccessibility *)self _imaxTarget];
  [v8 maximumValue];
  v10 = v9;

  v11 = [(IMCustomSliderAccessibility *)self _imaxTarget];
  [v11 value];
  v13 = v12;

  v14 = (v10 - v7) / 20.0;
  if (!v3)
  {
    v14 = -v14;
  }

  return (v14 + v13);
}

- (void)accessibilityIncrement
{
  v3 = [(IMCustomSliderAccessibility *)self _imaxTarget];
  v4 = [v3 isUserInteractionEnabled];

  if (v4)
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
  v3 = [(IMCustomSliderAccessibility *)self _imaxTarget];
  v4 = [v3 isUserInteractionEnabled];

  if (v4)
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
  v2 = [(IMCustomSliderAccessibility *)&v4 accessibilityValue];

  return v2;
}

- (id)_imaxDurationStringForDuration:(double)a3
{
  v5 = objc_opt_new();
  [v5 setZeroFormattingBehavior:1];
  [v5 setUnitsStyle:4];
  [v5 setAllowedUnits:224];
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v6 = [v5 stringFromTimeInterval:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_imaxSliderRepresentsBookPosition
{
  v3 = [(IMCustomSliderAccessibility *)self _imaxDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(IMCustomSliderAccessibility *)self _imaxTarget];
    v5 = [v3 sliderIsProgressSlider:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end