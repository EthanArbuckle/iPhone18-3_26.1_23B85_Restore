@interface PMiOSScrubberViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation PMiOSScrubberViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PMiOSScrubberViewController" hasInstanceMethod:@"provider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PMScrubberProvider"];
  [v3 validateClass:@"PMScrubberProvider" hasInstanceMethod:@"currentDuration" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PMScrubberProvider" hasInstanceMethod:@"currentProgress" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PMiOSScrubberViewController" hasInstanceMethod:@"scrollViewDidScroll:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PMiOSScrubberViewController" hasInstanceMethod:@"scrollViewDidEndDragging: willDecelerate:" withFullSignature:{"v", "@", "B", 0}];
}

- (void)scrollViewDidScroll:(id)a3
{
  v11.receiver = self;
  v11.super_class = PMiOSScrubberViewControllerAccessibility;
  [(PMiOSScrubberViewControllerAccessibility *)&v11 scrollViewDidScroll:a3];
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