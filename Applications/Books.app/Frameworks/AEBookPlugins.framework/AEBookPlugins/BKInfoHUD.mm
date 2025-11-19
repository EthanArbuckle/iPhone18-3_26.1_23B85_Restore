@interface BKInfoHUD
- (BKInfoHUD)initWithFrame:(CGRect)a3;
- (BKInfoHUDDelegate)delegate;
- (BOOL)accessibilityActivate;
- (id)_compositingFilterToUse;
- (id)accessibilityHint;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateImageAndTextConstraints;
- (void)constructViews;
- (void)forceReflowText;
- (void)setIconSymbol:(id)a3;
- (void)setInfoText:(id)a3;
- (void)setUsesMonospacedDigitFont:(BOOL)a3;
- (void)tapGestureHandler:(id)a3;
- (void)updateLabelFont;
@end

@implementation BKInfoHUD

- (BKInfoHUD)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = BKInfoHUD;
  v3 = [(BKInfoHUD *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKInfoHUD *)v3 constructViews];
    v5 = +[UITraitCollection bc_allAPITraits];
    v6 = [(BKInfoHUD *)v4 registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (self->_textLabel)
  {
    v7 = [(BKInfoHUD *)self _compositingFilterToUse];
    v8 = [CAFilter filterWithType:v7];
    v9 = [(UILabel *)self->_textLabel layer];
    [v9 setCompositingFilter:v8];
  }

  if (self->_iconImageView)
  {
    v10 = [(BKInfoHUD *)self _compositingFilterToUse];
    v11 = [CAFilter filterWithType:v10];
    v12 = [(UIImageView *)self->_iconImageView layer];
    [v12 setCompositingFilter:v11];
  }

  v13 = [(BKInfoHUD *)self currentSymbolName];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(BKInfoHUD *)self currentSymbolName];
    [(BKInfoHUD *)self setIconSymbol:v15];
  }
}

- (void)setInfoText:(id)a3
{
  textLabel = self->_textLabel;
  v5 = a3;
  [(UILabel *)textLabel setText:v5];
  [(UILabel *)self->_textLabel setAccessibilityValue:v5];

  [(BKInfoHUD *)self setNeedsUpdateConstraints];
}

- (void)forceReflowText
{
  v3 = [(UILabel *)self->_textLabel text];
  [(UILabel *)self->_textLabel setText:&stru_1E7188];
  [(UILabel *)self->_textLabel setText:v3];
  [(BKInfoHUD *)self setNeedsUpdateConstraints];
}

- (void)setIconSymbol:(id)a3
{
  v10 = a3;
  [(BKInfoHUD *)self setCurrentSymbolName:v10];
  v4 = [UIFont systemFontOfSize:15.0 weight:UIFontWeightSemibold];
  v5 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleHeadline];
  iconImageView = self->_iconImageView;
  if (v10)
  {
    v7 = [v5 scaledFontForFont:v4];
    v8 = [UIImageSymbolConfiguration configurationWithFont:v7];
    v9 = [UIImage systemImageNamed:v10 withConfiguration:v8];
    [(UIImageView *)iconImageView setImage:v9];
  }

  else
  {
    [(UIImageView *)iconImageView setImage:0];
  }

  [(BKInfoHUD *)self _updateImageAndTextConstraints];
  [(BKInfoHUD *)self setNeedsUpdateConstraints];
}

- (void)updateLabelFont
{
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v4 _scaledValueForValue:15.0];
  if (self->_usesMonospacedDigitFont)
  {
    [UIFont monospacedDigitSystemFontOfSize:"monospacedDigitSystemFontOfSize:weight:" weight:?];
  }

  else
  {
    [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  }
  v3 = ;
  [(UILabel *)self->_textLabel setFont:v3];
}

- (id)_compositingFilterToUse
{
  v2 = [(BKInfoHUD *)self traitCollection];
  v3 = [v2 userInterfaceStyle];
  v4 = &kCAFilterPlusL;
  if (v3 != &dword_0 + 2)
  {
    v4 = &kCAFilterPlusD;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (void)constructViews
{
  if (!self->_backgroundView)
  {
    v3 = [UIBlurEffect effectWithStyle:7];
    v4 = [[UIVisualEffectView alloc] initWithEffect:v3];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v4;

    [(UIVisualEffectView *)self->_backgroundView setContentMode:0];
    [(UIVisualEffectView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(UIVisualEffectView *)self->_backgroundView layer];
    [v6 setCornerRadius:8.0];

    v7 = [(UIVisualEffectView *)self->_backgroundView layer];
    [v7 setMasksToBounds:1];

    [(BKInfoHUD *)self insertSubview:self->_backgroundView atIndex:0];
    v8 = [(UIVisualEffectView *)self->_backgroundView centerXAnchor];
    v9 = [(BKInfoHUD *)self centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v10 setActive:1];

    v11 = [(UIVisualEffectView *)self->_backgroundView centerYAnchor];
    v12 = [(BKInfoHUD *)self centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [(UIVisualEffectView *)self->_backgroundView widthAnchor];
    v15 = [(BKInfoHUD *)self widthAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(UIVisualEffectView *)self->_backgroundView heightAnchor];
    v18 = [(BKInfoHUD *)self heightAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];
  }

  if (!self->_iconImageView)
  {
    v20 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    iconImageView = self->_iconImageView;
    self->_iconImageView = v20;

    [(UIImageView *)self->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = +[UIColor bc_booksSecondaryLabelColor];
    [(UIImageView *)self->_iconImageView setTintColor:v22];

    v23 = AEBundle();
    v24 = [v23 localizedStringForKey:@"Toggle page chooser" value:&stru_1E7188 table:0];
    [(UIImageView *)self->_iconImageView setAccessibilityLabel:v24];

    v25 = self->_iconImageView;
    v26 = [(UIImageView *)v25 accessibilityTraits];
    [(UIImageView *)v25 setAccessibilityTraits:UIAccessibilityTraitButton | v26];
    [(UIImageView *)self->_iconImageView setIsAccessibilityElement:1];
    [(UIImageView *)self->_iconImageView setOpaque:0];
    v27 = [(BKInfoHUD *)self _compositingFilterToUse];
    v28 = [CAFilter filterWithType:v27];
    v29 = [(UIImageView *)self->_iconImageView layer];
    [v29 setCompositingFilter:v28];

    [(UIImageView *)self->_iconImageView setContentMode:1];
    [(BKInfoHUD *)self addSubview:self->_iconImageView];
    v30 = [(UIImageView *)self->_iconImageView trailingAnchor];
    v31 = [(UIVisualEffectView *)self->_backgroundView trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:-12.0];
    [v32 setActive:1];

    v33 = [(UIImageView *)self->_iconImageView centerYAnchor];
    v34 = [(UIVisualEffectView *)self->_backgroundView centerYAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    [v35 setActive:1];
  }

  if (!self->_textLabel)
  {
    v36 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    textLabel = self->_textLabel;
    self->_textLabel = v36;

    [(UILabel *)self->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKInfoHUD *)self updateLabelFont];
    if ([(BKInfoHUD *)self isInterfaceRTL])
    {
      v38 = 0;
    }

    else
    {
      v38 = 2;
    }

    [(UILabel *)self->_textLabel setTextAlignment:v38];
    v39 = +[UIColor bc_booksSecondaryLabelColor];
    [(UILabel *)self->_textLabel setTextColor:v39];

    [(UILabel *)self->_textLabel setOpaque:0];
    v40 = [(BKInfoHUD *)self _compositingFilterToUse];
    v41 = [CAFilter filterWithType:v40];
    v42 = [(UILabel *)self->_textLabel layer];
    [v42 setCompositingFilter:v41];

    v43 = +[UIColor clearColor];
    [(UILabel *)self->_textLabel setBackgroundColor:v43];

    v44 = AEBundle();
    v45 = [v44 localizedStringForKey:@"Page" value:&stru_1E7188 table:0];
    [(UILabel *)self->_textLabel setAccessibilityLabel:v45];

    [(UILabel *)self->_textLabel setLineBreakMode:0];
    [(UILabel *)self->_textLabel setNumberOfLines:0];
    [(BKInfoHUD *)self addSubview:self->_textLabel];
    [(BKInfoHUD *)self _updateImageAndTextConstraints];
    v46 = [(UILabel *)self->_textLabel topAnchor];
    v47 = [(UIVisualEffectView *)self->_backgroundView topAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    [v48 setActive:1];

    v49 = [(UILabel *)self->_textLabel bottomAnchor];
    v50 = [(UIVisualEffectView *)self->_backgroundView bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    [v51 setActive:1];
  }

  v52 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapGestureHandler:"];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v52;

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setCancelsTouchesInView:1];
  v54 = self->_tapGestureRecognizer;

  [(BKInfoHUD *)self addGestureRecognizer:v54];
}

- (void)_updateImageAndTextConstraints
{
  v3 = [(UILabel *)self->_textLabel leadingAnchor];
  v4 = [(UIVisualEffectView *)self->_backgroundView leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:12.0];
  [v5 setActive:1];

  v6 = [(BKInfoHUD *)self textLabelTrailingAnchor];

  if (!v6)
  {
    v7 = [(UILabel *)self->_textLabel trailingAnchor];
    v8 = [(UIImageView *)self->_iconImageView leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [(BKInfoHUD *)self setTextLabelTrailingAnchor:v9];
  }

  v10 = [(BKInfoHUD *)self iconImageViewWidthAnchor];

  if (!v10)
  {
    v11 = [NSLayoutConstraint constraintWithItem:self->_iconImageView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(BKInfoHUD *)self setIconImageViewWidthAnchor:v11];
  }

  v12 = [(UIImageView *)self->_iconImageView image];
  if (v12)
  {
    v13 = -5.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = [(BKInfoHUD *)self textLabelTrailingAnchor];
  [v14 setConstant:v13];

  v15 = [(UIImageView *)self->_iconImageView image];
  [v15 size];
  v17 = v16;
  v18 = [(BKInfoHUD *)self iconImageViewWidthAnchor];
  [v18 setConstant:v17];

  v19 = [(BKInfoHUD *)self textLabelTrailingAnchor];
  [v19 setActive:1];

  v20 = [(BKInfoHUD *)self iconImageViewWidthAnchor];
  [v20 setActive:1];
}

- (void)tapGestureHandler:(id)a3
{
  v4 = [(BKInfoHUD *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(BKInfoHUD *)self delegate];
    [v6 infoHUDTapped:self];
  }
}

- (void)setUsesMonospacedDigitFont:(BOOL)a3
{
  if (self->_usesMonospacedDigitFont != a3)
  {
    self->_usesMonospacedDigitFont = a3;
    [(BKInfoHUD *)self updateLabelFont];
  }
}

- (id)accessibilityHint
{
  v2 = [(BKInfoHUD *)self isUserInteractionEnabled];
  v3 = AEBundle();
  v4 = v3;
  if (v2)
  {
    v5 = @"Double tap to toggle page chooser";
  }

  else
  {
    v5 = @"Double tap to turn page";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1E7188 table:0];

  return v6;
}

- (BOOL)accessibilityActivate
{
  v3 = [(BKInfoHUD *)self delegate];
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    v5 = [(BKInfoHUD *)self isUserInteractionEnabled];

    if (!v5)
    {
      v4 = 0;
      return v4 & 1;
    }

    v3 = [(BKInfoHUD *)self delegate];
    [v3 infoHUDTapped:self];
  }

  return v4 & 1;
}

- (BKInfoHUDDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end