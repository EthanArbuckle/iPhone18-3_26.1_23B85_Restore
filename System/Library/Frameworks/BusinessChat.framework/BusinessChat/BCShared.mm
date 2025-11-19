@interface BCShared
+ (uint64_t)classBundle;
@end

@implementation BCShared

+ (uint64_t)classBundle
{
  objc_opt_self();
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

@end