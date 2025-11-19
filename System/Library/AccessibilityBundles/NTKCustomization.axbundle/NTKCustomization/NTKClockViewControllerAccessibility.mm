@interface NTKClockViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_endFaceLibraryControllerPresentation;
- (void)celebrationViewControllerStartedAnimation:(id)a3;
@end

@implementation NTKClockViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKClockViewController" hasInstanceMethod:@"_showLibraryViewControllerAnimated: withCompletion:" withFullSignature:{"v", "B", "@?", 0}];
  [v3 validateClass:@"NTKClockViewController" hasInstanceMethod:@"_endFaceLibraryControllerPresentation" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NTKComplicationControllerCache"];
  [v3 validateClass:@"NTKComplicationControllerCache" hasClassMethod:@"sharedCache" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKClockViewController" hasInstanceMethod:@"celebrationViewControllerStartedAnimation:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"NCEClockCelebrationViewController"];
  [v3 validateClass:@"NCEClockCelebrationViewController" hasProperty:@"currentCelebration" withType:"@"];
  [v3 validateClass:@"NCEFireVector"];
  [v3 validateClass:@"NCEFireVector" hasProperty:@"celebration" withType:"@"];
  [v3 validateClass:@"NCECelebration"];
  [v3 validateClass:@"NCECelebration" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
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

- (void)celebrationViewControllerStartedAnimation:(id)a3
{
  v10.receiver = self;
  v10.super_class = NTKClockViewControllerAccessibility;
  v3 = a3;
  [(NTKClockViewControllerAccessibility *)&v10 celebrationViewControllerStartedAnimation:v3];
  v4 = [v3 safeValueForKeyPath:{@"currentCelebration.celebration", v10.receiver, v10.super_class}];

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