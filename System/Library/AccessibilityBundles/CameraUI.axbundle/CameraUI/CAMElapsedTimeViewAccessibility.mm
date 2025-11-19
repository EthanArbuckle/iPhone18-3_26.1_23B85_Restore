@interface CAMElapsedTimeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CAMElapsedTimeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMElapsedTimeView" hasInstanceMethod:@"startTime" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMElapsedTimeView" hasInstanceMethod:@"_timeLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(CAMElapsedTimeViewAccessibility *)self safeValueForKey:@"startTime"];
  v4 = __UIAccessibilityCastAsClass();

  if (UIAccessibilityIsVoiceOverRunning())
  {
    [v4 timeIntervalSinceNow];
    v6 = MEMORY[0x29C2CF0C0](1, 0.0 - v5);
  }

  else
  {
    v7 = [(CAMElapsedTimeViewAccessibility *)self safeValueForKey:@"_timeLabel"];
    v6 = [v7 accessibilityLabel];
  }

  return v6;
}

@end