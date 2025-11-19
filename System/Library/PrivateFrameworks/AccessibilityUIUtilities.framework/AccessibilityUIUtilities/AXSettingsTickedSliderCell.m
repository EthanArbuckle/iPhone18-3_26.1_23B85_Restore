@interface AXSettingsTickedSliderCell
- (AXSettingsTickedSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (AccessibilityAirPodSettingsController)controller;
- (double)_determineDisplayValue:(double)a3;
- (double)_roundFactorIfNeeded:(double)a3 forValue:(double)a4;
- (id)maximumTextSizeString;
- (void)_updateRightLabelWithValue:(double)a3;
- (void)applyHapticIfNecessary:(id)a3;
- (void)handleSliderBeingDragged:(id)a3;
- (void)handleSliderDidFinishDrag:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AXSettingsTickedSliderCell

- (AXSettingsTickedSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = AXSettingsTickedSliderCell;
  v4 = [(AXUISettingsLabeledSliderCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E6988780]);
    v6 = [v5 initWithTargetSerialQueue:MEMORY[0x1E69E96A0]];
    [(AXSettingsTickedSliderCell *)v4 setValueTimer:v6];

    v7 = [(AXSettingsTickedSliderCell *)v4 valueTimer];
    [v7 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

    v8 = [(AXUISettingsLabeledSliderCell *)v4 slider];
    [v8 setSnappingDistance:0.0];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 propertyForKey:@"isInWatchSettings"];
    -[AXSettingsTickedSliderCell setIsInWatchSettings:](self, "setIsInWatchSettings:", [v6 BOOLValue]);

    v7 = [v5 propertyForKey:@"BTAddress"];
    [(AXSettingsTickedSliderCell *)self setBtAddress:v7];
  }

  v19.receiver = self;
  v19.super_class = AXSettingsTickedSliderCell;
  [(AXUISettingsLabeledSliderCell *)&v19 refreshCellContentsWithSpecifier:v5];
  [(AXSettingsTickedSliderCell *)self initialValue];
  [(AXSettingsTickedSliderCell *)self _updateRightLabelWithValue:?];
  v8 = MEMORY[0x1E696AD98];
  [(AXSettingsTickedSliderCell *)self defaultSliderValue];
  v10 = v9;
  [(AXSettingsTickedSliderCell *)self minimumValue];
  v12 = v10 - v11;
  [(AXSettingsTickedSliderCell *)self maximumValue];
  v14 = v13;
  [(AXSettingsTickedSliderCell *)self minimumValue];
  v16 = [v8 numberWithDouble:v12 / (v14 - v15)];
  v20[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v18 = [(AXUISettingsLabeledSliderCell *)self slider];
  [v18 setTicks:v17];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AXSettingsTickedSliderCell;
  [(AXUISettingsLabeledSliderCell *)&v4 prepareForReuse];
  [(AXSettingsTickedSliderCell *)self setController:0];
  v3 = [(AXSettingsTickedSliderCell *)self valueTimer];
  [v3 cancel];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = AXSettingsTickedSliderCell;
  [(PSTableCell *)&v2 layoutSubviews];
}

- (double)_roundFactorIfNeeded:(double)a3 forValue:(double)a4
{
  v24 = *MEMORY[0x1E69E9840];
  [(AXSettingsTickedSliderCell *)self defaultSliderValue];
  v8 = vabdd_f64(a4, v7);
  v9 = fabs(a3 / 10.0 + -0.1);
  if (fmin(v9, v8) >= 0.001)
  {
    v10 = a3;
  }

  else
  {
    v10 = 1.0;
  }

  if (v8 >= 0.001 && v9 < 0.001)
  {
    [(AXSettingsTickedSliderCell *)self defaultSliderValue];
    if (v11 >= a4)
    {
      [(AXSettingsTickedSliderCell *)self defaultSliderValue];
      v10 = 1.0;
      if (v12 > a4)
      {
        v10 = 0.99;
      }
    }

    else
    {
      v10 = 1.01;
    }
  }

  v13 = AXLogAirPodSettings();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    _os_log_debug_impl(&dword_1C0DFB000, v13, OS_LOG_TYPE_DEBUG, "_roundFactorIfNeeded factor %@, updatedFactor %@, value %@", &v18, 0x20u);
  }

  return v10;
}

- (double)_determineDisplayValue:(double)a3
{
  [(AXSettingsTickedSliderCell *)self roundValueIfNeeded:a3];
  v5 = v4;
  v6 = (v4 + -15.0) / 85.0;
  [(AXSettingsTickedSliderCell *)self displayedMaxValue];
  [(AXSettingsTickedSliderCell *)self _roundFactorIfNeeded:(v6 * (v7 + -15.0) + 15.0) / 100.0 forValue:v5];
  v9 = v8;
  v10 = AXLogAirPodSettings();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(AXSettingsTickedSliderCell *)v10 _determineDisplayValue:v5, v9];
  }

  return v9;
}

- (void)_updateRightLabelWithValue:(double)a3
{
  [(AXSettingsTickedSliderCell *)self _determineDisplayValue:a3];
  v5 = v4;
  v6 = AXFormatFloatWithPercentage();
  [(AXUISettingsLabeledSliderCell *)self setLabelText:v6];

  v7 = [(AXUISettingsLabeledSliderCell *)self slider];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(AXUISettingsLabeledSliderCell *)self slider];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__AXSettingsTickedSliderCell__updateRightLabelWithValue___block_invoke;
    v10[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v10[4] = v5;
    [v9 _setAccessibilityValueBlock:v10];
  }
}

- (void)handleSliderDidFinishDrag:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 value];
  [(AXSettingsTickedSliderCell *)self saveNewValue:v5];
  v6 = AXLogAirPodSettings();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x1E696AD98];
    [v4 value];
    v8 = [v7 numberWithFloat:?];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1C0DFB000, v6, OS_LOG_TYPE_INFO, "Finish dragging: %@", &v10, 0xCu);
  }

  v9 = [(AXSettingsTickedSliderCell *)self valueTimer];
  [v9 cancel];
}

- (void)handleSliderBeingDragged:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AXLogAirPodSettings();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x1E696AD98];
    [v4 value];
    v7 = [v6 numberWithFloat:?];
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_1C0DFB000, v5, OS_LOG_TYPE_INFO, "Dragging AirPods slider: %@", buf, 0xCu);
  }

  [v4 value];
  [v4 setValue:0 animated:?];
  [v4 value];
  [(AXSettingsTickedSliderCell *)self _updateRightLabelWithValue:v8];
  v9 = MEMORY[0x1E696AD98];
  [v4 value];
  v10 = [v9 numberWithFloat:?];
  [(AXSettingsTickedSliderCell *)self applyHapticIfNecessary:v10];

  v11 = [(AXSettingsTickedSliderCell *)self valueTimer];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__AXSettingsTickedSliderCell_handleSliderBeingDragged___block_invoke;
  v13[3] = &unk_1E812DD68;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  [v11 afterDelay:v13 processBlock:0.25];
}

void __55__AXSettingsTickedSliderCell_handleSliderBeingDragged___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  [*(a1 + 40) value];
  [v2 saveNewValue:v3];
  v4 = AXLogAirPodSettings();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AD98];
    [*(a1 + 40) value];
    v6 = [v5 numberWithFloat:?];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1C0DFB000, v4, OS_LOG_TYPE_DEFAULT, "Set controller value: %@", &v7, 0xCu);
  }
}

- (id)maximumTextSizeString
{
  [(AXSettingsTickedSliderCell *)self _determineDisplayValue:100.0];

  return AXFormatFloatWithPercentage();
}

- (void)applyHapticIfNecessary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E6989850] sharedInstance];
  v6 = [(AXSettingsTickedSliderCell *)self btAddress];
  v7 = [v5 defaultToneVolumeForDeviceAddress:v6];

  v8 = AXLogAirPodSettings();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *&v9 = v7;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_hapticPlayedValue];
    v17 = 138412802;
    v18 = v10;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1C0DFB000, v8, OS_LOG_TYPE_INFO, "Apply haptic: %@ value: %@ current hap: %@", &v17, 0x20u);
  }

  [v4 floatValue];
  v13 = vabds_f32(v12, v7);
  if (v13 >= 0.5 || self->_hapticPlayedValue)
  {
    if (v13 > 2.0)
    {
      self->_hapticPlayedValue = 0;
    }
  }

  else
  {
    hapticGenerator = self->_hapticGenerator;
    if (!hapticGenerator)
    {
      v15 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:1];
      v16 = self->_hapticGenerator;
      self->_hapticGenerator = v15;

      hapticGenerator = self->_hapticGenerator;
    }

    [(UIImpactFeedbackGenerator *)hapticGenerator impactOccurred];
    self->_hapticPlayedValue = 1;
  }
}

- (AccessibilityAirPodSettingsController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)_determineDisplayValue:(double)a3 .cold.1(NSObject *a1, double a2, double a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_1C0DFB000, a1, OS_LOG_TYPE_DEBUG, "factor %@ updatedFactor  %@", &v7, 0x16u);
}

@end