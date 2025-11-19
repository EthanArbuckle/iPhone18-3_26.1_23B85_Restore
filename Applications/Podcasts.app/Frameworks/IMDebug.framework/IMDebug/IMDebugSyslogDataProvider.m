@interface IMDebugSyslogDataProvider
- (id)debugData;
@end

@implementation IMDebugSyslogDataProvider

- (id)debugData
{
  v2 = objc_opt_new();
  [NSDateFormatter setDefaultFormatterBehavior:1040];
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"YYYY-MM-dd HH:mm:ss.SSS"];
  v4 = asl_new(1u);
  v5 = asl_search(0, v4);
  v6 = asl_next(v5);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = asl_get(v7, "Time");
      v9 = atol(v8);
      v10 = asl_get(v7, "TimeNanoSec");
      v11 = [NSDate dateWithTimeIntervalSince1970:atol(v10) / 1000000000.0 + v9];
      v12 = [v3 stringFromDate:v11];
      v13 = [NSString stringWithUTF8String:asl_get(v7, "Message")];
      [v2 appendString:v12];
      [v2 appendString:@" "];
      [v2 appendString:v13];
      [v2 appendString:@"\n"];

      v7 = asl_next(v5);
    }

    while (v7);
  }

  asl_release(v5);
  v14 = [v2 dataUsingEncoding:4];

  return v14;
}

@end