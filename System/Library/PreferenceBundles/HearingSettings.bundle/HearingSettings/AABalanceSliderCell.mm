@interface AABalanceSliderCell
+ (id)valueLabels;
- (AABalanceSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)accessibilityValue;
@end

@implementation AABalanceSliderCell

- (AABalanceSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = AABalanceSliderCell;
  v4 = [(HearingSettingsValueSliderCell *)&v8 initWithStyle:1 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(HearingSettingsValueSliderCell *)v4 slider];
    [v6 setSnapsToSegment:1];
  }

  return v5;
}

+ (id)valueLabels
{
  v2 = hearingLocString();
  v6[0] = v2;
  v3 = hearingLocString();
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (id)accessibilityValue
{
  [(HearingSettingsValueSliderCell *)self sliderValue];
  v3 = v2;
  v4 = paLocString();
  if (v3 > 0.5)
  {
    v5 = paLocString();

    v4 = v5;
  }

  v6 = AXFormatFloatWithPercentage();
  v7 = [NSString stringWithFormat:v4, v6];

  return v7;
}

@end