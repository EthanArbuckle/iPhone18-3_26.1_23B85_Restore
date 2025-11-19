@interface NTKVictoryAnalogBackgroundViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHandleNumberLabels:(id)a3;
- (void)_axLabelLogoButton:(id)a3;
- (void)_createLargeHourMarkerLabelsAndAttachToViewIfNeeded;
- (void)_createMediumNumberLayersIfNeededAndAttachToViewIfNeeded;
- (void)addLogoButtonIfNeeded;
- (void)addSmallLogoButtonIfNeeded;
@end

@implementation NTKVictoryAnalogBackgroundViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceVariable:@"_logoButton" withType:"NTKVictoryLogoButton"];
  [v3 validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceVariable:@"_smallLogoButton" withType:"NTKVictoryLogoButton"];
  [v3 validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceVariable:@"_largeHourMarkerLabels" withType:"NSArray"];
  [v3 validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceVariable:@"_mediumNumberLayers" withType:"NSArray"];
  [v3 validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceMethod:@"addLogoButtonIfNeeded" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceMethod:@"addSmallLogoButtonIfNeeded" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceMethod:@"_createLargeHourMarkerLabelsAndAttachToViewIfNeeded" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceMethod:@"_createMediumNumberLayersIfNeededAndAttachToViewIfNeeded" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = NTKVictoryAnalogBackgroundViewAccessibility;
  [(NTKVictoryAnalogBackgroundViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(NTKVictoryAnalogBackgroundViewAccessibility *)self safeValueForKey:@"_logoButton"];
  [(NTKVictoryAnalogBackgroundViewAccessibility *)self _axLabelLogoButton:v3];

  v4 = [(NTKVictoryAnalogBackgroundViewAccessibility *)self safeValueForKey:@"_smallLogoButton"];
  [(NTKVictoryAnalogBackgroundViewAccessibility *)self _axLabelLogoButton:v4];

  v5 = [(NTKVictoryAnalogBackgroundViewAccessibility *)self safeArrayForKey:@"_largeHourMarkerLabels"];
  [(NTKVictoryAnalogBackgroundViewAccessibility *)self _axHandleNumberLabels:v5];

  v6 = [(NTKVictoryAnalogBackgroundViewAccessibility *)self safeArrayForKey:@"_mediumNumberLayers"];
  [(NTKVictoryAnalogBackgroundViewAccessibility *)self _axHandleNumberLabels:v6];
}

- (void)addLogoButtonIfNeeded
{
  v3.receiver = self;
  v3.super_class = NTKVictoryAnalogBackgroundViewAccessibility;
  [(NTKVictoryAnalogBackgroundViewAccessibility *)&v3 addLogoButtonIfNeeded];
  [(NTKVictoryAnalogBackgroundViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)addSmallLogoButtonIfNeeded
{
  v3.receiver = self;
  v3.super_class = NTKVictoryAnalogBackgroundViewAccessibility;
  [(NTKVictoryAnalogBackgroundViewAccessibility *)&v3 addSmallLogoButtonIfNeeded];
  [(NTKVictoryAnalogBackgroundViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_createLargeHourMarkerLabelsAndAttachToViewIfNeeded
{
  v3.receiver = self;
  v3.super_class = NTKVictoryAnalogBackgroundViewAccessibility;
  [(NTKVictoryAnalogBackgroundViewAccessibility *)&v3 _createLargeHourMarkerLabelsAndAttachToViewIfNeeded];
  [(NTKVictoryAnalogBackgroundViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_createMediumNumberLayersIfNeededAndAttachToViewIfNeeded
{
  v3.receiver = self;
  v3.super_class = NTKVictoryAnalogBackgroundViewAccessibility;
  [(NTKVictoryAnalogBackgroundViewAccessibility *)&v3 _createMediumNumberLayersIfNeededAndAttachToViewIfNeeded];
  [(NTKVictoryAnalogBackgroundViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axLabelLogoButton:(id)a3
{
  v3 = a3;
  v5 = accessibilityLocalizedString(@"victory.watchkit.app", v4);
  [v3 setAccessibilityLabel:v5];
}

- (void)_axHandleNumberLabels:(id)a3
{
  v3 = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setIsAccessibilityElement:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end