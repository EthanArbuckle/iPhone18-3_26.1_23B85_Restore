@interface CTSweetgumDataPlanMetricsError
+ (id)errorDescriptionForCode:(int64_t)code;
@end

@implementation CTSweetgumDataPlanMetricsError

+ (id)errorDescriptionForCode:(int64_t)code
{
  if (code > 0x12)
  {
    return @"Unknown Error";
  }

  else
  {
    return *(&off_1E6A43ED8 + code);
  }
}

@end