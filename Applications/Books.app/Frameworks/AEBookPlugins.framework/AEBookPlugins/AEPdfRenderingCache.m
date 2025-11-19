@interface AEPdfRenderingCache
+ (void)purgeCacheForIdentifier:(id)a3;
- (id)thumbnailForPage:(int64_t)a3 asset:(id)a4 size:(CGSize)a5 renderingCacheCallbackTarget:(id)a6 renderingCacheCallbackContext:(id)a7 priority:(int64_t)a8 containerBounds:(CGRect)a9;
@end

@implementation AEPdfRenderingCache

+ (void)purgeCacheForIdentifier:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [objc_alloc(objc_opt_class()) initWithIdentifier:v3 memorySize:0];

    [v4 clear];
  }
}

- (id)thumbnailForPage:(int64_t)a3 asset:(id)a4 size:(CGSize)a5 renderingCacheCallbackTarget:(id)a6 renderingCacheCallbackContext:(id)a7 priority:(int64_t)a8 containerBounds:(CGRect)a9
{
  height = a5.height;
  width = a5.width;
  v16 = a6;
  v17 = a7;
  if ((a3 - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000002)
  {
    v18 = a4;
    v19 = [v18 assetID];
    v20 = [v18 url];

    if (v18)
    {
      v18 = 0;
      if ([v19 length])
      {
        if (v20)
        {
          [(AEPdfRenderingCache *)self scaleAdjustedImageSize:width, floor(height)];
          v22 = v21;
          v24 = v23;
          v25 = [(AEPdfRenderingCache *)self keyPrefixForPage:a3];
          v26 = [(AEPdfRenderingCache *)self keyForAssetID:v19 prefix:v25 size:v22, v24];
          v18 = [(AEPdfRenderingCache *)self fetchImageForKey:v26];
          if (!v18)
          {
            [(AEPdfRenderingCache *)self primaryImageSize];
            [(AEPdfRenderingCache *)self scaleAdjustedImageSize:?];
            v28 = v27;
            v30 = v29;
            v38 = v26;
            v36 = [(AEPdfRenderingCache *)self selectorForTarget:v16];
            v31 = [AEPdfRenderingCache findRenderingCacheOperationWithStorageKey:"findRenderingCacheOperationWithStorageKey:target:selector:context:" target:v26 selector:v16 context:?];
            v32 = v31;
            if (!v31 || [(AEPdfPageRenderingCacheOperation *)v31 isCancelled])
            {
              v37 = v25;
              v33 = objc_alloc_init(AEPdfPageRenderingCacheOperation);

              [(AEPdfPageRenderingCacheOperation *)v33 setTarget:v16];
              [(AEPdfPageRenderingCacheOperation *)v33 setSelector:v36];
              [(AEPdfPageRenderingCacheOperation *)v33 setContext:v17];
              [(AEPdfPageRenderingCacheOperation *)v33 setImageCache:self];
              [(AEPdfPageRenderingCacheOperation *)v33 setDesiredSize:v22, v24];
              [(AEPdfPageRenderingCacheOperation *)v33 setAssetID:v19];
              [(AEPdfPageRenderingCacheOperation *)v33 setStorageKey:v38];
              v34 = [(AEPdfRenderingCache *)self keyForAssetID:v19 prefix:v37 size:v28, v30];
              [(AEPdfPageRenderingCacheOperation *)v33 setMasterImageKey:v34];

              [(AEPdfPageRenderingCacheOperation *)v33 setSerializeFormat:[(AEPdfRenderingCache *)self serializeFormat]];
              [(AEPdfPageRenderingCacheOperation *)v33 setUrl:v20];
              [(AEPdfPageRenderingCacheOperation *)v33 setPageNumber:a3];
              [(AEPdfPageRenderingCacheOperation *)v33 setQueuePriority:a8];
              [(AEPdfRenderingCache *)self enqueueRenderingCacheOperation:v33];
              v32 = v33;
              v25 = v37;
            }

            v26 = v38;
          }
        }
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end