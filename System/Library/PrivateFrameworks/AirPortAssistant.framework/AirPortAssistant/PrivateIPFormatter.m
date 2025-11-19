@interface PrivateIPFormatter
+ (id)privateIPFormatter;
@end

@implementation PrivateIPFormatter

+ (id)privateIPFormatter
{
  v2 = [PrivateIPFormatter alloc];
  v4 = objc_msgSend_initWithMin_max_(v2, v3, 1, 254);

  return v4;
}

@end