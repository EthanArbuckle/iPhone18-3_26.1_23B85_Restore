@interface EKDayPreviewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateDayView;
@end

@implementation EKDayPreviewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKDayPreviewController" hasInstanceVariable:@"_dayView" withType:"EKDayView"];
  [validationsCopy validateClass:@"EKDayView" hasInstanceVariable:@"_dayContent" withType:"EKDayViewContent"];
  [validationsCopy validateClass:@"EKDayViewContent" hasInstanceVariable:@"_grid" withType:"EKDayGridView"];
}

- (void)_axAnnotateDayView
{
  objc_opt_class();
  v3 = [(EKDayPreviewControllerAccessibility *)self safeValueForKey:@"_dayView"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  objc_opt_class();
  accessibilityScrollView = [v4 accessibilityScrollView];
  v6 = __UIAccessibilityCastAsSafeCategory();

  [v6 setAccessibilityIsPreviewDayGridScroller:1];
  objc_opt_class();
  v7 = [v4 safeValueForKey:@"_dayContent"];
  v8 = [v7 safeValueForKey:@"_grid"];
  v9 = __UIAccessibilityCastAsSafeCategory();

  [v9 setAccessibilityIsPreviewGridView:1];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = EKDayPreviewControllerAccessibility;
  [(EKDayPreviewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(EKDayPreviewControllerAccessibility *)self _axAnnotateDayView];
}

@end