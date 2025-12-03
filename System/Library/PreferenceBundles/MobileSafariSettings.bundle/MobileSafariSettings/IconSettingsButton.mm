@interface IconSettingsButton
- (IconSettingsButton)initWithButtonConfiguration:(id)configuration;
- (void)stateDidChange;
@end

@implementation IconSettingsButton

- (IconSettingsButton)initWithButtonConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v45.receiver = self;
  v45.super_class = IconSettingsButton;
  v5 = [(IconSettingsButton *)&v45 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    preferenceValue = [configurationCopy preferenceValue];
    preferenceValue = v5->_preferenceValue;
    v5->_preferenceValue = preferenceValue;

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    objc_opt_class();
    v43 = v8;
    if (objc_opt_isKindOfClass())
    {
      imageName = [configurationCopy imageName];
      v11 = [UIImageView alloc];
      v12 = [UIImage imageNamed:imageName inBundle:v8];
      v13 = [v11 initWithImage:v12];
    }

    else
    {
      v13 = 0;
    }

    LODWORD(v9) = 1148846080;
    [v13 setContentHuggingPriority:0 forAxis:v9];
    LODWORD(v14) = 1148846080;
    [v13 setContentHuggingPriority:1 forAxis:v14];
    v15 = objc_alloc_init(UILabel);
    v42 = v13;
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v15;

    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setTextAlignment:1];
    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v5->_titleLabel setFont:v17];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    title = [configurationCopy title];
    [(UILabel *)v5->_titleLabel setText:title];

    LODWORD(v19) = 1148846080;
    [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:0 forAxis:v19];
    v20 = objc_alloc_init(UIImageView);
    checkImageView = v5->_checkImageView;
    v5->_checkImageView = v20;

    LODWORD(v22) = 1148846080;
    [(UIImageView *)v5->_checkImageView setContentHuggingPriority:1 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIImageView *)v5->_checkImageView setContentHuggingPriority:0 forAxis:v23];
    v24 = [UIStackView alloc];
    v47[0] = v13;
    v47[1] = v5->_titleLabel;
    v47[2] = v5->_checkImageView;
    v25 = [NSArray arrayWithObjects:v47 count:3];
    v26 = [v24 initWithArrangedSubviews:v25];

    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v26 setAxis:1];
    [v26 setSpacing:8.0];
    [v26 setAlignment:3];
    [v26 setUserInteractionEnabled:0];
    [(IconSettingsButton *)v5 addSubview:v26];
    widthAnchor = [v26 widthAnchor];
    widthAnchor2 = [(IconSettingsButton *)v5 widthAnchor];
    v39 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v46[0] = v39;
    heightAnchor = [v26 heightAnchor];
    heightAnchor2 = [(IconSettingsButton *)v5 heightAnchor];
    v27 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v46[1] = v27;
    centerXAnchor = [v26 centerXAnchor];
    centerXAnchor2 = [(IconSettingsButton *)v5 centerXAnchor];
    [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v30 = v44 = configurationCopy;
    v46[2] = v30;
    centerYAnchor = [v26 centerYAnchor];
    centerYAnchor2 = [(IconSettingsButton *)v5 centerYAnchor];
    v33 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v46[3] = v33;
    v34 = [NSArray arrayWithObjects:v46 count:4];
    [NSLayoutConstraint activateConstraints:v34];

    configurationCopy = v44;
    v35 = v5;
  }

  return v5;
}

- (void)stateDidChange
{
  v9 = [UIImageSymbolConfiguration configurationWithScale:3];
  if ([(IconSettingsButton *)self isSelected])
  {
    if ([(IconSettingsButton *)self isEnabled])
    {
      [(IconSettingsButton *)self setTintColor:0];
    }

    else
    {
      v6 = +[UIColor secondaryLabelColor];
      [(IconSettingsButton *)self setTintColor:v6];
    }

    v7 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
    [(UIImageView *)self->_checkImageView setImage:v7];

    [(UIImageView *)self->_checkImageView setTintColor:0];
  }

  else
  {
    v3 = +[UIColor systemGrayColor];
    [(IconSettingsButton *)self setTintColor:v3];

    v4 = [UIImage systemImageNamed:@"circle"];
    [(UIImageView *)self->_checkImageView setImage:v4];

    v5 = +[UIColor systemFillColor];
    [(UIImageView *)self->_checkImageView setTintColor:v5];
  }

  [(UIImageView *)self->_checkImageView setPreferredSymbolConfiguration:v9];
  if (([(IconSettingsButton *)self isEnabled]& 1) != 0)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v8 = ;
  [(UILabel *)self->_titleLabel setTextColor:v8];
}

@end