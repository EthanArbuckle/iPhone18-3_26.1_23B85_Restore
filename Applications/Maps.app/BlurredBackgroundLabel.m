@interface BlurredBackgroundLabel
- (BlurredBackgroundLabel)init;
- (BlurredBackgroundLabel)initWithFrame:(CGRect)a3;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_sharedInit;
- (void)setGroupName:(id)a3;
- (void)setText:(id)a3;
@end

@implementation BlurredBackgroundLabel

- (void)_contentSizeDidChange
{
  v3 = +[RAPFontManager mapDescriptionView];
  [(UILabel *)self->_label setFont:v3];

  v4 = [(UILabel *)self->_label font];
  [v4 _scaledValueForValue:25.0];
  [(NSLayoutConstraint *)self->_topToFirstBaselineConstraint setConstant:?];

  v5 = [(UILabel *)self->_label font];
  [v5 _scaledValueForValue:15.0];
  [(NSLayoutConstraint *)self->_lastBaselineToBottomConstraint setConstant:?];
}

- (void)setGroupName:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_groupName isEqualToString:?])
  {
    objc_storeStrong(&self->_groupName, a3);
    [(UIVisualEffectView *)self->_backgroundEffectView _setGroupName:self->_groupName];
  }
}

- (void)setText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, a3);
    [(UILabel *)self->_label setText:v5];
    [(BlurredBackgroundLabel *)self setAccessibilityLabel:v5];
  }
}

- (void)_setupConstraints
{
  v3 = [(UILabel *)self->_label firstBaselineAnchor];
  v4 = [(UIVisualEffectView *)self->_backgroundEffectView topAnchor];
  v5 = [(UILabel *)self->_label font];
  [v5 _scaledValueForValue:25.0];
  v6 = [v3 constraintEqualToAnchor:v4 constant:?];
  topToFirstBaselineConstraint = self->_topToFirstBaselineConstraint;
  self->_topToFirstBaselineConstraint = v6;

  v8 = [(UIVisualEffectView *)self->_backgroundEffectView bottomAnchor];
  v9 = [(UILabel *)self->_label lastBaselineAnchor];
  v10 = [(UILabel *)self->_label font];
  [v10 _scaledValueForValue:15.0];
  v11 = [v8 constraintEqualToAnchor:v9 constant:?];
  lastBaselineToBottomConstraint = self->_lastBaselineToBottomConstraint;
  self->_lastBaselineToBottomConstraint = v11;

  v32 = [(UIVisualEffectView *)self->_backgroundEffectView leadingAnchor];
  v31 = [(BlurredBackgroundLabel *)self leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v33[0] = v30;
  v29 = [(UIVisualEffectView *)self->_backgroundEffectView trailingAnchor];
  v28 = [(BlurredBackgroundLabel *)self trailingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v33[1] = v27;
  v26 = [(UIVisualEffectView *)self->_backgroundEffectView topAnchor];
  v25 = [(BlurredBackgroundLabel *)self topAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v33[2] = v24;
  v13 = [(UIVisualEffectView *)self->_backgroundEffectView bottomAnchor];
  v14 = [(BlurredBackgroundLabel *)self bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v33[3] = v15;
  v16 = [(UILabel *)self->_label leadingAnchor];
  v17 = [(UIVisualEffectView *)self->_backgroundEffectView leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:5.0];
  v33[4] = v18;
  v19 = [(UILabel *)self->_label trailingAnchor];
  v20 = [(UIVisualEffectView *)self->_backgroundEffectView trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-5.0];
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
  v13 = [(UIVisualEffectView *)self->_backgroundEffectView contentView];
  [v13 addSubview:self->_label];
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

- (BlurredBackgroundLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = BlurredBackgroundLabel;
  v3 = [(BlurredBackgroundLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BlurredBackgroundLabel *)v3 _sharedInit];
  }

  return v4;
}

@end