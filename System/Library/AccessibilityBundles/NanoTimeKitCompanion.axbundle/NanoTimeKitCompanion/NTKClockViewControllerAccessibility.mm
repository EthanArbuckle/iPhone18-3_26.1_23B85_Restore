@interface NTKClockViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_endFaceLibraryControllerPresentation;
- (void)celebrationViewControllerStartedAnimation:(id)animation;
@end

@implementation NTKClockViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKClockViewController" hasInstanceMethod:@"_showLibraryViewControllerAnimated: withCompletion:" withFullSignature:{"v", "B", "@?", 0}];
  [validationsCopy validateClass:@"NTKClockViewController" hasInstanceMethod:@"_endFaceLibraryControllerPresentation" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NTKComplicationControllerCache"];
  [validationsCopy validateClass:@"NTKComplicationControllerCache" hasClassMethod:@"sharedCache" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKClockViewController" hasInstanceMethod:@"celebrationViewControllerStartedAnimation:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"NCEClockCelebrationViewController"];
  [validationsCopy validateClass:@"NCEClockCelebrationViewController" hasProperty:@"currentCelebration" withType:"@"];
  [validationsCopy validateClass:@"NCEFireVector"];
  [validationsCopy validateClass:@"NCEFireVector" hasProperty:@"celebration" withType:"@"];
  [validationsCopy validateClass:@"NCECelebration"];
  [validationsCopy validateClass:@"NCECelebration" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = NTKClockViewControllerAccessibility;
  [(NTKClockViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  v2 = [AXSafeClassFromString() safeValueForKey:@"sharedCache"];
  [v2 _accessibilityLoadAccessibilityInformation];
}

- (void)_endFaceLibraryControllerPresentation
{
  v2.receiver = self;
  v2.super_class = NTKClockViewControllerAccessibility;
  [(NTKClockViewControllerAccessibility *)&v2 _endFaceLibraryControllerPresentation];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)celebrationViewControllerStartedAnimation:(id)animation
{
  v10.receiver = self;
  v10.super_class = NTKClockViewControllerAccessibility;
  animationCopy = animation;
  [(NTKClockViewControllerAccessibility *)&v10 celebrationViewControllerStartedAnimation:animationCopy];
  v4 = [animationCopy safeValueForKeyPath:{@"currentCelebration.celebration", v10.receiver, v10.super_class}];

  v5 = [v4 safeStringForKey:@"name"];
  if ([v5 isEqualToString:@"com.apple.watch.celebrations.fireworks"])
  {
    v7 = @"celebration.fireworks";
  }

  else if ([v5 isEqualToString:@"com.apple.watch.celebrations.balloons"])
  {
    v7 = @"celebration.balloons";
  }

  else
  {
    if (![v5 isEqualToString:@"com.apple.watch.celebrations.sparkles"])
    {
      goto LABEL_9;
    }

    v7 = @"celebration.sparkles";
  }

  v8 = accessibilityLocalizedString(v7, v6);
  if (v8)
  {
    v9 = v8;
    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v8);
  }

LABEL_9:
}

@end