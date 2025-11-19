@interface HKElectrocardiogramChartTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (HKElectrocardiogramChartTableViewCellAccessibility)initWithGridSize:(CGSize)a3 reuseIdentifier:(id)a4;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HKElectrocardiogramChartTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HKElectrocardiogramChartTableViewCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"HKElectrocardiogramChartTableViewCell" hasInstanceVariable:@"_scrollView" withType:"UIScrollView"];
  [v3 validateClass:@"HKElectrocardiogramChartTableViewCell" hasInstanceMethod:@"initWithGridSize:reuseIdentifier:" withFullSignature:{"{CGSize=dd}", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = HKElectrocardiogramChartTableViewCellAccessibility;
  [(HKElectrocardiogramChartTableViewCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(HKElectrocardiogramChartTableViewCellAccessibility *)self safeValueForKey:@"_scrollView"];
  [v3 setAccessibilityElementsHidden:1];
}

- (id)accessibilityElements
{
  v9 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 contentView];

  if (v4)
  {
    v5 = [v3 contentView];
    v6 = [v5 _accessibleSubviews];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HKElectrocardiogramChartTableViewCellAccessibility;
    v6 = [(HKElectrocardiogramChartTableViewCellAccessibility *)&v8 accessibilityElements];
  }

  return v6;
}

- (HKElectrocardiogramChartTableViewCellAccessibility)initWithGridSize:(CGSize)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = HKElectrocardiogramChartTableViewCellAccessibility;
  v4 = [(HKElectrocardiogramChartTableViewCellAccessibility *)&v6 initWithGridSize:a4 reuseIdentifier:a3.width, a3.height];
  [(HKElectrocardiogramChartTableViewCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end