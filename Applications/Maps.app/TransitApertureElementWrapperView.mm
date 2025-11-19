@interface TransitApertureElementWrapperView
- (CGSize)intrinsicContentSize;
- (TransitApertureElementWrapperView)initWithWrappedView:(id)a3 isDetached:(BOOL)a4;
@end

@implementation TransitApertureElementWrapperView

- (CGSize)intrinsicContentSize
{
  v2 = [(TransitApertureElementWrapperView *)self isDetached];
  v3 = 45.0;
  v4 = 20.0;
  if (!v2)
  {
    v3 = 20.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (TransitApertureElementWrapperView)initWithWrappedView:(id)a3 isDetached:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v18.receiver = self;
  v18.super_class = TransitApertureElementWrapperView;
  v7 = [(TransitApertureElementWrapperView *)&v18 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v8 = v7;
  if (v7)
  {
    [(TransitApertureElementWrapperView *)v7 setIsDetached:v4];
    [(TransitApertureElementWrapperView *)v8 setWrappedView:v6];
    [(TransitApertureElementWrapperView *)v8 addSubview:v6];
    v9 = [v6 heightAnchor];
    v10 = [v9 constraintEqualToConstant:20.0];
    v19[0] = v10;
    v11 = [v6 widthAnchor];
    v12 = [v11 constraintEqualToConstant:20.0];
    v19[1] = v12;
    v13 = [v6 centerXAnchor];
    v14 = [(TransitApertureElementWrapperView *)v8 centerXAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v19[2] = v15;
    v16 = [NSArray arrayWithObjects:v19 count:3];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v8;
}

@end