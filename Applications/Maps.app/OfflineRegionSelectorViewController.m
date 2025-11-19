@interface OfflineRegionSelectorViewController
- (CGSize)preferredContentSize;
- (OfflineRegionSelectorActionCoordination)delegate;
- (OfflineRegionSelectorViewController)init;
- (double)heightForLayout:(unint64_t)a3;
- (id)_autoUpdateDisclaimerText;
- (int64_t)_preferredButtonStackOrientation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addButtonsToStackView;
- (void)_cancel;
- (void)_download;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateForCurrentState;
- (void)_updateLayoutForAX;
- (void)setState:(unint64_t)a3;
- (void)viewDidLoad;
@end

@implementation OfflineRegionSelectorViewController

- (OfflineRegionSelectorActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)heightForLayout:(unint64_t)a3
{
  v3 = -1.0;
  if (a3 == 5)
  {
    v5 = [(OfflineRegionSelectorViewController *)self contentStackView];
    v6 = [(ContaineeViewController *)self contentView];
    [v6 bounds];
    [v5 _maps_compressedSizeForWidth:0 withBlock:CGRectGetWidth(v16)];
    v8 = v7;

    [(NSLayoutConstraint *)self->_contentStackViewTopConstraint constant];
    v3 = v9 + v8 + kMUPlacePlatterPadding;
    v10 = [(ContaineeViewController *)self cardPresentationController];
    [v10 bottomSafeOffset];
    v12 = v11;

    if (v12 > 0.0)
    {
      v13 = [(ContaineeViewController *)self cardPresentationController];
      [v13 bottomSafeOffset];
      v3 = v3 + v14 + 2.0;
    }
  }

  return v3;
}

- (void)_updateForCurrentState
{
  if (qword_10195E078 != -1)
  {
    dispatch_once(&qword_10195E078, &stru_101631428);
  }

  v3 = [(OfflineRegionSelectorViewController *)self state];
  v4 = 0;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v16 = @"Calculating...";
LABEL_18:
      v18 = [v8 localizedStringForKey:v16 value:@"localized string not found" table:@"Offline"];
      v19 = [(OfflineRegionSelectorViewController *)self sizeLabel];
      [v19 setText:v18];

      v17 = [(OfflineRegionSelectorViewController *)self downloadButton];
      [v17 setEnabled:0];
      v4 = 0;
      goto LABEL_23;
    }

    if (v3 != 1)
    {
      goto LABEL_24;
    }

    v12 = [(OfflineRegionSelectorViewController *)self traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(v13))
    {
    }

    else
    {
      v20 = [(OfflineRegionSelectorViewController *)self traitCollection];
      v21 = [v20 preferredContentSizeCategory];
      v22 = UIContentSizeCategoryCompareToCategory(v21, UIContentSizeCategoryExtraExtraLarge);

      if (v22 != NSOrderedDescending)
      {
        v23 = +[NSBundle mainBundle];
        v24 = [v23 localizedStringForKey:@"Size of selected map: %@" value:@"localized string not found" table:@"Offline"];
        v25 = [qword_10195E070 stringFromByteCount:self->_estimatedDiskSize];
        v26 = [NSString localizedStringWithFormat:v24, v25];
        v27 = [(OfflineRegionSelectorViewController *)self sizeLabel];
        [v27 setText:v26];

        goto LABEL_22;
      }
    }

    v23 = [qword_10195E070 stringFromByteCount:self->_estimatedDiskSize];
    v24 = [(OfflineRegionSelectorViewController *)self sizeLabel];
    [v24 setText:v23];
LABEL_22:

    v17 = [(OfflineRegionSelectorViewController *)self downloadButton];
    v4 = 1;
    [v17 setEnabled:1];
    goto LABEL_23;
  }

  switch(v3)
  {
    case 2:
      v14 = [(OfflineRegionSelectorViewController *)self traitCollection];
      v15 = [v14 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v15);

      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"Offline maps aren’t available in this region yet";
      v11 = @"Offline maps unavailable";
LABEL_13:
      if (IsAccessibilityCategory)
      {
        v16 = v11;
      }

      else
      {
        v16 = v10;
      }

      goto LABEL_18;
    case 3:
      v17 = [(OfflineRegionSelectorViewController *)self downloadButton];
      [v17 setEnabled:0];
      v4 = 1;
LABEL_23:

      break;
    case 4:
      v5 = [(OfflineRegionSelectorViewController *)self traitCollection];
      v6 = [v5 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"Network error: offline map not available";
      v11 = @"Network error";
      goto LABEL_13;
  }

LABEL_24:
  v28 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  v29 = [v28 text];
  v30 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [v30 setAccessibilityLabel:v29];

  v31 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
  if (v31 && (v32 = v31, -[OfflineRegionSelectorViewController autoUpdateDisclaimerLabel](self, "autoUpdateDisclaimerLabel"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 isHidden], v33, v32, v4 == v34))
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1009D4F88;
    v37[3] = &unk_101661AE0;
    v38 = v4;
    v37[4] = self;
    [UIView animateWithDuration:v37 animations:0 completion:0.25];
  }

  else
  {
    v35 = [(ContaineeViewController *)self cardPresentationController];
    [v35 updateHeightForCurrentLayout];

    v36 = [(OfflineRegionSelectorViewController *)self view];
    [v36 layoutIfNeeded];
  }
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(OfflineRegionSelectorViewController *)self _updateForCurrentState];
  }
}

- (void)_download
{
  v3 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];

  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setBool:1 forKey:@"OfflineMapsAutoUpdateDisclaimerDisplayed"];
  }

  v5 = [(OfflineRegionSelectorViewController *)self delegate];
  v6 = [v5 downloadSelectedOfflineRegion];

  if (v6)
  {

    [(OfflineRegionSelectorViewController *)self setState:3];
  }
}

- (void)_cancel
{
  v3 = [(OfflineRegionSelectorViewController *)self delegate];
  [v3 closeOfflineRegionSelector];

  if ([(OfflineRegionSelectorViewController *)self downloadable])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [GEOAPPortal captureUserAction:18 target:89 value:v4];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (CGSize)preferredContentSize
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  v4 = [v3 containerViewController];
  v5 = [v4 view];
  v6 = [v5 window];
  [v6 bounds];
  v8 = v7;

  [(OfflineRegionSelectorViewController *)self heightForLayout:5];
  v10 = v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)_addButtonsToStackView
{
  v3 = [(OfflineRegionSelectorViewController *)self cancelButton];
  v33[0] = v3;
  v4 = [(OfflineRegionSelectorViewController *)self downloadButton];
  v33[1] = v4;
  v5 = [NSArray arrayWithObjects:v33 count:2];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v27 + 1) + 8 * v10) removeFromSuperview];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v11 = [(OfflineRegionSelectorViewController *)self traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

  if (IsAccessibilityCategory)
  {
    v14 = [v6 reverseObjectEnumerator];
    v15 = [v14 allObjects];

    v6 = v15;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * v20);
        v22 = [(OfflineRegionSelectorViewController *)self buttonStackView];
        [v22 addArrangedSubview:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }
}

- (int64_t)_preferredButtonStackOrientation
{
  v2 = [(OfflineRegionSelectorViewController *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  return IsAccessibilityCategory;
}

- (id)_autoUpdateDisclaimerText
{
  v2 = [(OfflineRegionSelectorViewController *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (IsAccessibilityCategory)
  {
    v7 = @"OFFLINE_REGION_SELECTOR_AUTO_UPDATES_DISCLAIMER_AX";
  }

  else
  {
    v7 = @"OFFLINE_REGION_SELECTOR_AUTO_UPDATES_DISCLAIMER";
  }

  v8 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:@"Offline"];

  return v8;
}

- (void)_updateLayoutForAX
{
  [(OfflineRegionSelectorViewController *)self _updateForCurrentState];
  v3 = [(OfflineRegionSelectorViewController *)self _autoUpdateDisclaimerText];
  v4 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
  [v4 setText:v3];

  v5 = [(OfflineRegionSelectorViewController *)self _preferredButtonStackOrientation];
  v6 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [v6 setAxis:v5];

  [(OfflineRegionSelectorViewController *)self _addButtonsToStackView];
  v7 = [(ContaineeViewController *)self cardPresentationController];
  [v7 updateHeightForCurrentLayout];
}

- (void)_setupConstraints
{
  v3 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  v4 = [v3 widthAnchor];
  v30 = [v4 constraintEqualToConstant:400.0];

  LODWORD(v5) = 1144750080;
  [v30 setPriority:v5];
  v6 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  v7 = [v6 widthAnchor];
  v8 = [v7 constraintEqualToConstant:400.0];

  LODWORD(v9) = 1144750080;
  [v8 setPriority:v9];
  v10 = [(OfflineRegionSelectorViewController *)self contentStackView];
  v11 = [(ContaineeViewController *)self contentView];
  LODWORD(v12) = 1148846080;
  v13 = [v10 _maps_constraintsEqualToEdgesOfView:v11 insets:kMUPlacePlatterPadding priority:{kMUPlacePlatterPadding, 0.0, kMUPlacePlatterPadding, v12}];

  v14 = [v13 topConstraint];
  contentStackViewTopConstraint = self->_contentStackViewTopConstraint;
  self->_contentStackViewTopConstraint = v14;

  v16 = [(ContaineeViewController *)self headerView];
  v17 = [v16 heightAnchor];
  v18 = [v17 constraintEqualToConstant:0.0];
  v19 = self->_contentStackViewTopConstraint;
  v32[0] = v18;
  v32[1] = v19;
  v20 = [v13 leadingConstraint];
  v32[2] = v20;
  v21 = [v13 trailingConstraint];
  v32[3] = v21;
  v32[4] = v30;
  v32[5] = v8;
  v22 = [NSArray arrayWithObjects:v32 count:6];
  v23 = [v22 mutableCopy];

  v24 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];

  if (v24)
  {
    v25 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
    v26 = [v25 widthAnchor];
    v27 = [v26 constraintEqualToConstant:400.0];

    LODWORD(v28) = 1144750080;
    [v27 setPriority:v28];
    v31 = v27;
    v29 = [NSArray arrayWithObjects:&v31 count:1];
    [v23 addObjectsFromArray:v29];
  }

  [NSLayoutConstraint activateConstraints:v23];
}

- (void)_setupViews
{
  v3 = +[UIColor clearColor];
  v4 = [(OfflineRegionSelectorViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(ContaineeViewController *)self contentView];
  [v5 setAccessibilityIdentifier:@"RegionSelectorContentView"];

  v6 = [UIStackView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(OfflineRegionSelectorViewController *)self setContentStackView:v10];

  v11 = [(OfflineRegionSelectorViewController *)self contentStackView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(OfflineRegionSelectorViewController *)self contentStackView];
  [v12 setAlignment:3];

  v13 = [(OfflineRegionSelectorViewController *)self contentStackView];
  [v13 setClipsToBounds:1];

  v14 = [(OfflineRegionSelectorViewController *)self contentStackView];
  [v14 setAxis:1];

  v15 = [(OfflineRegionSelectorViewController *)self contentStackView];
  [v15 setDistribution:0];

  v16 = [(OfflineRegionSelectorViewController *)self contentStackView];
  LODWORD(v17) = 1148846080;
  [v16 setContentHuggingPriority:1 forAxis:v17];

  v18 = [(OfflineRegionSelectorViewController *)self contentStackView];
  LODWORD(v19) = 1148846080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v19];

  v20 = [(ContaineeViewController *)self contentView];
  v21 = [(OfflineRegionSelectorViewController *)self contentStackView];
  [v20 addSubview:v21];

  v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(OfflineRegionSelectorViewController *)self setSizeLabel:v22];

  v23 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [v23 setTextAlignment:1];

  v24 = +[UIColor secondaryLabelColor];
  v25 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [v25 setTextColor:v24];

  v26 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [v26 setNumberOfLines:0];

  v27 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [v27 setAccessibilityIdentifier:@"Size"];

  v28 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  LODWORD(v29) = 1148846080;
  [v28 setContentHuggingPriority:1 forAxis:v29];

  v30 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  LODWORD(v31) = 1132068864;
  [v30 setContentCompressionResistancePriority:0 forAxis:v31];

  v32 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  LODWORD(v33) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];

  v34 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [DynamicTypeWizard autorefreshLabel:v34 withFontProvider:&stru_101631408];

  v35 = [(OfflineRegionSelectorViewController *)self contentStackView];
  v36 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [v35 addArrangedSubview:v36];

  v37 = [(OfflineRegionSelectorViewController *)self contentStackView];
  v38 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [v37 setCustomSpacing:v38 afterView:12.0];

  if (GEOConfigGetBOOL())
  {
    v39 = +[NSUserDefaults standardUserDefaults];
    v40 = [v39 BOOLForKey:@"OfflineMapsAutoUpdateDisclaimerDisplayed"];

    if ((v40 & 1) == 0)
    {
      v41 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      [(OfflineRegionSelectorViewController *)self setAutoUpdateDisclaimerLabel:v41];

      v42 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [v42 setTextAlignment:1];

      v43 = +[UIColor secondaryLabelColor];
      v44 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [v44 setTextColor:v43];

      v45 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [v45 setNumberOfLines:0];

      v46 = [(OfflineRegionSelectorViewController *)self _autoUpdateDisclaimerText];
      v47 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [v47 setText:v46];

      v48 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      LODWORD(v49) = 1148846080;
      [v48 setContentHuggingPriority:1 forAxis:v49];

      v50 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      LODWORD(v51) = 1132068864;
      [v50 setContentCompressionResistancePriority:0 forAxis:v51];

      v52 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      LODWORD(v53) = 1148846080;
      [v52 setContentCompressionResistancePriority:1 forAxis:v53];

      v54 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [DynamicTypeWizard autorefreshLabel:v54 withFontProvider:&stru_101631408];

      v55 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [v55 setAccessibilityIdentifier:@"AutoUpdateDisclaimer"];

      v56 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [v56 setAlpha:0.0];

      v57 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [v57 setHidden:1];

      v58 = [(OfflineRegionSelectorViewController *)self contentStackView];
      v59 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [v58 addArrangedSubview:v59];

      v60 = [(OfflineRegionSelectorViewController *)self contentStackView];
      v61 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [v60 setCustomSpacing:v61 afterView:12.0];
    }
  }

  v62 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(OfflineRegionSelectorViewController *)self setButtonStackView:v62];

  v63 = [(OfflineRegionSelectorViewController *)self _preferredButtonStackOrientation];
  v64 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [v64 setAxis:v63];

  v65 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [v65 setDistribution:1];

  v66 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [v66 setAlignment:0];

  kMUPlaceHorizontalStackSpacing();
  v68 = v67;
  v69 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [v69 setSpacing:v68];

  v70 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [v70 setAccessibilityIdentifier:@"ButtonStackView"];

  v71 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  LODWORD(v72) = 1148846080;
  [v71 setContentHuggingPriority:1 forAxis:v72];

  v73 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  LODWORD(v74) = 1148846080;
  [v73 setContentCompressionResistancePriority:1 forAxis:v74];

  v75 = [(OfflineRegionSelectorViewController *)self contentStackView];
  v76 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [v75 addArrangedSubview:v76];

  v100 = +[UIButtonConfiguration _maps_secondaryCardFooterActionButtonConfiguration];
  v77 = +[NSBundle mainBundle];
  v78 = [v77 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
  [v100 setTitle:v78];

  v79 = [UIButton buttonWithConfiguration:v100 primaryAction:0];
  [(OfflineRegionSelectorViewController *)self setCancelButton:v79];

  v80 = [(OfflineRegionSelectorViewController *)self cancelButton];
  [v80 addTarget:self action:"_cancel" forControlEvents:0x2000];

  v81 = [(OfflineRegionSelectorViewController *)self cancelButton];
  [v81 setAccessibilityIdentifier:@"Cancel"];

  v82 = [v100 title];
  v83 = [(OfflineRegionSelectorViewController *)self cancelButton];
  [v83 setAccessibilityLabel:v82];

  v84 = [(OfflineRegionSelectorViewController *)self cancelButton];
  LODWORD(v85) = 1148846080;
  [v84 setContentHuggingPriority:1 forAxis:v85];

  v86 = [(OfflineRegionSelectorViewController *)self cancelButton];
  LODWORD(v87) = 1148846080;
  [v86 setContentCompressionResistancePriority:1 forAxis:v87];

  v88 = +[UIButtonConfiguration _maps_primaryCardFooterActionButtonConfiguration];
  v89 = +[NSBundle mainBundle];
  v90 = [v89 localizedStringForKey:@"Download [button title]" value:@"localized string not found" table:@"Offline"];
  [v88 setTitle:v90];

  v91 = [UIButton buttonWithConfiguration:v88 primaryAction:0];
  [(OfflineRegionSelectorViewController *)self setDownloadButton:v91];

  v92 = [(OfflineRegionSelectorViewController *)self downloadButton];
  [v92 setAccessibilityIdentifier:@"Download"];

  v93 = [v88 title];
  v94 = [(OfflineRegionSelectorViewController *)self downloadButton];
  [v94 setAccessibilityLabel:v93];

  v95 = [(OfflineRegionSelectorViewController *)self downloadButton];
  [v95 addTarget:self action:"_download" forControlEvents:0x2000];

  v96 = [(OfflineRegionSelectorViewController *)self downloadButton];
  LODWORD(v97) = 1148846080;
  [v96 setContentHuggingPriority:1 forAxis:v97];

  v98 = [(OfflineRegionSelectorViewController *)self downloadButton];
  LODWORD(v99) = 1148846080;
  [v98 setContentCompressionResistancePriority:1 forAxis:v99];

  [(OfflineRegionSelectorViewController *)self _addButtonsToStackView];
  [(OfflineRegionSelectorViewController *)self _updateForCurrentState];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = OfflineRegionSelectorViewController;
  [(ContaineeViewController *)&v6 viewDidLoad];
  [(OfflineRegionSelectorViewController *)self _setupViews];
  [(OfflineRegionSelectorViewController *)self _setupConstraints];
  v3 = objc_opt_self();
  v7 = v3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [(OfflineRegionSelectorViewController *)self registerForTraitChanges:v4 withAction:"_updateLayoutForAX"];
}

- (OfflineRegionSelectorViewController)init
{
  v13.receiver = self;
  v13.super_class = OfflineRegionSelectorViewController;
  v2 = [(OfflineRegionSelectorViewController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(ContaineeViewController *)v2 cardPresentationController];
    [v4 setPresentedModally:1];

    v5 = [(ContaineeViewController *)v3 cardPresentationController];
    [v5 setTakesAvailableHeight:0];

    v6 = [(ContaineeViewController *)v3 cardPresentationController];
    [v6 setTakesAvailableWidth:1];

    v7 = [(ContaineeViewController *)v3 cardPresentationController];
    [v7 setAllowsSwipeToDismiss:0];

    v8 = [(ContaineeViewController *)v3 cardPresentationController];
    [v8 setHideGrabber:1];

    v9 = [(ContaineeViewController *)v3 cardPresentationController];
    [v9 setDefaultContaineeLayout:5];

    v10 = [(ContaineeViewController *)v3 cardPresentationController];
    [v10 setEdgeAttachedRegularHeightDimmingBehavior:1];

    v11 = [(ContaineeViewController *)v3 cardPresentationController];
    [v11 setShouldHidePreviousCards:1];
  }

  return v3;
}

@end