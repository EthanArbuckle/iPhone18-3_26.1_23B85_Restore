@interface FKAFocusRingTimeoutController
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user;
- (void)setNumericalPreferenceValueFromUser:(double)user;
@end

@implementation FKAFocusRingTimeoutController

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  fullKeyboardAccessFocusRingTimeoutEnabled = [v2 fullKeyboardAccessFocusRingTimeoutEnabled];

  return fullKeyboardAccessFocusRingTimeoutEnabled;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user
{
  userCopy = user;
  v4 = +[AXSettings sharedInstance];
  [v4 setFullKeyboardAccessFocusRingTimeoutEnabled:userCopy];
}

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 fullKeyboardAccessFocusRingTimeout];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  v4 = +[AXSettings sharedInstance];
  [v4 setFullKeyboardAccessFocusRingTimeout:user];
}

@end