@interface NSBundle
@end

@implementation NSBundle

void __41__NSBundle_Photos__ph_isFirstPartyBundle__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleIdentifier];
  ph_isFirstPartyBundle_isFirstPartyBundle = [v1 hasPrefix:@"com.apple."];
}

@end