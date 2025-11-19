@interface FMTSPredictionCongestion
- (id)description;
@end

@implementation FMTSPredictionCongestion

- (id)description
{
  v5.receiver = self;
  v5.super_class = FMTSPredictionCongestion;
  v2 = [(FMTSPrediction *)&v5 description];
  v3 = [NSString stringWithFormat:@"FMTSPredictionCongestion: %@", v2];

  return v3;
}

@end