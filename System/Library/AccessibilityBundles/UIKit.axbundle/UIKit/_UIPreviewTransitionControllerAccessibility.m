@interface _UIPreviewTransitionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_axPostNotificationForPhase:(uint64_t)a1;
- (void)_layoutForPresentationPhase:(unint64_t)a3;
@end

@implementation _UIPreviewTransitionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIPreviewTransitionController" hasInstanceMethod:@"_layoutForPresentationPhase:" withFullSignature:{"v", "Q", 0}];
  objc_storeStrong(v4, obj);
}

- (void)_layoutForPresentationPhase:(unint64_t)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = _UIPreviewTransitionControllerAccessibility;
  [(_UIPreviewTransitionControllerAccessibility *)&v3 _layoutForPresentationPhase:a3];
  [(_UIPreviewTransitionControllerAccessibility *)v6 _axPostNotificationForPhase:v4];
}

- (void)_axPostNotificationForPhase:(uint64_t)a1
{
  v4 = a1;
  v3 = a2;
  if (a1)
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