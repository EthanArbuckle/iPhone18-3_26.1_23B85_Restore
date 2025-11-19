@interface CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)configureWithSegment:(id)a3 segmentIndex:(int64_t)a4 workout:(id)a5 trackDistanceUnit:(unint64_t)a6 activityType:(id)a7 activityMoveMode:(int64_t)a8 isLastCell:(BOOL)a9 formattingManager:(id)a10;
@end

@implementation CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHWorkoutDetailFourColumnSegmentTableViewCell" hasInstanceMethod:@"configureWithSegment:segmentIndex:workout:trackDistanceUnit:activityType:activityMoveMode:isLastCell:formattingManager:" withFullSignature:{"v", "@", "q", "@", "Q", "@", "q", "B", "@", 0}];
  [v3 validateClass:@"CHWorkoutDetailFourColumnSegmentTableViewCell" isKindOfClass:@"CHWorkoutDetailFourColumnTableViewCell"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnOneLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnTwoLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnThreeLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"CHWorkoutDetailFourColumnTableViewCell" hasSwiftField:@"columnFourLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"supportsDistanceForWorkout:workoutActivity:" withFullSignature:{"B", "@", "@", 0}];
  [v3 validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"supportsPaceForWorkout:workoutActivity:" withFullSignature:{"B", "@", "@", 0}];
  [v3 validateClass:@"CHWorkoutFormattingManager" hasInstanceMethod:@"fitnessUIFormattingManager" withFullSignature:{"@", 0}];
}

- (void)configureWithSegment:(id)a3 segmentIndex:(int64_t)a4 workout:(id)a5 trackDistanceUnit:(unint64_t)a6 activityType:(id)a7 activityMoveMode:(int64_t)a8 isLastCell:(BOOL)a9 formattingManager:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a7;
  v19 = a10;
  v62.receiver = self;
  v62.super_class = CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility;
  [(CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility *)&v62 configureWithSegment:v16 segmentIndex:a4 workout:v17 trackDistanceUnit:a6 activityType:v18 activityMoveMode:a8 isLastCell:a9 formattingManager:v19];
  if (v16)
  {
    LOBYTE(v58) = 0;
    objc_opt_class();
    v20 = [(CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnOneLabel"];
    v21 = __UIAccessibilityCastAsClass();

    v53 = v18;
    v22 = accessibilityLocalizedString(@"segment.number");
    v23 = [v21 text];
    v24 = [NSString localizedStringWithFormat:v22, v23];
    v54 = v21;
    [v21 setAccessibilityLabel:v24];

    LOBYTE(v58) = 0;
    objc_opt_class();
    v25 = [(CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnThreeLabel"];
    v26 = __UIAccessibilityCastAsClass();

    v27 = accessibilityLocalizedString(@"time.value");
    v28 = [v26 text];
    v29 = [NSString localizedStringWithFormat:v27, v28];
    v52 = v26;
    [v26 setAccessibilityLabel:v29];

    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    LOBYTE(v61) = 0;
    v30 = v19;
    v31 = v17;
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
        v35 = [v33 text];
        v36 = [NSString localizedStringWithFormat:v34, v35];
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
          v18 = v53;
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
        v41 = accessibilityLocalizedString(v40);
        LOBYTE(v58) = 0;
        v42 = objc_opt_class();
        v43 = [(CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnFourLabel"];
        v44 = __UIAccessibilityCastAsClass();

        if (v58 != 1)
        {
          if (v39 || ([v44 text], v42 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v42, "containsString:", @"--")))
          {
            v45 = [v44 text];
            if (v39)
            {
LABEL_21:
              v48 = [NSString localizedStringWithFormat:v41, v45];
              [v44 setAccessibilityLabel:v48];
              v18 = v53;
              goto LABEL_22;
            }
          }

          else
          {
            v45 = accessibilityLocalizedString(@"no.data");
          }

          goto LABEL_21;
        }
      }
    }

    else
    {
      v18 = v53;
      v38 = v54;
      if (a8 != 1)
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
        v41 = [v50 localizedLongActiveEnergyUnitString];
        LOBYTE(v58) = 0;
        objc_opt_class();
        v47 = [(CHWorkoutDetailFourColumnSegmentTableViewCellAccessibility *)self safeSwiftValueForKey:@"columnTwoLabel"];
        v44 = __UIAccessibilityCastAsClass();

        if (v58 != 1)
        {
          v45 = accessibilityLocalizedString(@"energy.value");
          v48 = [v44 text];
          v49 = [NSString localizedStringWithFormat:v45, v41, v48];
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