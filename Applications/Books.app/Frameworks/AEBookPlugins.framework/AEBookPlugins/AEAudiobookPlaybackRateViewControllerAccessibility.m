@interface AEAudiobookPlaybackRateViewControllerAccessibility
- (BOOL)accessibilityPerformEscape;
@end

@implementation AEAudiobookPlaybackRateViewControllerAccessibility

- (BOOL)accessibilityPerformEscape
{
  if (__IMAccessibilityPerformSafeBlock())
  {
    abort();
  }

  return 1;
}

@end