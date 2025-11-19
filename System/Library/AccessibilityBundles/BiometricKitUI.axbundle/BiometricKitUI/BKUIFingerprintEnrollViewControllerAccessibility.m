@interface BKUIFingerprintEnrollViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_finishEnrollmentPhaseTwo;
@end

@implementation BKUIFingerprintEnrollViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BKUIFingerprintEnrollViewController" hasInstanceMethod:@"_startTutorial:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"BKUIFingerprintEnrollViewController" hasInstanceMethod:@"transitionToEnrollView:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"BKUIFingerprintEnrollViewController" hasInstanceMethod:@"_finishEnrollmentPhaseTwo" withFullSignature:{"v", 0}];
  [v3 validateClass:@"BKUIFingerprintEnrollViewController" hasInstanceVariable:@"_mesaFirstEnrollView" withType:"BKUICurvesView"];
  [v3 validateClass:@"BKUIFingerprintEnrollViewController" hasInstanceVariable:@"_enrollmentPhaseTwo" withType:"BOOL"];
}

- (void)_finishEnrollmentPhaseTwo
{
  v2.receiver = self;
  v2.super_class = BKUIFingerprintEnrollViewControllerAccessibility;
  [(BKUIFingerprintEnrollViewControllerAccessibility *)&v2 _finishEnrollmentPhaseTwo];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end