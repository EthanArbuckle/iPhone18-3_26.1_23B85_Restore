@interface BlurredBackgroundLabel
- (BlurredBackgroundLabel)init;
- (BlurredBackgroundLabel)initWithFrame:(CGRect)frame;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_sharedInit;
- (void)setGroupName:(id)name;
- (void)setText:(id)text;
@end

@implementation BlurredBackgroundLabel

- (void)_contentSizeDidChange
{
  v3 = +[RAPFontManager mapDescriptionView];
  [(UILabel *)self->_label setFont:v3];

  font = [(UILabel *)self->_label font];
  [font _scaledValueForValue:25.0];
  [(NSLayoutConstraint *)self->_topToFirstBaselineConstraint setConstant:?];

  font2 = [(UILabel *)self->_label font];
  [font2 _scaledValueForValue:15.0];
  [(NSLayoutConstraint *)self->_lastBaselineToBottomConstraint setConstant:?];
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_groupName isEqualToString:?])
  {
    objc_storeStrong(&self->_groupName, name);
    [(UIVisualEffectView *)self->_backgroundEffectView _setGroupName:self->_groupName];
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, text);
    [(UILabel *)self->_label setText:textCopy];
    [(BlurredBackgroundLabel *)self setAccessibilityLabel:textCopy];
  }
}

- (void)_setupConstraints
{
  firstBaselineAnchor = [(UILabel *)self->_label firstBaselineAnchor];
  topAnchor = [(UIVisualEffectView *)self->_backgroundEffectView topAnchor];
  font = [(UILabel *)self->_label font];
  [font _scaledValueForValue:25.0];
  v6 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  topToFirstBaselineConstraint = self->_topToFirstBaselineConstraint;
  self->_topToFirstBaselineConstraint = v6;

  bottomAnchor = [(UIVisualEffectView *)self->_backgroundEffectView bottomAnchor];
  lastBaselineAnchor = [(UILabel *)self->_label lastBaselineAnchor];
  font2 = [(UILabel *)self->_label font];
  [font2 _scaledValueForValue:15.0];
  v11 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
  lastBaselineToBottomConstraint = self->_lastBaselineToBottomConstraint;
  self->_lastBaselineToBottomConstraint = v11;

  leadingAnchor = [(UIVisualEffectView *)self->_backgroundEffectView leadingAnchor];
  leadingAnchor2 = [(BlurredBackgroundLabel *)self leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v33[0] = v30;
  trailingAnchor = [(UIVisualEffectView *)self->_backgroundEffectView trailingAnchor];
  trailingAnchor2 = [(BlurredBackgroundLabel *)self trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v33[1] = v27;
  topAnchor2 = [(UIVisualEffectView *)self->_backgroundEffectView topAnchor];
  topAnchor3 = [(BlurredBackgroundLabel *)self topAnchor];
  v24 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v33[2] = v24;
  bottomAnchor2 = [(UIVisualEffectView *)self->_backgroundEffectView bottomAnchor];
  bottomAnchor3 = [(BlurredBackgroundLabel *)self bottomAnchor];
  v15 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v33[3] = v15;
  leadingAnchor3 = [(UILabel *)self->_label leadingAnchor];
  leadingAnchor4 = [(UIVisualEffectView *)self->_backgroundEffectView leadingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:5.0];
  v33[4] = v18;
  trailingAnchor3 = [(UILabel *)self->_label trailingAnchor];
  trailingAnchor4 = [(UIVisualEffectView *)self->_backgroundEffectView trailingAnchor];
  v21 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-5.0];
  v22 = self->_topToFirstBaselineConstraint;
  v33[5] = v21;
  v33[6] = v22;
  v33[7] = self->_lastBaselineToBottomConstraint;
  v23 = [NSArray arrayWithObjects:v33 count:8];
  [NSLayoutConstraint activateConstraints:v23];
}

- (void)_setupSubviews
{
  v3 = [UIVisualEffectView alloc];
  v4 = [UIBlurEffect effectWithStyle:6];
  v5 = [v3 initWithEffect:v4];
  backgroundEffectView = self->_backgroundEffectView;
  self->_backgroundEffectView = v5;

  v7 = objc_alloc_init(UILabel);
  label = self->_label;
  self->_label = v7;

  [(UILabel *)self->_label setNumberOfLines:0];
  [(UILabel *)self->_label setAdjustsFontSizeToFitWidth:1];
  v9 = self->_label;
  v10 = +[RAPFontManager mapDescriptionView];
  [(UILabel *)v9 setFont:v10];

  v11 = self->_label;
  v12 = +[UIColor secondaryLabelColor];
  [(UILabel *)v11 setTextColor:v12];

  [(UIVisualEffectView *)self->_backgroundEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_label setTextAlignment:1];
  [(BlurredBackgroundLabel *)self addSubview:self->_backgroundEffectView];
  contentView = [(UIVisualEffectView *)self->_backgroundEffectView contentView];
  [contentView addSubview:self->_label];
}

- (void)_sharedInit
{
  v3 = +[UIColor clearColor];
  [(BlurredBackgroundLabel *)self setBackgroundColor:v3];

  [(BlurredBackgroundLabel *)self _setupSubviews];
  [(BlurredBackgroundLabel *)self _setupConstraints];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (BlurredBackgroundLabel)init
{
  v5.receiver = self;
  v5.super_class = BlurredBackgroundLabel;
  v2 = [(BlurredBackgroundLabel *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BlurredBackgroundLabel *)v2 _sharedInit];
  }

  return v3;
}

- (BlurredBackgroundLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = BlurredBackgroundLabel;
  v3 = [(BlurredBackgroundLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BlurredBackgroundLabel *)v3 _sharedInit];
  }

  return v4;
}

@end