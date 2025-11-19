@interface SetCachedAssetTrackPropertyValue
@end

@implementation SetCachedAssetTrackPropertyValue

void __remoteXPCAssetTrack_SetCachedAssetTrackPropertyValue_block_invoke(void *a1)
{
  FigCFDictionarySetInt32();
  v2 = a1[5];
  v3 = *(a1[4] + 40);
  if (a1[6])
  {
    v4 = a1[6];
  }

  else
  {
    v4 = *MEMORY[0x1E695E738];
  }

  CFDictionarySetValue(v3, v2, v4);
}

@end