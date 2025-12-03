@interface HearingSettingsFilterSliderCell
- (HearingSettingsFilterSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation HearingSettingsFilterSliderCell

- (HearingSettingsFilterSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v21.receiver = self;
  v21.super_class = HearingSettingsFilterSliderCell;
  v4 = [(HearingSettingsTitleValueSliderCell *)&v21 initWithStyle:1 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v20.receiver = v4;
    v20.super_class = HearingSettingsFilterSliderCell;
    slider = [(HearingSettingsTitleValueSliderCell *)&v20 slider];
    v6Slider = [slider slider];
    [v6Slider setSegmentCount:1];

    v6Slider2 = [slider slider];
    [objc_opt_class() minValue];
    *&v9 = v9;
    [v6Slider2 setMinimumValue:v9];

    v6Slider3 = [slider slider];
    [objc_opt_class() maxValue];
    *&v11 = v11;
    [v6Slider3 setMaximumValue:v11];

    v12 = +[UIColor systemGrayColor];
    minImage = [objc_opt_class() minImage];
    v14 = [minImage imageWithTintColor:v12 renderingMode:1];

    maxImage = [objc_opt_class() maxImage];
    v16 = [maxImage imageWithTintColor:v12 renderingMode:1];

    v6Slider4 = [slider slider];
    [v6Slider4 setMinimumValueImage:v14];

    v6Slider5 = [slider slider];
    [v6Slider5 setMaximumValueImage:v16];
  }

  return v5;
}

@end