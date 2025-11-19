@interface HKAudiogramChartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation HKAudiogramChartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HKAudiogramChartViewController" hasInstanceMethod:@"_resetCurrentGraph" withFullSignature:{"v", 0}];
  [v3 validateClass:@"HKAudiogramChartViewController" hasInstanceMethod:@"_updateHeaderState" withFullSignature:{"v", 0}];
}

@end