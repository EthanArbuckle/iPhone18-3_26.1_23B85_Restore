@interface ICSEImagesView
- (ICSEImagesView)initWithCoder:(id)a3;
- (ICSEImagesView)initWithFrame:(CGRect)a3;
- (void)commonInit;
- (void)setImage:(id)a3 atIndex:(unint64_t)a4;
- (void)setImage:(id)a3 movieDuration:(id *)a4 atIndex:(unint64_t)a5;
- (void)setMediaPreview:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation ICSEImagesView

- (ICSEImagesView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICSEImagesView;
  v3 = [(ICSEImagesView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICSEImagesView *)v3 commonInit];
  }

  return v4;
}

- (ICSEImagesView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICSEImagesView;
  v3 = [(ICSEImagesView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v7 = [(ICSEImagesView *)self imageViews];
  v8 = [v7 objectAtIndexedSubscript:1];
  [v8 setAlpha:0.8];

  v9 = [(ICSEImagesView *)self imageViews];
  v10 = [v9 objectAtIndexedSubscript:2];
  [v10 setAlpha:0.6];

  v11 = [(ICSEImagesView *)self imageViews];
  v12 = [v11 objectAtIndexedSubscript:1];
  [v12 setClipsToBounds:1];

  v13 = [(ICSEImagesView *)self imageViews];
  v14 = [v13 objectAtIndexedSubscript:1];
  [v14 setContentMode:2];

  v15 = [(ICSEImagesView *)self imageViews];
  v16 = [v15 objectAtIndexedSubscript:2];
  [v16 setClipsToBounds:1];

  v17 = [(ICSEImagesView *)self imageViews];
  v18 = [v17 objectAtIndexedSubscript:2];
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

  v26 = [(ICSEImagesView *)self imageViews];
  v27 = [v26 objectAtIndexedSubscript:2];
  [(ICSEImagesView *)self addSubview:v27];

  v28 = [v21 objectAtIndexedSubscript:1];
  [(ICSEImagesView *)self addSubview:v28];

  v29 = [(ICSEImagesView *)self imageViews];
  v30 = [v29 objectAtIndexedSubscript:1];
  [(ICSEImagesView *)self addSubview:v30];

  v31 = [v21 objectAtIndexedSubscript:0];
  [(ICSEImagesView *)self addSubview:v31];

  v32 = [(ICSEImagesView *)self imageViews];
  v33 = [v32 objectAtIndexedSubscript:0];
  [(ICSEImagesView *)self addSubview:v33];
}

- (void)setMediaPreview:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 image];
  if ([v6 isVideoPreview])
  {
    if (v6)
    {
      [v6 videoDuration];
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    [(ICSEImagesView *)self setImage:v7 movieDuration:v8 atIndex:a4];
  }

  else
  {
    [(ICSEImagesView *)self setImage:v7 atIndex:a4];
  }
}

- (void)setImage:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ICSEImagesView *)self imageViews];
  v8 = v7;
  if (a4)
  {
    v9 = [v7 objectAtIndexedSubscript:a4];

    [v9 setImage:v6];
  }

  else
  {
    v9 = [v7 objectAtIndexedSubscript:0];

    [v9 setImage:v6];
    [v9 setShowAsMovie:0];
  }
}

- (void)setImage:(id)a3 movieDuration:(id *)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = [(ICSEImagesView *)self imageViews];
  v10 = v9;
  if (a5)
  {
    v11 = [v9 objectAtIndexedSubscript:a5];
  }

  else
  {
    v12 = [v9 objectAtIndexedSubscript:0];
    v11 = [v12 imageView];
  }

  [v11 frame];
  v14 = v13;
  v16 = v15;
  [v8 size];
  v18 = v17;
  [v8 scale];
  v20 = v18 * v19;
  [v8 size];
  v22 = v20 * v21;
  [v8 scale];
  v24 = v23 * v22;
  [v11 contentScaleFactor];
  v26 = v16 * (v14 * v25);
  [v11 contentScaleFactor];
  if (v24 <= v27 * v26 * 16.0)
  {
    v29 = v8;
  }

  else
  {
    [v11 contentScaleFactor];
    v29 = [v8 ic_scaledImageMinDimension:64.0 scale:v28];
  }

  v30 = v29;
  if (a5)
  {
    [(ICSEImagesView *)self setImage:v29 atIndex:a5];
  }

  else
  {
    v31 = [(ICSEImagesView *)self imageViews];
    v32 = [v31 objectAtIndexedSubscript:0];

    [v32 setImage:v30];
    [v32 setShowAsMovie:1];
    v33 = *&a4->var0;
    var3 = a4->var3;
    [v32 setMovieDuration:&v33];
  }
}

@end