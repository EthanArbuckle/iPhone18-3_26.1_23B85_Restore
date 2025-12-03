@interface HKAudiogramChartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation HKAudiogramChartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HKAudiogramChartViewController" hasInstanceMethod:@"_resetCurrentGraph" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HKAudiogramChartViewController" hasInstanceMethod:@"_updateHeaderState" withFullSignature:{"v", 0}];
}

@end