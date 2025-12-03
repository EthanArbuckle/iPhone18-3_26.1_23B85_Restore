@interface ASTMotionTrackingSmoothingSliderCell
- (ASTMotionTrackingSmoothingSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (double)initialValue;
- (void)_updateRightLabelWithValue:(double)value;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
@end

@implementation ASTMotionTrackingSmoothingSliderCell

- (ASTMotionTrackingSmoothingSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v25.receiver = self;
  v25.super_class = ASTMotionTrackingSmoothingSliderCell;
  v9 = [(ASTMotionTrackingSmoothingSliderCell *)&v25 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy propertyForKey:@"ASTEyeTrackerKey"];

    if (v10)
    {
      v11 = [specifierCopy propertyForKey:@"ASTEyeTrackerKey"];
      [(ASTMotionTrackingSmoothingSliderCell *)v9 setEyeTracker:v11];

      [(ASTMotionTrackingSmoothingSliderCell *)v9 minimumValue];
      v13 = v12;
      slider = [(ASTMotionTrackingSmoothingSliderCell *)v9 slider];
      *&v15 = v13;
      [slider setMinimumValue:v15];

      [(ASTMotionTrackingSmoothingSliderCell *)v9 maximumValue];
      v17 = v16;
      slider2 = [(ASTMotionTrackingSmoothingSliderCell *)v9 slider];
      *&v19 = v17;
      [slider2 setMaximumValue:v19];

      [(ASTMotionTrackingSmoothingSliderCell *)v9 initialValue];
      v21 = v20;
      slider3 = [(ASTMotionTrackingSmoothingSliderCell *)v9 slider];
      *&v23 = v21;
      [slider3 setValue:v23];

      [(ASTMotionTrackingSmoothingSliderCell *)v9 initialValue];
      [(ASTMotionTrackingSmoothingSliderCell *)v9 _updateRightLabelWithValue:?];
    }
  }

  return v9;
}

- (void)handleSliderBeingDragged:(id)dragged
{
  draggedCopy = dragged;
  [draggedCopy value];
  [draggedCopy setValue:0 animated:?];
  [draggedCopy value];
  v6 = vcvtas_u32_f32(v5);
  v7 = +[AXSettings sharedInstance];
  v8 = [NSNumber numberWithUnsignedInteger:v6];
  eyeTracker = [(ASTMotionTrackingSmoothingSliderCell *)self eyeTracker];
  [v7 updateSmoothingBufferSize:v8 forEyeTracker:eyeTracker];

  [draggedCopy value];
  v11 = v10;

  v12 = roundf(v11);

  [(ASTMotionTrackingSmoothingSliderCell *)self _updateRightLabelWithValue:v12];
}

- (void)_updateRightLabelWithValue:(double)value
{
  v4 = AXFormatFloatWithPercentage();
  [(ASTMotionTrackingSmoothingSliderCell *)self setLabelText:v4];
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  [drag value];
  v5 = vcvtas_u32_f32(v4);
  v8 = +[AXSettings sharedInstance];
  v6 = [NSNumber numberWithUnsignedInteger:v5];
  eyeTracker = [(ASTMotionTrackingSmoothingSliderCell *)self eyeTracker];
  [v8 updateSmoothingBufferSize:v6 forEyeTracker:eyeTracker];
}

- (double)initialValue
{
  v3 = +[AXSettings sharedInstance];
  eyeTracker = [(ASTMotionTrackingSmoothingSliderCell *)self eyeTracker];
  v5 = [v3 smoothingBufferSizeForEyeTracker:eyeTracker];

  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = kAXSAssistiveTouchMotionTrackerSmoothingBufferSizeDefault;
  }

  v7 = unsignedIntegerValue;

  return v7;
}

@end