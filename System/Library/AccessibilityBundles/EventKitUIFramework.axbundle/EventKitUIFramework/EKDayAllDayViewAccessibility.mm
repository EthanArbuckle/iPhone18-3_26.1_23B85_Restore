@interface EKDayAllDayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (EKDayAllDayViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateAllDayLabel;
@end

@implementation EKDayAllDayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKDayAllDayView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"EKDayAllDayView" hasInstanceVariable:@"_allDay" withType:"UILabel"];
}

- (void)_axAnnotateAllDayLabel
{
  v2 = [(EKDayAllDayViewAccessibility *)self safeValueForKey:@"_allDay"];
  [v2 _accessibilitySetIsSpeakThisElement:0];
  [v2 setAccessibilityIdentifier:@"AllDayLabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = EKDayAllDayViewAccessibility;
  [(EKDayAllDayViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(EKDayAllDayViewAccessibility *)self _axAnnotateAllDayLabel];
}

- (EKDayAllDayViewAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = EKDayAllDayViewAccessibility;
  v3 = [(EKDayAllDayViewAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(EKDayAllDayViewAccessibility *)v3 _axAnnotateAllDayLabel];
  }

  return v4;
}

@end