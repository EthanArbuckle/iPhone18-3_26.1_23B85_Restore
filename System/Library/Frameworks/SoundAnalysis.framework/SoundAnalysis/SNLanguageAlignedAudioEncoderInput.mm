@interface SNLanguageAlignedAudioEncoderInput
- (SNLanguageAlignedAudioEncoderInput)initWithSpecgram:(id)specgram;
- (id)featureValueForName:(id)name;
@end

@implementation SNLanguageAlignedAudioEncoderInput

- (SNLanguageAlignedAudioEncoderInput)initWithSpecgram:(id)specgram
{
  specgramCopy = specgram;
  v9.receiver = self;
  v9.super_class = SNLanguageAlignedAudioEncoderInput;
  v6 = [(SNLanguageAlignedAudioEncoderInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specgram, specgram);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"specgram"])
  {
    v4 = MEMORY[0x1E695FE60];
    specgram = [(SNLanguageAlignedAudioEncoderInput *)self specgram];
    v6 = [v4 featureValueWithMultiArray:specgram];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end