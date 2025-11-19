@interface FUFlightViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3;
- (id)_accessibilityGetScrollView;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation FUFlightViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FUFlightView" hasInstanceMethod:@"mapView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FUFlightView" hasInstanceMethod:@"errorView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FUFlightView" hasInstanceMethod:@"loadingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FUFlightStep" hasInstanceMethod:@"time" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FUFlightView" hasInstanceVariable:@"_planeTracker" withType:"FUPlaneTrackerAnnotationView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = FUFlightViewAccessibility;
  [(FUFlightViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(FUFlightViewAccessibility *)self safeValueForKey:@"_planeTracker"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 _accessibilityLoadAccessibilityInformation];
  v5 = [(FUFlightViewAccessibility *)self safeValueForKey:@"mapView"];
  v6 = accessibilityLocalizedString(@"flight.tracking.map");
  [v5 setAccessibilityLabel:v6];

  [v5 setAccessibilityContainerType:4];
}

- (id)_accessibilityGetScrollView
{
  objc_opt_class();
  v3 = [(FUFlightViewAccessibility *)self safeValueForKey:@"labelAirlineName"];
  v4 = __UIAccessibilityCastAsClass();

  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = 0;
  do
  {
    if (v4 == self || v5)
    {
      break;
    }

    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 ? v4 : 0;
    v6 = [(FUFlightViewAccessibility *)v4 superview];

    v4 = v6;
  }

  while (v6);
  if (!v5)
  {
LABEL_10:
    _AXLogWithFacility();
    v5 = 0;
  }

  return v5;
}

- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3
{
  v4 = a3;
  v5 = [(FUFlightViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(FUFlightViewAccessibility *)self _accessibilityGetScrollView];
    v8 = [v4 _accessibilityWindow];
    [v4 accessibilityFrame];
    [v8 convertRect:0 fromWindow:?];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v7 convertRect:0 fromView:{v10, v12, v14, v16}];
    [v7 scrollRectToVisible:0 animated:?];
    v17 = v7 != 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)accessibilityElements
{
  v12[1] = *MEMORY[0x29EDCA608];
  v3 = [(FUFlightViewAccessibility *)self safeValueForKey:@"errorView"];
  v4 = [v3 _accessibilityViewIsVisible];

  if (v4)
  {
    v5 = [(FUFlightViewAccessibility *)self safeValueForKey:@"errorView"];
    v12[0] = v5;
    v6 = v12;
LABEL_5:
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:1];

    goto LABEL_7;
  }

  v7 = [(FUFlightViewAccessibility *)self safeValueForKey:@"loadingView"];
  v8 = [v7 _accessibilityViewIsVisible];

  if (v8)
  {
    v5 = [(FUFlightViewAccessibility *)self safeValueForKey:@"loadingView"];
    v11 = v5;
    v6 = &v11;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end