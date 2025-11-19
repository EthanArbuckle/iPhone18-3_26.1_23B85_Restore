@interface SNSoundClassifierVersion1ModelOutput
- (SNSoundClassifierVersion1ModelOutput)initWith_9:(id)a3 classLabel:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation SNSoundClassifierVersion1ModelOutput

- (SNSoundClassifierVersion1ModelOutput)initWith_9:(id)a3 classLabel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SNSoundClassifierVersion1ModelOutput;
  v9 = [(SNSoundClassifierVersion1ModelOutput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__9, a3);
    objc_storeStrong(&v10->_classLabel, a4);
  }

  return v10;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"9"])
  {
    v6 = MEMORY[0x1E695FE60];
    v7 = objc_msgSend__9(self, v5);
    v8 = [v6 featureValueWithDictionary:v7 error:0];
LABEL_5:
    v10 = v8;

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"classLabel"])
  {
    v9 = MEMORY[0x1E695FE60];
    v7 = [(SNSoundClassifierVersion1ModelOutput *)self classLabel];
    v8 = [v9 featureValueWithString:v7];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

@end