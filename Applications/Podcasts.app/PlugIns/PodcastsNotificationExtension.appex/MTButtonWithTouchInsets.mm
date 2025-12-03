@interface MTButtonWithTouchInsets
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_boundsRelativeHitRect;
- (MTButtonWithTouchInsets)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)touchInsets;
- (void)layoutSubviews;
- (void)setTouchInsets:(UIEdgeInsets)insets;
@end

@implementation MTButtonWithTouchInsets

- (MTButtonWithTouchInsets)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MTButtonWithTouchInsets;
  result = [(MTButtonWithTouchInsets *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    v4 = *&UIEdgeInsetsZero.bottom;
    *&result->_touchInsets.top = *&UIEdgeInsetsZero.top;
    *&result->_touchInsets.bottom = v4;
  }

  return result;
}

- (void)setTouchInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_touchInsets.top, v3), vceqq_f64(*&self->_touchInsets.bottom, v4)))) & 1) == 0)
  {
    self->_touchInsets = insets;
    [(MTButtonWithTouchInsets *)self updateDebugUI];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MTButtonWithTouchInsets;
  [(MTButtonWithTouchInsets *)&v3 layoutSubviews];
  [(MTButtonWithTouchInsets *)self updateDebugUI];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(MTButtonWithTouchInsets *)self _boundsRelativeHitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)_boundsRelativeHitRect
{
  [(MTButtonWithTouchInsets *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MTButtonWithTouchInsets *)self touchInsets];
  v12 = v6 + v11;
  v15 = v8 - (v13 + v14);
  v17 = v10 - (v11 + v16);
  v18 = v4 + v13;
  v19 = v12;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (UIEdgeInsets)touchInsets
{
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  bottom = self->_touchInsets.bottom;
  right = self->_touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end