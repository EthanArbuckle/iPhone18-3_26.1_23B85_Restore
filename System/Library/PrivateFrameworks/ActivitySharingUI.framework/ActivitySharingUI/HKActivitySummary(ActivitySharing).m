@interface HKActivitySummary(ActivitySharing)
- (id)_moveStringWithFont:()ActivitySharing smallCapsFont:color:formattingManager:snapshot:;
- (id)as_distanceStringWithContext:()ActivitySharing formattingManager:distanceUnitFormat:;
- (id)as_exerciseDurationStringWithContext:()ActivitySharing;
- (id)as_exerciseProgressStringWithContext:()ActivitySharing;
- (id)as_movePercentStringWithContext:()ActivitySharing snapshot:;
- (id)as_moveProgressStringWithContext:()ActivitySharing formattingManager:snapshot:;
- (id)as_moveStringWithContext:()ActivitySharing formattingManager:snapshot:;
- (id)as_pushesStringWithContext:()ActivitySharing;
- (id)as_stepsStringWithContext:()ActivitySharing;
- (uint64_t)_isEmptyExerciseSummary;
- (uint64_t)_isEmptyMoveSummaryForSnapshot:()ActivitySharing;
@end

@implementation HKActivitySummary(ActivitySharing)

- (id)_moveStringWithFont:()ActivitySharing smallCapsFont:color:formattingManager:snapshot:
{
  v53[2] = *MEMORY[0x277D85DE8];
  v50 = a3;
  v51 = a5;
  v12 = a6;
  v13 = a7;
  v49 = a4;
  v48 = v12;
  if ([v13 isAmm])
  {
    v14 = MEMORY[0x277D0A7E8];
    v15 = MEMORY[0x277CCABB0];
    v16 = [v13 mmvQuantity];
    v17 = [MEMORY[0x277CCDAB0] minuteUnit];
    [v16 doubleValueForUnit:v17];
    v18 = [v15 numberWithDouble:?];
    v19 = [v14 stringWithNumber:v18 decimalPrecision:1];

    v20 = MEMORY[0x277D0A7E8];
    v21 = MEMORY[0x277CCABB0];
    v22 = [v13 mmgQuantity];
    v23 = [MEMORY[0x277CCDAB0] minuteUnit];
    [v22 doubleValueForUnit:v23];
    v24 = [v21 numberWithDouble:?];
    v25 = [v20 stringWithNumber:v24 decimalPrecision:1];

    v26 = ActivitySharingBundle();
    [v26 localizedStringForKey:@"MIN" value:&stru_2850F6650 table:@"Localizable"];
  }

  else
  {
    v27 = [a1 activeEnergyBurned];
    v19 = [v12 localizedStringWithActiveEnergy:v27];

    v28 = [a1 activeEnergyBurnedGoal];
    v25 = [v12 localizedStringWithActiveEnergy:v28];

    v26 = [v12 localizedShortActiveEnergyUnitString];
    [v26 localizedUppercaseString];
  }
  v29 = ;

  v30 = [a1 _isEmptyMoveSummaryForSnapshot:v13];
  if (v30)
  {
    v31 = ActivitySharingBundle();
    [v31 localizedStringForKey:@"LIST_VIEW_EMPTY_RATIO" value:&stru_2850F6650 table:@"Localizable"];
  }

  else
  {
    v32 = MEMORY[0x277CCACA8];
    v31 = ASActivitySummaryGoalFormatString();
    [v32 stringWithFormat:v31, v19, v25, v29, v12];
  }
  v33 = ;
  v34 = v19;

  v35 = objc_alloc(MEMORY[0x277CCAB48]);
  v37 = *MEMORY[0x277D740C0];
  v52[0] = *MEMORY[0x277D740A8];
  v36 = v52[0];
  v52[1] = v37;
  v53[0] = v50;
  v53[1] = v51;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  v39 = [v35 initWithString:v33 attributes:v38];

  v40 = [v50 fu_shortSlashFont];
  v41 = [v39 string];
  v42 = [v41 rangeOfString:@"/"];
  [v39 addAttribute:v36 value:v40 range:{v42, v43}];

  v44 = [v39 string];
  v45 = [v44 rangeOfString:v29];
  [v39 addAttribute:v36 value:v49 range:{v45, v46}];

  return v39;
}

- (id)as_moveStringWithContext:()ActivitySharing formattingManager:snapshot:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 dataFont];
  v12 = [v10 unitFont];
  v13 = [v10 keyColorForDisplayMode:1];

  v14 = [a1 _moveStringWithFont:v11 smallCapsFont:v12 color:v13 formattingManager:v9 snapshot:v8];

  return v14;
}

- (id)as_moveProgressStringWithContext:()ActivitySharing formattingManager:snapshot:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 keyColorForDisplayMode:1];
  v12 = [v10 multilineDataFont];
  v13 = [v10 multilineUnitFont];

  v14 = [a1 _moveStringWithFont:v12 smallCapsFont:v13 color:v11 formattingManager:v9 snapshot:v8];

  return v14;
}

- (id)as_movePercentStringWithContext:()ActivitySharing snapshot:
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 keyColorForDisplayMode:1];
  if ([a1 _isEmptyMoveSummaryForSnapshot:v6])
  {
    v9 = ActivitySharingBundle();
    v10 = [v9 localizedStringForKey:@"LIST_VIEW_EMPTY_VALUE" value:&stru_2850F6650 table:@"Localizable"];
  }

  else
  {
    v11 = [v6 isAmm];
    v12 = MEMORY[0x277D0A7E8];
    v13 = MEMORY[0x277CCABB0];
    if (v11)
    {
      [v6 mmPercent];
    }

    else
    {
      [v6 energyBurnedGoalPercentage];
    }

    v9 = [v13 numberWithDouble:?];
    v10 = [v12 percentStringWithNumber:v9];
  }

  v14 = v10;

  v15 = objc_alloc(MEMORY[0x277CCAB48]);
  v20[0] = *MEMORY[0x277D740A8];
  v16 = [v7 multilineDataFont];

  v20[1] = *MEMORY[0x277D740C0];
  v21[0] = v16;
  v21[1] = v8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18 = [v15 initWithString:v14 attributes:v17];

  return v18;
}

- (id)as_exerciseDurationStringWithContext:()ActivitySharing
{
  v40[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v38 = [v4 keyColorForDisplayMode:2];
  v5 = MEMORY[0x277CCABB0];
  v6 = [a1 appleExerciseTime];
  v7 = [MEMORY[0x277CCDAB0] minuteUnit];
  [v6 doubleValueForUnit:v7];
  v8 = [v5 numberWithDouble:?];

  v37 = v8;
  v9 = [MEMORY[0x277D0A7E8] stringWithNumber:v8 decimalPrecision:1];
  v10 = MEMORY[0x277CCABB0];
  v11 = [a1 appleExerciseTimeGoal];
  v12 = [MEMORY[0x277CCDAB0] minuteUnit];
  [v11 doubleValueForUnit:v12];
  v13 = [v10 numberWithDouble:?];

  v36 = v13;
  v14 = [MEMORY[0x277D0A7E8] stringWithNumber:v13 decimalPrecision:1];
  v15 = ActivitySharingBundle();
  v16 = [v15 localizedStringForKey:@"MIN" value:&stru_2850F6650 table:@"Localizable"];

  v35 = v9;
  if ([a1 _isEmptyExerciseSummary])
  {
    v17 = ActivitySharingBundle();
    [v17 localizedStringForKey:@"LIST_VIEW_EMPTY_RATIO" value:&stru_2850F6650 table:@"Localizable"];
  }

  else
  {
    v18 = MEMORY[0x277CCACA8];
    v17 = ASActivitySummaryGoalFormatString();
    [v18 stringWithFormat:v17, v9, v14, v16, v9];
  }
  v19 = ;

  v20 = objc_alloc(MEMORY[0x277CCAB48]);
  v39[0] = *MEMORY[0x277D740A8];
  v21 = v39[0];
  v22 = [v4 multilineDataFont];
  v39[1] = *MEMORY[0x277D740C0];
  v40[0] = v22;
  v40[1] = v38;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v24 = [v20 initWithString:v19 attributes:v23];

  v25 = [v4 multilineDataFont];
  v26 = [v25 fu_shortSlashFont];
  v27 = [v24 string];
  v28 = [v27 rangeOfString:@"/"];
  [v24 addAttribute:v21 value:v26 range:{v28, v29}];

  v30 = [v4 multilineUnitFont];

  v31 = [v24 string];
  v32 = [v31 rangeOfString:v16];
  [v24 addAttribute:v21 value:v30 range:{v32, v33}];

  return v24;
}

- (id)as_exerciseProgressStringWithContext:()ActivitySharing
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 keyColorForDisplayMode:2];
  if ([a1 _isEmptyExerciseSummary])
  {
    v6 = ActivitySharingBundle();
    [v6 localizedStringForKey:@"LIST_VIEW_EMPTY_VALUE" value:&stru_2850F6650 table:@"Localizable"];
  }

  else
  {
    v7 = MEMORY[0x277D0A7E8];
    v8 = MEMORY[0x277CCABB0];
    [a1 _exerciseTimeCompletionPercentage];
    v6 = [v8 numberWithDouble:?];
    [v7 percentStringWithNumber:v6];
  }
  v9 = ;

  v10 = objc_alloc(MEMORY[0x277CCAB48]);
  v15[0] = *MEMORY[0x277D740A8];
  v11 = [v4 multilineDataFont];

  v15[1] = *MEMORY[0x277D740C0];
  v16[0] = v11;
  v16[1] = v5;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [v10 initWithString:v9 attributes:v12];

  return v13;
}

- (id)as_stepsStringWithContext:()ActivitySharing
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 keyColorForDisplayMode:3];
  v6 = MEMORY[0x277CCABB0];
  v7 = [a1 stepCount];
  v8 = [MEMORY[0x277CCDAB0] countUnit];
  [v7 doubleValueForUnit:v8];
  v9 = [v6 numberWithDouble:?];

  v10 = [MEMORY[0x277D0A7E8] stringWithNumber:v9 decimalPrecision:1];
  v11 = [v9 integerValue];
  v12 = MEMORY[0x277CCACA8];
  v13 = ActivitySharingBundle();
  v14 = [v13 localizedStringForKey:@"STEPS" value:&stru_2850F6650 table:@"Localizable"];
  v15 = [v12 stringWithFormat:v14, v11, v10];
  v16 = [v15 localizedUppercaseString];

  v17 = objc_alloc(MEMORY[0x277CCAB48]);
  v27[0] = *MEMORY[0x277D740A8];
  v18 = v27[0];
  v19 = [v4 multilineUnitFont];
  v27[1] = *MEMORY[0x277D740C0];
  v28[0] = v19;
  v28[1] = v5;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v21 = [v17 initWithString:v16 attributes:v20];

  v22 = [v4 multilineDataFont];

  v23 = [v21 string];
  v24 = [v23 rangeOfString:v10];
  [v21 addAttribute:v18 value:v22 range:{v24, v25}];

  return v21;
}

- (id)as_distanceStringWithContext:()ActivitySharing formattingManager:distanceUnitFormat:
{
  v41[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 keyColorForDisplayMode:3];
  v12 = [a1 distanceWalkingRunning];
  v13 = [MEMORY[0x277CCDAB0] meterUnit];
  [v12 doubleValueForUnit:v13];
  v15 = v14;

  v40 = *MEMORY[0x277D74338];
  v16 = *MEMORY[0x277D74388];
  v37[0] = *MEMORY[0x277D74398];
  v37[1] = v16;
  v38[0] = &unk_2850F9B50;
  v38[1] = &unk_2850F9B68;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v39 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v41[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];

  v20 = [v10 multilineDataFont];
  v21 = [v20 fontDescriptor];
  v22 = [v21 fontDescriptorByAddingAttributes:v19];

  v23 = MEMORY[0x277D74300];
  v24 = [v10 multilineDataFont];

  [v24 pointSize];
  v25 = [v23 fontWithDescriptor:v22 size:?];

  if (v9)
  {
    v34 = 0;
    v26 = [v8 localizedNaturalScaleStringWithDistanceInMeters:1 distanceType:0 unitStyle:&v34 usedUnit:v15];
    v27 = [v8 localizedShortUnitStringForDistanceUnit:v34 textCase:2];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v26, v27];
  }

  else
  {
    v28 = [v8 localizedNaturalScaleStringWithDistanceInMeters:1 distanceType:2 unitStyle:0 usedUnit:v15];
  }

  v29 = objc_alloc(MEMORY[0x277CCAB48]);
  v30 = *MEMORY[0x277D740C0];
  v35[0] = *MEMORY[0x277D740A8];
  v35[1] = v30;
  v36[0] = v25;
  v36[1] = v11;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v32 = [v29 initWithString:v28 attributes:v31];

  return v32;
}

- (id)as_pushesStringWithContext:()ActivitySharing
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 keyColorForDisplayMode:5];
  v6 = MEMORY[0x277CCABB0];
  v7 = [a1 _pushCount];
  v8 = [MEMORY[0x277CCDAB0] countUnit];
  [v7 doubleValueForUnit:v8];
  v9 = [v6 numberWithDouble:?];

  v10 = [MEMORY[0x277D0A7E8] stringWithNumber:v9 decimalPrecision:1];
  v11 = objc_alloc(MEMORY[0x277CCAB48]);
  v16[0] = *MEMORY[0x277D740A8];
  v12 = [v4 dataFont];

  v16[1] = *MEMORY[0x277D740C0];
  v17[0] = v12;
  v17[1] = v5;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14 = [v11 initWithString:v10 attributes:v13];

  return v14;
}

- (uint64_t)_isEmptyMoveSummaryForSnapshot:()ActivitySharing
{
  v4 = a3;
  v5 = [a1 isPaused];
  v6 = 1;
  if (v4 && (v5 & 1) == 0)
  {
    v7 = [a1 activeEnergyBurned];
    if ([v7 _isZero])
    {
      v8 = [a1 activeEnergyBurnedGoal];
      if ([v8 _isZero])
      {
        v9 = [v4 mmvQuantity];
        if ([v9 _isZero])
        {
          v10 = [v4 mmgQuantity];
          v6 = [v10 _isZero];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (uint64_t)_isEmptyExerciseSummary
{
  if ([a1 isPaused])
  {
    return 1;
  }

  v3 = [a1 appleExerciseTime];
  if ([v3 _isZero])
  {
    v4 = [a1 appleExerciseTimeGoal];
    v2 = [v4 _isZero];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end