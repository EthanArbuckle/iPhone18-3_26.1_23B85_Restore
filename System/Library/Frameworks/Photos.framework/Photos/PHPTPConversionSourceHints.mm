@interface PHPTPConversionSourceHints
+ (id)hintsForPTPAsset:(id)asset isVideo:(BOOL)video isRender:(BOOL)render;
- (PHPTPConversionSourceHints)initWithPTPAsset:(id)asset isVideo:(BOOL)video isRender:(BOOL)render;
@end

@implementation PHPTPConversionSourceHints

- (PHPTPConversionSourceHints)initWithPTPAsset:(id)asset isVideo:(BOOL)video isRender:(BOOL)render
{
  assetCopy = asset;
  v14.receiver = self;
  v14.super_class = PHPTPConversionSourceHints;
  v9 = [(PHPTPConversionSourceHints *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_isVideo = video;
    v9->_isRender = render;
    if ([assetCopy isPhoto])
    {
      if ([assetCopy isPartOfLivePhoto])
      {
        v10->_isLivePhoto = 1;
        contentType = [assetCopy contentType];
        livePhotoImageContentType = v10->_livePhotoImageContentType;
        v10->_livePhotoImageContentType = contentType;
      }
    }
  }

  return v10;
}

+ (id)hintsForPTPAsset:(id)asset isVideo:(BOOL)video isRender:(BOOL)render
{
  renderCopy = render;
  videoCopy = video;
  assetCopy = asset;
  v9 = [[self alloc] initWithPTPAsset:assetCopy isVideo:videoCopy isRender:renderCopy];

  return v9;
}

@end