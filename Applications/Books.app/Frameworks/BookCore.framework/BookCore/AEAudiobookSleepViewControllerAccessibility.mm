@interface AEAudiobookSleepViewControllerAccessibility
- (BOOL)accessibilityPerformEscape;
@end

@implementation AEAudiobookSleepViewControllerAccessibility

- (BOOL)accessibilityPerformEscape
{
  v7 = 0;
  v3 = objc_opt_class();
  v4 = __IMAccessibilityCastAsClass(v3, self, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v5 = v4;
  [v4 dismissViewControllerAnimated:1 completion:0];

  return 1;
}

@end