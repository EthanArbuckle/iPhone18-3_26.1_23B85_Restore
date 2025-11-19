@interface StatusBarBackgroundView
- (StatusBarBackgroundView)initWithSafeAreaTopLayoutAnchor:(id)a3;
- (double)_blurViewBottomPadding;
- (id)_blurView;
- (id)maskImage;
- (void)_addBlurView:(id)a3;
- (void)_removeBlurView;
- (void)_updateContent;
- (void)layoutSubviews;
- (void)setAdditionalColor:(id)a3;
- (void)setStyle:(id)a3;
- (void)updateTheme;
@end

@implementation StatusBarBackgroundView

- (id)_blurView
{
  v3 = [(StatusBarBackgroundView *)self style];
  v4 = [v3 type];

  if (v4 == 2)
  {
    v5 = [MUBlurView alloc];
    v6 = [(StatusBarBackgroundView *)self style];
    v7 = [v5 initWithBlurEffectStyle:{objc_msgSend(v6, "blurStyle")}];
  }

  else
  {
    v8 = [(StatusBarBackgroundView *)self style];
    v9 = [v8 type];

    v10 = [MUBlurView alloc];
    v6 = [(StatusBarBackgroundView *)self style];
    [v6 blurRadius];
    v12 = v11;
    if (v9 == 4)
    {
      v13 = [(StatusBarBackgroundView *)self maskImage];
      v14 = [v10 initWithVariableBlurWithRadius:v13 maskImage:v12];

      goto LABEL_7;
    }

    v7 = [v10 initWithGaussianBlurWithRadius:v11];
  }

  v14 = v7;
LABEL_7:

  v15 = [(StatusBarBackgroundView *)self additionalColor];
  [v14 setOverlayColor:v15];

  v16 = [(StatusBarBackgroundView *)self style];
  v17 = [v16 defaultColorProvider];
  v18 = [(StatusBarBackgroundView *)self theme];
  v19 = (v17)[2](v17, v18);
  [v14 setNonBlurredColor:v19];

  v20 = [(StatusBarBackgroundView *)self style];
  v21 = [v20 groupName];
  [v14 setBlurGroupName:v21];

  v22 = [(StatusBarBackgroundView *)self style];
  if ([v22 disableBlur])
  {
    v23 = 2;
  }

  else
  {
    v23 = 0;
  }

  [v14 setStyle:v23];

  return v14;
}

- (double)_blurViewBottomPadding
{
  v3 = sub_10000FA08(self);
  [(StatusBarBackgroundView *)self bounds];
  Height = CGRectGetHeight(v9);
  [(StatusBarBackgroundView *)self safeAreaInsets];
  if (Height <= 0.0)
  {
    return 0.0;
  }

  v6 = v5;
  v7 = Height <= v5;
  result = 8.0;
  if (v6 != 0.0 && (v3 != 1 || !v7))
  {
    return 0.0;
  }

  return result;
}

- (void)updateTheme
{
  v3.receiver = self;
  v3.super_class = StatusBarBackgroundView;
  [(MapsThemeView *)&v3 updateTheme];
  [(StatusBarBackgroundView *)self _updateContent];
}

- (void)_updateContent
{
  if (sub_10000FA08(self) == 1 && _UISolariumEnabled() && GEOConfigGetBOOL())
  {

    [(StatusBarBackgroundView *)self setHidden:1];
  }

  else
  {
    v3 = [(StatusBarBackgroundView *)self style];
    v4 = [v3 type];

    if ((v4 - 2) >= 3)
    {
      if (v4 == 1)
      {
        [(StatusBarBackgroundView *)self _removeBlurView];
        v10 = [(StatusBarBackgroundView *)self style];
        v9 = [v10 color];
        [(StatusBarBackgroundView *)self setBackgroundColor:v9];
      }

      else
      {
        if (v4)
        {
          return;
        }

        [(StatusBarBackgroundView *)self _removeBlurView];
        v10 = +[UIColor clearColor];
        [(StatusBarBackgroundView *)self setBackgroundColor:v10];
      }
    }

    else
    {
      [(StatusBarBackgroundView *)self _removeBlurView];
      v5 = +[UIColor clearColor];
      [(StatusBarBackgroundView *)self setBackgroundColor:v5];

      v6 = [(StatusBarBackgroundView *)self _blurView];
      blurView = self->_blurView;
      self->_blurView = v6;

      v8 = self->_blurView;

      [(StatusBarBackgroundView *)self _addBlurView:v8];
    }
  }
}

- (void)_removeBlurView
{
  [(MUBlurView *)self->_blurView removeFromSuperview];
  blurView = self->_blurView;
  self->_blurView = 0;

  blurViewBottomConstraint = self->_blurViewBottomConstraint;
  self->_blurViewBottomConstraint = 0;
}

- (id)maskImage
{
  v3 = objc_alloc_init(UIGraphicsImageRendererFormat);
  [v3 setScale:1.0];
  if (self->_statusBarBackgroundViewAlphaChannelEnabled)
  {
    v4 = 0x7FFFLL;
  }

  else
  {
    v4 = 2;
  }

  [v3 setPreferredRange:v4];
  v5 = [[UIGraphicsImageRenderer alloc] initWithBounds:v3 format:{0.0, 0.0, 100.0, 100.0}];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014804;
  v8[3] = &unk_101622D00;
  v8[4] = 0;
  v8[5] = 0;
  v9 = vdupq_n_s64(0x4059000000000000uLL);
  v6 = [v5 imageWithActions:v8];

  return v6;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = StatusBarBackgroundView;
  [(StatusBarBackgroundView *)&v3 layoutSubviews];
  [(StatusBarBackgroundView *)self _blurViewBottomPadding];
  [(NSLayoutConstraint *)self->_blurViewBottomConstraint setConstant:?];
}

- (void)_addBlurView:(id)a3
{
  v4 = a3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(StatusBarBackgroundView *)self insertSubview:v4 atIndex:0];
  v5 = [v4 bottomAnchor];
  v6 = [(StatusBarBackgroundView *)self bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  blurViewBottomConstraint = self->_blurViewBottomConstraint;
  self->_blurViewBottomConstraint = v7;

  v19 = [v4 leadingAnchor];
  v18 = [(StatusBarBackgroundView *)self leadingAnchor];
  v9 = [v19 constraintEqualToAnchor:v18];
  v21[0] = v9;
  v10 = [v4 trailingAnchor];
  v11 = [(StatusBarBackgroundView *)self trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v21[1] = v12;
  v13 = [v4 topAnchor];

  v14 = [(StatusBarBackgroundView *)self topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v16 = self->_blurViewBottomConstraint;
  v21[2] = v15;
  v21[3] = v16;
  v17 = [NSArray arrayWithObjects:v21 count:4];
  [NSLayoutConstraint activateConstraints:v17];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1005B529C;
  v20[3] = &unk_101661B18;
  v20[4] = self;
  [UIView performWithoutAnimation:v20];
}

- (void)setAdditionalColor:(id)a3
{
  v5 = a3;
  v6 = self->_additionalColor;
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_additionalColor, a3);
      [(MUBlurView *)self->_blurView setOverlayColor:v9];
      v7 = v9;
    }
  }
}

- (void)setStyle:(id)a3
{
  v5 = a3;
  v6 = self->_style;
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_style, a3);
      [(StatusBarBackgroundView *)self _updateContent];
      v7 = v9;
    }
  }
}

- (StatusBarBackgroundView)initWithSafeAreaTopLayoutAnchor:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = StatusBarBackgroundView;
  v6 = [(StatusBarBackgroundView *)&v13 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_safeAreaTopLayoutAnchor, a3);
    v8 = [StatusBarBackgroundViewStyle alloc];
    v9 = +[UIColor clearColor];
    v10 = [(StatusBarBackgroundViewStyle *)v8 initWithColor:v9];
    style = v7->_style;
    v7->_style = v10;

    v7->_statusBarBackgroundViewAlphaChannelEnabled = GEOConfigGetBOOL();
  }

  return v7;
}

@end