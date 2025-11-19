@interface AVTFixedSizeViewContainer
- (AVTFixedSizeViewContainer)initWithFixedSizeView:(id)a3;
- (void)layoutSubviews;
@end

@implementation AVTFixedSizeViewContainer

- (AVTFixedSizeViewContainer)initWithFixedSizeView:(id)a3
{
  v5 = a3;
  [v5 frame];
  v9.receiver = self;
  v9.super_class = AVTFixedSizeViewContainer;
  v6 = [(AVTFixedSizeViewContainer *)&v9 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fixedSizeView, a3);
    [(UIView *)v7->_fixedSizeView setAutoresizingMask:0];
    [(UIView *)v7->_fixedSizeView _setSafeAreaInsetsFrozen:1];
    [(AVTFixedSizeViewContainer *)v7 addSubview:v5];
  }

  return v7;
}

- (void)layoutSubviews
{
  [(AVTFixedSizeViewContainer *)self bounds];
  MidX = CGRectGetMidX(v15);
  [(AVTFixedSizeViewContainer *)self bounds];
  MidY = CGRectGetMidY(v16);
  v5 = [(AVTFixedSizeViewContainer *)self fixedSizeView];
  [v5 center];
  v7 = v6;
  v9 = v8;

  if (MidX != v7 || MidY != v9)
  {
    v11 = [(AVTFixedSizeViewContainer *)self fixedSizeView];
    [v11 setCenter:{MidX, MidY}];
  }

  v12 = [(AVTFixedSizeViewContainer *)self fixedSizeView];
  [v12 bounds];

  [(AVTFixedSizeViewContainer *)self bounds];
  _UIScaleTransformForAspectFitOfSizeInTargetSize();
  v13 = [(AVTFixedSizeViewContainer *)self fixedSizeView];
  memset(v14, 0, sizeof(v14));
  [v13 setTransform:v14];
}

@end