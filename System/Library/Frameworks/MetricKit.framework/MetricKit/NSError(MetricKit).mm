@interface NSError(MetricKit)
+ (id)_defaultDescriptionForMXErrorCode:()MetricKit;
+ (id)errorWithMXErrorCode:()MetricKit;
@end

@implementation NSError(MetricKit)

+ (id)_defaultDescriptionForMXErrorCode:()MetricKit
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = mainBundle;
  if (a3 > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [mainBundle localizedStringForKey:off_278B3ED68[a3] value:&stru_284D0F2E0 table:0];
  }

  return v6;
}

+ (id)errorWithMXErrorCode:()MetricKit
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [self alloc];
  v11 = *MEMORY[0x277CCA450];
  v6 = [(objc_class *)self _defaultDescriptionForMXErrorCode:a3];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v5 initWithDomain:@"MXErrorDomain" code:a3 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end