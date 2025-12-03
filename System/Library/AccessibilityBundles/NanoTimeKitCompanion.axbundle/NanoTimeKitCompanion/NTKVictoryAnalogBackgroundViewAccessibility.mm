@interface NTKVictoryAnalogBackgroundViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHandleNumberLabels:(id)labels;
- (void)_axLabelLogoButton:(id)button;
- (void)_createLargeHourMarkerLabelsAndAttachToViewIfNeeded;
- (void)_createMediumNumberLayersIfNeededAndAttachToViewIfNeeded;
- (void)addLogoButtonIfNeeded;
- (void)addSmallLogoButtonIfNeeded;
@end

@implementation NTKVictoryAnalogBackgroundViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceVariable:@"_logoButton" withType:"NTKVictoryLogoButton"];
  [validationsCopy validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceVariable:@"_smallLogoButton" withType:"NTKVictoryLogoButton"];
  [validationsCopy validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceVariable:@"_largeHourMarkerLabels" withType:"NSArray"];
  [validationsCopy validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceVariable:@"_mediumNumberLayers" withType:"NSArray"];
  [validationsCopy validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceMethod:@"addLogoButtonIfNeeded" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceMethod:@"addSmallLogoButtonIfNeeded" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceMethod:@"_createLargeHourMarkerLabelsAndAttachToViewIfNeeded" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NTKVictoryAnalogBackgroundView" hasInstanceMethod:@"_createMediumNumberLayersIfNeededAndAttachToViewIfNeeded" withFullSignature:{"v", 0}];
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

- (void)_axLabelLogoButton:(id)button
{
  buttonCopy = button;
  v5 = accessibilityLocalizedString(@"victory.watchkit.app", v4);
  [buttonCopy setAccessibilityLabel:v5];
}

- (void)_axHandleNumberLabels:(id)labels
{
  labelsCopy = labels;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [labelsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(labelsCopy);
        }

        [*(*(&v8 + 1) + 8 * v7) setIsAccessibilityElement:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [labelsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end