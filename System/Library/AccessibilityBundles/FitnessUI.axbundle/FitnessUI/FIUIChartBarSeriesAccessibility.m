@interface FIUIChartBarSeriesAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityLabelForBarYPoint:(double)a3 withValue:(id)a4;
- (id)_accessibilityLocalizedStringForUnit:(id)a3 value:(int64_t)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateAccessibilityElements;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)layoutSubviews;
@end

@implementation FIUIChartBarSeriesAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FIUIChartUniformBarSeries" isKindOfClass:@"UIView"];
  [v3 validateClass:@"FIUIChartBarSeries" isKindOfClass:@"FIUIChartSeries"];
  [v3 validateClass:@"FIUIChartBarSeries" hasInstanceVariable:@"_plotPoints" withType:"NSArray"];
  [v3 validateClass:@"FIUIChartBarSeries" hasInstanceVariable:@"_barWidth" withType:"d"];
  [v3 validateClass:@"FIUIChartBarSeries" hasInstanceVariable:@"_barSpacing" withType:"d"];
  [v3 validateProtocol:@"FIUIChartPoint" hasRequiredInstanceMethod:@"xValue"];
  [v3 validateClass:@"FIUIChartBarSeries" hasInstanceMethod:@"drawLayer:inContext:" withFullSignature:{"v", "@", "^{CGContext=}", 0}];
}

- (id)_accessibilityLabelForBarYPoint:(double)a3 withValue:(id)a4
{
  v5 = a4;
  v6 = [(FIUIChartBarSeriesAccessibility *)self _accessibilityAncestorIsKindOf:AXSafeClassFromString()];
  v7 = [v6 safeValueForKey:@"chartUnit"];

  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v9 = [v8 integerValue];

  v10 = [(FIUIChartBarSeriesAccessibility *)self _accessibilityLocalizedStringForUnit:v7 value:v9];

  return v10;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = FIUIChartBarSeriesAccessibility;
  [(FIUIChartBarSeriesAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(FIUIChartBarSeriesAccessibility *)self _axUpdateAccessibilityElements];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = FIUIChartBarSeriesAccessibility;
  [(FIUIChartBarSeriesAccessibility *)&v3 layoutSubviews];
  [(FIUIChartBarSeriesAccessibility *)self _axUpdateAccessibilityElements];
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v5.receiver = self;
  v5.super_class = FIUIChartBarSeriesAccessibility;
  [(FIUIChartBarSeriesAccessibility *)&v5 drawLayer:a3 inContext:a4];
  [(FIUIChartBarSeriesAccessibility *)self _axUpdateAccessibilityElements];
}

- (void)_axUpdateAccessibilityElements
{
  v3 = [FIUIChartBarAccessibilityElement accessibilityElementsForBarSeries:self];
  [(FIUIChartBarSeriesAccessibility *)self setAccessibilityElements:v3];

  v4 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v4, 0);
}

- (id)_accessibilityLocalizedStringForUnit:(id)a3 value:(int64_t)a4
{
  v5 = a3;
  v6 = +[HKUnit minuteUnit];

  if (v6 == v5)
  {
    v9 = AXTimeStringForType();
    goto LABEL_5;
  }

  v7 = accessibilityUnitManager();
  v8 = [v7 userActiveEnergyBurnedUnit];

  if (v8 != v5 || ([HKQuantity quantityWithUnit:v5 doubleValue:a4], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = AXFormatInteger();
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  v13 = v12;
  v14 = accessibilityFormattingManager();
  v10 = [v14 localizedStringWithActiveEnergy:v13 unitStyle:3];

LABEL_6:

  return v10;
}

@end