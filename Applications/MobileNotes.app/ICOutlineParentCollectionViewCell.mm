@interface ICOutlineParentCollectionViewCell
- (BOOL)_accessibilityOverridesInstructionsHint;
- (BOOL)isInsetGroupedList;
- (ICOutlineParentCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (id)headerContentConfiguration;
- (unint64_t)accessibilityTraits;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)fixupMasking;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)editing;
- (void)setFolderListSectionIdentifier:(id)identifier;
- (void)setNoteSectionIdentifier:(id)identifier;
- (void)setTagSelection:(id)selection;
- (void)updateAccessories;
- (void)updateConfigurationUsingState:(id)state;
- (void)updateSyncActivityIndicator;
@end

@implementation ICOutlineParentCollectionViewCell

- (ICOutlineParentCollectionViewCell)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = ICOutlineParentCollectionViewCell;
  v3 = [(ICOutlineParentCollectionViewCell *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_displayGenericTitle = 0;
    v3->_displayDisclosure = 1;
    v3->_shouldDisplayTagSelectionOperator = 0;
    v3->_horizontalInsetsOverride = 2.22507386e-308;
    objc_initWeak(&location, v3);
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Any Selected" value:&stru_100661CF0 table:0];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000973B4;
    v16[3] = &unk_100647A30;
    objc_copyWeak(&v17, &location);
    v7 = [UIAction ic_actionWithTitle:v6 handler:v16];
    tagAnyAction = v4->_tagAnyAction;
    v4->_tagAnyAction = v7;

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"All Selected" value:&stru_100661CF0 table:0];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100097494;
    v14[3] = &unk_100647A30;
    objc_copyWeak(&v15, &location);
    v11 = [UIAction ic_actionWithTitle:v10 handler:v14];
    tagAllAction = v4->_tagAllAction;
    v4->_tagAllAction = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);

    objc_destroyWeak(&location);
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = ICOutlineParentCollectionViewCell;
  [(ICOutlineParentCollectionViewCell *)&v4 prepareForReuse];
  progressIndicatorTracker = [(ICOutlineParentCollectionViewCell *)self progressIndicatorTracker];
  [progressIndicatorTracker invalidate];

  [(ICOutlineParentCollectionViewCell *)self setProgressIndicatorTracker:0];
}

- (void)dealloc
{
  progressIndicatorTracker = [(ICOutlineParentCollectionViewCell *)self progressIndicatorTracker];
  [progressIndicatorTracker invalidate];

  v4.receiver = self;
  v4.super_class = ICOutlineParentCollectionViewCell;
  [(ICOutlineParentCollectionViewCell *)&v4 dealloc];
}

- (void)setEditing:(BOOL)editing
{
  v4.receiver = self;
  v4.super_class = ICOutlineParentCollectionViewCell;
  [(ICOutlineParentCollectionViewCell *)&v4 setEditing:editing];
  [(ICOutlineParentCollectionViewCell *)self updateAccessories];
}

- (void)setTagSelection:(id)selection
{
  objc_storeStrong(&self->_tagSelection, selection);

  [(ICOutlineParentCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (void)updateAccessories
{
  v3 = +[NSMutableArray array];
  folderListSectionIdentifier = [(ICOutlineParentCollectionViewCell *)self folderListSectionIdentifier];

  if (folderListSectionIdentifier)
  {
    activityIndicatorView = [(ICOutlineParentCollectionViewCell *)self activityIndicatorView];
    isAnimating = [activityIndicatorView isAnimating];

    if (isAnimating)
    {
      v7 = [UICellAccessoryCustomView alloc];
      activityIndicatorView2 = [(ICOutlineParentCollectionViewCell *)self activityIndicatorView];
      v9 = [v7 initWithCustomView:activityIndicatorView2 placement:1];

      [v9 setDisplayedState:2];
      [v3 addObject:v9];
    }

    upgradeButtonTapHandler = [(ICOutlineParentCollectionViewCell *)self upgradeButtonTapHandler];

    if (upgradeButtonTapHandler)
    {
      v11 = +[UIButtonConfiguration borderlessButtonConfiguration];
      [v11 setButtonSize:2];
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"Upgrade" value:&stru_100661CF0 table:0];
      v14 = [UIFont ic_preferredSingleLineAFontForTextStyle:UIFontTextStyleBody];
      v15 = [NSAttributedString ic_attributedStringWithString:v13 font:v14];
      [v11 setAttributedTitle:v15];

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100097A4C;
      v25[3] = &unk_100647A58;
      v25[4] = self;
      v16 = [UIAction actionWithHandler:v25];
      v17 = [UIButton buttonWithConfiguration:v11 primaryAction:v16];

      [v11 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
      v18 = [[UICellAccessoryCustomView alloc] initWithCustomView:v17 placement:1];
      [v18 setDisplayedState:2];
      [v3 addObject:v18];
    }
  }

  if ([(ICOutlineParentCollectionViewCell *)self displayDisclosure])
  {
    v19 = objc_alloc_init(UICellAccessoryOutlineDisclosure);
    [v19 setDisplayedState:0];
    [v19 setStyle:1];
    traitCollection = [(ICOutlineParentCollectionViewCell *)self traitCollection];
    if ([traitCollection listEnvironment] == 6)
    {
      ic_behavior = [(ICOutlineParentCollectionViewCell *)self ic_behavior];

      if (ic_behavior == 3)
      {
LABEL_11:
        [v3 addObject:v19];

        goto LABEL_12;
      }

      traitCollection = +[UIColor labelColor];
      [v19 setTintColor:traitCollection];
    }

    goto LABEL_11;
  }

LABEL_12:
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100097AF8;
  v23[3] = &unk_100645BA0;
  v23[4] = self;
  v24 = v3;
  v22 = v3;
  [UIView performWithoutAnimation:v23];
}

- (void)setFolderListSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_storeStrong(&self->_folderListSectionIdentifier, identifier);
  if (identifierCopy)
  {
    noteSectionIdentifier = self->_noteSectionIdentifier;
    self->_noteSectionIdentifier = 0;
  }

  activityIndicatorView = [(ICOutlineParentCollectionViewCell *)self activityIndicatorView];

  if (!activityIndicatorView)
  {
    v7 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(ICOutlineParentCollectionViewCell *)self setActivityIndicatorView:v7];
  }

  if ([identifierCopy sectionType] == 2 || objc_msgSend(identifierCopy, "sectionType") == 3)
  {
    v8 = [(ICOutlineParentCollectionViewCell *)self displayGenericTitle]^ 1;
  }

  else
  {
    v8 = 0;
  }

  [(ICOutlineParentCollectionViewCell *)self setIsSyncActivityVisible:v8];
  if ([(ICOutlineParentCollectionViewCell *)self isSyncActivityVisible])
  {
    v9 = [[ICICloudProgressIndicatorTracker alloc] initWithDelegate:self];
    [(ICOutlineParentCollectionViewCell *)self setProgressIndicatorTracker:v9];
  }

  [(ICOutlineParentCollectionViewCell *)self updateAccessories];
  [(ICOutlineParentCollectionViewCell *)self updateSyncActivityIndicator];
  [(ICOutlineParentCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (void)setNoteSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_storeStrong(&self->_noteSectionIdentifier, identifier);
  if (identifierCopy)
  {
    folderListSectionIdentifier = self->_folderListSectionIdentifier;
    self->_folderListSectionIdentifier = 0;
  }

  [(ICOutlineParentCollectionViewCell *)self updateAccessories];
  [(ICOutlineParentCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (id)headerContentConfiguration
{
  if ([(ICOutlineParentCollectionViewCell *)self usesSidebarHeaderConfiguration])
  {
    +[UIListContentConfiguration headerConfiguration];
  }

  else
  {
    +[UIListContentConfiguration prominentInsetGroupedHeaderConfiguration];
  }
  v2 = ;

  return v2;
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  ic_behavior = [(ICOutlineParentCollectionViewCell *)self ic_behavior];
  traitCollection = [(ICOutlineParentCollectionViewCell *)self traitCollection];
  splitViewControllerLayoutEnvironment = [traitCollection splitViewControllerLayoutEnvironment];

  traitCollection2 = [(ICOutlineParentCollectionViewCell *)self traitCollection];
  if ([traitCollection2 listEnvironment] == 5)
  {
  }

  else
  {
    traitCollection3 = [(ICOutlineParentCollectionViewCell *)self traitCollection];
    listEnvironment = [traitCollection3 listEnvironment];

    if (listEnvironment != 6)
    {
      defaultBackgroundConfiguration = +[UIBackgroundConfiguration clearConfiguration];
      [(ICOutlineParentCollectionViewCell *)self setBackgroundConfiguration:defaultBackgroundConfiguration];
      goto LABEL_6;
    }
  }

  defaultBackgroundConfiguration = [(ICOutlineParentCollectionViewCell *)self defaultBackgroundConfiguration];
  v12 = [defaultBackgroundConfiguration updatedConfigurationForState:stateCopy];
  [(ICOutlineParentCollectionViewCell *)self setBackgroundConfiguration:v12];

LABEL_6:
  headerContentConfiguration = [(ICOutlineParentCollectionViewCell *)self headerContentConfiguration];
  v14 = [headerContentConfiguration updatedConfigurationForState:stateCopy];

  v15 = ICAccessibilityAccessibilityLargerTextSizesEnabled() ^ 1;
  textProperties = [v14 textProperties];
  [textProperties setNumberOfLines:v15];

  if (![(ICOutlineParentCollectionViewCell *)self usesSidebarHeaderConfiguration]|| ic_behavior == 1)
  {
    v17 = +[UIColor labelColor];
    textProperties2 = [v14 textProperties];
    [textProperties2 setColor:v17];
  }

  folderListSectionIdentifier = [(ICOutlineParentCollectionViewCell *)self folderListSectionIdentifier];

  if (folderListSectionIdentifier)
  {
    if ([(ICOutlineParentCollectionViewCell *)self displayGenericTitle])
    {
      folderListSectionIdentifier2 = +[NSBundle mainBundle];
      [folderListSectionIdentifier2 localizedStringForKey:@"Folders" value:&stru_100661CF0 table:0];
    }

    else
    {
      folderListSectionIdentifier2 = [(ICOutlineParentCollectionViewCell *)self folderListSectionIdentifier];
      [folderListSectionIdentifier2 title];
    }
    noteSectionIdentifier = ;

    textProperties3 = [v14 textProperties];
    font = [textProperties3 font];
    ic_fontWithSingleLineA = [font ic_fontWithSingleLineA];
    textProperties4 = [v14 textProperties];
    [textProperties4 setFont:ic_fontWithSingleLineA];

    goto LABEL_16;
  }

  noteSectionIdentifier = [(ICOutlineParentCollectionViewCell *)self noteSectionIdentifier];

  if (noteSectionIdentifier)
  {
    textProperties3 = [(ICOutlineParentCollectionViewCell *)self noteSectionIdentifier];
    noteSectionIdentifier = [textProperties3 title];
LABEL_16:
  }

  [v14 setText:noteSectionIdentifier];
  [(ICOutlineParentCollectionViewCell *)self setAccessibilityLabel:noteSectionIdentifier];
  if ([(ICOutlineParentCollectionViewCell *)self shouldDisplayTagSelectionOperator])
  {
    tagSelection = [(ICOutlineParentCollectionViewCell *)self tagSelection];
    if (tagSelection)
    {
      v27 = tagSelection;
      tagSelection2 = [(ICOutlineParentCollectionViewCell *)self tagSelection];
      if ([tagSelection2 selectedTagCount] <= 1)
      {
      }

      else
      {
        isEditing = [stateCopy isEditing];

        if ((isEditing & 1) == 0)
        {
          tagSelection3 = [(ICOutlineParentCollectionViewCell *)self tagSelection];
          v31 = [tagSelection3 tagOperator] == 2;
          tagAnyAction = [(ICOutlineParentCollectionViewCell *)self tagAnyAction];
          [tagAnyAction setState:v31];

          tagSelection4 = [(ICOutlineParentCollectionViewCell *)self tagSelection];
          v34 = [tagSelection4 tagOperator] == 1;
          tagAllAction = [(ICOutlineParentCollectionViewCell *)self tagAllAction];
          [tagAllAction setState:v34];

          listContentView = [(ICOutlineParentCollectionViewCell *)self listContentView];

          if (!listContentView)
          {
            v37 = [UIListContentView alloc];
            defaultContentConfiguration = [(ICOutlineParentCollectionViewCell *)self defaultContentConfiguration];
            v39 = [v37 initWithConfiguration:defaultContentConfiguration];
            [(ICOutlineParentCollectionViewCell *)self setListContentView:v39];

            listContentView2 = [(ICOutlineParentCollectionViewCell *)self listContentView];
            [listContentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

            listContentView3 = [(ICOutlineParentCollectionViewCell *)self listContentView];
            LODWORD(v42) = 1148846080;
            [listContentView3 setContentHuggingPriority:0 forAxis:v42];

            listContentView4 = [(ICOutlineParentCollectionViewCell *)self listContentView];
            LODWORD(v44) = 1148846080;
            [listContentView4 setContentCompressionResistancePriority:0 forAxis:v44];
          }

          tagOperatorButton = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];

          if (!tagOperatorButton)
          {
            v46 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
            v47 = +[UIButtonConfiguration plainButtonConfiguration];
            v48 = +[UIColor ICTintColor];
            [v47 setBaseForegroundColor:v48];

            [v47 contentInsets];
            [v47 setContentInsets:?];
            v124[0] = _NSConcreteStackBlock;
            v124[1] = 3221225472;
            v124[2] = sub_100098898;
            v124[3] = &unk_100647A80;
            v125 = v46;
            v49 = v46;
            [v47 setTitleTextAttributesTransformer:v124];
            v50 = [UIButton buttonWithConfiguration:v47 primaryAction:0];
            [(ICOutlineParentCollectionViewCell *)self setTagOperatorButton:v50];

            tagOperatorButton2 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            [tagOperatorButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

            tagOperatorButton3 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            [tagOperatorButton3 setShowsMenuAsPrimaryAction:1];

            tagOperatorButton4 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            [tagOperatorButton4 setChangesSelectionAsPrimaryAction:1];

            tagOperatorButton5 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            [tagOperatorButton5 setContentHorizontalAlignment:5];

            tagOperatorButton6 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            LODWORD(v56) = 1148846080;
            [tagOperatorButton6 setContentHuggingPriority:0 forAxis:v56];

            tagOperatorButton7 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            LODWORD(v58) = 1148846080;
            [tagOperatorButton7 setContentCompressionResistancePriority:0 forAxis:v58];
          }

          horizontalStackView = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];

          if (!horizontalStackView)
          {
            v60 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
            LODWORD(v61) = 1132068864;
            [v60 setContentHuggingPriority:0 forAxis:v61];
            LODWORD(v62) = 1132068864;
            [v60 setContentCompressionResistancePriority:0 forAxis:v62];
            v63 = [UIStackView alloc];
            listContentView5 = [(ICOutlineParentCollectionViewCell *)self listContentView];
            v127[0] = listContentView5;
            tagOperatorButton8 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            v127[1] = tagOperatorButton8;
            v127[2] = v60;
            v66 = [NSArray arrayWithObjects:v127 count:3];
            v67 = [v63 initWithArrangedSubviews:v66];
            [(ICOutlineParentCollectionViewCell *)self setHorizontalStackView:v67];

            horizontalStackView2 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];
            [horizontalStackView2 setAxis:0];

            horizontalStackView3 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];
            [horizontalStackView3 setSpacing:0.0];

            horizontalStackView4 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];
            [horizontalStackView4 setAlignment:3];

            tagOperatorButton9 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            heightAnchor = [tagOperatorButton9 heightAnchor];
            v73 = [heightAnchor constraintEqualToConstant:26.0];
            [v73 setActive:1];

            contentView = [(ICOutlineParentCollectionViewCell *)self contentView];
            horizontalStackView5 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];
            [contentView addSubview:horizontalStackView5];

            horizontalStackView6 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];
            [horizontalStackView6 ic_addAnchorsToFillSuperview];
          }

          [v14 directionalLayoutMargins];
          v78 = v77;
          v80 = v79;
          v82 = v81;
          [(ICOutlineParentCollectionViewCell *)self horizontalInsetsOverride];
          if (v83 != 2.22507386e-308)
          {
            [(ICOutlineParentCollectionViewCell *)self horizontalInsetsOverride];
            v80 = v84;
          }

          [(ICOutlineParentCollectionViewCell *)self directionalLayoutMargins];
          v86 = v85 + -8.0;
          v87 = +[UIColor clearColor];
          textProperties5 = [v14 textProperties];
          [textProperties5 setColor:v87];

          [v14 setDirectionalLayoutMargins:{v78, v80, v82, v86}];
          listContentView6 = [(ICOutlineParentCollectionViewCell *)self listContentView];
          [listContentView6 setConfiguration:v14];

          tagAllAction2 = [(ICOutlineParentCollectionViewCell *)self tagAllAction];
          v126[0] = tagAllAction2;
          tagAnyAction2 = [(ICOutlineParentCollectionViewCell *)self tagAnyAction];
          v126[1] = tagAnyAction2;
          v92 = [NSArray arrayWithObjects:v126 count:2];
          v93 = [UIMenu menuWithChildren:v92];
          tagOperatorButton10 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
          [tagOperatorButton10 setMenu:v93];

          goto LABEL_37;
        }
      }
    }
  }

  horizontalStackView7 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];
  [horizontalStackView7 removeFromSuperview];

  [(ICOutlineParentCollectionViewCell *)self setHorizontalStackView:0];
  tagOperatorButton11 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
  [tagOperatorButton11 removeFromSuperview];

  [(ICOutlineParentCollectionViewCell *)self setTagOperatorButton:0];
  listContentView7 = [(ICOutlineParentCollectionViewCell *)self listContentView];
  [listContentView7 removeFromSuperview];

  [(ICOutlineParentCollectionViewCell *)self setListContentView:0];
  [(ICOutlineParentCollectionViewCell *)self horizontalInsetsOverride];
  v99 = v98;
  if ((v98 != 2.22507386e-308 || (v100 = 0.0, !-[ICOutlineParentCollectionViewCell isInsetGroupedList](self, "isInsetGroupedList")) && (-[ICOutlineParentCollectionViewCell traitCollection](self, "traitCollection"), v101 = objc_claimAutoreleasedReturnValue(), v102 = [v101 listEnvironment], v101, v102)) && (v100 = v99, v99 == 2.22507386e-308))
  {
    v107 = ICInternalSettingsAlignHeadersWithNavTitle();
    v109 = ic_behavior != 1 || splitViewControllerLayoutEnvironment != 2;
    if (v107 || !v109)
    {
      objc_opt_class();
      superview = [(ICOutlineParentCollectionViewCell *)self superview];
      v111 = ICDynamicCast();

      [v111 directionalLayoutMargins];
      v113 = v112;
      [v111 ic_directionalSafeAreaInsets];
      v115 = v113 - v114;
      [v111 directionalLayoutMargins];
      v117 = v116;
      [v111 ic_directionalSafeAreaInsets];
      v119 = v117 - v118;
      [v14 directionalLayoutMargins];
      v121 = v120;
      v123 = v122;
      [v14 setAxesPreservingSuperviewLayoutMargins:2];
      [v14 setDirectionalLayoutMargins:{v121, v115, v123, v119}];
    }
  }

  else
  {
    [v14 directionalLayoutMargins];
    v104 = v103;
    v106 = v105;
    [v14 setAxesPreservingSuperviewLayoutMargins:2];
    [v14 setDirectionalLayoutMargins:{v104, v100, v106, v100}];
  }

  [(ICOutlineParentCollectionViewCell *)self setContentConfiguration:v14];
LABEL_37:
}

- (BOOL)isInsetGroupedList
{
  traitCollection = [(ICOutlineParentCollectionViewCell *)self traitCollection];
  v3 = [traitCollection listEnvironment] == 4;

  return v3;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = ICOutlineParentCollectionViewCell;
  [(ICOutlineParentCollectionViewCell *)&v4 applyLayoutAttributes:attributes];
  [(ICOutlineParentCollectionViewCell *)self fixupMasking];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICOutlineParentCollectionViewCell;
  [(ICOutlineParentCollectionViewCell *)&v3 layoutSubviews];
  [(ICOutlineParentCollectionViewCell *)self fixupMasking];
}

- (void)fixupMasking
{
  if ([(ICOutlineParentCollectionViewCell *)self isInsetGroupedList])
  {
    layer = [(ICOutlineParentCollectionViewCell *)self layer];
    [layer setCornerRadius:0.0];
  }
}

- (id)accessibilityValue
{
  activityIndicatorView = [(ICOutlineParentCollectionViewCell *)self activityIndicatorView];
  isAnimating = [activityIndicatorView isAnimating];

  if (isAnimating)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Syncing" value:&stru_100661CF0 table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ICOutlineParentCollectionViewCell;
  return UIAccessibilityTraitHeader | [(ICOutlineParentCollectionViewCell *)&v3 accessibilityTraits];
}

- (BOOL)_accessibilityOverridesInstructionsHint
{
  tagOperatorButton = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
  v3 = tagOperatorButton != 0;

  return v3;
}

- (id)accessibilityHint
{
  tagOperatorButton = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];

  if (tagOperatorButton)
  {
    v4 = +[NSBundle mainBundle];
    accessibilityHint = [v4 localizedStringForKey:@"Double tap to modify selection" value:&stru_100661CF0 table:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICOutlineParentCollectionViewCell;
    accessibilityHint = [(ICOutlineParentCollectionViewCell *)&v7 accessibilityHint];
  }

  return accessibilityHint;
}

- (void)updateSyncActivityIndicator
{
  if (-[ICOutlineParentCollectionViewCell isSyncActivityVisible](self, "isSyncActivityVisible") && (-[ICOutlineParentCollectionViewCell progressIndicatorTracker](self, "progressIndicatorTracker"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 progressIndicatorShouldAnimate], v3, v4))
  {
    activityIndicatorView = [(ICOutlineParentCollectionViewCell *)self activityIndicatorView];
    [activityIndicatorView startAnimating];
  }

  else
  {
    activityIndicatorView = [(ICOutlineParentCollectionViewCell *)self activityIndicatorView];
    [activityIndicatorView stopAnimating];
  }

  [(ICOutlineParentCollectionViewCell *)self updateAccessories];
}

@end