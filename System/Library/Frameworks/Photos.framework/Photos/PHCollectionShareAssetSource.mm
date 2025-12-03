@interface PHCollectionShareAssetSource
+ (id)collectionShareAssetSourceWithData:(id)data resourceType:(int64_t)type;
+ (id)collectionShareAssetSourceWithFileURL:(id)l resourceType:(int64_t)type;
+ (id)collectionShareAssetSourceWithVideoComplementBundle:(id)bundle;
- (PHCollectionShareAssetSource)initWithCollectionShareAssetSourceWithFileURL:(id)l data:(id)data videoComplementBundle:(id)bundle resourceType:(int64_t)type sourceType:(int64_t)sourceType;
@end

@implementation PHCollectionShareAssetSource

- (PHCollectionShareAssetSource)initWithCollectionShareAssetSourceWithFileURL:(id)l data:(id)data videoComplementBundle:(id)bundle resourceType:(int64_t)type sourceType:(int64_t)sourceType
{
  lCopy = l;
  dataCopy = data;
  bundleCopy = bundle;
  v23.receiver = self;
  v23.super_class = PHCollectionShareAssetSource;
  v15 = [(PHCollectionShareAssetSource *)&v23 init];
  if (v15)
  {
    v16 = [lCopy copy];
    fileURL = v15->_fileURL;
    v15->_fileURL = v16;

    v18 = [dataCopy copy];
    data = v15->_data;
    v15->_data = v18;

    v20 = [bundleCopy copy];
    videoComplementBundle = v15->_videoComplementBundle;
    v15->_videoComplementBundle = v20;

    v15->_resourceType = type;
    v15->_sourceType = sourceType;
  }

  return v15;
}

+ (id)collectionShareAssetSourceWithVideoComplementBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [[PHCollectionShareAssetSource alloc] initWithCollectionShareAssetSourceWithFileURL:0 data:0 videoComplementBundle:bundleCopy resourceType:0 sourceType:3];

  return v4;
}

+ (id)collectionShareAssetSourceWithData:(id)data resourceType:(int64_t)type
{
  dataCopy = data;
  v6 = [[PHCollectionShareAssetSource alloc] initWithCollectionShareAssetSourceWithFileURL:0 data:dataCopy videoComplementBundle:0 resourceType:type sourceType:2];

  return v6;
}

+ (id)collectionShareAssetSourceWithFileURL:(id)l resourceType:(int64_t)type
{
  lCopy = l;
  v6 = [[PHCollectionShareAssetSource alloc] initWithCollectionShareAssetSourceWithFileURL:lCopy data:0 videoComplementBundle:0 resourceType:type sourceType:1];

  return v6;
}

@end