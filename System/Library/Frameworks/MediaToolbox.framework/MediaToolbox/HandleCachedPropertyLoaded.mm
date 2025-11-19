@interface HandleCachedPropertyLoaded
@end

@implementation HandleCachedPropertyLoaded

void __remoteXPCAssetClient_HandleCachedPropertyLoaded_block_invoke(uint64_t a1)
{
  FigCFDictionarySetInt32();
  if (*(a1 + 48) && !*(a1 + 64))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 32);
    if (*(a1 + 56))
    {
      v4 = *(a1 + 56);
    }

    else
    {
      v4 = *MEMORY[0x1E695E738];
    }

    CFDictionarySetValue(v3, v2, v4);
  }
}

void __remoteXPCAssetTrackClient_HandleCachedPropertyLoaded_block_invoke(uint64_t a1)
{
  FigCFDictionarySetInt32();
  if (*(a1 + 48) && !*(a1 + 64))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 40);
    if (*(a1 + 56))
    {
      v4 = *(a1 + 56);
    }

    else
    {
      v4 = *MEMORY[0x1E695E738];
    }

    CFDictionarySetValue(v3, v2, v4);
  }
}

@end