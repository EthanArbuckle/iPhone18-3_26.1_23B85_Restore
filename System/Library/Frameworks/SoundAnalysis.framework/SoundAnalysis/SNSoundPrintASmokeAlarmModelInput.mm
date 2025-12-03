@interface SNSoundPrintASmokeAlarmModelInput
- (SNSoundPrintASmokeAlarmModelInput)initWithInput1:(id)input1 stateIn:(id)in thresholdedHistoryIn:(id)historyIn detectedHistoryIn:(id)detectedHistoryIn;
- (id)featureValueForName:(id)name;
@end

@implementation SNSoundPrintASmokeAlarmModelInput

- (SNSoundPrintASmokeAlarmModelInput)initWithInput1:(id)input1 stateIn:(id)in thresholdedHistoryIn:(id)historyIn detectedHistoryIn:(id)detectedHistoryIn
{
  input1Copy = input1;
  inCopy = in;
  historyInCopy = historyIn;
  detectedHistoryInCopy = detectedHistoryIn;
  v18.receiver = self;
  v18.super_class = SNSoundPrintASmokeAlarmModelInput;
  v15 = [(SNSoundPrintASmokeAlarmModelInput *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_input1, input1);
    objc_storeStrong(&v16->_stateIn, in);
    objc_storeStrong(&v16->_thresholdedHistoryIn, historyIn);
    objc_storeStrong(&v16->_detectedHistoryIn, detectedHistoryIn);
  }

  return v16;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"input1"])
  {
    v5 = MEMORY[0x1E695FE60];
    input1 = [(SNSoundPrintASmokeAlarmModelInput *)self input1];
    v7 = [v5 featureValueWithMultiArray:input1];
LABEL_14:

    goto LABEL_15;
  }

  if ([nameCopy isEqualToString:@"stateIn"])
  {
    input1 = [(SNSoundPrintASmokeAlarmModelInput *)self stateIn];
    if (input1)
    {
      v8 = MEMORY[0x1E695FE60];
      stateIn = [(SNSoundPrintASmokeAlarmModelInput *)self stateIn];
LABEL_12:
      v10 = stateIn;
      v7 = [v8 featureValueWithMultiArray:stateIn];

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"thresholdedHistoryIn"])
  {
    input1 = [(SNSoundPrintASmokeAlarmModelInput *)self thresholdedHistoryIn];
    if (input1)
    {
      v8 = MEMORY[0x1E695FE60];
      stateIn = [(SNSoundPrintASmokeAlarmModelInput *)self thresholdedHistoryIn];
      goto LABEL_12;
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  if ([nameCopy isEqualToString:@"detectedHistoryIn"])
  {
    input1 = [(SNSoundPrintASmokeAlarmModelInput *)self detectedHistoryIn];
    if (input1)
    {
      v8 = MEMORY[0x1E695FE60];
      stateIn = [(SNSoundPrintASmokeAlarmModelInput *)self detectedHistoryIn];
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v7 = 0;
LABEL_15:

  return v7;
}

@end