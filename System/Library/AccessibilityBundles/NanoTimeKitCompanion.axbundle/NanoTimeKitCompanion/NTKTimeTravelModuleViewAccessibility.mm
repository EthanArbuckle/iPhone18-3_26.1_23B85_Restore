@interface NTKTimeTravelModuleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (NTKTimeTravelModuleViewAccessibility)initWithMaximumWidth:(double)width;
- (id)_axRoundedDateForDate:(id)date;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NTKTimeTravelModuleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKTimeTravelModuleView" hasInstanceVariable:@"_timeScrubDifferenceLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"NTKTimeTravelModuleView" hasInstanceVariable:@"_timeScrubNowLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"NTKTimeTravelModuleView" hasInstanceMethod:@"initWithMaximumWidth:" withFullSignature:{"@", "d", 0}];
  [validationsCopy validateClass:@"CLKDate" hasClassMethod:@"complicationDate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKTimeTravelModuleView" hasInstanceVariable:@"_date" withType:"NSDate"];
}

- (NTKTimeTravelModuleViewAccessibility)initWithMaximumWidth:(double)width
{
  v5.receiver = self;
  v5.super_class = NTKTimeTravelModuleViewAccessibility;
  v3 = [(NTKTimeTravelModuleViewAccessibility *)&v5 initWithMaximumWidth:width];
  [(NTKTimeTravelModuleViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = [(NTKTimeTravelModuleViewAccessibility *)self safeValueForKey:@"_timeScrubDifferenceLabel"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(NTKTimeTravelModuleViewAccessibility *)self safeValueForKey:@"_timeScrubNowLabel"];
  [v4 setIsAccessibilityElement:0];

  v5.receiver = self;
  v5.super_class = NTKTimeTravelModuleViewAccessibility;
  [(NTKTimeTravelModuleViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(NTKTimeTravelModuleViewAccessibility *)self safeValueForKey:@"_timeScrubDifferenceLabel"];
  if ([v3 _accessibilityViewIsVisible])
  {
    _accessibilityViewIsVisible = 1;
  }

  else
  {
    v5 = [(NTKTimeTravelModuleViewAccessibility *)self safeValueForKey:@"_timeScrubNowLabel"];
    _accessibilityViewIsVisible = [v5 _accessibilityViewIsVisible];
  }

  return _accessibilityViewIsVisible;
}

- (id)_axRoundedDateForDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    v4 = +[NSCalendar currentCalendar];
    v5 = [v4 components:126 fromDate:dateCopy];

    v6 = [v4 dateFromComponents:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(NTKTimeTravelModuleViewAccessibility *)self safeValueForKey:@"_timeScrubNowLabel"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 _accessibilityViewIsVisible])
  {
    accessibilityLabel = [v4 accessibilityLabel];
  }

  else
  {
    v6 = [AXSafeClassFromString() safeValueForKey:@"complicationDate"];
    v7 = [(NTKTimeTravelModuleViewAccessibility *)self _axRoundedDateForDate:v6];

    v8 = [(NTKTimeTravelModuleViewAccessibility *)self safeValueForKey:@"_date"];
    [v8 timeIntervalSinceDate:v7];
    accessibilityLabel = AXDurationStringForDurationWithSeconds();
  }

  return accessibilityLabel;
}

@end