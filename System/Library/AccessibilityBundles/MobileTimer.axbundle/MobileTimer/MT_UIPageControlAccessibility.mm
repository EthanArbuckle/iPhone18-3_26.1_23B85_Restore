@interface MT_UIPageControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axPagingController;
- (id)accessibilityValue;
- (void)_axStopWatchAdjustPage:(BOOL)a3;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation MT_UIPageControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTAStopwatchViewController" hasInstanceMethod:@"pagingViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTAStopwatchPagingViewController" hasInstanceMethod:@"currentPage" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"MTAStopwatchPagingViewController" hasInstanceMethod:@"pages" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTAStopwatchPagingViewController" hasInstanceMethod:@"setCurrentPage:" withFullSignature:{"v", "Q", 0}];
}

- (id)_axPagingController
{
  v2 = [(MT_UIPageControlAccessibility *)self superview];
  v3 = [MEMORY[0x29EDC7DA8] viewControllerForView:v2];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"pagingViewController"];
  v6 = __UIAccessibilitySafeClass();

  return v6;
}

- (void)_axStopWatchAdjustPage:(BOOL)a3
{
  v3 = [(MT_UIPageControlAccessibility *)self _axPagingController];
  [v3 safeUnsignedIntegerForKey:@"currentPage"];
  v4 = [v3 safeValueForKey:@"pages"];
  v5 = __UIAccessibilitySafeClass();

  [v5 count];
  v7 = v3;
  v6 = v3;
  AXPerformSafeBlock();
}

- (id)accessibilityValue
{
  v11.receiver = self;
  v11.super_class = MT_UIPageControlAccessibility;
  v3 = [(MT_UIPageControlAccessibility *)&v11 accessibilityValue];
  v4 = [(MT_UIPageControlAccessibility *)self accessibilityIdentification];
  v5 = [v4 isEqualToString:@"StopWatchPageControl"];

  if (v5)
  {
    v6 = [(MT_UIPageControlAccessibility *)self _axPagingController];
    if ([v6 safeUnsignedIntegerForKey:@"currentPage"])
    {
      v7 = @"analog.stopwatch.description";
    }

    else
    {
      v7 = @"digital.stopwatch.description";
    }

    v10 = accessibilityLocalizedString(v7);
    v8 = __UIAXStringForVariables();

    v3 = v8;
  }

  return v3;
}

- (void)accessibilityDecrement
{
  v3 = [(MT_UIPageControlAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"StopWatchPageControl"];

  if (v4)
  {
    [(MT_UIPageControlAccessibility *)self _axStopWatchAdjustPage:0];
  }

  v5.receiver = self;
  v5.super_class = MT_UIPageControlAccessibility;
  [(MT_UIPageControlAccessibility *)&v5 accessibilityDecrement];
}

- (void)accessibilityIncrement
{
  v3 = [(MT_UIPageControlAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"StopWatchPageControl"];

  if (v4)
  {
    [(MT_UIPageControlAccessibility *)self _axStopWatchAdjustPage:1];
  }

  v5.receiver = self;
  v5.super_class = MT_UIPageControlAccessibility;
  [(MT_UIPageControlAccessibility *)&v5 accessibilityIncrement];
}

@end