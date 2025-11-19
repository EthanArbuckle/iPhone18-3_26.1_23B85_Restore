@interface RootView
- (RootView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setMainView:(id)a3;
@end

@implementation RootView

- (RootView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RootView;
  v3 = [(RootView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor systemBackgroundColor];
    [(RootView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)setMainView:(id)a3
{
  v5 = a3;
  mainView = self->_mainView;
  if (mainView != v5)
  {
    v7 = v5;
    [(UIView *)mainView removeFromSuperview];
    if (v7)
    {
      [(RootView *)self addSubview:v7];
      [(RootView *)self sendSubviewToBack:v7];
    }

    [(RootView *)self setNeedsLayout];
    objc_storeStrong(&self->_mainView, a3);
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
  v11 = [(RootView *)self mainView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

@end