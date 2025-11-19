@interface MapsLargerHitTargetButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIEdgeInsets)touchInsets;
- (void)_debugVisualizeTouchInsets;
- (void)layoutSubviews;
@end

@implementation MapsLargerHitTargetButton

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MapsLargerHitTargetButton;
  [(MapsLargerHitTargetButton *)&v7 layoutSubviews];
  if (self->_debugInsetsView)
  {
    [(MapsLargerHitTargetButton *)self bounds];
    [(UIView *)self->_debugInsetsView setFrame:self->_touchInsets.left + v3, self->_touchInsets.top + v4, v5 - (self->_touchInsets.left + self->_touchInsets.right), v6 - (self->_touchInsets.top + self->_touchInsets.bottom)];
    [(MapsLargerHitTargetButton *)self bounds];
    [(UIView *)self->_debugFrameView setFrame:?];
  }
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

- (void)_debugVisualizeTouchInsets
{
  if (!self->_debugInsetsView)
  {
    v3 = [UIView alloc];
    [(MapsLargerHitTargetButton *)self bounds];
    v4 = [v3 initWithFrame:?];
    debugInsetsView = self->_debugInsetsView;
    self->_debugInsetsView = v4;

    [(UIView *)self->_debugInsetsView setAutoresizingMask:0];
    [(UIView *)self->_debugInsetsView setUserInteractionEnabled:0];
    v6 = +[UIColor redColor];
    v7 = [v6 colorWithAlphaComponent:0.600000024];
    v8 = [v7 CGColor];
    v9 = [(UIView *)self->_debugInsetsView layer];
    [v9 setBorderColor:v8];

    v10 = [(UIView *)self->_debugInsetsView layer];
    [v10 setBorderWidth:1.0];

    [(MapsLargerHitTargetButton *)self addSubview:self->_debugInsetsView];
    v11 = [UIView alloc];
    [(MapsLargerHitTargetButton *)self bounds];
    v12 = [v11 initWithFrame:?];
    debugFrameView = self->_debugFrameView;
    self->_debugFrameView = v12;

    [(UIView *)self->_debugFrameView setAutoresizingMask:0];
    [(UIView *)self->_debugFrameView setUserInteractionEnabled:0];
    v14 = +[UIColor redColor];
    v15 = [v14 colorWithAlphaComponent:0.400000006];
    [(UIView *)self->_debugFrameView setBackgroundColor:v15];

    v16 = self->_debugFrameView;

    [(MapsLargerHitTargetButton *)self addSubview:v16];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(MapsLargerHitTargetButton *)self bounds];
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  v10 = left + v9;
  v12 = top + v11;
  v14 = v13 - (left + self->_touchInsets.right);
  v16 = v15 - (top + self->_touchInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

@end