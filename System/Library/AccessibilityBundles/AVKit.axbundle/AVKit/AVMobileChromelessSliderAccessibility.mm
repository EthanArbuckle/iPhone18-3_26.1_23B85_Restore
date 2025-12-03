@interface AVMobileChromelessSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (id)accessibilityValue;
- (void)_accessibilityAnnounceNewValue;
@end

@implementation AVMobileChromelessSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVMobileChromelessSlider" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"AVMobileChromelessSlider" hasInstanceMethod:@"continueTrackingWithTouch:withEvent:" withFullSignature:{"B", "@", "@", 0}];
  [validationsCopy validateClass:@"AVMobileChromelessControlsViewController" hasProperty:@"playerController" withType:"@"];
  [validationsCopy validateClass:@"AVMobileChromelessTimelineView" hasInstanceMethod:@"trailingTimeText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVMobileChromelessSlider" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVMobileChromelessSlider" hasInstanceMethod:@"accessibilityIncrement" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AVMobileChromelessSlider" hasInstanceMethod:@"accessibilityDecrement" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AVPlayerController" hasInstanceMethod:@"seekByTimeInterval:" withFullSignature:{"v", "d", 0}];
}

- (id)accessibilityValue
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  superview = [v2 superview];

  v4 = [superview safeStringForKey:@"trailingTimeText"];
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
  _accessibilityAXAttributedValue = [(AVMobileChromelessSliderAccessibility *)self _accessibilityAXAttributedValue];
  UIAccessibilityPostNotification(v2, _accessibilityAXAttributedValue);
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = AVMobileChromelessSliderAccessibility;
  v4 = [(AVMobileChromelessSliderAccessibility *)&v6 continueTrackingWithTouch:touch withEvent:event];
  AXPerformSafeBlock();
  return v4;
}

@end