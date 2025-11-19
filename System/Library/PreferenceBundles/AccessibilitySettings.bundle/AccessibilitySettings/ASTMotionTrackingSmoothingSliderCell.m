@interface ASTMotionTrackingSmoothingSliderCell
- (ASTMotionTrackingSmoothingSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (double)initialValue;
- (void)_updateRightLabelWithValue:(double)a3;
- (void)handleSliderBeingDragged:(id)a3;
- (void)handleSliderDidFinishDrag:(id)a3;
@end

@implementation ASTMotionTrackingSmoothingSliderCell

- (ASTMotionTrackingSmoothingSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v25.receiver = self;
  v25.super_class = ASTMotionTrackingSmoothingSliderCell;
  v9 = [(ASTMotionTrackingSmoothingSliderCell *)&v25 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [v8 propertyForKey:@"ASTEyeTrackerKey"];

    if (v10)
    {
      v11 = [v8 propertyForKey:@"ASTEyeTrackerKey"];
      [(ASTMotionTrackingSmoothingSliderCell *)v9 setEyeTracker:v11];

      [(ASTMotionTrackingSmoothingSliderCell *)v9 minimumValue];
      v13 = v12;
      v14 = [(ASTMotionTrackingSmoothingSliderCell *)v9 slider];
      *&v15 = v13;
      [v14 setMinimumValue:v15];

      [(ASTMotionTrackingSmoothingSliderCell *)v9 maximumValue];
      v17 = v16;
      v18 = [(ASTMotionTrackingSmoothingSliderCell *)v9 slider];
      *&v19 = v17;
      [v18 setMaximumValue:v19];

      [(ASTMotionTrackingSmoothingSliderCell *)v9 initialValue];
      v21 = v20;
      v22 = [(ASTMotionTrackingSmoothingSliderCell *)v9 slider];
      *&v23 = v21;
      [v22 setValue:v23];

      [(ASTMotionTrackingSmoothingSliderCell *)v9 initialValue];
      [(ASTMotionTrackingSmoothingSliderCell *)v9 _updateRightLabelWithValue:?];
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
  v8 = [NSNumber numberWithUnsignedInteger:v6];
  v9 = [(ASTMotionTrackingSmoothingSliderCell *)self eyeTracker];
  [v7 updateSmoothingBufferSize:v8 forEyeTracker:v9];

  [v4 value];
  v11 = v10;

  v12 = roundf(v11);

  [(ASTMotionTrackingSmoothingSliderCell *)self _updateRightLabelWithValue:v12];
}

- (void)_updateRightLabelWithValue:(double)a3
{
  v4 = AXFormatFloatWithPercentage();
  [(ASTMotionTrackingSmoothingSliderCell *)self setLabelText:v4];
}

- (void)handleSliderDidFinishDrag:(id)a3
{
  [a3 value];
  v5 = vcvtas_u32_f32(v4);
  v8 = +[AXSettings sharedInstance];
  v6 = [NSNumber numberWithUnsignedInteger:v5];
  v7 = [(ASTMotionTrackingSmoothingSliderCell *)self eyeTracker];
  [v8 updateSmoothingBufferSize:v6 forEyeTracker:v7];
}

- (double)initialValue
{
  v3 = +[AXSettings sharedInstance];
  v4 = [(ASTMotionTrackingSmoothingSliderCell *)self eyeTracker];
  v5 = [v3 smoothingBufferSizeForEyeTracker:v4];

  if (v5)
  {
    v6 = [v5 unsignedIntegerValue];
  }

  else
  {
    v6 = kAXSAssistiveTouchMotionTrackerSmoothingBufferSizeDefault;
  }

  v7 = v6;

  return v7;
}

@end