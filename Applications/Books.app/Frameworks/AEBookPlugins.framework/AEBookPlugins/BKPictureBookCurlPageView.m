@interface BKPictureBookCurlPageView
- (BKPictureBookCurlPageView)initWithFrame:(CGRect)a3;
- (BOOL)isNightMode;
- (UIView)topView;
- (id)description;
- (void)addGutter:(BOOL)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pageCurlWillCancel;
- (void)reset;
- (void)setImage:(id)a3;
- (void)setMirror:(BOOL)a3;
- (void)setShouldHaveGradient:(BOOL)a3;
- (void)setTopView:(id)a3 isRightPage:(BOOL)a4;
- (void)updateCurlPercent:(double)a3;
@end

@implementation BKPictureBookCurlPageView

- (BKPictureBookCurlPageView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = BKPictureBookCurlPageView;
  v3 = [(BKPictureBookCurlPageView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKPictureBookCurlPageView *)v3 setOpaque:1];
    if ([(BKPictureBookCurlPageView *)v4 isNightMode])
    {
      +[UIColor blackColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v5 = ;
    [(BKPictureBookCurlPageView *)v4 setBackgroundColor:v5];

    [(BKPictureBookCurlPageView *)v4 setClipsToBounds:1];
    v4->_scale = 1.0;
    v6 = v4;
  }

  return v4;
}

- (void)dealloc
{
  [(UIImageView *)self->_imageView removeFromSuperview];
  [(UIImageView *)self->_gutter removeFromSuperview];
  v3.receiver = self;
  v3.super_class = BKPictureBookCurlPageView;
  [(BKPictureBookCurlPageView *)&v3 dealloc];
}

- (BOOL)isNightMode
{
  v2 = [(BKPictureBookCurlPageView *)self traitCollection];
  v3 = [v2 userInterfaceStyle] == &dword_0 + 2 || UIAccessibilityIsInvertColorsEnabled();

  return v3;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = BKPictureBookCurlPageView;
  [(BKPictureBookCurlPageView *)&v9 layoutSubviews];
  v3 = [(UIImageView *)self->_gutter image];
  v4 = v3;
  if (v3)
  {
    [v3 size];
    v6 = v5 * self->_scale;
    [(UIImageView *)self->_gutter frame];
    v8 = v7;
    [(BKPictureBookCurlPageView *)self bounds];
    [(UIImageView *)self->_gutter setFrame:v8, 0.0, v6, CGRectGetHeight(v10)];
  }

  [(BKPictureBookCurlPageView *)self bounds];
  [(CAGradientLayer *)self->_largeGradientLayer setFrame:?];
  [(BKPictureBookCurlPageView *)self bounds];
  [(UIImageView *)self->_imageView setFrame:?];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  v10 = v4;
  if (self->_imageView)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [UIImageView alloc];
    [(BKPictureBookCurlPageView *)self bounds];
    v7 = [v6 initWithFrame:?];
    imageView = self->_imageView;
    self->_imageView = v7;

    [(UIImageView *)self->_imageView setAutoresizingMask:18];
    [(UIImageView *)self->_imageView setContentMode:2];
    v9 = [(UIImageView *)self->_imageView layer];
    [v9 setMagnificationFilter:kCAFilterLinear];

    [(BKPictureBookCurlPageView *)self insertSubview:self->_imageView atIndex:0];
    v5 = v10;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [(BKPictureBookCurlPageView *)self addGutter:self->_right];
  v5 = v10;
LABEL_3:
  [(UIImageView *)self->_imageView setImage:v5];
}

- (void)reset
{
  [(UIImageView *)self->_imageView setImage:0];
  v3 = [(BKPictureBookCurlPageView *)self layer];
  [v3 setMask:0];

  [(UIImageView *)self->_gutter removeFromSuperview];
  gutter = self->_gutter;
  self->_gutter = 0;
}

- (void)setTopView:(id)a3 isRightPage:(BOOL)a4
{
  v4 = a4;
  self->_right = a4;
  obj = a3;
  [(BKPictureBookCurlPageView *)self bounds];
  [obj setFrame:?];
  [(BKPictureBookCurlPageView *)self addSubview:obj];
  [(BKPictureBookCurlPageView *)self addGutter:v4];
  [(BKPictureBookCurlPageView *)self setClipsToBounds:1];
  objc_storeWeak(&self->_topView, obj);
}

- (void)setMirror:(BOOL)a3
{
  self->_mirror = a3;
  v4 = [(BKPictureBookCurlPageView *)self layer];
  v5 = v4;
  if (v4)
  {
    [v4 sublayerTransform];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CATransform3DScale(&v8, &v7, -1.0, 1.0, 1.0);
  v6 = [(BKPictureBookCurlPageView *)self layer];
  v7 = v8;
  [v6 setSublayerTransform:&v7];
}

- (void)addGutter:(BOOL)a3
{
  if (!self->_gutter && self->_drawsSpine)
  {
    v4 = a3;
    v10 = [UIImage imageNamed:@"PictureBookSpine.png"];
    v5 = [[UIImageView alloc] initWithImage:v10];
    gutter = self->_gutter;
    self->_gutter = v5;

    [(BKPictureBookCurlPageView *)self addSubview:self->_gutter];
    [v10 size];
    v8 = v7 * self->_scale;
    if (v4)
    {
      v9 = v8 * -0.5;
    }

    else
    {
      [(BKPictureBookCurlPageView *)self bounds];
      v9 = CGRectGetWidth(v12) + v8 * -0.5;
    }

    [(BKPictureBookCurlPageView *)self bounds];
    [(UIImageView *)self->_gutter setFrame:v9, 0.0, v8, CGRectGetHeight(v13)];
  }
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = BKPictureBookCurlPageView;
  v3 = [(BKPictureBookCurlPageView *)&v14 description];
  if (self->_right)
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  WeakRetained = objc_loadWeakRetained(&self->_topView);
  pageOffset = self->_pageOffset;
  v7 = [(BKPictureBookCurlPageView *)self layer];
  v8 = [v7 mask];
  if (v8)
  {
    v9 = [(BKPictureBookCurlPageView *)self layer];
    v10 = [v9 mask];
    v11 = [v10 description];
    v12 = [NSString stringWithFormat:@"%@ isRight=%@ topView=%p pageOffset=%ld mask=%@", v3, v4, WeakRetained, pageOffset, v11];
  }

  else
  {
    v12 = [NSString stringWithFormat:@"%@ isRight=%@ topView=%p pageOffset=%ld mask=%@", v3, v4, WeakRetained, pageOffset, @"<nil>"];
  }

  return v12;
}

- (void)setShouldHaveGradient:(BOOL)a3
{
  largeGradientLayer = self->_largeGradientLayer;
  if (a3)
  {
    if (!largeGradientLayer)
    {
      v6 = objc_opt_new();
      v7 = self->_largeGradientLayer;
      self->_largeGradientLayer = v6;

      [(BKPictureBookCurlPageView *)self bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(BKPictureBookCurlPageView *)self isRight];
      v17 = [(BKPictureBookCurlPageView *)self useNightColors];
      v18 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
      if (v16)
      {
        if (v17)
        {
          v19 = [UIColor colorWithWhite:0.519999981 alpha:0.219999999];
          v20 = [v19 CGColor];
          v21 = [UIColor colorWithWhite:0.529999971 alpha:0.389999986];
          v22 = [v21 CGColor];
          v23 = 0.0;
          v24 = [UIColor colorWithWhite:1.0 alpha:0.0];
          v25 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v20, v22, [v24 CGColor], 0);
          v26 = 0.639999986;
          v27 = 1036831949;
        }

        else
        {
          v55 = +[UIColor blackColor];
          v21 = [v55 colorWithAlphaComponent:0.129999995];
          v30 = [v21 CGColor];
          v24 = +[UIColor blackColor];
          v31 = [v24 colorWithAlphaComponent:0.0500000007];
          v32 = [v31 CGColor];
          v33 = +[UIColor blackColor];
          v34 = [v33 colorWithAlphaComponent:0.230000004];
          v54 = v32;
          v18 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
          v25 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v30, v54, [v34 CGColor], 0);

          v19 = v55;
          v23 = 0.0;
          v26 = 1.0;
          v27 = 1051763671;
        }
      }

      else if (v17)
      {
        v26 = 1.0;
        v19 = [UIColor colorWithWhite:1.0 alpha:0.0];
        v28 = [v19 CGColor];
        v21 = [UIColor colorWithWhite:0.529999971 alpha:0.389999986];
        v29 = [v21 CGColor];
        v24 = [UIColor colorWithWhite:0.519999981 alpha:0.219999999];
        v25 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v28, v29, [v24 CGColor], 0);
        v23 = 0.360000014;
        v27 = 1063675494;
        v18 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
      }

      else
      {
        v56 = +[UIColor blackColor];
        v21 = [v56 colorWithAlphaComponent:0.230000004];
        v57 = [v21 CGColor];
        v24 = +[UIColor blackColor];
        v35 = [v24 colorWithAlphaComponent:0.0500000007];
        v36 = [v35 CGColor];
        v37 = +[UIColor blackColor];
        v38 = [v37 colorWithAlphaComponent:0.129999995];
        v25 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v57, v36, [v38 CGColor], 0);

        v23 = 0.0;
        v26 = 1.0;
        v27 = 1059565076;
        v18 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
        v19 = v56;
      }

      v39 = v18[189];
      v40 = [NSNumber numberWithFloat:0.0];
      LODWORD(v41) = v27;
      v42 = [NSNumber numberWithFloat:v41];
      LODWORD(v43) = 1.0;
      v44 = [NSNumber numberWithFloat:v43];
      v45 = [v39 arrayWithObjects:{v40, v42, v44, 0}];

      [(CAGradientLayer *)self->_largeGradientLayer setFrame:v9, v11, v13, v15];
      [(CAGradientLayer *)self->_largeGradientLayer setStartPoint:v23, 0.5];
      [(CAGradientLayer *)self->_largeGradientLayer setEndPoint:v26, 0.5];
      [(CAGradientLayer *)self->_largeGradientLayer setColors:v25];
      [(CAGradientLayer *)self->_largeGradientLayer setLocations:v45];
      if (self->_animate)
      {
        v46 = [CABasicAnimation animationWithKeyPath:@"opacity"];
        v47 = [NSNumber numberWithFloat:0.0];
        [v46 setFromValue:v47];

        LODWORD(v48) = 1.0;
        v49 = [NSNumber numberWithFloat:v48];
        [v46 setToValue:v49];

        [v46 setDuration:self->_duration];
        v50 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        [v46 setTimingFunction:v50];

        v51 = self->_largeGradientLayer;
        v52 = [NSDictionary dictionaryWithObject:v46 forKey:kCAOnOrderIn];
        [(CAGradientLayer *)v51 setActions:v52];
      }

      else
      {
        [(CAGradientLayer *)self->_largeGradientLayer setOpacity:0.0];
      }

      v53 = [(BKPictureBookCurlPageView *)self layer];
      [v53 addSublayer:self->_largeGradientLayer];

      goto LABEL_16;
    }
  }

  else if (largeGradientLayer)
  {
    [(CAGradientLayer *)largeGradientLayer removeFromSuperlayer];
    v25 = self->_largeGradientLayer;
    self->_largeGradientLayer = 0;
LABEL_16:
  }

  self->_hasGradient = a3;
}

- (void)updateCurlPercent:(double)a3
{
  v3 = 0.5;
  if (!self->_useNightColors)
  {
    v3 = 1.0;
  }

  v4 = v3 * a3;
  if (self->_hasGradient && v4 < 1.0)
  {
    *&v4 = v4;
    [(CAGradientLayer *)self->_largeGradientLayer setOpacity:v4];
  }
}

- (void)pageCurlWillCancel
{
  v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  v3 = [NSNumber numberWithFloat:0.0];
  [v5 setToValue:v3];

  [v5 setDuration:0.1];
  v4 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v5 setTimingFunction:v4];

  [v5 setRemovedOnCompletion:0];
  [v5 setFillMode:kCAFillModeForwards];
  [(CAGradientLayer *)self->_largeGradientLayer addAnimation:v5 forKey:@"largeGradientOrderOut"];
}

- (UIView)topView
{
  WeakRetained = objc_loadWeakRetained(&self->_topView);

  return WeakRetained;
}

@end