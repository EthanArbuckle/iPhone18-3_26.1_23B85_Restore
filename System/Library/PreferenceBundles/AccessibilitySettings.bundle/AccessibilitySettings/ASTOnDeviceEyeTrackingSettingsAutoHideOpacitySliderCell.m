@interface ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell
- (double)initialValue;
- (void)_updateRightLabelWithValue:(double)a3;
- (void)handleSliderBeingDragged:(id)a3;
- (void)handleSliderDidFinishDrag:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell;
  [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)self initialValue];
  [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)self _updateRightLabelWithValue:?];
}

- (void)_updateRightLabelWithValue:(double)a3
{
  v4 = AXFormatFloatWithPercentage();
  [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)self setLabelText:v4];

  v5 = [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)self slider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_initWeak(&location, self);
    v8 = [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)self slider];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __86__ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell__updateRightLabelWithValue___block_invoke;
    v9[3] = &unk_255F00;
    objc_copyWeak(&v10, &location);
    [v8 _setAccessibilityValueBlock:v9];

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

- (void)handleSliderBeingDragged:(id)a3
{
  v4 = a3;
  [v4 value];
  [v4 setValue:0 animated:?];
  [v4 value];
  v6 = v5;
  v7 = +[AXSettings sharedInstance];
  [v7 setAssistiveTouchOnDeviceEyeTrackingAutoHideOpacity:v6];

  [v4 value];
  v9 = v8;

  [(ASTOnDeviceEyeTrackingSettingsAutoHideOpacitySliderCell *)self _updateRightLabelWithValue:v9];
}

- (void)handleSliderDidFinishDrag:(id)a3
{
  [a3 value];
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