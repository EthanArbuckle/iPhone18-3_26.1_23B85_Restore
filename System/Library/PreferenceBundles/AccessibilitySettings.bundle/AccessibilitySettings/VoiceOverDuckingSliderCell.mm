@interface VoiceOverDuckingSliderCell
- (double)_currentDuckingValue;
- (id)accessibilityValue;
- (void)_setCurrentDuckingValue:(double)a3;
- (void)_updateRightLabelWithValue:(double)a3;
- (void)accessibilityIncrementOrDecrement:(BOOL)a3;
- (void)handleSliderBeingDragged:(id)a3;
- (void)handleSliderDidFinishDrag:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation VoiceOverDuckingSliderCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = VoiceOverDuckingSliderCell;
  [(VoiceOverDuckingSliderCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(VoiceOverDuckingSliderCell *)self initialValue];
  [(VoiceOverDuckingSliderCell *)self _updateRightLabelWithValue:?];
}

- (void)_updateRightLabelWithValue:(double)a3
{
  v5 = AXFormatFloatWithPercentage();
  [(VoiceOverDuckingSliderCell *)self setLabelText:v5];

  v6 = [(VoiceOverDuckingSliderCell *)self slider];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(VoiceOverDuckingSliderCell *)self slider];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __57__VoiceOverDuckingSliderCell__updateRightLabelWithValue___block_invoke;
    v9[3] = &__block_descriptor_40_e15___NSString_8__0l;
    *&v9[4] = a3;
    [v8 _setAccessibilityValueBlock:v9];
  }
}

- (id)accessibilityValue
{
  [(VoiceOverDuckingSliderCell *)self _currentDuckingValue];

  return AXFormatFloatWithPercentage();
}

- (double)_currentDuckingValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 voiceOverMediaDuckingAmount];
  v4 = v3;

  return v4;
}

- (void)_setCurrentDuckingValue:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverMediaDuckingAmount:a3];
}

- (void)handleSliderBeingDragged:(id)a3
{
  v4 = a3;
  [v4 value];
  [v4 setValue:0 animated:?];
  [v4 value];
  v6 = v5;

  [(VoiceOverDuckingSliderCell *)self _updateRightLabelWithValue:v6];
}

- (void)handleSliderDidFinishDrag:(id)a3
{
  v8 = a3;
  [v8 value];
  v5 = v4;
  [(VoiceOverDuckingSliderCell *)self _currentDuckingValue];
  if (vabdd_f64(v5, v6) >= 0.001)
  {
    [v8 value];
    [(VoiceOverDuckingSliderCell *)self _setCurrentDuckingValue:v7];
  }
}

- (void)accessibilityIncrementOrDecrement:(BOOL)a3
{
  v3 = a3;
  v5 = [(VoiceOverDuckingSliderCell *)self slider];
  [v5 value];
  v7 = v6;

  v8 = -0.05;
  if (v3)
  {
    v8 = 0.05;
  }

  v9 = (v7 + v8) * 100.0;
  if (v9 % 5 >= 3)
  {
    v10 = 5;
  }

  else
  {
    v10 = 0;
  }

  v11 = fmax((5 * (v9 / 5) + v10) / 100.0, 0.01);
  if (v11 > 0.99)
  {
    v11 = 0.99;
  }

  v12 = v11;
  v13 = [(VoiceOverDuckingSliderCell *)self slider];
  *&v14 = v12;
  [v13 setValue:0 animated:v14];

  v15 = [(VoiceOverDuckingSliderCell *)self slider];
  [v15 value];
  [(VoiceOverDuckingSliderCell *)self _updateRightLabelWithValue:v16];

  v18 = [(VoiceOverDuckingSliderCell *)self slider];
  [v18 value];
  [(VoiceOverDuckingSliderCell *)self _setCurrentDuckingValue:v17];
}

@end