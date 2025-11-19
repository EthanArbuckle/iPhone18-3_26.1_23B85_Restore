@interface NavVoiceVolumeViewController
- (NavVoiceVolumeControlContaineeViewControllerDelegate)voiceVolumeControlDelegate;
- (NavVoiceVolumeViewController)initWithDelegate:(id)a3;
- (double)heightForLayout:(unint64_t)a3;
- (id)_effectiveTraitCollection;
- (void)_updateFonts;
- (void)audioControlView:(id)a3 didSelectAudioVolume:(int64_t)a4;
- (void)dealloc;
- (void)dismissAfterDelay;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)headerViewTapped:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NavVoiceVolumeViewController

- (NavVoiceVolumeControlContaineeViewControllerDelegate)voiceVolumeControlDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceVolumeControlDelegate);

  return WeakRetained;
}

- (id)_effectiveTraitCollection
{
  v3 = [(NavVoiceVolumeViewController *)self traitCollection];
  v4 = [(NavVoiceVolumeViewController *)self _maximumContentSizeCategory];
  v5 = [v3 _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:v4];

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = NavVoiceVolumeViewController;
  v4 = a3;
  [(MapsThemeViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [(NavVoiceVolumeViewController *)self traitCollection:v9.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  v8 = sub_10008FB5C(v6, v7);
  if (v8)
  {
    [(NavVoiceVolumeViewController *)self _updateFonts];
  }
}

- (void)_updateFonts
{
  v4 = [(NavVoiceVolumeViewController *)self _effectiveTraitCollection];
  v3 = [UIFont system28BoldCompatibleWithTraitCollection:v4];
  [(UILabel *)self->_titleLabel setFont:v3];
}

- (void)headerViewTapped:(id)a3
{
  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 containeeLayout];

  v6 = [(ContaineeViewController *)self cardPresentationController];
  v8 = v6;
  if (v5 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 wantsLayout:v7];
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v5 = [(NavVoiceVolumeViewController *)self voiceVolumeControlDelegate:a3];
  [v5 dismissVoiceVolumeControlViewController:self];
}

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 == 2)
  {
    [(ContaineeViewController *)self headerHeight];
    v8 = v9 + 150.0;
    goto LABEL_5;
  }

  v4 = -1.0;
  if (a3 == 1)
  {
    [(ContaineeViewController *)self headerHeight];
    v6 = v5;
    [(UILayoutGuide *)self->_labelGrowLayoutGuide layoutFrame];
    v8 = v6 - v7;
LABEL_5:
    v10 = [(ContaineeViewController *)self cardPresentationController];
    [v10 bottomSafeOffset];
    v4 = v8 + v11;
  }

  return v4;
}

- (void)dismissAfterDelay
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EBBE7C;
  v6[3] = &unk_1016616E8;
  objc_copyWeak(&v7, &location);
  v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v6 block:10.0];
  dismissTimer = self->_dismissTimer;
  self->_dismissTimer = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)audioControlView:(id)a3 didSelectAudioVolume:(int64_t)a4
{
  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "User setting volume %d", v8, 8u);
  }

  GEOConfigSetSyncInteger();
  v7 = [(NavVoiceVolumeViewController *)self voiceVolumeControlDelegate];
  [v7 voiceVolumeViewController:self selectedVoiceVolumeOption:a4];

  [(NavVoiceVolumeViewController *)self dismissAfterDelay];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NavVoiceVolumeViewController;
  [(NavVoiceVolumeViewController *)&v5 viewDidAppear:a3];
  [(NavVoiceVolumeViewController *)self dismissAfterDelay];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 updateHeightForCurrentLayout];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NavVoiceVolumeViewController;
  [(ContaineeViewController *)&v5 viewWillAppear:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 setHideGrabber:1];
}

- (void)viewDidLoad
{
  v105.receiver = self;
  v105.super_class = NavVoiceVolumeViewController;
  [(ContaineeViewController *)&v105 viewDidLoad];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 setEdgeAttachedRegularHeightDimmingBehavior:2];

  v4 = objc_opt_new();
  trayHeader = self->_trayHeader;
  self->_trayHeader = v4;

  [(ContainerHeaderView *)self->_trayHeader setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_trayHeader setDelegate:self];
  [(ContainerHeaderView *)self->_trayHeader setHairLineAlpha:0.0];
  [(ContainerHeaderView *)self->_trayHeader setHeaderSize:2];
  v6 = [(NavVoiceVolumeViewController *)self view];
  [v6 addSubview:self->_trayHeader];

  v7 = objc_opt_new();
  [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v7 setNumberOfLines:1];
  LODWORD(v8) = 1148846080;
  [(UILabel *)v7 setContentHuggingPriority:1 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [(UILabel *)v7 setContentCompressionResistancePriority:1 forAxis:v9];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"[NavTray] Voice Controls" value:@"localized string not found" table:0];
  [(UILabel *)v7 setText:v11];

  [(UILabel *)v7 setAccessibilityIdentifier:@"HeaderLabel"];
  v12 = objc_opt_new();
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 addSubview:v7];
  v13 = objc_opt_new();
  [v12 addLayoutGuide:v13];
  labelGrowLayoutGuide = self->_labelGrowLayoutGuide;
  self->_labelGrowLayoutGuide = v13;
  v15 = v13;

  titleLabel = self->_titleLabel;
  self->_titleLabel = v7;
  v17 = v7;

  [(ContainerHeaderView *)self->_trayHeader setTitleView:v12];
  v18 = objc_opt_new();
  contentView = self->_contentView;
  self->_contentView = v18;

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView setAccessibilityIdentifier:@"NavVoiceVolumeContent"];
  v20 = [(NavVoiceVolumeViewController *)self view];
  [v20 addSubview:self->_contentView];

  v21 = [[VoiceVolumeControlView alloc] initWithDelegate:self];
  [(VoiceVolumeControlView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  controlView = self->_controlView;
  self->_controlView = v21;
  v23 = v21;

  v24 = [(NavVoiceVolumeViewController *)self contentView];
  [v24 addSubview:v23];

  v103 = [(ContainerHeaderView *)self->_trayHeader topAnchor];
  v104 = [(NavVoiceVolumeViewController *)self view];
  v102 = [v104 topAnchor];
  v101 = [v103 constraintEqualToAnchor:v102];
  v106[0] = v101;
  v99 = [(ContainerHeaderView *)self->_trayHeader leadingAnchor];
  v100 = [(NavVoiceVolumeViewController *)self view];
  v98 = [v100 leadingAnchor];
  v97 = [v99 constraintEqualToAnchor:v98];
  v106[1] = v97;
  v95 = [(ContainerHeaderView *)self->_trayHeader trailingAnchor];
  v96 = [(NavVoiceVolumeViewController *)self view];
  v94 = [v96 trailingAnchor];
  v93 = [v95 constraintEqualToAnchor:v94];
  v106[2] = v93;
  v91 = [(UIView *)self->_contentView leadingAnchor];
  v92 = [(NavVoiceVolumeViewController *)self view];
  v90 = [v92 leadingAnchor];
  v89 = [v91 constraintEqualToAnchor:v90];
  v106[3] = v89;
  v87 = [(UIView *)self->_contentView trailingAnchor];
  v88 = [(NavVoiceVolumeViewController *)self view];
  v86 = [v88 trailingAnchor];
  v85 = [v87 constraintEqualToAnchor:v86];
  v106[4] = v85;
  v84 = [(UIView *)self->_contentView topAnchor];
  v83 = [(ContainerHeaderView *)self->_trayHeader bottomAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v106[5] = v82;
  v80 = [(UIView *)self->_contentView bottomAnchor];
  v81 = [(NavVoiceVolumeViewController *)self view];
  v79 = [v81 bottomAnchor];
  LODWORD(v25) = 1144750080;
  v78 = [v80 constraintEqualToAnchor:v79 constant:-32.0 priority:v25];
  v106[6] = v78;
  v76 = [(VoiceVolumeControlView *)self->_controlView bottomAnchor];
  v77 = [(NavVoiceVolumeViewController *)self view];
  v75 = [v77 bottomAnchor];
  LODWORD(v26) = 1148846080;
  v74 = [v76 constraintLessThanOrEqualToAnchor:v75 constant:0.0 priority:v26];
  v106[7] = v74;
  v73 = [v12 heightAnchor];
  v71 = [v73 constraintEqualToConstant:82.0];
  v106[8] = v71;
  v70 = [v12 leadingAnchor];
  v69 = [(ContainerHeaderView *)self->_trayHeader leadingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v106[9] = v68;
  v67 = [v12 topAnchor];
  v66 = [(ContainerHeaderView *)self->_trayHeader topAnchor];
  v65 = [v67 constraintEqualToAnchor:v66];
  v106[10] = v65;
  v64 = [(UILabel *)v17 leadingAnchor];
  v63 = [v12 leadingAnchor];
  v62 = [v64 constraintEqualToAnchor:v63 constant:16.0];
  v106[11] = v62;
  v61 = [(UILabel *)v17 topAnchor];
  v72 = v12;
  v60 = [v12 topAnchor];
  v59 = [v61 constraintEqualToAnchor:v60 constant:16.0];
  v106[12] = v59;
  v58 = [(UILabel *)v17 bottomAnchor];
  v27 = v15;
  v57 = [(UILayoutGuide *)v15 topAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v106[13] = v56;
  v55 = [(UILayoutGuide *)v15 leadingAnchor];
  v42 = v17;
  v54 = [(UILabel *)v17 leadingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v106[14] = v53;
  v52 = [(UILayoutGuide *)v15 widthAnchor];
  v51 = [(UILabel *)v17 widthAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v106[15] = v50;
  v49 = [(UILayoutGuide *)v15 bottomAnchor];
  v48 = [v12 bottomAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v106[16] = v47;
  v46 = [(UILayoutGuide *)v15 heightAnchor];
  LODWORD(v28) = 1144750080;
  v45 = [v46 constraintEqualToConstant:16.0 priority:v28];
  v106[17] = v45;
  v44 = [(UILayoutGuide *)v15 heightAnchor];
  v43 = [v44 constraintGreaterThanOrEqualToConstant:0.0];
  v106[18] = v43;
  v41 = [(VoiceVolumeControlView *)v23 topAnchor];
  v40 = [(UIView *)self->_contentView topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v106[19] = v39;
  v38 = [(VoiceVolumeControlView *)v23 bottomAnchor];
  v37 = [(UIView *)self->_contentView bottomAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v106[20] = v36;
  v29 = [(VoiceVolumeControlView *)v23 centerXAnchor];
  v30 = [(UIView *)self->_contentView centerXAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v106[21] = v31;
  v32 = [(VoiceVolumeControlView *)v23 leftAnchor];
  v33 = [(UIView *)self->_contentView leftAnchor];
  v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33 constant:16.0];
  v106[22] = v34;
  v35 = [NSArray arrayWithObjects:v106 count:23];
  [NSLayoutConstraint activateConstraints:v35];

  [(NavVoiceVolumeViewController *)self _updateFonts];
}

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  geoConfigListener = self->_geoConfigListener;
  self->_geoConfigListener = 0;

  v4.receiver = self;
  v4.super_class = NavVoiceVolumeViewController;
  [(NavVoiceVolumeViewController *)&v4 dealloc];
}

- (NavVoiceVolumeViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NavVoiceVolumeViewController;
  v5 = [(NavVoiceVolumeViewController *)&v14 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v7 = [(ContaineeViewController *)v5 cardPresentationController];
    [v7 setBlurInCardView:0];

    v8 = [UIColor colorNamed:@"NavigationMaterialColor"];
    v9 = [(ContaineeViewController *)v6 cardPresentationController];
    [v9 setCardColor:v8];

    v10 = [(ContaineeViewController *)v6 cardPresentationController];
    [v10 setMaximumLayoutForEdgeInsetUpdate:0];

    objc_storeWeak(&v6->_voiceVolumeControlDelegate, v4);
  }

  v11 = _GEOConfigAddBlockListenerForKey();
  geoConfigListener = v6->_geoConfigListener;
  v6->_geoConfigListener = v11;

  return v6;
}

@end