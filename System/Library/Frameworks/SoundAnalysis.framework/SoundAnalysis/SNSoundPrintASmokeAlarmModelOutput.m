@interface SNSoundPrintASmokeAlarmModelOutput
- (SNSoundPrintASmokeAlarmModelOutput)initWithInput_1:(id)a3 Confidence:(id)a4 Detected:(id)a5 thresholdedHistoryOut:(id)a6 detectedHistoryOut:(id)a7;
- (id)featureValueForName:(id)a3;
@end

@implementation SNSoundPrintASmokeAlarmModelOutput

- (SNSoundPrintASmokeAlarmModelOutput)initWithInput_1:(id)a3 Confidence:(id)a4 Detected:(id)a5 thresholdedHistoryOut:(id)a6 detectedHistoryOut:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SNSoundPrintASmokeAlarmModelOutput;
  v17 = [(SNSoundPrintASmokeAlarmModelOutput *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_input_1, a3);
    objc_storeStrong(&v18->_Confidence, a4);
    objc_storeStrong(&v18->_Detected, a5);
    objc_storeStrong(&v18->_thresholdedHistoryOut, a6);
    objc_storeStrong(&v18->_detectedHistoryOut, a7);
  }

  return v18;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"input_1"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintASmokeAlarmModelOutput *)self input];
LABEL_11:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"Confidence"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintASmokeAlarmModelOutput *)self Confidence];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"Detected"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintASmokeAlarmModelOutput *)self Detected];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"thresholdedHistoryOut"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintASmokeAlarmModelOutput *)self thresholdedHistoryOut];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"detectedHistoryOut"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintASmokeAlarmModelOutput *)self detectedHistoryOut];
    goto LABEL_11;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

@end