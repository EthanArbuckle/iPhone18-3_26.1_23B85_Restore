@interface NTKComplicationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)addDisplayWrapper:(id)wrapper;
@end

@implementation NTKComplicationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKComplicationController" hasInstanceMethod:@"hasTapAction" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NTKComplicationController" hasInstanceMethod:@"complication" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKComplicationController" hasInstanceVariable:@"_displayWrappers" withType:"NSMutableArray"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = NTKComplicationControllerAccessibility;
  [(NTKComplicationControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)addDisplayWrapper:(id)wrapper
{
  v4.receiver = self;
  v4.super_class = NTKComplicationControllerAccessibility;
  [(NTKComplicationControllerAccessibility *)&v4 addDisplayWrapper:wrapper];
  [(NTKComplicationControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end