@interface SNSoundClassifierVersion1ModelInput
- (SNSoundClassifierVersion1ModelInput)initWithAudioSamples:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation SNSoundClassifierVersion1ModelInput

- (SNSoundClassifierVersion1ModelInput)initWithAudioSamples:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SNSoundClassifierVersion1ModelInput;
  v6 = [(SNSoundClassifierVersion1ModelInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioSamples, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"audioSamples"])
  {
    v4 = MEMORY[0x1E695FE60];
    v5 = [(SNSoundClassifierVersion1ModelInput *)self audioSamples];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end