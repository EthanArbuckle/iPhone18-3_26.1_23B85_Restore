@interface PHCollectionShareAssetSource
+ (id)collectionShareAssetSourceWithData:(id)a3 resourceType:(int64_t)a4;
+ (id)collectionShareAssetSourceWithFileURL:(id)a3 resourceType:(int64_t)a4;
+ (id)collectionShareAssetSourceWithVideoComplementBundle:(id)a3;
- (PHCollectionShareAssetSource)initWithCollectionShareAssetSourceWithFileURL:(id)a3 data:(id)a4 videoComplementBundle:(id)a5 resourceType:(int64_t)a6 sourceType:(int64_t)a7;
@end

@implementation PHCollectionShareAssetSource

- (PHCollectionShareAssetSource)initWithCollectionShareAssetSourceWithFileURL:(id)a3 data:(id)a4 videoComplementBundle:(id)a5 resourceType:(int64_t)a6 sourceType:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v23.receiver = self;
  v23.super_class = PHCollectionShareAssetSource;
  v15 = [(PHCollectionShareAssetSource *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    fileURL = v15->_fileURL;
    v15->_fileURL = v16;

    v18 = [v13 copy];
    data = v15->_data;
    v15->_data = v18;

    v20 = [v14 copy];
    videoComplementBundle = v15->_videoComplementBundle;
    v15->_videoComplementBundle = v20;

    v15->_resourceType = a6;
    v15->_sourceType = a7;
  }

  return v15;
}

+ (id)collectionShareAssetSourceWithVideoComplementBundle:(id)a3
{
  v3 = a3;
  v4 = [[PHCollectionShareAssetSource alloc] initWithCollectionShareAssetSourceWithFileURL:0 data:0 videoComplementBundle:v3 resourceType:0 sourceType:3];

  return v4;
}

+ (id)collectionShareAssetSourceWithData:(id)a3 resourceType:(int64_t)a4
{
  v5 = a3;
  v6 = [[PHCollectionShareAssetSource alloc] initWithCollectionShareAssetSourceWithFileURL:0 data:v5 videoComplementBundle:0 resourceType:a4 sourceType:2];

  return v6;
}

+ (id)collectionShareAssetSourceWithFileURL:(id)a3 resourceType:(int64_t)a4
{
  v5 = a3;
  v6 = [[PHCollectionShareAssetSource alloc] initWithCollectionShareAssetSourceWithFileURL:v5 data:0 videoComplementBundle:0 resourceType:a4 sourceType:1];

  return v6;
}

@end