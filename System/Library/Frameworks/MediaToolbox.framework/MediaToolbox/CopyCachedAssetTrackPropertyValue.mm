@interface CopyCachedAssetTrackPropertyValue
@end

@implementation CopyCachedAssetTrackPropertyValue

CFTypeRef __remoteXPCAssetTrack_CopyCachedAssetTrackPropertyValue_block_invoke(uint64_t a1)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(*(*(a1 + 40) + 40), *(a1 + 48), &value);
  if (result)
  {
    if (value == *MEMORY[0x1E695E738])
    {
      result = 0;
    }

    else
    {
      result = CFRetain(value);
    }

    **(a1 + 56) = result;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

@end