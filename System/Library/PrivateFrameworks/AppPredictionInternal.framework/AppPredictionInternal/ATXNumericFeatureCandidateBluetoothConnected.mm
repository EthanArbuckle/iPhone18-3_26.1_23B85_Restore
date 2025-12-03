@interface ATXNumericFeatureCandidateBluetoothConnected
- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXNumericFeatureCandidateBluetoothConnected

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
    bluetoothState = [bluetoothEvent bluetoothState];
    v18 = v15 >= 0.0 && v10 >= 0.0;
    v19 = bluetoothState == 1 && v18;
    v20 = [v16 numberWithInt:v19];
  }

  else
  {
    v20 = &unk_283A57CF8;
  }

  return v20;
}

@end