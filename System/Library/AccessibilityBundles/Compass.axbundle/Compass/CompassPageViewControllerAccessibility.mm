@interface CompassPageViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CompassPageViewControllerAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnounceDegreesIfNeeded:(double)needed;
- (void)setCrosshairLevelForData:(id)data;
@end

@implementation CompassPageViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CompassPageViewController" hasInstanceMethod:@"setCrosshairLevelForData:" withFullSignature:{"v", "{?=ddd}", 0}];
  [validationsCopy validateClass:@"CompassPageViewController" hasInstanceMethod:@"_updateDegreesLabel:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CompassController" hasInstanceVariable:@"_compassPageController" withType:"CompassPageViewController"];
  [validationsCopy validateClass:@"CompassPageViewController" hasInstanceVariable:@"_coordinatesLabel" withType:"CompassCopyableLabel"];
  [validationsCopy validateClass:@"CompassPageViewController" hasInstanceVariable:@"_directionLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CompassPageViewController" hasInstanceVariable:@"_degreesLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CompassPageViewController" hasInstanceVariable:@"_degreesSymbolLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CompassPageViewController" hasInstanceVariable:@"_compassView" withType:"CompassView"];
  [validationsCopy validateClass:@"CompassView" hasInstanceVariable:@"_compassBackground" withType:"CompassBackgroundView"];
  objc_opt_class();
  [validationsCopy validateClass:@"CompassBackgroundView" hasInstanceVariable:@"_currentOffset" withType:__ax_verbose_encode_with_type_encoding_group_class()];
  [validationsCopy validateClass:@"CompassPageViewController" hasInstanceVariable:@"_currentCompassAngle" withType:"d"];
}

- (void)_axAnnounceDegreesIfNeeded:(double)needed
{
  if (needed >= 0.0 && (needed + 1.0 < 2.22044605e-16 || vabdd_f64(*&_axAnnounceDegreesIfNeeded__LastAnnouncedLocation, needed) > 10.0 && CFAbsoluteTimeGetCurrent() - *&_axAnnounceDegreesIfNeeded__LastTimeLocationWasAnnounced > 2.0))
  {
    _axAnnounceDegreesIfNeeded__LastAnnouncedLocation = *&needed;
    _axAnnounceDegreesIfNeeded__LastTimeLocationWasAnnounced = CFAbsoluteTimeGetCurrent();
    v5 = [(CompassPageViewControllerAccessibility *)self safeValueForKey:@"_degreesLabel"];
    accessibilityLabel = [v5 accessibilityLabel];

    v6 = [(CompassPageViewControllerAccessibility *)self safeValueForKey:@"_degreesSymbolLabel"];
    accessibilityLabel2 = [v6 accessibilityLabel];

    v8 = [(CompassPageViewControllerAccessibility *)self safeValueForKey:@"_directionLabel"];
    accessibilityLabel3 = [v8 accessibilityLabel];

    v10 = [accessibilityLabel stringByAppendingString:accessibilityLabel2];
    v11 = __UIAXStringForVariables();
    UIAccessibilitySpeakIfNotSpeaking();
  }
}

- (CompassPageViewControllerAccessibility)init
{
  v4.receiver = self;
  v4.super_class = CompassPageViewControllerAccessibility;
  v2 = [(CompassPageViewControllerAccessibility *)&v4 init];
  [(CompassPageViewControllerAccessibility *)v2 _accessibilityLoadAccessibilityInformation];
  return v2;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CompassPageViewControllerAccessibility;
  [(CompassPageViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CompassPageViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v3 setAccessibilityIdentifier:@"compassPageView"];
}

- (void)setCrosshairLevelForData:(id)data
{
  v17.receiver = self;
  v17.super_class = CompassPageViewControllerAccessibility;
  [(CompassPageViewControllerAccessibility *)&v17 setCrosshairLevelForData:data.var0, data.var1, data.var2];
  v4 = [(CompassPageViewControllerAccessibility *)self safeValueForKey:@"_compassView"];
  v5 = [v4 safeValueForKey:@"_compassBackground"];
  v6 = [v5 safeValueForKey:@"_currentOffset"];
  [v6 CGPointValue];
  v8 = v7;
  v10 = v9;

  v11 = fabs(v8);
  v12 = fabs(v10);
  v13 = v11 <= 2.5 && v12 <= 2.5;
  if (!v13 && (setCrosshairLevelForData__IsWithinLevelRadius & 1) != 0)
  {
    v14 = 0;
    v15 = MEMORY[0x29EDBDA50];
LABEL_13:
    setCrosshairLevelForData__IsWithinLevelRadius = v14;
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *v15);
    goto LABEL_14;
  }

  v16 = v11 > 2.5 || v12 > 2.5;
  if (!v16 && (setCrosshairLevelForData__IsWithinLevelRadius & 1) == 0)
  {
    v15 = MEMORY[0x29EDBDA48];
    v14 = 1;
    goto LABEL_13;
  }

LABEL_14:
}

@end