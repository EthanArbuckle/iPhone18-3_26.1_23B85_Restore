@interface SRAudioLevel
- (id)sr_dictionaryRepresentation;
@end

@implementation SRAudioLevel

- (id)sr_dictionaryRepresentation
{
  if (self)
  {
    [(SRAudioLevel *)self timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  v3 = CMTimeRangeCopyDescription(kCFAllocatorDefault, &range);
  v9[0] = @"loudness";
  [(SRAudioLevel *)self loudness];
  if (fabs(v4) == INFINITY)
  {
    v5 = @"INF";
  }

  else
  {
    v5 = [NSString stringWithFormat:@"%f", *&v4];
  }

  v9[1] = @"timeRange";
  v10[0] = v5;
  v10[1] = v3;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  CFRelease(v3);
  return v6;
}

@end