@interface ATXNumericFeatureCandidateBluetoothDisconnectedInLastThirtyMinutes
- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXNumericFeatureCandidateBluetoothDisconnectedInLastThirtyMinutes

- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  bluetoothEvent = [contextCopy bluetoothEvent];
  if (bluetoothEvent)
  {
    timeContext = [contextCopy timeContext];
    date = [timeContext date];
    endDate = [bluetoothEvent endDate];
    [date timeIntervalSinceDate:endDate];
    v10 = v9;

    v11 = MEMORY[0x277CCABB0];
    bluetoothState = [bluetoothEvent bluetoothState];
    v13 = v10 <= 1800.0 && v10 > 0.0;
    v14 = bluetoothState == 1 && v13;
    v15 = [v11 numberWithInt:v14];
  }

  else
  {
    v15 = &unk_283A57CF8;
  }

  return v15;
}

@end