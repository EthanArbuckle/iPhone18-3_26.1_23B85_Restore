@interface BCUPurgeableImage
- (BCUPurgeableImage)initWithImage:(id)image;
- (id)initWithData:(id)data contentsScale:(double)scale;
- (id)newImage;
@end

@implementation BCUPurgeableImage

- (id)initWithData:(id)data contentsScale:(double)scale
{
  dataCopy = data;
  v7 = [[UIImage alloc] initWithData:dataCopy scale:scale];

  cGImage = [v7 CGImage];
  [v7 scale];
  v9 = [(BCUPurgeableImage *)self initWithImage:cGImage surface:0 contentsScale:?];

  return v9;
}

- (BCUPurgeableImage)initWithImage:(id)image
{
  imageCopy = image;
  imageCopy2 = image;
  cGImage = [imageCopy2 CGImage];
  [imageCopy2 scale];
  v9 = v8;

  return [(BCUPurgeableImage *)self initWithImage:cGImage surface:0 contentsScale:v9];
}

- (id)newImage
{
  if (![(BCUPurgeableImage *)self CGImage])
  {
    return 0;
  }

  v3 = [UIImage alloc];
  cGImage = [(BCUPurgeableImage *)self CGImage];
  [(BCUPurgeableImage *)self contentsScale];
  v5 = [v3 tui_initWithCGImage:cGImage scale:?];

  return v5;
}

@end