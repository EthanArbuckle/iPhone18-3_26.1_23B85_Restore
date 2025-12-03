@interface BKInfoHUD
- (BKInfoHUD)initWithFrame:(CGRect)frame;
- (BKInfoHUDDelegate)delegate;
- (BOOL)accessibilityActivate;
- (id)_compositingFilterToUse;
- (id)accessibilityHint;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateImageAndTextConstraints;
- (void)constructViews;
- (void)forceReflowText;
- (void)setIconSymbol:(id)symbol;
- (void)setInfoText:(id)text;
- (void)setUsesMonospacedDigitFont:(BOOL)font;
- (void)tapGestureHandler:(id)handler;
- (void)updateLabelFont;
@end

@implementation BKInfoHUD

- (BKInfoHUD)initWithFrame:(CGRect)frame
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

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  changeCopy = change;
  collectionCopy = collection;
  if (self->_textLabel)
  {
    _compositingFilterToUse = [(BKInfoHUD *)self _compositingFilterToUse];
    v8 = [CAFilter filterWithType:_compositingFilterToUse];
    layer = [(UILabel *)self->_textLabel layer];
    [layer setCompositingFilter:v8];
  }

  if (self->_iconImageView)
  {
    _compositingFilterToUse2 = [(BKInfoHUD *)self _compositingFilterToUse];
    v11 = [CAFilter filterWithType:_compositingFilterToUse2];
    layer2 = [(UIImageView *)self->_iconImageView layer];
    [layer2 setCompositingFilter:v11];
  }

  currentSymbolName = [(BKInfoHUD *)self currentSymbolName];
  v14 = [currentSymbolName length];

  if (v14)
  {
    currentSymbolName2 = [(BKInfoHUD *)self currentSymbolName];
    [(BKInfoHUD *)self setIconSymbol:currentSymbolName2];
  }
}

- (void)setInfoText:(id)text
{
  textLabel = self->_textLabel;
  textCopy = text;
  [(UILabel *)textLabel setText:textCopy];
  [(UILabel *)self->_textLabel setAccessibilityValue:textCopy];

  [(BKInfoHUD *)self setNeedsUpdateConstraints];
}

- (void)forceReflowText
{
  text = [(UILabel *)self->_textLabel text];
  [(UILabel *)self->_textLabel setText:&stru_1E7188];
  [(UILabel *)self->_textLabel setText:text];
  [(BKInfoHUD *)self setNeedsUpdateConstraints];
}

- (void)setIconSymbol:(id)symbol
{
  symbolCopy = symbol;
  [(BKInfoHUD *)self setCurrentSymbolName:symbolCopy];
  v4 = [UIFont systemFontOfSize:15.0 weight:UIFontWeightSemibold];
  v5 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleHeadline];
  iconImageView = self->_iconImageView;
  if (symbolCopy)
  {
    v7 = [v5 scaledFontForFont:v4];
    v8 = [UIImageSymbolConfiguration configurationWithFont:v7];
    v9 = [UIImage systemImageNamed:symbolCopy withConfiguration:v8];
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
  traitCollection = [(BKInfoHUD *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v4 = &kCAFilterPlusL;
  if (userInterfaceStyle != &dword_0 + 2)
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
    layer = [(UIVisualEffectView *)self->_backgroundView layer];
    [layer setCornerRadius:8.0];

    layer2 = [(UIVisualEffectView *)self->_backgroundView layer];
    [layer2 setMasksToBounds:1];

    [(BKInfoHUD *)self insertSubview:self->_backgroundView atIndex:0];
    centerXAnchor = [(UIVisualEffectView *)self->_backgroundView centerXAnchor];
    centerXAnchor2 = [(BKInfoHUD *)self centerXAnchor];
    v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v10 setActive:1];

    centerYAnchor = [(UIVisualEffectView *)self->_backgroundView centerYAnchor];
    centerYAnchor2 = [(BKInfoHUD *)self centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v13 setActive:1];

    widthAnchor = [(UIVisualEffectView *)self->_backgroundView widthAnchor];
    widthAnchor2 = [(BKInfoHUD *)self widthAnchor];
    v16 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v16 setActive:1];

    heightAnchor = [(UIVisualEffectView *)self->_backgroundView heightAnchor];
    heightAnchor2 = [(BKInfoHUD *)self heightAnchor];
    v19 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
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
    accessibilityTraits = [(UIImageView *)v25 accessibilityTraits];
    [(UIImageView *)v25 setAccessibilityTraits:UIAccessibilityTraitButton | accessibilityTraits];
    [(UIImageView *)self->_iconImageView setIsAccessibilityElement:1];
    [(UIImageView *)self->_iconImageView setOpaque:0];
    _compositingFilterToUse = [(BKInfoHUD *)self _compositingFilterToUse];
    v28 = [CAFilter filterWithType:_compositingFilterToUse];
    layer3 = [(UIImageView *)self->_iconImageView layer];
    [layer3 setCompositingFilter:v28];

    [(UIImageView *)self->_iconImageView setContentMode:1];
    [(BKInfoHUD *)self addSubview:self->_iconImageView];
    trailingAnchor = [(UIImageView *)self->_iconImageView trailingAnchor];
    trailingAnchor2 = [(UIVisualEffectView *)self->_backgroundView trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    [v32 setActive:1];

    centerYAnchor3 = [(UIImageView *)self->_iconImageView centerYAnchor];
    centerYAnchor4 = [(UIVisualEffectView *)self->_backgroundView centerYAnchor];
    v35 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
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
    _compositingFilterToUse2 = [(BKInfoHUD *)self _compositingFilterToUse];
    v41 = [CAFilter filterWithType:_compositingFilterToUse2];
    layer4 = [(UILabel *)self->_textLabel layer];
    [layer4 setCompositingFilter:v41];

    v43 = +[UIColor clearColor];
    [(UILabel *)self->_textLabel setBackgroundColor:v43];

    v44 = AEBundle();
    v45 = [v44 localizedStringForKey:@"Page" value:&stru_1E7188 table:0];
    [(UILabel *)self->_textLabel setAccessibilityLabel:v45];

    [(UILabel *)self->_textLabel setLineBreakMode:0];
    [(UILabel *)self->_textLabel setNumberOfLines:0];
    [(BKInfoHUD *)self addSubview:self->_textLabel];
    [(BKInfoHUD *)self _updateImageAndTextConstraints];
    topAnchor = [(UILabel *)self->_textLabel topAnchor];
    topAnchor2 = [(UIVisualEffectView *)self->_backgroundView topAnchor];
    v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v48 setActive:1];

    bottomAnchor = [(UILabel *)self->_textLabel bottomAnchor];
    bottomAnchor2 = [(UIVisualEffectView *)self->_backgroundView bottomAnchor];
    v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  leadingAnchor = [(UILabel *)self->_textLabel leadingAnchor];
  leadingAnchor2 = [(UIVisualEffectView *)self->_backgroundView leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
  [v5 setActive:1];

  textLabelTrailingAnchor = [(BKInfoHUD *)self textLabelTrailingAnchor];

  if (!textLabelTrailingAnchor)
  {
    trailingAnchor = [(UILabel *)self->_textLabel trailingAnchor];
    leadingAnchor3 = [(UIImageView *)self->_iconImageView leadingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
    [(BKInfoHUD *)self setTextLabelTrailingAnchor:v9];
  }

  iconImageViewWidthAnchor = [(BKInfoHUD *)self iconImageViewWidthAnchor];

  if (!iconImageViewWidthAnchor)
  {
    v11 = [NSLayoutConstraint constraintWithItem:self->_iconImageView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    [(BKInfoHUD *)self setIconImageViewWidthAnchor:v11];
  }

  image = [(UIImageView *)self->_iconImageView image];
  if (image)
  {
    v13 = -5.0;
  }

  else
  {
    v13 = 0.0;
  }

  textLabelTrailingAnchor2 = [(BKInfoHUD *)self textLabelTrailingAnchor];
  [textLabelTrailingAnchor2 setConstant:v13];

  image2 = [(UIImageView *)self->_iconImageView image];
  [image2 size];
  v17 = v16;
  iconImageViewWidthAnchor2 = [(BKInfoHUD *)self iconImageViewWidthAnchor];
  [iconImageViewWidthAnchor2 setConstant:v17];

  textLabelTrailingAnchor3 = [(BKInfoHUD *)self textLabelTrailingAnchor];
  [textLabelTrailingAnchor3 setActive:1];

  iconImageViewWidthAnchor3 = [(BKInfoHUD *)self iconImageViewWidthAnchor];
  [iconImageViewWidthAnchor3 setActive:1];
}

- (void)tapGestureHandler:(id)handler
{
  delegate = [(BKInfoHUD *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(BKInfoHUD *)self delegate];
    [delegate2 infoHUDTapped:self];
  }
}

- (void)setUsesMonospacedDigitFont:(BOOL)font
{
  if (self->_usesMonospacedDigitFont != font)
  {
    self->_usesMonospacedDigitFont = font;
    [(BKInfoHUD *)self updateLabelFont];
  }
}

- (id)accessibilityHint
{
  isUserInteractionEnabled = [(BKInfoHUD *)self isUserInteractionEnabled];
  v3 = AEBundle();
  v4 = v3;
  if (isUserInteractionEnabled)
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
  delegate = [(BKInfoHUD *)self delegate];
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    isUserInteractionEnabled = [(BKInfoHUD *)self isUserInteractionEnabled];

    if (!isUserInteractionEnabled)
    {
      v4 = 0;
      return v4 & 1;
    }

    delegate = [(BKInfoHUD *)self delegate];
    [delegate infoHUDTapped:self];
  }

  return v4 & 1;
}

- (BKInfoHUDDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end