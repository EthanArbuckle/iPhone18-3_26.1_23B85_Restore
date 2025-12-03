@interface AXUISettingsZoomLabeledSliderCell
- (double)initialValue;
- (void)_updateRightLabelWithValue:(double)value;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AXUISettingsZoomLabeledSliderCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = AXUISettingsZoomLabeledSliderCell;
  [(AXUISettingsLabeledSliderCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(AXUISettingsZoomLabeledSliderCell *)self initialValue];
  [(AXUISettingsZoomLabeledSliderCell *)self _updateRightLabelWithValue:?];
}

- (void)_updateRightLabelWithValue:(double)value
{
  v5 = AXFormatMagnificationFactor();
  [(AXUISettingsLabeledSliderCell *)self setLabelText:v5];

  slider = [(AXUISettingsLabeledSliderCell *)self slider];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    slider2 = [(AXUISettingsLabeledSliderCell *)self slider];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__AXUISettingsZoomLabeledSliderCell__updateRightLabelWithValue___block_invoke;
    v9[3] = &__block_descriptor_40_e15___NSString_8__0l;
    *&v9[4] = value;
    [slider2 _setAccessibilityValueBlock:v9];
  }
}

- (void)handleSliderBeingDragged:(id)dragged
{
  draggedCopy = dragged;
  [draggedCopy value];
  v6 = round(v5 * 4.0) * 0.25;
  *&v6 = v6;
  [draggedCopy setValue:0 animated:v6];
  [draggedCopy value];
  v8 = v7;

  [(AXUISettingsZoomLabeledSliderCell *)self _updateRightLabelWithValue:v8];
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  [drag value];
  v4 = v3;
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  [mEMORY[0x1E6989890] setZoomPreferredMaximumZoomScale:v4];
}

- (double)initialValue
{
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  [mEMORY[0x1E6989890] zoomPreferredMaximumZoomScale];
  v4 = v3;

  return v4;
}

@end