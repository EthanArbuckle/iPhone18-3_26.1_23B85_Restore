@interface MapViewModeGridSelector
- (MapViewModeGridSelector)init;
- (MapViewModeGridSelectorDelegate)delegate;
- (SettingsController)settingsController;
- (id)_buttonViewModelForViewMode:(int64_t)mode;
- (void)_createSatelliteMenu;
- (void)_createSubviews;
- (void)_updateState;
- (void)mapViewModeButtonViewTapped:(id)tapped;
- (void)setSettingsController:(id)controller;
- (void)toggleLabels;
- (void)toggleTraffic;
- (void)validateCommand:(id)command;
@end

@implementation MapViewModeGridSelector

- (SettingsController)settingsController
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);

  return WeakRetained;
}

- (MapViewModeGridSelectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)toggleTraffic
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);
  [WeakRetained toggleTraffic];

  [(MapViewModeGridSelector *)self refresh];
}

- (void)toggleLabels
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);
  [WeakRetained toggleLabels];

  [(MapViewModeGridSelector *)self refresh];
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == "toggleLabels")
  {
    WeakRetained = objc_loadWeakRetained(&self->_settingsController);
    showsLabels = [WeakRetained showsLabels];
LABEL_6:
    [commandCopy setState:showsLabels];

    goto LABEL_7;
  }

  if ([commandCopy action] == "toggleTraffic")
  {
    WeakRetained = objc_loadWeakRetained(&self->_settingsController);
    showsLabels = [WeakRetained showsTraffic];
    goto LABEL_6;
  }

  v7.receiver = self;
  v7.super_class = MapViewModeGridSelector;
  [(MapViewModeGridSelector *)&v7 validateCommand:commandCopy];
LABEL_7:
}

- (void)mapViewModeButtonViewTapped:(id)tapped
{
  gridView = self->_gridView;
  tappedCopy = tapped;
  buttonViewModels = [(MapViewModeGridView *)gridView buttonViewModels];
  viewModel = [tappedCopy viewModel];

  v8 = [buttonViewModels indexOfObject:viewModel];
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);
  selectableViewModes = [WeakRetained selectableViewModes];
  v11 = [selectableViewModes count];

  if (v8 >= v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  v13 = objc_loadWeakRetained(&self->_settingsController);
  selectableViewModes2 = [v13 selectableViewModes];
  v15 = [selectableViewModes2 objectAtIndexedSubscript:v12];
  integerValue = [v15 integerValue];

  v17 = sub_100798408();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = integerValue + 1;
    if (integerValue + 1) < 9 && ((0x1DFu >> v18))
    {
      v19 = *(&off_10163AB30 + v18);
    }

    else
    {
      v19 = [NSString stringWithFormat:@"<Unknown: %ld>", integerValue];
    }

    *buf = 138543362;
    v22 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "User selected map mode %{public}@", buf, 0xCu);
  }

  v20 = objc_loadWeakRetained(&self->_delegate);
  [v20 mapViewModeGridSelector:self selectedMapMode:integerValue];
}

- (id)_buttonViewModelForViewMode:(int64_t)mode
{
  v5 = 0;
  if (mode > 2)
  {
    if (mode != 3)
    {
      v6 = 0;
      v7 = 0;
      if (mode != 7)
      {
        goto LABEL_23;
      }

      v15 = +[NSBundle mainBundle];
      v6 = [v15 localizedStringForKey:@"[Settings] Driving" value:@"localized string not found" table:0];

      v11 = 0;
      v5 = 0;
      v13 = 1;
      v12 = 1;
      v14 = @"DrivingMap";
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    v25 = +[NSBundle mainBundle];
    v6 = [v25 localizedStringForKey:@"[Settings] Transit" value:@"localized string not found" table:0];

    v11 = 0;
    v5 = 0;
    v13 = 1;
    v12 = 1;
    v14 = @"TransitMap";
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_22:
    v7 = 0;
    goto LABEL_23;
  }

  if (!mode)
  {
    v16 = +[NSBundle mainBundle];
    v6 = [v16 localizedStringForKey:@"[Settings] Explore Map" value:@"localized string not found" table:0];

    v13 = 0;
    v5 = 0;
    v14 = @"StandardMap";
    v12 = 1;
    v11 = @"StandardMapWide";
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v6 = 0;
  v7 = 0;
  if (mode != 2)
  {
    goto LABEL_23;
  }

  v8 = +[NSBundle mainBundle];
  v6 = [v8 localizedStringForKey:@"[Settings] Satellite" value:@"localized string not found" table:0];

  v5 = self->_satelliteMenu;
  v9 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v9 isUsingOfflineMaps];

  v11 = 0;
  v12 = isUsingOfflineMaps ^ 1;
  v13 = 1;
  v14 = @"SatelliteMap";
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_11:
  v27 = v11;
  v28 = v12;
  v17 = v13;
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);
  selectedViewMode = [WeakRetained selectedViewMode];

  v20 = [MapViewModeGridButtonViewModel alloc];
  v21 = [UIImage imageNamed:v14];
  if (v17)
  {
    if (selectedViewMode == mode)
    {
      v22 = v5;
    }

    else
    {
      v22 = 0;
    }

    v7 = [(MapViewModeGridButtonViewModel *)v20 initWithTitle:v6 image:v21 wideImage:0 enabled:v28 selected:selectedViewMode == mode overflowMenu:v22 delegate:self axIdentifier:v14];
  }

  else
  {
    v23 = [UIImage imageNamed:v27];
    if (selectedViewMode == mode)
    {
      v24 = v5;
    }

    else
    {
      v24 = 0;
    }

    v7 = [(MapViewModeGridButtonViewModel *)v20 initWithTitle:v6 image:v21 wideImage:v23 enabled:v28 selected:selectedViewMode == mode overflowMenu:v24 delegate:self axIdentifier:v14];
  }

LABEL_23:

  return v7;
}

- (void)_createSatelliteMenu
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Settings] Show Labels" value:@"localized string not found" table:0];
  v5 = [UICommand commandWithTitle:v4 image:0 action:"toggleLabels" propertyList:0];

  [v5 setAccessibilityIdentifier:@"ShowLabelsButton"];
  [v5 setState:1];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"[Settings] Show Traffic" value:@"localized string not found" table:0];
  v8 = [UICommand commandWithTitle:v7 image:0 action:"toggleTraffic" propertyList:0];

  [v8 setAccessibilityIdentifier:@"ShowTrafficButton"];
  [v8 setState:1];
  v12[0] = v5;
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [UIMenu menuWithChildren:v9];
  satelliteMenu = self->_satelliteMenu;
  self->_satelliteMenu = v10;
}

- (void)_createSubviews
{
  v3 = [[MapViewModeGridView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  gridView = self->_gridView;
  self->_gridView = v3;

  [(MapViewModeGridView *)self->_gridView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapViewModeGridView *)self->_gridView setDirectionalLayoutMargins:8.0, 16.0, 12.0, 16.0];
  [(MapViewModeGridSelector *)self addSubview:self->_gridView];
  topAnchor = [(MapViewModeGridView *)self->_gridView topAnchor];
  topAnchor2 = [(MapViewModeGridSelector *)self topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[0] = v20;
  leadingAnchor = [(MapViewModeGridView *)self->_gridView leadingAnchor];
  leadingAnchor2 = [(MapViewModeGridSelector *)self leadingAnchor];
  LODWORD(v5) = 1144766464;
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0 priority:v5];
  v23[1] = v17;
  trailingAnchor = [(MapViewModeGridView *)self->_gridView trailingAnchor];
  trailingAnchor2 = [(MapViewModeGridSelector *)self trailingAnchor];
  LODWORD(v8) = 1144766464;
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0 priority:v8];
  v23[2] = v9;
  centerXAnchor = [(MapViewModeGridView *)self->_gridView centerXAnchor];
  centerXAnchor2 = [(MapViewModeGridSelector *)self centerXAnchor];
  v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v23[3] = v12;
  bottomAnchor = [(MapViewModeGridView *)self->_gridView bottomAnchor];
  bottomAnchor2 = [(MapViewModeGridSelector *)self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[4] = v15;
  v16 = [NSArray arrayWithObjects:v23 count:5];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)setSettingsController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_settingsController, obj);
    [(MapViewModeGridSelector *)self _updateState];
    v5 = obj;
  }
}

- (void)_updateState
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);
  selectableViewModes = [WeakRetained selectableViewModes];

  v6 = [selectableViewModes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(selectableViewModes);
        }

        v10 = -[MapViewModeGridSelector _buttonViewModelForViewMode:](self, "_buttonViewModelForViewMode:", [*(*(&v11 + 1) + 8 * v9) integerValue]);
        if (v10)
        {
          [v3 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [selectableViewModes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(MapViewModeGridView *)self->_gridView setButtonViewModels:v3];
}

- (MapViewModeGridSelector)init
{
  v7.receiver = self;
  v7.super_class = MapViewModeGridSelector;
  v2 = [(MapViewModeGridSelector *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(MapViewModeGridSelector *)v2 _createSubviews];
    [(MapViewModeGridSelector *)v3 _createSatelliteMenu];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_updateState" name:@"MKMapViewDidChangeMapTypeNotification" object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v3 selector:"_updateState" name:@"UsingOfflineMapsStateChangedNotification" object:0];
  }

  return v3;
}

@end