@interface ASTOnDeviceEyeTrackingSmoothingSliderCell
- (ASTOnDeviceEyeTrackingSmoothingSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (double)initialValue;
- (void)_updateRightLabelWithValue:(double)a3;
- (void)handleSliderBeingDragged:(id)a3;
- (void)handleSliderDidFinishDrag:(id)a3;
@end

@implementation ASTOnDeviceEyeTrackingSmoothingSliderCell

- (ASTOnDeviceEyeTrackingSmoothingSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v25.receiver = self;
  v25.super_class = ASTOnDeviceEyeTrackingSmoothingSliderCell;
  v9 = [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)&v25 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [v8 propertyForKey:@"ASTOnDeviceEyeTrackerKey"];

    if (v10)
    {
      v11 = [v8 propertyForKey:@"ASTOnDeviceEyeTrackerKey"];
      [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 setEyeTracker:v11];

      [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 minimumValue];
      v13 = v12;
      v14 = [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 slider];
      *&v15 = v13;
      [v14 setMinimumValue:v15];

      [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 maximumValue];
      v17 = v16;
      v18 = [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 slider];
      *&v19 = v17;
      [v18 setMaximumValue:v19];

      [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 initialValue];
      v21 = v20;
      v22 = [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 slider];
      *&v23 = v21;
      [v22 setValue:v23];

      [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 initialValue];
      [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 _updateRightLabelWithValue:?];
    }
  }

  return v9;
}

- (void)handleSliderBeingDragged:(id)a3
{
  v4 = a3;
  [v4 value];
  [v4 setValue:0 animated:?];
  [v4 value];
  v6 = vcvtas_u32_f32(v5);
  v7 = +[AXSettings sharedInstance];
  [v7 setAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:v6];

  [v4 value];
  v9 = v8;

  v10 = roundf(v9);

  [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)self _updateRightLabelWithValue:v10];
}

- (void)_updateRightLabelWithValue:(double)a3
{
  v4 = AXFormatFloatWithPercentage();
  [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)self setLabelText:v4];
}

- (void)handleSliderDidFinishDrag:(id)a3
{
  [a3 value];
  v4 = vcvtas_u32_f32(v3);
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:v4];
}

- (double)initialValue
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize];

  if (v3 >= kAXSAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizeMinUserPreference)
  {
    return *&v3;
  }

  else
  {
    return kAXSAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizeDefault;
  }
}

@end