@interface AVTFixedSizeViewContainer
- (AVTFixedSizeViewContainer)initWithFixedSizeView:(id)view;
- (void)layoutSubviews;
@end

@implementation AVTFixedSizeViewContainer

- (AVTFixedSizeViewContainer)initWithFixedSizeView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  v9.receiver = self;
  v9.super_class = AVTFixedSizeViewContainer;
  v6 = [(AVTFixedSizeViewContainer *)&v9 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fixedSizeView, view);
    [(UIView *)v7->_fixedSizeView setAutoresizingMask:0];
    [(UIView *)v7->_fixedSizeView _setSafeAreaInsetsFrozen:1];
    [(AVTFixedSizeViewContainer *)v7 addSubview:viewCopy];
  }

  return v7;
}

- (void)layoutSubviews
{
  [(AVTFixedSizeViewContainer *)self bounds];
  MidX = CGRectGetMidX(v15);
  [(AVTFixedSizeViewContainer *)self bounds];
  MidY = CGRectGetMidY(v16);
  fixedSizeView = [(AVTFixedSizeViewContainer *)self fixedSizeView];
  [fixedSizeView center];
  v7 = v6;
  v9 = v8;

  if (MidX != v7 || MidY != v9)
  {
    fixedSizeView2 = [(AVTFixedSizeViewContainer *)self fixedSizeView];
    [fixedSizeView2 setCenter:{MidX, MidY}];
  }

  fixedSizeView3 = [(AVTFixedSizeViewContainer *)self fixedSizeView];
  [fixedSizeView3 bounds];

  [(AVTFixedSizeViewContainer *)self bounds];
  _UIScaleTransformForAspectFitOfSizeInTargetSize();
  fixedSizeView4 = [(AVTFixedSizeViewContainer *)self fixedSizeView];
  memset(v14, 0, sizeof(v14));
  [fixedSizeView4 setTransform:v14];
}

@end