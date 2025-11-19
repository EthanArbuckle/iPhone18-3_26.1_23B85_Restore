@interface CHActivityTodayWidgetViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation CHActivityTodayWidgetViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(CHActivityTodayWidgetViewControllerInvertColorsAccessibility *)self safeValueForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CHActivityTodayWidgetViewControllerInvertColorsAccessibility;
  [(CHActivityTodayWidgetViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(CHActivityTodayWidgetViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end