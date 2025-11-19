@interface ZWZoomFullscreenLensViewController
- (CGPoint)maximumPanOffsetWithZoomFactor:(double)a3;
- (void)_applyInitialLayoutConstraints;
@end

@implementation ZWZoomFullscreenLensViewController

- (void)_applyInitialLayoutConstraints
{
  v9.receiver = self;
  v9.super_class = ZWZoomFullscreenLensViewController;
  [(ZWZoomLensViewController *)&v9 _applyInitialLayoutConstraints];
  v3 = [(ZWZoomFullscreenLensViewController *)self view];
  v4 = [(ZWZoomLensViewController *)self lensZoomView];
  v5 = [NSLayoutConstraint constraintWithItem:v4 attribute:1 relatedBy:0 toItem:v3 attribute:1 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v5];

  v6 = [NSLayoutConstraint constraintWithItem:v4 attribute:2 relatedBy:0 toItem:v3 attribute:2 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v6];

  v7 = [NSLayoutConstraint constraintWithItem:v4 attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v7];

  v8 = [NSLayoutConstraint constraintWithItem:v4 attribute:4 relatedBy:0 toItem:v3 attribute:4 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v8];
}

- (CGPoint)maximumPanOffsetWithZoomFactor:(double)a3
{
  v5 = [(ZWZoomFullscreenLensViewController *)self view];
  v6 = [v5 window];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = ZWGetTestingScreenSize();
  if (v11 != CGSizeZero.width || v12 != CGSizeZero.height)
  {
    v8 = ZWGetTestingScreenSize();
    v11 = ZWGetTestingScreenSize();
    v10 = v14;
  }

  v15 = [(ZWZoomLensViewController *)self lensZoomView];
  [v15 sampledContentSizeWithZoomFactor:a3];
  v17 = v16;
  v19 = v18;

  v20 = (v8 - v17) * 0.5;
  v21 = (v10 - v19) * 0.5;
  result.y = v21;
  result.x = v20;
  return result;
}

@end