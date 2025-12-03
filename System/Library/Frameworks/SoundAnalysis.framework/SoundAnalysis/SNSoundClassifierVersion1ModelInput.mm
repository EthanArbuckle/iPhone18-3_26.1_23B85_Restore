@interface SNSoundClassifierVersion1ModelInput
- (SNSoundClassifierVersion1ModelInput)initWithAudioSamples:(id)samples;
- (id)featureValueForName:(id)name;
@end

@implementation SNSoundClassifierVersion1ModelInput

- (SNSoundClassifierVersion1ModelInput)initWithAudioSamples:(id)samples
{
  samplesCopy = samples;
  v9.receiver = self;
  v9.super_class = SNSoundClassifierVersion1ModelInput;
  v6 = [(SNSoundClassifierVersion1ModelInput *)&v9 init];
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
    audioSamples = [(SNSoundClassifierVersion1ModelInput *)self audioSamples];
    v6 = [v4 featureValueWithMultiArray:audioSamples];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end