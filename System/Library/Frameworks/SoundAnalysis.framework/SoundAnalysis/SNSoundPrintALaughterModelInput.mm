@interface SNSoundPrintALaughterModelInput
- (SNSoundPrintALaughterModelInput)initWithInput1:(id)input1 stateIn:(id)in detectedHistoryIn:(id)historyIn;
- (id)featureValueForName:(id)name;
@end

@implementation SNSoundPrintALaughterModelInput

- (SNSoundPrintALaughterModelInput)initWithInput1:(id)input1 stateIn:(id)in detectedHistoryIn:(id)historyIn
{
  input1Copy = input1;
  inCopy = in;
  historyInCopy = historyIn;
  v15.receiver = self;
  v15.super_class = SNSoundPrintALaughterModelInput;
  v12 = [(SNSoundPrintALaughterModelInput *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_input1, input1);
    objc_storeStrong(&v13->_stateIn, in);
    objc_storeStrong(&v13->_detectedHistoryIn, historyIn);
  }

  return v13;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"input1"])
  {
    v5 = MEMORY[0x1E695FE60];
    input1 = [(SNSoundPrintALaughterModelInput *)self input1];
    v7 = [v5 featureValueWithMultiArray:input1];
LABEL_11:

    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"stateIn"])
  {
    input1 = [(SNSoundPrintALaughterModelInput *)self stateIn];
    if (input1)
    {
      v8 = MEMORY[0x1E695FE60];
      stateIn = [(SNSoundPrintALaughterModelInput *)self stateIn];
LABEL_9:
      v10 = stateIn;
      v7 = [v8 featureValueWithMultiArray:stateIn];

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"detectedHistoryIn"])
  {
    input1 = [(SNSoundPrintALaughterModelInput *)self detectedHistoryIn];
    if (input1)
    {
      v8 = MEMORY[0x1E695FE60];
      stateIn = [(SNSoundPrintALaughterModelInput *)self detectedHistoryIn];
      goto LABEL_9;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

@end