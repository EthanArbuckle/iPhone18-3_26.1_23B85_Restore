@interface PaletteViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)currentSelectedDateChanged:(id)changed;
- (void)viewDidLoad;
@end

@implementation PaletteViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PaletteViewController" hasInstanceVariable:@"_paletteView" withType:"PaletteWeekdayHeaderView"];
  [validationsCopy validateClass:@"PaletteWeekdayHeaderView" hasInstanceVariable:@"_weekdayLabels" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"PaletteViewController" hasInstanceVariable:@"_paletteScrollVC" withType:"PaletteScrollViewController"];
  [validationsCopy validateClass:@"PaletteScrollViewController" hasInstanceMethod:@"activitySummaryProvider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ActivitySummaryCache" hasInstanceMethod:@"activitySummaryForCacheIndex:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"ActivitySummaryCache" hasInstanceMethod:@"fitnessStartOfWeekOffset" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PaletteViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PaletteViewController" hasInstanceMethod:@"currentSelectedDateChanged:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v49.receiver = self;
  v49.super_class = PaletteViewControllerAccessibility;
  [(PaletteViewControllerAccessibility *)&v49 _accessibilityLoadAccessibilityInformation];
  LOBYTE(v42) = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = v3;
  view = [v3 view];
  v6 = [(PaletteViewControllerAccessibility *)self safeValueForKey:@"_paletteView"];
  v7 = [(PaletteViewControllerAccessibility *)self safeValueForKey:@"_paletteView"];
  v8 = [NSArray axArrayByIgnoringNilElementsWithCount:1, v7];
  [view setAccessibilityElements:v8];

  LOBYTE(v42) = 0;
  objc_opt_class();
  v9 = [(PaletteViewControllerAccessibility *)self safeValueForKey:@"_paletteScrollVC"];
  v10 = __UIAccessibilityCastAsClass();

  v37 = view;
  v38 = v4;
  LOBYTE(v42) = 0;
  v36 = v6;
  v11 = [v6 safeValueForKey:@"_weekdayLabels"];
  v12 = __UIAccessibilitySafeClass();

  v39 = [v10 safeValueForKey:@"activitySummaryProvider"];
  v41 = +[NSCalendar currentCalendar];
  v40 = +[NSDate date];
  v35 = v10;
  v13 = [v10 safeValueForKey:@"_currentWeekStartDate"];
  v14 = 0;
  for (i = 0; i != 7; ++i)
  {
    v16 = [v13 dateByAddingTimeInterval:v14];
    if ([v41 isDate:v16 inSameDayAsDate:v40])
    {
      v17 = accessibilityLocalizedString(@"today.indicator");
    }

    else
    {
      v17 = 0;
    }

    v34 = AXDateStringForFormat();
    v18 = __UIAXStringForVariables();

    v19 = [v12 objectAtIndexedSubscript:{i, v34, @"__AXStringForVariablesSentinel"}];
    [v19 setAccessibilityLabel:v18];

    v48 = 0;
    objc_opt_class();
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__1;
    v46 = __Block_byref_object_dispose__1;
    v47 = 0;
    v20 = v39;
    v21 = v16;
    AXPerformSafeBlock();
    v22 = v43[5];

    _Block_object_dispose(&v42, 8);
    v23 = __UIAccessibilityCastAsClass();

    if (v48 == 1)
    {
      abort();
    }

    [v23 _activeEnergyCompletionPercentage];
    if (v24 < 0.0)
    {
      goto LABEL_13;
    }

    [v23 safeDoubleForKey:@"_exerciseTimeCompletionPercentage"];
    if (v25 < 0.0)
    {
      goto LABEL_13;
    }

    [v23 _standHoursCompletionPercentage];
    if (v26 < 0.0 || ([v23 _activeEnergyCompletionPercentage], v28 = v27, objc_msgSend(v23, "safeDoubleForKey:", @"_exerciseTimeCompletionPercentage"), v30 = v29, objc_msgSend(v23, "_standHoursCompletionPercentage"), objc_msgSend(v23, "_fitnessUIAccessibilityDescriptionForPercentages:exercisingPercentage:standingPercentage:arePercentagesCapped:", 1, v28, v30, v31), (v32 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_13:
      v32 = accessibilityLocalizedString(@"no.data");
    }

    v33 = [v12 objectAtIndexedSubscript:i];
    [v33 setAccessibilityValue:v32];

    v14 += 86400;
  }
}

uint64_t __80__PaletteViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activitySummaryForCacheIndex:CHCacheIndexForDate(*(a1 + 40))];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PaletteViewControllerAccessibility;
  [(PaletteViewControllerAccessibility *)&v3 viewDidLoad];
  [(PaletteViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)currentSelectedDateChanged:(id)changed
{
  v4.receiver = self;
  v4.super_class = PaletteViewControllerAccessibility;
  [(PaletteViewControllerAccessibility *)&v4 currentSelectedDateChanged:changed];
  [(PaletteViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end