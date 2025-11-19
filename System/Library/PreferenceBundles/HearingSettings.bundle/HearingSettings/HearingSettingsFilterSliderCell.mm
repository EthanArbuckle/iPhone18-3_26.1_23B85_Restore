@interface HearingSettingsFilterSliderCell
- (HearingSettingsFilterSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation HearingSettingsFilterSliderCell

- (HearingSettingsFilterSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v21.receiver = self;
  v21.super_class = HearingSettingsFilterSliderCell;
  v4 = [(HearingSettingsTitleValueSliderCell *)&v21 initWithStyle:1 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v20.receiver = v4;
    v20.super_class = HearingSettingsFilterSliderCell;
    v6 = [(HearingSettingsTitleValueSliderCell *)&v20 slider];
    v7 = [v6 slider];
    [v7 setSegmentCount:1];

    v8 = [v6 slider];
    [objc_opt_class() minValue];
    *&v9 = v9;
    [v8 setMinimumValue:v9];

    v10 = [v6 slider];
    [objc_opt_class() maxValue];
    *&v11 = v11;
    [v10 setMaximumValue:v11];

    v12 = +[UIColor systemGrayColor];
    v13 = [objc_opt_class() minImage];
    v14 = [v13 imageWithTintColor:v12 renderingMode:1];

    v15 = [objc_opt_class() maxImage];
    v16 = [v15 imageWithTintColor:v12 renderingMode:1];

    v17 = [v6 slider];
    [v17 setMinimumValueImage:v14];

    v18 = [v6 slider];
    [v18 setMaximumValueImage:v16];
  }

  return v5;
}

@end