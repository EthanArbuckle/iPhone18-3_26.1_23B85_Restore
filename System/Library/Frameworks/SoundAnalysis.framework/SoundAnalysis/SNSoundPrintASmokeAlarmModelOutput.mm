@interface SNSoundPrintASmokeAlarmModelOutput
- (SNSoundPrintASmokeAlarmModelOutput)initWithInput_1:(id)input_1 Confidence:(id)confidence Detected:(id)detected thresholdedHistoryOut:(id)out detectedHistoryOut:(id)historyOut;
- (id)featureValueForName:(id)name;
@end

@implementation SNSoundPrintASmokeAlarmModelOutput

- (SNSoundPrintASmokeAlarmModelOutput)initWithInput_1:(id)input_1 Confidence:(id)confidence Detected:(id)detected thresholdedHistoryOut:(id)out detectedHistoryOut:(id)historyOut
{
  input_1Copy = input_1;
  confidenceCopy = confidence;
  detectedCopy = detected;
  outCopy = out;
  historyOutCopy = historyOut;
  v21.receiver = self;
  v21.super_class = SNSoundPrintASmokeAlarmModelOutput;
  v17 = [(SNSoundPrintASmokeAlarmModelOutput *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_input_1, input_1);
    objc_storeStrong(&v18->_Confidence, confidence);
    objc_storeStrong(&v18->_Detected, detected);
    objc_storeStrong(&v18->_thresholdedHistoryOut, out);
    objc_storeStrong(&v18->_detectedHistoryOut, historyOut);
  }

  return v18;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"input_1"])
  {
    v5 = MEMORY[0x1E695FE60];
    input = [(SNSoundPrintASmokeAlarmModelOutput *)self input];
LABEL_11:
    v7 = input;
    v8 = [v5 featureValueWithMultiArray:input];

    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"Confidence"])
  {
    v5 = MEMORY[0x1E695FE60];
    input = [(SNSoundPrintASmokeAlarmModelOutput *)self Confidence];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"Detected"])
  {
    v5 = MEMORY[0x1E695FE60];
    input = [(SNSoundPrintASmokeAlarmModelOutput *)self Detected];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"thresholdedHistoryOut"])
  {
    v5 = MEMORY[0x1E695FE60];
    input = [(SNSoundPrintASmokeAlarmModelOutput *)self thresholdedHistoryOut];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"detectedHistoryOut"])
  {
    v5 = MEMORY[0x1E695FE60];
    input = [(SNSoundPrintASmokeAlarmModelOutput *)self detectedHistoryOut];
    goto LABEL_11;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

@end