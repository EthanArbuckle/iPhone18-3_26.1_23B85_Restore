@interface EXExtensionKitBundle
@end

@implementation EXExtensionKitBundle

void ___EXExtensionKitBundle_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_self();
  v1 = [v0 bundleForClass:v3];
  v2 = _EXExtensionKitBundle_bundle;
  _EXExtensionKitBundle_bundle = v1;
}

@end