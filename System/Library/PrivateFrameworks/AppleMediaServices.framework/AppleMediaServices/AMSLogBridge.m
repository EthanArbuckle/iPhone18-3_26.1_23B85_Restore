@interface AMSLogBridge
+ (id)amsLogConfigWithCategory:(int64_t)a3;
@end

@implementation AMSLogBridge

+ (id)amsLogConfigWithCategory:(int64_t)a3
{
  v3 = static AMSLogBridge.amsLogConfig(category:)(a3);

  return v3;
}

@end