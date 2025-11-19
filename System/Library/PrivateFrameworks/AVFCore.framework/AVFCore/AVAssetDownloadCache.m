@interface AVAssetDownloadCache
- (AVAssetDownloadCache)initWithAsset:(id)a3;
- (BOOL)isPlayableOffline;
- (id)URL;
- (id)mediaSelectionOptionsInMediaSelectionGroup:(id)a3;
- (void)dealloc;
@end

@implementation AVAssetDownloadCache

- (AVAssetDownloadCache)initWithAsset:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVAssetDownloadCache;
  v4 = [(AVAssetCache *)&v7 _init];
  if (v4)
  {
    v5 = objc_alloc_init(AVAssetDownloadCacheInternal);
    v4->_internal = v5;
    if (!v5 || ([a3 _figAsset], FigAssetCacheInspectorCreate_Remote()))
    {

      return 0;
    }
  }

  return v4;
}

- (id)URL
{
  v6 = 0;
  CMBaseObject = FigAssetCacheInspectorGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6970BF8], *MEMORY[0x1E695E480], &v6);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mediaSelectionOptionsInMediaSelectionGroup:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v22 = 0;
  assetCacheInspector = self->_internal->assetCacheInspector;
  v7 = [a3 dictionary];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v8)
  {
    v8(assetCacheInspector, v7, 0, &v22);
    v9 = v22;
  }

  else
  {
    v9 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [a3 options];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __67__AVAssetDownloadCache_mediaSelectionOptionsInMediaSelectionGroup___block_invoke;
        v17[3] = &unk_1E74650A0;
        v17[4] = v14;
        [v5 addObject:{objc_msgSend(objc_msgSend(a3, "options"), "objectAtIndex:", objc_msgSend(v15, "indexOfObjectPassingTest:", v17))}];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v11);
  }

  return [v5 copy];
}

uint64_t __67__AVAssetDownloadCache_mediaSelectionOptionsInMediaSelectionGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isEqualToDictionary:{objc_msgSend(a2, "dictionary")}];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

- (BOOL)isPlayableOffline
{
  v5 = 0;
  CMBaseObject = FigAssetCacheInspectorGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6970C00], *MEMORY[0x1E695E480], &v5);
    v3 = v5;
  }

  return v3 == *MEMORY[0x1E695E4D0];
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    assetCacheInspector = internal->assetCacheInspector;
    if (assetCacheInspector)
    {
      CFRelease(assetCacheInspector);
      internal = self->_internal;
    }
  }

  v5.receiver = self;
  v5.super_class = AVAssetDownloadCache;
  [(AVAssetDownloadCache *)&v5 dealloc];
}

@end