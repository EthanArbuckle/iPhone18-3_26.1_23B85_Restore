@interface THWMovieInfo
- (THWMovieInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5;
- (THWMovieInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 movieRemoteURL:(id)a6 loadedAsset:(id)a7;
- (id)childInfos;
- (void)dealloc;
- (void)setPosterImageInfo:(id)a3;
- (void)setStoppedImage:(CGImage *)a3;
@end

@implementation THWMovieInfo

- (THWMovieInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5
{
  v9.receiver = self;
  v9.super_class = THWMovieInfo;
  v5 = [(THWMovieInfo *)&v9 initWithContext:a3 geometry:a4 style:a5];
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

- (THWMovieInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 movieRemoteURL:(id)a6 loadedAsset:(id)a7
{
  if (a7)
  {
    [a7 duration];
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  [a7 tracks];
  v17.receiver = self;
  v17.super_class = THWMovieInfo;
  v13 = [(THWMovieInfo *)&v17 initWithContext:a3 geometry:a4 style:a5 movieRemoteURL:a6 loadedAsset:a7];
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

- (void)setStoppedImage:(CGImage *)a3
{
  CGImageRelease(self->_stoppedImage);
  self->_stoppedImage = a3;

  CGImageRetain(a3);
}

- (void)setPosterImageInfo:(id)a3
{
  posterImageInfo = self->_posterImageInfo;
  if (posterImageInfo != a3)
  {
    [(TSDImageInfo *)posterImageInfo setParentInfo:0];

    v6 = a3;
    self->_posterImageInfo = v6;

    [(TSDImageInfo *)v6 setParentInfo:self];
  }
}

- (id)childInfos
{
  result = [(THWMovieInfo *)self posterImageInfo];
  if (result)
  {
    v4 = [(THWMovieInfo *)self posterImageInfo];

    return [NSArray arrayWithObject:v4];
  }

  return result;
}

@end