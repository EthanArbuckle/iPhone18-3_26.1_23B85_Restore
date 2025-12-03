@interface OfflineRegionSelectorViewController
- (CGSize)preferredContentSize;
- (OfflineRegionSelectorActionCoordination)delegate;
- (OfflineRegionSelectorViewController)init;
- (double)heightForLayout:(unint64_t)layout;
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
- (void)setState:(unint64_t)state;
- (void)viewDidLoad;
@end

@implementation OfflineRegionSelectorViewController

- (OfflineRegionSelectorActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)heightForLayout:(unint64_t)layout
{
  v3 = -1.0;
  if (layout == 5)
  {
    contentStackView = [(OfflineRegionSelectorViewController *)self contentStackView];
    contentView = [(ContaineeViewController *)self contentView];
    [contentView bounds];
    [contentStackView _maps_compressedSizeForWidth:0 withBlock:CGRectGetWidth(v16)];
    v8 = v7;

    [(NSLayoutConstraint *)self->_contentStackViewTopConstraint constant];
    v3 = v9 + v8 + kMUPlacePlatterPadding;
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    v12 = v11;

    if (v12 > 0.0)
    {
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController2 bottomSafeOffset];
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

  state = [(OfflineRegionSelectorViewController *)self state];
  v4 = 0;
  if (state <= 1)
  {
    if (!state)
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v16 = @"Calculating...";
LABEL_18:
      v18 = [v8 localizedStringForKey:v16 value:@"localized string not found" table:@"Offline"];
      sizeLabel = [(OfflineRegionSelectorViewController *)self sizeLabel];
      [sizeLabel setText:v18];

      downloadButton = [(OfflineRegionSelectorViewController *)self downloadButton];
      [downloadButton setEnabled:0];
      v4 = 0;
      goto LABEL_23;
    }

    if (state != 1)
    {
      goto LABEL_24;
    }

    traitCollection = [(OfflineRegionSelectorViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
    }

    else
    {
      traitCollection2 = [(OfflineRegionSelectorViewController *)self traitCollection];
      preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
      v22 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory2, UIContentSizeCategoryExtraExtraLarge);

      if (v22 != NSOrderedDescending)
      {
        v23 = +[NSBundle mainBundle];
        sizeLabel3 = [v23 localizedStringForKey:@"Size of selected map: %@" value:@"localized string not found" table:@"Offline"];
        v25 = [qword_10195E070 stringFromByteCount:self->_estimatedDiskSize];
        v26 = [NSString localizedStringWithFormat:sizeLabel3, v25];
        sizeLabel2 = [(OfflineRegionSelectorViewController *)self sizeLabel];
        [sizeLabel2 setText:v26];

        goto LABEL_22;
      }
    }

    v23 = [qword_10195E070 stringFromByteCount:self->_estimatedDiskSize];
    sizeLabel3 = [(OfflineRegionSelectorViewController *)self sizeLabel];
    [sizeLabel3 setText:v23];
LABEL_22:

    downloadButton = [(OfflineRegionSelectorViewController *)self downloadButton];
    v4 = 1;
    [downloadButton setEnabled:1];
    goto LABEL_23;
  }

  switch(state)
  {
    case 2:
      traitCollection3 = [(OfflineRegionSelectorViewController *)self traitCollection];
      preferredContentSizeCategory3 = [traitCollection3 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);

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
      downloadButton = [(OfflineRegionSelectorViewController *)self downloadButton];
      [downloadButton setEnabled:0];
      v4 = 1;
LABEL_23:

      break;
    case 4:
      traitCollection4 = [(OfflineRegionSelectorViewController *)self traitCollection];
      preferredContentSizeCategory4 = [traitCollection4 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory4);

      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"Network error: offline map not available";
      v11 = @"Network error";
      goto LABEL_13;
  }

LABEL_24:
  sizeLabel4 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  text = [sizeLabel4 text];
  sizeLabel5 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [sizeLabel5 setAccessibilityLabel:text];

  autoUpdateDisclaimerLabel = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
  if (autoUpdateDisclaimerLabel && (v32 = autoUpdateDisclaimerLabel, -[OfflineRegionSelectorViewController autoUpdateDisclaimerLabel](self, "autoUpdateDisclaimerLabel"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 isHidden], v33, v32, v4 == v34))
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
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController updateHeightForCurrentLayout];

    view = [(OfflineRegionSelectorViewController *)self view];
    [view layoutIfNeeded];
  }
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(OfflineRegionSelectorViewController *)self _updateForCurrentState];
  }
}

- (void)_download
{
  autoUpdateDisclaimerLabel = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];

  if (autoUpdateDisclaimerLabel)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setBool:1 forKey:@"OfflineMapsAutoUpdateDisclaimerDisplayed"];
  }

  delegate = [(OfflineRegionSelectorViewController *)self delegate];
  downloadSelectedOfflineRegion = [delegate downloadSelectedOfflineRegion];

  if (downloadSelectedOfflineRegion)
  {

    [(OfflineRegionSelectorViewController *)self setState:3];
  }
}

- (void)_cancel
{
  delegate = [(OfflineRegionSelectorViewController *)self delegate];
  [delegate closeOfflineRegionSelector];

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
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom)
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
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerViewController = [cardPresentationController containerViewController];
  view = [containerViewController view];
  window = [view window];
  [window bounds];
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
  cancelButton = [(OfflineRegionSelectorViewController *)self cancelButton];
  v33[0] = cancelButton;
  downloadButton = [(OfflineRegionSelectorViewController *)self downloadButton];
  v33[1] = downloadButton;
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

  traitCollection = [(OfflineRegionSelectorViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    reverseObjectEnumerator = [v6 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v6 = allObjects;
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
        buttonStackView = [(OfflineRegionSelectorViewController *)self buttonStackView];
        [buttonStackView addArrangedSubview:v21];

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
  traitCollection = [(OfflineRegionSelectorViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (id)_autoUpdateDisclaimerText
{
  traitCollection = [(OfflineRegionSelectorViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
  _autoUpdateDisclaimerText = [(OfflineRegionSelectorViewController *)self _autoUpdateDisclaimerText];
  autoUpdateDisclaimerLabel = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
  [autoUpdateDisclaimerLabel setText:_autoUpdateDisclaimerText];

  _preferredButtonStackOrientation = [(OfflineRegionSelectorViewController *)self _preferredButtonStackOrientation];
  buttonStackView = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [buttonStackView setAxis:_preferredButtonStackOrientation];

  [(OfflineRegionSelectorViewController *)self _addButtonsToStackView];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController updateHeightForCurrentLayout];
}

- (void)_setupConstraints
{
  sizeLabel = [(OfflineRegionSelectorViewController *)self sizeLabel];
  widthAnchor = [sizeLabel widthAnchor];
  v30 = [widthAnchor constraintEqualToConstant:400.0];

  LODWORD(v5) = 1144750080;
  [v30 setPriority:v5];
  buttonStackView = [(OfflineRegionSelectorViewController *)self buttonStackView];
  widthAnchor2 = [buttonStackView widthAnchor];
  v8 = [widthAnchor2 constraintEqualToConstant:400.0];

  LODWORD(v9) = 1144750080;
  [v8 setPriority:v9];
  contentStackView = [(OfflineRegionSelectorViewController *)self contentStackView];
  contentView = [(ContaineeViewController *)self contentView];
  LODWORD(v12) = 1148846080;
  v13 = [contentStackView _maps_constraintsEqualToEdgesOfView:contentView insets:kMUPlacePlatterPadding priority:{kMUPlacePlatterPadding, 0.0, kMUPlacePlatterPadding, v12}];

  topConstraint = [v13 topConstraint];
  contentStackViewTopConstraint = self->_contentStackViewTopConstraint;
  self->_contentStackViewTopConstraint = topConstraint;

  headerView = [(ContaineeViewController *)self headerView];
  heightAnchor = [headerView heightAnchor];
  v18 = [heightAnchor constraintEqualToConstant:0.0];
  v19 = self->_contentStackViewTopConstraint;
  v32[0] = v18;
  v32[1] = v19;
  leadingConstraint = [v13 leadingConstraint];
  v32[2] = leadingConstraint;
  trailingConstraint = [v13 trailingConstraint];
  v32[3] = trailingConstraint;
  v32[4] = v30;
  v32[5] = v8;
  v22 = [NSArray arrayWithObjects:v32 count:6];
  v23 = [v22 mutableCopy];

  autoUpdateDisclaimerLabel = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];

  if (autoUpdateDisclaimerLabel)
  {
    autoUpdateDisclaimerLabel2 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
    widthAnchor3 = [autoUpdateDisclaimerLabel2 widthAnchor];
    v27 = [widthAnchor3 constraintEqualToConstant:400.0];

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
  view = [(OfflineRegionSelectorViewController *)self view];
  [view setBackgroundColor:v3];

  contentView = [(ContaineeViewController *)self contentView];
  [contentView setAccessibilityIdentifier:@"RegionSelectorContentView"];

  v6 = [UIStackView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(OfflineRegionSelectorViewController *)self setContentStackView:v10];

  contentStackView = [(OfflineRegionSelectorViewController *)self contentStackView];
  [contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentStackView2 = [(OfflineRegionSelectorViewController *)self contentStackView];
  [contentStackView2 setAlignment:3];

  contentStackView3 = [(OfflineRegionSelectorViewController *)self contentStackView];
  [contentStackView3 setClipsToBounds:1];

  contentStackView4 = [(OfflineRegionSelectorViewController *)self contentStackView];
  [contentStackView4 setAxis:1];

  contentStackView5 = [(OfflineRegionSelectorViewController *)self contentStackView];
  [contentStackView5 setDistribution:0];

  contentStackView6 = [(OfflineRegionSelectorViewController *)self contentStackView];
  LODWORD(v17) = 1148846080;
  [contentStackView6 setContentHuggingPriority:1 forAxis:v17];

  contentStackView7 = [(OfflineRegionSelectorViewController *)self contentStackView];
  LODWORD(v19) = 1148846080;
  [contentStackView7 setContentCompressionResistancePriority:1 forAxis:v19];

  contentView2 = [(ContaineeViewController *)self contentView];
  contentStackView8 = [(OfflineRegionSelectorViewController *)self contentStackView];
  [contentView2 addSubview:contentStackView8];

  v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(OfflineRegionSelectorViewController *)self setSizeLabel:v22];

  sizeLabel = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [sizeLabel setTextAlignment:1];

  v24 = +[UIColor secondaryLabelColor];
  sizeLabel2 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [sizeLabel2 setTextColor:v24];

  sizeLabel3 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [sizeLabel3 setNumberOfLines:0];

  sizeLabel4 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [sizeLabel4 setAccessibilityIdentifier:@"Size"];

  sizeLabel5 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  LODWORD(v29) = 1148846080;
  [sizeLabel5 setContentHuggingPriority:1 forAxis:v29];

  sizeLabel6 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  LODWORD(v31) = 1132068864;
  [sizeLabel6 setContentCompressionResistancePriority:0 forAxis:v31];

  sizeLabel7 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  LODWORD(v33) = 1148846080;
  [sizeLabel7 setContentCompressionResistancePriority:1 forAxis:v33];

  sizeLabel8 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [DynamicTypeWizard autorefreshLabel:sizeLabel8 withFontProvider:&stru_101631408];

  contentStackView9 = [(OfflineRegionSelectorViewController *)self contentStackView];
  sizeLabel9 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [contentStackView9 addArrangedSubview:sizeLabel9];

  contentStackView10 = [(OfflineRegionSelectorViewController *)self contentStackView];
  sizeLabel10 = [(OfflineRegionSelectorViewController *)self sizeLabel];
  [contentStackView10 setCustomSpacing:sizeLabel10 afterView:12.0];

  if (GEOConfigGetBOOL())
  {
    v39 = +[NSUserDefaults standardUserDefaults];
    v40 = [v39 BOOLForKey:@"OfflineMapsAutoUpdateDisclaimerDisplayed"];

    if ((v40 & 1) == 0)
    {
      v41 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      [(OfflineRegionSelectorViewController *)self setAutoUpdateDisclaimerLabel:v41];

      autoUpdateDisclaimerLabel = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [autoUpdateDisclaimerLabel setTextAlignment:1];

      v43 = +[UIColor secondaryLabelColor];
      autoUpdateDisclaimerLabel2 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [autoUpdateDisclaimerLabel2 setTextColor:v43];

      autoUpdateDisclaimerLabel3 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [autoUpdateDisclaimerLabel3 setNumberOfLines:0];

      _autoUpdateDisclaimerText = [(OfflineRegionSelectorViewController *)self _autoUpdateDisclaimerText];
      autoUpdateDisclaimerLabel4 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [autoUpdateDisclaimerLabel4 setText:_autoUpdateDisclaimerText];

      autoUpdateDisclaimerLabel5 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      LODWORD(v49) = 1148846080;
      [autoUpdateDisclaimerLabel5 setContentHuggingPriority:1 forAxis:v49];

      autoUpdateDisclaimerLabel6 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      LODWORD(v51) = 1132068864;
      [autoUpdateDisclaimerLabel6 setContentCompressionResistancePriority:0 forAxis:v51];

      autoUpdateDisclaimerLabel7 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      LODWORD(v53) = 1148846080;
      [autoUpdateDisclaimerLabel7 setContentCompressionResistancePriority:1 forAxis:v53];

      autoUpdateDisclaimerLabel8 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [DynamicTypeWizard autorefreshLabel:autoUpdateDisclaimerLabel8 withFontProvider:&stru_101631408];

      autoUpdateDisclaimerLabel9 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [autoUpdateDisclaimerLabel9 setAccessibilityIdentifier:@"AutoUpdateDisclaimer"];

      autoUpdateDisclaimerLabel10 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [autoUpdateDisclaimerLabel10 setAlpha:0.0];

      autoUpdateDisclaimerLabel11 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [autoUpdateDisclaimerLabel11 setHidden:1];

      contentStackView11 = [(OfflineRegionSelectorViewController *)self contentStackView];
      autoUpdateDisclaimerLabel12 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [contentStackView11 addArrangedSubview:autoUpdateDisclaimerLabel12];

      contentStackView12 = [(OfflineRegionSelectorViewController *)self contentStackView];
      autoUpdateDisclaimerLabel13 = [(OfflineRegionSelectorViewController *)self autoUpdateDisclaimerLabel];
      [contentStackView12 setCustomSpacing:autoUpdateDisclaimerLabel13 afterView:12.0];
    }
  }

  v62 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(OfflineRegionSelectorViewController *)self setButtonStackView:v62];

  _preferredButtonStackOrientation = [(OfflineRegionSelectorViewController *)self _preferredButtonStackOrientation];
  buttonStackView = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [buttonStackView setAxis:_preferredButtonStackOrientation];

  buttonStackView2 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [buttonStackView2 setDistribution:1];

  buttonStackView3 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [buttonStackView3 setAlignment:0];

  kMUPlaceHorizontalStackSpacing();
  v68 = v67;
  buttonStackView4 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [buttonStackView4 setSpacing:v68];

  buttonStackView5 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [buttonStackView5 setAccessibilityIdentifier:@"ButtonStackView"];

  buttonStackView6 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  LODWORD(v72) = 1148846080;
  [buttonStackView6 setContentHuggingPriority:1 forAxis:v72];

  buttonStackView7 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  LODWORD(v74) = 1148846080;
  [buttonStackView7 setContentCompressionResistancePriority:1 forAxis:v74];

  contentStackView13 = [(OfflineRegionSelectorViewController *)self contentStackView];
  buttonStackView8 = [(OfflineRegionSelectorViewController *)self buttonStackView];
  [contentStackView13 addArrangedSubview:buttonStackView8];

  v100 = +[UIButtonConfiguration _maps_secondaryCardFooterActionButtonConfiguration];
  v77 = +[NSBundle mainBundle];
  v78 = [v77 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
  [v100 setTitle:v78];

  v79 = [UIButton buttonWithConfiguration:v100 primaryAction:0];
  [(OfflineRegionSelectorViewController *)self setCancelButton:v79];

  cancelButton = [(OfflineRegionSelectorViewController *)self cancelButton];
  [cancelButton addTarget:self action:"_cancel" forControlEvents:0x2000];

  cancelButton2 = [(OfflineRegionSelectorViewController *)self cancelButton];
  [cancelButton2 setAccessibilityIdentifier:@"Cancel"];

  title = [v100 title];
  cancelButton3 = [(OfflineRegionSelectorViewController *)self cancelButton];
  [cancelButton3 setAccessibilityLabel:title];

  cancelButton4 = [(OfflineRegionSelectorViewController *)self cancelButton];
  LODWORD(v85) = 1148846080;
  [cancelButton4 setContentHuggingPriority:1 forAxis:v85];

  cancelButton5 = [(OfflineRegionSelectorViewController *)self cancelButton];
  LODWORD(v87) = 1148846080;
  [cancelButton5 setContentCompressionResistancePriority:1 forAxis:v87];

  v88 = +[UIButtonConfiguration _maps_primaryCardFooterActionButtonConfiguration];
  v89 = +[NSBundle mainBundle];
  v90 = [v89 localizedStringForKey:@"Download [button title]" value:@"localized string not found" table:@"Offline"];
  [v88 setTitle:v90];

  v91 = [UIButton buttonWithConfiguration:v88 primaryAction:0];
  [(OfflineRegionSelectorViewController *)self setDownloadButton:v91];

  downloadButton = [(OfflineRegionSelectorViewController *)self downloadButton];
  [downloadButton setAccessibilityIdentifier:@"Download"];

  title2 = [v88 title];
  downloadButton2 = [(OfflineRegionSelectorViewController *)self downloadButton];
  [downloadButton2 setAccessibilityLabel:title2];

  downloadButton3 = [(OfflineRegionSelectorViewController *)self downloadButton];
  [downloadButton3 addTarget:self action:"_download" forControlEvents:0x2000];

  downloadButton4 = [(OfflineRegionSelectorViewController *)self downloadButton];
  LODWORD(v97) = 1148846080;
  [downloadButton4 setContentHuggingPriority:1 forAxis:v97];

  downloadButton5 = [(OfflineRegionSelectorViewController *)self downloadButton];
  LODWORD(v99) = 1148846080;
  [downloadButton5 setContentCompressionResistancePriority:1 forAxis:v99];

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
    cardPresentationController = [(ContaineeViewController *)v2 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:0];

    cardPresentationController3 = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController3 setTakesAvailableWidth:1];

    cardPresentationController4 = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController4 setAllowsSwipeToDismiss:0];

    cardPresentationController5 = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController5 setHideGrabber:1];

    cardPresentationController6 = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController6 setDefaultContaineeLayout:5];

    cardPresentationController7 = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController7 setEdgeAttachedRegularHeightDimmingBehavior:1];

    cardPresentationController8 = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController8 setShouldHidePreviousCards:1];
  }

  return v3;
}

@end