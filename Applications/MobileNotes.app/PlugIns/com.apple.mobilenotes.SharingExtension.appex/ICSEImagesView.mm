@interface ICSEImagesView
- (ICSEImagesView)initWithCoder:(id)coder;
- (ICSEImagesView)initWithFrame:(CGRect)frame;
- (void)commonInit;
- (void)setImage:(id)image atIndex:(unint64_t)index;
- (void)setImage:(id)image movieDuration:(id *)duration atIndex:(unint64_t)index;
- (void)setMediaPreview:(id)preview atIndex:(unint64_t)index;
@end

@implementation ICSEImagesView

- (ICSEImagesView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICSEImagesView;
  v3 = [(ICSEImagesView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICSEImagesView *)v3 commonInit];
  }

  return v4;
}

- (ICSEImagesView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICSEImagesView;
  v3 = [(ICSEImagesView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICSEImagesView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = [[ICImageAndMovieThumbnailView alloc] initWithFrame:1 showMovieDuration:{0.0, 0.0, 64.0, 64.0}];
  v35[0] = v3;
  v4 = [[UIImageView alloc] initWithFrame:{2.0, -3.0, 60.0, 60.0}];
  v35[1] = v4;
  v5 = [[UIImageView alloc] initWithFrame:{4.0, -6.0, 56.0, 56.0}];
  v35[2] = v5;
  v6 = [NSArray arrayWithObjects:v35 count:3];
  [(ICSEImagesView *)self setImageViews:v6];

  imageViews = [(ICSEImagesView *)self imageViews];
  v8 = [imageViews objectAtIndexedSubscript:1];
  [v8 setAlpha:0.8];

  imageViews2 = [(ICSEImagesView *)self imageViews];
  v10 = [imageViews2 objectAtIndexedSubscript:2];
  [v10 setAlpha:0.6];

  imageViews3 = [(ICSEImagesView *)self imageViews];
  v12 = [imageViews3 objectAtIndexedSubscript:1];
  [v12 setClipsToBounds:1];

  imageViews4 = [(ICSEImagesView *)self imageViews];
  v14 = [imageViews4 objectAtIndexedSubscript:1];
  [v14 setContentMode:2];

  imageViews5 = [(ICSEImagesView *)self imageViews];
  v16 = [imageViews5 objectAtIndexedSubscript:2];
  [v16 setClipsToBounds:1];

  imageViews6 = [(ICSEImagesView *)self imageViews];
  v18 = [imageViews6 objectAtIndexedSubscript:2];
  [v18 setContentMode:2];

  v19 = [[UIView alloc] initWithFrame:{2.0, -1.0, 60.0, 1.0}];
  v20 = [[UIView alloc] initWithFrame:{4.0, -4.0, 56.0, 4.0, v19}];
  v34[1] = v20;
  v21 = [NSArray arrayWithObjects:v34 count:2];

  v22 = [v21 objectAtIndexedSubscript:0];
  v23 = +[UIColor whiteColor];
  [v22 setBackgroundColor:v23];

  v24 = [v21 objectAtIndexedSubscript:1];
  v25 = +[UIColor whiteColor];
  [v24 setBackgroundColor:v25];

  imageViews7 = [(ICSEImagesView *)self imageViews];
  v27 = [imageViews7 objectAtIndexedSubscript:2];
  [(ICSEImagesView *)self addSubview:v27];

  v28 = [v21 objectAtIndexedSubscript:1];
  [(ICSEImagesView *)self addSubview:v28];

  imageViews8 = [(ICSEImagesView *)self imageViews];
  v30 = [imageViews8 objectAtIndexedSubscript:1];
  [(ICSEImagesView *)self addSubview:v30];

  v31 = [v21 objectAtIndexedSubscript:0];
  [(ICSEImagesView *)self addSubview:v31];

  imageViews9 = [(ICSEImagesView *)self imageViews];
  v33 = [imageViews9 objectAtIndexedSubscript:0];
  [(ICSEImagesView *)self addSubview:v33];
}

- (void)setMediaPreview:(id)preview atIndex:(unint64_t)index
{
  previewCopy = preview;
  image = [previewCopy image];
  if ([previewCopy isVideoPreview])
  {
    if (previewCopy)
    {
      [previewCopy videoDuration];
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    [(ICSEImagesView *)self setImage:image movieDuration:v8 atIndex:index];
  }

  else
  {
    [(ICSEImagesView *)self setImage:image atIndex:index];
  }
}

- (void)setImage:(id)image atIndex:(unint64_t)index
{
  imageCopy = image;
  imageViews = [(ICSEImagesView *)self imageViews];
  v8 = imageViews;
  if (index)
  {
    v9 = [imageViews objectAtIndexedSubscript:index];

    [v9 setImage:imageCopy];
  }

  else
  {
    v9 = [imageViews objectAtIndexedSubscript:0];

    [v9 setImage:imageCopy];
    [v9 setShowAsMovie:0];
  }
}

- (void)setImage:(id)image movieDuration:(id *)duration atIndex:(unint64_t)index
{
  imageCopy = image;
  imageViews = [(ICSEImagesView *)self imageViews];
  v10 = imageViews;
  if (index)
  {
    imageView = [imageViews objectAtIndexedSubscript:index];
  }

  else
  {
    v12 = [imageViews objectAtIndexedSubscript:0];
    imageView = [v12 imageView];
  }

  [imageView frame];
  v14 = v13;
  v16 = v15;
  [imageCopy size];
  v18 = v17;
  [imageCopy scale];
  v20 = v18 * v19;
  [imageCopy size];
  v22 = v20 * v21;
  [imageCopy scale];
  v24 = v23 * v22;
  [imageView contentScaleFactor];
  v26 = v16 * (v14 * v25);
  [imageView contentScaleFactor];
  if (v24 <= v27 * v26 * 16.0)
  {
    v29 = imageCopy;
  }

  else
  {
    [imageView contentScaleFactor];
    v29 = [imageCopy ic_scaledImageMinDimension:64.0 scale:v28];
  }

  v30 = v29;
  if (index)
  {
    [(ICSEImagesView *)self setImage:v29 atIndex:index];
  }

  else
  {
    imageViews2 = [(ICSEImagesView *)self imageViews];
    v32 = [imageViews2 objectAtIndexedSubscript:0];

    [v32 setImage:v30];
    [v32 setShowAsMovie:1];
    v33 = *&duration->var0;
    var3 = duration->var3;
    [v32 setMovieDuration:&v33];
  }
}

@end