@interface CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)configureWithTrackLap:(id)a3 lapIndex:(int64_t)a4 workout:(id)a5 distanceUnit:(unint64_t)a6 activityType:(id)a7 activityMoveMode:(int64_t)a8 isLastCell:(BOOL)a9 formattingManager:(id)a10;
@end

@implementation CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHWorkoutDetailFourColumnTrackLapTableViewCell" hasInstanceMethod:@"configureWithTrackLap:lapIndex:workout:distanceUnit:activityType:activityMoveMode:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "@", "Q", "@", "q", "B", "@", 0}];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTrackLapTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"supportsDistanceForWorkout:workoutActivity:" withFullSignature:{"B", "@", "@", 0}];
  [v3 validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"fitnessUIFormattingManager" withFullSignature:{"@", 0}];
}

- (void)configureWithTrackLap:(id)a3 lapIndex:(int64_t)a4 workout:(id)a5 distanceUnit:(unint64_t)a6 activityType:(id)a7 activityMoveMode:(int64_t)a8 isLastCell:(BOOL)a9 formattingManager:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a7;
  v19 = a10;
  v52.receiver = self;
  v52.super_class = CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility;
  [(CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility *)&v52 configureWithTrackLap:v16 lapIndex:a4 workout:v17 distanceUnit:a6 activityType:v18 activityMoveMode:a8 isLastCell:a9 formattingManager:v19];
  if (v16)
  {
    v46 = v18;
    objc_opt_class();
    v20 = [(CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnOneLabel"];
    v21 = __UIAccessibilityCastAsClass();

    v22 = accessibilityLocalizedString(@"lap.number");
    v23 = [v21 text];
    v24 = [NSString localizedStringWithFormat:v22, v23];
    v45 = v21;
    [v21 setAccessibilityLabel:v24];

    LOBYTE(v48) = 0;
    objc_opt_class();
    v25 = [(CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnThreeLabel"];
    v26 = __UIAccessibilityCastAsClass();

    v27 = accessibilityLocalizedString(@"time.value");
    v28 = [v26 text];
    v29 = [NSString localizedStringWithFormat:v27, v28];
    [v26 setAccessibilityLabel:v29];

    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v30 = v19;
    v47 = v17;
    AXPerformSafeBlock();
    LODWORD(v21) = *(v49 + 24);

    _Block_object_dispose(&v48, 8);
    if (v21 == 1)
    {
      LOBYTE(v48) = 0;
      objc_opt_class();
      v31 = [(CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
      v32 = __UIAccessibilityCastAsClass();

      v18 = v46;
      if (v48 != 1)
      {
        v33 = accessibilityLocalizedString(@"distance.value");
        v34 = [v32 text];
        v35 = [NSString localizedStringWithFormat:v33, v34];
        [v32 setAccessibilityLabel:v35];

        LOBYTE(v48) = 0;
        objc_opt_class();
        v36 = [(CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnFourLabel"];
        v37 = __UIAccessibilityCastAsClass();

        if (v48 != 1)
        {
          v38 = [v37 text];
          if ([v38 containsString:@"--"])
          {
            accessibilityLocalizedString(@"no.data");
          }

          else
          {
            [v37 text];
          }
          v41 = ;

          v42 = accessibilityLocalizedString(@"pace.value");
          v43 = [NSString localizedStringWithFormat:v42, v41];
          [v37 setAccessibilityLabel:v43];
          goto LABEL_13;
        }
      }
    }

    else
    {
      v18 = v46;
      if (a8 != 1)
      {
LABEL_14:

        goto LABEL_15;
      }

      LOBYTE(v48) = 0;
      objc_opt_class();
      v39 = [v30 safeValueForKey:@"fitnessUIFormattingManager"];
      v32 = __UIAccessibilityCastAsClass();

      if (v48 != 1)
      {
        v37 = [v32 localizedLongActiveEnergyUnitString];
        LOBYTE(v48) = 0;
        objc_opt_class();
        v40 = [(CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
        v41 = __UIAccessibilityCastAsClass();

        if (v48 != 1)
        {
          v42 = accessibilityLocalizedString(@"energy.value");
          v43 = [v41 text];
          v44 = [NSString localizedStringWithFormat:v42, v37, v43];
          [v41 setAccessibilityLabel:v44];

          v18 = v46;
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    abort();
  }

LABEL_15:
}

id __174__CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility_configureWithTrackLap_lapIndex_workout_distanceUnit_activityType_activityMoveMode_isLastCell_formattingManager___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) supportsDistanceForWorkout:*(a1 + 40) workoutActivity:0];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end