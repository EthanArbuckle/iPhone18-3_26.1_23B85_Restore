@interface AVTCircularView
- (AVTCircularView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AVTCircularView

- (AVTCircularView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = AVTCircularView;
  v3 = [(AVTCircularView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69794A0]);
    clippingLayer = v3->_clippingLayer;
    v3->_clippingLayer = v4;

    v6 = v3->_clippingLayer;
    v7 = [(AVTCircularView *)v3 layer];
    [v7 setMask:v6];
  }

  return v3;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = AVTCircularView;
  [(AVTCircularView *)&v5 layoutSubviews];
  v3 = MEMORY[0x1E69DC728];
  [(AVTCircularView *)self bounds];
  v4 = [v3 bezierPathWithOvalInRect:?];
  -[CAShapeLayer setPath:](self->_clippingLayer, "setPath:", [v4 CGPath]);
}

@end