@interface ASTOnDeviceEyeTrackingSmoothingSliderCell
- (ASTOnDeviceEyeTrackingSmoothingSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (double)initialValue;
- (void)_updateRightLabelWithValue:(double)value;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
@end

@implementation ASTOnDeviceEyeTrackingSmoothingSliderCell

- (ASTOnDeviceEyeTrackingSmoothingSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v25.receiver = self;
  v25.super_class = ASTOnDeviceEyeTrackingSmoothingSliderCell;
  v9 = [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)&v25 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy propertyForKey:@"ASTOnDeviceEyeTrackerKey"];

    if (v10)
    {
      v11 = [specifierCopy propertyForKey:@"ASTOnDeviceEyeTrackerKey"];
      [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 setEyeTracker:v11];

      [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 minimumValue];
      v13 = v12;
      slider = [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 slider];
      *&v15 = v13;
      [slider setMinimumValue:v15];

      [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 maximumValue];
      v17 = v16;
      slider2 = [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 slider];
      *&v19 = v17;
      [slider2 setMaximumValue:v19];

      [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 initialValue];
      v21 = v20;
      slider3 = [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 slider];
      *&v23 = v21;
      [slider3 setValue:v23];

      [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 initialValue];
      [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)v9 _updateRightLabelWithValue:?];
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
  [v7 setAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:v6];

  [draggedCopy value];
  v9 = v8;

  v10 = roundf(v9);

  [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)self _updateRightLabelWithValue:v10];
}

- (void)_updateRightLabelWithValue:(double)value
{
  v4 = AXFormatFloatWithPercentage();
  [(ASTOnDeviceEyeTrackingSmoothingSliderCell *)self setLabelText:v4];
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  [drag value];
  v4 = vcvtas_u32_f32(v3);
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:v4];
}

- (double)initialValue
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize = [v2 assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize];

  if (assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize >= kAXSAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizeMinUserPreference)
  {
    return *&assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize;
  }

  else
  {
    return kAXSAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizeDefault;
  }
}

@end