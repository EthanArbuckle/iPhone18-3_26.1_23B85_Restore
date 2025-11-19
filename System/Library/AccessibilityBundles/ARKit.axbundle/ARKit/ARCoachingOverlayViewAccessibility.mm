@interface ARCoachingOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axCoachingText;
- (void)_axAnnounceCoachingText;
- (void)crossFadeCoachingMessage:(int64_t)a3;
@end

@implementation ARCoachingOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ARCoachingOverlayView" hasInstanceMethod:@"setActive:animated:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"ARCoachingOverlayView" hasInstanceMethod:@"crossFadeCoachingMessage:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"ARCoachingOverlayView" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
  [v3 validateClass:@"ARCoachingOverlayView" hasInstanceVariable:@"_coachingText" withType:"UILabel"];
  [v3 validateClass:@"ARCoachingOverlayView" hasInstanceVariable:@"_coachingMessageType" withType:"q"];
}

- (id)_axCoachingText
{
  v2 = [(ARCoachingOverlayViewAccessibility *)self safeValueForKey:@"_coachingText"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (void)_axAnnounceCoachingText
{
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = [(ARCoachingOverlayViewAccessibility *)self _axCoachingText];
  UIAccessibilityPostNotification(v2, v3);
}

- (void)crossFadeCoachingMessage:(int64_t)a3
{
  v5 = [(ARCoachingOverlayViewAccessibility *)self safeIntegerForKey:@"_coachingMessageType"];
  v6.receiver = self;
  v6.super_class = ARCoachingOverlayViewAccessibility;
  [(ARCoachingOverlayViewAccessibility *)&v6 crossFadeCoachingMessage:a3];
  if (v5 != a3)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

@end