@interface AKSignatureBaselineView
- (AKSignatureBaselineView)initWithCoder:(id)a3;
- (AKSignatureBaselineView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)lastSafeAreaInsets;
- (double)scaleFactor;
- (void)_commonInit;
- (void)_drawBaselineInContext:(CGContext *)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AKSignatureBaselineView

- (AKSignatureBaselineView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AKSignatureBaselineView;
  v3 = [(AKSignatureBaselineView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AKSignatureBaselineView *)v3 _commonInit];
  }

  return v4;
}

- (AKSignatureBaselineView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AKSignatureBaselineView;
  v3 = [(AKSignatureBaselineView *)&v6 initWithCoder:a3];
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
  v3 = [MEMORY[0x277D75348] clearColor];
  [(AKSignatureBaselineView *)self setBackgroundColor:v3];

  [(AKSignatureBaselineView *)self setContentMode:3];
  [(AKSignatureBaselineView *)self setBaselinePercent:0.187];
  v4 = [(AKSignatureBaselineView *)self layer];
  [v4 setOpaque:0];
}

- (double)scaleFactor
{
  v3 = [(AKSignatureBaselineView *)self window];
  v4 = [v3 screen];

  if (v4)
  {
    v5 = [(AKSignatureBaselineView *)self window];
    v6 = [v5 screen];
    [v6 scale];
    v8 = v7;
  }

  else
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 scale];
    v8 = v9;
  }

  return v8;
}

- (void)drawRect:(CGRect)a3
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

- (void)_drawBaselineInContext:(CGContext *)a3
{
  if (a3)
  {
    CGContextSaveGState(a3);
    Mutable = CGPathCreateMutable();
    ClipBoundingBox = CGContextGetClipBoundingBox(a3);
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
    CGContextSetStrokeColorWithColor(a3, [v18 CGColor]);

    CGContextSetLineWidth(a3, 1.0);
    CGContextAddPath(a3, Mutable);
    CGContextStrokePath(a3);
    CGContextRestoreGState(a3);

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