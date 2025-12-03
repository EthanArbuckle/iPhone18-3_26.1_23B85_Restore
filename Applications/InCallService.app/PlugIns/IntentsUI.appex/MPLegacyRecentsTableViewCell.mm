@interface MPLegacyRecentsTableViewCell
+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category isEditing:(BOOL)editing;
+ (double)callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:(id)size;
+ (double)callTypeIconLayoutGuideWidthAnchorLayoutConstraintConstant:(id)constant;
+ (double)largestCallTypeIconWidth;
+ (double)leftTitleSeparatorInsetForContentSizeCategory:(id)category;
+ (double)titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:(id)size;
- (BOOL)isAccessibilityConstraintsEnabled;
- (NSDirectionalEdgeInsets)rootViewLayoutMargins;
- (TUFeatureFlags)featureFlags;
- (double)callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstant;
- (double)dateLabelTrailingLayoutConstraintConstant;
- (double)titleLabelLeadingAnchorLayoutConstraintConstant;
- (id)loadRootViewAndContentViews;
- (void)callButtonTapped:(id)tapped;
- (void)commonInit;
- (void)configureGridViewArrangedSubviews;
- (void)configureWithRecentsItem:(id)item recentCall:(id)call;
- (void)enableCallButton:(BOOL)button;
- (void)prepareForReuse;
- (void)setAvatarViewController:(id)controller;
- (void)setCallButtonTappedHandler:(id)handler;
- (void)setItem:(id)item;
- (void)setTapTargets:(BOOL)targets;
- (void)showContainerViewDebugBoundingBox;
- (void)updateDateLabelAlignment;
- (void)updateFonts;
- (void)updateFontsAndLayoutMetrics;
- (void)updateRootView;
- (void)updateTextColor;
@end

@implementation MPLegacyRecentsTableViewCell

+ (double)largestCallTypeIconWidth
{
  v2 = +[UIImage recentsOutgoingAudioCallGlyphImage];
  v20[0] = v2;
  v3 = +[UIImage recentsOutgoingVideoCallGlyphImage];
  v20[1] = v3;
  v4 = +[UIImage recentsTTYRelayGlyphImage];
  v20[2] = v4;
  v5 = +[UIImage recentsTTYDirectGlyphImage];
  v20[3] = v5;
  v6 = [NSArray arrayWithObjects:v20 count:4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v15 + 1) + 8 * i) size];
        if (v11 < v13)
        {
          v11 = v13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

+ (double)leftTitleSeparatorInsetForContentSizeCategory:(id)category
{
  categoryCopy = category;
  [self callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:categoryCopy];
  v6 = v5;
  [self callTypeIconLayoutGuideWidthAnchorLayoutConstraintConstant:categoryCopy];
  v8 = v6 + v7;
  [self titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:categoryCopy];
  v10 = v9;

  return v8 + v10;
}

+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category isEditing:(BOOL)editing
{
  editingCopy = editing;
  categoryCopy = category;
  v7 = objc_alloc_init(TUFeatureFlags);
  if ([v7 phoneRecentsAvatarsEnabled])
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(categoryCopy);
    v9 = 55.0;
    if (IsAccessibilityCategory)
    {
      v9 = 0.0;
    }
  }

  else
  {
    [self callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:categoryCopy];
    v11 = v10;
    [self callTypeIconLayoutGuideWidthAnchorLayoutConstraintConstant:categoryCopy];
    v13 = v11 + v12;
    [self titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:categoryCopy];
    v9 = v13 + v14;
  }

  if (editingCopy)
  {
    v15 = v9 + 50.0;
  }

  else
  {
    v15 = v9;
  }

  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = v15;
  result.right = v18;
  result.bottom = v17;
  result.left = v19;
  result.top = v16;
  return result;
}

- (void)commonInit
{
  v4.receiver = self;
  v4.super_class = MPLegacyRecentsTableViewCell;
  [(PHTableViewCell *)&v4 commonInit];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
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

- (id)loadRootViewAndContentViews
{
  v53.receiver = self;
  v53.super_class = MPLegacyRecentsTableViewCell;
  loadRootViewAndContentViews = [(PHDoubleLineTableViewCell *)&v53 loadRootViewAndContentViews];
  [(MPLegacyRecentsTableViewCell *)self setAccessoryType:4];
  titleLabel = [(PHTableViewCell *)self titleLabel];
  [titleLabel setLineBreakMode:4];

  subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel setLineBreakMode:4];

  featureFlags = [(MPLegacyRecentsTableViewCell *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

  v8 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v12 = [v8 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  if (phoneRecentsAvatarsEnabled)
  {
    outgoingIndicator = self->_outgoingIndicator;
    self->_outgoingIndicator = v12;

    [(UIImageView *)self->_outgoingIndicator setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    [(UIImageView *)self->_outgoingIndicator setAccessibilityIdentifier:@"CallDirection"];
    outgoingIndicator = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    v15 = +[UIColor dynamicTertiaryLabelColor];
    [outgoingIndicator setTintColor:v15];
  }

  else
  {
    callTypeIconView = self->_callTypeIconView;
    self->_callTypeIconView = v12;

    [(UIImageView *)self->_callTypeIconView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    v17 = +[UIColor dynamicTertiaryLabelColor];
    [(UIImageView *)self->_callTypeIconView setTintColor:v17];

    [(UIImageView *)self->_callTypeIconView setAccessibilityIdentifier:@"CallTypeIcon"];
    LODWORD(v18) = 1148846080;
    [(UIImageView *)self->_callTypeIconView setContentHuggingPriority:1 forAxis:v18];
    LODWORD(v19) = 1148846080;
    [(UIImageView *)self->_callTypeIconView setContentHuggingPriority:0 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(UIImageView *)self->_callTypeIconView setContentCompressionResistancePriority:1 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(UIImageView *)self->_callTypeIconView setContentCompressionResistancePriority:0 forAxis:v21];
  }

  [(MPLegacyRecentsTableViewCell *)self setMaximumColumnsWithoutAccessibility:3];
  [(MPLegacyRecentsTableViewCell *)self setMaximumColumnsWithAccessibility:2];
  v22 = objc_alloc_init(UIView);
  callTypeIconSizingView = self->_callTypeIconSizingView;
  self->_callTypeIconSizingView = v22;

  [objc_opt_class() largestCallTypeIconWidth];
  v25 = v24;
  [(UIView *)self->_callTypeIconSizingView setMinimumLayoutSize:?];
  [(UIView *)self->_callTypeIconSizingView setMaximumLayoutSize:v25, 1.0];
  v26 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  callerCountLabel = self->_callerCountLabel;
  self->_callerCountLabel = v26;

  [(UILabel *)self->_callerCountLabel setAccessibilityIdentifier:@"MPRecentsTableViewCell_CallerCount"];
  v28 = +[UIColor clearColor];
  [(UILabel *)self->_callerCountLabel setBackgroundColor:v28];

  [(UILabel *)self->_callerCountLabel setAdjustsFontForContentSizeCategory:1];
  LODWORD(v29) = 1148846080;
  [(UILabel *)self->_callerCountLabel setContentHuggingPriority:1 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [(UILabel *)self->_callerCountLabel setContentHuggingPriority:0 forAxis:v30];
  LODWORD(v31) = 1148846080;
  [(UILabel *)self->_callerCountLabel setContentCompressionResistancePriority:1 forAxis:v31];
  LODWORD(v32) = 1148846080;
  [(UILabel *)self->_callerCountLabel setContentCompressionResistancePriority:0 forAxis:v32];
  v33 = [[UIDateLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  callerDateLabel = self->_callerDateLabel;
  self->_callerDateLabel = v33;

  [(UIDateLabel *)self->_callerDateLabel setAccessibilityIdentifier:@"MPRecentsTableViewCell_CallerDate"];
  v35 = +[UIColor clearColor];
  [(UIDateLabel *)self->_callerDateLabel setBackgroundColor:v35];

  [(UIDateLabel *)self->_callerDateLabel setAdjustsFontForContentSizeCategory:1];
  LODWORD(v36) = 1148846080;
  [(UIDateLabel *)self->_callerDateLabel setContentCompressionResistancePriority:0 forAxis:v36];
  LODWORD(v37) = 1148846080;
  [(UIDateLabel *)self->_callerDateLabel setContentCompressionResistancePriority:1 forAxis:v37];
  LODWORD(v38) = 1148846080;
  [(UIDateLabel *)self->_callerDateLabel setContentHuggingPriority:0 forAxis:v38];
  LODWORD(v39) = 1148846080;
  [(UIDateLabel *)self->_callerDateLabel setContentHuggingPriority:1 forAxis:v39];
  v40 = objc_alloc_init(NUIContainerStackView);
  titleStackView = self->_titleStackView;
  self->_titleStackView = v40;

  v42 = objc_alloc_init(NUIContainerStackView);
  subtitleStackView = self->_subtitleStackView;
  self->_subtitleStackView = v42;

  v44 = objc_alloc_init(NUIContainerGridView);
  gridView = self->_gridView;
  self->_gridView = v44;

  [(MPLegacyRecentsTableViewCell *)self updateFonts];
  titleLabel2 = [(PHTableViewCell *)self titleLabel];
  [titleLabel2 effectiveFirstBaselineOffsetFromTop];
  [(NUIContainerStackView *)self->_titleStackView setCustomFirstBaselineOffsetFromTop:?];

  subtitleLabel2 = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel2 effectiveFirstBaselineOffsetFromTop];
  [(NUIContainerStackView *)self->_subtitleStackView setCustomFirstBaselineOffsetFromTop:?];

  [(NUIContainerStackView *)self->_subtitleStackView setSpacing:4.0];
  [(NUIContainerStackView *)self->_titleStackView setSpacing:4.0];
  [(NUIContainerGridView *)self->_gridView setHorizontalAlignment:1];
  [(NUIContainerGridView *)self->_gridView setLayoutMarginsRelativeArrangement:1];
  [(NUIContainerGridView *)self->_gridView setBaselineRelativeArrangement:1];
  [(PHDoubleLineTableViewCell *)self subtitleLabelFirstBaselineLayoutConstraintConstant];
  [(NUIContainerGridView *)self->_gridView setRowSpacing:?];
  featureFlags2 = [(MPLegacyRecentsTableViewCell *)self featureFlags];
  phoneRecentsAvatarsEnabled2 = [featureFlags2 phoneRecentsAvatarsEnabled];

  v50 = 10.0;
  if ((phoneRecentsAvatarsEnabled2 & 1) == 0)
  {
    [(PHTableViewCell *)self titleLabelLeadingLayoutConstraintConstant];
  }

  [(NUIContainerGridView *)self->_gridView setColumnSpacing:v50];
  [(MPLegacyRecentsTableViewCell *)self configureGridViewArrangedSubviews];
  v51 = self->_gridView;

  return v51;
}

- (void)updateFontsAndLayoutMetrics
{
  v10.receiver = self;
  v10.super_class = MPLegacyRecentsTableViewCell;
  [(PHTableViewCell *)&v10 updateFontsAndLayoutMetrics];
  subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
  font = [subtitleLabel font];
  callerDateLabel = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
  [callerDateLabel setFont:font];

  [objc_opt_class() largestCallTypeIconWidth];
  v7 = v6;
  callTypeIconSizingView = [(MPLegacyRecentsTableViewCell *)self callTypeIconSizingView];
  [callTypeIconSizingView setMinimumLayoutSize:{v7, 1.0}];

  callTypeIconSizingView2 = [(MPLegacyRecentsTableViewCell *)self callTypeIconSizingView];
  [callTypeIconSizingView2 setMaximumLayoutSize:{v7, 1.0}];

  [(MPLegacyRecentsTableViewCell *)self configureGridViewArrangedSubviews];
  [(MPLegacyRecentsTableViewCell *)self updateFonts];
}

- (BOOL)isAccessibilityConstraintsEnabled
{
  traitCollection = [(MPLegacyRecentsTableViewCell *)self traitCollection];
  isPreferredContentSizeCategoryAccessible = [traitCollection isPreferredContentSizeCategoryAccessible];

  return isPreferredContentSizeCategoryAccessible;
}

- (void)updateDateLabelAlignment
{
  isAccessibilityConstraintsEnabled = [(MPLegacyRecentsTableViewCell *)self isAccessibilityConstraintsEnabled];
  gridView = [(MPLegacyRecentsTableViewCell *)self gridView];
  callerDateLabel = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
  if (isAccessibilityConstraintsEnabled)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  [gridView setAlignment:v6 forView:callerDateLabel inAxis:1];

  gridView2 = [(MPLegacyRecentsTableViewCell *)self gridView];
  callerDateLabel2 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
  [gridView2 setAlignment:1 forView:callerDateLabel2 inAxis:0];
}

- (NSDirectionalEdgeInsets)rootViewLayoutMargins
{
  v21.receiver = self;
  v21.super_class = MPLegacyRecentsTableViewCell;
  [(PHDoubleLineTableViewCell *)&v21 rootViewLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  featureFlags = [(MPLegacyRecentsTableViewCell *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

  if (phoneRecentsAvatarsEnabled)
  {
    [(MPLegacyRecentsTableViewCell *)self dateLabelTrailingLayoutConstraintConstant];
    v8 = v11;
    contentView = [(MPLegacyRecentsTableViewCell *)self contentView];
    [contentView directionalLayoutMargins];
    v14 = v13;

    v6 = 12.0;
    v4 = 12.0;
  }

  else
  {
    [(MPLegacyRecentsTableViewCell *)self callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstant];
    v14 = v15;
    if ([(MPLegacyRecentsTableViewCell *)self isAccessibilityConstraintsEnabled])
    {
      [(MPLegacyRecentsTableViewCell *)self dateLabelTrailingLayoutConstraintConstant];
      v8 = v16;
    }
  }

  v17 = v4;
  v18 = v14;
  v19 = v6;
  v20 = v8;
  result.trailing = v20;
  result.bottom = v19;
  result.leading = v18;
  result.top = v17;
  return result;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  if (self->_item != itemCopy)
  {
    objc_storeStrong(&self->_item, item);
    localizedCount = [(PKRecentsItem *)itemCopy localizedCount];
    callerCountLabel = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
    [callerCountLabel setText:localizedCount];

    date = [(PKRecentsItem *)itemCopy date];
    callerDateLabel = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
    [callerDateLabel setDate:date];

    localizedSubtitle = [(PKRecentsItem *)itemCopy localizedSubtitle];
    subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
    [subtitleLabel setText:localizedSubtitle];

    localizedValidHandlesTitle = [(PKRecentsItem *)itemCopy localizedValidHandlesTitle];
    titleLabel = [(PHTableViewCell *)self titleLabel];
    [titleLabel setText:localizedValidHandlesTitle];

    if (![(MPLegacyRecentsTableViewCell *)self isAccessibilityConstraintsEnabled])
    {
      localizedCount2 = [(PKRecentsItem *)itemCopy localizedCount];
      v14 = [localizedCount2 length];

      if (v14)
      {
        localizedValidHandlesTitle2 = [(PKRecentsItem *)itemCopy localizedValidHandlesTitle];
        localizedCount3 = [(PKRecentsItem *)itemCopy localizedCount];
        v17 = [NSString stringWithFormat:@"%@ %@", localizedValidHandlesTitle2, localizedCount3];
        titleLabel2 = [(PHTableViewCell *)self titleLabel];
        [titleLabel2 setText:v17];

        callerCountLabel2 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
        [callerCountLabel2 setText:0];

        traitCollection = [(MPLegacyRecentsTableViewCell *)self traitCollection];
        LOBYTE(localizedValidHandlesTitle2) = [traitCollection preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells];

        if ((localizedValidHandlesTitle2 & 1) == 0)
        {
          titleLabel3 = [(PHTableViewCell *)self titleLabel];
          [titleLabel3 setLineBreakMode:5];
        }
      }
    }

    callTypeIconView = self->_callTypeIconView;
    image = [(PKRecentsItem *)itemCopy image];

    if (callTypeIconView)
    {
      if (image)
      {
        image2 = [(PKRecentsItem *)itemCopy image];
        callTypeIconView = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
        [callTypeIconView setImage:image2];

        callTypeIconView2 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
LABEL_11:
        v29 = callTypeIconView2;
        v30 = 0;
LABEL_15:
        [callTypeIconView2 setHidden:v30];

        goto LABEL_16;
      }

      callTypeIconView2 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
    }

    else
    {
      if (image)
      {
        image3 = [(PKRecentsItem *)itemCopy image];
        outgoingIndicator = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
        [outgoingIndicator setImage:image3];

        callTypeIconView2 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
        goto LABEL_11;
      }

      callTypeIconView2 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    }

    v29 = callTypeIconView2;
    v30 = 1;
    goto LABEL_15;
  }

LABEL_16:
  callerCountLabel3 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
  text = [callerCountLabel3 text];
  v33 = [text length];

  v34 = itemCopy;
  if (v33)
  {
    localizedCount4 = [(PKRecentsItem *)itemCopy localizedCount];
    callerCountLabel4 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
    [callerCountLabel4 setText:localizedCount4];

    v34 = itemCopy;
  }

  verified = [(PKRecentsItem *)v34 verified];
  verifiedBadgeView = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
  v39 = verifiedBadgeView;
  if (verified)
  {

    if (!v39)
    {
      v40 = [UIImageView alloc];
      v41 = +[UIImage recentsVerifiedCheckmarkImage];
      v42 = [v40 initWithImage:v41];
      [(MPLegacyRecentsTableViewCell *)self setVerifiedBadgeView:v42];

      v43 = +[UIColor dynamicTertiaryLabelColor];
      verifiedBadgeView2 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      [verifiedBadgeView2 setTintColor:v43];

      verifiedBadgeView3 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      [verifiedBadgeView3 setAccessibilityIdentifier:@"VerifiedBadge"];
    }

    subtitleStackView = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    arrangedSubviews = [subtitleStackView arrangedSubviews];
    verifiedBadgeView4 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
    v49 = [arrangedSubviews containsObject:verifiedBadgeView4];

    if ((v49 & 1) == 0)
    {
      subtitleStackView2 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      verifiedBadgeView5 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      subtitleStackView3 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      arrangedSubviews2 = [subtitleStackView3 arrangedSubviews];
      subtitleLabel2 = [(PHTableViewCell *)self subtitleLabel];
      [subtitleStackView2 insertArrangedSubview:verifiedBadgeView5 atIndex:{objc_msgSend(arrangedSubviews2, "indexOfObject:", subtitleLabel2)}];

      subtitleStackView4 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      verifiedBadgeView6 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      [subtitleStackView4 setAlignment:3 forView:verifiedBadgeView6 inAxis:1];

      verifiedBadgeView7 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      LODWORD(v58) = 1148846080;
      [verifiedBadgeView7 setContentHuggingPriority:1 forAxis:v58];

      verifiedBadgeView8 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      LODWORD(v60) = 1148846080;
      [verifiedBadgeView8 setContentHuggingPriority:0 forAxis:v60];

      verifiedBadgeView9 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      LODWORD(v62) = 1148846080;
      [verifiedBadgeView9 setContentCompressionResistancePriority:1 forAxis:v62];

      verifiedBadgeView10 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      LODWORD(v64) = 1148846080;
      [verifiedBadgeView10 setContentCompressionResistancePriority:0 forAxis:v64];

      gridView = [(MPLegacyRecentsTableViewCell *)self gridView];
      [gridView setNeedsLayout];
    }
  }

  else if (verifiedBadgeView)
  {
    subtitleStackView5 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    arrangedSubviews3 = [subtitleStackView5 arrangedSubviews];
    verifiedBadgeView11 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
    v69 = [arrangedSubviews3 containsObject:verifiedBadgeView11];

    if (v69)
    {
      subtitleStackView6 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      verifiedBadgeView12 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      [subtitleStackView6 removeArrangedSubview:verifiedBadgeView12];

      verifiedBadgeView13 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      [verifiedBadgeView13 removeFromSuperview];

      [(MPLegacyRecentsTableViewCell *)self setVerifiedBadgeView:0];
    }
  }

  localizedSenderIdentityTitle = [(PKRecentsItem *)itemCopy localizedSenderIdentityTitle];
  v74 = [localizedSenderIdentityTitle length];

  if (v74)
  {
    badgeView = [(MPLegacyRecentsTableViewCell *)self badgeView];

    if (badgeView)
    {
      badgeView2 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      localizedSenderIdentityTitle2 = [(PKRecentsItem *)itemCopy localizedSenderIdentityTitle];
      [badgeView2 setTitle:localizedSenderIdentityTitle2];
    }

    else
    {
      v85 = [TPBadgeView alloc];
      localizedSenderIdentityTitle3 = [(PKRecentsItem *)itemCopy localizedSenderIdentityTitle];
      v87 = [v85 initWithTitle:localizedSenderIdentityTitle3];
      [(MPLegacyRecentsTableViewCell *)self setBadgeView:v87];

      v88 = +[UIColor dynamicTertiaryLabelColor];
      badgeView3 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      [badgeView3 setTintColor:v88];

      badgeView2 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      [badgeView2 setAccessibilityIdentifier:@"SenderIdentity"];
    }

    subtitleStackView7 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    arrangedSubviews4 = [subtitleStackView7 arrangedSubviews];
    badgeView4 = [(MPLegacyRecentsTableViewCell *)self badgeView];
    v93 = [arrangedSubviews4 containsObject:badgeView4];

    if ((v93 & 1) == 0)
    {
      subtitleStackView8 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      arrangedSubviews5 = [subtitleStackView8 arrangedSubviews];
      outgoingIndicator2 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
      v97 = [arrangedSubviews5 containsObject:outgoingIndicator2];

      subtitleStackView9 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      badgeView5 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      if (v97)
      {
        subtitleStackView10 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
        arrangedSubviews6 = [subtitleStackView10 arrangedSubviews];
        outgoingIndicator3 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
        [subtitleStackView9 insertArrangedSubview:badgeView5 atIndex:{objc_msgSend(arrangedSubviews6, "indexOfObject:", outgoingIndicator3) + 1}];
      }

      else
      {
        [subtitleStackView9 insertArrangedSubview:badgeView5 atIndex:0];
      }

      subtitleStackView11 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      badgeView6 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      [subtitleStackView11 setAlignment:3 forView:badgeView6 inAxis:0];

      subtitleStackView12 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      badgeView7 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      [subtitleStackView12 setAlignment:3 forView:badgeView7 inAxis:1];

      badgeView8 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      LODWORD(v108) = 1148846080;
      [badgeView8 setContentHuggingPriority:1 forAxis:v108];

      badgeView9 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      LODWORD(v110) = 1148846080;
      [badgeView9 setContentHuggingPriority:0 forAxis:v110];

      badgeView10 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      LODWORD(v112) = 1148846080;
      [badgeView10 setContentCompressionResistancePriority:1 forAxis:v112];

      badgeView11 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      LODWORD(v114) = 1148846080;
      [badgeView11 setContentCompressionResistancePriority:0 forAxis:v114];

      gridView2 = [(MPLegacyRecentsTableViewCell *)self gridView];
      [gridView2 setNeedsLayout];
    }
  }

  else
  {
    subtitleStackView13 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    arrangedSubviews7 = [subtitleStackView13 arrangedSubviews];
    badgeView12 = [(MPLegacyRecentsTableViewCell *)self badgeView];
    v81 = [arrangedSubviews7 containsObject:badgeView12];

    if (v81)
    {
      subtitleStackView14 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      badgeView13 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      [subtitleStackView14 removeArrangedSubview:badgeView13];

      badgeView14 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      [badgeView14 removeFromSuperview];

      [(MPLegacyRecentsTableViewCell *)self setBadgeView:0];
    }
  }
}

- (void)configureWithRecentsItem:(id)item recentCall:(id)call
{
  callCopy = call;
  [(MPLegacyRecentsTableViewCell *)self setItem:item];
  callStatus = [callCopy callStatus];
  v7 = kCHCallStatusMissed;
  if (callStatus == kCHCallStatusMissed)
  {
    v8 = +[UIColor systemRedColor];
    v9 = [(MPLegacyRecentsTableViewCell *)self _accessibilityHigherContrastTintColorForColor:v8];
  }

  else
  {
    v9 = +[UIColor dynamicLabelColor];
  }

  -[MPLegacyRecentsTableViewCell setIsMissedCall:](self, "setIsMissedCall:", [callCopy callStatus] == v7);
  titleLabel = [(PHTableViewCell *)self titleLabel];
  [titleLabel setTextColor:v9];

  [(MPLegacyRecentsTableViewCell *)self updateTextColor];
  if ([(MPLegacyRecentsTableViewCell *)self isAccessibilityConstraintsEnabled])
  {
    [(PHTableViewCell *)self subtitleLabel];
  }

  else
  {
    [(PHTableViewCell *)self titleLabel];
  }
  v11 = ;
  textColor = [v11 textColor];
  callerCountLabel = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
  [callerCountLabel setTextColor:textColor];

  if ([(MPLegacyRecentsTableViewCell *)self tapTargets])
  {
    mediaType = [callCopy mediaType];
    if (mediaType == 2)
    {
      v15 = @"video.fill";
    }

    else
    {
      if (mediaType != 1)
      {
        if (!mediaType)
        {
          [(MPLegacyRecentsTableViewCell *)self setCallButtonImage:0];
        }

LABEL_15:
        callButtonImage = [(MPLegacyRecentsTableViewCell *)self callButtonImage];

        if (!callButtonImage)
        {
          goto LABEL_22;
        }

        callButton = [(MPLegacyRecentsTableViewCell *)self callButton];
        callButtonImage2 = [(MPLegacyRecentsTableViewCell *)self callButtonImage];
        [callButton configureForImage:callButtonImage2];

        callButton2 = [(MPLegacyRecentsTableViewCell *)self callButton];
        [callButton2 bounds];
        if (v21 < 1.0)
        {
        }

        else
        {
          callButton3 = [(MPLegacyRecentsTableViewCell *)self callButton];
          [callButton3 bounds];
          v24 = v23;

          if (v24 >= 1.0)
          {
            goto LABEL_21;
          }
        }

        callButton4 = [(MPLegacyRecentsTableViewCell *)self callButton];
        [callButton4 sizeToFit];

LABEL_21:
        callButton5 = [(MPLegacyRecentsTableViewCell *)self callButton];
        [(MPLegacyRecentsTableViewCell *)self setAccessoryView:callButton5];

        goto LABEL_22;
      }

      v15 = @"phone.fill";
    }

    v16 = [UIImage systemImageNamed:v15];
    [(MPLegacyRecentsTableViewCell *)self setCallButtonImage:v16];

    goto LABEL_15;
  }

LABEL_22:
}

- (void)enableCallButton:(BOOL)button
{
  buttonCopy = button;
  callButton = [(MPLegacyRecentsTableViewCell *)self callButton];
  [callButton setEnabled:buttonCopy];
}

- (void)setTapTargets:(BOOL)targets
{
  if (self->_tapTargets != targets)
  {
    self->_tapTargets = targets;
    if (targets)
    {
      callButton = [(MPLegacyRecentsTableViewCell *)self callButton];

      if (!callButton)
      {
        v5 = objc_alloc_init(TPAccessoryButton);
        callButton = self->_callButton;
        self->_callButton = v5;

        v7 = self->_callButton;

        [(TPAccessoryButton *)v7 addTarget:self action:"callButtonTapped:" forControlEvents:64];
      }
    }

    else
    {

      [(MPLegacyRecentsTableViewCell *)self setAccessoryView:0];
    }
  }
}

- (void)configureGridViewArrangedSubviews
{
  v106[0] = _NSConcreteStackBlock;
  v106[1] = 3221225472;
  v106[2] = sub_10000FF74;
  v106[3] = &unk_1000B1B80;
  v106[4] = self;
  v3 = objc_retainBlock(v106);
  if ([(MPLegacyRecentsTableViewCell *)self isAccessibilityConstraintsEnabled])
  {
    gridView = [(MPLegacyRecentsTableViewCell *)self gridView];
    numberOfColumns = [gridView numberOfColumns];
    if (numberOfColumns == [(MPLegacyRecentsTableViewCell *)self maximumColumnsWithAccessibility])
    {
      gridView2 = [(MPLegacyRecentsTableViewCell *)self gridView];
      numberOfRows = [gridView2 numberOfRows];

      if (numberOfRows == 3)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    v105 = v3;
    (v3[2])(v3);
    titleLabel = [(PHTableViewCell *)self titleLabel];
    [titleLabel setNumberOfLines:0];

    subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
    [subtitleLabel setNumberOfLines:1];

    titleLabel2 = [(PHTableViewCell *)self titleLabel];
    v124 = titleLabel2;
    v15 = [NSArray arrayWithObjects:&v124 count:1];
    titleStackView = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    [titleStackView setArrangedSubviews:v15];

    titleStackView2 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    [titleStackView2 setAxis:0];

    titleStackView3 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    [titleStackView3 setAlignment:1];

    subtitleLabel2 = [(PHTableViewCell *)self subtitleLabel];
    v123[0] = subtitleLabel2;
    callerCountLabel = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
    v123[1] = callerCountLabel;
    v21 = [NSArray arrayWithObjects:v123 count:2];
    subtitleStackView = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    [subtitleStackView setArrangedSubviews:v21];

    subtitleStackView2 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    [subtitleStackView2 setAxis:0];

    subtitleStackView3 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    [subtitleStackView3 setAlignment:1];

    callTypeIconView = self->_callTypeIconView;
    titleStackView4 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    gridView5 = titleStackView4;
    if (callTypeIconView)
    {
      v121[0] = titleStackView4;
      titleStackView5 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
      v121[1] = titleStackView5;
      v100 = [NSArray arrayWithObjects:v121 count:2];
      v122[0] = v100;
      subtitleStackView4 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v120[0] = subtitleStackView4;
      subtitleStackView5 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v120[1] = subtitleStackView5;
      v30 = [NSArray arrayWithObjects:v120 count:2];
      v122[1] = v30;
      callerDateLabel = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
      v119[0] = callerDateLabel;
      callTypeIconView = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
      v119[1] = callTypeIconView;
      v33 = [NSArray arrayWithObjects:v119 count:2];
      v122[2] = v33;
      v34 = [NSArray arrayWithObjects:v122 count:3];
      gridView3 = [(MPLegacyRecentsTableViewCell *)self gridView];
      [gridView3 setArrangedSubviewRows:v34];

      gridView4 = [(MPLegacyRecentsTableViewCell *)self gridView];
      callTypeIconView2 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
      [gridView4 setAlignment:4 forView:callTypeIconView2 inAxis:0];

      gridView5 = [(MPLegacyRecentsTableViewCell *)self gridView];
      callTypeIconView3 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
      v39 = 1;
      [gridView5 setAlignment:3 forView:callTypeIconView3 inAxis:1];
    }

    else
    {
      v117[0] = titleStackView4;
      callTypeIconView3 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
      v117[1] = callTypeIconView3;
      v104 = [NSArray arrayWithObjects:v117 count:2];
      v118[0] = v104;
      subtitleStackView6 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v116[0] = subtitleStackView6;
      subtitleStackView7 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v116[1] = subtitleStackView7;
      v69 = [NSArray arrayWithObjects:v116 count:2];
      v118[1] = v69;
      callerDateLabel2 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
      v115[0] = callerDateLabel2;
      callTypeIconSizingView = [(MPLegacyRecentsTableViewCell *)self callTypeIconSizingView];
      v115[1] = callTypeIconSizingView;
      v72 = [NSArray arrayWithObjects:v115 count:2];
      v118[2] = v72;
      v73 = [NSArray arrayWithObjects:v118 count:3];
      gridView6 = [(MPLegacyRecentsTableViewCell *)self gridView];
      [gridView6 setArrangedSubviewRows:v73];

      v39 = 1;
    }

LABEL_20:

    gridView7 = [(MPLegacyRecentsTableViewCell *)self gridView];
    callerDateLabel3 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
    [gridView7 setAlignment:v39 forView:callerDateLabel3 inAxis:0];

    gridView8 = [(MPLegacyRecentsTableViewCell *)self gridView];
    callerDateLabel4 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
    [gridView8 setAlignment:3 forView:callerDateLabel4 inAxis:1];

    v3 = v105;
    goto LABEL_21;
  }

LABEL_4:
  if ([(MPLegacyRecentsTableViewCell *)self isAccessibilityConstraintsEnabled])
  {
    goto LABEL_21;
  }

  gridView9 = [(MPLegacyRecentsTableViewCell *)self gridView];
  numberOfColumns2 = [gridView9 numberOfColumns];
  if (numberOfColumns2 != [(MPLegacyRecentsTableViewCell *)self maximumColumnsWithoutAccessibility])
  {

    goto LABEL_12;
  }

  gridView10 = [(MPLegacyRecentsTableViewCell *)self gridView];
  numberOfRows2 = [gridView10 numberOfRows];

  if (numberOfRows2 != 2)
  {
LABEL_12:
    v105 = v3;
    (v3[2])(v3);
    traitCollection = [(MPLegacyRecentsTableViewCell *)self traitCollection];
    if ([traitCollection preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells])
    {
      v41 = 0;
    }

    else
    {
      v41 = 2;
    }

    titleLabel3 = [(PHTableViewCell *)self titleLabel];
    [titleLabel3 setNumberOfLines:v41];

    subtitleLabel3 = [(PHTableViewCell *)self subtitleLabel];
    [subtitleLabel3 setNumberOfLines:1];

    titleLabel4 = [(PHTableViewCell *)self titleLabel];
    v114[0] = titleLabel4;
    callerCountLabel2 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
    v114[1] = callerCountLabel2;
    v46 = [NSArray arrayWithObjects:v114 count:2];
    titleStackView6 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    [titleStackView6 setArrangedSubviews:v46];

    titleStackView7 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    [titleStackView7 setAxis:0];

    titleStackView8 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    [titleStackView8 setAlignment:5];

    titleStackView9 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    callerCountLabel3 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
    [titleStackView9 setAlignment:4 forView:callerCountLabel3 inAxis:0];

    subtitleLabel4 = [(PHTableViewCell *)self subtitleLabel];
    v113 = subtitleLabel4;
    v53 = [NSArray arrayWithObjects:&v113 count:1];
    subtitleStackView8 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    [subtitleStackView8 setArrangedSubviews:v53];

    subtitleStackView9 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    [subtitleStackView9 setAxis:0];

    subtitleStackView10 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    [subtitleStackView10 setAlignment:1];

    if (self->_callTypeIconView)
    {
      callTypeIconView4 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
      v111[0] = callTypeIconView4;
      titleStackView10 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
      v111[1] = titleStackView10;
      callerDateLabel5 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
      v111[2] = callerDateLabel5;
      v59 = [NSArray arrayWithObjects:v111 count:3];
      v112[0] = v59;
      callTypeIconSizingView2 = [(MPLegacyRecentsTableViewCell *)self callTypeIconSizingView];
      v110[0] = callTypeIconSizingView2;
      subtitleStackView11 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v110[1] = subtitleStackView11;
      callerDateLabel6 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
      v110[2] = callerDateLabel6;
      v63 = [NSArray arrayWithObjects:v110 count:3];
      v112[1] = v63;
      v64 = [NSArray arrayWithObjects:v112 count:2];
      gridView11 = [(MPLegacyRecentsTableViewCell *)self gridView];
      [gridView11 setArrangedSubviewRows:v64];

      gridView12 = [(MPLegacyRecentsTableViewCell *)self gridView];
      callTypeIconView5 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
      [gridView12 setAlignment:3 forView:callTypeIconView5 inAxis:0];

      gridView5 = [(MPLegacyRecentsTableViewCell *)self gridView];
      callTypeIconView3 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
      [gridView5 setAlignment:3 forView:callTypeIconView3 inAxis:1];
    }

    else
    {
      gridView5 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
      v108[0] = gridView5;
      callTypeIconView3 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
      v108[1] = callTypeIconView3;
      v75 = [NSArray arrayWithObjects:v108 count:2];
      v109[0] = v75;
      subtitleStackView12 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v107[0] = subtitleStackView12;
      callerDateLabel7 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
      v107[1] = callerDateLabel7;
      v78 = [NSArray arrayWithObjects:v107 count:2];
      v109[1] = v78;
      v79 = [NSArray arrayWithObjects:v109 count:2];
      gridView13 = [(MPLegacyRecentsTableViewCell *)self gridView];
      [gridView13 setArrangedSubviewRows:v79];
    }

    v39 = 4;
    goto LABEL_20;
  }

LABEL_21:
  if (self->_outgoingIndicator)
  {
    subtitleStackView13 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    outgoingIndicator = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    [subtitleStackView13 insertArrangedSubview:outgoingIndicator atIndex:0];

    subtitleStackView14 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    outgoingIndicator2 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    [subtitleStackView14 setAlignment:3 forView:outgoingIndicator2 inAxis:0];

    subtitleStackView15 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    outgoingIndicator3 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    [subtitleStackView15 setAlignment:3 forView:outgoingIndicator3 inAxis:1];

    outgoingIndicator4 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    LODWORD(v92) = 1148846080;
    [outgoingIndicator4 setContentHuggingPriority:0 forAxis:v92];

    outgoingIndicator5 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    LODWORD(v94) = 1148846080;
    [outgoingIndicator5 setContentHuggingPriority:1 forAxis:v94];

    outgoingIndicator6 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    LODWORD(v96) = 1148846080;
    [outgoingIndicator6 setContentCompressionResistancePriority:0 forAxis:v96];

    outgoingIndicator7 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    LODWORD(v98) = 1148846080;
    [outgoingIndicator7 setContentCompressionResistancePriority:1 forAxis:v98];

    gridView14 = [(MPLegacyRecentsTableViewCell *)self gridView];
    [gridView14 setNeedsLayout];
  }
}

- (void)setAvatarViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_avatarViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_avatarViewController, controller);
    [(MPLegacyRecentsTableViewCell *)self updateRootView];
    [(MPLegacyRecentsTableViewCell *)self configureGridViewArrangedSubviews];
    controllerCopy = v6;
  }
}

- (void)updateRootView
{
  avatarViewController = [(MPLegacyRecentsTableViewCell *)self avatarViewController];

  if (avatarViewController)
  {
    avatarViewController2 = [(MPLegacyRecentsTableViewCell *)self avatarViewController];
    view = [avatarViewController2 view];
    [view setMinimumLayoutSize:{45.0, 45.0}];

    avatarViewController3 = [(MPLegacyRecentsTableViewCell *)self avatarViewController];
    view2 = [avatarViewController3 view];
    [view2 setMaximumLayoutSize:{45.0, 45.0}];

    avatarViewController4 = [(MPLegacyRecentsTableViewCell *)self avatarViewController];
    view3 = [avatarViewController4 view];

    LODWORD(v10) = 1148846080;
    [view3 setContentCompressionResistancePriority:0 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [view3 setContentCompressionResistancePriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [view3 setContentHuggingPriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [view3 setContentHuggingPriority:1 forAxis:v13];
    gridView = [(MPLegacyRecentsTableViewCell *)self gridView];
    v19 = view3;
    v15 = [NSArray arrayWithObjects:&v19 count:1];
    v16 = [gridView insertColumnAtIndex:0 withArrangedSubviews:v15];

    gridView2 = [(MPLegacyRecentsTableViewCell *)self gridView];
    [gridView2 setAlignment:1 forView:view3 inAxis:0];

    gridView3 = [(MPLegacyRecentsTableViewCell *)self gridView];
    [gridView3 setAlignment:3 forView:view3 inAxis:1];

    [(MPLegacyRecentsTableViewCell *)self setPreservesSuperviewLayoutMargins:1];
  }
}

- (void)callButtonTapped:(id)tapped
{
  callButtonTappedHandler = [(MPLegacyRecentsTableViewCell *)self callButtonTappedHandler];

  if (callButtonTappedHandler)
  {
    callButtonTappedHandler2 = [(MPLegacyRecentsTableViewCell *)self callButtonTappedHandler];
    callButtonTappedHandler2[2]();
  }
}

- (void)setCallButtonTappedHandler:(id)handler
{
  self->_callButtonTappedHandler = objc_retainBlock(handler);

  _objc_release_x1();
}

- (void)updateFonts
{
  v3 = +[UIFont telephonyUIBodyShortEmphasizedFont];
  titleLabel = [(PHTableViewCell *)self titleLabel];
  [titleLabel setFont:v3];

  v5 = +[UIFont telephonyUISubheadlineShortFont];
  subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel setFont:v5];

  subtitleLabel2 = [(PHTableViewCell *)self subtitleLabel];
  font = [subtitleLabel2 font];
  callerDateLabel = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
  [callerDateLabel setFont:font];

  v10 = NUIContainerViewLengthUseDefault;
  subtitleLabel3 = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel3 setCustomBaselineOffsetFromBottom:v10];

  [(MPLegacyRecentsTableViewCell *)self effectiveBaselineOffsetFromBottom];
  v13 = v12;
  subtitleLabel4 = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel4 setCustomBaselineOffsetFromBottom:v13];

  if ([(MPLegacyRecentsTableViewCell *)self isAccessibilityConstraintsEnabled])
  {
    [(PHTableViewCell *)self subtitleLabel];
  }

  else
  {
    [(PHTableViewCell *)self titleLabel];
  }
  v15 = ;
  font2 = [v15 font];
  callerCountLabel = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
  [callerCountLabel setFont:font2];

  [(MPLegacyRecentsTableViewCell *)self updateTextColor];
}

- (void)updateTextColor
{
  v3 = +[UIColor dynamicSecondaryLabelColor];
  v4 = [(MPLegacyRecentsTableViewCell *)self _accessibilityHigherContrastTintColorForColor:v3];
  subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel setTextColor:v4];

  v8 = +[UIColor dynamicSecondaryLabelColor];
  v6 = [(MPLegacyRecentsTableViewCell *)self _accessibilityHigherContrastTintColorForColor:v8];
  callerDateLabel = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
  [callerDateLabel setTextColor:v6];
}

- (void)showContainerViewDebugBoundingBox
{
  gridView = [(MPLegacyRecentsTableViewCell *)self gridView];
  [gridView setDebugBoundingBoxesEnabled:1];

  titleStackView = [(MPLegacyRecentsTableViewCell *)self titleStackView];
  [titleStackView setDebugBoundingBoxesEnabled:1];

  subtitleStackView = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
  [subtitleStackView setDebugBoundingBoxesEnabled:1];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MPLegacyRecentsTableViewCell;
  [(MPLegacyRecentsTableViewCell *)&v3 prepareForReuse];
  [(MPLegacyRecentsTableViewCell *)self configureGridViewArrangedSubviews];
}

- (double)titleLabelLeadingAnchorLayoutConstraintConstant
{
  v3 = objc_opt_class();
  traitCollection = [(MPLegacyRecentsTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [v3 titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:preferredContentSizeCategory];
  v7 = v6;

  return v7;
}

- (double)callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstant
{
  v3 = objc_opt_class();
  traitCollection = [(MPLegacyRecentsTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [v3 callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:preferredContentSizeCategory];
  v7 = v6;

  return v7;
}

- (double)dateLabelTrailingLayoutConstraintConstant
{
  v3 = 0.0;
  if (![(MPLegacyRecentsTableViewCell *)self isAccessibilityConstraintsEnabled])
  {
    if ([(MPLegacyRecentsTableViewCell *)self accessoryType])
    {
      if ([(MPLegacyRecentsTableViewCell *)self accessoryType]== 4)
      {
        if ([(MPLegacyRecentsTableViewCell *)self tapTargets])
        {
          return 16.0;
        }

        else
        {
          return 6.0;
        }
      }
    }

    else
    {
      return 15.0;
    }
  }

  return v3;
}

+ (double)callTypeIconLayoutGuideWidthAnchorLayoutConstraintConstant:(id)constant
{
  constantCopy = constant;
  [objc_opt_class() largestCallTypeIconWidth];
  v5 = v4;
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(constantCopy);

  result = 0.0;
  if (!IsAccessibilityCategory)
  {
    return v5;
  }

  return result;
}

+ (double)callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:(id)size
{
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(size);
  result = 10.0;
  if (IsAccessibilityCategory)
  {
    return 15.0;
  }

  return result;
}

+ (double)titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:(id)size
{
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(size);
  result = 12.0;
  if (IsAccessibilityCategory)
  {
    return 0.0;
  }

  return result;
}

@end