@interface ReleaseOldCryptorAndMagicCookie
@end

@implementation ReleaseOldCryptorAndMagicCookie

uint64_t __audioHoseManagerBuffered_ReleaseOldCryptorAndMagicCookie_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v3 = audioHoseManagerBuffered_releaseCryptors(v2, &v7);
  if (OUTLINED_FUNCTION_1_38(v3) || (v4 = *(a1 + 40), v7 = *(a1 + 48), v8 = *(a1 + 64), v5 = audioHoseManagerBuffered_releaseMagicCookies(v4, &v7), result = OUTLINED_FUNCTION_1_38(v5), result))
  {

    return APSLogErrorAt();
  }

  return result;
}

@end