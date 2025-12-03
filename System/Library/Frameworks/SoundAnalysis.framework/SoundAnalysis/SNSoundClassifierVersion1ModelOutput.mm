@interface SNSoundClassifierVersion1ModelOutput
- (SNSoundClassifierVersion1ModelOutput)initWith_9:(id)with_9 classLabel:(id)label;
- (id)featureValueForName:(id)name;
@end

@implementation SNSoundClassifierVersion1ModelOutput

- (SNSoundClassifierVersion1ModelOutput)initWith_9:(id)with_9 classLabel:(id)label
{
  with_9Copy = with_9;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = SNSoundClassifierVersion1ModelOutput;
  v9 = [(SNSoundClassifierVersion1ModelOutput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__9, with_9);
    objc_storeStrong(&v10->_classLabel, label);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"9"])
  {
    v6 = MEMORY[0x1E695FE60];
    classLabel = objc_msgSend__9(self, v5);
    v8 = [v6 featureValueWithDictionary:classLabel error:0];
LABEL_5:
    v10 = v8;

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"classLabel"])
  {
    v9 = MEMORY[0x1E695FE60];
    classLabel = [(SNSoundClassifierVersion1ModelOutput *)self classLabel];
    v8 = [v9 featureValueWithString:classLabel];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

@end