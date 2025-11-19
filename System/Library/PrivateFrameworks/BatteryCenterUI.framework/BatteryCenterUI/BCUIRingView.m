@interface BCUIRingView
- (BCUIRingView)initWithFrame:(CGRect)a3;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)sizeThatFits:(CGSize)result;
- (void)_invalidatePath;
- (void)layoutSubviews;
- (void)setFillColor:(id)a3;
- (void)setFractionComplete:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setRingEnd:(double)a3;
- (void)setRingStart:(double)a3;
- (void)setStrokeColor:(id)a3;
@end

@implementation BCUIRingView

- (void)setRingStart:(double)a3
{
  v3 = fmin(fmax(a3, 0.0), 1.0);
  if (v3 != self->_ringStart)
  {
    self->_ringStart = v3;
    [(BCUIRingView *)self setNeedsLayout];
  }
}

- (void)setRingEnd:(double)a3
{
  v3 = fmin(fmax(a3, 0.0), 1.0);
  if (v3 != self->_ringEnd)
  {
    self->_ringEnd = v3;
    [(BCUIRingView *)self setNeedsLayout];
  }
}

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  if (self->_strokeColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_strokeColor, a3);
    [(BCUIRingView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  if (self->_fillColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_fillColor, a3);
    [(BCUIRingView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setFractionComplete:(double)a3
{
  [(BCUIRingView *)self setRingStart:0.0];

  [(BCUIRingView *)self setRingEnd:a3];
}

- (BCUIRingView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = BCUIRingView;
  v3 = [(BCUIRingView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_lineWidth = 6.0;
    [(BCUIRingView *)v3 setNeedsLayout];
    v5 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __30__BCUIRingView_initWithFrame___block_invoke;
    v7[3] = &unk_1E814ECE8;
    v8 = v4;
    [v5 performWithoutAnimation:v7];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3 = [(BCUIRingView *)self _shapeLayer];
  v4 = v3;
  v32 = v3;
  if (self->_ringEnd > self->_ringStart)
  {
    v5 = [v3 path];
    v4 = v32;
    if (!v5)
    {
      [(BCUIRingView *)self bounds];
      v7 = v6;
      v9 = v8;
      v10 = [(BCUIRingView *)self window];
      if (v10)
      {
        v11 = [(BCUIRingView *)self window];
        v12 = [v11 screen];
        [v12 scale];
        v14 = v13;
      }

      else
      {
        v11 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v11 scale];
        v14 = v15;
      }

      [(BCUIRingView *)self sizeThatFits:v7, v9];
      BSRectWithSize();
      UIRectCenteredIntegralRectScale();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      Mutable = CGPathCreateMutable();
      UIRectGetCenter();
      UIPointRoundToScale();
      v26 = v25;
      v28 = v27;
      v34.origin.x = v17;
      v34.origin.y = v19;
      v34.size.width = v21;
      v34.size.height = v23;
      CGRectGetWidth(v34);
      UIRoundToScale();
      CGPathAddArc(Mutable, 0, v26, v28, v29, 4.71238898, 10.9955743, 0);
      [v32 setPath:{Mutable, v14}];
      CGPathRelease(Mutable);
      [v32 setLineCap:@"round"];
      v4 = v32;
    }
  }

  [v4 setLineWidth:self->_lineWidth];
  fillColor = self->_fillColor;
  if (fillColor)
  {
    [v32 setFillColor:{-[UIColor CGColor](fillColor, "CGColor")}];
  }

  else
  {
    v31 = [MEMORY[0x1E69DC888] clearColor];
    [v32 setFillColor:{objc_msgSend(v31, "CGColor")}];
  }

  [v32 setStrokeColor:{-[UIColor CGColor](self->_strokeColor, "CGColor")}];
  [v32 setStrokeStart:self->_ringStart];
  [v32 setStrokeEnd:self->_ringEnd];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(BCUIRingView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = BCUIRingView;
  [(BCUIRingView *)&v20 setFrame:x, y, width, height];
  [(BCUIRingView *)self frame];
  v22.origin.x = v16;
  v22.origin.y = v17;
  v22.size.width = v18;
  v22.size.height = v19;
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (!CGRectEqualToRect(v21, v22))
  {
    [(BCUIRingView *)self _invalidatePath];
  }
}

- (CGSize)sizeThatFits:(CGSize)result
{
  if (result.width > result.height)
  {
    result.width = result.height;
  }

  width = result.width;
  result.height = width;
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"strokeStart"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"strokeEnd") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"strokeColor"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BCUIRingView;
    v5 = [(BCUIRingView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)_invalidatePath
{
  v3 = [(BCUIRingView *)self _shapeLayer];
  [v3 setPath:0];

  [(BCUIRingView *)self setNeedsLayout];
}

@end