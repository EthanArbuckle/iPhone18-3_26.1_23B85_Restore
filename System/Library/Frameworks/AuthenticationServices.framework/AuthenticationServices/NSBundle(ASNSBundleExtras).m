@interface NSBundle(ASNSBundleExtras)
+ (uint64_t)as_authenticationServicesBundle;
@end

@implementation NSBundle(ASNSBundleExtras)

+ (uint64_t)as_authenticationServicesBundle
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

@end