@interface _SSSScreenshotAnnotationControllerAKOverlayContainerView
- (CGSize)intrinsicContentSize;
- (_SSSScreenshotAnnotationControllerAKOverlayContainerView)initWithFrame:(CGRect)frame;
- (void)setManagedView:(id)view;
@end

@implementation _SSSScreenshotAnnotationControllerAKOverlayContainerView

- (_SSSScreenshotAnnotationControllerAKOverlayContainerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _SSSScreenshotAnnotationControllerAKOverlayContainerView;
  v3 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = +[UIColor clearColor];
  [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)v3 setBackgroundColor:v4];

  return v3;
}

- (void)setManagedView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_managedView removeFromSuperview];
  objc_storeStrong(&self->_managedView, view);
  if (viewCopy)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    layer = [viewCopy layer];
    [layer setAnchorPoint:{0.5, 0.5}];

    memset(&v24, 0, sizeof(v24));
    CGAffineTransformMakeScale(&v24, 1.0, -1.0);
    v23 = v24;
    [viewCopy setTransform:&v23];
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self bounds];
    [viewCopy setFrame:?];
    [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self addSubview:viewCopy];
    managedView = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self managedView];
    centerXAnchor = [managedView centerXAnchor];
    centerXAnchor2 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self centerXAnchor];
    v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v10 setActive:1];

    managedView2 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self managedView];
    centerYAnchor = [managedView2 centerYAnchor];
    centerYAnchor2 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self centerYAnchor];
    v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v14 setActive:1];

    managedView3 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self managedView];
    widthAnchor = [managedView3 widthAnchor];
    widthAnchor2 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self widthAnchor];
    v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v18 setActive:1];

    managedView4 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self managedView];
    heightAnchor = [managedView4 heightAnchor];
    heightAnchor2 = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self heightAnchor];
    v22 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [v22 setActive:1];

    [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self setNeedsLayout];
    +[CATransaction commit];
  }
}

- (CGSize)intrinsicContentSize
{
  managedView = [(_SSSScreenshotAnnotationControllerAKOverlayContainerView *)self managedView];
  [managedView systemLayoutSizeFittingSize:{CGSizeZero.width, CGSizeZero.height}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end