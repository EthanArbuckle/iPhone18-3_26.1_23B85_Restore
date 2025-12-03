@interface MailActionCell
+ (double)approximateHeightForAccessibilityContentSizeCategory;
- (MailActionCell)initWithFrame:(CGRect)frame;
- (_MailActionCellTitleLabel)titleLabel;
- (id)_temporaryTrimmingTitle:(id)title;
- (void)_updateDynamicConstraints;
- (void)_updateImageViewSymbolConfiguration;
- (void)_updateImageViewTintColor;
- (void)_updateTitleLabelTextColor;
- (void)configureConstraints;
- (void)prepareForReuse;
- (void)setCardAction:(id)action;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setUseActionSheetStyle:(BOOL)style;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MailActionCell

- (MailActionCell)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = MailActionCell;
  v3 = [(MailActionCell *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MailActionCell *)v3 setClipsToBounds:1];
    contentView = [(MailActionCell *)v4 contentView];
    if (MUISolariumFeatureEnabled())
    {
      v6 = 26.0;
    }

    else
    {
      v6 = 10.0;
    }

    superview = [contentView superview];
    layer = [superview layer];
    [layer setCornerRadius:v6];

    superview2 = [contentView superview];
    layer2 = [superview2 layer];
    [layer2 setCornerCurve:kCACornerCurveContinuous];

    v11 = objc_opt_new();
    displayMetrics = v4->_displayMetrics;
    v4->_displayMetrics = v11;

    titleLabel = [(MailActionCell *)v4 titleLabel];
    [(MailActionCell *)v4 _updateTitleLabelTextColor];
    if (MUISolariumFeatureEnabled())
    {
      [(MailActionCell *)v4 _updateImageViewTintColor];
    }

    if (titleLabel)
    {
      [contentView addSubview:titleLabel];
    }

    v14 = objc_alloc_init(UIImageView);
    [v14 setContentMode:4];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setContentMode:4];
    [(MailActionCell *)v4 setImageView:v14];
    [contentView addSubview:v14];
    [(MailActionCell *)v4 _updateImageViewSymbolConfiguration];
    [(MailActionCell *)v4 configureConstraints];
    if ([(MailActionCell *)v4 isHorizontalActionCell])
    {
      traitOverrides = [(MailActionCell *)v4 traitOverrides];
      [traitOverrides setListEnvironment:4];
    }
  }

  return v4;
}

- (void)configureConstraints
{
  contentView = [(MailActionCell *)self contentView];
  v3 = +[NSMutableArray array];
  titleLabel = [(MailActionCell *)self titleLabel];
  v5 = titleLabel;
  if (titleLabel)
  {
    leadingAnchor = [titleLabel leadingAnchor];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
    [v3 addObject:v9];
  }

  [(MailActionCell *)self _updateDynamicConstraints];
  dynamicConstraints = [(MailActionCell *)self dynamicConstraints];
  [v3 addObjectsFromArray:dynamicConstraints];

  imageView = [(MailActionCell *)self imageView];
  v12 = imageView;
  if (v5)
  {
    leadingAnchor3 = [imageView leadingAnchor];
    trailingAnchor = [v5 trailingAnchor];
    v15 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor constant:16.0];
    [v3 addObject:v15];
  }

  centerXAnchor = [v12 centerXAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:trailingAnchor2 constant:-28.0];
  [v3 addObject:v18];

  centerYAnchor = [v12 centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v3 addObject:v21];

  widthAnchor = [v12 widthAnchor];
  v23 = [widthAnchor constraintEqualToConstant:40.0];
  [v3 addObject:v23];

  heightAnchor = [v12 heightAnchor];
  v25 = [heightAnchor constraintEqualToConstant:40.0];
  [v3 addObject:v25];

  [NSLayoutConstraint activateConstraints:v3];
}

- (void)setCardAction:(id)action
{
  actionCopy = action;
  if (([(MFCardAction *)self->_cardAction isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_cardAction, action);
  }

  if ([(MailActionCell *)self isHorizontalActionCell])
  {
    [actionCopy shortTitle];
  }

  else
  {
    [actionCopy title];
  }
  v5 = ;
  v6 = [(MailActionCell *)self _temporaryTrimmingTitle:v5];
  titleLabel = [(MailActionCell *)self titleLabel];
  [titleLabel setText:v6];

  imageName = [actionCopy imageName];
  v9 = [imageName containsString:@"custom"];

  imageName2 = [actionCopy imageName];
  if (v9)
  {
    [UIImage imageNamed:imageName2 inBundle:0 withConfiguration:0];
  }

  else
  {
    [UIImage systemImageNamed:imageName2 withConfiguration:0];
  }
  v11 = ;
  imageView = [(MailActionCell *)self imageView];
  [imageView setImage:v11];

  if (MUISolariumFeatureEnabled())
  {
    [(MailActionCell *)self _updateTitleLabelTextColor];
  }

  [(MailActionCell *)self _updateImageViewTintColor];
  accessibilityIdentifier = [actionCopy accessibilityIdentifier];
  [(MailActionCell *)self setAccessibilityIdentifier:accessibilityIdentifier];
}

- (id)_temporaryTrimmingTitle:(id)title
{
  ef_stringByTrimmingWhitespaceAndNewlineCharacters = [title ef_stringByTrimmingWhitespaceAndNewlineCharacters];
  if ([ef_stringByTrimmingWhitespaceAndNewlineCharacters isEqualToString:@"Notify Me…"])
  {
    v4 = @"Notify Me of Replies";
  }

  else
  {
    if (![ef_stringByTrimmingWhitespaceAndNewlineCharacters isEqualToString:@"Move Message…"])
    {
      goto LABEL_6;
    }

    v4 = @"Move Message";
  }

  ef_stringByTrimmingWhitespaceAndNewlineCharacters = v4;
LABEL_6:

  return ef_stringByTrimmingWhitespaceAndNewlineCharacters;
}

- (void)prepareForReuse
{
  v11.receiver = self;
  v11.super_class = MailActionCell;
  [(MailActionCell *)&v11 prepareForReuse];
  titleLabel = [(MailActionCell *)self titleLabel];
  [titleLabel setText:0];

  titleLabel2 = [(MailActionCell *)self titleLabel];
  layer = [titleLabel2 layer];
  [layer setContents:0];

  titleLabel3 = [(MailActionCell *)self titleLabel];
  [titleLabel3 setTextColor:0];

  imageView = [(MailActionCell *)self imageView];
  [imageView setImage:0];

  imageView2 = [(MailActionCell *)self imageView];
  layer2 = [imageView2 layer];
  [layer2 setContents:0];

  imageView3 = [(MailActionCell *)self imageView];
  [imageView3 setTintColor:0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(MailActionCell *)self isHighlighted]!= highlighted)
  {
    titleLabel = [(MailActionCell *)self titleLabel];
    layer = [titleLabel layer];
    contents = [layer contents];

    v10.receiver = self;
    v10.super_class = MailActionCell;
    [(MailActionCell *)&v10 setHighlighted:highlightedCopy];
    titleLabel2 = [(MailActionCell *)self titleLabel];
    layer2 = [titleLabel2 layer];
    [layer2 setContents:contents];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(MailActionCell *)self isSelected]!= selected)
  {
    titleLabel = [(MailActionCell *)self titleLabel];
    layer = [titleLabel layer];
    contents = [layer contents];

    v10.receiver = self;
    v10.super_class = MailActionCell;
    [(MailActionCell *)&v10 setSelected:selectedCopy];
    titleLabel2 = [(MailActionCell *)self titleLabel];
    layer2 = [titleLabel2 layer];
    [layer2 setContents:contents];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = MailActionCell;
  [(MailActionCell *)&v13 traitCollectionDidChange:changeCopy];
  [(MailActionCell *)self _updateImageViewTintColor];
  [(MailActionCell *)self _updateImageViewSymbolConfiguration];
  [(MailActionCell *)self _updateTitleLabelTextColor];
  dynamicConstraints = [(MailActionCell *)self dynamicConstraints];

  if (dynamicConstraints)
  {
    preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    traitCollection = [(MailActionCell *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
    v10 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

    if (IsAccessibilityCategory != v10)
    {
      dynamicConstraints2 = [(MailActionCell *)self dynamicConstraints];
      [NSLayoutConstraint deactivateConstraints:dynamicConstraints2];

      [(MailActionCell *)self _updateDynamicConstraints];
      dynamicConstraints3 = [(MailActionCell *)self dynamicConstraints];
      [NSLayoutConstraint activateConstraints:dynamicConstraints3];
    }
  }
}

- (void)_updateDynamicConstraints
{
  titleLabel = [(MailActionCell *)self titleLabel];
  if (titleLabel)
  {
    v3 = +[NSMutableArray array];
    contentView = [(MailActionCell *)self contentView];
    traitCollection = [(MailActionCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      topAnchor = [titleLabel topAnchor];
      topAnchor2 = [contentView topAnchor];
      v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
      [v3 addObject:v10];

      bottomAnchor = [contentView bottomAnchor];
      bottomAnchor2 = [titleLabel bottomAnchor];
      lastBaselineAnchor = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:15.0];
      [v3 addObject:lastBaselineAnchor];
    }

    else
    {
      bottomAnchor = [(MailActionCell *)self displayMetrics];
      firstBaselineAnchor = [titleLabel firstBaselineAnchor];
      topAnchor3 = [contentView topAnchor];
      [bottomAnchor topToFirstBaselineSpacingInMailActionCardVerticalGroup];
      v16 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:?];
      [v3 addObject:v16];

      bottomAnchor2 = [contentView bottomAnchor];
      lastBaselineAnchor = [titleLabel lastBaselineAnchor];
      [bottomAnchor bottomToLastBaselineInMailActionCardVerticalGroup];
      v17 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
      [v3 addObject:v17];
    }

    [(MailActionCell *)self setDynamicConstraints:v3];
  }
}

+ (double)approximateHeightForAccessibilityContentSizeCategory
{
  v4 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MailActionCell.m" lineNumber:238 description:@"Unexpectedly attempted to calculate approximate height for non-accessibility text sizes"];
  }

  v7 = +[_MailActionCellTitleLabel preferredFontForDefaultTitle];
  [v7 lineHeight];
  v9 = v8 + 30.0;

  return v9;
}

- (void)setUseActionSheetStyle:(BOOL)style
{
  if (self->_useActionSheetStyle != style)
  {
    styleCopy = style;
    self->_useActionSheetStyle = style;
    titleLabel = [(MailActionCell *)self titleLabel];
    [titleLabel setUseActionSheetStyle:styleCopy];
  }
}

- (_MailActionCellTitleLabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc_init(_MailActionCellTitleLabel);
    v5 = +[UIColor clearColor];
    [(_MailActionCellTitleLabel *)v4 setBackgroundColor:v5];

    [(_MailActionCellTitleLabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MailActionCellTitleLabel *)v4 setLineBreakMode:0];
    [(_MailActionCellTitleLabel *)v4 setNumberOfLines:0];
    [(_MailActionCellTitleLabel *)v4 setIsHorizontalTitle:[(MailActionCell *)self isHorizontalActionCell]];
    v6 = self->_titleLabel;
    self->_titleLabel = v4;

    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (void)_updateTitleLabelTextColor
{
  if (MUISolariumFeatureEnabled())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) != 0 && (-[MailActionCell cardAction](self, "cardAction"), traitCollection = objc_claimAutoreleasedReturnValue(), [traitCollection isDestructive]))
    {
      v4 = +[UIColor mailDestructiveActionColor];
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v4 = +[UIColor labelColor];
      v6 = 0;
      v5 = 1;
    }

    titleLabel = [(MailActionCell *)self titleLabel];
    [titleLabel setTextColor:v4];

    if (v5)
    {

      if (!v6)
      {
LABEL_10:
        if ((isKindOfClass & 1) == 0)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    else if (!v6)
    {
      goto LABEL_10;
    }

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }
  }

  else
  {
    traitCollection = [(MailActionCell *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      +[UIColor systemWhiteColor];
    }

    else
    {
      +[UIColor systemBlueColor];
    }
    v8 = ;
    titleLabel2 = [(MailActionCell *)self titleLabel];
    [titleLabel2 setTextColor:v8];
  }

LABEL_16:
}

- (void)_updateImageViewSymbolConfiguration
{
  imageView = [(MailActionCell *)self imageView];
  v2 = [UIImage mf_symbolConfigurationForView:19];
  [imageView setPreferredSymbolConfiguration:v2];
}

- (void)_updateImageViewTintColor
{
  cardAction = [(MailActionCell *)self cardAction];
  tintColor = [cardAction tintColor];

  if (!MUISolariumFeatureEnabled())
  {
    if (tintColor)
    {
      v8 = 0;
      v9 = tintColor;
    }

    else
    {
      cardAction = [(MailActionCell *)self traitCollection];
      if ([cardAction userInterfaceStyle] == 1)
      {
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v9 = +[UIColor systemWhiteColor];
        v8 = 1;
      }
    }

    imageView = [(MailActionCell *)self imageView];
    [imageView setTintColor:v9];

    if (v8)
    {
    }

    if (tintColor)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) != 0 && (-[MailActionCell cardAction](self, "cardAction"), cardAction = objc_claimAutoreleasedReturnValue(), [cardAction isDestructive]))
  {
    v5 = +[UIColor mailDestructiveActionColor];
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v5 = +[UIColor labelColor];
    v7 = 0;
    v6 = 1;
  }

  imageView2 = [(MailActionCell *)self imageView];
  [imageView2 setTintColor:v5];

  if (v6)
  {

    if (!v7)
    {
LABEL_10:
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

  if (isKindOfClass)
  {
    goto LABEL_11;
  }

LABEL_12:
}

@end