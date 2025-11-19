@interface BPSStingSetupOptInViewController
+ (id)animationFileURLForIdentifier:(id)a3;
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (BPSStingSetupOptInViewController)init;
- (id)alternateButtonTitle;
- (id)animationViewForIdentifier:(id)a3;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_applyScale;
- (void)alternateButtonPressed:(id)a3;
- (void)applyAnimationLayoutContraints;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)selectionChanged:(id)a3;
- (void)setupViews;
- (void)suggestedButtonPressed:(id)a3;
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
  v3 = [(BPSStingSetupOptInViewController *)self suggestedChoiceButton];
  [v3 setEnabled:0];

  v4 = [UIView alloc];
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;
  [(BPSStingSetupOptInViewController *)self availableContentViewHeight];
  v9 = [v4 initWithFrame:{0.0, 0.0, v7, v8}];
  localContentView = self->_localContentView;
  self->_localContentView = v9;

  v11 = [(BPSStingSetupOptInViewController *)self contentView];
  [v11 addSubview:self->_localContentView];

  if (!self->_collectionView)
  {
    v12 = [[BPSStingFeatureCollectionView alloc] initWithFrame:0.0, 0.0, 0.0, 0.0];
    collectionView = self->_collectionView;
    self->_collectionView = v12;

    [(BPSStingFeatureCollectionView *)self->_collectionView setSelectionChangeDelegate:self];
    [(BPSStingFeatureCollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(BPSStingSetupOptInViewController *)self localContentView];
    [v14 addSubview:self->_collectionView];

    v15 = [(BPSStingSetupOptInViewController *)self collectionView];
    [v15 addObserver:self forKeyPath:@"contentSize" options:2 context:0];
  }

  if (!self->_collectionViewHeightConstraint)
  {
    v16 = [(BPSStingFeatureCollectionView *)self->_collectionView heightAnchor];
    v17 = [v16 constraintEqualToConstant:106.0];
    collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
    self->_collectionViewHeightConstraint = v17;
  }

  v19 = [(BPSStingSetupOptInViewController *)self watchViewBottomConstraint];
  [v19 setActive:0];

  [(NSLayoutConstraint *)self->_collectionViewHeightConstraint setActive:1];
  v20 = [(BPSStingSetupOptInViewController *)self animationViewForIdentifier:0];
  animationView = self->_animationView;
  self->_animationView = v20;

  v22 = [(BPSStingSetupOptInViewController *)self localContentView];
  [v22 addSubview:self->_animationView];

  v43 = [(BPSStingFeatureCollectionView *)self->_collectionView leadingAnchor];
  v44 = [(BPSStingSetupOptInViewController *)self view];
  v42 = [v44 leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v45[0] = v41;
  v40 = [(BPSStingFeatureCollectionView *)self->_collectionView trailingAnchor];
  v23 = [(BPSStingSetupOptInViewController *)self view];
  v24 = [v23 trailingAnchor];
  v25 = [v40 constraintEqualToAnchor:v24];
  v45[1] = v25;
  v26 = [(BPSStingFeatureCollectionView *)self->_collectionView bottomAnchor];
  v27 = [(BPSStingSetupOptInViewController *)self contentView];
  v28 = [v27 bottomAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  v45[2] = v29;
  v30 = [NSArray arrayWithObjects:v45 count:3];
  [NSLayoutConstraint activateConstraints:v30];

  [(BPSStingFeatureCollectionView *)self->_collectionView contentInset];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [(BPSStingSetupOptInViewController *)self view];
  [v37 directionalLayoutMargins];
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
  v3 = [(BPSStingSetupOptInViewController *)self view];
  [v3 safeAreaInsets];
  if (v4 == 0.0)
  {
  }

  else
  {
    v5 = [(BPSStingSetupOptInViewController *)self doneSettingUpViews];

    if ((v5 & 1) == 0)
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  [(NSLayoutConstraint *)self->_collectionViewHeightConstraint constant:a3];
  v8 = v7;
  v9 = [(BPSStingSetupOptInViewController *)self collectionView];
  [v9 preferredCellHeight];
  v11 = v10;

  if (v8 != v11)
  {
    v12 = [(BPSStingSetupOptInViewController *)self collectionView];
    [v12 preferredCellHeight];
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
  v7 = [(BPSStingSetupOptInViewController *)self localContentView];
  [v7 frame];
  v9 = v8;

  if (v6 > v9)
  {
    v17 = [(BPSStingSetupOptInViewController *)self localContentView];
    v10 = [(BPSStingSetupOptInViewController *)self localContentView];
    [v10 frame];
    v12 = v11;
    v13 = [(BPSStingSetupOptInViewController *)self localContentView];
    [v13 frame];
    v15 = v14;
    v16 = [(BPSStingSetupOptInViewController *)self localContentView];
    [v16 frame];
    [v17 setFrame:{v12, v15}];
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

- (void)suggestedButtonPressed:(id)a3
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
  v7 = [(BPSStingSetupOptInViewController *)self miniFlowDelegate];
  [v7 miniFlowStepComplete:self];
}

- (void)alternateButtonPressed:(id)a3
{
  v4 = [(BPSStingSetupOptInViewController *)self miniFlowDelegate];
  [v4 miniFlowStepComplete:self];
}

- (void)selectionChanged:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(BPSStingSetupOptInViewController *)self suggestedChoiceButton];
    [v5 setEnabled:1];

    v6 = [(BPSStingSetupOptInViewController *)self selectedActivity];
    v7 = [v6 identifier];
    v8 = [v4 identifier];
    LOBYTE(v5) = [v7 isEqualToString:v8];

    [(BPSStingSetupOptInViewController *)self setSelectedActivity:v4];
    [(_UICAPackageView *)self->_animationView removeFromSuperview];
    animationView = self->_animationView;
    self->_animationView = 0;

    v10 = [v4 identifier];

    v11 = [(BPSStingSetupOptInViewController *)self animationViewForIdentifier:v10];
    v12 = self->_animationView;
    self->_animationView = v11;

    v13 = [(BPSStingSetupOptInViewController *)self contentView];
    [v13 addSubview:self->_animationView];

    if ((v5 & 1) == 0)
    {
      v14 = [(_UICAPackageView *)self->_animationView layer];
      [v14 setBeginTime:0.0];

      v15 = [(_UICAPackageView *)self->_animationView layer];
      [v15 convertTime:0 fromLayer:CACurrentMediaTime()];
      v17 = v16;

      v18 = [(_UICAPackageView *)self->_animationView layer];
      [v18 setBeginTime:v17];
    }

    [(BPSStingSetupOptInViewController *)self applyAnimationLayoutContraints];
  }
}

+ (id)animationFileURLForIdentifier:(id)a3
{
  v4 = [BPSStingSetupModel fileNameForIdentifier:a3];
  v5 = [NSBundle bundleForClass:a1];
  v6 = [v5 URLForResource:v4 withExtension:@"caar"];

  return v6;
}

- (id)animationViewForIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() animationFileURLForIdentifier:v3];

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
    v7 = [(_UICAPackageView *)self->_animationView layer];
    [v7 frame];
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
      v16 = [(_UICAPackageView *)self->_animationView layer];
      [v16 frame];
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
  v18 = [(_UICAPackageView *)self->_animationView topAnchor];
  v19 = [(BPSStingSetupOptInViewController *)self localContentView];
  v16 = [v19 topAnchor];
  v17 = [(_UICAPackageView *)self->_animationView layer];
  [v17 frame];
  v15 = [v18 constraintEqualToAnchor:v16 constant:v3];
  v20[0] = v15;
  v14 = [(_UICAPackageView *)self->_animationView widthAnchor];
  v4 = [v14 constraintEqualToConstant:197.0];
  v20[1] = v4;
  v5 = [(_UICAPackageView *)self->_animationView centerXAnchor];
  v6 = [(BPSStingSetupOptInViewController *)self view];
  v7 = [v6 centerXAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v20[2] = v8;
  v9 = [(BPSStingFeatureCollectionView *)self->_collectionView bottomAnchor];
  v10 = [(BPSStingSetupOptInViewController *)self localContentView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
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