@interface RouteCreationIconButton
- (RouteCreationIconButton)initWithImage:(id)image title:(id)title;
- (void)_updateAlphaState;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation RouteCreationIconButton

- (void)_updateAlphaState
{
  if ([(RouteCreationIconButton *)self isEnabled])
  {
    isHighlighted = [(RouteCreationIconButton *)self isHighlighted];
    v4 = 0.800000012;
    if (!isHighlighted)
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

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = RouteCreationIconButton;
  [(RouteCreationIconButton *)&v4 setHighlighted:highlighted];
  [(RouteCreationIconButton *)self _updateAlphaState];
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = RouteCreationIconButton;
  [(RouteCreationIconButton *)&v4 setEnabled:enabled];
  [(RouteCreationIconButton *)self _updateAlphaState];
}

- (RouteCreationIconButton)initWithImage:(id)image title:(id)title
{
  imageCopy = image;
  titleCopy = title;
  v43.receiver = self;
  v43.super_class = RouteCreationIconButton;
  v9 = [(RouteCreationIconButton *)&v43 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v9)
  {
    v10 = +[UIColor secondarySystemFillColor];
    [(RouteCreationIconButton *)v9 setBackgroundColor:v10];

    [(RouteCreationIconButton *)v9 _setContinuousCornerRadius:12.0];
    [(RouteCreationIconButton *)v9 setAccessibilityLabel:titleCopy];
    v11 = objc_opt_new();
    iconImageView = v9->_iconImageView;
    v9->_iconImageView = v11;

    [(UIImageView *)v9->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v9->_iconImageView setContentMode:1];
    objc_storeStrong(&v9->_image, image);
    [(UIImageView *)v9->_iconImageView setImage:imageCopy];
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
    objc_storeStrong(&v9->_title, title);
    [(UILabel *)v9->_subtitleLabel setText:titleCopy];
    tintColor = [(UIImageView *)v9->_iconImageView tintColor];
    [(UILabel *)v9->_subtitleLabel setTextColor:tintColor];

    [(RouteCreationIconButton *)v9 addSubview:v9->_subtitleLabel];
    leadingAnchor = [(UIImageView *)v9->_iconImageView leadingAnchor];
    leadingAnchor2 = [(RouteCreationIconButton *)v9 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:6.0];
    v44[0] = v38;
    trailingAnchor = [(UIImageView *)v9->_iconImageView trailingAnchor];
    trailingAnchor2 = [(RouteCreationIconButton *)v9 trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-6.0];
    v44[1] = v35;
    topAnchor = [(UIImageView *)v9->_iconImageView topAnchor];
    topAnchor2 = [(RouteCreationIconButton *)v9 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:6.0];
    v44[2] = v32;
    heightAnchor = [(UIImageView *)v9->_iconImageView heightAnchor];
    v30 = [heightAnchor constraintEqualToConstant:18.0];
    v44[3] = v30;
    leadingAnchor3 = [(UILabel *)v9->_subtitleLabel leadingAnchor];
    [(RouteCreationIconButton *)v9 leadingAnchor];
    v19 = v42 = imageCopy;
    [leadingAnchor3 constraintEqualToAnchor:v19 constant:6.0];
    v20 = v41 = titleCopy;
    v44[4] = v20;
    trailingAnchor3 = [(UILabel *)v9->_subtitleLabel trailingAnchor];
    trailingAnchor4 = [(RouteCreationIconButton *)v9 trailingAnchor];
    v23 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-6.0];
    v44[5] = v23;
    topAnchor3 = [(UILabel *)v9->_subtitleLabel topAnchor];
    bottomAnchor = [(UIImageView *)v9->_iconImageView bottomAnchor];
    v26 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
    v44[6] = v26;
    v27 = [NSArray arrayWithObjects:v44 count:7];
    [NSLayoutConstraint activateConstraints:v27];

    titleCopy = v41;
    imageCopy = v42;
  }

  return v9;
}

@end