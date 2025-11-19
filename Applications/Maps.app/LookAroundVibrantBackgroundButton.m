@interface LookAroundVibrantBackgroundButton
+ (id)customButtonWithImage:(id)a3 title:(id)a4 target:(id)a5 action:(SEL)a6;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (LookAroundVibrantBackgroundButton)init;
- (LookAroundVibrantBackgroundButton)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3 title:(id)a4;
- (void)updateTheme;
@end

@implementation LookAroundVibrantBackgroundButton

- (void)updateTheme
{
  v3 = [(LookAroundVibrantBackgroundButton *)self tintAdjustmentMode];
  v4 = [(LookAroundVibrantBackgroundButton *)self mk_theme];
  v5 = v4;
  if (v3 == 2)
  {
    [v4 disabledActionRowTextColor];
  }

  else
  {
    [v4 tintColor];
  }
  v11 = ;

  [(LookAroundVibrantBackgroundButton *)self setTitleColor:v11 forState:0];
  v6 = [(LookAroundVibrantBackgroundButton *)self isHighlighted];
  v7 = [(LookAroundVibrantBackgroundButton *)self mk_theme];
  v8 = v7;
  if (v6)
  {
    [v7 buttonHighlightedColor];
  }

  else
  {
    [v7 buttonNormalColor];
  }
  v9 = ;
  v10 = [(MKVibrantView *)self->_vibrantView contentView];
  [v10 setBackgroundColor:v9];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = LookAroundVibrantBackgroundButton;
  [(LookAroundVibrantBackgroundButton *)&v3 layoutSubviews];
  [(LookAroundVibrantBackgroundButton *)self sendSubviewToBack:self->_vibrantView];
}

- (void)setImage:(id)a3 title:(id)a4
{
  v6 = a4;
  [(LookAroundVibrantBackgroundButton *)self setImage:a3 forState:0];
  [(LookAroundVibrantBackgroundButton *)self setTitle:v6 forState:0];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = LookAroundVibrantBackgroundButton;
  [(LookAroundVibrantBackgroundButton *)&v4 setHighlighted:a3];
  [(LookAroundVibrantBackgroundButton *)self updateTheme];
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v22 = [v21 userInterfaceLayoutDirection];

    v23 = -(v20 * 0.5 + 17.0);
    v24 = -v19;
    if (v22 != 1)
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

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v21 = [v20 userInterfaceLayoutDirection];

    v22 = -(v19 + width * -0.5);
    v23 = -v18;
    if (v21 != 1)
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

- (LookAroundVibrantBackgroundButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = LookAroundVibrantBackgroundButton;
  v3 = [(LookAroundVibrantBackgroundButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v4 = [(LookAroundVibrantBackgroundButton *)self titleLabel];
  [v4 setNumberOfLines:2];

  v5 = [(LookAroundVibrantBackgroundButton *)self titleLabel];
  [v5 setTextAlignment:4];

  v6 = [(LookAroundVibrantBackgroundButton *)self titleLabel];
  [DynamicTypeWizard autorefreshLabel:v6 withFontProvider:&stru_10163BEC0];

  v7 = objc_opt_new();
  [(LookAroundVibrantBackgroundButton *)self setBackgroundImage:v7 forState:0];

  v8 = [[MKVibrantView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  vibrantView = self->_vibrantView;
  self->_vibrantView = v8;

  [(MKVibrantView *)self->_vibrantView _setCornerRadius:8.0];
  [(MKVibrantView *)self->_vibrantView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKVibrantView *)self->_vibrantView setUserInteractionEnabled:0];
  [(LookAroundVibrantBackgroundButton *)self addSubview:self->_vibrantView];
  v22 = [(MKVibrantView *)self->_vibrantView topAnchor];
  v21 = [(LookAroundVibrantBackgroundButton *)self topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v23[0] = v20;
  v19 = [(MKVibrantView *)self->_vibrantView bottomAnchor];
  v10 = [(LookAroundVibrantBackgroundButton *)self bottomAnchor];
  v11 = [v19 constraintEqualToAnchor:v10];
  v23[1] = v11;
  v12 = [(MKVibrantView *)self->_vibrantView leadingAnchor];
  v13 = [(LookAroundVibrantBackgroundButton *)self leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v23[2] = v14;
  v15 = [(MKVibrantView *)self->_vibrantView trailingAnchor];
  v16 = [(LookAroundVibrantBackgroundButton *)self trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v23[3] = v17;
  v18 = [NSArray arrayWithObjects:v23 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  [(LookAroundVibrantBackgroundButton *)self updateTheme];
}

+ (id)customButtonWithImage:(id)a3 title:(id)a4 target:(id)a5 action:(SEL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 buttonWithType:0];
  v14 = v13;
  if (v10)
  {
    [v13 setImage:v10 forState:0];
  }

  if (v11)
  {
    [v14 setTitle:v11 forState:0];
  }

  [v14 addTarget:v12 action:a6 forControlEvents:64];

  return v14;
}

@end