@interface SNLanguageAlignedAVFuserModelInput
- (SNLanguageAlignedAVFuserModelInput)initWithVision_embedding:(id)vision_embedding audio_embedding:(id)audio_embedding;
- (id)featureValueForName:(id)name;
@end

@implementation SNLanguageAlignedAVFuserModelInput

- (SNLanguageAlignedAVFuserModelInput)initWithVision_embedding:(id)vision_embedding audio_embedding:(id)audio_embedding
{
  vision_embeddingCopy = vision_embedding;
  audio_embeddingCopy = audio_embedding;
  v12.receiver = self;
  v12.super_class = SNLanguageAlignedAVFuserModelInput;
  v9 = [(SNLanguageAlignedAVFuserModelInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vision_embedding, vision_embedding);
    objc_storeStrong(&v10->_audio_embedding, audio_embedding);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"vision_embedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    vision_embedding = [(SNLanguageAlignedAVFuserModelInput *)self vision_embedding];
LABEL_5:
    v7 = vision_embedding;
    v8 = [v5 featureValueWithMultiArray:vision_embedding];

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"audio_embedding"])
  {
    v5 = MEMORY[0x1E695FE60];
    vision_embedding = [(SNLanguageAlignedAVFuserModelInput *)self audio_embedding];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end