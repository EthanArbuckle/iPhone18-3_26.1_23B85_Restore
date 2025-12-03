@interface CACOverlayOpacitySliderCell
- (CACOverlayOpacitySliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (double)initialValue;
- (id)accessibilityUserInputLabels;
- (void)_updateRightLabelWithValue:(double)value;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
@end

@implementation CACOverlayOpacitySliderCell

- (CACOverlayOpacitySliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = CACOverlayOpacitySliderCell;
  v5 = [(CACOverlayOpacitySliderCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(CACOverlayOpacitySliderCell *)v5 initialValue];
    [(CACOverlayOpacitySliderCell *)v6 _updateRightLabelWithValue:?];
  }

  return v6;
}

- (void)_updateRightLabelWithValue:(double)value
{
  v4 = AXFormatFloatWithPercentage();
  [(CACOverlayOpacitySliderCell *)self setLabelText:v4];
}

- (id)accessibilityUserInputLabels
{
  accessibilityLabel = [(CACOverlayOpacitySliderCell *)self accessibilityLabel];
  v3 = [NSArray axArrayByIgnoringNilElementsWithCount:1, accessibilityLabel];

  return v3;
}

- (void)handleSliderBeingDragged:(id)dragged
{
  draggedCopy = dragged;
  [draggedCopy value];
  [draggedCopy setValue:0 animated:?];
  v5 = +[CACPreferences sharedPreferences];
  [draggedCopy value];
  [v5 setOverlayFadeOpacity:?];

  [draggedCopy value];
  v7 = v6;

  [(CACOverlayOpacitySliderCell *)self _updateRightLabelWithValue:v7];
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  dragCopy = drag;
  v7 = +[CACPreferences sharedPreferences];
  [dragCopy value];
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