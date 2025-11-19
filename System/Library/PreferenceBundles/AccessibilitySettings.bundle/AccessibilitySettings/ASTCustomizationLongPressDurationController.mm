@interface ASTCustomizationLongPressDurationController
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation ASTCustomizationLongPressDurationController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchLongPressActionDuration];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchLongPressActionDuration:a3];
}

@end