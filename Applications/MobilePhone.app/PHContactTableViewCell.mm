@interface PHContactTableViewCell
+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3;
+ (UIEdgeInsets)tableViewContentInset;
+ (double)avatarLayoutGuideWidthAnchorLayoutConstraintConstant:(id)a3;
+ (double)titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:(id)a3;
+ (id)actionButtonImageForActionType:(id)a3;
+ (id)imageForActionType:(id)a3;
- (NSDirectionalEdgeInsets)rootViewLayoutMargins;
- (TUFeatureFlags)featureFlags;
- (double)avatarLayoutGuideLeadingAnchorLayoutConstraintConstant;
- (double)avatarLayoutGuideWidthAnchorLayoutConstraintConstant;
- (double)subtitleLabelLeadingLayoutConstraintConstant;
- (id)loadRootViewAndContentViews;
- (void)_updateLayout;
- (void)actionButtonTapped:(id)a3;
- (void)commonInit;
- (void)setActionButtonTappedHandler:(id)a3;
- (void)setActionType:(id)a3;
- (void)setAvatarViewController:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)updateFontsAndLayoutMetrics;
- (void)updateRootView;
@end

@implementation PHContactTableViewCell

+ (double)avatarLayoutGuideWidthAnchorLayoutConstraintConstant:(id)a3
{
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(a3);
  result = 45.0;
  if (IsAccessibilityCategory)
  {
    return 0.0;
  }

  return result;
}

+ (double)titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:(id)a3
{
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(a3);
  result = 10.0;
  if (IsAccessibilityCategory)
  {
    return 0.0;
  }

  return result;
}

+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = 0.0;
  if (([v5 phoneRecentsAvatarsEnabled] & 1) == 0)
  {
    [a1 avatarLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:v4];
    v6 = v7 + 0.0;
  }

  [a1 avatarLayoutGuideWidthAnchorLayoutConstraintConstant:v4];
  v9 = v8;
  [a1 titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:v4];
  v11 = v6 + v9 + v10;

  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = v11;
  result.right = v14;
  result.bottom = v13;
  result.left = v15;
  result.top = v12;
  return result;
}

+ (UIEdgeInsets)tableViewContentInset
{
  v2 = objc_alloc_init(TUFeatureFlags);
  if ([v2 phoneRecentsAvatarsEnabled])
  {
    v3 = -12.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v7;
  return result;
}

+ (id)imageForActionType:(id)a3
{
  v3 = a3;
  if ([CNActionTypeAudioCall isEqualToString:v3])
  {
    v4 = +[UIImage favoritesAudioGlyphImage];
LABEL_13:
    v5 = v4;
    goto LABEL_14;
  }

  if ([CNActionTypeMail isEqualToString:v3])
  {
    v4 = +[UIImage favoritesMailGlyphImage];
    goto LABEL_13;
  }

  if ([CNActionTypeMessage isEqualToString:v3])
  {
    v4 = +[UIImage favoritesMessageGlyphImage];
    goto LABEL_13;
  }

  if ([CNActionTypeTTYCall isEqualToString:v3])
  {
    v4 = +[UIImage favoritesTTYDirectGlyphImage];
    goto LABEL_13;
  }

  if ([CNActionTypeTTYRelayCall isEqualToString:v3])
  {
    v4 = +[UIImage favoritesTTYRelayGlyphImage];
    goto LABEL_13;
  }

  if ([CNActionTypeVideoCall isEqualToString:v3])
  {
    v4 = +[UIImage favoritesVideoGlyphImage];
    goto LABEL_13;
  }

  v5 = 0;
LABEL_14:

  return v5;
}

+ (id)actionButtonImageForActionType:(id)a3
{
  v3 = a3;
  if ([CNActionTypeAudioCall isEqualToString:v3])
  {
    v4 = +[UIImage recentsAudioCallImage];
LABEL_10:
    v5 = v4;
    goto LABEL_11;
  }

  if ([CNActionTypeMail isEqualToString:v3])
  {
    v4 = +[UIImage mailActionImage];
    goto LABEL_10;
  }

  if ([CNActionTypeMessage isEqualToString:v3])
  {
    v4 = +[UIImage messagesActionImage];
    goto LABEL_10;
  }

  if ([CNActionTypeTTYCall isEqualToString:v3] || objc_msgSend(CNActionTypeTTYRelayCall, "isEqualToString:", v3))
  {
    v4 = +[UIImage TTYActionImage];
    goto LABEL_10;
  }

  if ([CNActionTypeVideoCall isEqualToString:v3])
  {
    v4 = +[UIImage recentsVideoCallImage];
    goto LABEL_10;
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (TUFeatureFlags)featureFlags
{
  featureFlags = self->_featureFlags;
  if (!featureFlags)
  {
    v4 = objc_alloc_init(TUFeatureFlags);
    v5 = self->_featureFlags;
    self->_featureFlags = v4;

    featureFlags = self->_featureFlags;
  }

  return featureFlags;
}

- (void)commonInit
{
  actionType = self->_actionType;
  self->_actionType = 0;

  v4 = [(PHContactTableViewCell *)self featureFlags];
  self->_tapTargets = [v4 recentsCallTapTargetsEnabled];

  v5.receiver = self;
  v5.super_class = PHContactTableViewCell;
  [(PHTableViewCell *)&v5 commonInit];
}

- (id)loadRootViewAndContentViews
{
  v24.receiver = self;
  v24.super_class = PHContactTableViewCell;
  v3 = [(PHDoubleLineTableViewCell *)&v24 loadRootViewAndContentViews];
  [(PHContactTableViewCell *)self setAccessoryType:4];
  v4 = objc_alloc_init(UIImageView);
  subtitleImageView = self->_subtitleImageView;
  self->_subtitleImageView = v4;

  v6 = +[UIColor dynamicTertiaryLabelColor];
  [(UIImageView *)self->_subtitleImageView setTintColor:v6];

  [(UIImageView *)self->_subtitleImageView setUserInteractionEnabled:0];
  [(UIImageView *)self->_subtitleImageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v7 = [NUIContainerStackView alloc];
  v8 = [(PHContactTableViewCell *)self subtitleImageView];
  v28[0] = v8;
  v9 = [(PHTableViewCell *)self subtitleLabel];
  v28[1] = v9;
  v10 = [NSArray arrayWithObjects:v28 count:2];
  v11 = [v7 initWithArrangedSubviews:v10];
  subtitleStackView = self->_subtitleStackView;
  self->_subtitleStackView = v11;

  [(NUIContainerStackView *)self->_subtitleStackView setAlignment:3];
  v13 = [NUIContainerGridView alloc];
  v14 = [(PHTableViewCell *)self titleLabel];
  v26 = v14;
  v15 = [NSArray arrayWithObjects:&v26 count:1];
  v27[0] = v15;
  v25 = self->_subtitleStackView;
  v16 = [NSArray arrayWithObjects:&v25 count:1];
  v27[1] = v16;
  v17 = [NSArray arrayWithObjects:v27 count:2];
  v18 = [v13 initWithArrangedSubviewRows:v17];
  gridView = self->_gridView;
  self->_gridView = v18;

  [(NUIContainerGridView *)self->_gridView setVerticalAlignment:3];
  [(NUIContainerGridView *)self->_gridView setLayoutMarginsRelativeArrangement:1];
  [(NUIContainerGridView *)self->_gridView setBaselineRelativeArrangement:1];
  if ([(PHContactTableViewCell *)self tapTargets])
  {
    v20 = objc_alloc_init(TPAccessoryButton);
    [(PHContactTableViewCell *)self setActionButton:v20];

    v21 = [(PHContactTableViewCell *)self actionButton];
    [v21 addTarget:self action:"actionButtonTapped:" forControlEvents:64];
  }

  v22 = self->_gridView;

  return v22;
}

- (void)updateRootView
{
  if (self->_hasAvatarView)
  {
    v3 = [(NUIContainerGridView *)self->_gridView arrangedSubviewInColumnAtIndex:0 rowAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(CNAvatarViewController *)self->_avatarViewController view];
  v6 = v4;
  if (v4)
  {
    LODWORD(v5) = 1148846080;
    [v4 setContentCompressionResistancePriority:0 forAxis:v5];
    LODWORD(v7) = 1148846080;
    [v6 setContentCompressionResistancePriority:1 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [v6 setContentHuggingPriority:0 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [v6 setContentHuggingPriority:1 forAxis:v9];
    gridView = self->_gridView;
    if (v3)
    {
      [(NUIContainerGridView *)self->_gridView replaceArrangedSubview:v6 inColumnAtIndex:0 rowAtIndex:0];
    }

    else
    {
      v15[0] = v6;
      v15[1] = v6;
      v12 = [NSArray arrayWithObjects:v15 count:2];
      v13 = [(NUIContainerGridView *)gridView insertColumnAtIndex:0 withArrangedSubviews:v12];
    }

    v11 = 1;
    [(NUIContainerGridView *)self->_gridView setAlignment:1 forView:v6 inAxis:0];
    [(NUIContainerGridView *)self->_gridView setAlignment:3 forView:v6 inAxis:1];
    goto LABEL_11;
  }

  if (v3)
  {
    [(NUIContainerGridView *)self->_gridView removeColumnAtIndex:0];
    v11 = 0;
LABEL_11:
    self->_hasAvatarView = v11;
  }

  [v3 removeFromSuperview];
  [(PHContactTableViewCell *)self setPreservesSuperviewLayoutMargins:1];
  v14 = [(PHContactTableViewCell *)self gridView];
  [v14 setPreservesSuperviewLayoutMargins:1];
}

- (void)actionButtonTapped:(id)a3
{
  v4 = [(PHContactTableViewCell *)self actionButtonTappedHandler];

  if (v4)
  {
    v5 = [(PHContactTableViewCell *)self actionButtonTappedHandler];
    v5[2]();
  }
}

- (void)setActionButtonTappedHandler:(id)a3
{
  self->_actionButtonTappedHandler = objc_retainBlock(a3);

  _objc_release_x1();
}

- (void)updateFontsAndLayoutMetrics
{
  v3.receiver = self;
  v3.super_class = PHContactTableViewCell;
  [(PHTableViewCell *)&v3 updateFontsAndLayoutMetrics];
  [(PHContactTableViewCell *)self _updateLayout];
}

- (void)_updateLayout
{
  v3 = [(PHTableViewCell *)self subtitleLabel];
  [v3 effectiveFirstBaselineOffsetFromTop];
  [(NUIContainerStackView *)self->_subtitleStackView setCustomFirstBaselineOffsetFromTop:?];

  [(PHDoubleLineTableViewCell *)self subtitleLabelFirstBaselineLayoutConstraintConstant];
  [(NUIContainerGridView *)self->_gridView setRowSpacing:?];
  v4 = [(PHContactTableViewCell *)self featureFlags];
  v5 = [v4 phoneRecentsAvatarsEnabled];

  v6 = 10.0;
  if ((v5 & 1) == 0)
  {
    [(PHTableViewCell *)self titleLabelLeadingLayoutConstraintConstant];
  }

  [(NUIContainerGridView *)self->_gridView setColumnSpacing:v6];
  [(PHContactTableViewCell *)self subtitleLabelLeadingLayoutConstraintConstant];
  [(NUIContainerStackView *)self->_subtitleStackView setSpacing:?];
  if ([(NUIContainerGridView *)self->_gridView numberOfColumns]>= 2)
  {
    v7 = [(CNAvatarViewController *)self->_avatarViewController view];
    [v7 setMinimumLayoutSize:{45.0, 45.0}];

    v8 = [(CNAvatarViewController *)self->_avatarViewController view];
    [v8 setMaximumLayoutSize:{45.0, 45.0}];

    v11 = [(PHContactTableViewCell *)self traitCollection];
    v9 = [v11 isPreferredContentSizeCategoryAccessible];
    v10 = [(NUIContainerGridView *)self->_gridView columnAtIndex:0];
    [v10 setHidden:v9];
  }
}

- (NSDirectionalEdgeInsets)rootViewLayoutMargins
{
  v20.receiver = self;
  v20.super_class = PHContactTableViewCell;
  [(PHDoubleLineTableViewCell *)&v20 rootViewLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(PHContactTableViewCell *)self avatarLayoutGuideLeadingAnchorLayoutConstraintConstant];
  v10 = v9;
  v11 = [(PHContactTableViewCell *)self featureFlags];
  v12 = [v11 phoneRecentsAvatarsEnabled];

  if (v12)
  {
    [(PHContactTableViewCell *)self avatarLayoutGuideLeadingAnchorLayoutConstraintConstant];
    v14 = v13;
    v6 = 12.0;
    v4 = 12.0;
  }

  else
  {
    v15 = +[UITraitCollection _currentTraitCollection];
    v16 = [v15 isPreferredContentSizeCategoryAccessible];

    if (v16)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v8;
    }
  }

  v17 = v4;
  v18 = v10;
  v19 = v6;
  result.trailing = v14;
  result.bottom = v19;
  result.leading = v18;
  result.top = v17;
  return result;
}

- (void)setActionType:(id)a3
{
  v4 = a3;
  actionType = self->_actionType;
  v16 = v4;
  if (v4)
  {
    v6 = [(NSString *)actionType isEqualToString:v4];
    v4 = v16;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else if (!actionType)
  {
    goto LABEL_7;
  }

  v7 = [v4 copy];
  v8 = self->_actionType;
  self->_actionType = v7;

  v9 = [objc_opt_class() imageForActionType:v16];
  v10 = [(PHContactTableViewCell *)self subtitleImageView];
  [v10 setImage:v9];

  if ([(PHContactTableViewCell *)self tapTargets])
  {
    v11 = [objc_opt_class() actionButtonImageForActionType:v16];
    [(PHContactTableViewCell *)self setActionButtonImage:v11];

    v12 = [(PHContactTableViewCell *)self actionButton];
    v13 = [(PHContactTableViewCell *)self actionButtonImage];
    [v12 configureForImage:v13];

    v14 = [(PHContactTableViewCell *)self actionButton];
    [v14 sizeToFit];

    v15 = [(PHContactTableViewCell *)self actionButton];
    [(PHContactTableViewCell *)self setAccessoryView:v15];
  }

LABEL_7:

  _objc_release_x1();
}

- (void)setAvatarViewController:(id)a3
{
  v5 = a3;
  if (self->_avatarViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_avatarViewController, a3);
    [(PHContactTableViewCell *)self updateRootView];
    [(PHContactTableViewCell *)self updateFontsAndLayoutMetrics];
    v5 = v6;
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PHContactTableViewCell;
  [(PHContactTableViewCell *)&v7 setEditing:a3 animated:a4];
  v6 = [(PHContactTableViewCell *)self avatarViewController];
  [v6 setThreeDTouchEnabled:!v4];
}

- (double)avatarLayoutGuideLeadingAnchorLayoutConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(PHContactTableViewCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  [v3 avatarLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:v5];
  v7 = v6;

  return v7;
}

- (double)avatarLayoutGuideWidthAnchorLayoutConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(PHContactTableViewCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  [v3 avatarLayoutGuideWidthAnchorLayoutConstraintConstant:v5];
  v7 = v6;

  return v7;
}

- (double)subtitleLabelLeadingLayoutConstraintConstant
{
  v2 = [(PHTableViewCell *)self subtitleLabel];
  v3 = [v2 font];
  v4 = [v3 fontDescriptor];
  v5 = [v4 objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v5)
  {
    v6 = [UIFontMetrics metricsForTextStyle:v5];
    [v6 scaledValueForValue:4.0];
    v8 = v7;
  }

  else
  {
    v8 = 4.0;
  }

  return v8;
}

@end