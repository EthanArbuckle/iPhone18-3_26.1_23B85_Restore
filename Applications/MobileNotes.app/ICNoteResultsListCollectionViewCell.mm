@interface ICNoteResultsListCollectionViewCell
- (CGRect)estimatedBoundsForLabel:(id)a3;
- (CGSize)currentThumbnailSize;
- (ICAccessibilityCustomActionsDelegate)accessibilityCustomActionsDelegate;
- (ICNoteResultsListCollectionViewCell)initWithFrame:(CGRect)a3;
- (double)verticalPadding;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)createLabel;
- (unint64_t)accessibilityTraits;
- (unint64_t)numberOfLines;
- (void)addNotificationObservers;
- (void)configureColorsForSearchResult;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)enableIntrinsicSizeShortcut:(BOOL)a3;
- (void)registerForTraitChanges;
- (void)removeNotificationObservers;
- (void)resetColors;
- (void)setConfiguration:(id)a3 synchronously:(BOOL)a4;
- (void)setCurrentThumbnailLocation:(int64_t)a3;
- (void)updateBackgroundConfigurationUsingState:(id)a3;
- (void)updateColorsUsingState:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
- (void)updateFromConfiguration;
- (void)updateLabelsFromConfiguration;
- (void)updateStatusIndicatorsUsingState:(id)a3;
- (void)updateThumbnailFromConfiguration;
- (void)updateViewStateProperties;
@end

@implementation ICNoteResultsListCollectionViewCell

- (ICNoteResultsListCollectionViewCell)initWithFrame:(CGRect)a3
{
  v145.receiver = self;
  v145.super_class = ICNoteResultsListCollectionViewCell;
  v3 = [(ICBaseNoteResultsCollectionViewCell *)&v145 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v3;
  v6 = &OBJC_IVAR___ICNoteBrowseNavigationItemConfiguration__authenticated;
  if (v3)
  {
    [(ICNoteResultsListCollectionViewCell *)v3 setAutomaticallyUpdatesContentConfiguration:0];
    [(ICNoteResultsListCollectionViewCell *)v5 setAutomaticallyUpdatesBackgroundConfiguration:0];
    v7 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    statusIndicatorImageView = v5->_statusIndicatorImageView;
    v5->_statusIndicatorImageView = v11;

    [(UIImageView *)v5->_statusIndicatorImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    secondaryStatusIndicatorImageView = v5->_secondaryStatusIndicatorImageView;
    v5->_secondaryStatusIndicatorImageView = v13;

    [(UIImageView *)v5->_secondaryStatusIndicatorImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICNoteResultsListCollectionViewCell *)v5 resetColors];
    v15 = [(ICNoteResultsListCollectionViewCell *)v5 createLabel];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v15;

    v17 = [(ICNoteResultsListCollectionViewCell *)v5 primaryLabelColor];
    [(UILabel *)v5->_titleLabel setTextColor:v17];

    v18 = [(ICNoteResultsListCollectionViewCell *)v5 createLabel];
    dateLabel = v5->_dateLabel;
    v5->_dateLabel = v18;

    v20 = [(ICNoteResultsListCollectionViewCell *)v5 secondaryLabelColor];
    [(UILabel *)v5->_dateLabel setTextColor:v20];

    v21 = [(ICNoteResultsListCollectionViewCell *)v5 createLabel];
    summaryLabel = v5->_summaryLabel;
    v5->_summaryLabel = v21;

    v23 = [(ICNoteResultsListCollectionViewCell *)v5 secondaryLabelColor];
    [(UILabel *)v5->_summaryLabel setTextColor:v23];

    v24 = [(ICNoteResultsListCollectionViewCell *)v5 createLabel];
    participantsLabel = v5->_participantsLabel;
    v5->_participantsLabel = v24;

    v26 = [(ICNoteResultsListCollectionViewCell *)v5 secondaryLabelColor];
    [(UILabel *)v5->_participantsLabel setTextColor:v26];

    v27 = [(ICNoteResultsListCollectionViewCell *)v5 createLabel];
    folderAndAccountLabel = v5->_folderAndAccountLabel;
    v5->_folderAndAccountLabel = v27;

    v29 = [(ICNoteResultsListCollectionViewCell *)v5 secondaryLabelColor];
    [(UILabel *)v5->_folderAndAccountLabel setTextColor:v29];

    v30 = objc_alloc_init(UIImageView);
    folderLabelImageView = v5->_folderLabelImageView;
    v5->_folderLabelImageView = v30;

    [(UIImageView *)v5->_folderLabelImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [(UILabel *)v5->_folderAndAccountLabel textColor];
    [(UIImageView *)v5->_folderLabelImageView setTintColor:v32];

    [(UIImageView *)v5->_folderLabelImageView setContentMode:1];
    [(UIImageView *)v5->_folderLabelImageView setOpaque:1];
    LODWORD(v33) = 1148846080;
    [(UIImageView *)v5->_folderLabelImageView setContentCompressionResistancePriority:1 forAxis:v33];
    LODWORD(v34) = 1148846080;
    [(UIImageView *)v5->_folderLabelImageView setContentCompressionResistancePriority:0 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [(UIImageView *)v5->_folderLabelImageView setContentHuggingPriority:1 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [(UIImageView *)v5->_folderLabelImageView setContentHuggingPriority:0 forAxis:v36];
    v37 = [UIStackView alloc];
    v151[0] = v5->_folderLabelImageView;
    v151[1] = v5->_folderAndAccountLabel;
    v38 = [NSArray arrayWithObjects:v151 count:2];
    v39 = [v37 initWithArrangedSubviews:v38];
    folderStackView = v5->_folderStackView;
    v5->_folderStackView = v39;

    [(UIStackView *)v5->_folderStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v5->_folderStackView setAxis:0];
    [(UIStackView *)v5->_folderStackView setDistribution:0];
    v41 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    thumbnailImageView = v5->_thumbnailImageView;
    v5->_thumbnailImageView = v41;

    [(UIImageView *)v5->_thumbnailImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = +[UIColor secondarySystemGroupedBackgroundColor];
    [(UIImageView *)v5->_thumbnailImageView setBackgroundColor:v43];

    v44 = +[UIColor tertiaryLabelColor];
    [(UIImageView *)v5->_thumbnailImageView setTintColor:v44];

    v45 = +[UIColor quaternaryLabelColor];
    v46 = [v45 CGColor];
    v47 = [(UIImageView *)v5->_thumbnailImageView layer];
    [v47 setBorderColor:v46];

    [(ICNoteResultsListCollectionViewCell *)v5 ic_hairlineWidth];
    v49 = v48;
    v50 = [(UIImageView *)v5->_thumbnailImageView layer];
    [v50 setBorderWidth:v49];

    [(UIImageView *)v5->_thumbnailImageView ic_applyRoundedCornersWithRadius:8.0];
    v150[0] = v5->_titleLabel;
    v150[1] = v5->_dateLabel;
    v150[2] = v5->_summaryLabel;
    v150[3] = v5->_participantsLabel;
    v150[4] = v5->_folderStackView;
    v140 = [NSArray arrayWithObjects:v150 count:5];
    v51 = [[UIStackView alloc] initWithArrangedSubviews:v140];
    verticalStackView = v5->_verticalStackView;
    v5->_verticalStackView = v51;

    [(UIStackView *)v5->_verticalStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v5->_verticalStackView setAxis:1];
    [(UIStackView *)v5->_verticalStackView setDistribution:0];
    [(UIStackView *)v5->_verticalStackView setSpacing:2.0];
    v53 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    [v53 addSubview:v5->_verticalStackView];

    v54 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    [v54 addSubview:v5->_statusIndicatorImageView];

    v55 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    [v55 addSubview:v5->_secondaryStatusIndicatorImageView];

    v56 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    [v56 addSubview:v5->_thumbnailImageView];

    v57 = objc_alloc_init(UILayoutGuide);
    v58 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    [v58 addLayoutGuide:v57];

    v136 = [(ICNoteResultsListCollectionViewCell *)v5 separatorLayoutGuide];
    v135 = [v136 leadingAnchor];
    v134 = [(UIStackView *)v5->_verticalStackView leadingAnchor];
    v59 = [v135 constraintEqualToAnchor:v134];
    separatorLeadingConstraint = v5->_separatorLeadingConstraint;
    v5->_separatorLeadingConstraint = v59;

    v149[0] = v59;
    v132 = [v57 leadingAnchor];
    v133 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    v131 = [v133 leadingAnchor];
    v130 = [v132 constraintEqualToAnchor:v131];
    v149[1] = v130;
    v129 = [v57 trailingAnchor];
    v128 = [(UIStackView *)v5->_verticalStackView leadingAnchor];
    v127 = [v129 constraintEqualToAnchor:v128];
    v149[2] = v127;
    v126 = [(UIImageView *)v5->_statusIndicatorImageView centerXAnchor];
    v139 = v57;
    v125 = [v57 centerXAnchor];
    v124 = [v126 constraintEqualToAnchor:v125];
    v149[3] = v124;
    v123 = [(UIImageView *)v5->_statusIndicatorImageView centerYAnchor];
    v122 = [(UILabel *)v5->_titleLabel centerYAnchor];
    v121 = [v123 constraintEqualToAnchor:v122];
    v149[4] = v121;
    v120 = [(UIImageView *)v5->_secondaryStatusIndicatorImageView centerXAnchor];
    v119 = [v57 centerXAnchor];
    v118 = [v120 constraintEqualToAnchor:v119];
    v149[5] = v118;
    v116 = [(UIStackView *)v5->_verticalStackView topAnchor];
    v117 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    v115 = [v117 topAnchor];
    [(ICNoteResultsListCollectionViewCell *)v5 verticalPadding];
    v61 = [v116 constraintEqualToAnchor:v115 constant:?];
    verticalStackViewTopConstraint = v5->_verticalStackViewTopConstraint;
    v5->_verticalStackViewTopConstraint = v61;

    v149[6] = v61;
    v114 = [(ICNoteResultsListCollectionViewCell *)v5 verticalStackView];
    v112 = [v114 leadingAnchor];
    v113 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    v111 = [v113 leadingAnchor];
    v63 = [v112 constraintEqualToAnchor:v111 constant:28.0];
    verticalStackViewLeadingConstraint = v5->_verticalStackViewLeadingConstraint;
    v5->_verticalStackViewLeadingConstraint = v63;

    v149[7] = v63;
    v65 = [(ICNoteResultsListCollectionViewCell *)v5 verticalStackView];
    v66 = [v65 trailingAnchor];
    v67 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    v68 = [v67 trailingAnchor];
    v69 = [v66 constraintEqualToAnchor:v68 constant:-12.0];
    verticalStackViewTrailingConstraint = v5->_verticalStackViewTrailingConstraint;
    v5->_verticalStackViewTrailingConstraint = v69;

    v149[8] = v69;
    v71 = [(ICNoteResultsListCollectionViewCell *)v5 verticalStackView];
    v72 = [v71 bottomAnchor];
    v73 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    v74 = [v73 bottomAnchor];
    [(ICNoteResultsListCollectionViewCell *)v5 verticalPadding];
    v76 = [v72 constraintEqualToAnchor:v74 constant:-v75];
    verticalStackViewBottomConstraint = v5->_verticalStackViewBottomConstraint;
    v5->_verticalStackViewBottomConstraint = v76;

    v149[9] = v76;
    v78 = [NSArray arrayWithObjects:v149 count:10];
    [NSLayoutConstraint activateConstraints:v78];

    v79 = [(UIImageView *)v5->_secondaryStatusIndicatorImageView centerYAnchor];
    v80 = [(UILabel *)v5->_summaryLabel centerYAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];
    secondaryStatusIndicatorCenterYNormalConstraint = v5->_secondaryStatusIndicatorCenterYNormalConstraint;
    v5->_secondaryStatusIndicatorCenterYNormalConstraint = v81;

    v83 = [(UIImageView *)v5->_secondaryStatusIndicatorImageView centerYAnchor];
    v84 = [(UILabel *)v5->_dateLabel centerYAnchor];
    v85 = [v83 constraintEqualToAnchor:v84];
    secondaryStatusIndicatorCenterYAXConstraint = v5->_secondaryStatusIndicatorCenterYAXConstraint;
    v5->_secondaryStatusIndicatorCenterYAXConstraint = v85;

    v141 = [(UIImageView *)v5->_thumbnailImageView trailingAnchor];
    v143 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    v137 = [v143 trailingAnchor];
    v87 = [v141 constraintEqualToAnchor:v137 constant:-12.0];
    v148[0] = v87;
    v88 = [(UIImageView *)v5->_thumbnailImageView centerYAnchor];
    v89 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    v90 = [v89 centerYAnchor];
    v91 = [v88 constraintEqualToAnchor:v90];
    v148[1] = v91;
    v92 = [(UIImageView *)v5->_thumbnailImageView widthAnchor];
    v93 = [(UIImageView *)v5->_thumbnailImageView heightAnchor];
    v94 = [v92 constraintEqualToAnchor:v93];
    v148[2] = v94;
    v95 = [NSArray arrayWithObjects:v148 count:3];
    trailingThumbnailConstraints = v5->_trailingThumbnailConstraints;
    v5->_trailingThumbnailConstraints = v95;

    v142 = [(UIImageView *)v5->_thumbnailImageView bottomAnchor];
    v144 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    v138 = [v144 bottomAnchor];
    [(ICNoteResultsListCollectionViewCell *)v5 verticalPadding];
    v98 = [v142 constraintEqualToAnchor:v138 constant:v97 * -2.0];
    v147[0] = v98;
    v99 = [(UIImageView *)v5->_thumbnailImageView leadingAnchor];
    v100 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v101 = [v99 constraintEqualToAnchor:v100];
    v147[1] = v101;
    v102 = [(UIImageView *)v5->_thumbnailImageView heightAnchor];
    v103 = [v102 constraintEqualToConstant:68.0];
    v147[2] = v103;
    v104 = [(UIImageView *)v5->_thumbnailImageView widthAnchor];
    v105 = [v104 constraintEqualToConstant:68.0];
    v147[3] = v105;
    v106 = [NSArray arrayWithObjects:v147 count:4];
    bottomThumbnailConstraints = v5->_bottomThumbnailConstraints;
    v5->_bottomThumbnailConstraints = v106;

    [(ICNoteResultsListCollectionViewCell *)v5 enableIntrinsicSizeShortcut:1];
    [(ICNoteResultsListCollectionViewCell *)v5 updateViewStateProperties];
    v108 = objc_alloc_init(UICellAccessoryMultiselect);
    [v108 setDisplayedState:1];
    v146 = v108;
    v109 = [NSArray arrayWithObjects:&v146 count:1];
    [(ICNoteResultsListCollectionViewCell *)v5 setAccessories:v109];

    [(ICNoteResultsListCollectionViewCell *)v5 addNotificationObservers];
    [(ICNoteResultsListCollectionViewCell *)v5 registerForTraitChanges];

    v6 = &OBJC_IVAR___ICNoteBrowseNavigationItemConfiguration__authenticated;
  }

  LODWORD(v4) = 1144750080;
  [*(&v5->super.super.super.super.super.super.super.isa + v6[488]) setPriority:v4];
  return v5;
}

- (void)setConfiguration:(id)a3 synchronously:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(ICNoteResultsListCollectionViewCell *)self enableIntrinsicSizeShortcut:1];
  v7.receiver = self;
  v7.super_class = ICNoteResultsListCollectionViewCell;
  [(ICBaseNoteResultsCollectionViewCell *)&v7 setConfiguration:v6 synchronously:v4];

  [(ICNoteResultsListCollectionViewCell *)self resetColors];
}

- (void)updateViewStateProperties
{
  v16.receiver = self;
  v16.super_class = ICNoteResultsListCollectionViewCell;
  [(ICBaseNoteResultsCollectionViewCell *)&v16 updateViewStateProperties];
  v3 = [UIFont ic_preferredSingleLineAFontForTextStyle:UIFontTextStyleSubheadline];
  v4 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
  [v4 setFont:v3];

  v5 = [UIFont ic_preferredSingleLineAFontForTextStyle:UIFontTextStyleSubheadline];
  v6 = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
  [v6 setFont:v5];

  v7 = [(ICNoteResultsListCollectionViewCell *)self traitCollection];
  -[ICNoteResultsListCollectionViewCell setIsInSplitView:](self, "setIsInSplitView:", [v7 _splitViewControllerContext] == 3);

  [(ICNoteResultsListCollectionViewCell *)self setIsAXSize:ICAccessibilityAccessibilityLargerTextSizesEnabled()];
  v8 = [(ICNoteResultsListCollectionViewCell *)self traitCollection];
  v9 = [v8 preferredContentSizeCategory];
  [(ICNoteResultsListCollectionViewCell *)self setIsLargerThanAXLarge:UIContentSizeCategoryCompareToCategory(v9, UIContentSizeCategoryAccessibilityLarge) > NSOrderedSame];

  if ([(ICNoteResultsListCollectionViewCell *)self isAXSize])
  {
    [(ICNoteResultsListCollectionViewCell *)self secondaryStatusIndicatorCenterYAXConstraint];
  }

  else
  {
    [(ICNoteResultsListCollectionViewCell *)self secondaryStatusIndicatorCenterYNormalConstraint];
  }
  v10 = ;
  if ([(ICNoteResultsListCollectionViewCell *)self isAXSize])
  {
    [(ICNoteResultsListCollectionViewCell *)self secondaryStatusIndicatorCenterYNormalConstraint];
  }

  else
  {
    [(ICNoteResultsListCollectionViewCell *)self secondaryStatusIndicatorCenterYAXConstraint];
  }
  v11 = ;
  if (([v10 isActive] & 1) == 0)
  {
    [v10 setActive:1];
    [v11 setActive:0];
  }

  if ([(ICNoteResultsListCollectionViewCell *)self isAXSize])
  {
    v12 = 37.0;
  }

  else
  {
    v12 = 28.0;
  }

  v13 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewLeadingConstraint];
  [v13 setConstant:v12];

  v14 = [(ICNoteResultsListCollectionViewCell *)self numberOfLines];
  v15 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  [v15 setMaxNumberOfLabelLines:v14];
}

- (CGRect)estimatedBoundsForLabel:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if (([v4 isHidden] & 1) == 0)
  {
    v6 = [v4 font];
    [v6 lineHeight];
    v5 = v7;
  }

  [(ICNoteResultsListCollectionViewCell *)self frame];
  v9 = v8 + -24.0;
  v10 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewLeadingConstraint];
  [v10 constant];
  v12 = v9 - v11;
  v13 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewTrailingConstraint];
  [v13 constant];
  v15 = v12 - v14;

  v16 = 0.0;
  v17 = 0.0;
  v18 = v15;
  v19 = v5;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  [(ICNoteResultsListCollectionViewCell *)self updateColorsUsingState:v4];
  [(ICNoteResultsListCollectionViewCell *)self updateStatusIndicatorsUsingState:v4];
  [(ICNoteResultsListCollectionViewCell *)self updateBackgroundConfigurationUsingState:v4];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = a3;
  [(ICNoteResultsListCollectionViewCell *)self enableIntrinsicSizeShortcut:0];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:UIContentSizeCategoryNewValueKey];

  if (v6)
  {
    [(ICNoteResultsListCollectionViewCell *)self setIc_preferredContentSizeCategory:v6];
  }

  [(ICNoteResultsListCollectionViewCell *)self updateViewStateProperties];
  [(ICNoteResultsListCollectionViewCell *)self updateFromConfiguration];
}

- (id)accessibilityLabel
{
  v2 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(ICNoteResultsListCollectionViewCell *)self isSelected];
  v3 = &UIAccessibilityTraitSelected;
  if (!v2)
  {
    v3 = &UIAccessibilityTraitNone;
  }

  return *v3;
}

- (id)accessibilityCustomActions
{
  v3 = [(ICNoteResultsListCollectionViewCell *)self accessibilityCustomActionsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ICNoteResultsListCollectionViewCell *)self accessibilityCustomActionsDelegate];
    v6 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v7 = [v6 note];
    v8 = [v7 objectID];
    v9 = [v5 customAccessibilityActionsForObjectID:v8 galleryView:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)numberOfLines
{
  if (![(ICNoteResultsListCollectionViewCell *)self isAXSize])
  {
    return 1;
  }

  if ([(ICNoteResultsListCollectionViewCell *)self isLargerThanAXLarge])
  {
    return 3;
  }

  return 2;
}

- (void)updateBackgroundConfigurationUsingState:(id)a3
{
  v9 = a3;
  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    +[UIBackgroundConfiguration listPlainCellConfiguration];
  }

  else
  {
    [(ICNoteResultsListCollectionViewCell *)self defaultBackgroundConfiguration];
  }
  v4 = ;
  if ([v9 cellDropState] == 2)
  {
    [v9 setCellDropState:1];
    [v9 setFocused:0];
  }

  if ([(ICNoteResultsListCollectionViewCell *)self isPinDropTarget])
  {
    if ((+[UIDevice ic_isVision]& 1) != 0)
    {
      +[UIColor secondarySystemFillColor];
    }

    else
    {
      +[UIColor systemFillColor];
    }
    v5 = ;
    [v4 setBackgroundColor:v5];
  }

  v6 = [v9 traitCollection];
  v7 = [v6 listEnvironment];

  if (v7 == 6)
  {
    [v4 setCornerRadius:20.0];
  }

  v8 = [v4 updatedConfigurationForState:v9];
  [(ICNoteResultsListCollectionViewCell *)self setBackgroundConfiguration:v8];
}

- (void)configureColorsForSearchResult
{
  v3 = [(ICNoteResultsListCollectionViewCell *)self configurationState];
  [(ICNoteResultsListCollectionViewCell *)self updateColorsUsingState:v3];
}

- (void)updateColorsUsingState:(id)a3
{
  v4 = a3;
  v5 = +[UIListContentConfiguration valueCellConfiguration];
  if ([v4 cellDropState] == 2 || objc_msgSend(v4, "cellDropState") == 1)
  {
    [v4 setCellDropState:1];
    [v4 setFocused:0];
  }

  v6 = [v5 updatedConfigurationForState:v4];

  v7 = [v6 textProperties];
  v8 = [v7 color];
  [(ICNoteResultsListCollectionViewCell *)self setPrimaryLabelColor:v8];

  v9 = [v6 secondaryTextProperties];
  v10 = [v9 color];
  [(ICNoteResultsListCollectionViewCell *)self setSecondaryLabelColor:v10];

  v11 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v12 = [v11 searchResult];
  if (v12)
  {
    v13 = v12;
    v14 = [(ICBaseNoteResultsCollectionViewCell *)self settingConfigurationForSearchResult];

    if ((v14 & 1) == 0)
    {
      v15 = [v4 isSelected];
      v16 = v15;
      v48 = v6;
      if (v15)
      {
        [UIColor colorNamed:@"selected_search_highlight"];
      }

      else
      {
        v14 = [(ICNoteResultsListCollectionViewCell *)self window];
        [v14 tintColor];
      }
      v17 = ;
      v18 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      [v18 setHighlightColor:v17];

      if ((v16 & 1) == 0)
      {

        v17 = v14;
      }

      v46 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      v51[0] = NSFontAttributeName;
      v47 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
      v19 = [v47 font];
      v52[0] = v19;
      v51[1] = NSForegroundColorAttributeName;
      v20 = [(ICNoteResultsListCollectionViewCell *)self primaryLabelColor];
      v52[1] = v20;
      v21 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
      v49[0] = NSFontAttributeName;
      v22 = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
      v23 = [v22 font];
      v49[1] = NSForegroundColorAttributeName;
      v50[0] = v23;
      v24 = [(ICNoteResultsListCollectionViewCell *)self secondaryLabelColor];
      v50[1] = v24;
      v25 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
      [v46 updateTitleLabelAttributes:v21 summaryLabelAttributes:v25];

      v6 = v48;
    }
  }

  else
  {
  }

  v26 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v27 = [v26 searchResult];
  if (v27)
  {
    v28 = v27;
    v29 = [(ICBaseNoteResultsCollectionViewCell *)self settingConfigurationForSearchResult];

    if ((v29 & 1) == 0)
    {
      [(ICBaseNoteResultsCollectionViewCell *)self synchronouslyLoadConfigurationDataAndUpdate];
    }
  }

  else
  {
  }

  v30 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v31 = [v30 searchResult];

  if (!v31)
  {
    v32 = [(ICNoteResultsListCollectionViewCell *)self primaryLabelColor];
    v33 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
    [v33 setTextColor:v32];

    v34 = [(ICNoteResultsListCollectionViewCell *)self secondaryLabelColor];
    v35 = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
    [v35 setTextColor:v34];
  }

  v36 = [(ICNoteResultsListCollectionViewCell *)self secondaryLabelColor];
  v37 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
  [v37 setTextColor:v36];

  v38 = [(ICNoteResultsListCollectionViewCell *)self secondaryLabelColor];
  v39 = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
  [v39 setTextColor:v38];

  v40 = [(ICNoteResultsListCollectionViewCell *)self secondaryLabelColor];
  v41 = [(ICNoteResultsListCollectionViewCell *)self folderAndAccountLabel];
  [v41 setTextColor:v40];

  v42 = [(ICNoteResultsListCollectionViewCell *)self secondaryLabelColor];
  v43 = [(ICNoteResultsListCollectionViewCell *)self folderLabelImageView];
  [v43 setTintColor:v42];

  if ([v4 isSelected])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor tertiaryLabelColor];
  }
  v44 = ;
  v45 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
  [v45 setTintColor:v44];
}

- (void)resetColors
{
  v3 = +[UIColor labelColor];
  [(ICNoteResultsListCollectionViewCell *)self setPrimaryLabelColor:v3];

  v4 = +[UIColor secondaryLabelColor];
  [(ICNoteResultsListCollectionViewCell *)self setSecondaryLabelColor:v4];

  v6 = +[UIColor ICTintColor];
  v5 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  [v5 setHighlightColor:v6];
}

- (id)createLabel
{
  v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v3];

  return v2;
}

- (void)enableIntrinsicSizeShortcut:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
  [v5 _setUseShortcutIntrinsicContentSize:v3];

  v6 = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
  [v6 _setUseShortcutIntrinsicContentSize:v3];

  v7 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
  [v7 _setUseShortcutIntrinsicContentSize:v3];

  v8 = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
  [v8 _setUseShortcutIntrinsicContentSize:v3];

  v9 = [(ICNoteResultsListCollectionViewCell *)self folderAndAccountLabel];
  [v9 _setUseShortcutIntrinsicContentSize:v3];
}

- (void)setCurrentThumbnailLocation:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      v17 = [(ICNoteResultsListCollectionViewCell *)self trailingThumbnailConstraints];
      [NSLayoutConstraint deactivateConstraints:v17];

      [(ICNoteResultsListCollectionViewCell *)self currentThumbnailSize];
      v19 = v18;
      [(ICNoteResultsListCollectionViewCell *)self verticalPadding];
      v21 = -(v19 + v20 * 3.0);
      v22 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewBottomConstraint];
      [v22 setConstant:v21];

      v23 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewTrailingConstraint];
      [v23 setConstant:-12.0];

      v16 = [(ICNoteResultsListCollectionViewCell *)self bottomThumbnailConstraints];
      goto LABEL_7;
    case 1:
      v9 = [(ICNoteResultsListCollectionViewCell *)self bottomThumbnailConstraints];
      [NSLayoutConstraint deactivateConstraints:v9];

      [(ICNoteResultsListCollectionViewCell *)self currentThumbnailSize];
      v11 = -(v10 + 24.0);
      v12 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewTrailingConstraint];
      [v12 setConstant:v11];

      [(ICNoteResultsListCollectionViewCell *)self verticalPadding];
      v14 = -v13;
      v15 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewBottomConstraint];
      [v15 setConstant:v14];

      v16 = [(ICNoteResultsListCollectionViewCell *)self trailingThumbnailConstraints];
LABEL_7:
      v8 = v16;
      [NSLayoutConstraint activateConstraints:v16];
      goto LABEL_8;
    case 0:
      [(ICNoteResultsListCollectionViewCell *)self verticalPadding];
      v6 = -v5;
      v7 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewBottomConstraint];
      [v7 setConstant:v6];

      v8 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewTrailingConstraint];
      [v8 setConstant:-12.0];
LABEL_8:

      break;
  }

  self->_currentThumbnailLocation = a3;
}

- (void)updateFromConfiguration
{
  v3 = [(ICNoteResultsListCollectionViewCell *)self numberOfLines];
  v4 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
  [v4 setNumberOfLines:v3];

  v5 = [(ICNoteResultsListCollectionViewCell *)self numberOfLines];
  v6 = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
  [v6 setNumberOfLines:v5];

  v7 = [(ICNoteResultsListCollectionViewCell *)self numberOfLines];
  v8 = [(ICNoteResultsListCollectionViewCell *)self folderAndAccountLabel];
  [v8 setNumberOfLines:v7];

  v9 = [(ICNoteResultsListCollectionViewCell *)self numberOfLines];
  v10 = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
  [v10 setNumberOfLines:v9];

  v11 = [(ICNoteResultsListCollectionViewCell *)self traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  [(ICNoteResultsListCollectionViewCell *)self setIsLargerThanAXLarge:UIContentSizeCategoryCompareToCategory(v12, UIContentSizeCategoryAccessibilityLarge) > NSOrderedSame];

  v13 = [(ICNoteResultsListCollectionViewCell *)self isLargerThanAXLarge];
  v14 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v15 = [v14 showParticipantsInfo];

  v16 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  if ([v16 showFolderName])
  {
    v17 = 1;
  }

  else
  {
    v18 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v17 = [v18 showAccountName];
  }

  if ([(ICNoteResultsListCollectionViewCell *)self hidesThumbnail])
  {
    [(ICNoteResultsListCollectionViewCell *)self setIsThumbnailPresent:0];
  }

  else
  {
    v19 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    -[ICNoteResultsListCollectionViewCell setIsThumbnailPresent:](self, "setIsThumbnailPresent:", [v19 hasThumbnailImage]);
  }

  if ([(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent])
  {
    v20 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
    v21 = [v20 font];
    [v21 lineHeight];
    v23 = v22;
    v24 = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
    v25 = [v24 font];
    [v25 lineHeight];
    v27 = v23 + v26;
    v28 = 0.0;
    v29 = 0.0;
    if (v13)
    {
      v60 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
      v59 = [v60 font];
      [v59 lineHeight];
    }

    v30 = v27 + v29;
    if (v15)
    {
      v58 = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
      v61 = [v58 font];
      [v61 lineHeight];
      v28 = v31;
    }

    v32 = v30 + v28;
    if (v17)
    {
      [(ICNoteResultsListCollectionViewCell *)self folderAndAccountLabel];
      v33 = v21;
      v34 = v17;
      v36 = v35 = v20;
      [v36 font];
      v37 = v25;
      v38 = v15;
      v40 = v39 = v24;
      [v40 lineHeight];
      v42 = v32 + v41;

      v24 = v39;
      v15 = v38;
      v25 = v37;

      v20 = v35;
      v17 = v34;
      v21 = v33;
    }

    else
    {
      v42 = v32 + 0.0;
    }

    if (v15)
    {
    }

    if (v13)
    {
    }

    v43 = fmin(ceil(v42), 68.0);
    [(ICNoteResultsListCollectionViewCell *)self setCurrentThumbnailSize:v43, v43];
  }

  v44 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
  [v44 setHidden:v13 ^ 1];

  v45 = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
  [v45 setHidden:v15 ^ 1];

  v46 = [(ICNoteResultsListCollectionViewCell *)self folderStackView];
  [v46 setHidden:v17 ^ 1];

  LODWORD(v46) = [(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent];
  v47 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
  [v47 setHidden:v46 ^ 1];

  if ([(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent]&& ![(ICNoteResultsListCollectionViewCell *)self currentThumbnailLocation]|| ![(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent]&& [(ICNoteResultsListCollectionViewCell *)self currentThumbnailLocation]|| [(ICNoteResultsListCollectionViewCell *)self isAXSize]&& [(ICNoteResultsListCollectionViewCell *)self currentThumbnailLocation]!= 2 || ![(ICNoteResultsListCollectionViewCell *)self isAXSize]&& [(ICNoteResultsListCollectionViewCell *)self currentThumbnailLocation]!= 1)
  {
    if ([(ICNoteResultsListCollectionViewCell *)self isAXSize]&& [(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent])
    {
      v48 = 2;
    }

    else
    {
      v48 = [(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent];
    }

    [(ICNoteResultsListCollectionViewCell *)self setCurrentThumbnailLocation:v48];
  }

  v49 = [(ICNoteResultsListCollectionViewCell *)self configurationState];
  [(ICNoteResultsListCollectionViewCell *)self updateStatusIndicatorsUsingState:v49];

  [(ICNoteResultsListCollectionViewCell *)self updateLabelsFromConfiguration];
  [(ICNoteResultsListCollectionViewCell *)self updateThumbnailFromConfiguration];
  v50 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v51 = [v50 styleForCalculator];

  v52 = [(ICNoteResultsListCollectionViewCell *)self separatorLeadingConstraint];
  [v52 setActive:v51 ^ 1];

  [(ICNoteResultsListCollectionViewCell *)self verticalPadding];
  v54 = v53;
  v55 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewTopConstraint];
  [v55 setConstant:v54];

  if (v51)
  {
    v56 = 4.0;
  }

  else
  {
    v56 = 2.0;
  }

  v57 = [(ICNoteResultsListCollectionViewCell *)self verticalStackView];
  [v57 setSpacing:v56];

  [(ICNoteResultsListCollectionViewCell *)self layoutIfNeeded];
}

- (double)verticalPadding
{
  v2 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  if ([v2 styleForCalculator])
  {
    v3 = 18.0;
  }

  else
  {
    v3 = 10.0;
  }

  return v3;
}

- (void)updateStatusIndicatorsUsingState:(id)a3
{
  v25 = a3;
  v4 = [(ICNoteResultsListCollectionViewCell *)self statusIndicatorImageView];
  [v4 setHidden:1];

  v5 = [(ICNoteResultsListCollectionViewCell *)self secondaryStatusIndicatorImageView];
  [v5 setHidden:1];

  if (([v25 isSelected] & 1) != 0 || objc_msgSend(v25, "isFocused"))
  {
    v6 = [(ICNoteResultsListCollectionViewCell *)self isInSplitView];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v8 = [v7 primaryStatusImage];

  if (v8)
  {
    v9 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v10 = [v9 primaryStatusImage];
    v11 = [(ICNoteResultsListCollectionViewCell *)self statusIndicatorImageView];
    [v11 setImage:v10];

    if (v6)
    {
      v12 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
      [v12 textColor];
    }

    else
    {
      v12 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      [v12 primaryStatusImageTintColor];
    }
    v13 = ;
    v14 = [(ICNoteResultsListCollectionViewCell *)self statusIndicatorImageView];
    [v14 setTintColor:v13];

    v15 = [(ICNoteResultsListCollectionViewCell *)self statusIndicatorImageView];
    [v15 setHidden:0];
  }

  v16 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v17 = [v16 secondaryStatusImage];

  if (v17)
  {
    v18 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v19 = [v18 secondaryStatusImage];
    v20 = [(ICNoteResultsListCollectionViewCell *)self secondaryStatusIndicatorImageView];
    [v20 setImage:v19];

    if (v6)
    {
      v21 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
      [v21 textColor];
    }

    else
    {
      v21 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      [v21 secondaryStatusImageTintColor];
    }
    v22 = ;
    v23 = [(ICNoteResultsListCollectionViewCell *)self secondaryStatusIndicatorImageView];
    [v23 setTintColor:v22];

    v24 = [(ICNoteResultsListCollectionViewCell *)self secondaryStatusIndicatorImageView];
    [v24 setHidden:0];
  }
}

- (void)updateLabelsFromConfiguration
{
  v3 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  v4 = [v3 isDataLoaded];

  if (v4)
  {
    v5 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v6 = [v5 titleAttributedString];

    v7 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v8 = v7;
    if (v6)
    {
      v9 = [v7 titleAttributedString];
      v10 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
      [v10 setAttributedText:v9];
    }

    else
    {
      v9 = [v7 titleString];
      v10 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
      [v10 setText:v9];
    }

    v22 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
    v23 = [v22 isHidden];

    if ((v23 & 1) == 0)
    {
      v24 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      v25 = [v24 dateString];
      v26 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
      [v26 setText:v25];
    }

    v27 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v28 = [v27 summaryAttributedString];

    v29 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v30 = v29;
    if (v28)
    {
      v31 = [v29 summaryAttributedString];
      v32 = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
      [v32 setAttributedText:v31];
    }

    else
    {
      v31 = [v29 summaryString];
      v32 = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
      [v32 setText:v31];
    }

    v33 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v34 = [v33 showParticipantsInfo];

    if (v34)
    {
      v35 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      v36 = [v35 participantsInfoString];
      v37 = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
      [v37 setText:v36];
    }

    v38 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v39 = [v38 showsNoteContainer];

    if (v39)
    {
      v40 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      v41 = [v40 folderAndAccountInfoString];
      v42 = [(ICNoteResultsListCollectionViewCell *)self folderAndAccountLabel];
      [v42 setText:v41];

      v43 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      v44 = [v43 folderImage];
      v45 = [(ICNoteResultsListCollectionViewCell *)self folderLabelImageView];
      [v45 setImage:v44];

      v46 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      v47 = [v46 folderImage];
      v48 = [(ICNoteResultsListCollectionViewCell *)self folderLabelImageView];
      [v48 setHidden:v47 == 0];
    }

    v49 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v50 = [v49 searchResult];

    if (v50)
    {
      v51 = [(ICNoteResultsListCollectionViewCell *)self superview];
      if (v51)
      {
        v52 = v51;
        v53 = +[UIApplication sharedApplication];
        v54 = [v53 isRunningTest];

        if (v54)
        {
          v55 = +[ICAppDelegate sharedInstance];
          [v55 searchResultBecameVisible];
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
    v11 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
    [v11 setText:@" "];

    v12 = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
    [v12 setText:@" "];

    v13 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
    v14 = [v13 isHidden];

    if ((v14 & 1) == 0)
    {
      v15 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
      [v15 setText:@" "];
    }

    v16 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v17 = [v16 showParticipantsInfo];

    if (v17)
    {
      v18 = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
      [v18 setText:@" "];
    }

    v19 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v20 = [v19 showsNoteContainer];

    if (v20)
    {
      v21 = [(ICNoteResultsListCollectionViewCell *)self folderAndAccountLabel];
      [v21 setText:@" "];

      v55 = [(ICNoteResultsListCollectionViewCell *)self folderLabelImageView];
      [v55 setHidden:1];
LABEL_24:
    }
  }
}

- (void)updateThumbnailFromConfiguration
{
  if ([(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent])
  {
    v3 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v4 = [v3 note];

    v5 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 searchResult];
      v8 = [v7 configuration];
      v9 = [v8 foundAttachmentObjectID];

      if (v9)
      {
        v10 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
        v11 = [v10 searchResult];
        v12 = [v11 object];
        v13 = [v12 managedObjectContext];
        v14 = [v13 objectWithID:v9];

        v15 = [ICThumbnailConfiguration alloc];
        [(ICNoteResultsListCollectionViewCell *)self currentThumbnailSize];
        v17 = v16;
        v19 = v18;
        v20 = +[UIScreen mainScreen];
        [v20 scale];
        v22 = v21;
        v23 = [(ICNoteResultsListCollectionViewCell *)self ic_appearanceInfo];
        v24 = [v15 initForNoteListWithFoundAttachment:v14 preferredSize:v23 scale:v17 appearanceInfo:{v19, v22}];
      }

      else
      {
        if ((+[UIDevice ic_isVision]& 1) != 0)
        {
          [ICAppearanceInfo appearanceInfoWithType:0];
        }

        else
        {
          [(ICNoteResultsListCollectionViewCell *)self ic_appearanceInfo];
        }
        v14 = ;
        v57 = [ICThumbnailConfiguration alloc];
        v20 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
        v23 = [v20 note];
        [(ICNoteResultsListCollectionViewCell *)self currentThumbnailSize];
        v59 = v58;
        v61 = v60;
        v62 = +[UIScreen mainScreen];
        [v62 scale];
        v24 = [v57 initForNoteListWithNote:v23 preferredSize:v14 scale:v59 appearanceInfo:{v61, v63}];
      }

      v64 = +[ICThumbnailService sharedThumbnailService];
      v65 = [v24 uniqueKey];
      [(ICNoteResultsListCollectionViewCell *)self setCurrentThumbnailConfigurationUniqueKey:v65];

      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_10011529C;
      v67[3] = &unk_10064A420;
      v67[4] = self;
      [v64 thumbnailWithConfiguration:v24 completion:v67];
    }

    else
    {
      v25 = [v5 invitation];

      if (!v25)
      {
        return;
      }

      v26 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      v27 = [v26 invitation];
      v28 = [v27 rootObjectType];
      v29 = [v28 isEqualToString:@"com.apple.notes.note"];

      v30 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      v31 = [v30 invitation];
      v32 = v31;
      if (v29)
      {
        v33 = [(ICNoteResultsListCollectionViewCell *)self traitCollection];
        v34 = [v33 ic_appearanceInfo];
        [(ICNoteResultsListCollectionViewCell *)self currentThumbnailSize];
        v35 = [v32 thumbnailImageForAppearance:v34 size:?];
        v36 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [v36 setImage:v35];

        v37 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [v37 setContentMode:2];

        v38 = +[UIColor secondarySystemGroupedBackgroundColor];
        v39 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [v39 setBackgroundColor:v38];

        [(ICNoteResultsListCollectionViewCell *)self ic_hairlineWidth];
        v41 = v40;
        v42 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        v43 = [v42 layer];
        [v43 setBorderWidth:v41];

        v66 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        v44 = [v66 image];
        v45 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [v45 setHidden:v44 == 0];
      }

      else
      {
        v46 = [v31 rootObjectType];
        v47 = [v46 isEqualToString:@"com.apple.notes.folder"];

        if (!v47)
        {
          return;
        }

        v66 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:26.0];
        v48 = [UIImage systemImageNamed:@"folder.badge.person.crop" withConfiguration:v66];
        v49 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [v49 setImage:v48];

        v50 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [v50 setContentMode:1];

        v51 = +[UIColor clearColor];
        v52 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [v52 setBackgroundColor:v51];

        v53 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        v54 = [v53 layer];
        [v54 setBorderWidth:0.0];

        v44 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        v55 = [v44 image];
        v56 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [v56 setHidden:v55 == 0];
      }
    }
  }
}

- (void)addNotificationObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)removeNotificationObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)registerForTraitChanges
{
  v5 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4 = [(ICNoteResultsListCollectionViewCell *)self registerForTraitChanges:v3 withHandler:&stru_10064A460];
}

- (ICAccessibilityCustomActionsDelegate)accessibilityCustomActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityCustomActionsDelegate);

  return WeakRetained;
}

- (CGSize)currentThumbnailSize
{
  width = self->_currentThumbnailSize.width;
  height = self->_currentThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end