@interface LargeDayNavigationWrapperView
- (LargeDayNavigationWrapperView)initWithNavigationView:(id)view;
- (void)layoutSubviews;
@end

@implementation LargeDayNavigationWrapperView

- (LargeDayNavigationWrapperView)initWithNavigationView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = LargeDayNavigationWrapperView;
  v6 = [(LargeDayNavigationWrapperView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationView, view);
    [(LargeDayNavigationWrapperView *)v7 addSubview:v7->_navigationView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = LargeDayNavigationWrapperView;
  [(LargeDayNavigationWrapperView *)&v3 layoutSubviews];
  [(LargeDayNavigationWrapperView *)self bounds];
  [(UIView *)self->_navigationView setFrame:?];
}

@end