@interface NTKDateComplicationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateDisplay;
- (void)_updateDisplay;
@end

@implementation NTKDateComplicationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKDateComplicationController" isKindOfClass:@"NTKComplicationController"];
  [validationsCopy validateClass:@"NTKDateComplicationController" hasInstanceMethod:@"_updateDisplay" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NTKComplicationController" hasInstanceMethod:@"legacyDisplay" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKDateComplicationController" hasInstanceVariable:@"_displayDateStyle" withType:"Q"];
}

- (void)_axAnnotateDisplay
{
  if (([(NTKDateComplicationControllerAccessibility *)self safeUnsignedIntegerForKey:@"_displayDateStyle"]& 0x3F) != 0)
  {
    v3 = +[NSDate date];
    v7 = AXDateStringForFormat();
  }

  else
  {
    v7 = 0;
  }

  v4 = [(NTKDateComplicationControllerAccessibility *)self safeValueForKey:@"legacyDisplay"];
  [v4 setAccessibilityLabel:v7];
  v6 = accessibilityLocalizedString(@"complication.hint.calendar", v5);
  [v4 setAccessibilityHint:v6];
}

- (void)_updateDisplay
{
  v3.receiver = self;
  v3.super_class = NTKDateComplicationControllerAccessibility;
  [(NTKDateComplicationControllerAccessibility *)&v3 _updateDisplay];
  [(NTKDateComplicationControllerAccessibility *)self _axAnnotateDisplay];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = NTKDateComplicationControllerAccessibility;
  [(NTKDateComplicationControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(NTKDateComplicationControllerAccessibility *)self _axAnnotateDisplay];
}

@end