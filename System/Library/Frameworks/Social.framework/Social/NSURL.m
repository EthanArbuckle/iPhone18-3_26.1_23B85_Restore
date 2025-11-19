@interface NSURL
@end

@implementation NSURL

uint64_t __60__NSURL_SLFacebookURLAdditions___isBetaSwitchEnabledForKey___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = CFPreferencesCopyValue(*(a1 + 40), @"com.apple.social.facebook", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);

  return MEMORY[0x1EEE66BB8]();
}

@end