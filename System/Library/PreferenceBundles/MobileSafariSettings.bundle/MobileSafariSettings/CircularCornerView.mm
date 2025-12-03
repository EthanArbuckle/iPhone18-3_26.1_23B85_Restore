@interface CircularCornerView
- (void)layoutSubviews;
@end

@implementation CircularCornerView

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = CircularCornerView;
  [(CircularCornerView *)&v10 layoutSubviews];
  [(CircularCornerView *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v7 = CGRectGetWidth(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = fmin(v7, CGRectGetHeight(v12)) * 0.5;
  layer = [(CircularCornerView *)self layer];
  [layer setCornerRadius:v8];
}

@end