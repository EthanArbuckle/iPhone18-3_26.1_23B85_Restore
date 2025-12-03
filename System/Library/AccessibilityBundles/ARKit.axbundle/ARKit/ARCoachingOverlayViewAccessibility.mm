@interface ARCoachingOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axCoachingText;
- (void)_axAnnounceCoachingText;
- (void)crossFadeCoachingMessage:(int64_t)message;
@end

@implementation ARCoachingOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ARCoachingOverlayView" hasInstanceMethod:@"setActive:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"ARCoachingOverlayView" hasInstanceMethod:@"crossFadeCoachingMessage:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"ARCoachingOverlayView" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ARCoachingOverlayView" hasInstanceVariable:@"_coachingText" withType:"UILabel"];
  [validationsCopy validateClass:@"ARCoachingOverlayView" hasInstanceVariable:@"_coachingMessageType" withType:"q"];
}

- (id)_axCoachingText
{
  v2 = [(ARCoachingOverlayViewAccessibility *)self safeValueForKey:@"_coachingText"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (void)_axAnnounceCoachingText
{
  v2 = *MEMORY[0x29EDC7EA8];
  _axCoachingText = [(ARCoachingOverlayViewAccessibility *)self _axCoachingText];
  UIAccessibilityPostNotification(v2, _axCoachingText);
}

- (void)crossFadeCoachingMessage:(int64_t)message
{
  v5 = [(ARCoachingOverlayViewAccessibility *)self safeIntegerForKey:@"_coachingMessageType"];
  v6.receiver = self;
  v6.super_class = ARCoachingOverlayViewAccessibility;
  [(ARCoachingOverlayViewAccessibility *)&v6 crossFadeCoachingMessage:message];
  if (v5 != message)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

@end