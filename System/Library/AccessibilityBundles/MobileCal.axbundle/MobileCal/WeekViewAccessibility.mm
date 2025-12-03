@interface WeekViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (WeekViewAccessibility)initWithFrame:(CGRect)frame sizeClass:(int64_t)class targetWindow:(id)window rightClickDelegate:(id)delegate;
- (id)accessibilityCustomRotors;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateScrollView;
@end

@implementation WeekViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WeekAllDayView"];
  [validationsCopy validateClass:@"EKDayViewContent"];
  [validationsCopy validateClass:@"WeekView" hasInstanceMethod:@"initWithFrame:sizeClass:targetWindow:rightClickDelegate:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "q", "@", "@", 0}];
  [validationsCopy validateClass:@"EKDayViewContent" hasInstanceMethod:@"grid" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WeekView" hasInstanceVariable:@"_scrollView" withType:"UIScrollView"];
  [validationsCopy validateClass:@"WeekView" hasInstanceVariable:@"_allDayView" withType:"WeekAllDayView"];
  [validationsCopy validateClass:@"WeekView" hasInstanceVariable:@"_content" withType:"EKDayViewContent"];
  [validationsCopy validateClass:@"WeekView" hasInstanceVariable:@"_daysToDisplay" withType:"q"];
  [validationsCopy validateClass:@"EKDayViewContent" hasInstanceMethod:@"occurrenceViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WeekAllDayView" hasInstanceMethod:@"occurrenceViews" withFullSignature:{"@", 0}];
}

- (void)_axAnnotateScrollView
{
  v2 = [(WeekViewAccessibility *)self safeValueForKey:@"_scrollView"];
  [v2 setAccessibilityIdentifier:@"_AXWeekViewScrollViewIdentifier"];
}

- (WeekViewAccessibility)initWithFrame:(CGRect)frame sizeClass:(int64_t)class targetWindow:(id)window rightClickDelegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = WeekViewAccessibility;
  v6 = [(WeekViewAccessibility *)&v9 initWithFrame:class sizeClass:window targetWindow:delegate rightClickDelegate:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = v6;
  if (v6)
  {
    [(WeekViewAccessibility *)v6 _axAnnotateScrollView];
  }

  return v7;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = WeekViewAccessibility;
  [(WeekViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(WeekViewAccessibility *)self _axAnnotateScrollView];
}

- (id)accessibilityElements
{
  if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    array = 0;
    goto LABEL_15;
  }

  v4 = [(WeekViewAccessibility *)self safeValueForKey:@"_daysToDisplay"];
  integerValue = [v4 integerValue];

  v6 = [(WeekViewAccessibility *)self safeValueForKey:@"_allDayView"];
  accessibilityElements = [v6 accessibilityElements];

  v8 = [accessibilityElements count];
  if (v8 != integerValue)
  {
    _AXAssert();
  }

  v9 = [(WeekViewAccessibility *)self safeValueForKey:@"_content"];
  v10 = [v9 safeValueForKey:@"grid"];
  accessibilityElements2 = [v10 accessibilityElements];

  if (accessibilityElements2)
  {
    if ([accessibilityElements2 count] == integerValue)
    {
      if (v8 == integerValue)
      {
        array = [MEMORY[0x29EDB8DE8] array];
        if (integerValue)
        {
          for (i = 0; i != integerValue; ++i)
          {
            v13 = [accessibilityElements objectAtIndex:i];
            [v13 setAccessibilityContainer:self];
            [array addObject:v13];
            v14 = [accessibilityElements2 objectAtIndex:i];
            [v14 setAccessibilityContainer:self];
            [array addObject:v14];
          }
        }

        goto LABEL_14;
      }
    }

    else
    {
      _AXAssert();
    }
  }

  array = 0;
LABEL_14:

LABEL_15:

  return array;
}

- (id)accessibilityCustomRotors
{
  v14[1] = *MEMORY[0x29EDCA608];
  v3 = [(WeekViewAccessibility *)self _accessibilityValueForKey:@"AXCustomRotor"];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x29EDC78E8]);
    v5 = accessibilityLocalizedString(@"rotor.events");
    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __50__WeekViewAccessibility_accessibilityCustomRotors__block_invoke;
    v11 = &unk_29F2D2B90;
    objc_copyWeak(&v12, &location);
    v3 = [v4 initWithName:v5 itemSearchBlock:&v8];

    [(WeekViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"AXCustomRotor", v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v14[0] = v3;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];

  return v6;
}

id __50__WeekViewAccessibility_accessibilityCustomRotors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained safeValueForKey:@"_content"];
  v6 = [v5 safeValueForKey:@"occurrenceViews"];
  v7 = v6;
  v8 = MEMORY[0x29EDB8E90];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 safeValueForKey:@"_allDayView"];
  v12 = [v11 safeValueForKey:@"occurrenceViews"];

  v13 = [v9 arrayByAddingObjectsFromArray:v12];

  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 _accessibilityCustomRotorResultHelper:v3 array:v13];

  return v15;
}

@end