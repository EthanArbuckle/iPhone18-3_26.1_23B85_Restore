@interface VoiceOverDuckingSliderCell
- (double)_currentDuckingValue;
- (id)accessibilityValue;
- (void)_setCurrentDuckingValue:(double)value;
- (void)_updateRightLabelWithValue:(double)value;
- (void)accessibilityIncrementOrDecrement:(BOOL)decrement;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation VoiceOverDuckingSliderCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = VoiceOverDuckingSliderCell;
  [(VoiceOverDuckingSliderCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(VoiceOverDuckingSliderCell *)self initialValue];
  [(VoiceOverDuckingSliderCell *)self _updateRightLabelWithValue:?];
}

- (void)_updateRightLabelWithValue:(double)value
{
  v5 = AXFormatFloatWithPercentage();
  [(VoiceOverDuckingSliderCell *)self setLabelText:v5];

  slider = [(VoiceOverDuckingSliderCell *)self slider];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    slider2 = [(VoiceOverDuckingSliderCell *)self slider];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __57__VoiceOverDuckingSliderCell__updateRightLabelWithValue___block_invoke;
    v9[3] = &__block_descriptor_40_e15___NSString_8__0l;
    *&v9[4] = value;
    [slider2 _setAccessibilityValueBlock:v9];
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

- (void)_setCurrentDuckingValue:(double)value
{
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverMediaDuckingAmount:value];
}

- (void)handleSliderBeingDragged:(id)dragged
{
  draggedCopy = dragged;
  [draggedCopy value];
  [draggedCopy setValue:0 animated:?];
  [draggedCopy value];
  v6 = v5;

  [(VoiceOverDuckingSliderCell *)self _updateRightLabelWithValue:v6];
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  dragCopy = drag;
  [dragCopy value];
  v5 = v4;
  [(VoiceOverDuckingSliderCell *)self _currentDuckingValue];
  if (vabdd_f64(v5, v6) >= 0.001)
  {
    [dragCopy value];
    [(VoiceOverDuckingSliderCell *)self _setCurrentDuckingValue:v7];
  }
}

- (void)accessibilityIncrementOrDecrement:(BOOL)decrement
{
  decrementCopy = decrement;
  slider = [(VoiceOverDuckingSliderCell *)self slider];
  [slider value];
  v7 = v6;

  v8 = -0.05;
  if (decrementCopy)
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
  slider2 = [(VoiceOverDuckingSliderCell *)self slider];
  *&v14 = v12;
  [slider2 setValue:0 animated:v14];

  slider3 = [(VoiceOverDuckingSliderCell *)self slider];
  [slider3 value];
  [(VoiceOverDuckingSliderCell *)self _updateRightLabelWithValue:v16];

  slider4 = [(VoiceOverDuckingSliderCell *)self slider];
  [slider4 value];
  [(VoiceOverDuckingSliderCell *)self _setCurrentDuckingValue:v17];
}

@end