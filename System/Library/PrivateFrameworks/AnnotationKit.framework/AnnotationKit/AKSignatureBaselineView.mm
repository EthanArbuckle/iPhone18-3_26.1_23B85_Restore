@interface AKSignatureBaselineView
- (AKSignatureBaselineView)initWithCoder:(id)coder;
- (AKSignatureBaselineView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)lastSafeAreaInsets;
- (double)scaleFactor;
- (void)_commonInit;
- (void)_drawBaselineInContext:(CGContext *)context;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
@end

@implementation AKSignatureBaselineView

- (AKSignatureBaselineView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AKSignatureBaselineView;
  v3 = [(AKSignatureBaselineView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AKSignatureBaselineView *)v3 _commonInit];
  }

  return v4;
}

- (AKSignatureBaselineView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AKSignatureBaselineView;
  v3 = [(AKSignatureBaselineView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(AKSignatureBaselineView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  [(AKSignatureBaselineView *)self setOpaque:0];
  [(AKSignatureBaselineView *)self setUserInteractionEnabled:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(AKSignatureBaselineView *)self setBackgroundColor:clearColor];

  [(AKSignatureBaselineView *)self setContentMode:3];
  [(AKSignatureBaselineView *)self setBaselinePercent:0.187];
  layer = [(AKSignatureBaselineView *)self layer];
  [layer setOpaque:0];
}

- (double)scaleFactor
{
  window = [(AKSignatureBaselineView *)self window];
  screen = [window screen];

  if (screen)
  {
    window2 = [(AKSignatureBaselineView *)self window];
    screen2 = [window2 screen];
    [screen2 scale];
    v8 = v7;
  }

  else
  {
    window2 = [MEMORY[0x277D759A0] mainScreen];
    [window2 scale];
    v8 = v9;
  }

  return v8;
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  [(AKSignatureBaselineView *)self _drawBaselineInContext:CurrentContext];

  CGContextRestoreGState(CurrentContext);
}

- (void)layoutSubviews
{
  [(AKSignatureBaselineView *)self safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AKSignatureBaselineView *)self lastSafeAreaInsets];
  if (v6 != v14 || v4 != v11 || v10 != v13 || v8 != v12)
  {
    [(AKSignatureBaselineView *)self safeAreaInsets];
    [(AKSignatureBaselineView *)self setLastSafeAreaInsets:?];

    [(AKSignatureBaselineView *)self setNeedsDisplay];
  }
}

- (void)_drawBaselineInContext:(CGContext *)context
{
  if (context)
  {
    CGContextSaveGState(context);
    Mutable = CGPathCreateMutable();
    ClipBoundingBox = CGContextGetClipBoundingBox(context);
    width = ClipBoundingBox.size.width;
    height = ClipBoundingBox.size.height;
    v8 = *&qword_27E399020;
    [(AKSignatureBaselineView *)self safeAreaInsets:ClipBoundingBox.origin.x];
    if (v9 > 0.0 || ([(AKSignatureBaselineView *)self safeAreaInsets], v10 > 0.0))
    {
      [(AKSignatureBaselineView *)self safeAreaInsets];
      v8 = v11;
      [(AKSignatureBaselineView *)self safeAreaInsets];
      if (v8 < v12)
      {
        v8 = v12;
      }
    }

    [(AKSignatureBaselineView *)self baselinePercent];
    v14 = height - height * v13;
    v15 = width - v8;
    if ([(AKSignatureBaselineView *)self _isRTL])
    {
      v16 = width - v8 + -16.0;
    }

    else
    {
      v16 = v8;
    }

    if (![(AKSignatureBaselineView *)self _isRTL])
    {
      v8 = v8 + 16.0 + 8.0;
    }

    if ([(AKSignatureBaselineView *)self _isRTL])
    {
      v15 = v16 + -8.0;
    }

    CGPathMoveToPoint(Mutable, 0, v8, v14);
    CGPathAddLineToPoint(Mutable, 0, v15, v14);
    v17 = v14 + 1.0;
    CGPathMoveToPoint(Mutable, 0, v16, v17);
    CGPathAddLineToPoint(Mutable, 0, v16 + 16.0, v17 + -16.0);
    CGPathMoveToPoint(Mutable, 0, v16, v17 + -16.0);
    CGPathAddLineToPoint(Mutable, 0, v16 + 16.0, v17);
    v18 = [MEMORY[0x277D75348] akColorWithWhite:0.6 alpha:0.7];
    CGContextSetStrokeColorWithColor(context, [v18 CGColor]);

    CGContextSetLineWidth(context, 1.0);
    CGContextAddPath(context, Mutable);
    CGContextStrokePath(context);
    CGContextRestoreGState(context);

    CGPathRelease(Mutable);
  }
}

- (UIEdgeInsets)lastSafeAreaInsets
{
  top = self->_lastSafeAreaInsets.top;
  left = self->_lastSafeAreaInsets.left;
  bottom = self->_lastSafeAreaInsets.bottom;
  right = self->_lastSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end