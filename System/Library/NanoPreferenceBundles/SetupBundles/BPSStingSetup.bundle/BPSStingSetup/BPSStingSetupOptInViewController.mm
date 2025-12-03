@interface BPSStingSetupOptInViewController
+ (id)animationFileURLForIdentifier:(id)identifier;
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (BPSStingSetupOptInViewController)init;
- (id)alternateButtonTitle;
- (id)animationViewForIdentifier:(id)identifier;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_applyScale;
- (void)alternateButtonPressed:(id)pressed;
- (void)applyAnimationLayoutContraints;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)selectionChanged:(id)changed;
- (void)setupViews;
- (void)suggestedButtonPressed:(id)pressed;
- (void)updateLocalViewSize;
- (void)viewDidLayoutSubviews;
@end

@implementation BPSStingSetupOptInViewController

- (BPSStingSetupOptInViewController)init
{
  v5.receiver = self;
  v5.super_class = BPSStingSetupOptInViewController;
  v2 = [(BPSStingSetupOptInViewController *)&v5 initWithTitle:&stru_C620 detailText:0 icon:0 contentLayout:3];
  v3 = v2;
  if (v2)
  {
    [(BPSStingSetupOptInViewController *)v2 setStyle:10];
  }

  return v3;
}

- (void)setupViews
{
  suggestedChoiceButton = [(BPSStingSetupOptInViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton setEnabled:0];

  v4 = [UIView alloc];
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;
  [(BPSStingSetupOptInViewController *)self availableContentViewHeight];
  v9 = [v4 initWithFrame:{0.0, 0.0, v7, v8}];
  localContentView = self->_localContentView;
  self->_localContentView = v9;

  contentView = [(BPSStingSetupOptInViewController *)self contentView];
  [contentView addSubview:self->_localContentView];

  if (!self->_collectionView)
  {
    v12 = [[BPSStingFeatureCollectionView alloc] initWithFrame:0.0, 0.0, 0.0, 0.0];
    collectionView = self->_collectionView;
    self->_collectionView = v12;

    [(BPSStingFeatureCollectionView *)self->_collectionView setSelectionChangeDelegate:self];
    [(BPSStingFeatureCollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    localContentView = [(BPSStingSetupOptInViewController *)self localContentView];
    [localContentView addSubview:self->_collectionView];

    collectionView = [(BPSStingSetupOptInViewController *)self collectionView];
    [collectionView addObserver:self forKeyPath:@"contentSize" options:2 context:0];
  }

  if (!self->_collectionViewHeightConstraint)
  {
    heightAnchor = [(BPSStingFeatureCollectionView *)self->_collectionView heightAnchor];
    v17 = [heightAnchor constraintEqualToConstant:106.0];
    collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
    self->_collectionViewHeightConstraint = v17;
  }

  watchViewBottomConstraint = [(BPSStingSetupOptInViewController *)self watchViewBottomConstraint];
  [watchViewBottomConstraint setActive:0];

  [(NSLayoutConstraint *)self->_collectionViewHeightConstraint setActive:1];
  v20 = [(BPSStingSetupOptInViewController *)self animationViewForIdentifier:0];
  animationView = self->_animationView;
  self->_animationView = v20;

  localContentView2 = [(BPSStingSetupOptInViewController *)self localContentView];
  [localContentView2 addSubview:self->_animationView];

  leadingAnchor = [(BPSStingFeatureCollectionView *)self->_collectionView leadingAnchor];
  view = [(BPSStingSetupOptInViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v45[0] = v41;
  trailingAnchor = [(BPSStingFeatureCollectionView *)self->_collectionView trailingAnchor];
  view2 = [(BPSStingSetupOptInViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v45[1] = v25;
  bottomAnchor = [(BPSStingFeatureCollectionView *)self->_collectionView bottomAnchor];
  contentView2 = [(BPSStingSetupOptInViewController *)self contentView];
  bottomAnchor2 = [contentView2 bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v45[2] = v29;
  v30 = [NSArray arrayWithObjects:v45 count:3];
  [NSLayoutConstraint activateConstraints:v30];

  [(BPSStingFeatureCollectionView *)self->_collectionView contentInset];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  view3 = [(BPSStingSetupOptInViewController *)self view];
  [view3 directionalLayoutMargins];
  v39 = v38;

  [(BPSStingFeatureCollectionView *)self->_collectionView setContentInset:v32, v39, v34, v36];
  [(BPSStingFeatureCollectionView *)self->_collectionView reloadData];
  [(BPSStingSetupOptInViewController *)self setDoneSettingUpViews:1];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = BPSStingSetupOptInViewController;
  [(BPSStingSetupOptInViewController *)&v8 viewDidLayoutSubviews];
  view = [(BPSStingSetupOptInViewController *)self view];
  [view safeAreaInsets];
  if (v4 == 0.0)
  {
  }

  else
  {
    doneSettingUpViews = [(BPSStingSetupOptInViewController *)self doneSettingUpViews];

    if ((doneSettingUpViews & 1) == 0)
    {
      v6 = bps_setup_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Safe insets are set, can now setup views", v7, 2u);
      }

      [(BPSStingSetupOptInViewController *)self setupViews];
      [(BPSStingSetupOptInViewController *)self applyAnimationLayoutContraints];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  [(NSLayoutConstraint *)self->_collectionViewHeightConstraint constant:path];
  v8 = v7;
  collectionView = [(BPSStingSetupOptInViewController *)self collectionView];
  [collectionView preferredCellHeight];
  v11 = v10;

  if (v8 != v11)
  {
    collectionView2 = [(BPSStingSetupOptInViewController *)self collectionView];
    [collectionView2 preferredCellHeight];
    [(NSLayoutConstraint *)self->_collectionViewHeightConstraint setConstant:?];

    [(BPSStingSetupOptInViewController *)self updateLocalViewSize];
  }
}

- (void)updateLocalViewSize
{
  [(NSLayoutConstraint *)self->_collectionViewHeightConstraint constant];
  v4 = v3;
  [(_UICAPackageView *)self->_animationView frame];
  v6 = v4 + v5;
  localContentView = [(BPSStingSetupOptInViewController *)self localContentView];
  [localContentView frame];
  v9 = v8;

  if (v6 > v9)
  {
    localContentView2 = [(BPSStingSetupOptInViewController *)self localContentView];
    localContentView3 = [(BPSStingSetupOptInViewController *)self localContentView];
    [localContentView3 frame];
    v12 = v11;
    localContentView4 = [(BPSStingSetupOptInViewController *)self localContentView];
    [localContentView4 frame];
    v15 = v14;
    localContentView5 = [(BPSStingSetupOptInViewController *)self localContentView];
    [localContentView5 frame];
    [localContentView2 setFrame:{v12, v15}];
  }
}

- (id)titleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"STING_SETUP_TITLE" value:&stru_C620 table:@"Localizable-N199"];

  return v3;
}

- (id)detailString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"STING_SETUP_DETAIL" value:&stru_C620 table:@"Localizable-N199"];

  return v3;
}

- (id)suggestedButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"STING_SUGGESTED_BUTTON_TITLE" value:&stru_C620 table:@"Localizable-N199"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"STING_ALTERNATE_BUTTON_TITLE" value:&stru_C620 table:@"Localizable-N199"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  npsQueue = self->_npsQueue;
  if (!npsQueue)
  {
    v5 = dispatch_queue_create("com.apple.Bridge.NPSQueue", 0);
    v6 = self->_npsQueue;
    self->_npsQueue = v5;

    npsQueue = self->_npsQueue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2DD0;
  block[3] = &unk_C2E0;
  block[4] = self;
  dispatch_async(npsQueue, block);
  miniFlowDelegate = [(BPSStingSetupOptInViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (void)alternateButtonPressed:(id)pressed
{
  miniFlowDelegate = [(BPSStingSetupOptInViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (void)selectionChanged:(id)changed
{
  if (changed)
  {
    changedCopy = changed;
    suggestedChoiceButton = [(BPSStingSetupOptInViewController *)self suggestedChoiceButton];
    [suggestedChoiceButton setEnabled:1];

    selectedActivity = [(BPSStingSetupOptInViewController *)self selectedActivity];
    identifier = [selectedActivity identifier];
    identifier2 = [changedCopy identifier];
    LOBYTE(suggestedChoiceButton) = [identifier isEqualToString:identifier2];

    [(BPSStingSetupOptInViewController *)self setSelectedActivity:changedCopy];
    [(_UICAPackageView *)self->_animationView removeFromSuperview];
    animationView = self->_animationView;
    self->_animationView = 0;

    identifier3 = [changedCopy identifier];

    v11 = [(BPSStingSetupOptInViewController *)self animationViewForIdentifier:identifier3];
    v12 = self->_animationView;
    self->_animationView = v11;

    contentView = [(BPSStingSetupOptInViewController *)self contentView];
    [contentView addSubview:self->_animationView];

    if ((suggestedChoiceButton & 1) == 0)
    {
      layer = [(_UICAPackageView *)self->_animationView layer];
      [layer setBeginTime:0.0];

      layer2 = [(_UICAPackageView *)self->_animationView layer];
      [layer2 convertTime:0 fromLayer:CACurrentMediaTime()];
      v17 = v16;

      layer3 = [(_UICAPackageView *)self->_animationView layer];
      [layer3 setBeginTime:v17];
    }

    [(BPSStingSetupOptInViewController *)self applyAnimationLayoutContraints];
  }
}

+ (id)animationFileURLForIdentifier:(id)identifier
{
  v4 = [BPSStingSetupModel fileNameForIdentifier:identifier];
  v5 = [NSBundle bundleForClass:self];
  v6 = [v5 URLForResource:v4 withExtension:@"caar"];

  return v6;
}

- (id)animationViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_opt_class() animationFileURLForIdentifier:identifierCopy];

  if (!v4)
  {
    v4 = [objc_opt_class() animationFileURLForIdentifier:0];
  }

  v5 = [[_UICAPackageView alloc] initWithContentsOfURL:v4 publishedObjectViewClassMap:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v5;
}

- (void)_applyScale
{
  if (!+[BPSStingFeatureCell isLargeText])
  {
    [(BPSStingSetupOptInViewController *)self availableContentViewHeight];
    v4 = v3;
    [(NSLayoutConstraint *)self->_collectionViewHeightConstraint constant];
    v6 = v4 - v5 + -15.0;
    layer = [(_UICAPackageView *)self->_animationView layer];
    [layer frame];
    v9 = fmin(v6, 316.0) / v8;

    if (v9 < 0.75)
    {
      v9 = 0.75;
    }

    CATransform3DMakeScale(&v18, v9, v9, 1.0);
    animationView = self->_animationView;
    buf = v18;
    [(_UICAPackageView *)animationView setTransform3D:&buf];
    v11 = bps_setup_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [(BPSStingSetupOptInViewController *)self availableContentViewHeight];
      v13 = v12;
      [(NSLayoutConstraint *)self->_collectionViewHeightConstraint constant];
      v15 = v14;
      layer2 = [(_UICAPackageView *)self->_animationView layer];
      [layer2 frame];
      LODWORD(buf.m11) = 134219008;
      *(&buf.m11 + 4) = v6;
      WORD2(buf.m12) = 2048;
      *(&buf.m12 + 6) = v9;
      HIWORD(buf.m13) = 2048;
      buf.m14 = v13;
      LOWORD(buf.m21) = 2048;
      *(&buf.m21 + 2) = v15;
      WORD1(buf.m22) = 2048;
      *(&buf.m22 + 4) = v17;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Space for animation: %f scalefactor: %f availablecontentheight: %f collectionviewHeight: %f animationViewHeight: %f", &buf, 0x34u);
    }

    [(_UICAPackageView *)self->_animationView sizeToFit];
  }
}

- (void)applyAnimationLayoutContraints
{
  [(BPSStingSetupOptInViewController *)self _applyScale];
  [(BPSStingSetupOptInViewController *)self updateLocalViewSize];
  topAnchor = [(_UICAPackageView *)self->_animationView topAnchor];
  localContentView = [(BPSStingSetupOptInViewController *)self localContentView];
  topAnchor2 = [localContentView topAnchor];
  layer = [(_UICAPackageView *)self->_animationView layer];
  [layer frame];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v3];
  v20[0] = v15;
  widthAnchor = [(_UICAPackageView *)self->_animationView widthAnchor];
  v4 = [widthAnchor constraintEqualToConstant:197.0];
  v20[1] = v4;
  centerXAnchor = [(_UICAPackageView *)self->_animationView centerXAnchor];
  view = [(BPSStingSetupOptInViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v20[2] = v8;
  bottomAnchor = [(BPSStingFeatureCollectionView *)self->_collectionView bottomAnchor];
  localContentView2 = [(BPSStingSetupOptInViewController *)self localContentView];
  bottomAnchor2 = [localContentView2 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[3] = v12;
  v13 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end