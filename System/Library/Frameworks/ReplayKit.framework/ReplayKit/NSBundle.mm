@interface NSBundle
@end

@implementation NSBundle

void __44__NSBundle_RPExtensions___rpFrameworkBundle__block_invoke()
{
  v0 = MEMORY[0x277CCA8D8];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/Frameworks/ReplayKit.framework"];
  v1 = [v0 bundleWithURL:v3];
  v2 = _rpFrameworkBundle_sFrameworkBundle;
  _rpFrameworkBundle_sFrameworkBundle = v1;
}

@end