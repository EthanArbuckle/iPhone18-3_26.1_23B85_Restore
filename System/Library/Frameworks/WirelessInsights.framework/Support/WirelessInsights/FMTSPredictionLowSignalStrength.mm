@interface FMTSPredictionLowSignalStrength
- (id)description;
@end

@implementation FMTSPredictionLowSignalStrength

- (id)description
{
  v5.receiver = self;
  v5.super_class = FMTSPredictionLowSignalStrength;
  v2 = [(FMTSPrediction *)&v5 description];
  v3 = [NSString stringWithFormat:@"FMTSPredictionLowSignalStrength: %@", v2];

  return v3;
}

@end