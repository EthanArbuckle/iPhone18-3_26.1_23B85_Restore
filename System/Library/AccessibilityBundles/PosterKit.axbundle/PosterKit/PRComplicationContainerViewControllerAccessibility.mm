@interface PRComplicationContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PRComplicationContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PRComplicationContainerViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PRWidgetGridViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PRComplicationContainerViewController" hasInstanceMethod:@"widgetGridViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRComplicationContainerViewController" hasInstanceMethod:@"sidebarWidgetGridViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRComplicationContainerViewController" hasInstanceVariable:@"_complicationRowReticleView" withType:"PREditingReticleView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = PRComplicationContainerViewControllerAccessibility;
  [(PRComplicationContainerViewControllerAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  view = [v3 view];

  objc_opt_class();
  v5 = [(PRComplicationContainerViewControllerAccessibility *)self safeValueForKey:@"widgetGridViewController"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [(PRComplicationContainerViewControllerAccessibility *)self safeValueForKey:@"sidebarWidgetGridViewController"];
  v8 = __UIAccessibilityCastAsClass();

  view2 = [v6 view];
  view3 = [v8 view];
  array = [MEMORY[0x29EDB8DE8] array];
  v12 = [(PRComplicationContainerViewControllerAccessibility *)self safeUIViewForKey:@"_complicationRowReticleView"];
  [v12 setAccessibilityIdentifier:@"grouped-widgets-reticle-view"];

  [array axSafelyAddObject:view2];
  [array axSafelyAddObject:view3];
  [view setAccessibilityElements:array];
}

@end