@interface AMSLogBridge
+ (id)amsLogConfigWithCategory:(int64_t)category;
@end

@implementation AMSLogBridge

+ (id)amsLogConfigWithCategory:(int64_t)category
{
  v3 = static AMSLogBridge.amsLogConfig(category:)(category);

  return v3;
}

@end