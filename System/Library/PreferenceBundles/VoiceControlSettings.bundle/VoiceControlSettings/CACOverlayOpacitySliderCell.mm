@interface CACOverlayOpacitySliderCell
- (CACOverlayOpacitySliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (double)initialValue;
- (id)accessibilityUserInputLabels;
- (void)_updateRightLabelWithValue:(double)a3;
- (void)handleSliderBeingDragged:(id)a3;
- (void)handleSliderDidFinishDrag:(id)a3;
@end

@implementation CACOverlayOpacitySliderCell

- (CACOverlayOpacitySliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = CACOverlayOpacitySliderCell;
  v5 = [(CACOverlayOpacitySliderCell *)&v8 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    [(CACOverlayOpacitySliderCell *)v5 initialValue];
    [(CACOverlayOpacitySliderCell *)v6 _updateRightLabelWithValue:?];
  }

  return v6;
}

- (void)_updateRightLabelWithValue:(double)a3
{
  v4 = AXFormatFloatWithPercentage();
  [(CACOverlayOpacitySliderCell *)self setLabelText:v4];
}

- (id)accessibilityUserInputLabels
{
  v2 = [(CACOverlayOpacitySliderCell *)self accessibilityLabel];
  v3 = [NSArray axArrayByIgnoringNilElementsWithCount:1, v2];

  return v3;
}

- (void)handleSliderBeingDragged:(id)a3
{
  v4 = a3;
  [v4 value];
  [v4 setValue:0 animated:?];
  v5 = +[CACPreferences sharedPreferences];
  [v4 value];
  [v5 setOverlayFadeOpacity:?];

  [v4 value];
  v7 = v6;

  [(CACOverlayOpacitySliderCell *)self _updateRightLabelWithValue:v7];
}

- (void)handleSliderDidFinishDrag:(id)a3
{
  v3 = a3;
  v7 = +[CACPreferences sharedPreferences];
  [v3 value];
  v5 = v4;

  LODWORD(v6) = v5;
  [v7 setOverlayFadeOpacity:v6];
}

- (double)initialValue
{
  v2 = +[CACPreferences sharedPreferences];
  [v2 overlayFadeOpacity];
  v4 = v3;

  return v4;
}

@end