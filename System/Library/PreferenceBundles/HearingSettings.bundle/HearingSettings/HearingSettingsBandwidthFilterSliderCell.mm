@interface HearingSettingsBandwidthFilterSliderCell
+ (id)sliderLabelForValue:(float)a3;
@end

@implementation HearingSettingsBandwidthFilterSliderCell

+ (id)sliderLabelForValue:(float)a3
{
  v3 = comfortSoundsLocString();
  v4 = AXFormatFloat();
  v5 = [NSString stringWithFormat:v3, v4];

  return v5;
}

@end