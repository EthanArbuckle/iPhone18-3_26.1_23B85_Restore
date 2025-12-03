@interface StatusBarBackgroundView
- (StatusBarBackgroundView)initWithSafeAreaTopLayoutAnchor:(id)anchor;
- (double)_blurViewBottomPadding;
- (id)_blurView;
- (id)maskImage;
- (void)_addBlurView:(id)view;
- (void)_removeBlurView;
- (void)_updateContent;
- (void)layoutSubviews;
- (void)setAdditionalColor:(id)color;
- (void)setStyle:(id)style;
- (void)updateTheme;
@end

@implementation StatusBarBackgroundView

- (id)_blurView
{
  style = [(StatusBarBackgroundView *)self style];
  type = [style type];

  if (type == 2)
  {
    v5 = [MUBlurView alloc];
    style2 = [(StatusBarBackgroundView *)self style];
    v7 = [v5 initWithBlurEffectStyle:{objc_msgSend(style2, "blurStyle")}];
  }

  else
  {
    style3 = [(StatusBarBackgroundView *)self style];
    type2 = [style3 type];

    v10 = [MUBlurView alloc];
    style2 = [(StatusBarBackgroundView *)self style];
    [style2 blurRadius];
    v12 = v11;
    if (type2 == 4)
    {
      maskImage = [(StatusBarBackgroundView *)self maskImage];
      v14 = [v10 initWithVariableBlurWithRadius:maskImage maskImage:v12];

      goto LABEL_7;
    }

    v7 = [v10 initWithGaussianBlurWithRadius:v11];
  }

  v14 = v7;
LABEL_7:

  additionalColor = [(StatusBarBackgroundView *)self additionalColor];
  [v14 setOverlayColor:additionalColor];

  style4 = [(StatusBarBackgroundView *)self style];
  defaultColorProvider = [style4 defaultColorProvider];
  theme = [(StatusBarBackgroundView *)self theme];
  v19 = (defaultColorProvider)[2](defaultColorProvider, theme);
  [v14 setNonBlurredColor:v19];

  style5 = [(StatusBarBackgroundView *)self style];
  groupName = [style5 groupName];
  [v14 setBlurGroupName:groupName];

  style6 = [(StatusBarBackgroundView *)self style];
  if ([style6 disableBlur])
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
    style = [(StatusBarBackgroundView *)self style];
    type = [style type];

    if ((type - 2) >= 3)
    {
      if (type == 1)
      {
        [(StatusBarBackgroundView *)self _removeBlurView];
        style2 = [(StatusBarBackgroundView *)self style];
        color = [style2 color];
        [(StatusBarBackgroundView *)self setBackgroundColor:color];
      }

      else
      {
        if (type)
        {
          return;
        }

        [(StatusBarBackgroundView *)self _removeBlurView];
        style2 = +[UIColor clearColor];
        [(StatusBarBackgroundView *)self setBackgroundColor:style2];
      }
    }

    else
    {
      [(StatusBarBackgroundView *)self _removeBlurView];
      v5 = +[UIColor clearColor];
      [(StatusBarBackgroundView *)self setBackgroundColor:v5];

      _blurView = [(StatusBarBackgroundView *)self _blurView];
      blurView = self->_blurView;
      self->_blurView = _blurView;

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

- (void)_addBlurView:(id)view
{
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [(StatusBarBackgroundView *)self insertSubview:viewCopy atIndex:0];
  bottomAnchor = [viewCopy bottomAnchor];
  bottomAnchor2 = [(StatusBarBackgroundView *)self bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  blurViewBottomConstraint = self->_blurViewBottomConstraint;
  self->_blurViewBottomConstraint = v7;

  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [(StatusBarBackgroundView *)self leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v9;
  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [(StatusBarBackgroundView *)self trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v12;
  topAnchor = [viewCopy topAnchor];

  topAnchor2 = [(StatusBarBackgroundView *)self topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
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

- (void)setAdditionalColor:(id)color
{
  colorCopy = color;
  v6 = self->_additionalColor;
  v7 = colorCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_additionalColor, color);
      [(MUBlurView *)self->_blurView setOverlayColor:v9];
      v7 = v9;
    }
  }
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  v6 = self->_style;
  v7 = styleCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_style, style);
      [(StatusBarBackgroundView *)self _updateContent];
      v7 = v9;
    }
  }
}

- (StatusBarBackgroundView)initWithSafeAreaTopLayoutAnchor:(id)anchor
{
  anchorCopy = anchor;
  v13.receiver = self;
  v13.super_class = StatusBarBackgroundView;
  v6 = [(StatusBarBackgroundView *)&v13 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_safeAreaTopLayoutAnchor, anchor);
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