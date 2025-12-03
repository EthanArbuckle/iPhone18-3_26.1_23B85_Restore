@interface PMiOSScrubberViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation PMiOSScrubberViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PMiOSScrubberViewController" hasInstanceMethod:@"provider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PMScrubberProvider"];
  [validationsCopy validateClass:@"PMScrubberProvider" hasInstanceMethod:@"currentDuration" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PMScrubberProvider" hasInstanceMethod:@"currentProgress" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PMiOSScrubberViewController" hasInstanceMethod:@"scrollViewDidScroll:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PMiOSScrubberViewController" hasInstanceMethod:@"scrollViewDidEndDragging: willDecelerate:" withFullSignature:{"v", "@", "B", 0}];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v11.receiver = self;
  v11.super_class = PMiOSScrubberViewControllerAccessibility;
  [(PMiOSScrubberViewControllerAccessibility *)&v11 scrollViewDidScroll:scroll];
  v4 = [(PMiOSScrubberViewControllerAccessibility *)self safeValueForKey:@"provider"];
  MEMORY[0x29C2DE4B0](@"PMScrubberProvider");
  if (objc_opt_isKindOfClass())
  {
    [v4 safeTimeIntervalForKey:@"currentDuration"];
    v6 = v5;
    [v4 safeCGFloatForKey:@"currentProgress"];
    v8 = v6 * v7;
    [(PMiOSScrubberViewControllerAccessibility *)self _axLastScrolledTimeInterval];
    if (v8 - v9 >= 15)
    {
      [(PMiOSScrubberViewControllerAccessibility *)self _setAXLastScrolledTimeInterval:v8];
      if (v8 >= 0.0)
      {
        v10 = AXDurationStringForDuration();
        UIAccessibilitySpeak();
      }
    }
  }
}

@end