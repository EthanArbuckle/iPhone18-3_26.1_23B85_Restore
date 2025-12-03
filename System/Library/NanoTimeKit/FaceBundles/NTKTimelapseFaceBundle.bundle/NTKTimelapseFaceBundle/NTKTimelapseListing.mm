@interface NTKTimelapseListing
- (BOOL)isEqual:(id)equal;
- (BOOL)isSimilarTo:(id)to;
- (BOOL)snapshotDiffers:(id)differs;
- (CLKVideo)video;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForDevice:(id)device withTheme:(unint64_t)theme videoIndex:(int64_t)index photoAnalysis:(id)analysis;
- (void)_setHasAssets;
- (void)discardAssets;
@end

@implementation NTKTimelapseListing

- (id)initForDevice:(id)device withTheme:(unint64_t)theme videoIndex:(int64_t)index photoAnalysis:(id)analysis
{
  deviceCopy = device;
  analysisCopy = analysis;
  v22.receiver = self;
  v22.super_class = NTKTimelapseListing;
  v13 = [(NTKTimelapseListing *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_device, device);
    v15 = [NTKTimelapseThemeEditOption optionWithTimelapseTheme:theme forDevice:v14->_device];
    v16 = [v15 resourceNameWithVideoIndex:index];
    videoName = v14->_videoName;
    v14->_videoName = v16;

    resourceBaseName = [v15 resourceBaseName];
    imageName = v14->_imageName;
    v14->_imageName = resourceBaseName;

    v14->_theme = theme;
    v14->_videoIndex = index;
    objc_storeStrong(&v14->_photoAnalysis, analysis);
    v20 = v14;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  device = self->_device;
  theme = self->_theme;
  videoIndex = self->_videoIndex;
  photoAnalysis = self->_photoAnalysis;

  return [v4 initForDevice:device withTheme:theme videoIndex:videoIndex photoAnalysis:photoAnalysis];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_device == equalCopy[1] && (v5 = -[NTKTimelapseListing theme](self, "theme"), v5 == [equalCopy theme]))
  {
    videoIndex = [(NTKTimelapseListing *)self videoIndex];
    v7 = videoIndex == [equalCopy videoIndex];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isSimilarTo:(id)to
{
  toCopy = to;
  theme = [(NTKTimelapseListing *)self theme];
  if (theme == [toCopy theme])
  {
    v6 = NTKNumberOfTimelapseSlots();
    videoIndex = [(NTKTimelapseListing *)self videoIndex];
    videoIndex2 = [toCopy videoIndex];
    v9 = videoIndex - videoIndex2;
    if (videoIndex - videoIndex2 < 0)
    {
      v9 = videoIndex2 - videoIndex;
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

- (BOOL)snapshotDiffers:(id)differs
{
  differsCopy = differs;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = differsCopy;
    theme = [v5 theme];
    if (theme == [(NTKTimelapseListing *)self theme])
    {
      videoIndex = [v5 videoIndex];
      v8 = videoIndex != [(NTKTimelapseListing *)self videoIndex];
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