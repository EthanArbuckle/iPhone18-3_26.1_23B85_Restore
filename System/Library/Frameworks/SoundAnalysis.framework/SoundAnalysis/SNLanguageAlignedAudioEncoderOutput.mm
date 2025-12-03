@interface SNLanguageAlignedAudioEncoderOutput
- (SNLanguageAlignedAudioEncoderOutput)initWithEmbedding:(id)embedding;
- (id)featureValueForName:(id)name;
@end

@implementation SNLanguageAlignedAudioEncoderOutput

- (SNLanguageAlignedAudioEncoderOutput)initWithEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v9.receiver = self;
  v9.super_class = SNLanguageAlignedAudioEncoderOutput;
  v6 = [(SNLanguageAlignedAudioEncoderOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_embedding, embedding);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"embedding"])
  {
    v4 = MEMORY[0x1E695FE60];
    embedding = [(SNLanguageAlignedAudioEncoderOutput *)self embedding];
    v6 = [v4 featureValueWithMultiArray:embedding];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end