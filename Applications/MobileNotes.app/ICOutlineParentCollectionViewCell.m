@interface ICOutlineParentCollectionViewCell
- (BOOL)_accessibilityOverridesInstructionsHint;
- (BOOL)isInsetGroupedList;
- (ICOutlineParentCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (id)headerContentConfiguration;
- (unint64_t)accessibilityTraits;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)fixupMasking;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)a3;
- (void)setFolderListSectionIdentifier:(id)a3;
- (void)setNoteSectionIdentifier:(id)a3;
- (void)setTagSelection:(id)a3;
- (void)updateAccessories;
- (void)updateConfigurationUsingState:(id)a3;
- (void)updateSyncActivityIndicator;
@end

@implementation ICOutlineParentCollectionViewCell

- (ICOutlineParentCollectionViewCell)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = ICOutlineParentCollectionViewCell;
  v3 = [(ICOutlineParentCollectionViewCell *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(ICOutlineParentCollectionViewCell *)self progressIndicatorTracker];
  [v3 invalidate];

  [(ICOutlineParentCollectionViewCell *)self setProgressIndicatorTracker:0];
}

- (void)dealloc
{
  v3 = [(ICOutlineParentCollectionViewCell *)self progressIndicatorTracker];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = ICOutlineParentCollectionViewCell;
  [(ICOutlineParentCollectionViewCell *)&v4 dealloc];
}

- (void)setEditing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICOutlineParentCollectionViewCell;
  [(ICOutlineParentCollectionViewCell *)&v4 setEditing:a3];
  [(ICOutlineParentCollectionViewCell *)self updateAccessories];
}

- (void)setTagSelection:(id)a3
{
  objc_storeStrong(&self->_tagSelection, a3);

  [(ICOutlineParentCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (void)updateAccessories
{
  v3 = +[NSMutableArray array];
  v4 = [(ICOutlineParentCollectionViewCell *)self folderListSectionIdentifier];

  if (v4)
  {
    v5 = [(ICOutlineParentCollectionViewCell *)self activityIndicatorView];
    v6 = [v5 isAnimating];

    if (v6)
    {
      v7 = [UICellAccessoryCustomView alloc];
      v8 = [(ICOutlineParentCollectionViewCell *)self activityIndicatorView];
      v9 = [v7 initWithCustomView:v8 placement:1];

      [v9 setDisplayedState:2];
      [v3 addObject:v9];
    }

    v10 = [(ICOutlineParentCollectionViewCell *)self upgradeButtonTapHandler];

    if (v10)
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
    v20 = [(ICOutlineParentCollectionViewCell *)self traitCollection];
    if ([v20 listEnvironment] == 6)
    {
      v21 = [(ICOutlineParentCollectionViewCell *)self ic_behavior];

      if (v21 == 3)
      {
LABEL_11:
        [v3 addObject:v19];

        goto LABEL_12;
      }

      v20 = +[UIColor labelColor];
      [v19 setTintColor:v20];
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

- (void)setFolderListSectionIdentifier:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_folderListSectionIdentifier, a3);
  if (v10)
  {
    noteSectionIdentifier = self->_noteSectionIdentifier;
    self->_noteSectionIdentifier = 0;
  }

  v6 = [(ICOutlineParentCollectionViewCell *)self activityIndicatorView];

  if (!v6)
  {
    v7 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(ICOutlineParentCollectionViewCell *)self setActivityIndicatorView:v7];
  }

  if ([v10 sectionType] == 2 || objc_msgSend(v10, "sectionType") == 3)
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

- (void)setNoteSectionIdentifier:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_noteSectionIdentifier, a3);
  if (v6)
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

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5 = [(ICOutlineParentCollectionViewCell *)self ic_behavior];
  v6 = [(ICOutlineParentCollectionViewCell *)self traitCollection];
  v7 = [v6 splitViewControllerLayoutEnvironment];

  v8 = [(ICOutlineParentCollectionViewCell *)self traitCollection];
  if ([v8 listEnvironment] == 5)
  {
  }

  else
  {
    v9 = [(ICOutlineParentCollectionViewCell *)self traitCollection];
    v10 = [v9 listEnvironment];

    if (v10 != 6)
    {
      v11 = +[UIBackgroundConfiguration clearConfiguration];
      [(ICOutlineParentCollectionViewCell *)self setBackgroundConfiguration:v11];
      goto LABEL_6;
    }
  }

  v11 = [(ICOutlineParentCollectionViewCell *)self defaultBackgroundConfiguration];
  v12 = [v11 updatedConfigurationForState:v4];
  [(ICOutlineParentCollectionViewCell *)self setBackgroundConfiguration:v12];

LABEL_6:
  v13 = [(ICOutlineParentCollectionViewCell *)self headerContentConfiguration];
  v14 = [v13 updatedConfigurationForState:v4];

  v15 = ICAccessibilityAccessibilityLargerTextSizesEnabled() ^ 1;
  v16 = [v14 textProperties];
  [v16 setNumberOfLines:v15];

  if (![(ICOutlineParentCollectionViewCell *)self usesSidebarHeaderConfiguration]|| v5 == 1)
  {
    v17 = +[UIColor labelColor];
    v18 = [v14 textProperties];
    [v18 setColor:v17];
  }

  v19 = [(ICOutlineParentCollectionViewCell *)self folderListSectionIdentifier];

  if (v19)
  {
    if ([(ICOutlineParentCollectionViewCell *)self displayGenericTitle])
    {
      v20 = +[NSBundle mainBundle];
      [v20 localizedStringForKey:@"Folders" value:&stru_100661CF0 table:0];
    }

    else
    {
      v20 = [(ICOutlineParentCollectionViewCell *)self folderListSectionIdentifier];
      [v20 title];
    }
    v21 = ;

    v22 = [v14 textProperties];
    v23 = [v22 font];
    v24 = [v23 ic_fontWithSingleLineA];
    v25 = [v14 textProperties];
    [v25 setFont:v24];

    goto LABEL_16;
  }

  v21 = [(ICOutlineParentCollectionViewCell *)self noteSectionIdentifier];

  if (v21)
  {
    v22 = [(ICOutlineParentCollectionViewCell *)self noteSectionIdentifier];
    v21 = [v22 title];
LABEL_16:
  }

  [v14 setText:v21];
  [(ICOutlineParentCollectionViewCell *)self setAccessibilityLabel:v21];
  if ([(ICOutlineParentCollectionViewCell *)self shouldDisplayTagSelectionOperator])
  {
    v26 = [(ICOutlineParentCollectionViewCell *)self tagSelection];
    if (v26)
    {
      v27 = v26;
      v28 = [(ICOutlineParentCollectionViewCell *)self tagSelection];
      if ([v28 selectedTagCount] <= 1)
      {
      }

      else
      {
        v29 = [v4 isEditing];

        if ((v29 & 1) == 0)
        {
          v30 = [(ICOutlineParentCollectionViewCell *)self tagSelection];
          v31 = [v30 tagOperator] == 2;
          v32 = [(ICOutlineParentCollectionViewCell *)self tagAnyAction];
          [v32 setState:v31];

          v33 = [(ICOutlineParentCollectionViewCell *)self tagSelection];
          v34 = [v33 tagOperator] == 1;
          v35 = [(ICOutlineParentCollectionViewCell *)self tagAllAction];
          [v35 setState:v34];

          v36 = [(ICOutlineParentCollectionViewCell *)self listContentView];

          if (!v36)
          {
            v37 = [UIListContentView alloc];
            v38 = [(ICOutlineParentCollectionViewCell *)self defaultContentConfiguration];
            v39 = [v37 initWithConfiguration:v38];
            [(ICOutlineParentCollectionViewCell *)self setListContentView:v39];

            v40 = [(ICOutlineParentCollectionViewCell *)self listContentView];
            [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

            v41 = [(ICOutlineParentCollectionViewCell *)self listContentView];
            LODWORD(v42) = 1148846080;
            [v41 setContentHuggingPriority:0 forAxis:v42];

            v43 = [(ICOutlineParentCollectionViewCell *)self listContentView];
            LODWORD(v44) = 1148846080;
            [v43 setContentCompressionResistancePriority:0 forAxis:v44];
          }

          v45 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];

          if (!v45)
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

            v51 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            [v51 setTranslatesAutoresizingMaskIntoConstraints:0];

            v52 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            [v52 setShowsMenuAsPrimaryAction:1];

            v53 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            [v53 setChangesSelectionAsPrimaryAction:1];

            v54 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            [v54 setContentHorizontalAlignment:5];

            v55 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            LODWORD(v56) = 1148846080;
            [v55 setContentHuggingPriority:0 forAxis:v56];

            v57 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            LODWORD(v58) = 1148846080;
            [v57 setContentCompressionResistancePriority:0 forAxis:v58];
          }

          v59 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];

          if (!v59)
          {
            v60 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
            LODWORD(v61) = 1132068864;
            [v60 setContentHuggingPriority:0 forAxis:v61];
            LODWORD(v62) = 1132068864;
            [v60 setContentCompressionResistancePriority:0 forAxis:v62];
            v63 = [UIStackView alloc];
            v64 = [(ICOutlineParentCollectionViewCell *)self listContentView];
            v127[0] = v64;
            v65 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            v127[1] = v65;
            v127[2] = v60;
            v66 = [NSArray arrayWithObjects:v127 count:3];
            v67 = [v63 initWithArrangedSubviews:v66];
            [(ICOutlineParentCollectionViewCell *)self setHorizontalStackView:v67];

            v68 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];
            [v68 setAxis:0];

            v69 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];
            [v69 setSpacing:0.0];

            v70 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];
            [v70 setAlignment:3];

            v71 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
            v72 = [v71 heightAnchor];
            v73 = [v72 constraintEqualToConstant:26.0];
            [v73 setActive:1];

            v74 = [(ICOutlineParentCollectionViewCell *)self contentView];
            v75 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];
            [v74 addSubview:v75];

            v76 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];
            [v76 ic_addAnchorsToFillSuperview];
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
          v88 = [v14 textProperties];
          [v88 setColor:v87];

          [v14 setDirectionalLayoutMargins:{v78, v80, v82, v86}];
          v89 = [(ICOutlineParentCollectionViewCell *)self listContentView];
          [v89 setConfiguration:v14];

          v90 = [(ICOutlineParentCollectionViewCell *)self tagAllAction];
          v126[0] = v90;
          v91 = [(ICOutlineParentCollectionViewCell *)self tagAnyAction];
          v126[1] = v91;
          v92 = [NSArray arrayWithObjects:v126 count:2];
          v93 = [UIMenu menuWithChildren:v92];
          v94 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
          [v94 setMenu:v93];

          goto LABEL_37;
        }
      }
    }
  }

  v95 = [(ICOutlineParentCollectionViewCell *)self horizontalStackView];
  [v95 removeFromSuperview];

  [(ICOutlineParentCollectionViewCell *)self setHorizontalStackView:0];
  v96 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
  [v96 removeFromSuperview];

  [(ICOutlineParentCollectionViewCell *)self setTagOperatorButton:0];
  v97 = [(ICOutlineParentCollectionViewCell *)self listContentView];
  [v97 removeFromSuperview];

  [(ICOutlineParentCollectionViewCell *)self setListContentView:0];
  [(ICOutlineParentCollectionViewCell *)self horizontalInsetsOverride];
  v99 = v98;
  if ((v98 != 2.22507386e-308 || (v100 = 0.0, !-[ICOutlineParentCollectionViewCell isInsetGroupedList](self, "isInsetGroupedList")) && (-[ICOutlineParentCollectionViewCell traitCollection](self, "traitCollection"), v101 = objc_claimAutoreleasedReturnValue(), v102 = [v101 listEnvironment], v101, v102)) && (v100 = v99, v99 == 2.22507386e-308))
  {
    v107 = ICInternalSettingsAlignHeadersWithNavTitle();
    v109 = v5 != 1 || v7 != 2;
    if (v107 || !v109)
    {
      objc_opt_class();
      v110 = [(ICOutlineParentCollectionViewCell *)self superview];
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
  v2 = [(ICOutlineParentCollectionViewCell *)self traitCollection];
  v3 = [v2 listEnvironment] == 4;

  return v3;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICOutlineParentCollectionViewCell;
  [(ICOutlineParentCollectionViewCell *)&v4 applyLayoutAttributes:a3];
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
    v3 = [(ICOutlineParentCollectionViewCell *)self layer];
    [v3 setCornerRadius:0.0];
  }
}

- (id)accessibilityValue
{
  v2 = [(ICOutlineParentCollectionViewCell *)self activityIndicatorView];
  v3 = [v2 isAnimating];

  if (v3)
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
  v2 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];
  v3 = v2 != 0;

  return v3;
}

- (id)accessibilityHint
{
  v3 = [(ICOutlineParentCollectionViewCell *)self tagOperatorButton];

  if (v3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Double tap to modify selection" value:&stru_100661CF0 table:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICOutlineParentCollectionViewCell;
    v5 = [(ICOutlineParentCollectionViewCell *)&v7 accessibilityHint];
  }

  return v5;
}

- (void)updateSyncActivityIndicator
{
  if (-[ICOutlineParentCollectionViewCell isSyncActivityVisible](self, "isSyncActivityVisible") && (-[ICOutlineParentCollectionViewCell progressIndicatorTracker](self, "progressIndicatorTracker"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 progressIndicatorShouldAnimate], v3, v4))
  {
    v5 = [(ICOutlineParentCollectionViewCell *)self activityIndicatorView];
    [v5 startAnimating];
  }

  else
  {
    v5 = [(ICOutlineParentCollectionViewCell *)self activityIndicatorView];
    [v5 stopAnimating];
  }

  [(ICOutlineParentCollectionViewCell *)self updateAccessories];
}

@end