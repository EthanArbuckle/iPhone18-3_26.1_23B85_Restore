@interface CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)configureWithTrackLap:(id)lap lapIndex:(int64_t)index workout:(id)workout distanceUnit:(unint64_t)unit activityType:(id)type activityMoveMode:(int64_t)mode isLastCell:(BOOL)cell formattingManager:(id)self0;
@end

@implementation CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTrackLapTableViewCell" hasInstanceMethod:@"configureWithTrackLap:lapIndex:workout:distanceUnit:activityType:activityMoveMode:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "@", "Q", "@", "q", "B", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTrackLapTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"supportsDistanceForWorkout:workoutActivity:" withFullSignature:{"B", "@", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"fitnessUIFormattingManager" withFullSignature:{"@", 0}];
}

- (void)configureWithTrackLap:(id)lap lapIndex:(int64_t)index workout:(id)workout distanceUnit:(unint64_t)unit activityType:(id)type activityMoveMode:(int64_t)mode isLastCell:(BOOL)cell formattingManager:(id)self0
{
  lapCopy = lap;
  workoutCopy = workout;
  typeCopy = type;
  managerCopy = manager;
  v52.receiver = self;
  v52.super_class = CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility;
  [(CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility *)&v52 configureWithTrackLap:lapCopy lapIndex:index workout:workoutCopy distanceUnit:unit activityType:typeCopy activityMoveMode:mode isLastCell:cell formattingManager:managerCopy];
  if (lapCopy)
  {
    v46 = typeCopy;
    objc_opt_class();
    v20 = [(CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnOneLabel"];
    v21 = __UIAccessibilityCastAsClass();

    v22 = accessibilityLocalizedString(@"lap.number");
    text = [v21 text];
    v24 = [NSString localizedStringWithFormat:v22, text];
    v45 = v21;
    [v21 setAccessibilityLabel:v24];

    LOBYTE(v48) = 0;
    objc_opt_class();
    v25 = [(CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnThreeLabel"];
    v26 = __UIAccessibilityCastAsClass();

    v27 = accessibilityLocalizedString(@"time.value");
    text2 = [v26 text];
    v29 = [NSString localizedStringWithFormat:v27, text2];
    [v26 setAccessibilityLabel:v29];

    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v30 = managerCopy;
    v47 = workoutCopy;
    AXPerformSafeBlock();
    LODWORD(v21) = *(v49 + 24);

    _Block_object_dispose(&v48, 8);
    if (v21 == 1)
    {
      LOBYTE(v48) = 0;
      objc_opt_class();
      v31 = [(CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
      v32 = __UIAccessibilityCastAsClass();

      typeCopy = v46;
      if (v48 != 1)
      {
        v33 = accessibilityLocalizedString(@"distance.value");
        text3 = [v32 text];
        v35 = [NSString localizedStringWithFormat:v33, text3];
        [v32 setAccessibilityLabel:v35];

        LOBYTE(v48) = 0;
        objc_opt_class();
        v36 = [(CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnFourLabel"];
        localizedLongActiveEnergyUnitString = __UIAccessibilityCastAsClass();

        if (v48 != 1)
        {
          text4 = [localizedLongActiveEnergyUnitString text];
          if ([text4 containsString:@"--"])
          {
            accessibilityLocalizedString(@"no.data");
          }

          else
          {
            [localizedLongActiveEnergyUnitString text];
          }
          v41 = ;

          v42 = accessibilityLocalizedString(@"pace.value");
          text5 = [NSString localizedStringWithFormat:v42, v41];
          [localizedLongActiveEnergyUnitString setAccessibilityLabel:text5];
          goto LABEL_13;
        }
      }
    }

    else
    {
      typeCopy = v46;
      if (mode != 1)
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
        localizedLongActiveEnergyUnitString = [v32 localizedLongActiveEnergyUnitString];
        LOBYTE(v48) = 0;
        objc_opt_class();
        v40 = [(CHWorkoutDetailFourColumnTrackLapTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
        v41 = __UIAccessibilityCastAsClass();

        if (v48 != 1)
        {
          v42 = accessibilityLocalizedString(@"energy.value");
          text5 = [v41 text];
          v44 = [NSString localizedStringWithFormat:v42, localizedLongActiveEnergyUnitString, text5];
          [v41 setAccessibilityLabel:v44];

          typeCopy = v46;
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