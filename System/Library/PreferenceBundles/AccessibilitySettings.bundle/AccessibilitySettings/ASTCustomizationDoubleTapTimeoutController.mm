@interface ASTCustomizationDoubleTapTimeoutController
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceValueFromUser:(double)user;
@end

@implementation ASTCustomizationDoubleTapTimeoutController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchDoubleTapActionTimeout];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchDoubleTapActionTimeout:user];
}

@end