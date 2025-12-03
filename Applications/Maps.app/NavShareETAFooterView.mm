@interface NavShareETAFooterView
- (NavShareETAFooterView)init;
- (NavShareETAFooterView)initWithTextColor:(id)color;
- (void)setFooterText:(id)text;
@end

@implementation NavShareETAFooterView

- (void)setFooterText:(id)text
{
  textCopy = text;
  v5 = self->_footerText;
  v6 = textCopy;
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

- (NavShareETAFooterView)initWithTextColor:(id)color
{
  colorCopy = color;
  v32.receiver = self;
  v32.super_class = NavShareETAFooterView;
  v5 = [(NavShareETAFooterView *)&v32 initWithReuseIdentifier:0];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(NavShareETAFooterView *)v5 setAccessibilityIdentifier:v7];

    contentView = [(NavShareETAFooterView *)v5 contentView];
    [contentView setAccessibilityIdentifier:@"NavShareETAFooterContent"];

    v9 = objc_opt_new();
    textLabel = v5->_textLabel;
    v5->_textLabel = v9;

    [(UILabel *)v5->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_textLabel setNumberOfLines:0];
    [(UILabel *)v5->_textLabel setTextAlignment:1];
    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    [(UILabel *)v5->_textLabel setFont:v11];

    [(UILabel *)v5->_textLabel setTextColor:colorCopy];
    [(UILabel *)v5->_textLabel setAccessibilityIdentifier:@"TextLabel"];
    contentView2 = [(NavShareETAFooterView *)v5 contentView];
    [contentView2 addSubview:v5->_textLabel];

    leadingAnchor = [(UILabel *)v5->_textLabel leadingAnchor];
    layoutMarginsGuide = [(NavShareETAFooterView *)v5 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[0] = v27;
    trailingAnchor = [(UILabel *)v5->_textLabel trailingAnchor];
    layoutMarginsGuide2 = [(NavShareETAFooterView *)v5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v33[1] = v23;
    topAnchor = [(UILabel *)v5->_textLabel topAnchor];
    [(NavShareETAFooterView *)v5 contentView];
    v14 = v31 = colorCopy;
    topAnchor2 = [v14 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    v33[2] = v16;
    bottomAnchor = [(UILabel *)v5->_textLabel bottomAnchor];
    contentView3 = [(NavShareETAFooterView *)v5 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    v33[3] = v20;
    v21 = [NSArray arrayWithObjects:v33 count:4];
    [NSLayoutConstraint activateConstraints:v21];

    colorCopy = v31;
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