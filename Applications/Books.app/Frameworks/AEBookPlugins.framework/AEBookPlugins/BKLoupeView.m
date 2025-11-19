@interface BKLoupeView
- (BKLoupeView)initWithTargetView:(id)a3;
- (CGPoint)loupePointForPoint:(CGPoint)a3;
- (UIImage)loupeMask;
- (UIImage)loupeSheen;
- (UIView)targetView;
- (double)loupeHeight;
- (double)loupeWidth;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3;
- (void)drawRect:(CGRect)a3;
- (void)moveToPoint:(CGPoint)a3;
- (void)presentAtPoint:(CGPoint)a3 animated:(BOOL)a4;
- (void)resetImages;
- (void)setIsVertical:(BOOL)a3;
@end

@implementation BKLoupeView

- (BKLoupeView)initWithTargetView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BKLoupeView;
  v5 = [(BKLoupeView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_targetView, v4);
    [(BKLoupeView *)v6 setOpaque:0];
    [(BKLoupeView *)v6 setUserInteractionEnabled:0];
  }

  return v6;
}

- (UIImage)loupeMask
{
  WeakRetained = objc_loadWeakRetained(&self->_loupeMask);

  if (!WeakRetained)
  {
    if (self->_isVertical)
    {
      v4 = @"Vertical";
    }

    else
    {
      v4 = @"Horizontal";
    }

    v5 = [NSString stringWithFormat:@"RangedMagnifierMask_%@_Normal", v4];
    v6 = [(BKLoupeView *)self p_kitImageWithName:v5];
    objc_storeWeak(&self->_loupeMask, v6);
  }

  v7 = objc_loadWeakRetained(&self->_loupeMask);

  return v7;
}

- (UIImage)loupeSheen
{
  WeakRetained = objc_loadWeakRetained(&self->_loupeSheen);

  if (!WeakRetained)
  {
    if (self->_isVertical)
    {
      v4 = @"Vertical";
    }

    else
    {
      v4 = @"Horizontal";
    }

    v5 = [NSString stringWithFormat:@"RangedMagnifierGlass_%@_Normal", v4];
    v6 = [(BKLoupeView *)self p_kitImageWithName:v5];
    objc_storeWeak(&self->_loupeSheen, v6);
  }

  v7 = objc_loadWeakRetained(&self->_loupeSheen);

  return v7;
}

- (void)setIsVertical:(BOOL)a3
{
  if (self->_isVertical != a3)
  {
    [(BKLoupeView *)self willChangeValueForKey:@"isVertical"];
    self->_isVertical = a3;
    [(BKLoupeView *)self resetImages];

    [(BKLoupeView *)self didChangeValueForKey:@"isVertical"];
  }
}

- (void)resetImages
{
  objc_storeWeak(&self->_loupeMask, 0);

  objc_storeWeak(&self->_loupeSheen, 0);
}

- (void)dealloc
{
  [(BKLoupeView *)self resetImages];
  v3.receiver = self;
  v3.super_class = BKLoupeView;
  [(BKLoupeView *)&v3 dealloc];
}

- (double)loupeWidth
{
  v2 = [(BKLoupeView *)self loupeMask];
  [v2 size];
  v4 = v3;

  return v4;
}

- (double)loupeHeight
{
  v2 = [(BKLoupeView *)self loupeMask];
  [v2 size];
  v4 = v3;

  return v4;
}

- (void)dismissAnimated:(BOOL)a3
{
  v3 = 0.0;
  if (a3)
  {
    v3 = 0.25;
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1095BC;
  v4[3] = &unk_1E2BD0;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:v3];
}

- (CGPoint)loupePointForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(BKLoupeView *)self isVertical];
  [(BKLoupeView *)self loupeWidth];
  if (v6)
  {
    v8 = x - v7;
    [(BKLoupeView *)self loupeHeight];
    v10 = y + v9 * -0.5;
    v11 = v8 + -18.0;
  }

  else
  {
    v11 = x - floor(v7 * 0.5);
    [(BKLoupeView *)self loupeHeight];
    v10 = y - v12 + -18.0;
  }

  v13 = v11;
  result.y = v10;
  result.x = v13;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [(BKLoupeView *)self superview];
  [(BKLoupeView *)self frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(BKLoupeView *)self targetView];
  [v9 convertRect:v18 toView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v45 = v23;
  v46 = v24;

  CGContextSaveGState(CurrentContext);
  [(BKLoupeView *)self loupeWidth];
  v26 = v25;
  [(BKLoupeView *)self loupeHeight];
  v28 = v27;
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  [(BKLoupeView *)self loupeHeight];
  CGContextTranslateCTM(CurrentContext, 0.0, -v29);
  v30 = [(BKLoupeView *)self loupeMask];
  v31 = [v30 CGImage];
  v49.origin.x = 0.0;
  v49.origin.y = 0.0;
  v49.size.width = v26;
  v49.size.height = v28;
  CGContextClipToMask(CurrentContext, v49, v31);

  [(BKLoupeView *)self loupeHeight];
  CGContextTranslateCTM(CurrentContext, 0.0, v32);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v33 = [(BKLoupeView *)self shouldInvertContent];
  v34 = v33;
  if (v33)
  {
    v35 = [(BKLoupeView *)self pageColor];
    [v35 setFill];

    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    CGContextFillRect(CurrentContext, v50);
  }

  CGContextSaveGState(CurrentContext);
  CGContextScaleCTM(CurrentContext, 1.2, 1.2);
  v36 = -v20;
  if ([(BKLoupeView *)self isVertical])
  {
    [(BKLoupeView *)self loupeWidth];
    v38 = v36 - v37 + 18.0 + -10.0;
    v39 = -v22;
    v40 = CurrentContext;
  }

  else
  {
    [(BKLoupeView *)self loupeHeight];
    v39 = -v22 - v41 + 18.0 + -10.0;
    v40 = CurrentContext;
    v38 = v36;
  }

  CGContextTranslateCTM(v40, v38, v39);
  CGContextTranslateCTM(CurrentContext, v45 * -0.2 * 0.5, *&v46 * -0.2 * 0.5);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  CGContextFillRect(CurrentContext, v51);
  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  v43 = [WeakRetained layer];
  [v43 renderInContext:CurrentContext];

  CGContextRestoreGState(CurrentContext);
  if ((v34 & 1) == 0 && ![(BKLoupeView *)self shouldInvertContent])
  {
    v44 = [(BKLoupeView *)self pageColor];
    [v44 setFill];

    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    UIRectFillUsingBlendMode(v52, kCGBlendModeMultiply);
  }

  CGContextRestoreGState(CurrentContext);
  v47 = [(BKLoupeView *)self loupeSheen];
  [v47 drawInRect:{x, y, width, height}];
}

- (void)presentAtPoint:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  [(BKLoupeView *)self frame];
  v9 = v8;
  v11 = v10;
  v12 = [(BKLoupeView *)self superview];
  v13 = [(BKLoupeView *)self targetView];
  [v12 convertPoint:v13 fromView:{x, y}];
  [(BKLoupeView *)self loupePointForPoint:?];
  v15 = v14;
  v17 = v16;

  [(BKLoupeView *)self loupeWidth];
  v19 = v15 + floor(v18 * 0.5);
  [(BKLoupeView *)self loupeHeight];
  v21 = v20;
  v22 = [(BKLoupeView *)self isVertical];
  v23 = fmax(v19, 0.0);
  if (!v22)
  {
    v23 = v19;
  }

  [(BKLoupeView *)self setFrame:v23, v17 + v21, v9, v11];
  [(BKLoupeView *)self setNeedsDisplay];
  v25[1] = 3221225472;
  v24 = 0.25;
  v25[0] = _NSConcreteStackBlock;
  v25[2] = sub_109B94;
  v25[3] = &unk_1E2BF8;
  if (!v4)
  {
    v24 = 0.0;
  }

  v25[4] = self;
  *&v25[5] = x;
  *&v25[6] = y;
  [UIView animateWithDuration:v25 animations:v24];
}

- (void)moveToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(BKLoupeView *)self frame];
  v7 = v6;
  v9 = v8;
  v10 = [(BKLoupeView *)self superview];
  v11 = [(BKLoupeView *)self targetView];
  [v10 convertPoint:v11 fromView:{x, y}];
  [(BKLoupeView *)self loupePointForPoint:?];
  v13 = v12;
  v15 = v14;

  v16 = [(BKLoupeView *)self isVertical];
  v17 = fmax(v13, 0.0);
  if (v16)
  {
    v13 = v17;
  }

  [(BKLoupeView *)self setNeedsDisplay];

  [(BKLoupeView *)self setFrame:v13, v15, v7, v9];
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

@end