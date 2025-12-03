@interface SRLegacyHeartRateShim
- (SRLegacyHeartRateShim)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
@end

@implementation SRLegacyHeartRateShim

- (SRLegacyHeartRateShim)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v6 = [objc_alloc(MEMORY[0x1E69634B0]) initWithBinarySampleRepresentation:representation metadata:metadata timestamp:timestamp];
  v9.receiver = self;
  v9.super_class = SRLegacyHeartRateShim;
  v7 = [(CMHeartRateData *)&v9 initWithHighFrequencyHeartRate:v6];

  return v7;
}

@end