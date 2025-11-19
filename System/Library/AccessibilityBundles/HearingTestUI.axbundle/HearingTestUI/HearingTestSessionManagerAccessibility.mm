@interface HearingTestSessionManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_axResumeSession;
- (void)_axStartSession;
- (void)resume;
- (void)startTest;
@end

@implementation HearingTestSessionManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HearingTestUI.SessionManager" hasInstanceMethod:@"startTest" withFullSignature:{"v", 0}];
  [v3 validateClass:@"HearingTestUI.SessionManager" hasInstanceMethod:@"resume" withFullSignature:{"v", 0}];
}

- (void)_axStartSession
{
  v3.receiver = self;
  v3.super_class = HearingTestSessionManagerAccessibility;
  [(HearingTestSessionManagerAccessibility *)&v3 startTest];
  v2 = AXLogHearingTest();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [HearingTestSessionManagerAccessibility _axStartSession];
  }
}

- (void)_axResumeSession
{
  v3.receiver = self;
  v3.super_class = HearingTestSessionManagerAccessibility;
  [(HearingTestSessionManagerAccessibility *)&v3 resume];
  v2 = AXLogHearingTest();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [HearingTestSessionManagerAccessibility _axResumeSession];
  }
}

- (void)startTest
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = AXLogHearingTest();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [HearingTestSessionManagerAccessibility startTest];
    }
  }

  else
  {
    v4.receiver = self;
    v4.super_class = HearingTestSessionManagerAccessibility;
    [(HearingTestSessionManagerAccessibility *)&v4 startTest];
  }
}

- (void)resume
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = AXLogHearingTest();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [HearingTestSessionManagerAccessibility resume];
    }
  }

  else
  {
    v4.receiver = self;
    v4.super_class = HearingTestSessionManagerAccessibility;
    [(HearingTestSessionManagerAccessibility *)&v4 resume];
  }
}

@end