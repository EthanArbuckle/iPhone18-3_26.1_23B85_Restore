@interface AAStrengthSliderCell
+ (id)valueLabels;
- (AAStrengthSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)sliderValue;
- (id)accessibilityValue;
@end

@implementation AAStrengthSliderCell

- (AAStrengthSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = AAStrengthSliderCell;
  v4 = [(HearingSettingsValueSliderCell *)&v8 initWithStyle:1 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(HearingSettingsValueSliderCell *)v4 slider];
    [v6 setLocksToSegment:1];
  }

  return v5;
}

- (double)sliderValue
{
  v8.receiver = self;
  v8.super_class = AAStrengthSliderCell;
  [(HearingSettingsValueSliderCell *)&v8 sliderValue];
  v3 = v2;
  v4 = +[PASettings sharedInstance];
  v5 = [v4 personalMediaConfiguration];
  v6 = [v5 level];

  if ((v6 - 1) <= 2)
  {
    return dbl_370A8[(v6 - 1)];
  }

  return v3;
}

+ (id)valueLabels
{
  v2 = paDescriptionForLevel();
  v7[0] = v2;
  v3 = paDescriptionForLevel();
  v7[1] = v3;
  v4 = paDescriptionForLevel();
  v7[2] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

- (id)accessibilityValue
{
  v2 = +[PASettings sharedInstance];
  v3 = [v2 personalMediaConfiguration];
  [v3 level];

  return paDescriptionForLevel();
}

@end