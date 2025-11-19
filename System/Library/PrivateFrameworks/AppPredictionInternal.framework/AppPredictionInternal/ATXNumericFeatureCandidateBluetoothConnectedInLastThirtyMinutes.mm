@interface ATXNumericFeatureCandidateBluetoothConnectedInLastThirtyMinutes
- (id)numericFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXNumericFeatureCandidateBluetoothConnectedInLastThirtyMinutes

- (id)numericFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = a3;
  v5 = [v4 bluetoothEvent];
  if (v5)
  {
    v6 = [v4 timeContext];
    v7 = [v6 date];
    v8 = [v5 startDate];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    v11 = [v5 endDate];
    v12 = [v4 timeContext];
    v13 = [v12 date];
    [v11 timeIntervalSinceDate:v13];
    v15 = v14;

    v16 = MEMORY[0x277CCABB0];
    if ([v5 bluetoothState] == 1)
    {
      v17 = v15 >= 0.0 && v10 >= 0.0;
      v18 = v10 <= 1800.0 && v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [v16 numberWithInt:v18];
  }

  else
  {
    v19 = &unk_283A57CF8;
  }

  return v19;
}

@end