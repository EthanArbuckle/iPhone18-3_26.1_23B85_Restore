@interface CHActivityTodayWidgetViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateViewAccessibilityElements;
- (void)loadView;
@end

@implementation CHActivityTodayWidgetViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHActivityTodayWidgetViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CHActivityTodayWidgetViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CHActivityTodayWidgetViewController" hasInstanceMethod:@"ringView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHActivityTodayWidgetViewController" hasInstanceMethod:@"moveTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHActivityTodayWidgetViewController" hasInstanceMethod:@"moveValueLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHActivityTodayWidgetViewController" hasInstanceMethod:@"exerciseTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHActivityTodayWidgetViewController" hasInstanceMethod:@"exerciseValueLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHActivityTodayWidgetViewController" hasInstanceMethod:@"standTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHActivityTodayWidgetViewController" hasInstanceMethod:@"standValueLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHActivityTodayWidgetViewController" hasInstanceMethod:@"setDeviceLocked:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CHActivityTodayWidgetViewController" hasInstanceMethod:@"isDeviceLocked" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CHActivityTodayWidgetViewControllerAccessibility;
  [(CHActivityTodayWidgetViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CHActivityTodayWidgetViewControllerAccessibility *)self _axUpdateViewAccessibilityElements];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CHActivityTodayWidgetViewControllerAccessibility;
  [(CHActivityTodayWidgetViewControllerAccessibility *)&v3 loadView];
  [(CHActivityTodayWidgetViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axUpdateViewAccessibilityElements
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  view = [v3 view];

  if ([(CHActivityTodayWidgetViewControllerAccessibility *)self safeBoolForKey:@"isDeviceLocked"])
  {
    v5 = [(CHActivityTodayWidgetViewControllerAccessibility *)self safeValueForKey:@"deviceLockedLabel"];
    v6 = [NSArray axArrayByIgnoringNilElementsWithCount:1, v5];
  }

  else
  {
    _axMoveHeaderValueView = [(CHActivityTodayWidgetViewControllerAccessibility *)self _axMoveHeaderValueView];

    if (!_axMoveHeaderValueView)
    {
      v8 = [(CHActivityTodayWidgetViewControllerAccessibility *)self safeValueForKey:@"moveTitleLabel"];
      v9 = [(CHActivityTodayWidgetViewControllerAccessibility *)self safeValueForKey:@"moveValueLabel"];
      v10 = v9;
      if (v8 && v9)
      {
        v11 = [AXActivityWidgetHeaderValueView alloc];
        v33[0] = v8;
        v33[1] = v10;
        v12 = [NSArray arrayWithObjects:v33 count:2];
        v13 = [(AXActivityWidgetHeaderValueView *)v11 initWithAccessibilityContainer:self representedElements:v12];

        [(AXActivityWidgetHeaderValueView *)v13 setHeaderView:v8];
        [(AXActivityWidgetHeaderValueView *)v13 setValueView:v10];
        [(CHActivityTodayWidgetViewControllerAccessibility *)self _axSetMoveHeaderValueView:v13];
      }
    }

    _axExerciseHeaderValueView = [(CHActivityTodayWidgetViewControllerAccessibility *)self _axExerciseHeaderValueView];

    if (!_axExerciseHeaderValueView)
    {
      v15 = [(CHActivityTodayWidgetViewControllerAccessibility *)self safeValueForKey:@"exerciseTitleLabel"];
      v16 = [(CHActivityTodayWidgetViewControllerAccessibility *)self safeValueForKey:@"exerciseValueLabel"];
      v17 = v16;
      if (v15 && v16)
      {
        v18 = [AXActivityWidgetHeaderValueView alloc];
        v32[0] = v15;
        v32[1] = v17;
        v19 = [NSArray arrayWithObjects:v32 count:2];
        v20 = [(AXActivityWidgetHeaderValueView *)v18 initWithAccessibilityContainer:self representedElements:v19];

        [(AXActivityWidgetHeaderValueView *)v20 setHeaderView:v15];
        [(AXActivityWidgetHeaderValueView *)v20 setValueView:v17];
        [(CHActivityTodayWidgetViewControllerAccessibility *)self _axSetExerciseHeaderValueView:v20];
      }
    }

    _axStandHeaderValueView = [(CHActivityTodayWidgetViewControllerAccessibility *)self _axStandHeaderValueView];

    if (!_axStandHeaderValueView)
    {
      v22 = [(CHActivityTodayWidgetViewControllerAccessibility *)self safeValueForKey:@"standTitleLabel"];
      v23 = [(CHActivityTodayWidgetViewControllerAccessibility *)self safeValueForKey:@"standValueLabel"];
      v24 = v23;
      if (v22 && v23)
      {
        v25 = [AXActivityWidgetHeaderValueView alloc];
        v31[0] = v22;
        v31[1] = v24;
        v26 = [NSArray arrayWithObjects:v31 count:2];
        v27 = [(AXActivityWidgetHeaderValueView *)v25 initWithAccessibilityContainer:self representedElements:v26];

        [(AXActivityWidgetHeaderValueView *)v27 setHeaderView:v22];
        [(AXActivityWidgetHeaderValueView *)v27 setValueView:v24];
        [(CHActivityTodayWidgetViewControllerAccessibility *)self _axSetStandHeaderValueView:v27];
      }
    }

    v5 = [(CHActivityTodayWidgetViewControllerAccessibility *)self safeValueForKey:@"ringView"];
    _axMoveHeaderValueView2 = [(CHActivityTodayWidgetViewControllerAccessibility *)self _axMoveHeaderValueView];
    _axExerciseHeaderValueView2 = [(CHActivityTodayWidgetViewControllerAccessibility *)self _axExerciseHeaderValueView];
    _axStandHeaderValueView2 = [(CHActivityTodayWidgetViewControllerAccessibility *)self _axStandHeaderValueView];
    v6 = [NSArray axArrayByIgnoringNilElementsWithCount:4, v5, _axMoveHeaderValueView2, _axExerciseHeaderValueView2, _axStandHeaderValueView2];
  }

  [view setAccessibilityElements:v6];
}

@end