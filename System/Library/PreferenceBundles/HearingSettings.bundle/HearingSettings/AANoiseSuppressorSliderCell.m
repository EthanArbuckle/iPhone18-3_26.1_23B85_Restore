@interface AANoiseSuppressorSliderCell
- (AANoiseSuppressorSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)accessibilityValue;
@end

@implementation AANoiseSuppressorSliderCell

- (AANoiseSuppressorSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = AANoiseSuppressorSliderCell;
  v4 = [(HearingSettingsValueSliderCell *)&v8 initWithStyle:1 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(HearingSettingsValueSliderCell *)v4 slider];
    [v6 setSnapsToSegment:1];
  }

  return v5;
}

- (id)accessibilityValue
{
  [(HearingSettingsValueSliderCell *)self sliderValue];

  return AXFormatFloatWithPercentage();
}

@end