@interface PRComplicationContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PRComplicationContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PRComplicationContainerViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"PRWidgetGridViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"PRComplicationContainerViewController" hasInstanceMethod:@"widgetGridViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRComplicationContainerViewController" hasInstanceMethod:@"sidebarWidgetGridViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRComplicationContainerViewController" hasInstanceVariable:@"_complicationRowReticleView" withType:"PREditingReticleView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = PRComplicationContainerViewControllerAccessibility;
  [(PRComplicationContainerViewControllerAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];

  objc_opt_class();
  v5 = [(PRComplicationContainerViewControllerAccessibility *)self safeValueForKey:@"widgetGridViewController"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [(PRComplicationContainerViewControllerAccessibility *)self safeValueForKey:@"sidebarWidgetGridViewController"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [v6 view];
  v10 = [v8 view];
  v11 = [MEMORY[0x29EDB8DE8] array];
  v12 = [(PRComplicationContainerViewControllerAccessibility *)self safeUIViewForKey:@"_complicationRowReticleView"];
  [v12 setAccessibilityIdentifier:@"grouped-widgets-reticle-view"];

  [v11 axSafelyAddObject:v9];
  [v11 axSafelyAddObject:v10];
  [v4 setAccessibilityElements:v11];
}

@end