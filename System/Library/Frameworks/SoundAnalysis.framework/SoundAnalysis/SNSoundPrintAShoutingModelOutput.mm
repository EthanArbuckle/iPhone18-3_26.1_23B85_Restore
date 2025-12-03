@interface SNSoundPrintAShoutingModelOutput
- (SNSoundPrintAShoutingModelOutput)initWithInput_1:(id)input_1 Confidence:(id)confidence Detected:(id)detected detectedHistoryOut:(id)out;
- (id)featureValueForName:(id)name;
@end

@implementation SNSoundPrintAShoutingModelOutput

- (SNSoundPrintAShoutingModelOutput)initWithInput_1:(id)input_1 Confidence:(id)confidence Detected:(id)detected detectedHistoryOut:(id)out
{
  input_1Copy = input_1;
  confidenceCopy = confidence;
  detectedCopy = detected;
  outCopy = out;
  v18.receiver = self;
  v18.super_class = SNSoundPrintAShoutingModelOutput;
  v15 = [(SNSoundPrintAShoutingModelOutput *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_input_1, input_1);
    objc_storeStrong(&v16->_Confidence, confidence);
    objc_storeStrong(&v16->_Detected, detected);
    objc_storeStrong(&v16->_detectedHistoryOut, out);
  }

  return v16;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"input_1"])
  {
    v5 = MEMORY[0x1E695FE60];
    input = [(SNSoundPrintAShoutingModelOutput *)self input];
LABEL_9:
    v7 = input;
    v8 = [v5 featureValueWithMultiArray:input];

    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"Confidence"])
  {
    v5 = MEMORY[0x1E695FE60];
    input = [(SNSoundPrintAShoutingModelOutput *)self Confidence];
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"Detected"])
  {
    v5 = MEMORY[0x1E695FE60];
    input = [(SNSoundPrintAShoutingModelOutput *)self Detected];
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"detectedHistoryOut"])
  {
    v5 = MEMORY[0x1E695FE60];
    input = [(SNSoundPrintAShoutingModelOutput *)self detectedHistoryOut];
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end