@interface SNAudioQualityModelOutput
- (SNAudioQualityModelOutput)initWithFinal_output:(id)a3 classLabel:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation SNAudioQualityModelOutput

- (SNAudioQualityModelOutput)initWithFinal_output:(id)a3 classLabel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SNAudioQualityModelOutput;
  v9 = [(SNAudioQualityModelOutput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_final_output, a3);
    objc_storeStrong(&v10->_classLabel, a4);
  }

  return v10;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"final_output"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNAudioQualityModelOutput *)self final_output];
    v7 = [v5 featureValueWithDictionary:v6 error:0];
LABEL_5:
    v9 = v7;

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"classLabel"])
  {
    v8 = MEMORY[0x1E695FE60];
    v6 = [(SNAudioQualityModelOutput *)self classLabel];
    v7 = [v8 featureValueWithString:v6];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end