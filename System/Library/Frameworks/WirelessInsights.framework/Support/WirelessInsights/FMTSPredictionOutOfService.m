@interface FMTSPredictionOutOfService
- (id)description;
@end

@implementation FMTSPredictionOutOfService

- (id)description
{
  v5.receiver = self;
  v5.super_class = FMTSPredictionOutOfService;
  v2 = [(FMTSPrediction *)&v5 description];
  v3 = [NSString stringWithFormat:@"FMTSPredictionOutOfService: %@", v2];

  return v3;
}

@end