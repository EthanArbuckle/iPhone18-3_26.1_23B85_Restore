@interface SNAudioQualityModelOutput
- (SNAudioQualityModelOutput)initWithFinal_output:(id)final_output classLabel:(id)label;
- (id)featureValueForName:(id)name;
@end

@implementation SNAudioQualityModelOutput

- (SNAudioQualityModelOutput)initWithFinal_output:(id)final_output classLabel:(id)label
{
  final_outputCopy = final_output;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = SNAudioQualityModelOutput;
  v9 = [(SNAudioQualityModelOutput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_final_output, final_output);
    objc_storeStrong(&v10->_classLabel, label);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"final_output"])
  {
    v5 = MEMORY[0x1E695FE60];
    final_output = [(SNAudioQualityModelOutput *)self final_output];
    v7 = [v5 featureValueWithDictionary:final_output error:0];
LABEL_5:
    v9 = v7;

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"classLabel"])
  {
    v8 = MEMORY[0x1E695FE60];
    final_output = [(SNAudioQualityModelOutput *)self classLabel];
    v7 = [v8 featureValueWithString:final_output];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end