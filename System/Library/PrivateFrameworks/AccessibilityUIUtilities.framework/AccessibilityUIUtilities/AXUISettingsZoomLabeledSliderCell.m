@interface AXUISettingsZoomLabeledSliderCell
- (double)initialValue;
- (void)_updateRightLabelWithValue:(double)a3;
- (void)handleSliderBeingDragged:(id)a3;
- (void)handleSliderDidFinishDrag:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AXUISettingsZoomLabeledSliderCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXUISettingsZoomLabeledSliderCell;
  [(AXUISettingsLabeledSliderCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(AXUISettingsZoomLabeledSliderCell *)self initialValue];
  [(AXUISettingsZoomLabeledSliderCell *)self _updateRightLabelWithValue:?];
}

- (void)_updateRightLabelWithValue:(double)a3
{
  v5 = AXFormatMagnificationFactor();
  [(AXUISettingsLabeledSliderCell *)self setLabelText:v5];

  v6 = [(AXUISettingsLabeledSliderCell *)self slider];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(AXUISettingsLabeledSliderCell *)self slider];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__AXUISettingsZoomLabeledSliderCell__updateRightLabelWithValue___block_invoke;
    v9[3] = &__block_descriptor_40_e15___NSString_8__0l;
    *&v9[4] = a3;
    [v8 _setAccessibilityValueBlock:v9];
  }
}

- (void)handleSliderBeingDragged:(id)a3
{
  v4 = a3;
  [v4 value];
  v6 = round(v5 * 4.0) * 0.25;
  *&v6 = v6;
  [v4 setValue:0 animated:v6];
  [v4 value];
  v8 = v7;

  [(AXUISettingsZoomLabeledSliderCell *)self _updateRightLabelWithValue:v8];
}

- (void)handleSliderDidFinishDrag:(id)a3
{
  [a3 value];
  v4 = v3;
  v5 = [MEMORY[0x1E6989890] sharedInstance];
  [v5 setZoomPreferredMaximumZoomScale:v4];
}

- (double)initialValue
{
  v2 = [MEMORY[0x1E6989890] sharedInstance];
  [v2 zoomPreferredMaximumZoomScale];
  v4 = v3;

  return v4;
}

@end