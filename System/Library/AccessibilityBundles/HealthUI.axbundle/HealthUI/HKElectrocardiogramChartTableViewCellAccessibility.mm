@interface HKElectrocardiogramChartTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (HKElectrocardiogramChartTableViewCellAccessibility)initWithGridSize:(CGSize)size reuseIdentifier:(id)identifier;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HKElectrocardiogramChartTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HKElectrocardiogramChartTableViewCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"HKElectrocardiogramChartTableViewCell" hasInstanceVariable:@"_scrollView" withType:"UIScrollView"];
  [validationsCopy validateClass:@"HKElectrocardiogramChartTableViewCell" hasInstanceMethod:@"initWithGridSize:reuseIdentifier:" withFullSignature:{"{CGSize=dd}", "@", 0}];
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
  contentView = [v3 contentView];

  if (contentView)
  {
    contentView2 = [v3 contentView];
    _accessibleSubviews = [contentView2 _accessibleSubviews];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HKElectrocardiogramChartTableViewCellAccessibility;
    _accessibleSubviews = [(HKElectrocardiogramChartTableViewCellAccessibility *)&v8 accessibilityElements];
  }

  return _accessibleSubviews;
}

- (HKElectrocardiogramChartTableViewCellAccessibility)initWithGridSize:(CGSize)size reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = HKElectrocardiogramChartTableViewCellAccessibility;
  v4 = [(HKElectrocardiogramChartTableViewCellAccessibility *)&v6 initWithGridSize:identifier reuseIdentifier:size.width, size.height];
  [(HKElectrocardiogramChartTableViewCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end