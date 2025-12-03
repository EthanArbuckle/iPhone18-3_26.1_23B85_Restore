@interface THWMovieInfo
- (THWMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style;
- (THWMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style movieRemoteURL:(id)l loadedAsset:(id)asset;
- (id)childInfos;
- (void)dealloc;
- (void)setPosterImageInfo:(id)info;
- (void)setStoppedImage:(CGImage *)image;
@end

@implementation THWMovieInfo

- (THWMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style
{
  v9.receiver = self;
  v9.super_class = THWMovieInfo;
  v5 = [(THWMovieInfo *)&v9 initWithContext:context geometry:geometry style:style];
  v6 = v5;
  if (v5)
  {
    [(THWMovieInfo *)v5 setAllowsAirPlayVideo:1];
    [(THWMovieInfo *)v6 setUsesAirPlayVideoWhileAirPlayScreenIsActive:1];
    LODWORD(v7) = 1.0;
    [(THWMovieInfo *)v6 setStoppedVolume:v7];
  }

  return v6;
}

- (THWMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style movieRemoteURL:(id)l loadedAsset:(id)asset
{
  if (asset)
  {
    [asset duration];
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  [asset tracks];
  v17.receiver = self;
  v17.super_class = THWMovieInfo;
  v13 = [(THWMovieInfo *)&v17 initWithContext:context geometry:geometry style:style movieRemoteURL:l loadedAsset:asset];
  v14 = v13;
  if (v13)
  {
    [(THWMovieInfo *)v13 setAllowsAirPlayVideo:1];
    [(THWMovieInfo *)v14 setUsesAirPlayVideoWhileAirPlayScreenIsActive:1];
    LODWORD(v15) = 1.0;
    [(THWMovieInfo *)v14 setStoppedVolume:v15];
  }

  return v14;
}

- (void)dealloc
{
  CGImageRelease(self->_stoppedImage);
  v3.receiver = self;
  v3.super_class = THWMovieInfo;
  [(THWMovieInfo *)&v3 dealloc];
}

- (void)setStoppedImage:(CGImage *)image
{
  CGImageRelease(self->_stoppedImage);
  self->_stoppedImage = image;

  CGImageRetain(image);
}

- (void)setPosterImageInfo:(id)info
{
  posterImageInfo = self->_posterImageInfo;
  if (posterImageInfo != info)
  {
    [(TSDImageInfo *)posterImageInfo setParentInfo:0];

    infoCopy = info;
    self->_posterImageInfo = infoCopy;

    [(TSDImageInfo *)infoCopy setParentInfo:self];
  }
}

- (id)childInfos
{
  result = [(THWMovieInfo *)self posterImageInfo];
  if (result)
  {
    posterImageInfo = [(THWMovieInfo *)self posterImageInfo];

    return [NSArray arrayWithObject:posterImageInfo];
  }

  return result;
}

@end