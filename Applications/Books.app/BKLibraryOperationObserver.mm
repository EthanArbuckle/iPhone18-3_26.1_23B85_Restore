@interface BKLibraryOperationObserver
- (BKLibraryOperationObserver)init;
- (void)invalidateBookIndices:(id)indices;
- (void)libraryOperationCompleteNotificationReceived:(id)received;
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

- (void)libraryOperationCompleteNotificationReceived:(id)received
{
  receivedCopy = received;
  userInfo = [receivedCopy userInfo];

  v5 = receivedCopy;
  if (userInfo)
  {
    userInfo2 = [receivedCopy userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:BKLibraryOperationTypeKey];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    userInfo3 = [receivedCopy userInfo];
    v10 = [userInfo3 objectForKeyedSubscript:BKLibraryOperationAssetIDsKey];

    if ([v10 count])
    {
      v11 = unsignedIntegerValue == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      [(BKLibraryOperationObserver *)self invalidateBookIndices:v10];
    }

    v5 = receivedCopy;
  }
}

- (void)invalidateBookIndices:(id)indices
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  indicesCopy = indices;
  v4 = [indicesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(indicesCopy);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [AEPictureBookRenderingCache purgeCacheForIdentifier:v7, v8];
        [AEPdfRenderingCache purgeCacheForIdentifier:v7];
        [BEPageSnapshotCache purgeCacheForIdentifier:v7];
      }

      v4 = [indicesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [BKTextIndex invalidateBookIndicesWithNames:indicesCopy];
}

@end