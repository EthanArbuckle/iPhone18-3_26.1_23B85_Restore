@interface SNLanguageAlignedAudioEncoderOutput
- (SNLanguageAlignedAudioEncoderOutput)initWithEmbedding:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation SNLanguageAlignedAudioEncoderOutput

- (SNLanguageAlignedAudioEncoderOutput)initWithEmbedding:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SNLanguageAlignedAudioEncoderOutput;
  v6 = [(SNLanguageAlignedAudioEncoderOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_embedding, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"embedding"])
  {
    v4 = MEMORY[0x1E695FE60];
    v5 = [(SNLanguageAlignedAudioEncoderOutput *)self embedding];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end