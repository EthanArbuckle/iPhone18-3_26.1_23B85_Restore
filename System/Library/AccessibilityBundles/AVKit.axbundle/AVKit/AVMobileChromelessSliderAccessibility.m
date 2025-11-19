@interface AVMobileChromelessSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (id)accessibilityValue;
- (void)_accessibilityAnnounceNewValue;
@end

@implementation AVMobileChromelessSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVMobileChromelessSlider" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"AVMobileChromelessSlider" hasInstanceMethod:@"continueTrackingWithTouch:withEvent:" withFullSignature:{"B", "@", "@", 0}];
  [v3 validateClass:@"AVMobileChromelessControlsViewController" hasProperty:@"playerController" withType:"@"];
  [v3 validateClass:@"AVMobileChromelessTimelineView" hasInstanceMethod:@"trailingTimeText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVMobileChromelessSlider" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVMobileChromelessSlider" hasInstanceMethod:@"accessibilityIncrement" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVMobileChromelessSlider" hasInstanceMethod:@"accessibilityDecrement" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVPlayerController" hasInstanceMethod:@"seekByTimeInterval:" withFullSignature:{"v", "d", 0}];
}

- (id)accessibilityValue
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 superview];

  v4 = [v3 safeStringForKey:@"trailingTimeText"];
  if (v4)
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"media.time.remaining");
    v7 = [v5 localizedStringWithFormat:v6, v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_accessibilityAnnounceNewValue
{
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = [(AVMobileChromelessSliderAccessibility *)self _accessibilityAXAttributedValue];
  UIAccessibilityPostNotification(v2, v3);
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = AVMobileChromelessSliderAccessibility;
  v4 = [(AVMobileChromelessSliderAccessibility *)&v6 continueTrackingWithTouch:a3 withEvent:a4];
  AXPerformSafeBlock();
  return v4;
}

@end