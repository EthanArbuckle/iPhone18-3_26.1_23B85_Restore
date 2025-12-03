@interface ATXNumericFeatureCandidateBluetoothConnectedInLastThirtyMinutes
- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXNumericFeatureCandidateBluetoothConnectedInLastThirtyMinutes

- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  bluetoothEvent = [contextCopy bluetoothEvent];
  if (bluetoothEvent)
  {
    timeContext = [contextCopy timeContext];
    date = [timeContext date];
    startDate = [bluetoothEvent startDate];
    [date timeIntervalSinceDate:startDate];
    v10 = v9;

    endDate = [bluetoothEvent endDate];
    timeContext2 = [contextCopy timeContext];
    date2 = [timeContext2 date];
    [endDate timeIntervalSinceDate:date2];
    v15 = v14;

    v16 = MEMORY[0x277CCABB0];
    if ([bluetoothEvent bluetoothState] == 1)
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