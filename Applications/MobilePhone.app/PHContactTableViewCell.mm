@interface PHContactTableViewCell
+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category;
+ (UIEdgeInsets)tableViewContentInset;
+ (double)avatarLayoutGuideWidthAnchorLayoutConstraintConstant:(id)constant;
+ (double)titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:(id)size;
+ (id)actionButtonImageForActionType:(id)type;
+ (id)imageForActionType:(id)type;
- (NSDirectionalEdgeInsets)rootViewLayoutMargins;
- (TUFeatureFlags)featureFlags;
- (double)avatarLayoutGuideLeadingAnchorLayoutConstraintConstant;
- (double)avatarLayoutGuideWidthAnchorLayoutConstraintConstant;
- (double)subtitleLabelLeadingLayoutConstraintConstant;
- (id)loadRootViewAndContentViews;
- (void)_updateLayout;
- (void)actionButtonTapped:(id)tapped;
- (void)commonInit;
- (void)setActionButtonTappedHandler:(id)handler;
- (void)setActionType:(id)type;
- (void)setAvatarViewController:(id)controller;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)updateFontsAndLayoutMetrics;
- (void)updateRootView;
@end

@implementation PHContactTableViewCell

+ (double)avatarLayoutGuideWidthAnchorLayoutConstraintConstant:(id)constant
{
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(constant);
  result = 45.0;
  if (IsAccessibilityCategory)
  {
    return 0.0;
  }

  return result;
}

+ (double)titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:(id)size
{
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(size);
  result = 10.0;
  if (IsAccessibilityCategory)
  {
    return 0.0;
  }

  return result;
}

+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category
{
  categoryCopy = category;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = 0.0;
  if (([v5 phoneRecentsAvatarsEnabled] & 1) == 0)
  {
    [self avatarLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:categoryCopy];
    v6 = v7 + 0.0;
  }

  [self avatarLayoutGuideWidthAnchorLayoutConstraintConstant:categoryCopy];
  v9 = v8;
  [self titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:categoryCopy];
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

+ (id)imageForActionType:(id)type
{
  typeCopy = type;
  if ([CNActionTypeAudioCall isEqualToString:typeCopy])
  {
    v4 = +[UIImage favoritesAudioGlyphImage];
LABEL_13:
    v5 = v4;
    goto LABEL_14;
  }

  if ([CNActionTypeMail isEqualToString:typeCopy])
  {
    v4 = +[UIImage favoritesMailGlyphImage];
    goto LABEL_13;
  }

  if ([CNActionTypeMessage isEqualToString:typeCopy])
  {
    v4 = +[UIImage favoritesMessageGlyphImage];
    goto LABEL_13;
  }

  if ([CNActionTypeTTYCall isEqualToString:typeCopy])
  {
    v4 = +[UIImage favoritesTTYDirectGlyphImage];
    goto LABEL_13;
  }

  if ([CNActionTypeTTYRelayCall isEqualToString:typeCopy])
  {
    v4 = +[UIImage favoritesTTYRelayGlyphImage];
    goto LABEL_13;
  }

  if ([CNActionTypeVideoCall isEqualToString:typeCopy])
  {
    v4 = +[UIImage favoritesVideoGlyphImage];
    goto LABEL_13;
  }

  v5 = 0;
LABEL_14:

  return v5;
}

+ (id)actionButtonImageForActionType:(id)type
{
  typeCopy = type;
  if ([CNActionTypeAudioCall isEqualToString:typeCopy])
  {
    v4 = +[UIImage recentsAudioCallImage];
LABEL_10:
    v5 = v4;
    goto LABEL_11;
  }

  if ([CNActionTypeMail isEqualToString:typeCopy])
  {
    v4 = +[UIImage mailActionImage];
    goto LABEL_10;
  }

  if ([CNActionTypeMessage isEqualToString:typeCopy])
  {
    v4 = +[UIImage messagesActionImage];
    goto LABEL_10;
  }

  if ([CNActionTypeTTYCall isEqualToString:typeCopy] || objc_msgSend(CNActionTypeTTYRelayCall, "isEqualToString:", typeCopy))
  {
    v4 = +[UIImage TTYActionImage];
    goto LABEL_10;
  }

  if ([CNActionTypeVideoCall isEqualToString:typeCopy])
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

  featureFlags = [(PHContactTableViewCell *)self featureFlags];
  self->_tapTargets = [featureFlags recentsCallTapTargetsEnabled];

  v5.receiver = self;
  v5.super_class = PHContactTableViewCell;
  [(PHTableViewCell *)&v5 commonInit];
}

- (id)loadRootViewAndContentViews
{
  v24.receiver = self;
  v24.super_class = PHContactTableViewCell;
  loadRootViewAndContentViews = [(PHDoubleLineTableViewCell *)&v24 loadRootViewAndContentViews];
  [(PHContactTableViewCell *)self setAccessoryType:4];
  v4 = objc_alloc_init(UIImageView);
  subtitleImageView = self->_subtitleImageView;
  self->_subtitleImageView = v4;

  v6 = +[UIColor dynamicTertiaryLabelColor];
  [(UIImageView *)self->_subtitleImageView setTintColor:v6];

  [(UIImageView *)self->_subtitleImageView setUserInteractionEnabled:0];
  [(UIImageView *)self->_subtitleImageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v7 = [NUIContainerStackView alloc];
  subtitleImageView = [(PHContactTableViewCell *)self subtitleImageView];
  v28[0] = subtitleImageView;
  subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
  v28[1] = subtitleLabel;
  v10 = [NSArray arrayWithObjects:v28 count:2];
  v11 = [v7 initWithArrangedSubviews:v10];
  subtitleStackView = self->_subtitleStackView;
  self->_subtitleStackView = v11;

  [(NUIContainerStackView *)self->_subtitleStackView setAlignment:3];
  v13 = [NUIContainerGridView alloc];
  titleLabel = [(PHTableViewCell *)self titleLabel];
  v26 = titleLabel;
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

    actionButton = [(PHContactTableViewCell *)self actionButton];
    [actionButton addTarget:self action:"actionButtonTapped:" forControlEvents:64];
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

  view = [(CNAvatarViewController *)self->_avatarViewController view];
  v6 = view;
  if (view)
  {
    LODWORD(v5) = 1148846080;
    [view setContentCompressionResistancePriority:0 forAxis:v5];
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
  gridView = [(PHContactTableViewCell *)self gridView];
  [gridView setPreservesSuperviewLayoutMargins:1];
}

- (void)actionButtonTapped:(id)tapped
{
  actionButtonTappedHandler = [(PHContactTableViewCell *)self actionButtonTappedHandler];

  if (actionButtonTappedHandler)
  {
    actionButtonTappedHandler2 = [(PHContactTableViewCell *)self actionButtonTappedHandler];
    actionButtonTappedHandler2[2]();
  }
}

- (void)setActionButtonTappedHandler:(id)handler
{
  self->_actionButtonTappedHandler = objc_retainBlock(handler);

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
  subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel effectiveFirstBaselineOffsetFromTop];
  [(NUIContainerStackView *)self->_subtitleStackView setCustomFirstBaselineOffsetFromTop:?];

  [(PHDoubleLineTableViewCell *)self subtitleLabelFirstBaselineLayoutConstraintConstant];
  [(NUIContainerGridView *)self->_gridView setRowSpacing:?];
  featureFlags = [(PHContactTableViewCell *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

  v6 = 10.0;
  if ((phoneRecentsAvatarsEnabled & 1) == 0)
  {
    [(PHTableViewCell *)self titleLabelLeadingLayoutConstraintConstant];
  }

  [(NUIContainerGridView *)self->_gridView setColumnSpacing:v6];
  [(PHContactTableViewCell *)self subtitleLabelLeadingLayoutConstraintConstant];
  [(NUIContainerStackView *)self->_subtitleStackView setSpacing:?];
  if ([(NUIContainerGridView *)self->_gridView numberOfColumns]>= 2)
  {
    view = [(CNAvatarViewController *)self->_avatarViewController view];
    [view setMinimumLayoutSize:{45.0, 45.0}];

    view2 = [(CNAvatarViewController *)self->_avatarViewController view];
    [view2 setMaximumLayoutSize:{45.0, 45.0}];

    traitCollection = [(PHContactTableViewCell *)self traitCollection];
    isPreferredContentSizeCategoryAccessible = [traitCollection isPreferredContentSizeCategoryAccessible];
    v10 = [(NUIContainerGridView *)self->_gridView columnAtIndex:0];
    [v10 setHidden:isPreferredContentSizeCategoryAccessible];
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
  featureFlags = [(PHContactTableViewCell *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

  if (phoneRecentsAvatarsEnabled)
  {
    [(PHContactTableViewCell *)self avatarLayoutGuideLeadingAnchorLayoutConstraintConstant];
    v14 = v13;
    v6 = 12.0;
    v4 = 12.0;
  }

  else
  {
    v15 = +[UITraitCollection _currentTraitCollection];
    isPreferredContentSizeCategoryAccessible = [v15 isPreferredContentSizeCategoryAccessible];

    if (isPreferredContentSizeCategoryAccessible)
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

- (void)setActionType:(id)type
{
  typeCopy = type;
  actionType = self->_actionType;
  v16 = typeCopy;
  if (typeCopy)
  {
    v6 = [(NSString *)actionType isEqualToString:typeCopy];
    typeCopy = v16;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else if (!actionType)
  {
    goto LABEL_7;
  }

  v7 = [typeCopy copy];
  v8 = self->_actionType;
  self->_actionType = v7;

  v9 = [objc_opt_class() imageForActionType:v16];
  subtitleImageView = [(PHContactTableViewCell *)self subtitleImageView];
  [subtitleImageView setImage:v9];

  if ([(PHContactTableViewCell *)self tapTargets])
  {
    v11 = [objc_opt_class() actionButtonImageForActionType:v16];
    [(PHContactTableViewCell *)self setActionButtonImage:v11];

    actionButton = [(PHContactTableViewCell *)self actionButton];
    actionButtonImage = [(PHContactTableViewCell *)self actionButtonImage];
    [actionButton configureForImage:actionButtonImage];

    actionButton2 = [(PHContactTableViewCell *)self actionButton];
    [actionButton2 sizeToFit];

    actionButton3 = [(PHContactTableViewCell *)self actionButton];
    [(PHContactTableViewCell *)self setAccessoryView:actionButton3];
  }

LABEL_7:

  _objc_release_x1();
}

- (void)setAvatarViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_avatarViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_avatarViewController, controller);
    [(PHContactTableViewCell *)self updateRootView];
    [(PHContactTableViewCell *)self updateFontsAndLayoutMetrics];
    controllerCopy = v6;
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = PHContactTableViewCell;
  [(PHContactTableViewCell *)&v7 setEditing:editing animated:animated];
  avatarViewController = [(PHContactTableViewCell *)self avatarViewController];
  [avatarViewController setThreeDTouchEnabled:!editingCopy];
}

- (double)avatarLayoutGuideLeadingAnchorLayoutConstraintConstant
{
  v3 = objc_opt_class();
  traitCollection = [(PHContactTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [v3 avatarLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:preferredContentSizeCategory];
  v7 = v6;

  return v7;
}

- (double)avatarLayoutGuideWidthAnchorLayoutConstraintConstant
{
  v3 = objc_opt_class();
  traitCollection = [(PHContactTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [v3 avatarLayoutGuideWidthAnchorLayoutConstraintConstant:preferredContentSizeCategory];
  v7 = v6;

  return v7;
}

- (double)subtitleLabelLeadingLayoutConstraintConstant
{
  subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
  font = [subtitleLabel font];
  fontDescriptor = [font fontDescriptor];
  v5 = [fontDescriptor objectForKey:UIFontDescriptorTextStyleAttribute];

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