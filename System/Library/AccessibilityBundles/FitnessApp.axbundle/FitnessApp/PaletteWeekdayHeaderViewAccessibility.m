@interface PaletteWeekdayHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (PaletteWeekdayHeaderViewAccessibility)initWithNavigationPalette:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation PaletteWeekdayHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PaletteWeekdayHeaderView" hasInstanceVariable:@"_weekdayLabels" withType:"NSMutableArray"];
  [v3 validateClass:@"PaletteWeekdayHeaderView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (PaletteWeekdayHeaderViewAccessibility)initWithNavigationPalette:(id)a3
{
  v5.receiver = self;
  v5.super_class = PaletteWeekdayHeaderViewAccessibility;
  v3 = [(PaletteWeekdayHeaderViewAccessibility *)&v5 initWithNavigationPalette:a3];
  [(PaletteWeekdayHeaderViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PaletteWeekdayHeaderViewAccessibility;
  [(PaletteWeekdayHeaderViewAccessibility *)&v3 layoutSubviews];
  [(PaletteWeekdayHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  if (_accessibilityLoadAccessibilityInformation_onceToken != -1)
  {
    [PaletteWeekdayHeaderViewAccessibility _accessibilityLoadAccessibilityInformation];
  }

  v3 = [_accessibilityLoadAccessibilityInformation_DateFormatter standaloneWeekdaySymbols];
  v4 = [(PaletteWeekdayHeaderViewAccessibility *)self accessibilityElements];
  v14 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  [v5 bounds];
  v10[1] = 3221225472;
  v10[0] = _NSConcreteStackBlock;
  v10[2] = __83__PaletteWeekdayHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v10[3] = &unk_1C838;
  v10[4] = self;
  v11 = v3;
  v12 = v6 / 7.0;
  v13 = v7;
  v8 = v3;
  [v4 enumerateObjectsUsingBlock:v10];
  v9.receiver = self;
  v9.super_class = PaletteWeekdayHeaderViewAccessibility;
  [(PaletteWeekdayHeaderViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
}

void __83__PaletteWeekdayHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id a1)
{
  _accessibilityLoadAccessibilityInformation_DateFormatter = objc_alloc_init(NSDateFormatter);

  _objc_release_x1();
}

void __83__PaletteWeekdayHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [v5 setAccessibilityContainer:*(a1 + 32)];
  if ([*(a1 + 40) count] > a3)
  {
    [v5 setIsAccessibilityElement:1];
    LOBYTE(location) = 0;
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    objc_initWeak(&location, v6);
    if (v6 && *(a1 + 48) > 0.0 && *(a1 + 56) > 0.0)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = __83__PaletteWeekdayHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
      v7[3] = &unk_1C810;
      objc_copyWeak(&v8, &location);
      v9 = *(a1 + 48);
      [v5 _setAccessibilityFrameBlock:v7];
      objc_destroyWeak(&v8);
    }

    objc_destroyWeak(&location);
  }
}

double __83__PaletteWeekdayHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = v4 - v8;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = objc_loadWeakRetained((a1 + 32));
  v15.origin.x = v9;
  v15.origin.y = v6;
  v15.size.width = v10;
  v15.size.height = v11;
  *&v13 = UIAccessibilityConvertFrameToScreenCoordinates(v15, v12);

  return v13;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  x = a3.x;
  [(PaletteWeekdayHeaderViewAccessibility *)self bounds:a4];
  v7 = vcvtmd_u64_f64(x / (v6 / 7.0));
  v8 = [(PaletteWeekdayHeaderViewAccessibility *)self accessibilityElements];
  if ([v8 count] <= v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:v7];
  }

  return v9;
}

- (id)accessibilityElements
{
  v2 = [(PaletteWeekdayHeaderViewAccessibility *)self safeValueForKey:@"_weekdayLabels"];
  v3 = __UIAccessibilitySafeClass();

  return v3;
}

@end