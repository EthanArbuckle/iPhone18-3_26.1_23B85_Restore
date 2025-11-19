@interface SPAppUsageTrack
- (SPAppUsageTrack)init;
@end

@implementation SPAppUsageTrack

- (SPAppUsageTrack)init
{
  v3.receiver = self;
  v3.super_class = SPAppUsageTrack;
  result = [(SPAppUsageTrack *)&v3 init];
  if (result)
  {
    result->toGizmo[12] = 0;
    *&result->toGizmo[8] = 0u;
    *&result->toGizmo[4] = 0u;
    *result->toGizmo = 0u;
    *result->toComp = 0u;
    *&result->toComp[4] = 0u;
    *&result->toComp[8] = 0u;
    result->toComp[12] = 0;
  }

  return result;
}

@end