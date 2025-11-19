@interface FMTSAnomalyCongestion
- (id)description;
@end

@implementation FMTSAnomalyCongestion

- (id)description
{
  v5.receiver = self;
  v5.super_class = FMTSAnomalyCongestion;
  v2 = [(FMTSAnomaly *)&v5 description];
  v3 = [NSString stringWithFormat:@"FMTSAnomalyCongestion: %@", v2];

  return v3;
}

@end