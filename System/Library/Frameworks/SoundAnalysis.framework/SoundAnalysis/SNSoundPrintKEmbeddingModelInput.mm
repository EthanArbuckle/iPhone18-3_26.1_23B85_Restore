@interface SNSoundPrintKEmbeddingModelInput
- (SNSoundPrintKEmbeddingModelInput)initWithAudioSamples:(id)samples;
- (id)featureValueForName:(id)name;
@end

@implementation SNSoundPrintKEmbeddingModelInput

- (SNSoundPrintKEmbeddingModelInput)initWithAudioSamples:(id)samples
{
  samplesCopy = samples;
  v9.receiver = self;
  v9.super_class = SNSoundPrintKEmbeddingModelInput;
  v6 = [(SNSoundPrintKEmbeddingModelInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioSamples, samples);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"audioSamples"])
  {
    v4 = MEMORY[0x1E695FE60];
    audioSamples = [(SNSoundPrintKEmbeddingModelInput *)self audioSamples];
    v6 = [v4 featureValueWithMultiArray:audioSamples];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end