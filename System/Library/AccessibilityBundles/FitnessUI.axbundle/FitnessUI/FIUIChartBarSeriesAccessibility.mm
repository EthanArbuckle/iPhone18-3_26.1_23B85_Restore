@interface FIUIChartBarSeriesAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityLabelForBarYPoint:(double)point withValue:(id)value;
- (id)_accessibilityLocalizedStringForUnit:(id)unit value:(int64_t)value;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateAccessibilityElements;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)layoutSubviews;
@end

@implementation FIUIChartBarSeriesAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FIUIChartUniformBarSeries" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"FIUIChartBarSeries" isKindOfClass:@"FIUIChartSeries"];
  [validationsCopy validateClass:@"FIUIChartBarSeries" hasInstanceVariable:@"_plotPoints" withType:"NSArray"];
  [validationsCopy validateClass:@"FIUIChartBarSeries" hasInstanceVariable:@"_barWidth" withType:"d"];
  [validationsCopy validateClass:@"FIUIChartBarSeries" hasInstanceVariable:@"_barSpacing" withType:"d"];
  [validationsCopy validateProtocol:@"FIUIChartPoint" hasRequiredInstanceMethod:@"xValue"];
  [validationsCopy validateClass:@"FIUIChartBarSeries" hasInstanceMethod:@"drawLayer:inContext:" withFullSignature:{"v", "@", "^{CGContext=}", 0}];
}

- (id)_accessibilityLabelForBarYPoint:(double)point withValue:(id)value
{
  valueCopy = value;
  v6 = [(FIUIChartBarSeriesAccessibility *)self _accessibilityAncestorIsKindOf:AXSafeClassFromString()];
  v7 = [v6 safeValueForKey:@"chartUnit"];

  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  integerValue = [v8 integerValue];

  v10 = [(FIUIChartBarSeriesAccessibility *)self _accessibilityLocalizedStringForUnit:v7 value:integerValue];

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

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  v5.receiver = self;
  v5.super_class = FIUIChartBarSeriesAccessibility;
  [(FIUIChartBarSeriesAccessibility *)&v5 drawLayer:layer inContext:context];
  [(FIUIChartBarSeriesAccessibility *)self _axUpdateAccessibilityElements];
}

- (void)_axUpdateAccessibilityElements
{
  v3 = [FIUIChartBarAccessibilityElement accessibilityElementsForBarSeries:self];
  [(FIUIChartBarSeriesAccessibility *)self setAccessibilityElements:v3];

  v4 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v4, 0);
}

- (id)_accessibilityLocalizedStringForUnit:(id)unit value:(int64_t)value
{
  unitCopy = unit;
  v6 = +[HKUnit minuteUnit];

  if (v6 == unitCopy)
  {
    v9 = AXTimeStringForType();
    goto LABEL_5;
  }

  v7 = accessibilityUnitManager();
  userActiveEnergyBurnedUnit = [v7 userActiveEnergyBurnedUnit];

  if (userActiveEnergyBurnedUnit != unitCopy || ([HKQuantity quantityWithUnit:unitCopy doubleValue:value], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
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