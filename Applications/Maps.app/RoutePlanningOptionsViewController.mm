@interface RoutePlanningOptionsViewController
- (CGSize)_calculatePreferredContentSize;
- (RoutePlanningDataCoordination)dataCoordinator;
- (RoutePlanningOptionsViewController)initWithDataCoordinator:(id)coordinator automaticallySaveChanges:(BOOL)changes completionHandler:(id)handler;
- (double)heightForLayout:(unint64_t)layout;
- (id)_titleForTransportType:(int64_t)type;
- (id)initialConstraints;
- (int)_analyticsTarget;
- (int)_analyticsTargetForTransportType:(int64_t)type;
- (void)_didTapCancelButton:(id)button;
- (void)_didTapDoneButton:(id)button;
- (void)_presentRAP;
- (void)_updateDoneButtonIfNeeded;
- (void)_updatePreferredContentSize;
- (void)dataSourceDidRebuildSections:(id)sections;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setupSubviews;
- (void)viewDidLoad;
@end

@implementation RoutePlanningOptionsViewController

- (RoutePlanningDataCoordination)dataCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  return WeakRetained;
}

- (int)_analyticsTarget
{
  selfCopy = self;
  routeOptionsDataSource = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
  LODWORD(selfCopy) = -[RoutePlanningOptionsViewController _analyticsTargetForTransportType:](selfCopy, "_analyticsTargetForTransportType:", [routeOptionsDataSource transportType]);

  return selfCopy;
}

- (int)_analyticsTargetForTransportType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_101215380[type - 1];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  v9.receiver = self;
  v9.super_class = RoutePlanningOptionsViewController;
  [(ContaineeViewController *)&v9 scrollViewWillEndDragging:dragging withVelocity:offset targetContentOffset:velocity.x];
  if (y <= 0.0)
  {
    v7 = 7;
  }

  else
  {
    v7 = 8;
  }

  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:v7 onTarget:-[RoutePlanningOptionsViewController _analyticsTarget](self eventValue:{"_analyticsTarget"), 0}];
}

- (void)_presentRAP
{
  routeOptionsDataSource = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
  transportType = [routeOptionsDataSource transportType];

  if (transportType <= 5)
  {
    if (((1 << transportType) & 0x2E) != 0)
    {
      v5 = +[MKMapService sharedService];
      [v5 captureUserAction:5013 onTarget:-[RoutePlanningOptionsViewController _analyticsTarget](self eventValue:{"_analyticsTarget"), 0}];

      _maps_mapsSceneDelegate = [(RoutePlanningOptionsViewController *)self _maps_mapsSceneDelegate];
      rapPresenter = [_maps_mapsSceneDelegate rapPresenter];

      if (sub_10000FA08(self) == 5)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100A746AC;
        v10[3] = &unk_101661A90;
        rapPresenter = rapPresenter;
        v11 = rapPresenter;
        selfCopy = self;
        [(RoutePlanningOptionsViewController *)self dismissViewControllerAnimated:1 completion:v10];
      }

      else
      {
        [rapPresenter presentReportAProblemForRouteFromEntryPoint:[(RoutePlanningOptionsViewController *)self _analyticsTarget]];
      }

LABEL_11:

      return;
    }

    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "[RoutePlanningOptionsViewController _presentRAP]";
      v15 = 2080;
      v16 = "RoutePlanningOptionsViewController.m";
      v17 = 1024;
      v18 = 424;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      rapPresenter = sub_10006D178();
      if (os_log_type_enabled(rapPresenter, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, rapPresenter, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      goto LABEL_11;
    }
  }
}

- (void)dataSourceDidRebuildSections:(id)sections
{
  v4.receiver = self;
  v4.super_class = RoutePlanningOptionsViewController;
  [(PreferencesValuesContaineeViewController *)&v4 dataSourceDidRebuildSections:sections];
  [(RoutePlanningOptionsViewController *)self _updatePreferredContentSize];
}

- (void)_didTapDoneButton:(id)button
{
  buttonCopy = button;
  v4 = +[MKMapService sharedService];
  routeOptionsDataSource = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
  [v4 captureUserAction:17 onTarget:-[RoutePlanningOptionsViewController _analyticsTargetForTransportType:](self eventValue:{"_analyticsTargetForTransportType:", objc_msgSend(routeOptionsDataSource, "transportType")), 0}];

  routeOptionsDataSource2 = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
  [routeOptionsDataSource2 _updateCoordinatorWithPreferences];

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v8 = objc_retainBlock(completionHandler);
    v9 = self->_completionHandler;
    self->_completionHandler = 0;

    v8[2](v8, self, buttonCopy);
  }
}

- (void)_didTapCancelButton:(id)button
{
  buttonCopy = button;
  v4 = +[MKMapService sharedService];
  routeOptionsDataSource = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
  [v4 captureUserAction:18 onTarget:-[RoutePlanningOptionsViewController _analyticsTargetForTransportType:](self eventValue:{"_analyticsTargetForTransportType:", objc_msgSend(routeOptionsDataSource, "transportType")), 0}];

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v7 = objc_retainBlock(completionHandler);
    v8 = self->_completionHandler;
    self->_completionHandler = 0;

    v7[2](v7, self, buttonCopy);
  }
}

- (void)_updateDoneButtonIfNeeded
{
  applyButton = [(RoutePlanningOptionsViewController *)self applyButton];

  if (applyButton)
  {
    routeOptionsDataSource = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
    hasUnsavedChanges = [routeOptionsDataSource hasUnsavedChanges];
    applyButton2 = [(RoutePlanningOptionsViewController *)self applyButton];
    [applyButton2 setEnabled:hasUnsavedChanges];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (context == &unk_10195E358)
  {
    [(RoutePlanningOptionsViewController *)self _updateDoneButtonIfNeeded];
  }

  else if (context == &unk_10195E360)
  {
    v14 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v15 = [v13 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v16 = [v14 isEqual:v15];

    if ((v16 & 1) == 0)
    {
      inUpdatePreferredContentSize = self->_inUpdatePreferredContentSize;
      v18 = sub_100798A3C();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (inUpdatePreferredContentSize)
      {
        if (v19)
        {
          v20 = [v13 objectForKeyedSubscript:NSKeyValueChangeOldKey];
          v21 = [v13 objectForKeyedSubscript:NSKeyValueChangeNewKey];
          *buf = 138412546;
          v26 = v20;
          v27 = 2112;
          v28 = v21;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[Options] Ignoring collection size change from %@ to %@", buf, 0x16u);
        }
      }

      else
      {
        if (v19)
        {
          v22 = [v13 objectForKeyedSubscript:NSKeyValueChangeOldKey];
          v23 = [v13 objectForKeyedSubscript:NSKeyValueChangeNewKey];
          *buf = 138412546;
          v26 = v22;
          v27 = 2112;
          v28 = v23;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[Options] collection size did change from %@ to %@", buf, 0x16u);
        }

        [(RoutePlanningOptionsViewController *)self _updatePreferredContentSize];
      }
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = RoutePlanningOptionsViewController;
    [(RoutePlanningOptionsViewController *)&v24 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)_titleForTransportType:(int64_t)type
{
  if (sub_10000FA08(self) == 5)
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"Route Options [Card Header Title]";
LABEL_8:
    v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

    goto LABEL_9;
  }

  if ((type - 1) < 2)
  {
    goto LABEL_6;
  }

  if (type == 3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"Prefer [Card Header Title]";
    goto LABEL_8;
  }

  if (type == 5)
  {
LABEL_6:
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"Avoid Options [Card Header Title]";
    goto LABEL_8;
  }

  v9 = sub_10006D178();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315650;
    v13 = "[RoutePlanningOptionsViewController _titleForTransportType:]";
    v14 = 2080;
    v15 = "RoutePlanningOptionsViewController.m";
    v16 = 1024;
    v17 = 333;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v12, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = +[NSThread callStackSymbols];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (CGSize)_calculatePreferredContentSize
{
  isViewLoaded = [(RoutePlanningOptionsViewController *)self isViewLoaded];
  v4 = 282.0;
  if (isViewLoaded)
  {
    v5 = sub_10000FA08(self);
    v4 = 282.0;
    if (v5 == 5)
    {
      view = [(RoutePlanningOptionsViewController *)self view];
      [view layoutIfNeeded];

      headerView = [(ContaineeViewController *)self headerView];
      height = UILayoutFittingCompressedSize.height;
      [headerView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
      v10 = v9;

      collectionView = [(PreferencesValuesContaineeViewController *)self collectionView];
      collectionViewLayout = [collectionView collectionViewLayout];
      [collectionViewLayout collectionViewContentSize];
      v14 = v13;

      footerView = [(RoutePlanningOptionsViewController *)self footerView];
      if (footerView)
      {
        footerView2 = [(RoutePlanningOptionsViewController *)self footerView];
        [footerView2 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
        v18 = v17;
      }

      else
      {
        v18 = 0.0;
      }

      v4 = v14 + v10 + v18;
    }
  }

  v19 = 282.0;
  result.height = v4;
  result.width = v19;
  return result;
}

- (void)_updatePreferredContentSize
{
  if ([(RoutePlanningOptionsViewController *)self isViewLoaded]&& sub_10000FA08(self) == 5)
  {
    self->_inUpdatePreferredContentSize = 1;
    [(RoutePlanningOptionsViewController *)self _calculatePreferredContentSize];
    v4 = v3;
    v6 = v5;
    [(RoutePlanningOptionsViewController *)self preferredContentSize];
    if (v4 != v8 || v6 != v7)
    {
      [(RoutePlanningOptionsViewController *)self setPreferredContentSize:v4, v6];
    }

    self->_inUpdatePreferredContentSize = 0;
  }
}

- (double)heightForLayout:(unint64_t)layout
{
  if (sub_10000FA08(self) == 5)
  {
    [(ContaineeViewController *)&v12 heightForLayout:layout, v11.receiver, v11.super_class, self, RoutePlanningOptionsViewController];
  }

  else
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    containerStyle = [cardPresentationController containerStyle];
    if (containerStyle <= 7 && ((1 << containerStyle) & 0xE3) != 0)
    {

      result = -1.0;
      if (layout == 5)
      {
        [(ContaineeViewController *)&v11 heightForLayout:2, self, RoutePlanningOptionsViewController, v12.receiver, v12.super_class];
      }
    }

    else
    {

      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController2 availableHeight];
      v10 = v9;

      return v10;
    }
  }

  return result;
}

- (id)initialConstraints
{
  if (sub_10000FA08(self) == 5 && (GEOConfigGetBOOL() & 1) == 0)
  {
    collectionView = [(PreferencesValuesContaineeViewController *)self collectionView];
    leadingAnchor = [collectionView leadingAnchor];
    contentView = [(ContaineeViewController *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v61[0] = v55;
    contentView2 = [(ContaineeViewController *)self contentView];
    trailingAnchor = [contentView2 trailingAnchor];
    collectionView2 = [(PreferencesValuesContaineeViewController *)self collectionView];
    trailingAnchor2 = [collectionView2 trailingAnchor];
    v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v61[1] = v50;
    footerView = [(RoutePlanningOptionsViewController *)self footerView];
    leadingAnchor3 = [footerView leadingAnchor];
    contentView3 = [(ContaineeViewController *)self contentView];
    leadingAnchor4 = [contentView3 leadingAnchor];
    v45 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v61[2] = v45;
    contentView4 = [(ContaineeViewController *)self contentView];
    trailingAnchor3 = [contentView4 trailingAnchor];
    footerView2 = [(RoutePlanningOptionsViewController *)self footerView];
    trailingAnchor4 = [footerView2 trailingAnchor];
    v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v61[3] = v40;
    collectionView3 = [(PreferencesValuesContaineeViewController *)self collectionView];
    topAnchor = [collectionView3 topAnchor];
    contentView5 = [(ContaineeViewController *)self contentView];
    topAnchor2 = [contentView5 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v61[4] = v35;
    footerView3 = [(RoutePlanningOptionsViewController *)self footerView];
    topAnchor3 = [footerView3 topAnchor];
    collectionView4 = [(PreferencesValuesContaineeViewController *)self collectionView];
    bottomAnchor = [collectionView4 bottomAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v61[5] = v30;
    contentView6 = [(ContaineeViewController *)self contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    footerView4 = [(RoutePlanningOptionsViewController *)self footerView];
    bottomAnchor3 = [footerView4 bottomAnchor];
    v25 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v61[6] = v25;
    stackView = [(RoutePlanningOptionsViewController *)self stackView];
    leadingAnchor5 = [stackView leadingAnchor];
    footerView5 = [(RoutePlanningOptionsViewController *)self footerView];
    leadingAnchor6 = [footerView5 leadingAnchor];
    v20 = [leadingAnchor5 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:leadingAnchor6 multiplier:1.0];
    v61[7] = v20;
    footerView6 = [(RoutePlanningOptionsViewController *)self footerView];
    trailingAnchor5 = [footerView6 trailingAnchor];
    stackView2 = [(RoutePlanningOptionsViewController *)self stackView];
    trailingAnchor6 = [stackView2 trailingAnchor];
    v15 = [trailingAnchor5 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor6 multiplier:1.0];
    v61[8] = v15;
    stackView3 = [(RoutePlanningOptionsViewController *)self stackView];
    topAnchor4 = [stackView3 topAnchor];
    footerView7 = [(RoutePlanningOptionsViewController *)self footerView];
    topAnchor5 = [footerView7 topAnchor];
    v7 = [topAnchor4 constraintEqualToSystemSpacingBelowAnchor:topAnchor5 multiplier:1.0];
    v61[9] = v7;
    footerView8 = [(RoutePlanningOptionsViewController *)self footerView];
    bottomAnchor4 = [footerView8 bottomAnchor];
    stackView4 = [(RoutePlanningOptionsViewController *)self stackView];
    bottomAnchor5 = [stackView4 bottomAnchor];
    v12 = [bottomAnchor4 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor5 multiplier:1.0];
    v61[10] = v12;
    initialConstraints = [NSArray arrayWithObjects:v61 count:11];
  }

  else
  {
    v60.receiver = self;
    v60.super_class = RoutePlanningOptionsViewController;
    initialConstraints = [(PreferencesValuesContaineeViewController *)&v60 initialConstraints];
  }

  return initialConstraints;
}

- (void)setupSubviews
{
  v30.receiver = self;
  v30.super_class = RoutePlanningOptionsViewController;
  [(PreferencesValuesContaineeViewController *)&v30 setupSubviews];
  contentView = [(ContaineeViewController *)self contentView];
  [contentView setAccessibilityIdentifier:@"RoutePlanningOptionsContentView"];

  v4 = [[_TtC4Maps19ModalCardHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(RoutePlanningOptionsViewController *)self setModalHeaderView:v4];

  modalHeaderView = [(RoutePlanningOptionsViewController *)self modalHeaderView];
  [modalHeaderView setAccessibilityIdentifier:@"RoutePlanningOptionsHeader"];

  modalHeaderView2 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
  [modalHeaderView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  dataCoordinator = [(RoutePlanningOptionsViewController *)self dataCoordinator];
  v8 = -[RoutePlanningOptionsViewController _titleForTransportType:](self, "_titleForTransportType:", [dataCoordinator transportType]);
  modalHeaderView3 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
  [modalHeaderView3 setTitle:v8];

  headerView = [(ContaineeViewController *)self headerView];
  modalHeaderView4 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
  [headerView addSubview:modalHeaderView4];

  modalHeaderView5 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
  headerView2 = [(ContaineeViewController *)self headerView];
  LODWORD(v14) = 1148846080;
  v15 = [modalHeaderView5 _maps_constraintsEqualToEdgesOfView:headerView2 priority:v14];
  allConstraints = [v15 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];

  routeOptionsDataSource = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
  LOBYTE(modalHeaderView5) = [routeOptionsDataSource automaticallySaveChanges];

  if ((modalHeaderView5 & 1) == 0)
  {
    v18 = [MapsThemeButton buttonWithType:1];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Cancel [Route Options value:Catalyst]" table:{@"localized string not found", 0}];
    [v18 setTitle:v20 forState:0];

    [v18 setAccessibilityIdentifier:@"CancelButton"];
    [v18 addTarget:self action:"_didTapCancelButton:" forControlEvents:64];
    modalHeaderView6 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
    [modalHeaderView6 setLeadingButton:v18];

    v22 = [MapsThemeButton buttonWithType:1];
    [(RoutePlanningOptionsViewController *)self setApplyButton:v22];

    applyButton = [(RoutePlanningOptionsViewController *)self applyButton];
    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"Apply [Route Options value:Catalyst]" table:{@"localized string not found", 0}];
    [applyButton setTitle:v25 forState:0];

    applyButton2 = [(RoutePlanningOptionsViewController *)self applyButton];
    [applyButton2 setAccessibilityIdentifier:@"ApplyButton"];

    applyButton3 = [(RoutePlanningOptionsViewController *)self applyButton];
    [applyButton3 addTarget:self action:"_didTapDoneButton:" forControlEvents:64];

    applyButton4 = [(RoutePlanningOptionsViewController *)self applyButton];
    modalHeaderView7 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
    [modalHeaderView7 setTrailingButton:applyButton4];

    [(RoutePlanningOptionsViewController *)self _updateDoneButtonIfNeeded];
  }
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = RoutePlanningOptionsViewController;
  [(PreferencesValuesContaineeViewController *)&v16 viewDidLoad];
  [(RoutePlanningOptionsViewController *)self setPreferredContentSize:282.0, 282.0];
  objc_initWeak(&location, self);
  objc_copyWeak(&v14, &location);
  v3 = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource:_NSConcreteStackBlock];
  [v3 setAnalyticsTargetProvider:&v13];

  v4 = +[UIColor clearColor];
  collectionView = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView setBackgroundColor:v4];

  collectionView2 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [RoutePlanningOptionsDataSource registerCellsInCollectionView:collectionView2];

  self->_didStartObservingCollectionViewBounds = 1;
  collectionView3 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView3 addObserver:self forKeyPath:@"contentSize" options:3 context:&unk_10195E360];

  if (sub_10000FA08(self) == 5)
  {
    collectionView4 = [(PreferencesValuesContaineeViewController *)self collectionView];
    [collectionView4 _setHiddenPocketEdges:15];

    v9 = +[UIColor clearColor];
    view = [(RoutePlanningOptionsViewController *)self view];
    [view setBackgroundColor:v9];

    [(RoutePlanningOptionsViewController *)self _updatePreferredContentSize];
  }

  else if ((_UISolariumEnabled() & 1) == 0)
  {
    v11 = +[UIColor systemBackgroundColor];
    view2 = [(RoutePlanningOptionsViewController *)self view];
    [view2 setBackgroundColor:v11];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (RoutePlanningOptionsViewController)initWithDataCoordinator:(id)coordinator automaticallySaveChanges:(BOOL)changes completionHandler:(id)handler
{
  changesCopy = changes;
  coordinatorCopy = coordinator;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = RoutePlanningOptionsViewController;
  v10 = [(RoutePlanningOptionsViewController *)&v23 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_dataCoordinator, coordinatorCopy);
    v12 = objc_alloc_init([objc_opt_class() _dataSourceClass]);
    [(PreferenceValuesDataSource *)v12 setDelegate:v11];
    [(PreferenceValuesDataSource *)v12 setDataCoordinator:coordinatorCopy];
    [(PreferenceValuesDataSource *)v12 setAutomaticallySaveChanges:changesCopy];
    if (([(PreferenceValuesDataSource *)v12 automaticallySaveChanges]& 1) == 0)
    {
      v11->_didStartObservingUnsavedChanges = 1;
      [(PreferenceValuesDataSource *)v12 addObserver:v11 forKeyPath:@"hasUnsavedChanges" options:1 context:&unk_10195E358];
    }

    dataSource = v11->super._dataSource;
    v11->super._dataSource = v12;
    v14 = v12;

    cardPresentationController = [(ContaineeViewController *)v11 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v11 cardPresentationController];
    [cardPresentationController2 setAllowsSwipeToDismiss:0];

    cardPresentationController3 = [(ContaineeViewController *)v11 cardPresentationController];
    [cardPresentationController3 setDefaultContaineeLayout:5];

    cardPresentationController4 = [(ContaineeViewController *)v11 cardPresentationController];
    [cardPresentationController4 setTakesAvailableHeight:1];

    cardPresentationController5 = [(ContaineeViewController *)v11 cardPresentationController];
    [cardPresentationController5 setHideGrabber:1];

    v20 = [handlerCopy copy];
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v20;
  }

  return v11;
}

- (void)dealloc
{
  if (self->_didStartObservingUnsavedChanges)
  {
    self->_didStartObservingUnsavedChanges = 0;
    routeOptionsDataSource = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
    [routeOptionsDataSource removeObserver:self forKeyPath:@"hasUnsavedChanges" context:&unk_10195E358];
  }

  if (self->_didStartObservingCollectionViewBounds)
  {
    self->_didStartObservingCollectionViewBounds = 0;
    collectionView = [(PreferencesValuesContaineeViewController *)self collectionView];
    [collectionView removeObserver:self forKeyPath:@"bounds" context:&unk_10195E360];
  }

  v5.receiver = self;
  v5.super_class = RoutePlanningOptionsViewController;
  [(RoutePlanningOptionsViewController *)&v5 dealloc];
}

@end