@interface SNSoundPrintASmokeAlarmModelInput
- (SNSoundPrintASmokeAlarmModelInput)initWithInput1:(id)a3 stateIn:(id)a4 thresholdedHistoryIn:(id)a5 detectedHistoryIn:(id)a6;
- (id)featureValueForName:(id)a3;
@end

@implementation SNSoundPrintASmokeAlarmModelInput

- (SNSoundPrintASmokeAlarmModelInput)initWithInput1:(id)a3 stateIn:(id)a4 thresholdedHistoryIn:(id)a5 detectedHistoryIn:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SNSoundPrintASmokeAlarmModelInput;
  v15 = [(SNSoundPrintASmokeAlarmModelInput *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_input1, a3);
    objc_storeStrong(&v16->_stateIn, a4);
    objc_storeStrong(&v16->_thresholdedHistoryIn, a5);
    objc_storeStrong(&v16->_detectedHistoryIn, a6);
  }

  return v16;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"input1"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintASmokeAlarmModelInput *)self input1];
    v7 = [v5 featureValueWithMultiArray:v6];
LABEL_14:

    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"stateIn"])
  {
    v6 = [(SNSoundPrintASmokeAlarmModelInput *)self stateIn];
    if (v6)
    {
      v8 = MEMORY[0x1E695FE60];
      v9 = [(SNSoundPrintASmokeAlarmModelInput *)self stateIn];
LABEL_12:
      v10 = v9;
      v7 = [v8 featureValueWithMultiArray:v9];

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"thresholdedHistoryIn"])
  {
    v6 = [(SNSoundPrintASmokeAlarmModelInput *)self thresholdedHistoryIn];
    if (v6)
    {
      v8 = MEMORY[0x1E695FE60];
      v9 = [(SNSoundPrintASmokeAlarmModelInput *)self thresholdedHistoryIn];
      goto LABEL_12;
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"detectedHistoryIn"])
  {
    v6 = [(SNSoundPrintASmokeAlarmModelInput *)self detectedHistoryIn];
    if (v6)
    {
      v8 = MEMORY[0x1E695FE60];
      v9 = [(SNSoundPrintASmokeAlarmModelInput *)self detectedHistoryIn];
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v7 = 0;
LABEL_15:

  return v7;
}

@end