@interface AAAmplificationCell
- (AAAmplificationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)accessibilityValue;
@end

@implementation AAAmplificationCell

- (AAAmplificationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = AAAmplificationCell;
  v4 = [(HearingSettingsValueSliderCell *)&v12 initWithStyle:1 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor systemGrayColor];
    v6 = [UIImage _systemImageNamed:@"speaker.fill"];
    v7 = [v6 imageWithTintColor:v5 renderingMode:1];

    v8 = [UIImage _systemImageNamed:@"speaker.wave.3.fill"];
    v9 = [v8 imageWithTintColor:v5 renderingMode:1];

    slider = [(HearingSettingsValueSliderCell *)v4 slider];
    [slider setMinimumValueImage:v7];
    [slider setMaximumValueImage:v9];
    [slider setSegmentCount:1];
  }

  return v4;
}

- (id)accessibilityValue
{
  [(HearingSettingsValueSliderCell *)self sliderValue];

  return AXFormatFloatWithPercentage();
}

@end