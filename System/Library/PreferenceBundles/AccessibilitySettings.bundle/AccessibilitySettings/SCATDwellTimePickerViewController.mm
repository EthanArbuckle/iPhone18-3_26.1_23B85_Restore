@interface SCATDwellTimePickerViewController
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation SCATDwellTimePickerViewController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 switchControlDwellTime];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setSwitchControlDwellTime:a3];
}

@end