@interface BKZoomingScrollView
- (BKZoomingScrollView)initWithCoder:(id)a3;
- (BKZoomingScrollView)initWithFrame:(CGRect)a3;
- (CGPoint)maximumContentOffset;
- (CGPoint)minimumContentOffset;
- (CGPoint)pointToCenterAfterRotation;
- (double)scaleToRestoreAfterRotation;
- (void)centerContent;
- (void)configureForImageSize:(CGSize)a3;
- (void)configureForNewBoundsAndRestoreCenterPoint:(CGPoint)a3 andScale:(double)a4;
- (void)layoutSubviews;
- (void)setZoomScale:(double)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)simulateZoomScaleByResizingView;
- (void)zoomToRect:(CGRect)a3 animated:(BOOL)a4 completionBlock:(id)a5;
@end

@implementation BKZoomingScrollView

- (BKZoomingScrollView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = BKZoomingScrollView;
  v3 = [(BKZoomingScrollView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKZoomingScrollView *)v3 _commonInit];
  }

  return v4;
}

- (BKZoomingScrollView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKZoomingScrollView;
  v3 = [(BKZoomingScrollView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(BKZoomingScrollView *)v3 _commonInit];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKZoomingScrollView;
  [(BKZoomingScrollView *)&v3 layoutSubviews];
  [(BKZoomingScrollView *)self centerContent];
}

- (void)centerContent
{
  v3 = [(BKZoomingScrollView *)self delegate];
  v13 = [v3 viewForZoomingInScrollView:self];

  if (v13)
  {
    [(BKZoomingScrollView *)self bounds];
    Width = CGRectGetWidth(v15);
    [v13 frame];
    v5 = Width - CGRectGetWidth(v16);
    [(BKZoomingScrollView *)self bounds];
    Height = CGRectGetHeight(v17);
    [v13 frame];
    v7 = Height - CGRectGetHeight(v18);
    v8 = v5 * 0.5;
    v9 = fmaxf(truncf(v8), 0.0);
    v10 = v5 - v9;
    v11 = v7 * 0.5;
    v12 = fmaxf(truncf(v11), 0.0);
    *&v7 = v7 - v12;
    [(BKZoomingScrollView *)self setContentInset:v12, v9, fmaxf(truncf(*&v7), 0.0), fmaxf(truncf(v10), 0.0)];
  }
}

- (void)configureForImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(BKZoomingScrollView *)self frame];
  v8 = v7 / width;
  v9 = 0.0;
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  if (height != 0.0)
  {
    v9 = v6 / height;
  }

  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  [(BKZoomingScrollView *)self setContentSize:width, height];
  [(BKZoomingScrollView *)self setMinimumZoomScale:v10];
  [(BKZoomingScrollView *)self maximumZoomScale];
  if (v11 < v10)
  {

    [(BKZoomingScrollView *)self setMaximumZoomScale:v10];
  }
}

- (CGPoint)maximumContentOffset
{
  [(BKZoomingScrollView *)self contentSize];
  v4 = v3;
  v6 = v5;
  [(BKZoomingScrollView *)self bounds];
  v8 = v4 - v7;
  v10 = v6 - v9;
  result.y = v10;
  result.x = v8;
  return result;
}

- (CGPoint)minimumContentOffset
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pointToCenterAfterRotation
{
  [(BKZoomingScrollView *)self bounds];
  MidX = CGRectGetMidX(v14);
  [(BKZoomingScrollView *)self bounds];
  MidY = CGRectGetMidY(v15);
  v5 = [(BKZoomingScrollView *)self delegate];
  v6 = [v5 viewForZoomingInScrollView:self];

  [(BKZoomingScrollView *)self convertPoint:v6 toView:MidX, MidY];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (double)scaleToRestoreAfterRotation
{
  [(BKZoomingScrollView *)self zoomScale];
  v4 = v3;
  [(BKZoomingScrollView *)self minimumZoomScale];
  v6 = v4 > v5 + 0.00000011920929;
  result = 0.0;
  if (v6)
  {
    return v4;
  }

  return result;
}

- (void)configureForNewBoundsAndRestoreCenterPoint:(CGPoint)a3 andScale:(double)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(BKZoomingScrollView *)self delegate];
  v30 = [v8 viewForZoomingInScrollView:self];

  [v30 bounds];
  [(BKZoomingScrollView *)self configureForImageSize:v9, v10];
  [(BKZoomingScrollView *)self maximumZoomScale];
  v12 = v11;
  [(BKZoomingScrollView *)self minimumZoomScale];
  if (v13 < a4)
  {
    v13 = a4;
  }

  if (v12 < v13)
  {
    v13 = v12;
  }

  [(BKZoomingScrollView *)self setZoomScale:v13];
  [(BKZoomingScrollView *)self convertPoint:v30 fromView:x, y];
  v15 = v14;
  v17 = v16;
  [(BKZoomingScrollView *)self bounds];
  v19 = v15 - v18 * 0.5;
  [(BKZoomingScrollView *)self bounds];
  v21 = v17 - v20 * 0.5;
  [(BKZoomingScrollView *)self maximumContentOffset];
  v23 = v22;
  v25 = v24;
  [(BKZoomingScrollView *)self minimumContentOffset];
  if (v23 >= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v23;
  }

  if (v23 >= v26)
  {
    v26 = v23;
  }

  if (v25 >= v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v25;
  }

  if (v25 >= v27)
  {
    v27 = v25;
  }

  if (v26 >= v19)
  {
    v26 = v19;
  }

  if (v28 >= v26)
  {
    v26 = v28;
  }

  if (v27 >= v21)
  {
    v27 = v21;
  }

  if (v29 >= v27)
  {
    v27 = v29;
  }

  [(BKZoomingScrollView *)self setContentOffset:v26, v27];
}

- (void)setZoomScale:(double)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = v8;
  if (v5)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_B849C;
    v12[3] = &unk_1E4548;
    v12[4] = self;
    *&v12[5] = a3;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_B84E0;
    v10[3] = &unk_1E3FA0;
    v11 = v8;
    [UIView animateWithDuration:4 delay:v12 options:v10 animations:0.2 completion:0.0];
  }

  else
  {
    [(BKZoomingScrollView *)self setZoomScale:0 animated:a3];
    if (v9)
    {
      v9[2](v9);
    }
  }
}

- (void)zoomToRect:(CGRect)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v12 = v11;
  if (v5)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_B8654;
    v15[3] = &unk_1E47E8;
    v15[4] = self;
    *&v15[5] = x;
    *&v15[6] = y;
    *&v15[7] = width;
    *&v15[8] = height;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_B869C;
    v13[3] = &unk_1E3FA0;
    v14 = v11;
    [UIView animateWithDuration:4 delay:v15 options:v13 animations:0.2 completion:0.0];
  }

  else
  {
    [(BKZoomingScrollView *)self zoomToRect:0 animated:x, y, width, height];
    if (v12)
    {
      v12[2](v12);
    }
  }
}

- (void)simulateZoomScaleByResizingView
{
  [(BKZoomingScrollView *)self zoomScale];
  v4 = fmin(v3, self->_maxSimulatedZoomScale / self->_simulatedZoomScale);
  if (v4 != 1.0)
  {
    v5 = [(BKZoomingScrollView *)self delegate];
    v6 = [v5 viewForZoomingInScrollView:self];

    self->_simulatedZoomScale = v4 * self->_simulatedZoomScale;
    memset(&v16, 0, sizeof(v16));
    CGAffineTransformMakeScale(&v16, v4, v4);
    if (v6)
    {
      [v6 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v12 = v16;
    CGAffineTransformInvert(&t2, &v12);
    CGAffineTransformConcat(&v15, &t1, &t2);
    t1 = v15;
    [v6 setTransform:&t1];
    [v6 bounds];
    t1 = v16;
    v18 = CGRectApplyAffineTransform(v17, &t1);
    [v6 setBounds:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
    [(BKZoomingScrollView *)self minimumZoomScale];
    [(BKZoomingScrollView *)self setMinimumZoomScale:v7 / v4];
    [(BKZoomingScrollView *)self maximumZoomScale];
    [(BKZoomingScrollView *)self setMaximumZoomScale:v8 / v4];
    v9 = [(BKZoomingScrollView *)self delegate];
    v10 = [v9 conformsToProtocol:&OBJC_PROTOCOL___BKZoomingScrollViewDelegate];

    if (v10)
    {
      v11 = [(BKZoomingScrollView *)self delegate];
      [v11 zoomingScrollView:self didSimulateZoomScale:v6 onView:self->_simulatedZoomScale];
    }
  }
}

@end