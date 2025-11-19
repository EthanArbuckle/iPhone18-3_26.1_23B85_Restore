@interface CTSweetgumDataPlanMetricsError
+ (id)errorDescriptionForCode:(int64_t)a3;
@end

@implementation CTSweetgumDataPlanMetricsError

+ (id)errorDescriptionForCode:(int64_t)a3
{
  if (a3 > 0x12)
  {
    return @"Unknown Error";
  }

  else
  {
    return *(&off_1E6A43ED8 + a3);
  }
}

@end