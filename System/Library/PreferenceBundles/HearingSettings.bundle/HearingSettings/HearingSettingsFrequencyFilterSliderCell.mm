@interface HearingSettingsFrequencyFilterSliderCell
+ (id)sliderLabelForValue:(float)value;
@end

@implementation HearingSettingsFrequencyFilterSliderCell

+ (id)sliderLabelForValue:(float)value
{
  v3 = comfortSoundsLocString();
  v4 = AXFormatFloat();
  v5 = [NSString stringWithFormat:v3, v4];

  return v5;
}

@end