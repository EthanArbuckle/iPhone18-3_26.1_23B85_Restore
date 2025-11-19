@interface NSBundle(ShazamKitBundle)
+ (uint64_t)sh_ShazamKitBundle;
@end

@implementation NSBundle(ShazamKitBundle)

+ (uint64_t)sh_ShazamKitBundle
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

@end