@interface SNSoundPrintALaughterModelOutput
- (SNSoundPrintALaughterModelOutput)initWithInput_1:(id)a3 Confidence:(id)a4 Detected:(id)a5 detectedHistoryOut:(id)a6;
- (id)featureValueForName:(id)a3;
@end

@implementation SNSoundPrintALaughterModelOutput

- (SNSoundPrintALaughterModelOutput)initWithInput_1:(id)a3 Confidence:(id)a4 Detected:(id)a5 detectedHistoryOut:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SNSoundPrintALaughterModelOutput;
  v15 = [(SNSoundPrintALaughterModelOutput *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_input_1, a3);
    objc_storeStrong(&v16->_Confidence, a4);
    objc_storeStrong(&v16->_Detected, a5);
    objc_storeStrong(&v16->_detectedHistoryOut, a6);
  }

  return v16;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"input_1"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintALaughterModelOutput *)self input];
LABEL_9:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"Confidence"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintALaughterModelOutput *)self Confidence];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"Detected"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintALaughterModelOutput *)self Detected];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"detectedHistoryOut"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNSoundPrintALaughterModelOutput *)self detectedHistoryOut];
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end