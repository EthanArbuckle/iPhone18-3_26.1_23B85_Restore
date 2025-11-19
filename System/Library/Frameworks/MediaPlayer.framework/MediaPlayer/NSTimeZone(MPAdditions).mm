@interface NSTimeZone(MPAdditions)
- (id)ISO8601TimeZoneOffsetFromUTC;
@end

@implementation NSTimeZone(MPAdditions)

- (id)ISO8601TimeZoneOffsetFromUTC
{
  v2 = [a1 secondsFromGMT] / 3600.0;
  v3 = fabs(v2);
  LODWORD(v1) = vcvtmd_s64_f64(v3);
  v4 = ((v3 - trunc(v3)) * 60.0);
  v5 = @"-";
  if (v2 >= 0.0)
  {
    v5 = @"+";
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = v5;
  v8 = [v6 stringWithFormat:@"%02d", v1];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@":%02d", v4];
  if (v4)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v7, v8, v9];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, v8, v12];
  }
  v10 = ;

  return v10;
}

@end