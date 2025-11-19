@interface BKLibraryOperationObserver
- (BKLibraryOperationObserver)init;
- (void)invalidateBookIndices:(id)a3;
- (void)libraryOperationCompleteNotificationReceived:(id)a3;
- (void)setup;
@end

@implementation BKLibraryOperationObserver

- (BKLibraryOperationObserver)init
{
  v5.receiver = self;
  v5.super_class = BKLibraryOperationObserver;
  v2 = [(BKLibraryOperationObserver *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BKLibraryOperationObserver *)v2 setup];
  }

  return v3;
}

- (void)setup
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"libraryOperationCompleteNotificationReceived:" name:BKLibraryOperationCompleteNotification object:0];
}

- (void)libraryOperationCompleteNotificationReceived:(id)a3
{
  v12 = a3;
  v4 = [v12 userInfo];

  v5 = v12;
  if (v4)
  {
    v6 = [v12 userInfo];
    v7 = [v6 objectForKeyedSubscript:BKLibraryOperationTypeKey];
    v8 = [v7 unsignedIntegerValue];

    v9 = [v12 userInfo];
    v10 = [v9 objectForKeyedSubscript:BKLibraryOperationAssetIDsKey];

    if ([v10 count])
    {
      v11 = v8 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      [(BKLibraryOperationObserver *)self invalidateBookIndices:v10];
    }

    v5 = v12;
  }
}

- (void)invalidateBookIndices:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [AEPictureBookRenderingCache purgeCacheForIdentifier:v7, v8];
        [AEPdfRenderingCache purgeCacheForIdentifier:v7];
        [BEPageSnapshotCache purgeCacheForIdentifier:v7];
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [BKTextIndex invalidateBookIndicesWithNames:v3];
}

@end