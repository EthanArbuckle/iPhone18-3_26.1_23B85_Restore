@interface MailActionCell
+ (double)approximateHeightForAccessibilityContentSizeCategory;
- (MailActionCell)initWithFrame:(CGRect)a3;
- (_MailActionCellTitleLabel)titleLabel;
- (id)_temporaryTrimmingTitle:(id)a3;
- (void)_updateDynamicConstraints;
- (void)_updateImageViewSymbolConfiguration;
- (void)_updateImageViewTintColor;
- (void)_updateTitleLabelTextColor;
- (void)configureConstraints;
- (void)prepareForReuse;
- (void)setCardAction:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setUseActionSheetStyle:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MailActionCell

- (MailActionCell)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = MailActionCell;
  v3 = [(MailActionCell *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MailActionCell *)v3 setClipsToBounds:1];
    v5 = [(MailActionCell *)v4 contentView];
    if (MUISolariumFeatureEnabled())
    {
      v6 = 26.0;
    }

    else
    {
      v6 = 10.0;
    }

    v7 = [v5 superview];
    v8 = [v7 layer];
    [v8 setCornerRadius:v6];

    v9 = [v5 superview];
    v10 = [v9 layer];
    [v10 setCornerCurve:kCACornerCurveContinuous];

    v11 = objc_opt_new();
    displayMetrics = v4->_displayMetrics;
    v4->_displayMetrics = v11;

    v13 = [(MailActionCell *)v4 titleLabel];
    [(MailActionCell *)v4 _updateTitleLabelTextColor];
    if (MUISolariumFeatureEnabled())
    {
      [(MailActionCell *)v4 _updateImageViewTintColor];
    }

    if (v13)
    {
      [v5 addSubview:v13];
    }

    v14 = objc_alloc_init(UIImageView);
    [v14 setContentMode:4];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setContentMode:4];
    [(MailActionCell *)v4 setImageView:v14];
    [v5 addSubview:v14];
    [(MailActionCell *)v4 _updateImageViewSymbolConfiguration];
    [(MailActionCell *)v4 configureConstraints];
    if ([(MailActionCell *)v4 isHorizontalActionCell])
    {
      v15 = [(MailActionCell *)v4 traitOverrides];
      [v15 setListEnvironment:4];
    }
  }

  return v4;
}

- (void)configureConstraints
{
  v26 = [(MailActionCell *)self contentView];
  v3 = +[NSMutableArray array];
  v4 = [(MailActionCell *)self titleLabel];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 leadingAnchor];
    v7 = [v26 layoutMarginsGuide];
    v8 = [v7 leadingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8 constant:8.0];
    [v3 addObject:v9];
  }

  [(MailActionCell *)self _updateDynamicConstraints];
  v10 = [(MailActionCell *)self dynamicConstraints];
  [v3 addObjectsFromArray:v10];

  v11 = [(MailActionCell *)self imageView];
  v12 = v11;
  if (v5)
  {
    v13 = [v11 leadingAnchor];
    v14 = [v5 trailingAnchor];
    v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14 constant:16.0];
    [v3 addObject:v15];
  }

  v16 = [v12 centerXAnchor];
  v17 = [v26 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-28.0];
  [v3 addObject:v18];

  v19 = [v12 centerYAnchor];
  v20 = [v26 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v3 addObject:v21];

  v22 = [v12 widthAnchor];
  v23 = [v22 constraintEqualToConstant:40.0];
  [v3 addObject:v23];

  v24 = [v12 heightAnchor];
  v25 = [v24 constraintEqualToConstant:40.0];
  [v3 addObject:v25];

  [NSLayoutConstraint activateConstraints:v3];
}

- (void)setCardAction:(id)a3
{
  v14 = a3;
  if (([(MFCardAction *)self->_cardAction isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_cardAction, a3);
  }

  if ([(MailActionCell *)self isHorizontalActionCell])
  {
    [v14 shortTitle];
  }

  else
  {
    [v14 title];
  }
  v5 = ;
  v6 = [(MailActionCell *)self _temporaryTrimmingTitle:v5];
  v7 = [(MailActionCell *)self titleLabel];
  [v7 setText:v6];

  v8 = [v14 imageName];
  v9 = [v8 containsString:@"custom"];

  v10 = [v14 imageName];
  if (v9)
  {
    [UIImage imageNamed:v10 inBundle:0 withConfiguration:0];
  }

  else
  {
    [UIImage systemImageNamed:v10 withConfiguration:0];
  }
  v11 = ;
  v12 = [(MailActionCell *)self imageView];
  [v12 setImage:v11];

  if (MUISolariumFeatureEnabled())
  {
    [(MailActionCell *)self _updateTitleLabelTextColor];
  }

  [(MailActionCell *)self _updateImageViewTintColor];
  v13 = [v14 accessibilityIdentifier];
  [(MailActionCell *)self setAccessibilityIdentifier:v13];
}

- (id)_temporaryTrimmingTitle:(id)a3
{
  v3 = [a3 ef_stringByTrimmingWhitespaceAndNewlineCharacters];
  if ([v3 isEqualToString:@"Notify Me…"])
  {
    v4 = @"Notify Me of Replies";
  }

  else
  {
    if (![v3 isEqualToString:@"Move Message…"])
    {
      goto LABEL_6;
    }

    v4 = @"Move Message";
  }

  v3 = v4;
LABEL_6:

  return v3;
}

- (void)prepareForReuse
{
  v11.receiver = self;
  v11.super_class = MailActionCell;
  [(MailActionCell *)&v11 prepareForReuse];
  v3 = [(MailActionCell *)self titleLabel];
  [v3 setText:0];

  v4 = [(MailActionCell *)self titleLabel];
  v5 = [v4 layer];
  [v5 setContents:0];

  v6 = [(MailActionCell *)self titleLabel];
  [v6 setTextColor:0];

  v7 = [(MailActionCell *)self imageView];
  [v7 setImage:0];

  v8 = [(MailActionCell *)self imageView];
  v9 = [v8 layer];
  [v9 setContents:0];

  v10 = [(MailActionCell *)self imageView];
  [v10 setTintColor:0];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(MailActionCell *)self isHighlighted]!= a3)
  {
    v5 = [(MailActionCell *)self titleLabel];
    v6 = [v5 layer];
    v7 = [v6 contents];

    v10.receiver = self;
    v10.super_class = MailActionCell;
    [(MailActionCell *)&v10 setHighlighted:v3];
    v8 = [(MailActionCell *)self titleLabel];
    v9 = [v8 layer];
    [v9 setContents:v7];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(MailActionCell *)self isSelected]!= a3)
  {
    v5 = [(MailActionCell *)self titleLabel];
    v6 = [v5 layer];
    v7 = [v6 contents];

    v10.receiver = self;
    v10.super_class = MailActionCell;
    [(MailActionCell *)&v10 setSelected:v3];
    v8 = [(MailActionCell *)self titleLabel];
    v9 = [v8 layer];
    [v9 setContents:v7];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MailActionCell;
  [(MailActionCell *)&v13 traitCollectionDidChange:v4];
  [(MailActionCell *)self _updateImageViewTintColor];
  [(MailActionCell *)self _updateImageViewSymbolConfiguration];
  [(MailActionCell *)self _updateTitleLabelTextColor];
  v5 = [(MailActionCell *)self dynamicConstraints];

  if (v5)
  {
    v6 = [v4 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

    v8 = [(MailActionCell *)self traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = UIContentSizeCategoryIsAccessibilityCategory(v9);

    if (IsAccessibilityCategory != v10)
    {
      v11 = [(MailActionCell *)self dynamicConstraints];
      [NSLayoutConstraint deactivateConstraints:v11];

      [(MailActionCell *)self _updateDynamicConstraints];
      v12 = [(MailActionCell *)self dynamicConstraints];
      [NSLayoutConstraint activateConstraints:v12];
    }
  }
}

- (void)_updateDynamicConstraints
{
  v18 = [(MailActionCell *)self titleLabel];
  if (v18)
  {
    v3 = +[NSMutableArray array];
    v4 = [(MailActionCell *)self contentView];
    v5 = [(MailActionCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

    if (IsAccessibilityCategory)
    {
      v8 = [v18 topAnchor];
      v9 = [v4 topAnchor];
      v10 = [v8 constraintEqualToAnchor:v9 constant:15.0];
      [v3 addObject:v10];

      v11 = [v4 bottomAnchor];
      v12 = [v18 bottomAnchor];
      v13 = [v11 constraintEqualToAnchor:v12 constant:15.0];
      [v3 addObject:v13];
    }

    else
    {
      v11 = [(MailActionCell *)self displayMetrics];
      v14 = [v18 firstBaselineAnchor];
      v15 = [v4 topAnchor];
      [v11 topToFirstBaselineSpacingInMailActionCardVerticalGroup];
      v16 = [v14 constraintEqualToAnchor:v15 constant:?];
      [v3 addObject:v16];

      v12 = [v4 bottomAnchor];
      v13 = [v18 lastBaselineAnchor];
      [v11 bottomToLastBaselineInMailActionCardVerticalGroup];
      v17 = [v12 constraintEqualToAnchor:v13 constant:?];
      [v3 addObject:v17];
    }

    [(MailActionCell *)self setDynamicConstraints:v3];
  }
}

+ (double)approximateHeightForAccessibilityContentSizeCategory
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  if (!IsAccessibilityCategory)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"MailActionCell.m" lineNumber:238 description:@"Unexpectedly attempted to calculate approximate height for non-accessibility text sizes"];
  }

  v7 = +[_MailActionCellTitleLabel preferredFontForDefaultTitle];
  [v7 lineHeight];
  v9 = v8 + 30.0;

  return v9;
}

- (void)setUseActionSheetStyle:(BOOL)a3
{
  if (self->_useActionSheetStyle != a3)
  {
    v3 = a3;
    self->_useActionSheetStyle = a3;
    v4 = [(MailActionCell *)self titleLabel];
    [v4 setUseActionSheetStyle:v3];
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
    if ((isKindOfClass & 1) != 0 && (-[MailActionCell cardAction](self, "cardAction"), v10 = objc_claimAutoreleasedReturnValue(), [v10 isDestructive]))
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

    v7 = [(MailActionCell *)self titleLabel];
    [v7 setTextColor:v4];

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
    v10 = [(MailActionCell *)self traitCollection];
    if ([v10 userInterfaceStyle] == 2)
    {
      +[UIColor systemWhiteColor];
    }

    else
    {
      +[UIColor systemBlueColor];
    }
    v8 = ;
    v9 = [(MailActionCell *)self titleLabel];
    [v9 setTextColor:v8];
  }

LABEL_16:
}

- (void)_updateImageViewSymbolConfiguration
{
  v3 = [(MailActionCell *)self imageView];
  v2 = [UIImage mf_symbolConfigurationForView:19];
  [v3 setPreferredSymbolConfiguration:v2];
}

- (void)_updateImageViewTintColor
{
  v3 = [(MailActionCell *)self cardAction];
  v12 = [v3 tintColor];

  if (!MUISolariumFeatureEnabled())
  {
    if (v12)
    {
      v8 = 0;
      v9 = v12;
    }

    else
    {
      v3 = [(MailActionCell *)self traitCollection];
      if ([v3 userInterfaceStyle] == 1)
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

    v11 = [(MailActionCell *)self imageView];
    [v11 setTintColor:v9];

    if (v8)
    {
    }

    if (v12)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) != 0 && (-[MailActionCell cardAction](self, "cardAction"), v3 = objc_claimAutoreleasedReturnValue(), [v3 isDestructive]))
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

  v10 = [(MailActionCell *)self imageView];
  [v10 setTintColor:v5];

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