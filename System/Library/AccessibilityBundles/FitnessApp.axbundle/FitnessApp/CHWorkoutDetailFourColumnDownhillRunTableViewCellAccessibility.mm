@interface CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)configureWithDownhillRunsStats:(id)a3 activityType:(id)a4 formattingManager:(id)a5;
@end

@implementation CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHWorkoutDetailFourColumnDownhillRunTableViewCell" hasInstanceMethod:@"configureWithDownhillRunsStats:activityType:formattingManager:" withFullSignature:{"v", "@", "@", "@", 0}];
  [v3 validateClass:@"CHWorkoutDetailFourColumnDownhillRunTableViewCell" hasInstanceMethod:@"configureWithDownhillRun:downhillRunIndex:activityType:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "@", "B", "@", 0}];
  [v3 validateClass:@"CHWorkoutDetailFourColumnDownhillRunTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (void)configureWithDownhillRunsStats:(id)a3 activityType:(id)a4 formattingManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility;
  [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)&v27 configureWithDownhillRunsStats:v8 activityType:v9 formattingManager:v10];
  objc_opt_class();
  v11 = [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
  v12 = __UIAccessibilityCastAsClass();

  v26 = v8;
  v13 = accessibilityLocalizedString(@"time.value");
  v14 = [v12 text];
  v15 = [NSString localizedStringWithFormat:v13, v14];
  [v12 setAccessibilityLabel:v15];

  objc_opt_class();
  v16 = [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnThreeLabel"];
  v17 = __UIAccessibilityCastAsClass();

  v18 = accessibilityLocalizedString(@"distance.value");
  v19 = [v17 text];
  v20 = [NSString localizedStringWithFormat:v18, v19];
  [v17 setAccessibilityLabel:v20];

  objc_opt_class();
  v21 = [(CHWorkoutDetailFourColumnDownhillRunTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnFourLabel"];
  v22 = __UIAccessibilityCastAsClass();

  v23 = accessibilityLocalizedString(@"vertical.value");
  v24 = [v22 text];
  v25 = [NSString localizedStringWithFormat:v23, v24];
  [v22 setAccessibilityLabel:v25];
}

@end