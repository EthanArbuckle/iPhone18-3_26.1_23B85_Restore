@interface BCVSUtilities
+ (id)classBundle;
@end

@implementation BCVSUtilities

+ (id)classBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

@end