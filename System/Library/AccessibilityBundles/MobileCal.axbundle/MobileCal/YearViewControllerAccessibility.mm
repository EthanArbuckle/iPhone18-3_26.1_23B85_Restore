@interface YearViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityScrollStatusForScrollView:(id)view;
- (id)scrollView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateView;
- (void)showDate:(id)date animated:(BOOL)animated completionBlock:(id)block;
- (void)viewDidLoad;
@end

@implementation YearViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKUIYearMonthView"];
  [validationsCopy validateClass:@"YearViewController" hasInstanceMethod:@"bestDateForNewEvent" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"InfiniteScrollViewController" hasInstanceMethod:@"showDate: animated: completionBlock:" withFullSignature:{"v", "@", "B", "@?", 0}];
  [validationsCopy validateClass:@"InfiniteScrollViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"YearViewController" isKindOfClass:@"InfiniteScrollViewController"];
  [validationsCopy validateClass:@"YearViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"YearViewController" isKindOfClass:@"InfiniteScrollViewController"];
  [validationsCopy validateClass:@"EKUIYearMonthView" hasInstanceVariable:@"_todayIndex" withType:"q"];
}

- (void)_axAnnotateView
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  view = [v2 view];
  [view accessibilitySetIdentification:@"_AXYearViewIdentifier"];
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

- (id)accessibilityScrollStatusForScrollView:(id)view
{
  v3 = [(YearViewControllerAccessibility *)self safeValueForKey:@"bestDateForNewEvent"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  date = [v3 date];
  v6 = date;
  if (isKindOfClass)
  {
    v7 = MEMORY[0x29C2DF2B0](date);
  }

  else
  {
    _AXAssert();
    v7 = 0;
  }

  return v7;
}

- (void)showDate:(id)date animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __69__YearViewControllerAccessibility_showDate_animated_completionBlock___block_invoke;
  v13[3] = &unk_29F2D29D8;
  v13[4] = self;
  v14 = blockCopy;
  v9 = blockCopy;
  dateCopy = date;
  v11 = MEMORY[0x29C2DF650](v13);
  v12.receiver = self;
  v12.super_class = YearViewControllerAccessibility;
  [(YearViewControllerAccessibility *)&v12 showDate:dateCopy animated:animatedCopy completionBlock:v11];
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
  scrollView = [(YearViewControllerAccessibility *)&v5 scrollView];
  [scrollView setAccessibilityContainerType:4];
  v3 = accessibilityLocalizedString(@"years.container");
  [scrollView setAccessibilityLabel:v3];

  return scrollView;
}

@end