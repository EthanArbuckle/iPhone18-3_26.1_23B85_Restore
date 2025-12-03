@interface FIUIChartUniformBarSeriesAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityLabelForBarYPoint:(double)point withValue:(id)value;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateAccessibilityElements;
- (void)layoutSubviews;
@end

@implementation FIUIChartUniformBarSeriesAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FIUIChartUniformBarSeries" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"FIUIChartUniformBarSeries" isKindOfClass:@"FIUIChartSeries"];
  [validationsCopy validateClass:@"FIUIChartUniformBarSeries" hasInstanceVariable:@"_plotPoints" withType:"NSArray"];
  [validationsCopy validateClass:@"FIUIChartUniformBarSeries" hasInstanceVariable:@"_barWidth" withType:"d"];
  [validationsCopy validateProtocol:@"FIUIChartPoint" hasRequiredInstanceMethod:@"xValue"];
}

- (id)_accessibilityLabelForBarYPoint:(double)point withValue:(id)value
{
  if (point == 0.0)
  {
    v4 = @"chart.inactive.hour";
  }

  else
  {
    v4 = @"chart.active.hour";
  }

  v5 = accessibilityLocalizedString(v4);

  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = FIUIChartUniformBarSeriesAccessibility;
  [(FIUIChartUniformBarSeriesAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(FIUIChartUniformBarSeriesAccessibility *)self _axUpdateAccessibilityElements];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = FIUIChartUniformBarSeriesAccessibility;
  [(FIUIChartUniformBarSeriesAccessibility *)&v3 layoutSubviews];
  [(FIUIChartUniformBarSeriesAccessibility *)self _axUpdateAccessibilityElements];
}

- (void)_axUpdateAccessibilityElements
{
  v3 = [FIUIChartBarAccessibilityElement accessibilityElementsForBarSeries:self];
  [(FIUIChartUniformBarSeriesAccessibility *)self setAccessibilityElements:v3];

  v4 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v4, 0);
}

@end