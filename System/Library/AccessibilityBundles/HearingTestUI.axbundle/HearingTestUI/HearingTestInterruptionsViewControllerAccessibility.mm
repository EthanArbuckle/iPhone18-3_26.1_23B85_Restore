@interface HearingTestInterruptionsViewControllerAccessibility
- (BOOL)accessibilityPerformEscape;
@end

@implementation HearingTestInterruptionsViewControllerAccessibility

- (BOOL)accessibilityPerformEscape
{
  v2 = AXLogHearingTest();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(HearingTestInterruptionsViewControllerAccessibility *)v2 accessibilityPerformEscape];
  }

  AXPerformSafeBlock();
  return 1;
}

@end