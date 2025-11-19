@interface FMTSAnomalyLowSignalStrength
- (id)description;
@end

@implementation FMTSAnomalyLowSignalStrength

- (id)description
{
  v5.receiver = self;
  v5.super_class = FMTSAnomalyLowSignalStrength;
  v2 = [(FMTSAnomaly *)&v5 description];
  v3 = [NSString stringWithFormat:@"FMTSAnomalyLowSignalStrength: %@", v2];

  return v3;
}

@end