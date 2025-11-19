@interface EKCalendarChooserCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation EKCalendarChooserCellAccessibility

- (unint64_t)accessibilityTraits
{
  if ([(EKCalendarChooserCellAccessibility *)self safeBoolForKey:@"checked"]&& ([(EKCalendarChooserCellAccessibility *)self safeBoolForKey:@"showCheckmarksOnLeft"]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(EKCalendarChooserCellAccessibility *)self safeBoolForKey:@"isSelected"];
  }

  v13.receiver = self;
  v13.super_class = EKCalendarChooserCellAccessibility;
  v4 = [(EKCalendarChooserCellAccessibility *)&v13 accessibilityTraits];
  v5 = *MEMORY[0x29EDC7FC0];
  if ((v3 & 1) == 0)
  {
    v5 = 0;
  }

  v6 = v5 | v4;
  v7 = [(EKCalendarChooserCellAccessibility *)self safeValueForKey:@"textLabel"];
  v8 = [v7 safeValueForKey:@"alpha"];
  [v8 doubleValue];
  v10 = v9;

  v11 = *MEMORY[0x29EDC7FA8];
  if (v10 >= 1.0)
  {
    v11 = 0;
  }

  return v6 | v11;
}

@end