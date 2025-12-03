@interface DayNavigationWeekScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)_accessibilityScrollStatus;
- (id)_axVisibleCells;
- (id)accessibilityElementAtIndex:(int64_t)index;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)element;
- (void)setSelectedDate:(id)date animated:(BOOL)animated;
@end

@implementation DayNavigationWeekScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DayNavigationWeekScrollView" hasInstanceMethod:@"_weekStartForDate:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"DayNavigationWeekScrollView" hasInstanceMethod:@"selectedDate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DayNavigationWeekScrollView" hasInstanceMethod:@"setSelectedDate: animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"DayNavigationWeekScrollView" hasInstanceMethod:@"didFinishScrolling" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"DayNavigationWeekScrollView" hasInstanceVariable:@"_cells" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"DayNavigationView" hasInstanceMethod:@"dayNavigationWeekScrollView:selectedDateChanged:" withFullSignature:{"v", "@", "@", 0}];
}

- (id)_axVisibleCells
{
  v26 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(DayNavigationWeekScrollViewAccessibility *)self safeValueForKey:@"_cells"];
  v17 = MEMORY[0x29EDCA5F8];
  v18 = 3221225472;
  v19 = __59__DayNavigationWeekScrollViewAccessibility__axVisibleCells__block_invoke;
  v20 = &unk_29F2D2AA0;
  v21 = v3;
  v22 = v5;
  v23 = v7;
  v24 = v9;
  v25 = v11;
  v13 = v3;
  v14 = [v12 ax_filteredArrayUsingBlock:&v17];

  v15 = [v14 sortedArrayUsingSelector:{sel_accessibilityCompareGeometry_, v17, v18, v19, v20}];

  return v15;
}

BOOL __59__DayNavigationWeekScrollViewAccessibility__axVisibleCells__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  [v4 bounds];
  [v4 convertRect:*(a1 + 32) toView:?];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v19 = CGRectIntersection(v18, *(a1 + 40));
  v9 = v19.origin.x;
  v10 = v19.origin.y;
  v11 = v19.size.width;
  v12 = v19.size.height;
  if (CGRectIsNull(v19))
  {
    v13 = 0;
  }

  else
  {
    v20.origin.x = v9;
    v20.origin.y = v10;
    v20.size.width = v11;
    v20.size.height = v12;
    v17 = CGRectGetWidth(v20);
    v21.origin.x = v9;
    v21.origin.y = v10;
    v21.size.width = v11;
    v21.size.height = v12;
    v14 = v17 * CGRectGetHeight(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v15 = CGRectGetWidth(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v13 = v14 > v15 * CGRectGetHeight(v23) * 0.5;
  }

  return v13;
}

- (int64_t)accessibilityElementCount
{
  _axVisibleCells = [(DayNavigationWeekScrollViewAccessibility *)self _axVisibleCells];
  v3 = [_axVisibleCells count];

  return v3;
}

- (int64_t)indexOfAccessibilityElement:(id)element
{
  elementCopy = element;
  _axVisibleCells = [(DayNavigationWeekScrollViewAccessibility *)self _axVisibleCells];
  v6 = [_axVisibleCells indexOfObject:elementCopy];

  return v6;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  _axVisibleCells = [(DayNavigationWeekScrollViewAccessibility *)self _axVisibleCells];
  v5 = [_axVisibleCells objectAtIndex:index];

  return v5;
}

- (id)_accessibilityScrollStatus
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  AXPerformSafeBlock();
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityLocalizedString(@"week.scroll.status");
  v4 = _AXGetStringsForDate(v8[5]);
  v5 = [v2 stringWithFormat:v3, v4];

  _Block_object_dispose(&v7, 8);

  return v5;
}

void __70__DayNavigationWeekScrollViewAccessibility__accessibilityScrollStatus__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 safeValueForKey:@"selectedDate"];
  v3 = [v2 _weekStartForDate:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setSelectedDate:(id)date animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = DayNavigationWeekScrollViewAccessibility;
  [(DayNavigationWeekScrollViewAccessibility *)&v4 setSelectedDate:date animated:animated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  objc_opt_class();
  v5 = [(DayNavigationWeekScrollViewAccessibility *)self safeValueForKey:@"selectedDate"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = scroll == 4 || scroll == 1;
  v8 = 604800.0;
  if (v7)
  {
    v8 = -604800.0;
  }

  v9 = [v6 dateByAddingTimeInterval:v8];
  [(DayNavigationWeekScrollViewAccessibility *)self setSelectedDate:v9 animated:1];
  v12 = v9;
  v10 = v9;
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);

  return 1;
}

void __64__DayNavigationWeekScrollViewAccessibility_accessibilityScroll___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didFinishScrolling];
  v2 = [*(a1 + 32) safeValueForKey:@"navDelegate"];
  [v2 dayNavigationWeekScrollView:*(a1 + 32) selectedDateChanged:*(a1 + 40)];
}

@end