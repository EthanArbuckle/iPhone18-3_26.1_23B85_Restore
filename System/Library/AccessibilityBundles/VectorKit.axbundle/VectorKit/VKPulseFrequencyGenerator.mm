@interface VKPulseFrequencyGenerator
- (VKPulseFrequencyGenerator)initWithMinPulseFrequency:(double)frequency maxPulseFrequency:(double)pulseFrequency minDepth:(int)depth maxDepth:(int)maxDepth;
- (double)frequencyForDepth:(int)depth;
@end

@implementation VKPulseFrequencyGenerator

- (VKPulseFrequencyGenerator)initWithMinPulseFrequency:(double)frequency maxPulseFrequency:(double)pulseFrequency minDepth:(int)depth maxDepth:(int)maxDepth
{
  v15.receiver = self;
  v15.super_class = VKPulseFrequencyGenerator;
  v10 = [(VKPulseFrequencyGenerator *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v12 = (pulseFrequency - frequency) / (depth - maxDepth);
    v10->slope = v12;
    v10->intercept = frequency - v12 * maxDepth;
    v13 = v10;
  }

  return v11;
}

- (double)frequencyForDepth:(int)depth
{
  if (depth < 0)
  {
    return 0.0;
  }

  else
  {
    return self->intercept + self->slope * depth;
  }
}

@end