@interface CreateMRNowPlayingInfoFromAPNowPlayingInfo
@end

@implementation CreateMRNowPlayingInfoFromAPNowPlayingInfo

void ___CreateMRNowPlayingInfoFromAPNowPlayingInfo_block_invoke(uint64_t a1, void *key, const void *a3)
{
  if (_getMetadataKeyMap_s_onceToken != -1)
  {
    dispatch_once(&_getMetadataKeyMap_s_onceToken, &__block_literal_global_157);
  }

  Value = CFDictionaryGetValue(_getMetadataKeyMap_s_metadataKeyMap, key);
  if (Value)
  {
    v7 = Value;
    if (!CFEqual(*MEMORY[0x277CBEEE8], a3))
    {
      v8 = *(a1 + 32);

      CFDictionaryAddValue(v8, v7, a3);
    }
  }
}

@end