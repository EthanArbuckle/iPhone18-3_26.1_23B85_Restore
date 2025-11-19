@interface _MFTiltedTabItemView
+ (id)_newContentShadowView;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CATransform3D)contentTransform;
- (CGRect)closeButtonHitRect;
- (ComposePlaceholderView)composePlaceholderView;
- (UIEdgeInsets)contentClippingInsets;
- (_MFTiltedTabItemView)init;
- (void)installMaskCutoutView:(id)a3;
- (void)layoutHeaderViewAnimated:(BOOL)a3 closeButton:(BOOL)a4;
- (void)layoutSubviews;
- (void)setBorrowedContentScale:(double)a3;
- (void)setBorrowedContentView:(id)a3;
- (void)setContentTransform:(CATransform3D *)a3;
- (void)uninstallMaskCutoutView;
@end

@implementation _MFTiltedTabItemView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"zPosition"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _MFTiltedTabItemView;
    v5 = [(_MFTiltedTabItemView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (_MFTiltedTabItemView)init
{
  v20.receiver = self;
  v20.super_class = _MFTiltedTabItemView;
  v2 = [(_MFTiltedTabItemView *)&v20 init];
  v3 = v2;
  v4 = v2;
  if (v2)
  {
    [(_MFTiltedTabItemView *)v2 setPreservesSuperviewLayoutMargins:1];
    v4->_borrowedContentScale = 1.0;
    v4->_indexForLayout = 0x7FFFFFFFFFFFFFFFLL;
    v4->_countForLayout = 0x7FFFFFFFFFFFFFFFLL;
    v5 = objc_alloc_init(UIView);
    closeButtonWrapperView = v4->_closeButtonWrapperView;
    v4->_closeButtonWrapperView = v5;

    v7 = [(UIView *)v4->_closeButtonWrapperView layer];
    [v7 setAnchorPoint:{0.5, 0.0}];

    v8 = [(_MFTiltedTabItemView *)v4 layer];
    [v8 setAnchorPoint:{0.5, 0.0}];

    v9 = [(_MFTiltedTabItemView *)v4 layer];
    [v9 setAllowsGroupOpacity:0];

    v10 = [UIView alloc];
    [(_MFTiltedTabItemView *)v4 bounds];
    v11 = [v10 initWithFrame:?];
    contentClipperView = v4->_contentClipperView;
    v4->_contentClipperView = v11;

    v13 = [(UIView *)v4->_contentClipperView layer];
    [v13 setAnchorPoint:{CGPointZero.x, CGPointZero.y}];

    [(UIView *)v4->_contentClipperView _setContinuousCornerRadius:10.0];
    [(UIView *)v4->_contentClipperView setPreservesSuperviewLayoutMargins:1];
    [(UIView *)v4->_contentClipperView setClipsToBounds:1];
    [(_MFTiltedTabItemView *)v4 addSubview:v4->_contentClipperView];
    v14 = [objc_opt_class() _newContentShadowView];
    contentShadowView = v4->_contentShadowView;
    v4->_contentShadowView = v14;

    [(_MFTiltedTabItemView *)v4 addSubview:v4->_contentShadowView];
    if ((sub_10020B844() & 1) == 0)
    {
      [(_TabGradientView *)v4->_contentShadowView setHidden:1];
    }

    v16 = [UIButton buttonWithType:1];
    closeButton = v4->_closeButton;
    v4->_closeButton = v16;

    [(UIView *)v4->_closeButtonWrapperView addSubview:v4->_closeButton];
    size = CGRectNull.size;
    v3->_closeButtonHitRect.origin = CGRectNull.origin;
    v3->_closeButtonHitRect.size = size;
    [(_MFTiltedTabItemView *)v4 addSubview:v4->_closeButtonWrapperView];
  }

  return v4;
}

+ (id)_newContentShadowView
{
  v2 = objc_alloc_init(_TabGradientView);
  v3 = [(_TabGradientView *)v2 gradientLayer];
  [MFSafariTabsClassConstants configureTabContentGradientLayer:v3];

  return v2;
}

- (void)layoutHeaderViewAnimated:(BOOL)a3 closeButton:(BOOL)a4
{
  v5 = a3;
  v7 = a4;
  [(UIButton *)self->_closeButton alpha];
  if (v8 != v7)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10021D65C;
    v20[3] = &unk_10064D9D8;
    v20[4] = self;
    v21 = a4;
    v9 = objc_retainBlock(v20);
    v10 = v9;
    if (v5)
    {
      [UIView animateWithDuration:327680 delay:v9 options:0 animations:0.22 completion:0.0];
    }

    else
    {
      (v9[2])(v9);
    }
  }

  v11 = [(_MFTiltedTabItemView *)self composePlaceholderView];
  v12 = v11;
  if (v11)
  {
    [v11 layoutIfNeeded];
    [(UIView *)self->_closeButtonWrapperView frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v12 navigationBar];
    [v19 bounds];
    [v19 convertRect:self->_closeButtonWrapperView toView:?];
    [(UIView *)self->_closeButtonWrapperView setFrame:v14, v16, v18];
  }
}

- (CATransform3D)contentTransform
{
  v4 = [(UIView *)self->_contentClipperView layer];
  v6 = v4;
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  return result;
}

- (void)setContentTransform:(CATransform3D *)a3
{
  v3 = [(UIView *)self->_contentClipperView layer:*&a3->m11];
  [v3 setTransform:&v4];
}

- (void)setBorrowedContentScale:(double)a3
{
  if (self->_borrowedContentScale != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_borrowedContentScale = a3;
    borrowedContentView = self->_borrowedContentView;
    CGAffineTransformMakeScale(&v6, a3, a3);
    [(UIView *)borrowedContentView setTransform:&v6];
  }
}

- (void)setBorrowedContentView:(id)a3
{
  v5 = a3;
  borrowedContentView = self->_borrowedContentView;
  if (borrowedContentView != v5)
  {
    v22 = v5;
    v7 = [(UIView *)borrowedContentView superview];
    contentClipperView = self->_contentClipperView;

    if (v7 == contentClipperView)
    {
      [(UIView *)self->_borrowedContentView removeFromSuperview];
    }

    objc_storeStrong(&self->_borrowedContentView, a3);
    v5 = v22;
    if (v22)
    {
      [(UIView *)self->_contentClipperView insertSubview:v22 belowSubview:self->_contentShadowView];
      [(UIView *)v22 bounds];
      MidX = CGRectGetMidX(v24);
      [(UIView *)v22 bounds];
      MidY = CGRectGetMidY(v25);
      [(_MFTiltedTabItemView *)self contentClippingInsets];
      v12 = v11;
      [(_MFTiltedTabItemView *)self contentClippingInsets];
      [(UIView *)v22 setCenter:MidX - v12, MidY - v13];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = v22;
      if (isKindOfClass)
      {
        v15 = v22;
        if (MUISolariumFeatureEnabled())
        {
          v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:0 action:0];
          v17 = [(UIView *)v15 navigationBar];
          v18 = [v17 topItem];
          [v18 setLeftBarButtonItem:v16];
        }

        else
        {
          v16 = [UIImage systemImageNamed:MFImageGlyphXMark];
          v17 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, 13.0, 13.0}];
          v19 = +[UIColor mailTiltedTabCloseButtonTintColor];
          [v17 setTintColor:v19];

          [v17 setImage:v16];
          v18 = [[UIBarButtonItem alloc] initWithCustomView:v17];
          v20 = [(UIView *)v15 navigationBar];
          v21 = [v20 topItem];
          [v21 setLeftBarButtonItem:v18];
        }

        v5 = v22;
      }
    }
  }
}

- (void)layoutSubviews
{
  [(UIView *)self->_contentClipperView frame];
  if (self->_autoresizesContentView)
  {
    [(_MFTiltedTabItemView *)self bounds];
    v6 = v5;
    v8 = v7;
    [(_MFTiltedTabItemView *)self contentClippingInsets];
    v10 = v9;
    v3 = v6 - (v11 + v12);
    v4 = v8 - (v13 + v10);
  }

  [(UIView *)self->_contentClipperView setFrame:CGPointZero.x, CGPointZero.y, v3, v4];
  if ((sub_10020B844() & 1) == 0)
  {
    contentShadowView = self->_contentShadowView;
    v15 = self->_borrowedContentView == 0;

    [(_TabGradientView *)contentShadowView setHidden:v15];
  }
}

- (void)installMaskCutoutView:(id)a3
{
  v4 = a3;
  [(_MFTiltedTabItemView *)self setMaskCutoutView:?];
  [(UIView *)self->_contentClipperView frame];
  [v4 setFrame:?];
  [(_MFTiltedTabItemView *)self addSubview:v4];
}

- (void)uninstallMaskCutoutView
{
  [(_MFTiltedTabItemView *)self setMaskCutoutView:0];
  v3 = [(_MFTiltedTabItemView *)self maskCutoutView];
  [v3 removeFromSuperview];
}

- (ComposePlaceholderView)composePlaceholderView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_borrowedContentView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGRect)closeButtonHitRect
{
  x = self->_closeButtonHitRect.origin.x;
  y = self->_closeButtonHitRect.origin.y;
  width = self->_closeButtonHitRect.size.width;
  height = self->_closeButtonHitRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)contentClippingInsets
{
  top = self->_contentClippingInsets.top;
  left = self->_contentClippingInsets.left;
  bottom = self->_contentClippingInsets.bottom;
  right = self->_contentClippingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end