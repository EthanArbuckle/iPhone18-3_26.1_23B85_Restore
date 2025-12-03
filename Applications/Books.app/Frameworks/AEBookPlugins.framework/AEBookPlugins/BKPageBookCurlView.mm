@interface BKPageBookCurlView
- (BKPageBookCurlView)initWithImage:(id)image borderColor:(id)color isLeft:(BOOL)left gutterImage:(id)gutterImage;
- (UIImage)image;
- (void)pageCurlWillCancel;
- (void)pageCurlWillCancelWithDuration:(double)duration;
- (void)setImage:(id)image;
- (void)setShouldHaveGradient:(BOOL)gradient;
- (void)takeSnapshotOfView:(id)view;
- (void)takeSnapshotOfView:(id)view rect:(CGRect)rect afterScreenUpdates:(BOOL)updates;
- (void)updateCurlPercent:(double)percent;
@end

@implementation BKPageBookCurlView

- (BKPageBookCurlView)initWithImage:(id)image borderColor:(id)color isLeft:(BOOL)left gutterImage:(id)gutterImage
{
  leftCopy = left;
  imageCopy = image;
  gutterImageCopy = gutterImage;
  v26.receiver = self;
  v26.super_class = BKPageBookCurlView;
  v11 = [(BKPageBookCurlView *)&v26 init];
  v12 = v11;
  if (v11)
  {
    [(BKPageBookCurlView *)v11 setUserInteractionEnabled:0];
    v12->_left = leftCopy;
    [imageCopy size];
    v14 = v13;
    v16 = v15;
    if (imageCopy)
    {
      cGImage = [imageCopy CGImage];
      layer = [(BKPageBookCurlView *)v12 layer];
      [layer setContents:cGImage];
    }

    if (gutterImageCopy)
    {
      v19 = [[UIImageView alloc] initWithImage:gutterImageCopy];
      [gutterImageCopy size];
      v21 = v20 * -0.5;
      if (leftCopy)
      {
        v22 = v14 + v21;
      }

      else
      {
        v22 = v21;
      }

      [gutterImageCopy size];
      [v19 setFrame:{v22, 0.0, v23, v16}];
      [(BKPageBookCurlView *)v12 addSubview:v19];
    }

    v24 = v12;
  }

  return v12;
}

- (void)takeSnapshotOfView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  [(BKPageBookCurlView *)self takeSnapshotOfView:viewCopy rect:0 afterScreenUpdates:?];
}

- (void)takeSnapshotOfView:(id)view rect:(CGRect)rect afterScreenUpdates:(BOOL)updates
{
  v6 = [view resizableSnapshotViewFromRect:updates afterScreenUpdates:rect.origin.x withCapInsets:{rect.origin.y, rect.size.width, rect.size.height, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [(BKPageBookCurlView *)self bounds];
  v8 = v7;
  v10 = v9;
  [v6 bounds];
  if (v8 != v12 || v10 != v11)
  {
    CGSizeScaleThatFitsInCGSize();
    CGAffineTransformMakeScale(&v16, v14, v14);
    v15 = v16;
    [v6 setTransform:&v15];
    [(BKPageBookCurlView *)self bounds];
    [v6 setFrame:?];
  }

  [(BKPageBookCurlView *)self addSubview:v6];
}

- (UIImage)image
{
  layer = [(BKPageBookCurlView *)self layer];
  contents = [layer contents];
  if (contents)
  {
    layer2 = [(BKPageBookCurlView *)self layer];
    contents2 = [layer2 contents];
    v7 = [UIImage imageWithCGImage:contents2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  layer = [(BKPageBookCurlView *)self layer];
  cGImage = [imageCopy CGImage];

  [layer setContents:cGImage];
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

- (void)setShouldHaveGradient:(BOOL)gradient
{
  largeGradientLayer = self->_largeGradientLayer;
  if (gradient)
  {
    if (!largeGradientLayer)
    {
      v6 = objc_opt_new();
      v7 = self->_largeGradientLayer;
      self->_largeGradientLayer = v6;

      [(BKPageBookCurlView *)self bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      isLeft = [(BKPageBookCurlView *)self isLeft];
      useInvertedColors = [(BKPageBookCurlView *)self useInvertedColors];
      v18 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
      if (isLeft)
      {
        if (useInvertedColors)
        {
          v19 = 1.0;
          v20 = [UIColor colorWithWhite:1.0 alpha:0.0];
          cGColor = [v20 CGColor];
          v22 = [UIColor colorWithWhite:0.529999971 alpha:0.389999986];
          cGColor2 = [v22 CGColor];
          v24 = [UIColor colorWithWhite:0.519999981 alpha:0.219999999];
          smallGradientLayer = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", cGColor, cGColor2, [v24 CGColor], 0);
          v26 = 0.360000014;
          v27 = 1063675494;
          v18 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
        }

        else
        {
          v56 = +[UIColor blackColor];
          v22 = [v56 colorWithAlphaComponent:0.230000004];
          cGColor3 = [v22 CGColor];
          v24 = +[UIColor blackColor];
          v31 = [v24 colorWithAlphaComponent:0.0500000007];
          cGColor4 = [v31 CGColor];
          v33 = +[UIColor blackColor];
          v34 = [v33 colorWithAlphaComponent:0.129999995];
          smallGradientLayer = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", cGColor3, cGColor4, [v34 CGColor], 0);

          v26 = 0.0;
          v19 = 1.0;
          v27 = 1059565076;
          v18 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
          v20 = v56;
        }
      }

      else if (useInvertedColors)
      {
        v20 = [UIColor colorWithWhite:0.519999981 alpha:0.219999999];
        cGColor5 = [v20 CGColor];
        v22 = [UIColor colorWithWhite:0.529999971 alpha:0.389999986];
        cGColor6 = [v22 CGColor];
        v26 = 0.0;
        v24 = [UIColor colorWithWhite:1.0 alpha:0.0];
        smallGradientLayer = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", cGColor5, cGColor6, [v24 CGColor], 0);
        v19 = 0.639999986;
        v27 = 1036831949;
      }

      else
      {
        v57 = +[UIColor blackColor];
        v22 = [v57 colorWithAlphaComponent:0.129999995];
        cGColor7 = [v22 CGColor];
        v24 = +[UIColor blackColor];
        v36 = [v24 colorWithAlphaComponent:0.0500000007];
        cGColor8 = [v36 CGColor];
        v38 = +[UIColor blackColor];
        v39 = [v38 colorWithAlphaComponent:0.230000004];
        v55 = cGColor8;
        v18 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
        smallGradientLayer = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", cGColor7, v55, [v39 CGColor], 0);

        v20 = v57;
        v26 = 0.0;
        v19 = 1.0;
        v27 = 1051763671;
      }

      v40 = v18[189];
      v41 = [NSNumber numberWithFloat:0.0];
      LODWORD(v42) = v27;
      v43 = [NSNumber numberWithFloat:v42];
      LODWORD(v44) = 1.0;
      v45 = [NSNumber numberWithFloat:v44];
      v46 = [v40 arrayWithObjects:{v41, v43, v45, 0}];

      [(CAGradientLayer *)self->_largeGradientLayer setFrame:v9, v11, v13, v15];
      [(CAGradientLayer *)self->_largeGradientLayer setStartPoint:v26, 0.5];
      [(CAGradientLayer *)self->_largeGradientLayer setEndPoint:v19, 0.5];
      [(CAGradientLayer *)self->_largeGradientLayer setColors:smallGradientLayer];
      [(CAGradientLayer *)self->_largeGradientLayer setLocations:v46];
      if (self->_animate)
      {
        v47 = [CABasicAnimation animationWithKeyPath:@"opacity"];
        v48 = [NSNumber numberWithFloat:0.0];
        [v47 setFromValue:v48];

        LODWORD(v49) = 1.0;
        v50 = [NSNumber numberWithFloat:v49];
        [v47 setToValue:v50];

        [v47 setDuration:self->_duration];
        v51 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        [v47 setTimingFunction:v51];

        v52 = self->_largeGradientLayer;
        v53 = [NSDictionary dictionaryWithObject:v47 forKey:kCAOnOrderIn];
        [(CAGradientLayer *)v52 setActions:v53];
      }

      else
      {
        [(CAGradientLayer *)self->_largeGradientLayer setOpacity:0.0];
      }

      layer = [(BKPageBookCurlView *)self layer];
      [layer addSublayer:self->_largeGradientLayer];

      goto LABEL_16;
    }
  }

  else if (largeGradientLayer)
  {
    [(CAGradientLayer *)largeGradientLayer removeFromSuperlayer];
    v28 = self->_largeGradientLayer;
    self->_largeGradientLayer = 0;

    smallGradientLayer = self->_smallGradientLayer;
    self->_smallGradientLayer = 0;
LABEL_16:
  }

  self->_hasGradient = gradient;
}

- (void)updateCurlPercent:(double)percent
{
  useInvertedColors = [(BKPageBookCurlView *)self useInvertedColors];
  v6 = 0.5;
  if (!useInvertedColors)
  {
    v6 = 1.0;
  }

  v7 = v6 * percent;
  if (self->_hasGradient && v7 < 1.0)
  {
    v9 = v7;
    *&v7 = v9;
    [(CAGradientLayer *)self->_largeGradientLayer setOpacity:v7];
    smallGradientLayer = self->_smallGradientLayer;
    *&v11 = v9;

    [(CAGradientLayer *)smallGradientLayer setOpacity:v11];
  }
}

- (void)pageCurlWillCancelWithDuration:(double)duration
{
  [(CAGradientLayer *)self->_largeGradientLayer removeAnimationForKey:@"largeGradientOrderOut"];
  v9 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  presentationLayer = [(CAGradientLayer *)self->_largeGradientLayer presentationLayer];
  [presentationLayer opacity];
  v6 = [NSNumber numberWithFloat:?];
  [v9 setFromValue:v6];

  v7 = [NSNumber numberWithFloat:0.0];
  [v9 setToValue:v7];

  [v9 setDuration:duration];
  v8 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v9 setTimingFunction:v8];

  [v9 setRemovedOnCompletion:0];
  [v9 setFillMode:kCAFillModeForwards];
  [(CAGradientLayer *)self->_largeGradientLayer addAnimation:v9 forKey:@"largeGradientOrderOut"];
}

@end