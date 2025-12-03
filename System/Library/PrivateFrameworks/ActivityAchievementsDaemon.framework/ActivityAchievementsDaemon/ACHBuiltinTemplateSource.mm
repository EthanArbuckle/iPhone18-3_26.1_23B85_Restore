@interface ACHBuiltinTemplateSource
- (id)localizationBundleURLForTemplate:(id)template;
- (id)propertyListBundleURLForTemplate:(id)template;
- (id)resourceBundleURLForTemplate:(id)template;
- (void)templatesForDate:(id)date completion:(id)completion;
@end

@implementation ACHBuiltinTemplateSource

- (void)templatesForDate:(id)date completion:(id)completion
{
  v108[16] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  v43 = objc_alloc(MEMORY[0x277CBEB58]);
  v94 = NewMoveGoalAchievedTemplate();
  v96 = DailyMoveRecordTemplate();
  v90 = NewMoveTimeGoalAchievedTemplate();
  v92 = DailyMoveTimeRecordTemplate();
  v86 = DailyExerciseRecordTemplate();
  v88 = LongestMoveStreakTemplate();
  v82 = MoveGoal200PercentTemplate();
  v84 = MoveGoal300PercentTemplate();
  v80 = MoveGoal400PercentTemplate();
  v81 = PerfectWeekMoveTemplate();
  v78 = PerfectWeekExerciseTemplate();
  v79 = PerfectWeekStandTemplate();
  v76 = PerfectWeekAllTemplate();
  v77 = HundredMoveGoals();
  v74 = ThreeHundredSixtyFiveMoveGoals();
  v75 = FiveHundredMoveGoals();
  v72 = ThousandMoveGoals();
  v73 = TwelveFiftyMoveGoals();
  v70 = FifteenHundredMoveGoals();
  v71 = SeventeenFiftyMoveGoals();
  v68 = TwoThousandMoveGoals();
  v69 = TwentyTwoFiftyMoveGoals();
  v66 = TwentyFiveHundredMoveGoals();
  v67 = TwentySevenFiftyMoveGoals();
  v64 = ThreeThousandMoveGoals();
  v65 = ThreeThousandTwoHundredFiftyMoveGoals();
  v62 = ThreeThousandFiveHundredMoveGoals();
  v63 = ThreeThousandSevenHundredFiftyMoveGoals();
  v60 = FourThousandMoveGoals();
  v61 = SevenWorkoutWeekTemplate();
  v59 = FiftyMilesCyclingWorkout();
  v58 = FiftyKilometersCyclingWorkout();
  v57 = OneHundredMilesCyclingWorkout();
  v56 = OneHundredKilometersCyclingWorkout();
  v55 = HalfMarathonWorkout();
  v54 = WheelchairHalfMarathonWorkout();
  v53 = FastestHalfMarathonWorkout();
  v52 = FastestWheelchairHalfMarathonWorkout();
  v51 = MarathonWorkout();
  v50 = WheelchairMarathonWorkout();
  v49 = FastestMarathonWorkout();
  v48 = FastestWheelchairMarathonWorkout();
  v47 = DuathlonWorkout();
  v46 = SprintTriathlonWorkout();
  v5 = FiftyKilometerTriathlonWorkout();
  v6 = HalfDistanceTriathlonWorkout();
  v7 = FullDistanceTriathlonWorkout();
  v8 = Best5KDuration();
  v42 = Best10KDuration();
  v9 = BestWheelchair5KDuration();
  v10 = BestWheelchair10KDuration();
  v11 = FiveKilometerWorkout();
  v12 = TenKilometerWorkout();
  v13 = FiveKilometerWheelchairWorkout();
  v41 = TenKilometerWheelchairWorkout();
  v14 = [v43 initWithObjects:{v94, v96, v90, v92, v86, v88, v82, v84, v80, v81, v78, v79, v76, v77, v74, v75, v72, v73, v70, v71, v68, v69, v66, v67, v64, v65, v62, v63, v60, v61, v59, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v47, v46, v5, v6, v7, v8, v42, v9, v10, v11, v12, v13, v41, 0}];

  if (_os_feature_enabled_impl())
  {
    v97 = HundredAllGoals();
    v108[0] = v97;
    v95 = ThreeHundredSixtyFiveAllGoals();
    v108[1] = v95;
    v93 = FiveHundredAllGoals();
    v108[2] = v93;
    v91 = ThousandAllGoals();
    v108[3] = v91;
    v89 = TwelveFiftyAllGoals();
    v108[4] = v89;
    v87 = FifteenHundredAllGoals();
    v108[5] = v87;
    v85 = SeventeenFiftyAllGoals();
    v108[6] = v85;
    v83 = TwoThousandAllGoals();
    v108[7] = v83;
    v15 = TwentyTwoFiftyAllGoals();
    v108[8] = v15;
    v16 = TwentyFiveHundredAllGoals();
    v108[9] = v16;
    v17 = TwentySevenFiftyAllGoals();
    v108[10] = v17;
    v18 = ThreeThousandAllGoals();
    v108[11] = v18;
    v19 = ThreeThousandTwoHundredFiftyAllGoals();
    v108[12] = v19;
    v20 = ThreeThousandFiveHundredAllGoals();
    v108[13] = v20;
    v21 = ThreeThousandSevenHundredFiftyAllGoals();
    v108[14] = v21;
    v22 = FourThousandAllGoals();
    v108[15] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:16];
    [v14 addObjectsFromArray:v23];
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v24 = *MEMORY[0x277CE8B78];
  v25 = [v24 countByEnumeratingWithState:&v102 objects:v107 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v103;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v103 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v102 + 1) + 8 * i);
        v30 = objc_autoreleasePoolPush();
        [v29 unsignedIntegerValue];
        v31 = FirstWorkoutTemplateForWorkoutActivityType();
        [v14 addObject:v31];

        v32 = BestWorkoutEnergyBurnedTemplateForWorkoutActivityType();
        [v14 addObject:v32];

        objc_autoreleasePoolPop(v30);
      }

      v26 = [v24 countByEnumeratingWithState:&v102 objects:v107 count:16];
    }

    while (v26);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v33 = [&unk_283555C98 countByEnumeratingWithState:&v98 objects:v106 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v99;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v99 != v35)
        {
          objc_enumerationMutation(&unk_283555C98);
        }

        [*(*(&v98 + 1) + 8 * j) unsignedIntegerValue];
        v37 = BestWorkoutDistanceTemplateForWorkoutActivityType();
        [v14 addObject:v37];
      }

      v34 = [&unk_283555C98 countByEnumeratingWithState:&v98 objects:v106 count:16];
    }

    while (v34);
  }

  v38 = BestWorkoutElevationGainedTemplateForWorkoutActivityType();
  [v14 addObject:v38];

  if (completionCopy)
  {
    v39 = [v14 copy];
    (*(completionCopy + 2))(completionCopy, v39, 0, 0);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (id)localizationBundleURLForTemplate:(id)template
{
  uniqueName = [template uniqueName];
  v4 = [*MEMORY[0x277CE8C50] stringByAppendingPathComponent:uniqueName];
  v5 = [v4 stringByAppendingPathComponent:@"localization"];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  return v6;
}

- (id)resourceBundleURLForTemplate:(id)template
{
  uniqueName = [template uniqueName];
  v4 = [*MEMORY[0x277CE8C50] stringByAppendingPathComponent:uniqueName];
  v5 = [v4 stringByAppendingPathComponent:@"badgemodel"];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  return v6;
}

- (id)propertyListBundleURLForTemplate:(id)template
{
  uniqueName = [template uniqueName];
  v4 = [*MEMORY[0x277CE8C50] stringByAppendingPathComponent:uniqueName];
  v5 = [v4 stringByAppendingPathComponent:@"badgeproperties"];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  return v6;
}

@end