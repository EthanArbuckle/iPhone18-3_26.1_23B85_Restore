@interface HUTimerTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation HUTimerTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUTimerTableViewCell" hasInstanceMethod:@"timerNameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUTimerTableViewCell" hasInstanceMethod:@"timerTimeLabel" withFullSignature:{"@", 0}];
}

@end