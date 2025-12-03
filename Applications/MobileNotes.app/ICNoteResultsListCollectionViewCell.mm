@interface ICNoteResultsListCollectionViewCell
- (CGRect)estimatedBoundsForLabel:(id)label;
- (CGSize)currentThumbnailSize;
- (ICAccessibilityCustomActionsDelegate)accessibilityCustomActionsDelegate;
- (ICNoteResultsListCollectionViewCell)initWithFrame:(CGRect)frame;
- (double)verticalPadding;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)createLabel;
- (unint64_t)accessibilityTraits;
- (unint64_t)numberOfLines;
- (void)addNotificationObservers;
- (void)configureColorsForSearchResult;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)enableIntrinsicSizeShortcut:(BOOL)shortcut;
- (void)registerForTraitChanges;
- (void)removeNotificationObservers;
- (void)resetColors;
- (void)setConfiguration:(id)configuration synchronously:(BOOL)synchronously;
- (void)setCurrentThumbnailLocation:(int64_t)location;
- (void)updateBackgroundConfigurationUsingState:(id)state;
- (void)updateColorsUsingState:(id)state;
- (void)updateConfigurationUsingState:(id)state;
- (void)updateFromConfiguration;
- (void)updateLabelsFromConfiguration;
- (void)updateStatusIndicatorsUsingState:(id)state;
- (void)updateThumbnailFromConfiguration;
- (void)updateViewStateProperties;
@end

@implementation ICNoteResultsListCollectionViewCell

- (ICNoteResultsListCollectionViewCell)initWithFrame:(CGRect)frame
{
  v145.receiver = self;
  v145.super_class = ICNoteResultsListCollectionViewCell;
  v3 = [(ICBaseNoteResultsCollectionViewCell *)&v145 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    createLabel = [(ICNoteResultsListCollectionViewCell *)v5 createLabel];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = createLabel;

    primaryLabelColor = [(ICNoteResultsListCollectionViewCell *)v5 primaryLabelColor];
    [(UILabel *)v5->_titleLabel setTextColor:primaryLabelColor];

    createLabel2 = [(ICNoteResultsListCollectionViewCell *)v5 createLabel];
    dateLabel = v5->_dateLabel;
    v5->_dateLabel = createLabel2;

    secondaryLabelColor = [(ICNoteResultsListCollectionViewCell *)v5 secondaryLabelColor];
    [(UILabel *)v5->_dateLabel setTextColor:secondaryLabelColor];

    createLabel3 = [(ICNoteResultsListCollectionViewCell *)v5 createLabel];
    summaryLabel = v5->_summaryLabel;
    v5->_summaryLabel = createLabel3;

    secondaryLabelColor2 = [(ICNoteResultsListCollectionViewCell *)v5 secondaryLabelColor];
    [(UILabel *)v5->_summaryLabel setTextColor:secondaryLabelColor2];

    createLabel4 = [(ICNoteResultsListCollectionViewCell *)v5 createLabel];
    participantsLabel = v5->_participantsLabel;
    v5->_participantsLabel = createLabel4;

    secondaryLabelColor3 = [(ICNoteResultsListCollectionViewCell *)v5 secondaryLabelColor];
    [(UILabel *)v5->_participantsLabel setTextColor:secondaryLabelColor3];

    createLabel5 = [(ICNoteResultsListCollectionViewCell *)v5 createLabel];
    folderAndAccountLabel = v5->_folderAndAccountLabel;
    v5->_folderAndAccountLabel = createLabel5;

    secondaryLabelColor4 = [(ICNoteResultsListCollectionViewCell *)v5 secondaryLabelColor];
    [(UILabel *)v5->_folderAndAccountLabel setTextColor:secondaryLabelColor4];

    v30 = objc_alloc_init(UIImageView);
    folderLabelImageView = v5->_folderLabelImageView;
    v5->_folderLabelImageView = v30;

    [(UIImageView *)v5->_folderLabelImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    textColor = [(UILabel *)v5->_folderAndAccountLabel textColor];
    [(UIImageView *)v5->_folderLabelImageView setTintColor:textColor];

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
    cGColor = [v45 CGColor];
    layer = [(UIImageView *)v5->_thumbnailImageView layer];
    [layer setBorderColor:cGColor];

    [(ICNoteResultsListCollectionViewCell *)v5 ic_hairlineWidth];
    v49 = v48;
    layer2 = [(UIImageView *)v5->_thumbnailImageView layer];
    [layer2 setBorderWidth:v49];

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
    contentView = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    [contentView addSubview:v5->_verticalStackView];

    contentView2 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_statusIndicatorImageView];

    contentView3 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    [contentView3 addSubview:v5->_secondaryStatusIndicatorImageView];

    contentView4 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    [contentView4 addSubview:v5->_thumbnailImageView];

    v57 = objc_alloc_init(UILayoutGuide);
    contentView5 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    [contentView5 addLayoutGuide:v57];

    separatorLayoutGuide = [(ICNoteResultsListCollectionViewCell *)v5 separatorLayoutGuide];
    leadingAnchor = [separatorLayoutGuide leadingAnchor];
    leadingAnchor2 = [(UIStackView *)v5->_verticalStackView leadingAnchor];
    v59 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    separatorLeadingConstraint = v5->_separatorLeadingConstraint;
    v5->_separatorLeadingConstraint = v59;

    v149[0] = v59;
    leadingAnchor3 = [v57 leadingAnchor];
    contentView6 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    leadingAnchor4 = [contentView6 leadingAnchor];
    v130 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v149[1] = v130;
    trailingAnchor = [v57 trailingAnchor];
    leadingAnchor5 = [(UIStackView *)v5->_verticalStackView leadingAnchor];
    v127 = [trailingAnchor constraintEqualToAnchor:leadingAnchor5];
    v149[2] = v127;
    centerXAnchor = [(UIImageView *)v5->_statusIndicatorImageView centerXAnchor];
    v139 = v57;
    centerXAnchor2 = [v57 centerXAnchor];
    v124 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v149[3] = v124;
    centerYAnchor = [(UIImageView *)v5->_statusIndicatorImageView centerYAnchor];
    centerYAnchor2 = [(UILabel *)v5->_titleLabel centerYAnchor];
    v121 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v149[4] = v121;
    centerXAnchor3 = [(UIImageView *)v5->_secondaryStatusIndicatorImageView centerXAnchor];
    centerXAnchor4 = [v57 centerXAnchor];
    v118 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v149[5] = v118;
    topAnchor = [(UIStackView *)v5->_verticalStackView topAnchor];
    contentView7 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    topAnchor2 = [contentView7 topAnchor];
    [(ICNoteResultsListCollectionViewCell *)v5 verticalPadding];
    v61 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    verticalStackViewTopConstraint = v5->_verticalStackViewTopConstraint;
    v5->_verticalStackViewTopConstraint = v61;

    v149[6] = v61;
    verticalStackView = [(ICNoteResultsListCollectionViewCell *)v5 verticalStackView];
    leadingAnchor6 = [verticalStackView leadingAnchor];
    contentView8 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    leadingAnchor7 = [contentView8 leadingAnchor];
    v63 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:28.0];
    verticalStackViewLeadingConstraint = v5->_verticalStackViewLeadingConstraint;
    v5->_verticalStackViewLeadingConstraint = v63;

    v149[7] = v63;
    verticalStackView2 = [(ICNoteResultsListCollectionViewCell *)v5 verticalStackView];
    trailingAnchor2 = [verticalStackView2 trailingAnchor];
    contentView9 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    trailingAnchor3 = [contentView9 trailingAnchor];
    v69 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-12.0];
    verticalStackViewTrailingConstraint = v5->_verticalStackViewTrailingConstraint;
    v5->_verticalStackViewTrailingConstraint = v69;

    v149[8] = v69;
    verticalStackView3 = [(ICNoteResultsListCollectionViewCell *)v5 verticalStackView];
    bottomAnchor = [verticalStackView3 bottomAnchor];
    contentView10 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    bottomAnchor2 = [contentView10 bottomAnchor];
    [(ICNoteResultsListCollectionViewCell *)v5 verticalPadding];
    v76 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v75];
    verticalStackViewBottomConstraint = v5->_verticalStackViewBottomConstraint;
    v5->_verticalStackViewBottomConstraint = v76;

    v149[9] = v76;
    v78 = [NSArray arrayWithObjects:v149 count:10];
    [NSLayoutConstraint activateConstraints:v78];

    centerYAnchor3 = [(UIImageView *)v5->_secondaryStatusIndicatorImageView centerYAnchor];
    centerYAnchor4 = [(UILabel *)v5->_summaryLabel centerYAnchor];
    v81 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    secondaryStatusIndicatorCenterYNormalConstraint = v5->_secondaryStatusIndicatorCenterYNormalConstraint;
    v5->_secondaryStatusIndicatorCenterYNormalConstraint = v81;

    centerYAnchor5 = [(UIImageView *)v5->_secondaryStatusIndicatorImageView centerYAnchor];
    centerYAnchor6 = [(UILabel *)v5->_dateLabel centerYAnchor];
    v85 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    secondaryStatusIndicatorCenterYAXConstraint = v5->_secondaryStatusIndicatorCenterYAXConstraint;
    v5->_secondaryStatusIndicatorCenterYAXConstraint = v85;

    trailingAnchor4 = [(UIImageView *)v5->_thumbnailImageView trailingAnchor];
    contentView11 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    trailingAnchor5 = [contentView11 trailingAnchor];
    v87 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-12.0];
    v148[0] = v87;
    centerYAnchor7 = [(UIImageView *)v5->_thumbnailImageView centerYAnchor];
    contentView12 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    centerYAnchor8 = [contentView12 centerYAnchor];
    v91 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v148[1] = v91;
    widthAnchor = [(UIImageView *)v5->_thumbnailImageView widthAnchor];
    heightAnchor = [(UIImageView *)v5->_thumbnailImageView heightAnchor];
    v94 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v148[2] = v94;
    v95 = [NSArray arrayWithObjects:v148 count:3];
    trailingThumbnailConstraints = v5->_trailingThumbnailConstraints;
    v5->_trailingThumbnailConstraints = v95;

    bottomAnchor3 = [(UIImageView *)v5->_thumbnailImageView bottomAnchor];
    contentView13 = [(ICNoteResultsListCollectionViewCell *)v5 contentView];
    bottomAnchor4 = [contentView13 bottomAnchor];
    [(ICNoteResultsListCollectionViewCell *)v5 verticalPadding];
    v98 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v97 * -2.0];
    v147[0] = v98;
    leadingAnchor8 = [(UIImageView *)v5->_thumbnailImageView leadingAnchor];
    leadingAnchor9 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v101 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v147[1] = v101;
    heightAnchor2 = [(UIImageView *)v5->_thumbnailImageView heightAnchor];
    v103 = [heightAnchor2 constraintEqualToConstant:68.0];
    v147[2] = v103;
    widthAnchor2 = [(UIImageView *)v5->_thumbnailImageView widthAnchor];
    v105 = [widthAnchor2 constraintEqualToConstant:68.0];
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

- (void)setConfiguration:(id)configuration synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  configurationCopy = configuration;
  [(ICNoteResultsListCollectionViewCell *)self enableIntrinsicSizeShortcut:1];
  v7.receiver = self;
  v7.super_class = ICNoteResultsListCollectionViewCell;
  [(ICBaseNoteResultsCollectionViewCell *)&v7 setConfiguration:configurationCopy synchronously:synchronouslyCopy];

  [(ICNoteResultsListCollectionViewCell *)self resetColors];
}

- (void)updateViewStateProperties
{
  v16.receiver = self;
  v16.super_class = ICNoteResultsListCollectionViewCell;
  [(ICBaseNoteResultsCollectionViewCell *)&v16 updateViewStateProperties];
  v3 = [UIFont ic_preferredSingleLineAFontForTextStyle:UIFontTextStyleSubheadline];
  dateLabel = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
  [dateLabel setFont:v3];

  v5 = [UIFont ic_preferredSingleLineAFontForTextStyle:UIFontTextStyleSubheadline];
  participantsLabel = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
  [participantsLabel setFont:v5];

  traitCollection = [(ICNoteResultsListCollectionViewCell *)self traitCollection];
  -[ICNoteResultsListCollectionViewCell setIsInSplitView:](self, "setIsInSplitView:", [traitCollection _splitViewControllerContext] == 3);

  [(ICNoteResultsListCollectionViewCell *)self setIsAXSize:ICAccessibilityAccessibilityLargerTextSizesEnabled()];
  traitCollection2 = [(ICNoteResultsListCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
  [(ICNoteResultsListCollectionViewCell *)self setIsLargerThanAXLarge:UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryAccessibilityLarge) > NSOrderedSame];

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

  verticalStackViewLeadingConstraint = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewLeadingConstraint];
  [verticalStackViewLeadingConstraint setConstant:v12];

  numberOfLines = [(ICNoteResultsListCollectionViewCell *)self numberOfLines];
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  [configuration setMaxNumberOfLabelLines:numberOfLines];
}

- (CGRect)estimatedBoundsForLabel:(id)label
{
  labelCopy = label;
  v5 = 0.0;
  if (([labelCopy isHidden] & 1) == 0)
  {
    font = [labelCopy font];
    [font lineHeight];
    v5 = v7;
  }

  [(ICNoteResultsListCollectionViewCell *)self frame];
  v9 = v8 + -24.0;
  verticalStackViewLeadingConstraint = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewLeadingConstraint];
  [verticalStackViewLeadingConstraint constant];
  v12 = v9 - v11;
  verticalStackViewTrailingConstraint = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewTrailingConstraint];
  [verticalStackViewTrailingConstraint constant];
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

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  [(ICNoteResultsListCollectionViewCell *)self updateColorsUsingState:stateCopy];
  [(ICNoteResultsListCollectionViewCell *)self updateStatusIndicatorsUsingState:stateCopy];
  [(ICNoteResultsListCollectionViewCell *)self updateBackgroundConfigurationUsingState:stateCopy];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  changeCopy = change;
  [(ICNoteResultsListCollectionViewCell *)self enableIntrinsicSizeShortcut:0];
  userInfo = [changeCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:UIContentSizeCategoryNewValueKey];

  if (v6)
  {
    [(ICNoteResultsListCollectionViewCell *)self setIc_preferredContentSizeCategory:v6];
  }

  [(ICNoteResultsListCollectionViewCell *)self updateViewStateProperties];
  [(ICNoteResultsListCollectionViewCell *)self updateFromConfiguration];
}

- (id)accessibilityLabel
{
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  accessibilityLabel = [configuration accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  isSelected = [(ICNoteResultsListCollectionViewCell *)self isSelected];
  v3 = &UIAccessibilityTraitSelected;
  if (!isSelected)
  {
    v3 = &UIAccessibilityTraitNone;
  }

  return *v3;
}

- (id)accessibilityCustomActions
{
  accessibilityCustomActionsDelegate = [(ICNoteResultsListCollectionViewCell *)self accessibilityCustomActionsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    accessibilityCustomActionsDelegate2 = [(ICNoteResultsListCollectionViewCell *)self accessibilityCustomActionsDelegate];
    configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    note = [configuration note];
    objectID = [note objectID];
    v9 = [accessibilityCustomActionsDelegate2 customAccessibilityActionsForObjectID:objectID galleryView:0];
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

- (void)updateBackgroundConfigurationUsingState:(id)state
{
  stateCopy = state;
  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    +[UIBackgroundConfiguration listPlainCellConfiguration];
  }

  else
  {
    [(ICNoteResultsListCollectionViewCell *)self defaultBackgroundConfiguration];
  }
  v4 = ;
  if ([stateCopy cellDropState] == 2)
  {
    [stateCopy setCellDropState:1];
    [stateCopy setFocused:0];
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

  traitCollection = [stateCopy traitCollection];
  listEnvironment = [traitCollection listEnvironment];

  if (listEnvironment == 6)
  {
    [v4 setCornerRadius:20.0];
  }

  v8 = [v4 updatedConfigurationForState:stateCopy];
  [(ICNoteResultsListCollectionViewCell *)self setBackgroundConfiguration:v8];
}

- (void)configureColorsForSearchResult
{
  configurationState = [(ICNoteResultsListCollectionViewCell *)self configurationState];
  [(ICNoteResultsListCollectionViewCell *)self updateColorsUsingState:configurationState];
}

- (void)updateColorsUsingState:(id)state
{
  stateCopy = state;
  v5 = +[UIListContentConfiguration valueCellConfiguration];
  if ([stateCopy cellDropState] == 2 || objc_msgSend(stateCopy, "cellDropState") == 1)
  {
    [stateCopy setCellDropState:1];
    [stateCopy setFocused:0];
  }

  v6 = [v5 updatedConfigurationForState:stateCopy];

  textProperties = [v6 textProperties];
  color = [textProperties color];
  [(ICNoteResultsListCollectionViewCell *)self setPrimaryLabelColor:color];

  secondaryTextProperties = [v6 secondaryTextProperties];
  color2 = [secondaryTextProperties color];
  [(ICNoteResultsListCollectionViewCell *)self setSecondaryLabelColor:color2];

  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  searchResult = [configuration searchResult];
  if (searchResult)
  {
    v13 = searchResult;
    settingConfigurationForSearchResult = [(ICBaseNoteResultsCollectionViewCell *)self settingConfigurationForSearchResult];

    if ((settingConfigurationForSearchResult & 1) == 0)
    {
      isSelected = [stateCopy isSelected];
      v16 = isSelected;
      v48 = v6;
      if (isSelected)
      {
        [UIColor colorNamed:@"selected_search_highlight"];
      }

      else
      {
        settingConfigurationForSearchResult = [(ICNoteResultsListCollectionViewCell *)self window];
        [settingConfigurationForSearchResult tintColor];
      }
      v17 = ;
      configuration2 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      [configuration2 setHighlightColor:v17];

      if ((v16 & 1) == 0)
      {

        v17 = settingConfigurationForSearchResult;
      }

      configuration3 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      v51[0] = NSFontAttributeName;
      titleLabel = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
      font = [titleLabel font];
      v52[0] = font;
      v51[1] = NSForegroundColorAttributeName;
      primaryLabelColor = [(ICNoteResultsListCollectionViewCell *)self primaryLabelColor];
      v52[1] = primaryLabelColor;
      v21 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
      v49[0] = NSFontAttributeName;
      summaryLabel = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
      font2 = [summaryLabel font];
      v49[1] = NSForegroundColorAttributeName;
      v50[0] = font2;
      secondaryLabelColor = [(ICNoteResultsListCollectionViewCell *)self secondaryLabelColor];
      v50[1] = secondaryLabelColor;
      v25 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
      [configuration3 updateTitleLabelAttributes:v21 summaryLabelAttributes:v25];

      v6 = v48;
    }
  }

  else
  {
  }

  configuration4 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  searchResult2 = [configuration4 searchResult];
  if (searchResult2)
  {
    v28 = searchResult2;
    settingConfigurationForSearchResult2 = [(ICBaseNoteResultsCollectionViewCell *)self settingConfigurationForSearchResult];

    if ((settingConfigurationForSearchResult2 & 1) == 0)
    {
      [(ICBaseNoteResultsCollectionViewCell *)self synchronouslyLoadConfigurationDataAndUpdate];
    }
  }

  else
  {
  }

  configuration5 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  searchResult3 = [configuration5 searchResult];

  if (!searchResult3)
  {
    primaryLabelColor2 = [(ICNoteResultsListCollectionViewCell *)self primaryLabelColor];
    titleLabel2 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
    [titleLabel2 setTextColor:primaryLabelColor2];

    secondaryLabelColor2 = [(ICNoteResultsListCollectionViewCell *)self secondaryLabelColor];
    summaryLabel2 = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
    [summaryLabel2 setTextColor:secondaryLabelColor2];
  }

  secondaryLabelColor3 = [(ICNoteResultsListCollectionViewCell *)self secondaryLabelColor];
  dateLabel = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
  [dateLabel setTextColor:secondaryLabelColor3];

  secondaryLabelColor4 = [(ICNoteResultsListCollectionViewCell *)self secondaryLabelColor];
  participantsLabel = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
  [participantsLabel setTextColor:secondaryLabelColor4];

  secondaryLabelColor5 = [(ICNoteResultsListCollectionViewCell *)self secondaryLabelColor];
  folderAndAccountLabel = [(ICNoteResultsListCollectionViewCell *)self folderAndAccountLabel];
  [folderAndAccountLabel setTextColor:secondaryLabelColor5];

  secondaryLabelColor6 = [(ICNoteResultsListCollectionViewCell *)self secondaryLabelColor];
  folderLabelImageView = [(ICNoteResultsListCollectionViewCell *)self folderLabelImageView];
  [folderLabelImageView setTintColor:secondaryLabelColor6];

  if ([stateCopy isSelected])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor tertiaryLabelColor];
  }
  v44 = ;
  thumbnailImageView = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
  [thumbnailImageView setTintColor:v44];
}

- (void)resetColors
{
  v3 = +[UIColor labelColor];
  [(ICNoteResultsListCollectionViewCell *)self setPrimaryLabelColor:v3];

  v4 = +[UIColor secondaryLabelColor];
  [(ICNoteResultsListCollectionViewCell *)self setSecondaryLabelColor:v4];

  v6 = +[UIColor ICTintColor];
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  [configuration setHighlightColor:v6];
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

- (void)enableIntrinsicSizeShortcut:(BOOL)shortcut
{
  shortcutCopy = shortcut;
  titleLabel = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
  [titleLabel _setUseShortcutIntrinsicContentSize:shortcutCopy];

  summaryLabel = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
  [summaryLabel _setUseShortcutIntrinsicContentSize:shortcutCopy];

  dateLabel = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
  [dateLabel _setUseShortcutIntrinsicContentSize:shortcutCopy];

  participantsLabel = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
  [participantsLabel _setUseShortcutIntrinsicContentSize:shortcutCopy];

  folderAndAccountLabel = [(ICNoteResultsListCollectionViewCell *)self folderAndAccountLabel];
  [folderAndAccountLabel _setUseShortcutIntrinsicContentSize:shortcutCopy];
}

- (void)setCurrentThumbnailLocation:(int64_t)location
{
  switch(location)
  {
    case 2:
      trailingThumbnailConstraints = [(ICNoteResultsListCollectionViewCell *)self trailingThumbnailConstraints];
      [NSLayoutConstraint deactivateConstraints:trailingThumbnailConstraints];

      [(ICNoteResultsListCollectionViewCell *)self currentThumbnailSize];
      v19 = v18;
      [(ICNoteResultsListCollectionViewCell *)self verticalPadding];
      v21 = -(v19 + v20 * 3.0);
      verticalStackViewBottomConstraint = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewBottomConstraint];
      [verticalStackViewBottomConstraint setConstant:v21];

      verticalStackViewTrailingConstraint = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewTrailingConstraint];
      [verticalStackViewTrailingConstraint setConstant:-12.0];

      bottomThumbnailConstraints = [(ICNoteResultsListCollectionViewCell *)self bottomThumbnailConstraints];
      goto LABEL_7;
    case 1:
      bottomThumbnailConstraints2 = [(ICNoteResultsListCollectionViewCell *)self bottomThumbnailConstraints];
      [NSLayoutConstraint deactivateConstraints:bottomThumbnailConstraints2];

      [(ICNoteResultsListCollectionViewCell *)self currentThumbnailSize];
      v11 = -(v10 + 24.0);
      verticalStackViewTrailingConstraint2 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewTrailingConstraint];
      [verticalStackViewTrailingConstraint2 setConstant:v11];

      [(ICNoteResultsListCollectionViewCell *)self verticalPadding];
      v14 = -v13;
      verticalStackViewBottomConstraint2 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewBottomConstraint];
      [verticalStackViewBottomConstraint2 setConstant:v14];

      bottomThumbnailConstraints = [(ICNoteResultsListCollectionViewCell *)self trailingThumbnailConstraints];
LABEL_7:
      verticalStackViewTrailingConstraint3 = bottomThumbnailConstraints;
      [NSLayoutConstraint activateConstraints:bottomThumbnailConstraints];
      goto LABEL_8;
    case 0:
      [(ICNoteResultsListCollectionViewCell *)self verticalPadding];
      v6 = -v5;
      verticalStackViewBottomConstraint3 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewBottomConstraint];
      [verticalStackViewBottomConstraint3 setConstant:v6];

      verticalStackViewTrailingConstraint3 = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewTrailingConstraint];
      [verticalStackViewTrailingConstraint3 setConstant:-12.0];
LABEL_8:

      break;
  }

  self->_currentThumbnailLocation = location;
}

- (void)updateFromConfiguration
{
  numberOfLines = [(ICNoteResultsListCollectionViewCell *)self numberOfLines];
  titleLabel = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
  [titleLabel setNumberOfLines:numberOfLines];

  numberOfLines2 = [(ICNoteResultsListCollectionViewCell *)self numberOfLines];
  summaryLabel = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
  [summaryLabel setNumberOfLines:numberOfLines2];

  numberOfLines3 = [(ICNoteResultsListCollectionViewCell *)self numberOfLines];
  folderAndAccountLabel = [(ICNoteResultsListCollectionViewCell *)self folderAndAccountLabel];
  [folderAndAccountLabel setNumberOfLines:numberOfLines3];

  numberOfLines4 = [(ICNoteResultsListCollectionViewCell *)self numberOfLines];
  participantsLabel = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
  [participantsLabel setNumberOfLines:numberOfLines4];

  traitCollection = [(ICNoteResultsListCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [(ICNoteResultsListCollectionViewCell *)self setIsLargerThanAXLarge:UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryAccessibilityLarge) > NSOrderedSame];

  isLargerThanAXLarge = [(ICNoteResultsListCollectionViewCell *)self isLargerThanAXLarge];
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  showParticipantsInfo = [configuration showParticipantsInfo];

  configuration2 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  if ([configuration2 showFolderName])
  {
    showAccountName = 1;
  }

  else
  {
    configuration3 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    showAccountName = [configuration3 showAccountName];
  }

  if ([(ICNoteResultsListCollectionViewCell *)self hidesThumbnail])
  {
    [(ICNoteResultsListCollectionViewCell *)self setIsThumbnailPresent:0];
  }

  else
  {
    configuration4 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    -[ICNoteResultsListCollectionViewCell setIsThumbnailPresent:](self, "setIsThumbnailPresent:", [configuration4 hasThumbnailImage]);
  }

  if ([(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent])
  {
    titleLabel2 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
    font = [titleLabel2 font];
    [font lineHeight];
    v23 = v22;
    summaryLabel2 = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
    font2 = [summaryLabel2 font];
    [font2 lineHeight];
    v27 = v23 + v26;
    v28 = 0.0;
    v29 = 0.0;
    if (isLargerThanAXLarge)
    {
      dateLabel = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
      font3 = [dateLabel font];
      [font3 lineHeight];
    }

    v30 = v27 + v29;
    if (showParticipantsInfo)
    {
      participantsLabel2 = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
      font4 = [participantsLabel2 font];
      [font4 lineHeight];
      v28 = v31;
    }

    v32 = v30 + v28;
    if (showAccountName)
    {
      [(ICNoteResultsListCollectionViewCell *)self folderAndAccountLabel];
      v33 = font;
      v34 = showAccountName;
      v36 = v35 = titleLabel2;
      [v36 font];
      v37 = font2;
      v38 = showParticipantsInfo;
      v40 = v39 = summaryLabel2;
      [v40 lineHeight];
      v42 = v32 + v41;

      summaryLabel2 = v39;
      showParticipantsInfo = v38;
      font2 = v37;

      titleLabel2 = v35;
      showAccountName = v34;
      font = v33;
    }

    else
    {
      v42 = v32 + 0.0;
    }

    if (showParticipantsInfo)
    {
    }

    if (isLargerThanAXLarge)
    {
    }

    v43 = fmin(ceil(v42), 68.0);
    [(ICNoteResultsListCollectionViewCell *)self setCurrentThumbnailSize:v43, v43];
  }

  dateLabel2 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
  [dateLabel2 setHidden:isLargerThanAXLarge ^ 1];

  participantsLabel3 = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
  [participantsLabel3 setHidden:showParticipantsInfo ^ 1];

  folderStackView = [(ICNoteResultsListCollectionViewCell *)self folderStackView];
  [folderStackView setHidden:showAccountName ^ 1];

  LODWORD(folderStackView) = [(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent];
  thumbnailImageView = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
  [thumbnailImageView setHidden:folderStackView ^ 1];

  if ([(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent]&& ![(ICNoteResultsListCollectionViewCell *)self currentThumbnailLocation]|| ![(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent]&& [(ICNoteResultsListCollectionViewCell *)self currentThumbnailLocation]|| [(ICNoteResultsListCollectionViewCell *)self isAXSize]&& [(ICNoteResultsListCollectionViewCell *)self currentThumbnailLocation]!= 2 || ![(ICNoteResultsListCollectionViewCell *)self isAXSize]&& [(ICNoteResultsListCollectionViewCell *)self currentThumbnailLocation]!= 1)
  {
    if ([(ICNoteResultsListCollectionViewCell *)self isAXSize]&& [(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent])
    {
      isThumbnailPresent = 2;
    }

    else
    {
      isThumbnailPresent = [(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent];
    }

    [(ICNoteResultsListCollectionViewCell *)self setCurrentThumbnailLocation:isThumbnailPresent];
  }

  configurationState = [(ICNoteResultsListCollectionViewCell *)self configurationState];
  [(ICNoteResultsListCollectionViewCell *)self updateStatusIndicatorsUsingState:configurationState];

  [(ICNoteResultsListCollectionViewCell *)self updateLabelsFromConfiguration];
  [(ICNoteResultsListCollectionViewCell *)self updateThumbnailFromConfiguration];
  configuration5 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  styleForCalculator = [configuration5 styleForCalculator];

  separatorLeadingConstraint = [(ICNoteResultsListCollectionViewCell *)self separatorLeadingConstraint];
  [separatorLeadingConstraint setActive:styleForCalculator ^ 1];

  [(ICNoteResultsListCollectionViewCell *)self verticalPadding];
  v54 = v53;
  verticalStackViewTopConstraint = [(ICNoteResultsListCollectionViewCell *)self verticalStackViewTopConstraint];
  [verticalStackViewTopConstraint setConstant:v54];

  if (styleForCalculator)
  {
    v56 = 4.0;
  }

  else
  {
    v56 = 2.0;
  }

  verticalStackView = [(ICNoteResultsListCollectionViewCell *)self verticalStackView];
  [verticalStackView setSpacing:v56];

  [(ICNoteResultsListCollectionViewCell *)self layoutIfNeeded];
}

- (double)verticalPadding
{
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  if ([configuration styleForCalculator])
  {
    v3 = 18.0;
  }

  else
  {
    v3 = 10.0;
  }

  return v3;
}

- (void)updateStatusIndicatorsUsingState:(id)state
{
  stateCopy = state;
  statusIndicatorImageView = [(ICNoteResultsListCollectionViewCell *)self statusIndicatorImageView];
  [statusIndicatorImageView setHidden:1];

  secondaryStatusIndicatorImageView = [(ICNoteResultsListCollectionViewCell *)self secondaryStatusIndicatorImageView];
  [secondaryStatusIndicatorImageView setHidden:1];

  if (([stateCopy isSelected] & 1) != 0 || objc_msgSend(stateCopy, "isFocused"))
  {
    isInSplitView = [(ICNoteResultsListCollectionViewCell *)self isInSplitView];
  }

  else
  {
    isInSplitView = 0;
  }

  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  primaryStatusImage = [configuration primaryStatusImage];

  if (primaryStatusImage)
  {
    configuration2 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    primaryStatusImage2 = [configuration2 primaryStatusImage];
    statusIndicatorImageView2 = [(ICNoteResultsListCollectionViewCell *)self statusIndicatorImageView];
    [statusIndicatorImageView2 setImage:primaryStatusImage2];

    if (isInSplitView)
    {
      titleLabel = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
      [titleLabel textColor];
    }

    else
    {
      titleLabel = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      [titleLabel primaryStatusImageTintColor];
    }
    v13 = ;
    statusIndicatorImageView3 = [(ICNoteResultsListCollectionViewCell *)self statusIndicatorImageView];
    [statusIndicatorImageView3 setTintColor:v13];

    statusIndicatorImageView4 = [(ICNoteResultsListCollectionViewCell *)self statusIndicatorImageView];
    [statusIndicatorImageView4 setHidden:0];
  }

  configuration3 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  secondaryStatusImage = [configuration3 secondaryStatusImage];

  if (secondaryStatusImage)
  {
    configuration4 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    secondaryStatusImage2 = [configuration4 secondaryStatusImage];
    secondaryStatusIndicatorImageView2 = [(ICNoteResultsListCollectionViewCell *)self secondaryStatusIndicatorImageView];
    [secondaryStatusIndicatorImageView2 setImage:secondaryStatusImage2];

    if (isInSplitView)
    {
      titleLabel2 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
      [titleLabel2 textColor];
    }

    else
    {
      titleLabel2 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      [titleLabel2 secondaryStatusImageTintColor];
    }
    v22 = ;
    secondaryStatusIndicatorImageView3 = [(ICNoteResultsListCollectionViewCell *)self secondaryStatusIndicatorImageView];
    [secondaryStatusIndicatorImageView3 setTintColor:v22];

    secondaryStatusIndicatorImageView4 = [(ICNoteResultsListCollectionViewCell *)self secondaryStatusIndicatorImageView];
    [secondaryStatusIndicatorImageView4 setHidden:0];
  }
}

- (void)updateLabelsFromConfiguration
{
  configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
  isDataLoaded = [configuration isDataLoaded];

  if (isDataLoaded)
  {
    configuration2 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    titleAttributedString = [configuration2 titleAttributedString];

    configuration3 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v8 = configuration3;
    if (titleAttributedString)
    {
      titleAttributedString2 = [configuration3 titleAttributedString];
      titleLabel = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
      [titleLabel setAttributedText:titleAttributedString2];
    }

    else
    {
      titleAttributedString2 = [configuration3 titleString];
      titleLabel = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
      [titleLabel setText:titleAttributedString2];
    }

    dateLabel = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
    isHidden = [dateLabel isHidden];

    if ((isHidden & 1) == 0)
    {
      configuration4 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      dateString = [configuration4 dateString];
      dateLabel2 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
      [dateLabel2 setText:dateString];
    }

    configuration5 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    summaryAttributedString = [configuration5 summaryAttributedString];

    configuration6 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v30 = configuration6;
    if (summaryAttributedString)
    {
      summaryAttributedString2 = [configuration6 summaryAttributedString];
      summaryLabel = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
      [summaryLabel setAttributedText:summaryAttributedString2];
    }

    else
    {
      summaryAttributedString2 = [configuration6 summaryString];
      summaryLabel = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
      [summaryLabel setText:summaryAttributedString2];
    }

    configuration7 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    showParticipantsInfo = [configuration7 showParticipantsInfo];

    if (showParticipantsInfo)
    {
      configuration8 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      participantsInfoString = [configuration8 participantsInfoString];
      participantsLabel = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
      [participantsLabel setText:participantsInfoString];
    }

    configuration9 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    showsNoteContainer = [configuration9 showsNoteContainer];

    if (showsNoteContainer)
    {
      configuration10 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      folderAndAccountInfoString = [configuration10 folderAndAccountInfoString];
      folderAndAccountLabel = [(ICNoteResultsListCollectionViewCell *)self folderAndAccountLabel];
      [folderAndAccountLabel setText:folderAndAccountInfoString];

      configuration11 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      folderImage = [configuration11 folderImage];
      folderLabelImageView = [(ICNoteResultsListCollectionViewCell *)self folderLabelImageView];
      [folderLabelImageView setImage:folderImage];

      configuration12 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      folderImage2 = [configuration12 folderImage];
      folderLabelImageView2 = [(ICNoteResultsListCollectionViewCell *)self folderLabelImageView];
      [folderLabelImageView2 setHidden:folderImage2 == 0];
    }

    configuration13 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    searchResult = [configuration13 searchResult];

    if (searchResult)
    {
      superview = [(ICNoteResultsListCollectionViewCell *)self superview];
      if (superview)
      {
        v52 = superview;
        v53 = +[UIApplication sharedApplication];
        isRunningTest = [v53 isRunningTest];

        if (isRunningTest)
        {
          folderLabelImageView3 = +[ICAppDelegate sharedInstance];
          [folderLabelImageView3 searchResultBecameVisible];
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
    titleLabel2 = [(ICNoteResultsListCollectionViewCell *)self titleLabel];
    [titleLabel2 setText:@" "];

    summaryLabel2 = [(ICNoteResultsListCollectionViewCell *)self summaryLabel];
    [summaryLabel2 setText:@" "];

    dateLabel3 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
    isHidden2 = [dateLabel3 isHidden];

    if ((isHidden2 & 1) == 0)
    {
      dateLabel4 = [(ICNoteResultsListCollectionViewCell *)self dateLabel];
      [dateLabel4 setText:@" "];
    }

    configuration14 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    showParticipantsInfo2 = [configuration14 showParticipantsInfo];

    if (showParticipantsInfo2)
    {
      participantsLabel2 = [(ICNoteResultsListCollectionViewCell *)self participantsLabel];
      [participantsLabel2 setText:@" "];
    }

    configuration15 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    showsNoteContainer2 = [configuration15 showsNoteContainer];

    if (showsNoteContainer2)
    {
      folderAndAccountLabel2 = [(ICNoteResultsListCollectionViewCell *)self folderAndAccountLabel];
      [folderAndAccountLabel2 setText:@" "];

      folderLabelImageView3 = [(ICNoteResultsListCollectionViewCell *)self folderLabelImageView];
      [folderLabelImageView3 setHidden:1];
LABEL_24:
    }
  }
}

- (void)updateThumbnailFromConfiguration
{
  if ([(ICNoteResultsListCollectionViewCell *)self isThumbnailPresent])
  {
    configuration = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    note = [configuration note];

    configuration2 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
    v6 = configuration2;
    if (note)
    {
      searchResult = [configuration2 searchResult];
      configuration3 = [searchResult configuration];
      foundAttachmentObjectID = [configuration3 foundAttachmentObjectID];

      if (foundAttachmentObjectID)
      {
        configuration4 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
        searchResult2 = [configuration4 searchResult];
        object = [searchResult2 object];
        managedObjectContext = [object managedObjectContext];
        v14 = [managedObjectContext objectWithID:foundAttachmentObjectID];

        v15 = [ICThumbnailConfiguration alloc];
        [(ICNoteResultsListCollectionViewCell *)self currentThumbnailSize];
        v17 = v16;
        v19 = v18;
        configuration5 = +[UIScreen mainScreen];
        [configuration5 scale];
        v22 = v21;
        ic_appearanceInfo = [(ICNoteResultsListCollectionViewCell *)self ic_appearanceInfo];
        v24 = [v15 initForNoteListWithFoundAttachment:v14 preferredSize:ic_appearanceInfo scale:v17 appearanceInfo:{v19, v22}];
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
        configuration5 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
        ic_appearanceInfo = [configuration5 note];
        [(ICNoteResultsListCollectionViewCell *)self currentThumbnailSize];
        v59 = v58;
        v61 = v60;
        v62 = +[UIScreen mainScreen];
        [v62 scale];
        v24 = [v57 initForNoteListWithNote:ic_appearanceInfo preferredSize:v14 scale:v59 appearanceInfo:{v61, v63}];
      }

      v64 = +[ICThumbnailService sharedThumbnailService];
      uniqueKey = [v24 uniqueKey];
      [(ICNoteResultsListCollectionViewCell *)self setCurrentThumbnailConfigurationUniqueKey:uniqueKey];

      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_10011529C;
      v67[3] = &unk_10064A420;
      v67[4] = self;
      [v64 thumbnailWithConfiguration:v24 completion:v67];
    }

    else
    {
      invitation = [configuration2 invitation];

      if (!invitation)
      {
        return;
      }

      configuration6 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      invitation2 = [configuration6 invitation];
      rootObjectType = [invitation2 rootObjectType];
      v29 = [rootObjectType isEqualToString:@"com.apple.notes.note"];

      configuration7 = [(ICBaseNoteResultsCollectionViewCell *)self configuration];
      invitation3 = [configuration7 invitation];
      v32 = invitation3;
      if (v29)
      {
        traitCollection = [(ICNoteResultsListCollectionViewCell *)self traitCollection];
        ic_appearanceInfo2 = [traitCollection ic_appearanceInfo];
        [(ICNoteResultsListCollectionViewCell *)self currentThumbnailSize];
        v35 = [v32 thumbnailImageForAppearance:ic_appearanceInfo2 size:?];
        thumbnailImageView = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [thumbnailImageView setImage:v35];

        thumbnailImageView2 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [thumbnailImageView2 setContentMode:2];

        v38 = +[UIColor secondarySystemGroupedBackgroundColor];
        thumbnailImageView3 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [thumbnailImageView3 setBackgroundColor:v38];

        [(ICNoteResultsListCollectionViewCell *)self ic_hairlineWidth];
        v41 = v40;
        thumbnailImageView4 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        layer = [thumbnailImageView4 layer];
        [layer setBorderWidth:v41];

        thumbnailImageView5 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        image = [thumbnailImageView5 image];
        thumbnailImageView6 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [thumbnailImageView6 setHidden:image == 0];
      }

      else
      {
        rootObjectType2 = [invitation3 rootObjectType];
        v47 = [rootObjectType2 isEqualToString:@"com.apple.notes.folder"];

        if (!v47)
        {
          return;
        }

        thumbnailImageView5 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:26.0];
        v48 = [UIImage systemImageNamed:@"folder.badge.person.crop" withConfiguration:thumbnailImageView5];
        thumbnailImageView7 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [thumbnailImageView7 setImage:v48];

        thumbnailImageView8 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [thumbnailImageView8 setContentMode:1];

        v51 = +[UIColor clearColor];
        thumbnailImageView9 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [thumbnailImageView9 setBackgroundColor:v51];

        thumbnailImageView10 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        layer2 = [thumbnailImageView10 layer];
        [layer2 setBorderWidth:0.0];

        image = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        v44Image = [image image];
        thumbnailImageView11 = [(ICNoteResultsListCollectionViewCell *)self thumbnailImageView];
        [thumbnailImageView11 setHidden:v44Image == 0];
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