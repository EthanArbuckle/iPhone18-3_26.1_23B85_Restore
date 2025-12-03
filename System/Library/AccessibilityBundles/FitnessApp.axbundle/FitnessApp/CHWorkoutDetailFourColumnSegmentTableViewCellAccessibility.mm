@interface CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)configureWithSegment:(id)segment segmentIndex:(int64_t)index workout:(id)workout trackDistanceUnit:(unint64_t)unit activityType:(id)type activityMoveMode:(int64_t)mode isLastCell:(BOOL)cell formattingManager:(id)self0;
@end

@implementation CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnSegmentTableViewCell" hasInstanceMethod:@"configureWithSegment:segmentIndex:workout:trackDistanceUnit:activityType:activityMoveMode:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "@", "Q", "@", "q", "B", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnSegmentTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"supportsDistanceForWorkout:workoutActivity:" withFullSignature:{"B", "@", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"supportsPaceForWorkout:workoutActivity:" withFullSignature:{"B", "@", "@", 0}];
  [validationsCopy validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"fitnessUIFormattingManager" withFullSignature:{"@", 0}];
}

- (void)configureWithSegment:(id)segment segmentIndex:(int64_t)index workout:(id)workout trackDistanceUnit:(unint64_t)unit activityType:(id)type activityMoveMode:(int64_t)mode isLastCell:(BOOL)cell formattingManager:(id)self0
{
  segmentCopy = segment;
  workoutCopy = workout;
  typeCopy = type;
  managerCopy = manager;
  v62.receiver = self;
  v62.super_class = CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility;
  [(CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility *)&v62 configureWithSegment:segmentCopy segmentIndex:index workout:workoutCopy trackDistanceUnit:unit activityType:typeCopy activityMoveMode:mode isLastCell:cell formattingManager:managerCopy];
  if (segmentCopy)
  {
    LOBYTE(v58) = 0;
    objc_opt_class();
    v20 = [(CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnOneLabel"];
    v21 = __UIAccessibilityCastAsClass();

    v53 = typeCopy;
    v22 = accessibilityLocalizedString(@"segment.number");
    text = [v21 text];
    v24 = [NSString localizedStringWithFormat:v22, text];
    v54 = v21;
    [v21 setAccessibilityLabel:v24];

    LOBYTE(v58) = 0;
    objc_opt_class();
    v25 = [(CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnThreeLabel"];
    v26 = __UIAccessibilityCastAsClass();

    v27 = accessibilityLocalizedString(@"time.value");
    text2 = [v26 text];
    v29 = [NSString localizedStringWithFormat:v27, text2];
    v52 = v26;
    [v26 setAccessibilityLabel:v29];

    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    LOBYTE(v61) = 0;
    v30 = managerCopy;
    v31 = workoutCopy;
    AXPerformSafeBlock();
    LODWORD(v29) = *(v59 + 24);

    _Block_object_dispose(&v58, 8);
    if (v29 == 1)
    {
      LOBYTE(v58) = 0;
      objc_opt_class();
      v32 = [(CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
      v33 = __UIAccessibilityCastAsClass();

      if (v58 != 1)
      {
        v34 = accessibilityLocalizedString(@"distance.value");
        text3 = [v33 text];
        v36 = [NSString localizedStringWithFormat:v34, text3];
        v51 = v33;
        [v33 setAccessibilityLabel:v36];

        v58 = 0;
        v59 = &v58;
        v60 = 0x2020000000;
        LOBYTE(v61) = 0;
        v56 = v30;
        v57 = v31;
        AXPerformSafeBlock();
        LODWORD(v36) = *(v59 + 24);

        _Block_object_dispose(&v58, 8);
        v37 = v36 == 1;
        v38 = v54;
        if (!v37)
        {
          typeCopy = v53;
          v50 = v51;
LABEL_23:

          goto LABEL_24;
        }

        v58 = 0;
        v59 = &v58;
        v60 = 0x2020000000;
        v61 = 0;
        v55 = v53;
        AXPerformSafeBlock();
        v50 = v33;
        v39 = *(v59 + 6);

        _Block_object_dispose(&v58, 8);
        v40 = v39 ? @"average.speed.value" : @"pace.value";
        localizedLongActiveEnergyUnitString = accessibilityLocalizedString(v40);
        LOBYTE(v58) = 0;
        v42 = objc_opt_class();
        v43 = [(CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnFourLabel"];
        v44 = __UIAccessibilityCastAsClass();

        if (v58 != 1)
        {
          if (v39 || ([v44 text], v42 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v42, "containsString:", @"--")))
          {
            text4 = [v44 text];
            if (v39)
            {
LABEL_21:
              text5 = [NSString localizedStringWithFormat:localizedLongActiveEnergyUnitString, text4];
              [v44 setAccessibilityLabel:text5];
              typeCopy = v53;
              goto LABEL_22;
            }
          }

          else
          {
            text4 = accessibilityLocalizedString(@"no.data");
          }

          goto LABEL_21;
        }
      }
    }

    else
    {
      typeCopy = v53;
      v38 = v54;
      if (mode != 1)
      {
LABEL_24:

        goto LABEL_25;
      }

      LOBYTE(v58) = 0;
      objc_opt_class();
      v46 = [v30 safeValueForKey:@"fitnessUIFormattingManager"];
      v50 = __UIAccessibilityCastAsClass();

      if (v58 != 1)
      {
        localizedLongActiveEnergyUnitString = [v50 localizedLongActiveEnergyUnitString];
        LOBYTE(v58) = 0;
        objc_opt_class();
        v47 = [(CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
        v44 = __UIAccessibilityCastAsClass();

        if (v58 != 1)
        {
          text4 = accessibilityLocalizedString(@"energy.value");
          text5 = [v44 text];
          v49 = [NSString localizedStringWithFormat:text4, localizedLongActiveEnergyUnitString, text5];
          [v44 setAccessibilityLabel:v49];

LABEL_22:
          v38 = v54;
          goto LABEL_23;
        }
      }
    }

    abort();
  }

LABEL_25:
}

id __181__CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility_configureWithSegment_segmentIndex_workout_trackDistanceUnit_activityType_activityMoveMode_isLastCell_formattingManager___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) supportsDistanceForWorkout:*(a1 + 40) workoutActivity:0];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id __181__CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility_configureWithSegment_segmentIndex_workout_trackDistanceUnit_activityType_activityMoveMode_isLastCell_formattingManager___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) supportsPaceForWorkout:*(a1 + 40) workoutActivity:0];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __181__CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility_configureWithSegment_segmentIndex_workout_trackDistanceUnit_activityType_activityMoveMode_isLastCell_formattingManager___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = FIUIPaceFormatForWorkoutActivityType();
  *(*(*(a1 + 40) + 8) + 24) = result == 4;
  return result;
}

@end