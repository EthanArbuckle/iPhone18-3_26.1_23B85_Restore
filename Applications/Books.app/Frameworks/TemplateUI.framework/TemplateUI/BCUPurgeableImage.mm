@interface BCUPurgeableImage
- (BCUPurgeableImage)initWithImage:(id)a3;
- (id)initWithData:(id)a3 contentsScale:(double)a4;
- (id)newImage;
@end

@implementation BCUPurgeableImage

- (id)initWithData:(id)a3 contentsScale:(double)a4
{
  v6 = a3;
  v7 = [[UIImage alloc] initWithData:v6 scale:a4];

  v8 = [v7 CGImage];
  [v7 scale];
  v9 = [(BCUPurgeableImage *)self initWithImage:v8 surface:0 contentsScale:?];

  return v9;
}

- (BCUPurgeableImage)initWithImage:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 CGImage];
  [v6 scale];
  v9 = v8;

  return [(BCUPurgeableImage *)self initWithImage:v7 surface:0 contentsScale:v9];
}

- (id)newImage
{
  if (![(BCUPurgeableImage *)self CGImage])
  {
    return 0;
  }

  v3 = [UIImage alloc];
  v4 = [(BCUPurgeableImage *)self CGImage];
  [(BCUPurgeableImage *)self contentsScale];
  v5 = [v3 tui_initWithCGImage:v4 scale:?];

  return v5;
}

@end