@interface AEPdfRenderingCache
+ (void)purgeCacheForIdentifier:(id)identifier;
- (id)thumbnailForPage:(int64_t)page asset:(id)asset size:(CGSize)size renderingCacheCallbackTarget:(id)target renderingCacheCallbackContext:(id)context priority:(int64_t)priority containerBounds:(CGRect)bounds;
@end

@implementation AEPdfRenderingCache

+ (void)purgeCacheForIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v4 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifierCopy memorySize:0];

    [v4 clear];
  }
}

- (id)thumbnailForPage:(int64_t)page asset:(id)asset size:(CGSize)size renderingCacheCallbackTarget:(id)target renderingCacheCallbackContext:(id)context priority:(int64_t)priority containerBounds:(CGRect)bounds
{
  height = size.height;
  width = size.width;
  targetCopy = target;
  contextCopy = context;
  if ((page - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000002)
  {
    assetCopy = asset;
    assetID = [assetCopy assetID];
    v20 = [assetCopy url];

    if (assetCopy)
    {
      assetCopy = 0;
      if ([assetID length])
      {
        if (v20)
        {
          [(AEPdfRenderingCache *)self scaleAdjustedImageSize:width, floor(height)];
          v22 = v21;
          v24 = v23;
          v25 = [(AEPdfRenderingCache *)self keyPrefixForPage:page];
          v26 = [(AEPdfRenderingCache *)self keyForAssetID:assetID prefix:v25 size:v22, v24];
          assetCopy = [(AEPdfRenderingCache *)self fetchImageForKey:v26];
          if (!assetCopy)
          {
            [(AEPdfRenderingCache *)self primaryImageSize];
            [(AEPdfRenderingCache *)self scaleAdjustedImageSize:?];
            v28 = v27;
            v30 = v29;
            v38 = v26;
            v36 = [(AEPdfRenderingCache *)self selectorForTarget:targetCopy];
            v31 = [AEPdfRenderingCache findRenderingCacheOperationWithStorageKey:"findRenderingCacheOperationWithStorageKey:target:selector:context:" target:v26 selector:targetCopy context:?];
            v32 = v31;
            if (!v31 || [(AEPdfPageRenderingCacheOperation *)v31 isCancelled])
            {
              v37 = v25;
              v33 = objc_alloc_init(AEPdfPageRenderingCacheOperation);

              [(AEPdfPageRenderingCacheOperation *)v33 setTarget:targetCopy];
              [(AEPdfPageRenderingCacheOperation *)v33 setSelector:v36];
              [(AEPdfPageRenderingCacheOperation *)v33 setContext:contextCopy];
              [(AEPdfPageRenderingCacheOperation *)v33 setImageCache:self];
              [(AEPdfPageRenderingCacheOperation *)v33 setDesiredSize:v22, v24];
              [(AEPdfPageRenderingCacheOperation *)v33 setAssetID:assetID];
              [(AEPdfPageRenderingCacheOperation *)v33 setStorageKey:v38];
              v34 = [(AEPdfRenderingCache *)self keyForAssetID:assetID prefix:v37 size:v28, v30];
              [(AEPdfPageRenderingCacheOperation *)v33 setMasterImageKey:v34];

              [(AEPdfPageRenderingCacheOperation *)v33 setSerializeFormat:[(AEPdfRenderingCache *)self serializeFormat]];
              [(AEPdfPageRenderingCacheOperation *)v33 setUrl:v20];
              [(AEPdfPageRenderingCacheOperation *)v33 setPageNumber:page];
              [(AEPdfPageRenderingCacheOperation *)v33 setQueuePriority:priority];
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
    assetCopy = 0;
  }

  return assetCopy;
}

@end