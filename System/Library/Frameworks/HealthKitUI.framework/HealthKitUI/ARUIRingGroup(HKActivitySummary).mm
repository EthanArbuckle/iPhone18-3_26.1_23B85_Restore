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
  sharedBehavior = [v8 sharedBehavior];
  [self hk_configureWithActivitySummary:v10 isStandaloneFallback:objc_msgSend(sharedBehavior animated:"isStandalonePhoneFitnessMode") completion:{a4, v9}];
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
    [self setIsStandalonePhoneFitnessMode:objc_msgSend(v26 animated:{"_isStandalonePhoneSummary"), 0}];
    *&v23 = v18;
    *&v24 = v20;
    *&v25 = v22;
    [self setActiveEnergyPercentage:a5 exerciseMinutesPercentage:v10 standHoursPercentage:v23 animated:v24 completion:v25];

    isPaused = [v26 isPaused];
  }

  else
  {
    v12 = *MEMORY[0x277CE8E48];
    v13 = a6;
    [self setIsStandalonePhoneFitnessMode:a4 animated:0];
    LODWORD(v14) = v12;
    LODWORD(v15) = v12;
    LODWORD(v16) = v12;
    [self setActiveEnergyPercentage:a5 exerciseMinutesPercentage:v13 standHoursPercentage:v14 animated:v15 completion:v16];

    isPaused = 0;
  }

  [self setIsPaused:isPaused];
}

@end