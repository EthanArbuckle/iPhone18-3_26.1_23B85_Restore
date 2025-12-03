@interface _UIPreviewTransitionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_axPostNotificationForPhase:(uint64_t)phase;
- (void)_layoutForPresentationPhase:(unint64_t)phase;
@end

@implementation _UIPreviewTransitionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIPreviewTransitionController" hasInstanceMethod:@"_layoutForPresentationPhase:" withFullSignature:{"v", "Q", 0}];
  objc_storeStrong(v4, obj);
}

- (void)_layoutForPresentationPhase:(unint64_t)phase
{
  selfCopy = self;
  v5 = a2;
  phaseCopy = phase;
  v3.receiver = self;
  v3.super_class = _UIPreviewTransitionControllerAccessibility;
  [(_UIPreviewTransitionControllerAccessibility *)&v3 _layoutForPresentationPhase:phase];
  [(_UIPreviewTransitionControllerAccessibility *)selfCopy _axPostNotificationForPhase:phaseCopy];
}

- (void)_axPostNotificationForPhase:(uint64_t)phase
{
  phaseCopy = phase;
  v3 = a2;
  if (phase)
  {
    location = 0;
    if (v3 > 1)
    {
      if (v3 - 2 <= 1)
      {
        objc_storeStrong(&location, MEMORY[0x29EDB8EB0]);
      }

      else if (v3 - 4 <= 1)
      {
        objc_storeStrong(&location, MEMORY[0x29EDB8EA8]);
      }
    }

    if (location)
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7438], location);
    }

    objc_storeStrong(&location, 0);
  }
}

@end