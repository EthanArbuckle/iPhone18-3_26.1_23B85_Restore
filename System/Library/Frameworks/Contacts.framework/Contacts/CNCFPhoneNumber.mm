@interface CNCFPhoneNumber
+ (id)makeProxy;
@end

@implementation CNCFPhoneNumber

+ (id)makeProxy
{
  v2 = objc_alloc_init(self);

  return v2;
}

@end