@interface NavVoiceVolumeViewController
- (NavVoiceVolumeControlContaineeViewControllerDelegate)voiceVolumeControlDelegate;
- (NavVoiceVolumeViewController)initWithDelegate:(id)delegate;
- (double)heightForLayout:(unint64_t)layout;
- (id)_effectiveTraitCollection;
- (void)_updateFonts;
- (void)audioControlView:(id)view didSelectAudioVolume:(int64_t)volume;
- (void)dealloc;
- (void)dismissAfterDelay;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)headerViewTapped:(id)tapped;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NavVoiceVolumeViewController

- (NavVoiceVolumeControlContaineeViewControllerDelegate)voiceVolumeControlDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceVolumeControlDelegate);

  return WeakRetained;
}

- (id)_effectiveTraitCollection
{
  traitCollection = [(NavVoiceVolumeViewController *)self traitCollection];
  _maximumContentSizeCategory = [(NavVoiceVolumeViewController *)self _maximumContentSizeCategory];
  v5 = [traitCollection _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:_maximumContentSizeCategory];

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = NavVoiceVolumeViewController;
  changeCopy = change;
  [(MapsThemeViewController *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(NavVoiceVolumeViewController *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    [(NavVoiceVolumeViewController *)self _updateFonts];
  }
}

- (void)_updateFonts
{
  _effectiveTraitCollection = [(NavVoiceVolumeViewController *)self _effectiveTraitCollection];
  v3 = [UIFont system28BoldCompatibleWithTraitCollection:_effectiveTraitCollection];
  [(UILabel *)self->_titleLabel setFont:v3];
}

- (void)headerViewTapped:(id)tapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  v8 = cardPresentationController2;
  if (containeeLayout == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [cardPresentationController2 wantsLayout:v7];
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  v5 = [(NavVoiceVolumeViewController *)self voiceVolumeControlDelegate:tapped];
  [v5 dismissVoiceVolumeControlViewController:self];
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout == 2)
  {
    [(ContaineeViewController *)self headerHeight];
    v8 = v9 + 150.0;
    goto LABEL_5;
  }

  v4 = -1.0;
  if (layout == 1)
  {
    [(ContaineeViewController *)self headerHeight];
    v6 = v5;
    [(UILayoutGuide *)self->_labelGrowLayoutGuide layoutFrame];
    v8 = v6 - v7;
LABEL_5:
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
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

- (void)audioControlView:(id)view didSelectAudioVolume:(int64_t)volume
{
  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = volume;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "User setting volume %d", v8, 8u);
  }

  GEOConfigSetSyncInteger();
  voiceVolumeControlDelegate = [(NavVoiceVolumeViewController *)self voiceVolumeControlDelegate];
  [voiceVolumeControlDelegate voiceVolumeViewController:self selectedVoiceVolumeOption:volume];

  [(NavVoiceVolumeViewController *)self dismissAfterDelay];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = NavVoiceVolumeViewController;
  [(NavVoiceVolumeViewController *)&v5 viewDidAppear:appear];
  [(NavVoiceVolumeViewController *)self dismissAfterDelay];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController updateHeightForCurrentLayout];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = NavVoiceVolumeViewController;
  [(ContaineeViewController *)&v5 viewWillAppear:appear];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setHideGrabber:1];
}

- (void)viewDidLoad
{
  v105.receiver = self;
  v105.super_class = NavVoiceVolumeViewController;
  [(ContaineeViewController *)&v105 viewDidLoad];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setEdgeAttachedRegularHeightDimmingBehavior:2];

  v4 = objc_opt_new();
  trayHeader = self->_trayHeader;
  self->_trayHeader = v4;

  [(ContainerHeaderView *)self->_trayHeader setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_trayHeader setDelegate:self];
  [(ContainerHeaderView *)self->_trayHeader setHairLineAlpha:0.0];
  [(ContainerHeaderView *)self->_trayHeader setHeaderSize:2];
  view = [(NavVoiceVolumeViewController *)self view];
  [view addSubview:self->_trayHeader];

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
  view2 = [(NavVoiceVolumeViewController *)self view];
  [view2 addSubview:self->_contentView];

  v21 = [[VoiceVolumeControlView alloc] initWithDelegate:self];
  [(VoiceVolumeControlView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  controlView = self->_controlView;
  self->_controlView = v21;
  v23 = v21;

  contentView = [(NavVoiceVolumeViewController *)self contentView];
  [contentView addSubview:v23];

  topAnchor = [(ContainerHeaderView *)self->_trayHeader topAnchor];
  view3 = [(NavVoiceVolumeViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v101 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v106[0] = v101;
  leadingAnchor = [(ContainerHeaderView *)self->_trayHeader leadingAnchor];
  view4 = [(NavVoiceVolumeViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v97 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v106[1] = v97;
  trailingAnchor = [(ContainerHeaderView *)self->_trayHeader trailingAnchor];
  view5 = [(NavVoiceVolumeViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v93 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v106[2] = v93;
  leadingAnchor3 = [(UIView *)self->_contentView leadingAnchor];
  view6 = [(NavVoiceVolumeViewController *)self view];
  leadingAnchor4 = [view6 leadingAnchor];
  v89 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v106[3] = v89;
  trailingAnchor3 = [(UIView *)self->_contentView trailingAnchor];
  view7 = [(NavVoiceVolumeViewController *)self view];
  trailingAnchor4 = [view7 trailingAnchor];
  v85 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v106[4] = v85;
  topAnchor3 = [(UIView *)self->_contentView topAnchor];
  bottomAnchor = [(ContainerHeaderView *)self->_trayHeader bottomAnchor];
  v82 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v106[5] = v82;
  bottomAnchor2 = [(UIView *)self->_contentView bottomAnchor];
  view8 = [(NavVoiceVolumeViewController *)self view];
  bottomAnchor3 = [view8 bottomAnchor];
  LODWORD(v25) = 1144750080;
  v78 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-32.0 priority:v25];
  v106[6] = v78;
  bottomAnchor4 = [(VoiceVolumeControlView *)self->_controlView bottomAnchor];
  view9 = [(NavVoiceVolumeViewController *)self view];
  bottomAnchor5 = [view9 bottomAnchor];
  LODWORD(v26) = 1148846080;
  v74 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5 constant:0.0 priority:v26];
  v106[7] = v74;
  heightAnchor = [v12 heightAnchor];
  v71 = [heightAnchor constraintEqualToConstant:82.0];
  v106[8] = v71;
  leadingAnchor5 = [v12 leadingAnchor];
  leadingAnchor6 = [(ContainerHeaderView *)self->_trayHeader leadingAnchor];
  v68 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v106[9] = v68;
  topAnchor4 = [v12 topAnchor];
  topAnchor5 = [(ContainerHeaderView *)self->_trayHeader topAnchor];
  v65 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v106[10] = v65;
  leadingAnchor7 = [(UILabel *)v17 leadingAnchor];
  leadingAnchor8 = [v12 leadingAnchor];
  v62 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
  v106[11] = v62;
  topAnchor6 = [(UILabel *)v17 topAnchor];
  v72 = v12;
  topAnchor7 = [v12 topAnchor];
  v59 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:16.0];
  v106[12] = v59;
  bottomAnchor6 = [(UILabel *)v17 bottomAnchor];
  v27 = v15;
  topAnchor8 = [(UILayoutGuide *)v15 topAnchor];
  v56 = [bottomAnchor6 constraintEqualToAnchor:topAnchor8];
  v106[13] = v56;
  leadingAnchor9 = [(UILayoutGuide *)v15 leadingAnchor];
  v42 = v17;
  leadingAnchor10 = [(UILabel *)v17 leadingAnchor];
  v53 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v106[14] = v53;
  widthAnchor = [(UILayoutGuide *)v15 widthAnchor];
  widthAnchor2 = [(UILabel *)v17 widthAnchor];
  v50 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v106[15] = v50;
  bottomAnchor7 = [(UILayoutGuide *)v15 bottomAnchor];
  bottomAnchor8 = [v12 bottomAnchor];
  v47 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v106[16] = v47;
  heightAnchor2 = [(UILayoutGuide *)v15 heightAnchor];
  LODWORD(v28) = 1144750080;
  v45 = [heightAnchor2 constraintEqualToConstant:16.0 priority:v28];
  v106[17] = v45;
  heightAnchor3 = [(UILayoutGuide *)v15 heightAnchor];
  v43 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:0.0];
  v106[18] = v43;
  topAnchor9 = [(VoiceVolumeControlView *)v23 topAnchor];
  topAnchor10 = [(UIView *)self->_contentView topAnchor];
  v39 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  v106[19] = v39;
  bottomAnchor9 = [(VoiceVolumeControlView *)v23 bottomAnchor];
  bottomAnchor10 = [(UIView *)self->_contentView bottomAnchor];
  v36 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  v106[20] = v36;
  centerXAnchor = [(VoiceVolumeControlView *)v23 centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_contentView centerXAnchor];
  v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v106[21] = v31;
  leftAnchor = [(VoiceVolumeControlView *)v23 leftAnchor];
  leftAnchor2 = [(UIView *)self->_contentView leftAnchor];
  v34 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:16.0];
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

- (NavVoiceVolumeViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = NavVoiceVolumeViewController;
  v5 = [(NavVoiceVolumeViewController *)&v14 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    cardPresentationController = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController setBlurInCardView:0];

    v8 = [UIColor colorNamed:@"NavigationMaterialColor"];
    cardPresentationController2 = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController2 setCardColor:v8];

    cardPresentationController3 = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController3 setMaximumLayoutForEdgeInsetUpdate:0];

    objc_storeWeak(&v6->_voiceVolumeControlDelegate, delegateCopy);
  }

  v11 = _GEOConfigAddBlockListenerForKey();
  geoConfigListener = v6->_geoConfigListener;
  v6->_geoConfigListener = v11;

  return v6;
}

@end