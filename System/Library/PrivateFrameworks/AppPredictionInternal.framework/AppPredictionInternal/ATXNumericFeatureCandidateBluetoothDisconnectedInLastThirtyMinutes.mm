@interface ATXNumericFeatureCandidateBluetoothDisconnectedInLastThirtyMinutes
- (id)numericFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXNumericFeatureCandidateBluetoothDisconnectedInLastThirtyMinutes

- (id)numericFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = a3;
  v5 = [v4 bluetoothEvent];
  if (v5)
  {
    v6 = [v4 timeContext];
    v7 = [v6 date];
    v8 = [v5 endDate];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    v11 = MEMORY[0x277CCABB0];
    v12 = [v5 bluetoothState];
    v13 = v10 <= 1800.0 && v10 > 0.0;
    v14 = v12 == 1 && v13;
    v15 = [v11 numberWithInt:v14];
  }

  else
  {
    v15 = &unk_283A57CF8;
  }

  return v15;
}

@end