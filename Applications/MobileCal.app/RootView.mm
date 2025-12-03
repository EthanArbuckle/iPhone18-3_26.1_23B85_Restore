@interface RootView
- (RootView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setMainView:(id)view;
@end

@implementation RootView

- (RootView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RootView;
  v3 = [(RootView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor systemBackgroundColor];
    [(RootView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)setMainView:(id)view
{
  viewCopy = view;
  mainView = self->_mainView;
  if (mainView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)mainView removeFromSuperview];
    if (v7)
    {
      [(RootView *)self addSubview:v7];
      [(RootView *)self sendSubviewToBack:v7];
    }

    [(RootView *)self setNeedsLayout];
    objc_storeStrong(&self->_mainView, view);
  }

  _objc_release_x1();
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = RootView;
  [(RootView *)&v12 layoutSubviews];
  [(RootView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  mainView = [(RootView *)self mainView];
  [mainView setFrame:{v4, v6, v8, v10}];
}

@end