@interface SNLanguageAlignedAVFuserModelInput
- (SNLanguageAlignedAVFuserModelInput)initWithVision_embedding:(id)a3 audio_embedding:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation SNLanguageAlignedAVFuserModelInput

- (SNLanguageAlignedAVFuserModelInput)initWithVision_embedding:(id)a3 audio_embedding:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SNLanguageAlignedAVFuserModelInput;
  v9 = [(SNLanguageAlignedAVFuserModelInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vision_embedding, a3);
    objc_storeStrong(&v10->_audio_embedding, a4);
  }

  return v10;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"vision_embedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNLanguageAlignedAVFuserModelInput *)self vision_embedding];
LABEL_5:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"audio_embedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(SNLanguageAlignedAVFuserModelInput *)self audio_embedding];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end