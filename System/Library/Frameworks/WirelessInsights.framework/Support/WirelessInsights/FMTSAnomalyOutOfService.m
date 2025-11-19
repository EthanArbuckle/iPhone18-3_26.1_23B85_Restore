@interface FMTSAnomalyOutOfService
- (id)description;
@end

@implementation FMTSAnomalyOutOfService

- (id)description
{
  v5.receiver = self;
  v5.super_class = FMTSAnomalyOutOfService;
  v2 = [(FMTSAnomaly *)&v5 description];
  v3 = [NSString stringWithFormat:@"FMTSAnomalyOutOfService: %@", v2];

  return v3;
}

@end