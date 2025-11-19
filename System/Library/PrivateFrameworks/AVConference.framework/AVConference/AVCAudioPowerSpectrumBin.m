@interface AVCAudioPowerSpectrumBin
- (AVCAudioPowerSpectrumBin)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVCAudioPowerSpectrumBin

- (void)encodeWithCoder:(id)a3
{
  *&v3 = self->_minFrequency;
  [a3 encodeFloat:@"minFrequency" forKey:v3];
  *&v6 = self->_maxFrequency;
  [a3 encodeFloat:@"maxFrequency" forKey:v6];
  *&v7 = self->_powerLevel;

  [a3 encodeFloat:@"powerLevel" forKey:v7];
}

- (AVCAudioPowerSpectrumBin)initWithCoder:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = AVCAudioPowerSpectrumBin;
  v4 = [(AVCAudioPowerSpectrumBin *)&v9 init];
  if (v4)
  {
    [a3 decodeFloatForKey:@"minFrequency"];
    v4->_minFrequency = v5;
    [a3 decodeFloatForKey:@"maxFrequency"];
    v4->_maxFrequency = v6;
    [a3 decodeFloatForKey:@"powerLevel"];
    v4->_powerLevel = v7;
  }

  return v4;
}

@end