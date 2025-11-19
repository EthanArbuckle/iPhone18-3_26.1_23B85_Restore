@interface MTATimerPickerCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation MTATimerPickerCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTATimerPickerCell" hasInstanceMethod:@"picker" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTATimerPickerCell" hasInstanceMethod:@"timeView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTATimerPickerCell" hasInstanceMethod:@"setState:animated:" withFullSignature:{"v", "Q", "B", 0}];
}

@end