@interface RouteCreationIconButton
- (RouteCreationIconButton)initWithImage:(id)a3 title:(id)a4;
- (void)_updateAlphaState;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation RouteCreationIconButton

- (void)_updateAlphaState
{
  if ([(RouteCreationIconButton *)self isEnabled])
  {
    v3 = [(RouteCreationIconButton *)self isHighlighted];
    v4 = 0.800000012;
    if (!v3)
    {
      v4 = 1.0;
    }
  }

  else
  {
    v4 = 0.400000006;
  }

  [(RouteCreationIconButton *)self setAlpha:v4];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = RouteCreationIconButton;
  [(RouteCreationIconButton *)&v3 layoutSubviews];
  [(RouteCreationIconButton *)self _updateAlphaState];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RouteCreationIconButton;
  [(RouteCreationIconButton *)&v4 setHighlighted:a3];
  [(RouteCreationIconButton *)self _updateAlphaState];
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RouteCreationIconButton;
  [(RouteCreationIconButton *)&v4 setEnabled:a3];
  [(RouteCreationIconButton *)self _updateAlphaState];
}

- (RouteCreationIconButton)initWithImage:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v43.receiver = self;
  v43.super_class = RouteCreationIconButton;
  v9 = [(RouteCreationIconButton *)&v43 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v9)
  {
    v10 = +[UIColor secondarySystemFillColor];
    [(RouteCreationIconButton *)v9 setBackgroundColor:v10];

    [(RouteCreationIconButton *)v9 _setContinuousCornerRadius:12.0];
    [(RouteCreationIconButton *)v9 setAccessibilityLabel:v8];
    v11 = objc_opt_new();
    iconImageView = v9->_iconImageView;
    v9->_iconImageView = v11;

    [(UIImageView *)v9->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v9->_iconImageView setContentMode:1];
    objc_storeStrong(&v9->_image, a3);
    [(UIImageView *)v9->_iconImageView setImage:v7];
    v13 = [UIColor colorWithDynamicProvider:&stru_10164D3B0];
    [(UIImageView *)v9->_iconImageView setTintColor:v13];

    [(RouteCreationIconButton *)v9 addSubview:v9->_iconImageView];
    v14 = objc_opt_new();
    subtitleLabel = v9->_subtitleLabel;
    v9->_subtitleLabel = v14;

    [(UILabel *)v9->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [UIFont systemFontOfSize:13.0 weight:UIFontWeightMedium];
    [(UILabel *)v9->_subtitleLabel setFont:v16];

    v17 = +[UIColor systemBlueColor];
    [(UILabel *)v9->_subtitleLabel setTextColor:v17];

    [(UILabel *)v9->_subtitleLabel setTextAlignment:1];
    objc_storeStrong(&v9->_title, a4);
    [(UILabel *)v9->_subtitleLabel setText:v8];
    v18 = [(UIImageView *)v9->_iconImageView tintColor];
    [(UILabel *)v9->_subtitleLabel setTextColor:v18];

    [(RouteCreationIconButton *)v9 addSubview:v9->_subtitleLabel];
    v40 = [(UIImageView *)v9->_iconImageView leadingAnchor];
    v39 = [(RouteCreationIconButton *)v9 leadingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:6.0];
    v44[0] = v38;
    v37 = [(UIImageView *)v9->_iconImageView trailingAnchor];
    v36 = [(RouteCreationIconButton *)v9 trailingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:-6.0];
    v44[1] = v35;
    v34 = [(UIImageView *)v9->_iconImageView topAnchor];
    v33 = [(RouteCreationIconButton *)v9 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:6.0];
    v44[2] = v32;
    v31 = [(UIImageView *)v9->_iconImageView heightAnchor];
    v30 = [v31 constraintEqualToConstant:18.0];
    v44[3] = v30;
    v29 = [(UILabel *)v9->_subtitleLabel leadingAnchor];
    [(RouteCreationIconButton *)v9 leadingAnchor];
    v19 = v42 = v7;
    [v29 constraintEqualToAnchor:v19 constant:6.0];
    v20 = v41 = v8;
    v44[4] = v20;
    v21 = [(UILabel *)v9->_subtitleLabel trailingAnchor];
    v22 = [(RouteCreationIconButton *)v9 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-6.0];
    v44[5] = v23;
    v24 = [(UILabel *)v9->_subtitleLabel topAnchor];
    v25 = [(UIImageView *)v9->_iconImageView bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:4.0];
    v44[6] = v26;
    v27 = [NSArray arrayWithObjects:v44 count:7];
    [NSLayoutConstraint activateConstraints:v27];

    v8 = v41;
    v7 = v42;
  }

  return v9;
}

@end