@interface NTKTimeTravelModuleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (NTKTimeTravelModuleViewAccessibility)initWithMaximumWidth:(double)a3;
- (id)_axRoundedDateForDate:(id)a3;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NTKTimeTravelModuleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKTimeTravelModuleView" hasInstanceVariable:@"_timeScrubDifferenceLabel" withType:"UILabel"];
  [v3 validateClass:@"NTKTimeTravelModuleView" hasInstanceVariable:@"_timeScrubNowLabel" withType:"UILabel"];
  [v3 validateClass:@"NTKTimeTravelModuleView" hasInstanceMethod:@"initWithMaximumWidth:" withFullSignature:{"@", "d", 0}];
  [v3 validateClass:@"CLKDate" hasClassMethod:@"complicationDate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKTimeTravelModuleView" hasInstanceVariable:@"_date" withType:"NSDate"];
}

- (NTKTimeTravelModuleViewAccessibility)initWithMaximumWidth:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKTimeTravelModuleViewAccessibility;
  v3 = [(NTKTimeTravelModuleViewAccessibility *)&v5 initWithMaximumWidth:a3];
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
    v4 = 1;
  }

  else
  {
    v5 = [(NTKTimeTravelModuleViewAccessibility *)self safeValueForKey:@"_timeScrubNowLabel"];
    v4 = [v5 _accessibilityViewIsVisible];
  }

  return v4;
}

- (id)_axRoundedDateForDate:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[NSCalendar currentCalendar];
    v5 = [v4 components:126 fromDate:v3];

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
    v5 = [v4 accessibilityLabel];
  }

  else
  {
    v6 = [AXSafeClassFromString() safeValueForKey:@"complicationDate"];
    v7 = [(NTKTimeTravelModuleViewAccessibility *)self _axRoundedDateForDate:v6];

    v8 = [(NTKTimeTravelModuleViewAccessibility *)self safeValueForKey:@"_date"];
    [v8 timeIntervalSinceDate:v7];
    v5 = AXDurationStringForDurationWithSeconds();
  }

  return v5;
}

@end