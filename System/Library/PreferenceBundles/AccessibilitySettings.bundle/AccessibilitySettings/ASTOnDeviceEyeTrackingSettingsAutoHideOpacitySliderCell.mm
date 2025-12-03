@interface ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell
- (double)initialValue;
- (void)_updateRightLabelWithValue:(double)value;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell;
  [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)self initialValue];
  [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)self _updateRightLabelWithValue:?];
}

- (void)_updateRightLabelWithValue:(double)value
{
  v4 = AXFormatFloatWithPercentage();
  [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)self setLabelText:v4];

  slider = [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)self slider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_initWeak(&location, self);
    slider2 = [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)self slider];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __86__ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell__updateRightLabelWithValue___block_invoke;
    v9[3] = &unk_255F00;
    objc_copyWeak(&v10, &location);
    [slider2 _setAccessibilityValueBlock:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

id __86__ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell__updateRightLabelWithValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initialValue];
  v2 = AXFormatFloatWithPercentage();

  return v2;
}

- (void)handleSliderBeingDragged:(id)dragged
{
  draggedCopy = dragged;
  [draggedCopy value];
  [draggedCopy setValue:0 animated:?];
  [draggedCopy value];
  v6 = v5;
  v7 = +[AXSettings sharedInstance];
  [v7 setAssistiveTouchOnDeviceEyeTrackingAutoHideOpacity:v6];

  [draggedCopy value];
  v9 = v8;

  [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)self _updateRightLabelWithValue:v9];
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  [drag value];
  v4 = v3;
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchOnDeviceEyeTrackingAutoHideOpacity:v4];
}

- (double)initialValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchOnDeviceEyeTrackingAutoHideOpacity];
  v4 = v3;

  return v4;
}

@end