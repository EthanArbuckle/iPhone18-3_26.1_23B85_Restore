@interface SRLegacyHeartRateShim
- (SRLegacyHeartRateShim)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
@end

@implementation SRLegacyHeartRateShim

- (SRLegacyHeartRateShim)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v6 = [objc_alloc(MEMORY[0x1E69634B0]) initWithBinarySampleRepresentation:a3 metadata:a4 timestamp:a5];
  v9.receiver = self;
  v9.super_class = SRLegacyHeartRateShim;
  v7 = [(CMHeartRateData *)&v9 initWithHighFrequencyHeartRate:v6];

  return v7;
}

@end