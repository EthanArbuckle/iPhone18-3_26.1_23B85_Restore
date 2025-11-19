@interface AAAmplificationCell
- (AAAmplificationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)accessibilityValue;
@end

@implementation AAAmplificationCell

- (AAAmplificationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = AAAmplificationCell;
  v4 = [(HearingSettingsValueSliderCell *)&v12 initWithStyle:1 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[UIColor systemGrayColor];
    v6 = [UIImage _systemImageNamed:@"speaker.fill"];
    v7 = [v6 imageWithTintColor:v5 renderingMode:1];

    v8 = [UIImage _systemImageNamed:@"speaker.wave.3.fill"];
    v9 = [v8 imageWithTintColor:v5 renderingMode:1];

    v10 = [(HearingSettingsValueSliderCell *)v4 slider];
    [v10 setMinimumValueImage:v7];
    [v10 setMaximumValueImage:v9];
    [v10 setSegmentCount:1];
  }

  return v4;
}

- (id)accessibilityValue
{
  [(HearingSettingsValueSliderCell *)self sliderValue];

  return AXFormatFloatWithPercentage();
}

@end