@interface NTKTimelapseListing
- (BOOL)isEqual:(id)a3;
- (BOOL)isSimilarTo:(id)a3;
- (BOOL)snapshotDiffers:(id)a3;
- (CLKVideo)video;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForDevice:(id)a3 withTheme:(unint64_t)a4 videoIndex:(int64_t)a5 photoAnalysis:(id)a6;
- (void)_setHasAssets;
- (void)discardAssets;
@end

@implementation NTKTimelapseListing

- (id)initForDevice:(id)a3 withTheme:(unint64_t)a4 videoIndex:(int64_t)a5 photoAnalysis:(id)a6
{
  v11 = a3;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = NTKTimelapseListing;
  v13 = [(NTKTimelapseListing *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_device, a3);
    v15 = [NTKTimelapseThemeEditOption optionWithTimelapseTheme:a4 forDevice:v14->_device];
    v16 = [v15 resourceNameWithVideoIndex:a5];
    videoName = v14->_videoName;
    v14->_videoName = v16;

    v18 = [v15 resourceBaseName];
    imageName = v14->_imageName;
    v14->_imageName = v18;

    v14->_theme = a4;
    v14->_videoIndex = a5;
    objc_storeStrong(&v14->_photoAnalysis, a6);
    v20 = v14;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  device = self->_device;
  theme = self->_theme;
  videoIndex = self->_videoIndex;
  photoAnalysis = self->_photoAnalysis;

  return [v4 initForDevice:device withTheme:theme videoIndex:videoIndex photoAnalysis:photoAnalysis];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_device == v4[1] && (v5 = -[NTKTimelapseListing theme](self, "theme"), v5 == [v4 theme]))
  {
    v6 = [(NTKTimelapseListing *)self videoIndex];
    v7 = v6 == [v4 videoIndex];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isSimilarTo:(id)a3
{
  v4 = a3;
  v5 = [(NTKTimelapseListing *)self theme];
  if (v5 == [v4 theme])
  {
    v6 = NTKNumberOfTimelapseSlots();
    v7 = [(NTKTimelapseListing *)self videoIndex];
    v8 = [v4 videoIndex];
    v9 = v7 - v8;
    if (v7 - v8 < 0)
    {
      v9 = v8 - v7;
    }

    if (v9 >= v6 - v9)
    {
      v9 = v6 - v9;
    }

    v10 = v9 < 3;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setHasAssets
{
  v3 = [NTKTimelapseListingFactory sharedInstanceForDevice:self->_device];
  [v3 setTimelapseListingHasAssets:self];
}

- (CLKVideo)video
{
  video = self->_video;
  if (!video)
  {
    videoName = self->_videoName;
    device = self->_device;
    v6 = NTKAssetsBundle();
    v7 = [CLKVideo videoNamed:videoName forDevice:device inBundle:v6];
    v8 = self->_video;
    self->_video = v7;

    [(NTKTimelapseListing *)self _setHasAssets];
    video = self->_video;
  }

  return video;
}

- (BOOL)snapshotDiffers:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 theme];
    if (v6 == [(NTKTimelapseListing *)self theme])
    {
      v7 = [v5 videoIndex];
      v8 = v7 != [(NTKTimelapseListing *)self videoIndex];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)discardAssets
{
  video = self->_video;
  self->_video = 0;
  _objc_release_x1();
}

@end