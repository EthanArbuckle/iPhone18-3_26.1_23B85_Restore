@interface ODRDataSampler
- (id)currentStatsString;
@end

@implementation ODRDataSampler

- (id)currentStatsString
{
  v3 = sub_10031FE48(self);
  v4 = sub_10031FEC8(self);
  v5 = sub_10031FDC8(self);
  v6 = [NSString stringWithFormat:@"Min:%@, Max:%@, Avg:%@", v3, v4, v5];

  return v6;
}

@end