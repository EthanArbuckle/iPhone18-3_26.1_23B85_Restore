@interface VCAudioPowerSpectrumBin
- (VCAudioPowerSpectrumBin)initWithFrequencyRange:(_VCRange)range;
- (_VCRange)frequencyRange;
@end

@implementation VCAudioPowerSpectrumBin

- (VCAudioPowerSpectrumBin)initWithFrequencyRange:(_VCRange)range
{
  max = range.max;
  min = range.min;
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCAudioPowerSpectrumBin;
  result = [(VCAudioPowerSpectrumBin *)&v6 init];
  if (result)
  {
    result->_powerLevel = -120.0;
    result->_frequencyRange.min = min;
    result->_frequencyRange.max = max;
  }

  return result;
}

- (_VCRange)frequencyRange
{
  min = self->_frequencyRange.min;
  max = self->_frequencyRange.max;
  result.max = max;
  result.min = min;
  return result;
}

@end