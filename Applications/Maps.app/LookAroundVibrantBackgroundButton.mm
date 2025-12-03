@interface LookAroundVibrantBackgroundButton
+ (id)customButtonWithImage:(id)image title:(id)title target:(id)target action:(SEL)action;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (LookAroundVibrantBackgroundButton)init;
- (LookAroundVibrantBackgroundButton)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image title:(id)title;
- (void)updateTheme;
@end

@implementation LookAroundVibrantBackgroundButton

- (void)updateTheme
{
  tintAdjustmentMode = [(LookAroundVibrantBackgroundButton *)self tintAdjustmentMode];
  mk_theme = [(LookAroundVibrantBackgroundButton *)self mk_theme];
  v5 = mk_theme;
  if (tintAdjustmentMode == 2)
  {
    [mk_theme disabledActionRowTextColor];
  }

  else
  {
    [mk_theme tintColor];
  }
  v11 = ;

  [(LookAroundVibrantBackgroundButton *)self setTitleColor:v11 forState:0];
  isHighlighted = [(LookAroundVibrantBackgroundButton *)self isHighlighted];
  mk_theme2 = [(LookAroundVibrantBackgroundButton *)self mk_theme];
  v8 = mk_theme2;
  if (isHighlighted)
  {
    [mk_theme2 buttonHighlightedColor];
  }

  else
  {
    [mk_theme2 buttonNormalColor];
  }
  v9 = ;
  contentView = [(MKVibrantView *)self->_vibrantView contentView];
  [contentView setBackgroundColor:v9];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = LookAroundVibrantBackgroundButton;
  [(LookAroundVibrantBackgroundButton *)&v3 layoutSubviews];
  [(LookAroundVibrantBackgroundButton *)self sendSubviewToBack:self->_vibrantView];
}

- (void)setImage:(id)image title:(id)title
{
  titleCopy = title;
  [(LookAroundVibrantBackgroundButton *)self setImage:image forState:0];
  [(LookAroundVibrantBackgroundButton *)self setTitle:titleCopy forState:0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = LookAroundVibrantBackgroundButton;
  [(LookAroundVibrantBackgroundButton *)&v4 setHighlighted:highlighted];
  [(LookAroundVibrantBackgroundButton *)self updateTheme];
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v31.receiver = self;
  v31.super_class = LookAroundVibrantBackgroundButton;
  [(LookAroundVibrantBackgroundButton *)&v31 titleRectForContentRect:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (!CGRectIsEmpty(v32))
  {
    v30.receiver = self;
    v30.super_class = LookAroundVibrantBackgroundButton;
    [(LookAroundVibrantBackgroundButton *)&v30 imageRectForContentRect:x, y, width, height];
    v17 = width + -34.0 - v16;
    v18 = fmin(v13, v17);
    v19 = fmax(v13 - v17, 0.0);
    v20 = v18 - (width + v16);
    v21 = +[UIApplication sharedApplication];
    userInterfaceLayoutDirection = [v21 userInterfaceLayoutDirection];

    v23 = -(v20 * 0.5 + 17.0);
    v24 = -v19;
    if (userInterfaceLayoutDirection != 1)
    {
      v24 = v19;
      v23 = v20 * 0.5 + 17.0;
    }

    v25 = v9 + v24 * 0.5;
    if (v19 == 0.0)
    {
      v25 = v9;
    }

    else
    {
      v13 = v18;
    }

    v9 = v25 + v23;
    v15 = height;
    v11 = y;
  }

  v26 = v9;
  v27 = v11;
  v28 = v13;
  v29 = v15;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v30.receiver = self;
  v30.super_class = LookAroundVibrantBackgroundButton;
  [(LookAroundVibrantBackgroundButton *)&v30 imageRectForContentRect:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  if (!CGRectIsEmpty(v31))
  {
    v29.receiver = self;
    v29.super_class = LookAroundVibrantBackgroundButton;
    [(LookAroundVibrantBackgroundButton *)&v29 titleRectForContentRect:x, y, width, height];
    v16 = width + -34.0 - v13;
    v18 = fmax(v17 - v16, 0.0);
    v19 = fmin(v17, v16) * -0.5 + 34.0;
    v20 = +[UIApplication sharedApplication];
    userInterfaceLayoutDirection = [v20 userInterfaceLayoutDirection];

    v22 = -(v19 + width * -0.5);
    v23 = -v18;
    if (userInterfaceLayoutDirection != 1)
    {
      v23 = v18;
      v22 = v19 + width * -0.5;
    }

    v24 = v9 + v23 * 0.5;
    if (v18 == 0.0)
    {
      v24 = v9;
    }

    v9 = v24 - v22;
  }

  v25 = v9;
  v26 = v11;
  v27 = v13;
  v28 = v15;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (LookAroundVibrantBackgroundButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = LookAroundVibrantBackgroundButton;
  v3 = [(LookAroundVibrantBackgroundButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(LookAroundVibrantBackgroundButton *)v3 _commonInit];
  }

  return v4;
}

- (LookAroundVibrantBackgroundButton)init
{
  v5.receiver = self;
  v5.super_class = LookAroundVibrantBackgroundButton;
  v2 = [(LookAroundVibrantBackgroundButton *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(LookAroundVibrantBackgroundButton *)v2 _commonInit];
  }

  return v3;
}

- (void)_commonInit
{
  [(LookAroundVibrantBackgroundButton *)self setAdjustsImageWhenHighlighted:0];
  [(LookAroundVibrantBackgroundButton *)self _setCornerRadius:8.0];
  [(LookAroundVibrantBackgroundButton *)self setContentVerticalAlignment:0];
  v3 = [UIImageSymbolConfiguration configurationWithScale:3];
  [(LookAroundVibrantBackgroundButton *)self setPreferredSymbolConfiguration:v3 forImageInState:0];

  titleLabel = [(LookAroundVibrantBackgroundButton *)self titleLabel];
  [titleLabel setNumberOfLines:2];

  titleLabel2 = [(LookAroundVibrantBackgroundButton *)self titleLabel];
  [titleLabel2 setTextAlignment:4];

  titleLabel3 = [(LookAroundVibrantBackgroundButton *)self titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel3 withFontProvider:&stru_10163BEC0];

  v7 = objc_opt_new();
  [(LookAroundVibrantBackgroundButton *)self setBackgroundImage:v7 forState:0];

  v8 = [[MKVibrantView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  vibrantView = self->_vibrantView;
  self->_vibrantView = v8;

  [(MKVibrantView *)self->_vibrantView _setCornerRadius:8.0];
  [(MKVibrantView *)self->_vibrantView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKVibrantView *)self->_vibrantView setUserInteractionEnabled:0];
  [(LookAroundVibrantBackgroundButton *)self addSubview:self->_vibrantView];
  topAnchor = [(MKVibrantView *)self->_vibrantView topAnchor];
  topAnchor2 = [(LookAroundVibrantBackgroundButton *)self topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[0] = v20;
  bottomAnchor = [(MKVibrantView *)self->_vibrantView bottomAnchor];
  bottomAnchor2 = [(LookAroundVibrantBackgroundButton *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[1] = v11;
  leadingAnchor = [(MKVibrantView *)self->_vibrantView leadingAnchor];
  leadingAnchor2 = [(LookAroundVibrantBackgroundButton *)self leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[2] = v14;
  trailingAnchor = [(MKVibrantView *)self->_vibrantView trailingAnchor];
  trailingAnchor2 = [(LookAroundVibrantBackgroundButton *)self trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[3] = v17;
  v18 = [NSArray arrayWithObjects:v23 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  [(LookAroundVibrantBackgroundButton *)self updateTheme];
}

+ (id)customButtonWithImage:(id)image title:(id)title target:(id)target action:(SEL)action
{
  imageCopy = image;
  titleCopy = title;
  targetCopy = target;
  v13 = [self buttonWithType:0];
  v14 = v13;
  if (imageCopy)
  {
    [v13 setImage:imageCopy forState:0];
  }

  if (titleCopy)
  {
    [v14 setTitle:titleCopy forState:0];
  }

  [v14 addTarget:targetCopy action:action forControlEvents:64];

  return v14;
}

@end