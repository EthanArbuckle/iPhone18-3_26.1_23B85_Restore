@interface TransitApertureElementWrapperView
- (CGSize)intrinsicContentSize;
- (TransitApertureElementWrapperView)initWithWrappedView:(id)view isDetached:(BOOL)detached;
@end

@implementation TransitApertureElementWrapperView

- (CGSize)intrinsicContentSize
{
  isDetached = [(TransitApertureElementWrapperView *)self isDetached];
  v3 = 45.0;
  v4 = 20.0;
  if (!isDetached)
  {
    v3 = 20.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (TransitApertureElementWrapperView)initWithWrappedView:(id)view isDetached:(BOOL)detached
{
  detachedCopy = detached;
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = TransitApertureElementWrapperView;
  v7 = [(TransitApertureElementWrapperView *)&v18 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v8 = v7;
  if (v7)
  {
    [(TransitApertureElementWrapperView *)v7 setIsDetached:detachedCopy];
    [(TransitApertureElementWrapperView *)v8 setWrappedView:viewCopy];
    [(TransitApertureElementWrapperView *)v8 addSubview:viewCopy];
    heightAnchor = [viewCopy heightAnchor];
    v10 = [heightAnchor constraintEqualToConstant:20.0];
    v19[0] = v10;
    widthAnchor = [viewCopy widthAnchor];
    v12 = [widthAnchor constraintEqualToConstant:20.0];
    v19[1] = v12;
    centerXAnchor = [viewCopy centerXAnchor];
    centerXAnchor2 = [(TransitApertureElementWrapperView *)v8 centerXAnchor];
    v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v19[2] = v15;
    v16 = [NSArray arrayWithObjects:v19 count:3];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v8;
}

@end