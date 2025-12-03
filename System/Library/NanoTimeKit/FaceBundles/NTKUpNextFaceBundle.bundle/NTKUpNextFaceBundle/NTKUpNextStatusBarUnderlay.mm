@interface NTKUpNextStatusBarUnderlay
- (NTKUpNextStatusBarUnderlay)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation NTKUpNextStatusBarUnderlay

- (NTKUpNextStatusBarUnderlay)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = NTKUpNextStatusBarUnderlay;
  v3 = [(NTKUpNextStatusBarUnderlay *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = +[UIColor blackColor];
    [(UIView *)v4 setBackgroundColor:v5];

    [(NTKUpNextStatusBarUnderlay *)v3 addSubview:v4];
    overlayView = v3->_overlayView;
    v3->_overlayView = v4;
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKUpNextStatusBarUnderlay;
  [(NTKUpNextStatusBarUnderlay *)&v4 layoutSubviews];
  [(NTKUpNextStatusBarUnderlay *)self bounds];
  Width = CGRectGetWidth(v5);
  [(NTKUpNextStatusBarUnderlay *)self bounds];
  [(UIView *)self->_overlayView setFrame:0.0, 0.0, Width, CGRectGetHeight(v6)];
}

@end