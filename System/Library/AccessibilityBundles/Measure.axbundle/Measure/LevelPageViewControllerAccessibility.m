@interface LevelPageViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axShouldAnnounce;
- (BOOL)_updateForRotation:(double)a3 shiftAngle:(double)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnounceDegreesIfNeeded:(double)a3;
- (void)_updateOffsetLabel:(double)a3;
- (void)viewDidLoad;
@end

@implementation LevelPageViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LevelPageViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"viewWillDisappear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"LevelPageViewController" hasInstanceVariable:@"_orientation" withType:"q"];
  [v3 validateClass:@"LevelPageViewController" hasInstanceVariable:@"_degreesLabel" withType:"UILabel"];
  [v3 validateClass:@"LevelPageViewController" hasInstanceMethod:@"_updateOffsetLabel:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"LevelPageViewController" hasInstanceMethod:@"_updateForRotation: shiftAngle:" withFullSignature:{"B", "d", "d", 0}];
}

- (BOOL)_axShouldAnnounce
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 view];
  v4 = [v3 _accessibilityViewIsVisible];

  return v4;
}

- (void)_axAnnounceDegreesIfNeeded:(double)a3
{
  if (vabdd_f64(*&_axAnnounceDegreesIfNeeded__LastAnnouncedDegrees, a3) > 1.0 && CFAbsoluteTimeGetCurrent() - *&_axAnnounceDegreesIfNeeded__LastTimeLocationWasAnnounced > 1.0 && [(LevelPageViewControllerAccessibility *)self _axShouldAnnounce])
  {
    _axAnnounceDegreesIfNeeded__LastAnnouncedDegrees = *&a3;
    _axAnnounceDegreesIfNeeded__LastTimeLocationWasAnnounced = CFAbsoluteTimeGetCurrent();
    v5 = [(LevelPageViewControllerAccessibility *)self safeValueForKey:@"_degreesLabel"];
    v6 = [v5 accessibilityLabel];

    UIAccessibilitySpeakIfNotSpeaking();
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = LevelPageViewControllerAccessibility;
  [(LevelPageViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 view];

  [v3 setAccessibilityIdentifier:@"levelPageView"];
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  LODWORD(v2) = [v4 _appearState];

  [*MEMORY[0x29EDC8008] _accessibilitySetApplicationOrientation:(v2 - 1) < 2];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LevelPageViewControllerAccessibility;
  [(LevelPageViewControllerAccessibility *)&v3 viewDidLoad];
  [(LevelPageViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_updateOffsetLabel:(double)a3
{
  v5.receiver = self;
  v5.super_class = LevelPageViewControllerAccessibility;
  [(LevelPageViewControllerAccessibility *)&v5 _updateOffsetLabel:?];
  [(LevelPageViewControllerAccessibility *)self _axAnnounceDegreesIfNeeded:a3];
}

- (BOOL)_updateForRotation:(double)a3 shiftAngle:(double)a4
{
  v7 = [(LevelPageViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_orientation"];
  v15.receiver = self;
  v15.super_class = LevelPageViewControllerAccessibility;
  v8 = [(LevelPageViewControllerAccessibility *)&v15 _updateForRotation:a3 shiftAngle:a4];
  v9 = [(LevelPageViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_orientation"];
  if (v7 != v9)
  {
    v10 = v9;
    if ([(LevelPageViewControllerAccessibility *)self _axShouldAnnounce])
    {
      if ((v10 - 3) >= 2)
      {
        v11 = @"LEVEL_FACE_UP";
      }

      else
      {
        v11 = @"LEVEL_HORIZONTAL";
      }

      if ((v10 - 1) >= 2)
      {
        v12 = v11;
      }

      else
      {
        v12 = @"LEVEL_VERTICAL";
      }

      v13 = accessibilityLocalizedString(v12);
      UIAccessibilitySpeakOrQueueIfNeeded();
    }
  }

  return v8;
}

@end