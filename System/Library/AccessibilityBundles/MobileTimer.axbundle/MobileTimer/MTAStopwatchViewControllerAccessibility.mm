@interface MTAStopwatchViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetLapButtonTraitsForMode:(unint64_t)mode;
- (void)didAddLap:(double)lap;
- (void)lapLapTimer;
- (void)loadView;
- (void)setMode:(unint64_t)mode;
- (void)startLapTimer;
@end

@implementation MTAStopwatchViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTAStopwatchViewController" hasInstanceMethod:@"pageControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAStopwatchViewController" hasInstanceVariable:@"_mode" withType:"Q"];
  [validationsCopy validateClass:@"MTAStopwatchViewController" hasInstanceMethod:@"stopwatchController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAStopwatchViewController" hasInstanceMethod:@"setMode:" withFullSignature:{"v", "Q", 0}];
  [validationsCopy validateClass:@"MTAStopwatchController" hasInstanceMethod:@"lapControlButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAStopwatchController" hasInstanceMethod:@"startStopButton" withFullSignature:{"@", 0}];
}

- (void)startLapTimer
{
  v5.receiver = self;
  v5.super_class = MTAStopwatchViewControllerAccessibility;
  [(MTAStopwatchViewControllerAccessibility *)&v5 startLapTimer];
  v3 = [(MTAStopwatchViewControllerAccessibility *)self safeValueForKey:@"stopwatchController"];
  v4 = [v3 safeValueForKey:@"startStopButton"];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v4);
}

- (void)lapLapTimer
{
  OutputLap = 1;
  v2.receiver = self;
  v2.super_class = MTAStopwatchViewControllerAccessibility;
  [(MTAStopwatchViewControllerAccessibility *)&v2 lapLapTimer];
  OutputLap = 0;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = MTAStopwatchViewControllerAccessibility;
  [(MTAStopwatchViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(MTAStopwatchViewControllerAccessibility *)self safeValueForKey:@"pageControl"];
  [v3 accessibilitySetIdentification:@"StopWatchPageControl"];

  [(MTAStopwatchViewControllerAccessibility *)self _axSetLapButtonTraitsForMode:[(MTAStopwatchViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_mode"]];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = MTAStopwatchViewControllerAccessibility;
  [(MTAStopwatchViewControllerAccessibility *)&v3 loadView];
  [(MTAStopwatchViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)didAddLap:(double)lap
{
  v3.receiver = self;
  v3.super_class = MTAStopwatchViewControllerAccessibility;
  [(MTAStopwatchViewControllerAccessibility *)&v3 didAddLap:?];
  if (OutputLap == 1)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __53__MTAStopwatchViewControllerAccessibility_didAddLap___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7EA8];
  v2 = *(a1 + 32);
  v3 = UIAXTimeStringForDuration();
  UIAccessibilityPostNotification(v1, v3);
}

- (void)_axSetLapButtonTraitsForMode:(unint64_t)mode
{
  v4 = [(MTAStopwatchViewControllerAccessibility *)self safeValueForKey:@"stopwatchController"];
  v8 = [v4 safeUIViewForKey:@"lapControlButton"];

  if (mode == 1)
  {
    accessibilityTraits = [v8 accessibilityTraits];
    v6 = *MEMORY[0x29EDC7FA8] | accessibilityTraits;
  }

  else
  {
    v7 = *MEMORY[0x29EDC7FA8];
    v6 = [v8 accessibilityTraits] & ~v7;
  }

  [v8 setAccessibilityTraits:v6];
}

- (void)setMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = MTAStopwatchViewControllerAccessibility;
  [(MTAStopwatchViewControllerAccessibility *)&v5 setMode:?];
  [(MTAStopwatchViewControllerAccessibility *)self _axSetLapButtonTraitsForMode:mode];
}

@end