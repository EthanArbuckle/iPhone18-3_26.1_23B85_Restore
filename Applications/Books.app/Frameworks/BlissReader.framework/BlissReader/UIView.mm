@interface UIView
+ (void)performBlockWithActionsAndAnimationsDisabled:(id)disabled;
- (BOOL)isAncestorScrollViewDragging;
- (CGSize)frameSize;
- (double)scaleNeededToFill:(CGRect)fill;
- (double)scaleNeededToFit:(CGRect)fit;
- (void)animateToFrame:(CGRect)frame duration:(double)duration hasInitialScale:(BOOL)scale fit:(BOOL)fit setFinalFrame:(BOOL)finalFrame completion:(id)completion;
- (void)centerHorizontallyInSuperview;
- (void)centerInSuperview;
- (void)offset:(CGPoint)offset;
- (void)scale:(double)scale aroundAnchorPoint:(CGPoint)point afterOffset:(CGPoint)offset;
- (void)scale:(double)scale aroundBoundsPoint:(CGPoint)point afterOffset:(CGPoint)offset;
- (void)scaleToFill:(CGRect)fill;
- (void)scaleToFit:(CGRect)fit;
- (void)setFrameAndScaleToFitCurrentSize:(CGRect)size layoutAfterSetFrame:(id)frame;
- (void)setFrameHeight:(double)height;
- (void)setFrameOrigin:(CGPoint)origin;
- (void)setFrameSize:(CGSize)size;
- (void)setFrameWidth:(double)width;
- (void)setFrameX:(double)x;
- (void)setFrameY:(double)y;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)setOrigin:(CGPoint)origin;
- (void)th_restoreState;
@end

@implementation UIView

- (void)setFrameOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  [(UIView *)self frame];

  [(UIView *)self setFrame:x, y];
}

- (void)setFrameSize:(CGSize)size
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

- (void)setFrameX:(double)x
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:x];
}

- (void)setFrameY:(double)y
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:?];
}

- (void)setFrameWidth:(double)width
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:?];
}

- (void)setFrameHeight:(double)height
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:?];
}

- (void)offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  [(UIView *)self frame];
  v8 = CGRectOffset(v7, x, y);

  [(UIView *)self setFrame:v8.origin.x, v8.origin.y, v8.size.width, v8.size.height];
}

- (void)setOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
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

- (double)scaleNeededToFit:(CGRect)fit
{
  height = fit.size.height;
  width = fit.size.width;
  [(UIView *)self bounds:fit.origin.x];

  return THScaleNeededToFitSizeInSize(v5, v6, width, height);
}

- (void)scaleToFit:(CGRect)fit
{
  [(UIView *)self scaleNeededToFit:fit.origin.x, fit.origin.y, fit.size.width, fit.size.height];
  CGAffineTransformMakeScale(&v6, v4, v4);
  v5 = v6;
  [(UIView *)self setTransform:&v5];
}

- (double)scaleNeededToFill:(CGRect)fill
{
  height = fill.size.height;
  width = fill.size.width;
  [(UIView *)self bounds:fill.origin.x];

  return THScaleNeededToFillSizeInSize(v5, v6, width, height);
}

- (void)scaleToFill:(CGRect)fill
{
  [(UIView *)self scaleNeededToFill:fill.origin.x, fill.origin.y, fill.size.width, fill.size.height];
  CGAffineTransformMakeScale(&v6, v4, v4);
  v5 = v6;
  [(UIView *)self setTransform:&v5];
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  hiddenCopy = hidden;
  if (animated)
  {
    [(UIView *)self setHidden:0];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_3871C;
    v16[3] = &unk_45B860;
    v17 = hiddenCopy;
    v16[4] = self;
    v16[5] = completion;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_3877C;
    v14[3] = &unk_45B2C0;
    v14[4] = self;
    v15 = hiddenCopy;
    shouldRasterize = [(CALayer *)[(UIView *)self layer] shouldRasterize];
    [(CALayer *)[(UIView *)self layer] setShouldRasterize:1];
    TSUScreenScale();
    [(CALayer *)[(UIView *)self layer] setRasterizationScale:v9];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_38798;
    v12[3] = &unk_45B888;
    v12[4] = self;
    v12[5] = v16;
    v13 = shouldRasterize;
    [UIView animateWithDuration:4 delay:v14 options:v12 animations:0.25 completion:0.0];
  }

  else
  {
    [(UIView *)self setHidden:hidden];
    v10 = 1.0;
    if (hiddenCopy)
    {
      v10 = 0.0;
    }

    [(UIView *)self setAlpha:v10];
    if (completion)
    {
      v11 = *(completion + 2);

      v11(completion, 1);
    }
  }
}

+ (void)performBlockWithActionsAndAnimationsDisabled:(id)disabled
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_3885C;
  v3[3] = &unk_45B8B0;
  v3[4] = disabled;
  [UIView performWithoutAnimation:v3];
}

- (void)setFrameAndScaleToFitCurrentSize:(CGRect)size layoutAfterSetFrame:(id)frame
{
  height = size.size.height;
  width = size.size.width;
  y = size.origin.y;
  x = size.origin.x;
  [(UIView *)self frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UIView *)self setFrame:x, y, width, height];
  if (frame)
  {
    (*(frame + 2))(frame);
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

- (void)animateToFrame:(CGRect)frame duration:(double)duration hasInitialScale:(BOOL)scale fit:(BOOL)fit setFinalFrame:(BOOL)finalFrame completion:(id)completion
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3052000000;
  v22[3] = sub_38BAC;
  v22[4] = sub_38BBC;
  v22[5] = self;
  memset(&v21, 0, sizeof(v21));
  if (scale)
  {
    v15 = *&CGAffineTransformIdentity.c;
    *&v21.a = *&CGAffineTransformIdentity.a;
    *&v21.c = v15;
    *&v21.tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    if (fit)
    {
      [(UIView *)self scaleNeededToFit:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
    }

    else
    {
      [(UIView *)self scaleNeededToFill:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  finalFrameCopy = finalFrame;
  *&v17[6] = x;
  *&v17[7] = y;
  *&v17[8] = width;
  *&v17[9] = height;
  v17[4] = completion;
  v17[5] = v22;
  [UIView animateWithDuration:v19 animations:v17 completion:duration];
  _Block_object_dispose(v22, 8);
}

- (void)scale:(double)scale aroundBoundsPoint:(CGPoint)point afterOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v7 = point.y;
  v8 = point.x;
  memset(&v14, 0, sizeof(v14));
  layer = [(UIView *)self layer];
  if (layer)
  {
    [(CALayer *)layer transformToScale:scale aroundBoundsPoint:v8 afterOffset:v7, x, y];
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

- (void)scale:(double)scale aroundAnchorPoint:(CGPoint)point afterOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v7 = point.y;
  v8 = point.x;
  memset(&v14, 0, sizeof(v14));
  layer = [(UIView *)self layer];
  if (layer)
  {
    [(CALayer *)layer transformToScale:scale aroundAnchorPoint:v8 afterOffset:v7, x, y];
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
  superview = [(UIView *)self superview];

  return [(UIView *)superview isAncestorScrollViewDragging];
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