@interface NSDate
@end

@implementation NSDate

void __37__NSDate_HealthKit__hk_rfc3339String__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = hk_rfc3339String_dateFormatter;
  hk_rfc3339String_dateFormatter = v0;

  [hk_rfc3339String_dateFormatter setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"];
  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [hk_rfc3339String_dateFormatter setTimeZone:v2];
}

@end