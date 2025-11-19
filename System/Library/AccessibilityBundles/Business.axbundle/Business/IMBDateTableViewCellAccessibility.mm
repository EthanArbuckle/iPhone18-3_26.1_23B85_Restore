@interface IMBDateTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation IMBDateTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Business.IMBDateTableViewCell" hasInstanceMethod:@"dateLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Business.IMBDateTableViewCell" hasInstanceMethod:@"conflictsLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Business.IMBDateTableViewCell" hasInstanceMethod:@"showMoreButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Business.IMBDateTableViewCell" hasInstanceMethod:@"viewInCalendarButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Business.IMBDateTableViewCell" hasInstanceMethod:@"timeslotContainerView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v13[5] = *MEMORY[0x29EDCA608];
  v3 = [(IMBDateTableViewCellAccessibility *)self safeValueForKey:@"dateLabel"];
  v4 = [(IMBDateTableViewCellAccessibility *)self safeValueForKey:@"conflictsLabel"];
  v5 = [(IMBDateTableViewCellAccessibility *)self safeValueForKey:@"showMoreButton"];
  v6 = [(IMBDateTableViewCellAccessibility *)self safeValueForKey:@"viewInCalendarButton"];
  v7 = [(IMBDateTableViewCellAccessibility *)self safeValueForKey:@"timeslotContainerView"];
  v8 = objc_opt_new();
  v9 = [v7 accessibilityElements];
  v13[2] = v9;
  v13[3] = v4;
  v13[4] = v6;
  v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:5];
  [v8 axSafelyAddObjectsFromArray:v10];

  v11 = *MEMORY[0x29EDCA608];

  return v8;
}

@end