@interface ARUIRingGroup(HKActivitySummary)
- (void)hk_configureWithActivitySummary:()HKActivitySummary animated:completion:;
- (void)hk_configureWithActivitySummary:()HKActivitySummary isStandaloneFallback:animated:completion:;
@end

@implementation ARUIRingGroup(HKActivitySummary)

- (void)hk_configureWithActivitySummary:()HKActivitySummary animated:completion:
{
  v8 = MEMORY[0x277CCDD30];
  v9 = a5;
  v10 = a3;
  v11 = [v8 sharedBehavior];
  [a1 hk_configureWithActivitySummary:v10 isStandaloneFallback:objc_msgSend(v11 animated:"isStandalonePhoneFitnessMode") completion:{a4, v9}];
}

- (void)hk_configureWithActivitySummary:()HKActivitySummary isStandaloneFallback:animated:completion:
{
  v26 = a3;
  if (v26)
  {
    v10 = a6;
    if ([v26 activityMoveMode] == 2)
    {
      [v26 _moveMinutesCompletionPercentage];
    }

    else
    {
      [v26 _activeEnergyCompletionPercentage];
    }

    v18 = v11;
    [v26 _exerciseTimeCompletionPercentage];
    v20 = v19;
    [v26 _standHoursCompletionPercentage];
    v22 = v21;
    [a1 setIsStandalonePhoneFitnessMode:objc_msgSend(v26 animated:{"_isStandalonePhoneSummary"), 0}];
    *&v23 = v18;
    *&v24 = v20;
    *&v25 = v22;
    [a1 setActiveEnergyPercentage:a5 exerciseMinutesPercentage:v10 standHoursPercentage:v23 animated:v24 completion:v25];

    v17 = [v26 isPaused];
  }

  else
  {
    v12 = *MEMORY[0x277CE8E48];
    v13 = a6;
    [a1 setIsStandalonePhoneFitnessMode:a4 animated:0];
    LODWORD(v14) = v12;
    LODWORD(v15) = v12;
    LODWORD(v16) = v12;
    [a1 setActiveEnergyPercentage:a5 exerciseMinutesPercentage:v13 standHoursPercentage:v14 animated:v15 completion:v16];

    v17 = 0;
  }

  [a1 setIsPaused:v17];
}

@end