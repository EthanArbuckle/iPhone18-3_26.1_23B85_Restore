@interface UIView
+ (void)performBlockWithActionsAndAnimationsDisabled:(id)a3;
- (BOOL)isAncestorScrollViewDragging;
- (CGSize)frameSize;
- (double)scaleNeededToFill:(CGRect)a3;
- (double)scaleNeededToFit:(CGRect)a3;
- (void)animateToFrame:(CGRect)a3 duration:(double)a4 hasInitialScale:(BOOL)a5 fit:(BOOL)a6 setFinalFrame:(BOOL)a7 completion:(id)a8;
- (void)centerHorizontallyInSuperview;
- (void)centerInSuperview;
- (void)offset:(CGPoint)a3;
- (void)scale:(double)a3 aroundAnchorPoint:(CGPoint)a4 afterOffset:(CGPoint)a5;
- (void)scale:(double)a3 aroundBoundsPoint:(CGPoint)a4 afterOffset:(CGPoint)a5;
- (void)scaleToFill:(CGRect)a3;
- (void)scaleToFit:(CGRect)a3;
- (void)setFrameAndScaleToFitCurrentSize:(CGRect)a3 layoutAfterSetFrame:(id)a4;
- (void)setFrameHeight:(double)a3;
- (void)setFrameOrigin:(CGPoint)a3;
- (void)setFrameSize:(CGSize)a3;
- (void)setFrameWidth:(double)a3;
- (void)setFrameX:(double)a3;
- (void)setFrameY:(double)a3;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setOrigin:(CGPoint)a3;
- (void)th_restoreState;
@end

@implementation UIView

- (void)setFrameOrigin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self frame];

  [(UIView *)self setFrame:x, y];
}

- (void)setFrameSize:(CGSize)a3
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:?];
}

- (CGSize)frameSize
{
  [(UIView *)self frame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)setFrameX:(double)a3
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:a3];
}

- (void)setFrameY:(double)a3
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:?];
}

- (void)setFrameWidth:(double)a3
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:?];
}

- (void)setFrameHeight:(double)a3
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:?];
}

- (void)offset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self frame];
  v8 = CGRectOffset(v7, x, y);

  [(UIView *)self setFrame:v8.origin.x, v8.origin.y, v8.size.width, v8.size.height];
}

- (void)setOrigin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self frame];

  [(UIView *)self setFrame:x, y];
}

- (void)centerHorizontallyInSuperview
{
  [(UIView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [[(UIView *)self superview] bounds];
  v10 = floor((v9 - v6) * 0.5);

  [(UIView *)self setFrame:v10, v4, v6, v8];
}

- (void)centerInSuperview
{
  [(UIView *)self frame];
  v4 = v3;
  v6 = v5;
  [[(UIView *)self superview] bounds];
  v8 = floor((v7 - v4) * 0.5);
  [[(UIView *)self superview] bounds];
  v10 = floor((v9 - v6) * 0.5);

  [(UIView *)self setFrame:v8, v10, v4, v6];
}

- (double)scaleNeededToFit:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(UIView *)self bounds:a3.origin.x];

  return THScaleNeededToFitSizeInSize(v5, v6, width, height);
}

- (void)scaleToFit:(CGRect)a3
{
  [(UIView *)self scaleNeededToFit:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  CGAffineTransformMakeScale(&v6, v4, v4);
  v5 = v6;
  [(UIView *)self setTransform:&v5];
}

- (double)scaleNeededToFill:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(UIView *)self bounds:a3.origin.x];

  return THScaleNeededToFillSizeInSize(v5, v6, width, height);
}

- (void)scaleToFill:(CGRect)a3
{
  [(UIView *)self scaleNeededToFill:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  CGAffineTransformMakeScale(&v6, v4, v4);
  v5 = v6;
  [(UIView *)self setTransform:&v5];
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a3;
  if (a4)
  {
    [(UIView *)self setHidden:0];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_3871C;
    v16[3] = &unk_45B860;
    v17 = v6;
    v16[4] = self;
    v16[5] = a5;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_3877C;
    v14[3] = &unk_45B2C0;
    v14[4] = self;
    v15 = v6;
    v8 = [(CALayer *)[(UIView *)self layer] shouldRasterize];
    [(CALayer *)[(UIView *)self layer] setShouldRasterize:1];
    TSUScreenScale();
    [(CALayer *)[(UIView *)self layer] setRasterizationScale:v9];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_38798;
    v12[3] = &unk_45B888;
    v12[4] = self;
    v12[5] = v16;
    v13 = v8;
    [UIView animateWithDuration:4 delay:v14 options:v12 animations:0.25 completion:0.0];
  }

  else
  {
    [(UIView *)self setHidden:a3];
    v10 = 1.0;
    if (v6)
    {
      v10 = 0.0;
    }

    [(UIView *)self setAlpha:v10];
    if (a5)
    {
      v11 = *(a5 + 2);

      v11(a5, 1);
    }
  }
}

+ (void)performBlockWithActionsAndAnimationsDisabled:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_3885C;
  v3[3] = &unk_45B8B0;
  v3[4] = a3;
  [UIView performWithoutAnimation:v3];
}

- (void)setFrameAndScaleToFitCurrentSize:(CGRect)a3 layoutAfterSetFrame:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UIView *)self setFrame:x, y, width, height];
  if (a4)
  {
    (*(a4 + 2))(a4);
  }

  v20.origin.x = v11;
  v20.origin.y = v13;
  v20.size.width = v15;
  v20.size.height = v17;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = v11;
  v21.origin.y = v13;
  v21.size.width = v15;
  v21.size.height = v17;
  [(UIView *)self setCenter:MidX, CGRectGetMidY(v21)];

  [(UIView *)self scaleToFit:v11, v13, v15, v17];
}

- (void)animateToFrame:(CGRect)a3 duration:(double)a4 hasInitialScale:(BOOL)a5 fit:(BOOL)a6 setFinalFrame:(BOOL)a7 completion:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3052000000;
  v22[3] = sub_38BAC;
  v22[4] = sub_38BBC;
  v22[5] = self;
  memset(&v21, 0, sizeof(v21));
  if (a5)
  {
    v15 = *&CGAffineTransformIdentity.c;
    *&v21.a = *&CGAffineTransformIdentity.a;
    *&v21.c = v15;
    *&v21.tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    if (a6)
    {
      [(UIView *)self scaleNeededToFit:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    }

    else
    {
      [(UIView *)self scaleNeededToFill:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    }

    CGAffineTransformMakeScale(&v21, v16, v16);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v20 = v21;
  v19[2] = sub_38BC8;
  v19[3] = &unk_45B8D8;
  v19[4] = v22;
  *&v19[5] = x;
  *&v19[6] = y;
  *&v19[7] = width;
  *&v19[8] = height;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_38C54;
  v17[3] = &unk_45B900;
  v18 = a7;
  *&v17[6] = x;
  *&v17[7] = y;
  *&v17[8] = width;
  *&v17[9] = height;
  v17[4] = a8;
  v17[5] = v22;
  [UIView animateWithDuration:v19 animations:v17 completion:a4];
  _Block_object_dispose(v22, 8);
}

- (void)scale:(double)a3 aroundBoundsPoint:(CGPoint)a4 afterOffset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  memset(&v14, 0, sizeof(v14));
  v11 = [(UIView *)self layer];
  if (v11)
  {
    [(CALayer *)v11 transformToScale:a3 aroundBoundsPoint:v8 afterOffset:v7, x, y];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  v12 = v14;
  CATransform3DGetAffineTransform(&v13, &v12);
  *&v12.m11 = *&v13.a;
  *&v12.m13 = *&v13.c;
  *&v12.m21 = *&v13.tx;
  [(UIView *)self setTransform:&v12];
}

- (void)scale:(double)a3 aroundAnchorPoint:(CGPoint)a4 afterOffset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  memset(&v14, 0, sizeof(v14));
  v11 = [(UIView *)self layer];
  if (v11)
  {
    [(CALayer *)v11 transformToScale:a3 aroundAnchorPoint:v8 afterOffset:v7, x, y];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  v12 = v14;
  CATransform3DGetAffineTransform(&v13, &v12);
  *&v12.m11 = *&v13.a;
  *&v12.m13 = *&v13.c;
  *&v12.m21 = *&v13.tx;
  [(UIView *)self setTransform:&v12];
}

- (BOOL)isAncestorScrollViewDragging
{
  v2 = [(UIView *)self superview];

  return [(UIView *)v2 isAncestorScrollViewDragging];
}

- (void)th_restoreState
{
  if (![(UIView *)self stateRestoreBlock])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(UIView *)self stateRestoreBlock])
  {
    (*([(UIView *)self stateRestoreBlock]+ 2))();

    [(UIView *)self setStateRestoreBlock:0];
  }
}

@end