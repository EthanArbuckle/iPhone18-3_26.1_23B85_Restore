@interface SNLanguageAlignedAudioEncoderInput
- (SNLanguageAlignedAudioEncoderInput)initWithSpecgram:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation SNLanguageAlignedAudioEncoderInput

- (SNLanguageAlignedAudioEncoderInput)initWithSpecgram:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SNLanguageAlignedAudioEncoderInput;
  v6 = [(SNLanguageAlignedAudioEncoderInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specgram, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"specgram"])
  {
    v4 = MEMORY[0x1E695FE60];
    v5 = [(SNLanguageAlignedAudioEncoderInput *)self specgram];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end