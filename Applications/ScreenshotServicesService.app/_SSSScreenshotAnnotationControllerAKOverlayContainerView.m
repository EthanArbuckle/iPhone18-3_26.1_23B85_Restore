@interface _SSSScreenshotAnnotationControllerAKOverlayContainerView
- (CGSize)intrinsicContentSize;
- (_SSSScreenshotAnnotationControllerAKOverlayContainerView)initWithFrame:(CGRect)a3;
- (void)setManagedView:(id)a3;
@end

@implementation _SSSScreenshotAnnotationControllerAKOverlayContainerView

- (_SSSScreenshotAnnotationControllerAKOverlayContainerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _SSSScreenshotAnnotationControllerAKOverlayContainerView;
  v3 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = +[UIColor clearColor];
  [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)v3 setBackgroundColor:v4];

  return v3;
}

- (void)setManagedView:(id)a3
{
  v5 = a3;
  [(UIView *)self->_managedView removeFromSuperview];
  objc_storeStrong(&self->_managedView, a3);
  if (v5)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v6 = [v5 layer];
    [v6 setAnchorPoint:{0.5, 0.5}];

    memset(&v24, 0, sizeof(v24));
    CGAffineTransformMakeScale(&v24, 1.0, -1.0);
    v23 = v24;
    [v5 setTransform:&v23];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self bounds];
    [v5 setFrame:?];
    [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self addSubview:v5];
    v7 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self managedView];
    v8 = [v7 centerXAnchor];
    v9 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v10 setActive:1];

    v11 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self managedView];
    v12 = [v11 centerYAnchor];
    v13 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self centerYAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    v15 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self managedView];
    v16 = [v15 widthAnchor];
    v17 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self widthAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    v19 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self managedView];
    v20 = [v19 heightAnchor];
    v21 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self heightAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self setNeedsLayout];
    +[CATransaction commit];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self managedView];
  [v2 systemLayoutSizeFittingSize:{CGSizeZero.width, CGSizeZero.height}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end