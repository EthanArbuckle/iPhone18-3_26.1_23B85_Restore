@interface SetCachedAssetPropertyValue
@end

@implementation SetCachedAssetPropertyValue

void __remoteXPCAsset_SetCachedAssetPropertyValue_block_invoke(void *a1)
{
  FigCFDictionarySetInt32();
  v2 = a1[5];
  if (!CFEqual(@"assetProperty_MakeReadAheadAssertionWhenCreatingByteStream", v2) && !CFEqual(@"assetProperty_OriginalReadAheadAssertion", v2) && !CFEqual(@"assetProperty_FormatReader", v2))
  {
    v3 = a1[5];
    v4 = *(a1[4] + 32);
    if (a1[6])
    {
      v5 = a1[6];
    }

    else
    {
      v5 = *MEMORY[0x1E695E738];
    }

    CFDictionarySetValue(v4, v3, v5);
  }
}

@end