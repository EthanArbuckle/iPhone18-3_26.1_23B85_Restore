@interface AXSettingsTickedSliderCell
- (AXSettingsTickedSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (AccessibilityAirPodSettingsController)controller;
- (double)_determineDisplayValue:(double)value;
- (double)_roundFactorIfNeeded:(double)needed forValue:(double)value;
- (id)maximumTextSizeString;
- (void)_updateRightLabelWithValue:(double)value;
- (void)applyHapticIfNecessary:(id)necessary;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AXSettingsTickedSliderCell

- (AXSettingsTickedSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = AXSettingsTickedSliderCell;
  v4 = [(AXUISettingsLabeledSliderCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E6988780]);
    v6 = [v5 initWithTargetSerialQueue:MEMORY[0x1E69E96A0]];
    [(AXSettingsTickedSliderCell *)v4 setValueTimer:v6];

    valueTimer = [(AXSettingsTickedSliderCell *)v4 valueTimer];
    [valueTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

    slider = [(AXUISettingsLabeledSliderCell *)v4 slider];
    [slider setSnappingDistance:0.0];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v20[1] = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy)
  {
    v6 = [specifierCopy propertyForKey:@"isInWatchSettings"];
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
  slider = [(AXUISettingsLabeledSliderCell *)self slider];
  [slider setTicks:v17];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AXSettingsTickedSliderCell;
  [(AXUISettingsLabeledSliderCell *)&v4 prepareForReuse];
  [(AXSettingsTickedSliderCell *)self setController:0];
  valueTimer = [(AXSettingsTickedSliderCell *)self valueTimer];
  [valueTimer cancel];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = AXSettingsTickedSliderCell;
  [(PSTableCell *)&v2 layoutSubviews];
}

- (double)_roundFactorIfNeeded:(double)needed forValue:(double)value
{
  v24 = *MEMORY[0x1E69E9840];
  [(AXSettingsTickedSliderCell *)self defaultSliderValue];
  v8 = vabdd_f64(value, v7);
  v9 = fabs(needed / 10.0 + -0.1);
  if (fmin(v9, v8) >= 0.001)
  {
    neededCopy = needed;
  }

  else
  {
    neededCopy = 1.0;
  }

  if (v8 >= 0.001 && v9 < 0.001)
  {
    [(AXSettingsTickedSliderCell *)self defaultSliderValue];
    if (v11 >= value)
    {
      [(AXSettingsTickedSliderCell *)self defaultSliderValue];
      neededCopy = 1.0;
      if (v12 > value)
      {
        neededCopy = 0.99;
      }
    }

    else
    {
      neededCopy = 1.01;
    }
  }

  v13 = AXLogAirPodSettings();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:needed];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:neededCopy];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:value];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    _os_log_debug_impl(&dword_1C0DFB000, v13, OS_LOG_TYPE_DEBUG, "_roundFactorIfNeeded factor %@, updatedFactor %@, value %@", &v18, 0x20u);
  }

  return neededCopy;
}

- (double)_determineDisplayValue:(double)value
{
  [(AXSettingsTickedSliderCell *)self roundValueIfNeeded:value];
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

- (void)_updateRightLabelWithValue:(double)value
{
  [(AXSettingsTickedSliderCell *)self _determineDisplayValue:value];
  v5 = v4;
  v6 = AXFormatFloatWithPercentage();
  [(AXUISettingsLabeledSliderCell *)self setLabelText:v6];

  slider = [(AXUISettingsLabeledSliderCell *)self slider];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    slider2 = [(AXUISettingsLabeledSliderCell *)self slider];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__AXSettingsTickedSliderCell__updateRightLabelWithValue___block_invoke;
    v10[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v10[4] = v5;
    [slider2 _setAccessibilityValueBlock:v10];
  }
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  v12 = *MEMORY[0x1E69E9840];
  dragCopy = drag;
  [dragCopy value];
  [(AXSettingsTickedSliderCell *)self saveNewValue:v5];
  v6 = AXLogAirPodSettings();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x1E696AD98];
    [dragCopy value];
    v8 = [v7 numberWithFloat:?];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1C0DFB000, v6, OS_LOG_TYPE_INFO, "Finish dragging: %@", &v10, 0xCu);
  }

  valueTimer = [(AXSettingsTickedSliderCell *)self valueTimer];
  [valueTimer cancel];
}

- (void)handleSliderBeingDragged:(id)dragged
{
  v17 = *MEMORY[0x1E69E9840];
  draggedCopy = dragged;
  v5 = AXLogAirPodSettings();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x1E696AD98];
    [draggedCopy value];
    v7 = [v6 numberWithFloat:?];
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_1C0DFB000, v5, OS_LOG_TYPE_INFO, "Dragging AirPods slider: %@", buf, 0xCu);
  }

  [draggedCopy value];
  [draggedCopy setValue:0 animated:?];
  [draggedCopy value];
  [(AXSettingsTickedSliderCell *)self _updateRightLabelWithValue:v8];
  v9 = MEMORY[0x1E696AD98];
  [draggedCopy value];
  v10 = [v9 numberWithFloat:?];
  [(AXSettingsTickedSliderCell *)self applyHapticIfNecessary:v10];

  valueTimer = [(AXSettingsTickedSliderCell *)self valueTimer];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__AXSettingsTickedSliderCell_handleSliderBeingDragged___block_invoke;
  v13[3] = &unk_1E812DD68;
  v13[4] = self;
  v14 = draggedCopy;
  v12 = draggedCopy;
  [valueTimer afterDelay:v13 processBlock:0.25];
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

- (void)applyHapticIfNecessary:(id)necessary
{
  v23 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  btAddress = [(AXSettingsTickedSliderCell *)self btAddress];
  v7 = [mEMORY[0x1E6989850] defaultToneVolumeForDeviceAddress:btAddress];

  v8 = AXLogAirPodSettings();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *&v9 = v7;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_hapticPlayedValue];
    v17 = 138412802;
    v18 = v10;
    v19 = 2112;
    v20 = necessaryCopy;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1C0DFB000, v8, OS_LOG_TYPE_INFO, "Apply haptic: %@ value: %@ current hap: %@", &v17, 0x20u);
  }

  [necessaryCopy floatValue];
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