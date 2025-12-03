@interface LevelPageViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axShouldAnnounce;
- (BOOL)_updateForRotation:(double)rotation shiftAngle:(double)angle;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnounceDegreesIfNeeded:(double)needed;
- (void)_updateOffsetLabel:(double)label;
- (void)viewDidLoad;
@end

@implementation LevelPageViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LevelPageViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewWillDisappear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"LevelPageViewController" hasInstanceVariable:@"_orientation" withType:"q"];
  [validationsCopy validateClass:@"LevelPageViewController" hasInstanceVariable:@"_degreesLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"LevelPageViewController" hasInstanceMethod:@"_updateOffsetLabel:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"LevelPageViewController" hasInstanceMethod:@"_updateForRotation: shiftAngle:" withFullSignature:{"B", "d", "d", 0}];
}

- (BOOL)_axShouldAnnounce
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  view = [v2 view];
  _accessibilityViewIsVisible = [view _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

- (void)_axAnnounceDegreesIfNeeded:(double)needed
{
  if (vabdd_f64(*&_axAnnounceDegreesIfNeeded__LastAnnouncedDegrees, needed) > 1.0 && CFAbsoluteTimeGetCurrent() - *&_axAnnounceDegreesIfNeeded__LastTimeLocationWasAnnounced > 1.0 && [(LevelPageViewControllerAccessibility *)self _axShouldAnnounce])
  {
    _axAnnounceDegreesIfNeeded__LastAnnouncedDegrees = *&needed;
    _axAnnounceDegreesIfNeeded__LastTimeLocationWasAnnounced = CFAbsoluteTimeGetCurrent();
    v5 = [(LevelPageViewControllerAccessibility *)self safeValueForKey:@"_degreesLabel"];
    accessibilityLabel = [v5 accessibilityLabel];

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
  view = [v2 view];

  [view setAccessibilityIdentifier:@"levelPageView"];
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

- (void)_updateOffsetLabel:(double)label
{
  v5.receiver = self;
  v5.super_class = LevelPageViewControllerAccessibility;
  [(LevelPageViewControllerAccessibility *)&v5 _updateOffsetLabel:?];
  [(LevelPageViewControllerAccessibility *)self _axAnnounceDegreesIfNeeded:label];
}

- (BOOL)_updateForRotation:(double)rotation shiftAngle:(double)angle
{
  v7 = [(LevelPageViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_orientation"];
  v15.receiver = self;
  v15.super_class = LevelPageViewControllerAccessibility;
  v8 = [(LevelPageViewControllerAccessibility *)&v15 _updateForRotation:rotation shiftAngle:angle];
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