@interface RoutePlanningOptionsViewController
- (CGSize)_calculatePreferredContentSize;
- (RoutePlanningDataCoordination)dataCoordinator;
- (RoutePlanningOptionsViewController)initWithDataCoordinator:(id)a3 automaticallySaveChanges:(BOOL)a4 completionHandler:(id)a5;
- (double)heightForLayout:(unint64_t)a3;
- (id)_titleForTransportType:(int64_t)a3;
- (id)initialConstraints;
- (int)_analyticsTarget;
- (int)_analyticsTargetForTransportType:(int64_t)a3;
- (void)_didTapCancelButton:(id)a3;
- (void)_didTapDoneButton:(id)a3;
- (void)_presentRAP;
- (void)_updateDoneButtonIfNeeded;
- (void)_updatePreferredContentSize;
- (void)dataSourceDidRebuildSections:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
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
  v2 = self;
  v3 = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
  LODWORD(v2) = -[RoutePlanningOptionsViewController _analyticsTargetForTransportType:](v2, "_analyticsTargetForTransportType:", [v3 transportType]);

  return v2;
}

- (int)_analyticsTargetForTransportType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_101215380[a3 - 1];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v9.receiver = self;
  v9.super_class = RoutePlanningOptionsViewController;
  [(ContaineeViewController *)&v9 scrollViewWillEndDragging:a3 withVelocity:a5 targetContentOffset:a4.x];
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
  v3 = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
  v4 = [v3 transportType];

  if (v4 <= 5)
  {
    if (((1 << v4) & 0x2E) != 0)
    {
      v5 = +[MKMapService sharedService];
      [v5 captureUserAction:5013 onTarget:-[RoutePlanningOptionsViewController _analyticsTarget](self eventValue:{"_analyticsTarget"), 0}];

      v6 = [(RoutePlanningOptionsViewController *)self _maps_mapsSceneDelegate];
      v7 = [v6 rapPresenter];

      if (sub_10000FA08(self) == 5)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100A746AC;
        v10[3] = &unk_101661A90;
        v7 = v7;
        v11 = v7;
        v12 = self;
        [(RoutePlanningOptionsViewController *)self dismissViewControllerAnimated:1 completion:v10];
      }

      else
      {
        [v7 presentReportAProblemForRouteFromEntryPoint:[(RoutePlanningOptionsViewController *)self _analyticsTarget]];
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
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      goto LABEL_11;
    }
  }
}

- (void)dataSourceDidRebuildSections:(id)a3
{
  v4.receiver = self;
  v4.super_class = RoutePlanningOptionsViewController;
  [(PreferencesValuesContaineeViewController *)&v4 dataSourceDidRebuildSections:a3];
  [(RoutePlanningOptionsViewController *)self _updatePreferredContentSize];
}

- (void)_didTapDoneButton:(id)a3
{
  v10 = a3;
  v4 = +[MKMapService sharedService];
  v5 = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
  [v4 captureUserAction:17 onTarget:-[RoutePlanningOptionsViewController _analyticsTargetForTransportType:](self eventValue:{"_analyticsTargetForTransportType:", objc_msgSend(v5, "transportType")), 0}];

  v6 = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
  [v6 _updateCoordinatorWithPreferences];

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v8 = objc_retainBlock(completionHandler);
    v9 = self->_completionHandler;
    self->_completionHandler = 0;

    v8[2](v8, self, v10);
  }
}

- (void)_didTapCancelButton:(id)a3
{
  v9 = a3;
  v4 = +[MKMapService sharedService];
  v5 = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
  [v4 captureUserAction:18 onTarget:-[RoutePlanningOptionsViewController _analyticsTargetForTransportType:](self eventValue:{"_analyticsTargetForTransportType:", objc_msgSend(v5, "transportType")), 0}];

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v7 = objc_retainBlock(completionHandler);
    v8 = self->_completionHandler;
    self->_completionHandler = 0;

    v7[2](v7, self, v9);
  }
}

- (void)_updateDoneButtonIfNeeded
{
  v3 = [(RoutePlanningOptionsViewController *)self applyButton];

  if (v3)
  {
    v6 = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
    v4 = [v6 hasUnsavedChanges];
    v5 = [(RoutePlanningOptionsViewController *)self applyButton];
    [v5 setEnabled:v4];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (a6 == &unk_10195E358)
  {
    [(RoutePlanningOptionsViewController *)self _updateDoneButtonIfNeeded];
  }

  else if (a6 == &unk_10195E360)
  {
    v14 = [v12 objectForKeyedSubscript:NSKeyValueChangeOldKey];
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
    [(RoutePlanningOptionsViewController *)&v24 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (id)_titleForTransportType:(int64_t)a3
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

  if ((a3 - 1) < 2)
  {
    goto LABEL_6;
  }

  if (a3 == 3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"Prefer [Card Header Title]";
    goto LABEL_8;
  }

  if (a3 == 5)
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
  v3 = [(RoutePlanningOptionsViewController *)self isViewLoaded];
  v4 = 282.0;
  if (v3)
  {
    v5 = sub_10000FA08(self);
    v4 = 282.0;
    if (v5 == 5)
    {
      v6 = [(RoutePlanningOptionsViewController *)self view];
      [v6 layoutIfNeeded];

      v7 = [(ContaineeViewController *)self headerView];
      height = UILayoutFittingCompressedSize.height;
      [v7 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
      v10 = v9;

      v11 = [(PreferencesValuesContaineeViewController *)self collectionView];
      v12 = [v11 collectionViewLayout];
      [v12 collectionViewContentSize];
      v14 = v13;

      v15 = [(RoutePlanningOptionsViewController *)self footerView];
      if (v15)
      {
        v16 = [(RoutePlanningOptionsViewController *)self footerView];
        [v16 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
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

- (double)heightForLayout:(unint64_t)a3
{
  if (sub_10000FA08(self) == 5)
  {
    [(ContaineeViewController *)&v12 heightForLayout:a3, v11.receiver, v11.super_class, self, RoutePlanningOptionsViewController];
  }

  else
  {
    v6 = [(ContaineeViewController *)self cardPresentationController];
    v7 = [v6 containerStyle];
    if (v7 <= 7 && ((1 << v7) & 0xE3) != 0)
    {

      result = -1.0;
      if (a3 == 5)
      {
        [(ContaineeViewController *)&v11 heightForLayout:2, self, RoutePlanningOptionsViewController, v12.receiver, v12.super_class];
      }
    }

    else
    {

      v8 = [(ContaineeViewController *)self cardPresentationController];
      [v8 availableHeight];
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
    v59 = [(PreferencesValuesContaineeViewController *)self collectionView];
    v57 = [v59 leadingAnchor];
    v58 = [(ContaineeViewController *)self contentView];
    v56 = [v58 leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v61[0] = v55;
    v54 = [(ContaineeViewController *)self contentView];
    v52 = [v54 trailingAnchor];
    v53 = [(PreferencesValuesContaineeViewController *)self collectionView];
    v51 = [v53 trailingAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v61[1] = v50;
    v49 = [(RoutePlanningOptionsViewController *)self footerView];
    v47 = [v49 leadingAnchor];
    v48 = [(ContaineeViewController *)self contentView];
    v46 = [v48 leadingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v61[2] = v45;
    v44 = [(ContaineeViewController *)self contentView];
    v42 = [v44 trailingAnchor];
    v43 = [(RoutePlanningOptionsViewController *)self footerView];
    v41 = [v43 trailingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v61[3] = v40;
    v39 = [(PreferencesValuesContaineeViewController *)self collectionView];
    v37 = [v39 topAnchor];
    v38 = [(ContaineeViewController *)self contentView];
    v36 = [v38 topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v61[4] = v35;
    v34 = [(RoutePlanningOptionsViewController *)self footerView];
    v32 = [v34 topAnchor];
    v33 = [(PreferencesValuesContaineeViewController *)self collectionView];
    v31 = [v33 bottomAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v61[5] = v30;
    v29 = [(ContaineeViewController *)self contentView];
    v27 = [v29 bottomAnchor];
    v28 = [(RoutePlanningOptionsViewController *)self footerView];
    v26 = [v28 bottomAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v61[6] = v25;
    v24 = [(RoutePlanningOptionsViewController *)self stackView];
    v22 = [v24 leadingAnchor];
    v23 = [(RoutePlanningOptionsViewController *)self footerView];
    v21 = [v23 leadingAnchor];
    v20 = [v22 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v21 multiplier:1.0];
    v61[7] = v20;
    v19 = [(RoutePlanningOptionsViewController *)self footerView];
    v17 = [v19 trailingAnchor];
    v18 = [(RoutePlanningOptionsViewController *)self stackView];
    v16 = [v18 trailingAnchor];
    v15 = [v17 constraintEqualToSystemSpacingAfterAnchor:v16 multiplier:1.0];
    v61[8] = v15;
    v14 = [(RoutePlanningOptionsViewController *)self stackView];
    v4 = [v14 topAnchor];
    v5 = [(RoutePlanningOptionsViewController *)self footerView];
    v6 = [v5 topAnchor];
    v7 = [v4 constraintEqualToSystemSpacingBelowAnchor:v6 multiplier:1.0];
    v61[9] = v7;
    v8 = [(RoutePlanningOptionsViewController *)self footerView];
    v9 = [v8 bottomAnchor];
    v10 = [(RoutePlanningOptionsViewController *)self stackView];
    v11 = [v10 bottomAnchor];
    v12 = [v9 constraintEqualToSystemSpacingBelowAnchor:v11 multiplier:1.0];
    v61[10] = v12;
    v3 = [NSArray arrayWithObjects:v61 count:11];
  }

  else
  {
    v60.receiver = self;
    v60.super_class = RoutePlanningOptionsViewController;
    v3 = [(PreferencesValuesContaineeViewController *)&v60 initialConstraints];
  }

  return v3;
}

- (void)setupSubviews
{
  v30.receiver = self;
  v30.super_class = RoutePlanningOptionsViewController;
  [(PreferencesValuesContaineeViewController *)&v30 setupSubviews];
  v3 = [(ContaineeViewController *)self contentView];
  [v3 setAccessibilityIdentifier:@"RoutePlanningOptionsContentView"];

  v4 = [[_TtC4Maps19ModalCardHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(RoutePlanningOptionsViewController *)self setModalHeaderView:v4];

  v5 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
  [v5 setAccessibilityIdentifier:@"RoutePlanningOptionsHeader"];

  v6 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(RoutePlanningOptionsViewController *)self dataCoordinator];
  v8 = -[RoutePlanningOptionsViewController _titleForTransportType:](self, "_titleForTransportType:", [v7 transportType]);
  v9 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
  [v9 setTitle:v8];

  v10 = [(ContaineeViewController *)self headerView];
  v11 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
  [v10 addSubview:v11];

  v12 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
  v13 = [(ContaineeViewController *)self headerView];
  LODWORD(v14) = 1148846080;
  v15 = [v12 _maps_constraintsEqualToEdgesOfView:v13 priority:v14];
  v16 = [v15 allConstraints];
  [NSLayoutConstraint activateConstraints:v16];

  v17 = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
  LOBYTE(v12) = [v17 automaticallySaveChanges];

  if ((v12 & 1) == 0)
  {
    v18 = [MapsThemeButton buttonWithType:1];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Cancel [Route Options value:Catalyst]" table:{@"localized string not found", 0}];
    [v18 setTitle:v20 forState:0];

    [v18 setAccessibilityIdentifier:@"CancelButton"];
    [v18 addTarget:self action:"_didTapCancelButton:" forControlEvents:64];
    v21 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
    [v21 setLeadingButton:v18];

    v22 = [MapsThemeButton buttonWithType:1];
    [(RoutePlanningOptionsViewController *)self setApplyButton:v22];

    v23 = [(RoutePlanningOptionsViewController *)self applyButton];
    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"Apply [Route Options value:Catalyst]" table:{@"localized string not found", 0}];
    [v23 setTitle:v25 forState:0];

    v26 = [(RoutePlanningOptionsViewController *)self applyButton];
    [v26 setAccessibilityIdentifier:@"ApplyButton"];

    v27 = [(RoutePlanningOptionsViewController *)self applyButton];
    [v27 addTarget:self action:"_didTapDoneButton:" forControlEvents:64];

    v28 = [(RoutePlanningOptionsViewController *)self applyButton];
    v29 = [(RoutePlanningOptionsViewController *)self modalHeaderView];
    [v29 setTrailingButton:v28];

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
  v5 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [v5 setBackgroundColor:v4];

  v6 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [RoutePlanningOptionsDataSource registerCellsInCollectionView:v6];

  self->_didStartObservingCollectionViewBounds = 1;
  v7 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [v7 addObserver:self forKeyPath:@"contentSize" options:3 context:&unk_10195E360];

  if (sub_10000FA08(self) == 5)
  {
    v8 = [(PreferencesValuesContaineeViewController *)self collectionView];
    [v8 _setHiddenPocketEdges:15];

    v9 = +[UIColor clearColor];
    v10 = [(RoutePlanningOptionsViewController *)self view];
    [v10 setBackgroundColor:v9];

    [(RoutePlanningOptionsViewController *)self _updatePreferredContentSize];
  }

  else if ((_UISolariumEnabled() & 1) == 0)
  {
    v11 = +[UIColor systemBackgroundColor];
    v12 = [(RoutePlanningOptionsViewController *)self view];
    [v12 setBackgroundColor:v11];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (RoutePlanningOptionsViewController)initWithDataCoordinator:(id)a3 automaticallySaveChanges:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v23.receiver = self;
  v23.super_class = RoutePlanningOptionsViewController;
  v10 = [(RoutePlanningOptionsViewController *)&v23 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_dataCoordinator, v8);
    v12 = objc_alloc_init([objc_opt_class() _dataSourceClass]);
    [(PreferenceValuesDataSource *)v12 setDelegate:v11];
    [(PreferenceValuesDataSource *)v12 setDataCoordinator:v8];
    [(PreferenceValuesDataSource *)v12 setAutomaticallySaveChanges:v6];
    if (([(PreferenceValuesDataSource *)v12 automaticallySaveChanges]& 1) == 0)
    {
      v11->_didStartObservingUnsavedChanges = 1;
      [(PreferenceValuesDataSource *)v12 addObserver:v11 forKeyPath:@"hasUnsavedChanges" options:1 context:&unk_10195E358];
    }

    dataSource = v11->super._dataSource;
    v11->super._dataSource = v12;
    v14 = v12;

    v15 = [(ContaineeViewController *)v11 cardPresentationController];
    [v15 setPresentedModally:1];

    v16 = [(ContaineeViewController *)v11 cardPresentationController];
    [v16 setAllowsSwipeToDismiss:0];

    v17 = [(ContaineeViewController *)v11 cardPresentationController];
    [v17 setDefaultContaineeLayout:5];

    v18 = [(ContaineeViewController *)v11 cardPresentationController];
    [v18 setTakesAvailableHeight:1];

    v19 = [(ContaineeViewController *)v11 cardPresentationController];
    [v19 setHideGrabber:1];

    v20 = [v9 copy];
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
    v3 = [(RoutePlanningOptionsViewController *)self routeOptionsDataSource];
    [v3 removeObserver:self forKeyPath:@"hasUnsavedChanges" context:&unk_10195E358];
  }

  if (self->_didStartObservingCollectionViewBounds)
  {
    self->_didStartObservingCollectionViewBounds = 0;
    v4 = [(PreferencesValuesContaineeViewController *)self collectionView];
    [v4 removeObserver:self forKeyPath:@"bounds" context:&unk_10195E360];
  }

  v5.receiver = self;
  v5.super_class = RoutePlanningOptionsViewController;
  [(RoutePlanningOptionsViewController *)&v5 dealloc];
}

@end