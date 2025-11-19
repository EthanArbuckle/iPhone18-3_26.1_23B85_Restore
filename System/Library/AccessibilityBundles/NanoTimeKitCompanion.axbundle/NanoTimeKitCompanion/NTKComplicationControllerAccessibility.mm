@interface NTKComplicationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)addDisplayWrapper:(id)a3;
@end

@implementation NTKComplicationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKComplicationController" hasInstanceMethod:@"hasTapAction" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NTKComplicationController" hasInstanceMethod:@"complication" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKComplicationController" hasInstanceVariable:@"_displayWrappers" withType:"NSMutableArray"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = NTKComplicationControllerAccessibility;
  [(NTKComplicationControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)addDisplayWrapper:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKComplicationControllerAccessibility;
  [(NTKComplicationControllerAccessibility *)&v4 addDisplayWrapper:a3];
  [(NTKComplicationControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end