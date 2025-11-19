@interface PHPTPConversionSourceHints
+ (id)hintsForPTPAsset:(id)a3 isVideo:(BOOL)a4 isRender:(BOOL)a5;
- (PHPTPConversionSourceHints)initWithPTPAsset:(id)a3 isVideo:(BOOL)a4 isRender:(BOOL)a5;
@end

@implementation PHPTPConversionSourceHints

- (PHPTPConversionSourceHints)initWithPTPAsset:(id)a3 isVideo:(BOOL)a4 isRender:(BOOL)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = PHPTPConversionSourceHints;
  v9 = [(PHPTPConversionSourceHints *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_isVideo = a4;
    v9->_isRender = a5;
    if ([v8 isPhoto])
    {
      if ([v8 isPartOfLivePhoto])
      {
        v10->_isLivePhoto = 1;
        v11 = [v8 contentType];
        livePhotoImageContentType = v10->_livePhotoImageContentType;
        v10->_livePhotoImageContentType = v11;
      }
    }
  }

  return v10;
}

+ (id)hintsForPTPAsset:(id)a3 isVideo:(BOOL)a4 isRender:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [[a1 alloc] initWithPTPAsset:v8 isVideo:v6 isRender:v5];

  return v9;
}

@end