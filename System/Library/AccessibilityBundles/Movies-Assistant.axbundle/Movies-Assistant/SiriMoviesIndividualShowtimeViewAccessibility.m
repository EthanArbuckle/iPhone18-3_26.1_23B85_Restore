@interface SiriMoviesIndividualShowtimeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SiriMoviesIndividualShowtimeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SiriMoviesIndividualShowtimeView" hasInstanceMethod:@"setSelected:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SiriMoviesIndividualShowtimeView" hasInstanceMethod:@"setHighlighted:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SiriMoviesIndividualShowtimeView" hasInstanceVariable:@"_timeLabel" withType:"UILabel"];
  [v3 validateClass:@"SiriMoviesIndividualShowtimeView" hasInstanceVariable:@"_showtimeTypeLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(SiriMoviesIndividualShowtimeViewAccessibility *)self safeValueForKey:@"_timeLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(SiriMoviesIndividualShowtimeViewAccessibility *)self safeValueForKey:@"_showtimeTypeLabel"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  if ([(SiriMoviesIndividualShowtimeViewAccessibility *)self accessibilityIsShowtimeSelected]|| [(SiriMoviesIndividualShowtimeViewAccessibility *)self accessibilityIsShowtimeHighlighted])
  {
    return *MEMORY[0x29EDC7FC0];
  }

  v4.receiver = self;
  v4.super_class = SiriMoviesIndividualShowtimeViewAccessibility;
  return [(SiriMoviesIndividualShowtimeViewAccessibility *)&v4 accessibilityTraits];
}

@end