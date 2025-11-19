@interface NSBundle
@end

@implementation NSBundle

void __58__NSBundle_SafariServicesExtras___sf_safariServicesBundle__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.SafariServices"];
  v1 = _sf_safariServicesBundle_bundle;
  _sf_safariServicesBundle_bundle = v0;
}

@end