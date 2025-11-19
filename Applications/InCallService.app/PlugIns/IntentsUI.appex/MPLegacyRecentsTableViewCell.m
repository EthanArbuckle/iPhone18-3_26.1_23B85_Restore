@interface MPLegacyRecentsTableViewCell
+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3 isEditing:(BOOL)a4;
+ (double)callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:(id)a3;
+ (double)callTypeIconLayoutGuideWidthAnchorLayoutConstraintConstant:(id)a3;
+ (double)largestCallTypeIconWidth;
+ (double)leftTitleSeparatorInsetForContentSizeCategory:(id)a3;
+ (double)titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:(id)a3;
- (BOOL)isAccessibilityConstraintsEnabled;
- (NSDirectionalEdgeInsets)rootViewLayoutMargins;
- (TUFeatureFlags)featureFlags;
- (double)callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstant;
- (double)dateLabelTrailingLayoutConstraintConstant;
- (double)titleLabelLeadingAnchorLayoutConstraintConstant;
- (id)loadRootViewAndContentViews;
- (void)callButtonTapped:(id)a3;
- (void)commonInit;
- (void)configureGridViewArrangedSubviews;
- (void)configureWithRecentsItem:(id)a3 recentCall:(id)a4;
- (void)enableCallButton:(BOOL)a3;
- (void)prepareForReuse;
- (void)setAvatarViewController:(id)a3;
- (void)setCallButtonTappedHandler:(id)a3;
- (void)setItem:(id)a3;
- (void)setTapTargets:(BOOL)a3;
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

+ (double)leftTitleSeparatorInsetForContentSizeCategory:(id)a3
{
  v4 = a3;
  [a1 callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:v4];
  v6 = v5;
  [a1 callTypeIconLayoutGuideWidthAnchorLayoutConstraintConstant:v4];
  v8 = v6 + v7;
  [a1 titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:v4];
  v10 = v9;

  return v8 + v10;
}

+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3 isEditing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(TUFeatureFlags);
  if ([v7 phoneRecentsAvatarsEnabled])
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);
    v9 = 55.0;
    if (IsAccessibilityCategory)
    {
      v9 = 0.0;
    }
  }

  else
  {
    [a1 callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:v6];
    v11 = v10;
    [a1 callTypeIconLayoutGuideWidthAnchorLayoutConstraintConstant:v6];
    v13 = v11 + v12;
    [a1 titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:v6];
    v9 = v13 + v14;
  }

  if (v4)
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
  v3 = [(PHDoubleLineTableViewCell *)&v53 loadRootViewAndContentViews];
  [(MPLegacyRecentsTableViewCell *)self setAccessoryType:4];
  v4 = [(PHTableViewCell *)self titleLabel];
  [v4 setLineBreakMode:4];

  v5 = [(PHTableViewCell *)self subtitleLabel];
  [v5 setLineBreakMode:4];

  v6 = [(MPLegacyRecentsTableViewCell *)self featureFlags];
  v7 = [v6 phoneRecentsAvatarsEnabled];

  v8 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v12 = [v8 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  if (v7)
  {
    outgoingIndicator = self->_outgoingIndicator;
    self->_outgoingIndicator = v12;

    [(UIImageView *)self->_outgoingIndicator setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    [(UIImageView *)self->_outgoingIndicator setAccessibilityIdentifier:@"CallDirection"];
    v14 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    v15 = +[UIColor dynamicTertiaryLabelColor];
    [v14 setTintColor:v15];
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
  v46 = [(PHTableViewCell *)self titleLabel];
  [v46 effectiveFirstBaselineOffsetFromTop];
  [(NUIContainerStackView *)self->_titleStackView setCustomFirstBaselineOffsetFromTop:?];

  v47 = [(PHTableViewCell *)self subtitleLabel];
  [v47 effectiveFirstBaselineOffsetFromTop];
  [(NUIContainerStackView *)self->_subtitleStackView setCustomFirstBaselineOffsetFromTop:?];

  [(NUIContainerStackView *)self->_subtitleStackView setSpacing:4.0];
  [(NUIContainerStackView *)self->_titleStackView setSpacing:4.0];
  [(NUIContainerGridView *)self->_gridView setHorizontalAlignment:1];
  [(NUIContainerGridView *)self->_gridView setLayoutMarginsRelativeArrangement:1];
  [(NUIContainerGridView *)self->_gridView setBaselineRelativeArrangement:1];
  [(PHDoubleLineTableViewCell *)self subtitleLabelFirstBaselineLayoutConstraintConstant];
  [(NUIContainerGridView *)self->_gridView setRowSpacing:?];
  v48 = [(MPLegacyRecentsTableViewCell *)self featureFlags];
  v49 = [v48 phoneRecentsAvatarsEnabled];

  v50 = 10.0;
  if ((v49 & 1) == 0)
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
  v3 = [(PHTableViewCell *)self subtitleLabel];
  v4 = [v3 font];
  v5 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
  [v5 setFont:v4];

  [objc_opt_class() largestCallTypeIconWidth];
  v7 = v6;
  v8 = [(MPLegacyRecentsTableViewCell *)self callTypeIconSizingView];
  [v8 setMinimumLayoutSize:{v7, 1.0}];

  v9 = [(MPLegacyRecentsTableViewCell *)self callTypeIconSizingView];
  [v9 setMaximumLayoutSize:{v7, 1.0}];

  [(MPLegacyRecentsTableViewCell *)self configureGridViewArrangedSubviews];
  [(MPLegacyRecentsTableViewCell *)self updateFonts];
}

- (BOOL)isAccessibilityConstraintsEnabled
{
  v2 = [(MPLegacyRecentsTableViewCell *)self traitCollection];
  v3 = [v2 isPreferredContentSizeCategoryAccessible];

  return v3;
}

- (void)updateDateLabelAlignment
{
  v3 = [(MPLegacyRecentsTableViewCell *)self isAccessibilityConstraintsEnabled];
  v4 = [(MPLegacyRecentsTableViewCell *)self gridView];
  v5 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
  if (v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  [v4 setAlignment:v6 forView:v5 inAxis:1];

  v8 = [(MPLegacyRecentsTableViewCell *)self gridView];
  v7 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
  [v8 setAlignment:1 forView:v7 inAxis:0];
}

- (NSDirectionalEdgeInsets)rootViewLayoutMargins
{
  v21.receiver = self;
  v21.super_class = MPLegacyRecentsTableViewCell;
  [(PHDoubleLineTableViewCell *)&v21 rootViewLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [(MPLegacyRecentsTableViewCell *)self featureFlags];
  v10 = [v9 phoneRecentsAvatarsEnabled];

  if (v10)
  {
    [(MPLegacyRecentsTableViewCell *)self dateLabelTrailingLayoutConstraintConstant];
    v8 = v11;
    v12 = [(MPLegacyRecentsTableViewCell *)self contentView];
    [v12 directionalLayoutMargins];
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

- (void)setItem:(id)a3
{
  v116 = a3;
  if (self->_item != v116)
  {
    objc_storeStrong(&self->_item, a3);
    v5 = [(PKRecentsItem *)v116 localizedCount];
    v6 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
    [v6 setText:v5];

    v7 = [(PKRecentsItem *)v116 date];
    v8 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
    [v8 setDate:v7];

    v9 = [(PKRecentsItem *)v116 localizedSubtitle];
    v10 = [(PHTableViewCell *)self subtitleLabel];
    [v10 setText:v9];

    v11 = [(PKRecentsItem *)v116 localizedValidHandlesTitle];
    v12 = [(PHTableViewCell *)self titleLabel];
    [v12 setText:v11];

    if (![(MPLegacyRecentsTableViewCell *)self isAccessibilityConstraintsEnabled])
    {
      v13 = [(PKRecentsItem *)v116 localizedCount];
      v14 = [v13 length];

      if (v14)
      {
        v15 = [(PKRecentsItem *)v116 localizedValidHandlesTitle];
        v16 = [(PKRecentsItem *)v116 localizedCount];
        v17 = [NSString stringWithFormat:@"%@ %@", v15, v16];
        v18 = [(PHTableViewCell *)self titleLabel];
        [v18 setText:v17];

        v19 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
        [v19 setText:0];

        v20 = [(MPLegacyRecentsTableViewCell *)self traitCollection];
        LOBYTE(v15) = [v20 preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells];

        if ((v15 & 1) == 0)
        {
          v21 = [(PHTableViewCell *)self titleLabel];
          [v21 setLineBreakMode:5];
        }
      }
    }

    callTypeIconView = self->_callTypeIconView;
    v23 = [(PKRecentsItem *)v116 image];

    if (callTypeIconView)
    {
      if (v23)
      {
        v24 = [(PKRecentsItem *)v116 image];
        v25 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
        [v25 setImage:v24];

        v26 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
LABEL_11:
        v29 = v26;
        v30 = 0;
LABEL_15:
        [v26 setHidden:v30];

        goto LABEL_16;
      }

      v26 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
    }

    else
    {
      if (v23)
      {
        v27 = [(PKRecentsItem *)v116 image];
        v28 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
        [v28 setImage:v27];

        v26 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
        goto LABEL_11;
      }

      v26 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    }

    v29 = v26;
    v30 = 1;
    goto LABEL_15;
  }

LABEL_16:
  v31 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
  v32 = [v31 text];
  v33 = [v32 length];

  v34 = v116;
  if (v33)
  {
    v35 = [(PKRecentsItem *)v116 localizedCount];
    v36 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
    [v36 setText:v35];

    v34 = v116;
  }

  v37 = [(PKRecentsItem *)v34 verified];
  v38 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
  v39 = v38;
  if (v37)
  {

    if (!v39)
    {
      v40 = [UIImageView alloc];
      v41 = +[UIImage recentsVerifiedCheckmarkImage];
      v42 = [v40 initWithImage:v41];
      [(MPLegacyRecentsTableViewCell *)self setVerifiedBadgeView:v42];

      v43 = +[UIColor dynamicTertiaryLabelColor];
      v44 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      [v44 setTintColor:v43];

      v45 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      [v45 setAccessibilityIdentifier:@"VerifiedBadge"];
    }

    v46 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    v47 = [v46 arrangedSubviews];
    v48 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
    v49 = [v47 containsObject:v48];

    if ((v49 & 1) == 0)
    {
      v50 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v51 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      v52 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v53 = [v52 arrangedSubviews];
      v54 = [(PHTableViewCell *)self subtitleLabel];
      [v50 insertArrangedSubview:v51 atIndex:{objc_msgSend(v53, "indexOfObject:", v54)}];

      v55 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v56 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      [v55 setAlignment:3 forView:v56 inAxis:1];

      v57 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      LODWORD(v58) = 1148846080;
      [v57 setContentHuggingPriority:1 forAxis:v58];

      v59 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      LODWORD(v60) = 1148846080;
      [v59 setContentHuggingPriority:0 forAxis:v60];

      v61 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      LODWORD(v62) = 1148846080;
      [v61 setContentCompressionResistancePriority:1 forAxis:v62];

      v63 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      LODWORD(v64) = 1148846080;
      [v63 setContentCompressionResistancePriority:0 forAxis:v64];

      v65 = [(MPLegacyRecentsTableViewCell *)self gridView];
      [v65 setNeedsLayout];
    }
  }

  else if (v38)
  {
    v66 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    v67 = [v66 arrangedSubviews];
    v68 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
    v69 = [v67 containsObject:v68];

    if (v69)
    {
      v70 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v71 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      [v70 removeArrangedSubview:v71];

      v72 = [(MPLegacyRecentsTableViewCell *)self verifiedBadgeView];
      [v72 removeFromSuperview];

      [(MPLegacyRecentsTableViewCell *)self setVerifiedBadgeView:0];
    }
  }

  v73 = [(PKRecentsItem *)v116 localizedSenderIdentityTitle];
  v74 = [v73 length];

  if (v74)
  {
    v75 = [(MPLegacyRecentsTableViewCell *)self badgeView];

    if (v75)
    {
      v76 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      v77 = [(PKRecentsItem *)v116 localizedSenderIdentityTitle];
      [v76 setTitle:v77];
    }

    else
    {
      v85 = [TPBadgeView alloc];
      v86 = [(PKRecentsItem *)v116 localizedSenderIdentityTitle];
      v87 = [v85 initWithTitle:v86];
      [(MPLegacyRecentsTableViewCell *)self setBadgeView:v87];

      v88 = +[UIColor dynamicTertiaryLabelColor];
      v89 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      [v89 setTintColor:v88];

      v76 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      [v76 setAccessibilityIdentifier:@"SenderIdentity"];
    }

    v90 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    v91 = [v90 arrangedSubviews];
    v92 = [(MPLegacyRecentsTableViewCell *)self badgeView];
    v93 = [v91 containsObject:v92];

    if ((v93 & 1) == 0)
    {
      v94 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v95 = [v94 arrangedSubviews];
      v96 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
      v97 = [v95 containsObject:v96];

      v98 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v99 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      if (v97)
      {
        v100 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
        v101 = [v100 arrangedSubviews];
        v102 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
        [v98 insertArrangedSubview:v99 atIndex:{objc_msgSend(v101, "indexOfObject:", v102) + 1}];
      }

      else
      {
        [v98 insertArrangedSubview:v99 atIndex:0];
      }

      v103 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v104 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      [v103 setAlignment:3 forView:v104 inAxis:0];

      v105 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v106 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      [v105 setAlignment:3 forView:v106 inAxis:1];

      v107 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      LODWORD(v108) = 1148846080;
      [v107 setContentHuggingPriority:1 forAxis:v108];

      v109 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      LODWORD(v110) = 1148846080;
      [v109 setContentHuggingPriority:0 forAxis:v110];

      v111 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      LODWORD(v112) = 1148846080;
      [v111 setContentCompressionResistancePriority:1 forAxis:v112];

      v113 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      LODWORD(v114) = 1148846080;
      [v113 setContentCompressionResistancePriority:0 forAxis:v114];

      v115 = [(MPLegacyRecentsTableViewCell *)self gridView];
      [v115 setNeedsLayout];
    }
  }

  else
  {
    v78 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    v79 = [v78 arrangedSubviews];
    v80 = [(MPLegacyRecentsTableViewCell *)self badgeView];
    v81 = [v79 containsObject:v80];

    if (v81)
    {
      v82 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v83 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      [v82 removeArrangedSubview:v83];

      v84 = [(MPLegacyRecentsTableViewCell *)self badgeView];
      [v84 removeFromSuperview];

      [(MPLegacyRecentsTableViewCell *)self setBadgeView:0];
    }
  }
}

- (void)configureWithRecentsItem:(id)a3 recentCall:(id)a4
{
  v27 = a4;
  [(MPLegacyRecentsTableViewCell *)self setItem:a3];
  v6 = [v27 callStatus];
  v7 = kCHCallStatusMissed;
  if (v6 == kCHCallStatusMissed)
  {
    v8 = +[UIColor systemRedColor];
    v9 = [(MPLegacyRecentsTableViewCell *)self _accessibilityHigherContrastTintColorForColor:v8];
  }

  else
  {
    v9 = +[UIColor dynamicLabelColor];
  }

  -[MPLegacyRecentsTableViewCell setIsMissedCall:](self, "setIsMissedCall:", [v27 callStatus] == v7);
  v10 = [(PHTableViewCell *)self titleLabel];
  [v10 setTextColor:v9];

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
  v12 = [v11 textColor];
  v13 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
  [v13 setTextColor:v12];

  if ([(MPLegacyRecentsTableViewCell *)self tapTargets])
  {
    v14 = [v27 mediaType];
    if (v14 == 2)
    {
      v15 = @"video.fill";
    }

    else
    {
      if (v14 != 1)
      {
        if (!v14)
        {
          [(MPLegacyRecentsTableViewCell *)self setCallButtonImage:0];
        }

LABEL_15:
        v17 = [(MPLegacyRecentsTableViewCell *)self callButtonImage];

        if (!v17)
        {
          goto LABEL_22;
        }

        v18 = [(MPLegacyRecentsTableViewCell *)self callButton];
        v19 = [(MPLegacyRecentsTableViewCell *)self callButtonImage];
        [v18 configureForImage:v19];

        v20 = [(MPLegacyRecentsTableViewCell *)self callButton];
        [v20 bounds];
        if (v21 < 1.0)
        {
        }

        else
        {
          v22 = [(MPLegacyRecentsTableViewCell *)self callButton];
          [v22 bounds];
          v24 = v23;

          if (v24 >= 1.0)
          {
            goto LABEL_21;
          }
        }

        v25 = [(MPLegacyRecentsTableViewCell *)self callButton];
        [v25 sizeToFit];

LABEL_21:
        v26 = [(MPLegacyRecentsTableViewCell *)self callButton];
        [(MPLegacyRecentsTableViewCell *)self setAccessoryView:v26];

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

- (void)enableCallButton:(BOOL)a3
{
  v3 = a3;
  v4 = [(MPLegacyRecentsTableViewCell *)self callButton];
  [v4 setEnabled:v3];
}

- (void)setTapTargets:(BOOL)a3
{
  if (self->_tapTargets != a3)
  {
    self->_tapTargets = a3;
    if (a3)
    {
      v4 = [(MPLegacyRecentsTableViewCell *)self callButton];

      if (!v4)
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
    v4 = [(MPLegacyRecentsTableViewCell *)self gridView];
    v5 = [v4 numberOfColumns];
    if (v5 == [(MPLegacyRecentsTableViewCell *)self maximumColumnsWithAccessibility])
    {
      v6 = [(MPLegacyRecentsTableViewCell *)self gridView];
      v7 = [v6 numberOfRows];

      if (v7 == 3)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    v105 = v3;
    (v3[2])(v3);
    v12 = [(PHTableViewCell *)self titleLabel];
    [v12 setNumberOfLines:0];

    v13 = [(PHTableViewCell *)self subtitleLabel];
    [v13 setNumberOfLines:1];

    v14 = [(PHTableViewCell *)self titleLabel];
    v124 = v14;
    v15 = [NSArray arrayWithObjects:&v124 count:1];
    v16 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    [v16 setArrangedSubviews:v15];

    v17 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    [v17 setAxis:0];

    v18 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    [v18 setAlignment:1];

    v19 = [(PHTableViewCell *)self subtitleLabel];
    v123[0] = v19;
    v20 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
    v123[1] = v20;
    v21 = [NSArray arrayWithObjects:v123 count:2];
    v22 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    [v22 setArrangedSubviews:v21];

    v23 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    [v23 setAxis:0];

    v24 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    [v24 setAlignment:1];

    callTypeIconView = self->_callTypeIconView;
    v26 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    v27 = v26;
    if (callTypeIconView)
    {
      v121[0] = v26;
      v102 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
      v121[1] = v102;
      v100 = [NSArray arrayWithObjects:v121 count:2];
      v122[0] = v100;
      v28 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v120[0] = v28;
      v29 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v120[1] = v29;
      v30 = [NSArray arrayWithObjects:v120 count:2];
      v122[1] = v30;
      v31 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
      v119[0] = v31;
      v32 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
      v119[1] = v32;
      v33 = [NSArray arrayWithObjects:v119 count:2];
      v122[2] = v33;
      v34 = [NSArray arrayWithObjects:v122 count:3];
      v35 = [(MPLegacyRecentsTableViewCell *)self gridView];
      [v35 setArrangedSubviewRows:v34];

      v36 = [(MPLegacyRecentsTableViewCell *)self gridView];
      v37 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
      [v36 setAlignment:4 forView:v37 inAxis:0];

      v27 = [(MPLegacyRecentsTableViewCell *)self gridView];
      v38 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
      v39 = 1;
      [v27 setAlignment:3 forView:v38 inAxis:1];
    }

    else
    {
      v117[0] = v26;
      v38 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
      v117[1] = v38;
      v104 = [NSArray arrayWithObjects:v117 count:2];
      v118[0] = v104;
      v101 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v116[0] = v101;
      v68 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v116[1] = v68;
      v69 = [NSArray arrayWithObjects:v116 count:2];
      v118[1] = v69;
      v70 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
      v115[0] = v70;
      v71 = [(MPLegacyRecentsTableViewCell *)self callTypeIconSizingView];
      v115[1] = v71;
      v72 = [NSArray arrayWithObjects:v115 count:2];
      v118[2] = v72;
      v73 = [NSArray arrayWithObjects:v118 count:3];
      v74 = [(MPLegacyRecentsTableViewCell *)self gridView];
      [v74 setArrangedSubviewRows:v73];

      v39 = 1;
    }

LABEL_20:

    v81 = [(MPLegacyRecentsTableViewCell *)self gridView];
    v82 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
    [v81 setAlignment:v39 forView:v82 inAxis:0];

    v83 = [(MPLegacyRecentsTableViewCell *)self gridView];
    v84 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
    [v83 setAlignment:3 forView:v84 inAxis:1];

    v3 = v105;
    goto LABEL_21;
  }

LABEL_4:
  if ([(MPLegacyRecentsTableViewCell *)self isAccessibilityConstraintsEnabled])
  {
    goto LABEL_21;
  }

  v8 = [(MPLegacyRecentsTableViewCell *)self gridView];
  v9 = [v8 numberOfColumns];
  if (v9 != [(MPLegacyRecentsTableViewCell *)self maximumColumnsWithoutAccessibility])
  {

    goto LABEL_12;
  }

  v10 = [(MPLegacyRecentsTableViewCell *)self gridView];
  v11 = [v10 numberOfRows];

  if (v11 != 2)
  {
LABEL_12:
    v105 = v3;
    (v3[2])(v3);
    v40 = [(MPLegacyRecentsTableViewCell *)self traitCollection];
    if ([v40 preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells])
    {
      v41 = 0;
    }

    else
    {
      v41 = 2;
    }

    v42 = [(PHTableViewCell *)self titleLabel];
    [v42 setNumberOfLines:v41];

    v43 = [(PHTableViewCell *)self subtitleLabel];
    [v43 setNumberOfLines:1];

    v44 = [(PHTableViewCell *)self titleLabel];
    v114[0] = v44;
    v45 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
    v114[1] = v45;
    v46 = [NSArray arrayWithObjects:v114 count:2];
    v47 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    [v47 setArrangedSubviews:v46];

    v48 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    [v48 setAxis:0];

    v49 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    [v49 setAlignment:5];

    v50 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
    v51 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
    [v50 setAlignment:4 forView:v51 inAxis:0];

    v52 = [(PHTableViewCell *)self subtitleLabel];
    v113 = v52;
    v53 = [NSArray arrayWithObjects:&v113 count:1];
    v54 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    [v54 setArrangedSubviews:v53];

    v55 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    [v55 setAxis:0];

    v56 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    [v56 setAlignment:1];

    if (self->_callTypeIconView)
    {
      v103 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
      v111[0] = v103;
      v57 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
      v111[1] = v57;
      v58 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
      v111[2] = v58;
      v59 = [NSArray arrayWithObjects:v111 count:3];
      v112[0] = v59;
      v60 = [(MPLegacyRecentsTableViewCell *)self callTypeIconSizingView];
      v110[0] = v60;
      v61 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v110[1] = v61;
      v62 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
      v110[2] = v62;
      v63 = [NSArray arrayWithObjects:v110 count:3];
      v112[1] = v63;
      v64 = [NSArray arrayWithObjects:v112 count:2];
      v65 = [(MPLegacyRecentsTableViewCell *)self gridView];
      [v65 setArrangedSubviewRows:v64];

      v66 = [(MPLegacyRecentsTableViewCell *)self gridView];
      v67 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
      [v66 setAlignment:3 forView:v67 inAxis:0];

      v27 = [(MPLegacyRecentsTableViewCell *)self gridView];
      v38 = [(MPLegacyRecentsTableViewCell *)self callTypeIconView];
      [v27 setAlignment:3 forView:v38 inAxis:1];
    }

    else
    {
      v27 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
      v108[0] = v27;
      v38 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
      v108[1] = v38;
      v75 = [NSArray arrayWithObjects:v108 count:2];
      v109[0] = v75;
      v76 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
      v107[0] = v76;
      v77 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
      v107[1] = v77;
      v78 = [NSArray arrayWithObjects:v107 count:2];
      v109[1] = v78;
      v79 = [NSArray arrayWithObjects:v109 count:2];
      v80 = [(MPLegacyRecentsTableViewCell *)self gridView];
      [v80 setArrangedSubviewRows:v79];
    }

    v39 = 4;
    goto LABEL_20;
  }

LABEL_21:
  if (self->_outgoingIndicator)
  {
    v85 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    v86 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    [v85 insertArrangedSubview:v86 atIndex:0];

    v87 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    v88 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    [v87 setAlignment:3 forView:v88 inAxis:0];

    v89 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
    v90 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    [v89 setAlignment:3 forView:v90 inAxis:1];

    v91 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    LODWORD(v92) = 1148846080;
    [v91 setContentHuggingPriority:0 forAxis:v92];

    v93 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    LODWORD(v94) = 1148846080;
    [v93 setContentHuggingPriority:1 forAxis:v94];

    v95 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    LODWORD(v96) = 1148846080;
    [v95 setContentCompressionResistancePriority:0 forAxis:v96];

    v97 = [(MPLegacyRecentsTableViewCell *)self outgoingIndicator];
    LODWORD(v98) = 1148846080;
    [v97 setContentCompressionResistancePriority:1 forAxis:v98];

    v99 = [(MPLegacyRecentsTableViewCell *)self gridView];
    [v99 setNeedsLayout];
  }
}

- (void)setAvatarViewController:(id)a3
{
  v5 = a3;
  if (self->_avatarViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_avatarViewController, a3);
    [(MPLegacyRecentsTableViewCell *)self updateRootView];
    [(MPLegacyRecentsTableViewCell *)self configureGridViewArrangedSubviews];
    v5 = v6;
  }
}

- (void)updateRootView
{
  v3 = [(MPLegacyRecentsTableViewCell *)self avatarViewController];

  if (v3)
  {
    v4 = [(MPLegacyRecentsTableViewCell *)self avatarViewController];
    v5 = [v4 view];
    [v5 setMinimumLayoutSize:{45.0, 45.0}];

    v6 = [(MPLegacyRecentsTableViewCell *)self avatarViewController];
    v7 = [v6 view];
    [v7 setMaximumLayoutSize:{45.0, 45.0}];

    v8 = [(MPLegacyRecentsTableViewCell *)self avatarViewController];
    v9 = [v8 view];

    LODWORD(v10) = 1148846080;
    [v9 setContentCompressionResistancePriority:0 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [v9 setContentCompressionResistancePriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [v9 setContentHuggingPriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [v9 setContentHuggingPriority:1 forAxis:v13];
    v14 = [(MPLegacyRecentsTableViewCell *)self gridView];
    v19 = v9;
    v15 = [NSArray arrayWithObjects:&v19 count:1];
    v16 = [v14 insertColumnAtIndex:0 withArrangedSubviews:v15];

    v17 = [(MPLegacyRecentsTableViewCell *)self gridView];
    [v17 setAlignment:1 forView:v9 inAxis:0];

    v18 = [(MPLegacyRecentsTableViewCell *)self gridView];
    [v18 setAlignment:3 forView:v9 inAxis:1];

    [(MPLegacyRecentsTableViewCell *)self setPreservesSuperviewLayoutMargins:1];
  }
}

- (void)callButtonTapped:(id)a3
{
  v4 = [(MPLegacyRecentsTableViewCell *)self callButtonTappedHandler];

  if (v4)
  {
    v5 = [(MPLegacyRecentsTableViewCell *)self callButtonTappedHandler];
    v5[2]();
  }
}

- (void)setCallButtonTappedHandler:(id)a3
{
  self->_callButtonTappedHandler = objc_retainBlock(a3);

  _objc_release_x1();
}

- (void)updateFonts
{
  v3 = +[UIFont telephonyUIBodyShortEmphasizedFont];
  v4 = [(PHTableViewCell *)self titleLabel];
  [v4 setFont:v3];

  v5 = +[UIFont telephonyUISubheadlineShortFont];
  v6 = [(PHTableViewCell *)self subtitleLabel];
  [v6 setFont:v5];

  v7 = [(PHTableViewCell *)self subtitleLabel];
  v8 = [v7 font];
  v9 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
  [v9 setFont:v8];

  v10 = NUIContainerViewLengthUseDefault;
  v11 = [(PHTableViewCell *)self subtitleLabel];
  [v11 setCustomBaselineOffsetFromBottom:v10];

  [(MPLegacyRecentsTableViewCell *)self effectiveBaselineOffsetFromBottom];
  v13 = v12;
  v14 = [(PHTableViewCell *)self subtitleLabel];
  [v14 setCustomBaselineOffsetFromBottom:v13];

  if ([(MPLegacyRecentsTableViewCell *)self isAccessibilityConstraintsEnabled])
  {
    [(PHTableViewCell *)self subtitleLabel];
  }

  else
  {
    [(PHTableViewCell *)self titleLabel];
  }
  v15 = ;
  v16 = [v15 font];
  v17 = [(MPLegacyRecentsTableViewCell *)self callerCountLabel];
  [v17 setFont:v16];

  [(MPLegacyRecentsTableViewCell *)self updateTextColor];
}

- (void)updateTextColor
{
  v3 = +[UIColor dynamicSecondaryLabelColor];
  v4 = [(MPLegacyRecentsTableViewCell *)self _accessibilityHigherContrastTintColorForColor:v3];
  v5 = [(PHTableViewCell *)self subtitleLabel];
  [v5 setTextColor:v4];

  v8 = +[UIColor dynamicSecondaryLabelColor];
  v6 = [(MPLegacyRecentsTableViewCell *)self _accessibilityHigherContrastTintColorForColor:v8];
  v7 = [(MPLegacyRecentsTableViewCell *)self callerDateLabel];
  [v7 setTextColor:v6];
}

- (void)showContainerViewDebugBoundingBox
{
  v3 = [(MPLegacyRecentsTableViewCell *)self gridView];
  [v3 setDebugBoundingBoxesEnabled:1];

  v4 = [(MPLegacyRecentsTableViewCell *)self titleStackView];
  [v4 setDebugBoundingBoxesEnabled:1];

  v5 = [(MPLegacyRecentsTableViewCell *)self subtitleStackView];
  [v5 setDebugBoundingBoxesEnabled:1];
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
  v4 = [(MPLegacyRecentsTableViewCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  [v3 titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:v5];
  v7 = v6;

  return v7;
}

- (double)callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(MPLegacyRecentsTableViewCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  [v3 callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:v5];
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

+ (double)callTypeIconLayoutGuideWidthAnchorLayoutConstraintConstant:(id)a3
{
  v3 = a3;
  [objc_opt_class() largestCallTypeIconWidth];
  v5 = v4;
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  result = 0.0;
  if (!IsAccessibilityCategory)
  {
    return v5;
  }

  return result;
}

+ (double)callTypeIconLayoutGuideLeadingAnchorLayoutConstraintConstantForContentCategorySize:(id)a3
{
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(a3);
  result = 10.0;
  if (IsAccessibilityCategory)
  {
    return 15.0;
  }

  return result;
}

+ (double)titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:(id)a3
{
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(a3);
  result = 12.0;
  if (IsAccessibilityCategory)
  {
    return 0.0;
  }

  return result;
}

@end