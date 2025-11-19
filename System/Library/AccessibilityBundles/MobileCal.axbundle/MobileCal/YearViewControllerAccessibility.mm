@interface YearViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityScrollStatusForScrollView:(id)a3;
- (id)scrollView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateView;
- (void)showDate:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)viewDidLoad;
@end

@implementation YearViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKUIYearMonthView"];
  [v3 validateClass:@"YearViewController" hasInstanceMethod:@"bestDateForNewEvent" withFullSignature:{"@", 0}];
  [v3 validateClass:@"InfiniteScrollViewController" hasInstanceMethod:@"showDate: animated: completionBlock:" withFullSignature:{"v", "@", "B", "@?", 0}];
  [v3 validateClass:@"InfiniteScrollViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"YearViewController" isKindOfClass:@"InfiniteScrollViewController"];
  [v3 validateClass:@"YearViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"YearViewController" isKindOfClass:@"InfiniteScrollViewController"];
  [v3 validateClass:@"EKUIYearMonthView" hasInstanceVariable:@"_todayIndex" withType:"q"];
}

- (void)_axAnnotateView
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 view];
  [v3 accessibilitySetIdentification:@"_AXYearViewIdentifier"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = YearViewControllerAccessibility;
  [(YearViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(YearViewControllerAccessibility *)self _axAnnotateView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = YearViewControllerAccessibility;
  [(YearViewControllerAccessibility *)&v3 viewDidLoad];
  [(YearViewControllerAccessibility *)self _axAnnotateView];
}

- (id)accessibilityScrollStatusForScrollView:(id)a3
{
  v3 = [(YearViewControllerAccessibility *)self safeValueForKey:@"bestDateForNewEvent"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [v3 date];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = MEMORY[0x29C2DF2B0](v5);
  }

  else
  {
    _AXAssert();
    v7 = 0;
  }

  return v7;
}

- (void)showDate:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __69__YearViewControllerAccessibility_showDate_animated_completionBlock___block_invoke;
  v13[3] = &unk_29F2D29D8;
  v13[4] = self;
  v14 = v8;
  v9 = v8;
  v10 = a3;
  v11 = MEMORY[0x29C2DF650](v13);
  v12.receiver = self;
  v12.super_class = YearViewControllerAccessibility;
  [(YearViewControllerAccessibility *)&v12 showDate:v10 animated:v5 completionBlock:v11];
}

void __69__YearViewControllerAccessibility_showDate_animated_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if ([*(a1 + 32) _accessibilityBoolValueForKey:@"_AXShouldFocusOnTodayStorageKey"])
  {
    v3 = [*(a1 + 32) safeValueForKey:@"view"];
    argument = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_9];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], argument);
  }
}

BOOL __69__YearViewControllerAccessibility_showDate_animated_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Ekuiyearmonthv.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"_todayIndex"];
    v4 = [v3 integerValue] != -1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)scrollView
{
  v5.receiver = self;
  v5.super_class = YearViewControllerAccessibility;
  v2 = [(YearViewControllerAccessibility *)&v5 scrollView];
  [v2 setAccessibilityContainerType:4];
  v3 = accessibilityLocalizedString(@"years.container");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

@end