@interface NavShareETAFooterView
- (NavShareETAFooterView)init;
- (NavShareETAFooterView)initWithTextColor:(id)a3;
- (void)setFooterText:(id)a3;
@end

@implementation NavShareETAFooterView

- (void)setFooterText:(id)a3
{
  v4 = a3;
  v5 = self->_footerText;
  v6 = v4;
  if (v6 | v5)
  {
    v10 = v6;
    v7 = [v5 isEqual:v6];

    v6 = v10;
    if ((v7 & 1) == 0)
    {
      v8 = [v10 copy];
      footerText = self->_footerText;
      self->_footerText = v8;

      [(UILabel *)self->_textLabel setText:self->_footerText];
      v6 = v10;
    }
  }
}

- (NavShareETAFooterView)initWithTextColor:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = NavShareETAFooterView;
  v5 = [(NavShareETAFooterView *)&v32 initWithReuseIdentifier:0];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(NavShareETAFooterView *)v5 setAccessibilityIdentifier:v7];

    v8 = [(NavShareETAFooterView *)v5 contentView];
    [v8 setAccessibilityIdentifier:@"NavShareETAFooterContent"];

    v9 = objc_opt_new();
    textLabel = v5->_textLabel;
    v5->_textLabel = v9;

    [(UILabel *)v5->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_textLabel setNumberOfLines:0];
    [(UILabel *)v5->_textLabel setTextAlignment:1];
    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    [(UILabel *)v5->_textLabel setFont:v11];

    [(UILabel *)v5->_textLabel setTextColor:v4];
    [(UILabel *)v5->_textLabel setAccessibilityIdentifier:@"TextLabel"];
    v12 = [(NavShareETAFooterView *)v5 contentView];
    [v12 addSubview:v5->_textLabel];

    v29 = [(UILabel *)v5->_textLabel leadingAnchor];
    v30 = [(NavShareETAFooterView *)v5 layoutMarginsGuide];
    v28 = [v30 leadingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v33[0] = v27;
    v25 = [(UILabel *)v5->_textLabel trailingAnchor];
    v26 = [(NavShareETAFooterView *)v5 layoutMarginsGuide];
    v24 = [v26 trailingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v33[1] = v23;
    v13 = [(UILabel *)v5->_textLabel topAnchor];
    [(NavShareETAFooterView *)v5 contentView];
    v14 = v31 = v4;
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15 constant:16.0];
    v33[2] = v16;
    v17 = [(UILabel *)v5->_textLabel bottomAnchor];
    v18 = [(NavShareETAFooterView *)v5 contentView];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:-10.0];
    v33[3] = v20;
    v21 = [NSArray arrayWithObjects:v33 count:4];
    [NSLayoutConstraint activateConstraints:v21];

    v4 = v31;
  }

  return v5;
}

- (NavShareETAFooterView)init
{
  v3 = +[UIColor tertiaryLabelColor];
  v4 = [(NavShareETAFooterView *)self initWithTextColor:v3];

  return v4;
}

@end