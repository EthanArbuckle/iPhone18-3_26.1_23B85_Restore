@interface UICalendarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_configuedCellForCollectionView:(id)a3 indexPath:(id)a4 day:(id)a5;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateVisibleMonth;
- (void)_axMarkupSubviews;
- (void)_setVisibleMonth:(id)a3 animated:(BOOL)a4 updateDataSource:(BOOL)a5 updateCollectionView:(BOOL)a6 notifyDelegate:(BOOL)a7;
- (void)_setupViewHierarchy;
@end

@implementation UICalendarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v10 = location;
  v9 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UICalendarView";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  v3 = "v";
  [location[0] validateClass:@"UICalendarView" hasInstanceMethod:@"_setupViewHierarchy" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceVariable:@"_dataModel" withType:"_UICalendarDataModel"];
  v6 = "@";
  [location[0] validateClass:@"_UICalendarDataModel" hasInstanceMethod:@"visibleMonth" withFullSignature:0];
  v8 = "B";
  [location[0] validateClass:v4 hasInstanceMethod:@"_setVisibleMonth:animated:updateDataSource:updateCollectionView:notifyDelegate:" withFullSignature:{v3, v6, "B", "B", "B", "B", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_configuedCellForCollectionView: indexPath: day:" withFullSignature:{v6, v6, v6, 0}];
  v7 = @"_UIDatePickerCalendarDay";
  v5 = @"_UIDatePickerCalendarDateComponent";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"date" withFullSignature:{v6, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"components" withFullSignature:{v6, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"month" withFullSignature:{v6, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"isToday" withFullSignature:{v8, 0}];
  objc_storeStrong(v10, v9);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UICalendarViewAccessibility;
  [(UICalendarViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(UICalendarViewAccessibility *)v4 _axMarkupSubviews];
  [(UICalendarViewAccessibility *)v4 _accessibilityUpdateVisibleMonth];
}

- (void)_axMarkupSubviews
{
  v10 = a1;
  if (a1)
  {
    v8 = 0;
    objc_opt_class();
    v2 = [v10 safeValueForKey:@"_collectionView"];
    v7 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v2);
    v6 = MEMORY[0x29EDC9748](v7);
    objc_storeStrong(&v7, 0);
    v9 = v6;
    v5 = 0;
    objc_opt_class();
    v4 = __UIAccessibilityCastAsSafeCategory();
    v3 = MEMORY[0x29EDC9748](v4);
    objc_storeStrong(&v4, 0);
    [UICollectionViewAccessibility _axSetShouldIgnorePromiseRegions:v3];
    *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    [v9 setAccessibilityShouldBypassCollectionViewAccessibility:{1, v1}];
    objc_storeStrong(&v9, 0);
  }
}

- (void)_setupViewHierarchy
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UICalendarViewAccessibility;
  [(UICalendarViewAccessibility *)&v2 _setupViewHierarchy];
  [(UICalendarViewAccessibility *)v4 _axMarkupSubviews];
}

- (id)_configuedCellForCollectionView:(id)a3 indexPath:(id)a4 day:(id)a5
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = 0;
  objc_storeStrong(&v27, a5);
  v25.receiver = v30;
  v25.super_class = UICalendarViewAccessibility;
  v26 = [(UICalendarViewAccessibility *)&v25 _configuedCellForCollectionView:location[0] indexPath:v28 day:v27];
  v9 = v26;
  v19 = MEMORY[0x29EDCA5F8];
  v20 = -1073741824;
  v21 = 0;
  v22 = __77__UICalendarViewAccessibility__configuedCellForCollectionView_indexPath_day___block_invoke;
  v23 = &unk_29F30CDE8;
  v24 = MEMORY[0x29EDC9748](v27);
  [v9 _setAccessibilityLabelBlock:&v19];
  objc_initWeak(&v18, v30);
  v10 = v26;
  v11 = MEMORY[0x29EDCA5F8];
  v12 = -1073741824;
  v13 = 0;
  v14 = __77__UICalendarViewAccessibility__configuedCellForCollectionView_indexPath_day___block_invoke_2;
  v15 = &unk_29F30CE10;
  objc_copyWeak(&v17, &v18);
  v16 = MEMORY[0x29EDC9748](v27);
  [v10 _setIsAccessibilityElementBlock:&v11];
  v6 = MEMORY[0x29EDC9748](v26);
  objc_storeStrong(&v16, 0);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v18);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);

  return v6;
}

id __77__UICalendarViewAccessibility__configuedCellForCollectionView_indexPath_day___block_invoke(id *a1)
{
  v17[2] = a1;
  v17[1] = a1;
  v16 = 0;
  objc_opt_class();
  v11 = [a1[4] safeValueForKey:@"components"];
  v15 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v11);
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v17[0] = v14;
  v7 = [v14 calendar];
  v13 = [v7 dateFromComponents:v17[0]];
  *&v1 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  v9 = [v17[0] calendar];
  v8 = [v9 timeZone];
  v12 = AXDateStringForFormatWithTimeZone();
  MEMORY[0x29EDC9740](v8);
  if ([a1[4] safeBoolForKey:{@"isToday", MEMORY[0x29EDC9740](v9).n128_f64[0]}])
  {
    v6 = accessibilityLocalizedString(@"calendar.today");
    v2 = __UIAXStringForVariables();
    v3 = v12;
    v12 = v2;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v6);
  }

  v5 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v17, 0);

  return v5;
}

uint64_t __77__UICalendarViewAccessibility__configuedCellForCollectionView_indexPath_day___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained safeValueForKeyPath:@"_dataModel.visibleMonth"];
  v3 = [*(a1 + 32) safeValueForKey:@"month"];
  v6 = [v4 isEqual:?];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](WeakRetained);
  return v6;
}

- (void)_setVisibleMonth:(id)a3 animated:(BOOL)a4 updateDataSource:(BOOL)a5 updateCollectionView:(BOOL)a6 notifyDelegate:(BOOL)a7
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v12 = a7;
  v11.receiver = v17;
  v11.super_class = UICalendarViewAccessibility;
  [(UICalendarViewAccessibility *)&v11 _setVisibleMonth:location[0] animated:a4 updateDataSource:a5 updateCollectionView:a6 notifyDelegate:a7];
  [(UICalendarViewAccessibility *)v17 _accessibilityUpdateVisibleMonth];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityUpdateVisibleMonth
{
  v8 = self;
  v7[1] = a2;
  v6 = 0;
  objc_opt_class();
  v2 = [(UICalendarViewAccessibility *)v8 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v5 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v2);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  v7[0] = v4;
  v3 = 0;
  if (v4)
  {
    [v7[0] _accessibilityClearChildren];
  }

  if (!v7[0] || UIAccessibilityIsSwitchControlRunning())
  {
    objc_storeStrong(&v3, *MEMORY[0x29EDBDB28]);
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v3);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(v7, 0);
}

@end