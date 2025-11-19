@interface WebArchive(WKFoundationSupport)
+ (uint64_t)bundleForClass;
@end

@implementation WebArchive(WKFoundationSupport)

+ (uint64_t)bundleForClass
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = NSClassFromString(&cfstr_Wkwebview.isa);

  return [v0 bundleForClass:v1];
}

@end