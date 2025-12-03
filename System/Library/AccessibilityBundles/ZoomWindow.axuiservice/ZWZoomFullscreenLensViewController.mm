@interface ZWZoomFullscreenLensViewController
- (CGPoint)maximumPanOffsetWithZoomFactor:(double)factor;
- (void)_applyInitialLayoutConstraints;
@end

@implementation ZWZoomFullscreenLensViewController

- (void)_applyInitialLayoutConstraints
{
  v9.receiver = self;
  v9.super_class = ZWZoomFullscreenLensViewController;
  [(ZWZoomLensViewController *)&v9 _applyInitialLayoutConstraints];
  view = [(ZWZoomFullscreenLensViewController *)self view];
  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
  v5 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:1 relatedBy:0 toItem:view attribute:1 multiplier:1.0 constant:0.0];
  [view addConstraint:v5];

  v6 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:2 relatedBy:0 toItem:view attribute:2 multiplier:1.0 constant:0.0];
  [view addConstraint:v6];

  v7 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:3 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:0.0];
  [view addConstraint:v7];

  v8 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:4 relatedBy:0 toItem:view attribute:4 multiplier:1.0 constant:0.0];
  [view addConstraint:v8];
}

- (CGPoint)maximumPanOffsetWithZoomFactor:(double)factor
{
  view = [(ZWZoomFullscreenLensViewController *)self view];
  window = [view window];
  [window bounds];
  v8 = v7;
  v10 = v9;

  v11 = ZWGetTestingScreenSize();
  if (v11 != CGSizeZero.width || v12 != CGSizeZero.height)
  {
    v8 = ZWGetTestingScreenSize();
    v11 = ZWGetTestingScreenSize();
    v10 = v14;
  }

  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
  [lensZoomView sampledContentSizeWithZoomFactor:factor];
  v17 = v16;
  v19 = v18;

  v20 = (v8 - v17) * 0.5;
  v21 = (v10 - v19) * 0.5;
  result.y = v21;
  result.x = v20;
  return result;
}

@end