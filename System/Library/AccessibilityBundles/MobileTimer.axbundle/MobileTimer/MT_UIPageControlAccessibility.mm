@interface MT_UIPageControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axPagingController;
- (id)accessibilityValue;
- (void)_axStopWatchAdjustPage:(BOOL)page;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation MT_UIPageControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTAStopwatchViewController" hasInstanceMethod:@"pagingViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAStopwatchPagingViewController" hasInstanceMethod:@"currentPage" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"MTAStopwatchPagingViewController" hasInstanceMethod:@"pages" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAStopwatchPagingViewController" hasInstanceMethod:@"setCurrentPage:" withFullSignature:{"v", "Q", 0}];
}

- (id)_axPagingController
{
  superview = [(MT_UIPageControlAccessibility *)self superview];
  v3 = [MEMORY[0x29EDC7DA8] viewControllerForView:superview];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"pagingViewController"];
  v6 = __UIAccessibilitySafeClass();

  return v6;
}

- (void)_axStopWatchAdjustPage:(BOOL)page
{
  _axPagingController = [(MT_UIPageControlAccessibility *)self _axPagingController];
  [_axPagingController safeUnsignedIntegerForKey:@"currentPage"];
  v4 = [_axPagingController safeValueForKey:@"pages"];
  v5 = __UIAccessibilitySafeClass();

  [v5 count];
  v7 = _axPagingController;
  v6 = _axPagingController;
  AXPerformSafeBlock();
}

- (id)accessibilityValue
{
  v11.receiver = self;
  v11.super_class = MT_UIPageControlAccessibility;
  accessibilityValue = [(MT_UIPageControlAccessibility *)&v11 accessibilityValue];
  accessibilityIdentification = [(MT_UIPageControlAccessibility *)self accessibilityIdentification];
  v5 = [accessibilityIdentification isEqualToString:@"StopWatchPageControl"];

  if (v5)
  {
    _axPagingController = [(MT_UIPageControlAccessibility *)self _axPagingController];
    if ([_axPagingController safeUnsignedIntegerForKey:@"currentPage"])
    {
      v7 = @"analog.stopwatch.description";
    }

    else
    {
      v7 = @"digital.stopwatch.description";
    }

    v10 = accessibilityLocalizedString(v7);
    v8 = __UIAXStringForVariables();

    accessibilityValue = v8;
  }

  return accessibilityValue;
}

- (void)accessibilityDecrement
{
  accessibilityIdentification = [(MT_UIPageControlAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"StopWatchPageControl"];

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
  accessibilityIdentification = [(MT_UIPageControlAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"StopWatchPageControl"];

  if (v4)
  {
    [(MT_UIPageControlAccessibility *)self _axStopWatchAdjustPage:1];
  }

  v5.receiver = self;
  v5.super_class = MT_UIPageControlAccessibility;
  [(MT_UIPageControlAccessibility *)&v5 accessibilityIncrement];
}

@end