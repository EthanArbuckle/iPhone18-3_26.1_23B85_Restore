@interface SSSOccludingCoveringView
- (SSSOccludingCoveringView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SSSOccludingCoveringView

- (SSSOccludingCoveringView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SSSOccludingCoveringView;
  v3 = [(SSSOccludingCoveringView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_opt_new();
  backgroundColorView = v3->_backgroundColorView;
  v3->_backgroundColorView = v4;

  [(SSSOccludingCoveringView *)v3 addSubview:v3->_backgroundColorView];
  return v3;
}

- (void)layoutSubviews
{
  [(SSSOccludingCoveringView *)self bounds];
  [(UIView *)self->_backgroundColorView setFrame:?];
  v3 = [UIColor colorWithWhite:0.0 alpha:0.56];
  [(UIView *)self->_backgroundColorView setBackgroundColor:v3];
}

@end