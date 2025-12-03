@interface NSDate(ADCoreExtensions)
+ (id)AD_dateFromServerTime:()ADCoreExtensions;
- (id)AD_doubleDateTimeAsString;
- (id)AD_localDateTimeAsString;
- (id)AD_universalDateTimeAsString;
@end

@implementation NSDate(ADCoreExtensions)

+ (id)AD_dateFromServerTime:()ADCoreExtensions
{
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:a3];

  return v3;
}

- (id)AD_localDateTimeAsString
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  [v2 setTimeZone:defaultTimeZone];

  [v2 setDateFormat:@"YYYY-MM-dd HH:mm:ssZ"];
  v4 = [v2 stringFromDate:self];

  return v4;
}

- (id)AD_universalDateTimeAsString
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v2 setTimeZone:v3];

  [v2 setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
  v4 = [v2 stringFromDate:self];

  return v4;
}

- (id)AD_doubleDateTimeAsString
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  [v2 setTimeZone:defaultTimeZone];

  [v2 setDateFormat:@"YYYY-MM-dd HH:mm:ssZ"];
  v4 = [v2 stringFromDate:self];
  v5 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v2 setTimeZone:v5];

  [v2 setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
  v6 = [v2 stringFromDate:self];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ (%@ Z)", v4, v6];

  return v7;
}

@end