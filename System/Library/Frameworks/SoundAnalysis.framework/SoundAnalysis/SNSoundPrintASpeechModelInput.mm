@interface SNSoundPrintASpeechModelInput
- (SNSoundPrintASpeechModelInput)initWithInput1:(id)a3 stateIn:(id)a4 detectedHistoryIn:(id)a5;
- (id)featureValueForName:(id)a3;
@end

@implementation SNSoundPrintASpeechModelInput

- (SNSoundPrintASpeechModelInput)initWithInput1:(id)a3 stateIn:(id)a4 detectedHistoryIn:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SNSoundPrintASpeechModelInput;
  v12 = [(SNSoundPrintASpeechModelInput *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_input1, a3);
    objc_storeStrong(&v13->_stateIn, a4);
    objc_storeStrong(&v13->_detectedHistoryIn, a5);
  }

  return v13;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"input1"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintASpeechModelInput *)self input1];
    v7 = [v5 featureValueWithMultiArray:v6];
LABEL_11:

    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"stateIn"])
  {
    v6 = [(SNSoundPrintASpeechModelInput *)self stateIn];
    if (v6)
    {
      v8 = MEMORY[0x1E695FE60];
      v9 = [(SNSoundPrintASpeechModelInput *)self stateIn];
LABEL_9:
      v10 = v9;
      v7 = [v8 featureValueWithMultiArray:v9];

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"detectedHistoryIn"])
  {
    v6 = [(SNSoundPrintASpeechModelInput *)self detectedHistoryIn];
    if (v6)
    {
      v8 = MEMORY[0x1E695FE60];
      v9 = [(SNSoundPrintASpeechModelInput *)self detectedHistoryIn];
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