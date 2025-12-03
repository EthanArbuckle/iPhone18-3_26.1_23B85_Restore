@interface AVCAudioPowerSpectrumBin
- (AVCAudioPowerSpectrumBin)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVCAudioPowerSpectrumBin

- (void)encodeWithCoder:(id)coder
{
  *&v3 = self->_minFrequency;
  [coder encodeFloat:@"minFrequency" forKey:v3];
  *&v6 = self->_maxFrequency;
  [coder encodeFloat:@"maxFrequency" forKey:v6];
  *&v7 = self->_powerLevel;

  [coder encodeFloat:@"powerLevel" forKey:v7];
}

- (AVCAudioPowerSpectrumBin)initWithCoder:(id)coder
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = AVCAudioPowerSpectrumBin;
  v4 = [(AVCAudioPowerSpectrumBin *)&v9 init];
  if (v4)
  {
    [coder decodeFloatForKey:@"minFrequency"];
    v4->_minFrequency = v5;
    [coder decodeFloatForKey:@"maxFrequency"];
    v4->_maxFrequency = v6;
    [coder decodeFloatForKey:@"powerLevel"];
    v4->_powerLevel = v7;
  }

  return v4;
}

@end