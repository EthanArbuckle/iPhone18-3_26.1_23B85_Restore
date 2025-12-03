@interface AANoiseSuppressorSliderCell
- (AANoiseSuppressorSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)accessibilityValue;
@end

@implementation AANoiseSuppressorSliderCell

- (AANoiseSuppressorSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = AANoiseSuppressorSliderCell;
  v4 = [(HearingSettingsValueSliderCell *)&v8 initWithStyle:1 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    slider = [(HearingSettingsValueSliderCell *)v4 slider];
    [slider setSnapsToSegment:1];
  }

  return v5;
}

- (id)accessibilityValue
{
  [(HearingSettingsValueSliderCell *)self sliderValue];

  return AXFormatFloatWithPercentage();
}

@end