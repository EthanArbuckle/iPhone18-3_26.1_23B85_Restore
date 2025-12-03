@interface RCPlatterMinimalViewContainer
- (RCPlatterMinimalViewContainer)initWithFrame:(CGRect)frame childView:(id)view;
- (void)_setupChildView:(id)view;
- (void)setChildView:(id)view;
@end

@implementation RCPlatterMinimalViewContainer

- (RCPlatterMinimalViewContainer)initWithFrame:(CGRect)frame childView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = RCPlatterMinimalViewContainer;
  height = [(RCPlatterMinimalViewContainer *)&v14 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_childView, view);
    [(RCPlatterMinimalViewContainer *)v12 _setupChildView:viewCopy];
  }

  return v12;
}

- (void)setChildView:(id)view
{
  viewCopy = view;
  childView = self->_childView;
  if (childView != viewCopy)
  {
    v8 = viewCopy;
    superview = [(SBUISystemApertureAccessoryView *)childView superview];

    if (superview)
    {
      [(SBUISystemApertureAccessoryView *)self->_childView removeFromSuperview];
    }

    objc_storeStrong(&self->_childView, view);
    [(RCPlatterMinimalViewContainer *)self _setupChildView:v8];
    viewCopy = v8;
  }
}

- (void)_setupChildView:(id)view
{
  viewCopy = view;
  [(RCPlatterMinimalViewContainer *)self addSubview:viewCopy];
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [viewCopy heightAnchor];
  heightAnchor2 = [(RCPlatterMinimalViewContainer *)self heightAnchor];
  v7 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v7 setActive:1];

  centerXAnchor = [viewCopy centerXAnchor];

  centerXAnchor2 = [(RCPlatterMinimalViewContainer *)self centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v9 setActive:1];
}

@end