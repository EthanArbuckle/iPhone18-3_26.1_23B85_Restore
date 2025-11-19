@interface MapViewModeGridSelector
- (MapViewModeGridSelector)init;
- (MapViewModeGridSelectorDelegate)delegate;
- (SettingsController)settingsController;
- (id)_buttonViewModelForViewMode:(int64_t)a3;
- (void)_createSatelliteMenu;
- (void)_createSubviews;
- (void)_updateState;
- (void)mapViewModeButtonViewTapped:(id)a3;
- (void)setSettingsController:(id)a3;
- (void)toggleLabels;
- (void)toggleTraffic;
- (void)validateCommand:(id)a3;
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

- (void)validateCommand:(id)a3
{
  v4 = a3;
  if ([v4 action] == "toggleLabels")
  {
    WeakRetained = objc_loadWeakRetained(&self->_settingsController);
    v6 = [WeakRetained showsLabels];
LABEL_6:
    [v4 setState:v6];

    goto LABEL_7;
  }

  if ([v4 action] == "toggleTraffic")
  {
    WeakRetained = objc_loadWeakRetained(&self->_settingsController);
    v6 = [WeakRetained showsTraffic];
    goto LABEL_6;
  }

  v7.receiver = self;
  v7.super_class = MapViewModeGridSelector;
  [(MapViewModeGridSelector *)&v7 validateCommand:v4];
LABEL_7:
}

- (void)mapViewModeButtonViewTapped:(id)a3
{
  gridView = self->_gridView;
  v5 = a3;
  v6 = [(MapViewModeGridView *)gridView buttonViewModels];
  v7 = [v5 viewModel];

  v8 = [v6 indexOfObject:v7];
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);
  v10 = [WeakRetained selectableViewModes];
  v11 = [v10 count];

  if (v8 >= v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  v13 = objc_loadWeakRetained(&self->_settingsController);
  v14 = [v13 selectableViewModes];
  v15 = [v14 objectAtIndexedSubscript:v12];
  v16 = [v15 integerValue];

  v17 = sub_100798408();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v16 + 1;
    if (v16 + 1) < 9 && ((0x1DFu >> v18))
    {
      v19 = *(&off_10163AB30 + v18);
    }

    else
    {
      v19 = [NSString stringWithFormat:@"<Unknown: %ld>", v16];
    }

    *buf = 138543362;
    v22 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "User selected map mode %{public}@", buf, 0xCu);
  }

  v20 = objc_loadWeakRetained(&self->_delegate);
  [v20 mapViewModeGridSelector:self selectedMapMode:v16];
}

- (id)_buttonViewModelForViewMode:(int64_t)a3
{
  v5 = 0;
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      v6 = 0;
      v7 = 0;
      if (a3 != 7)
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

  if (!a3)
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
  if (a3 != 2)
  {
    goto LABEL_23;
  }

  v8 = +[NSBundle mainBundle];
  v6 = [v8 localizedStringForKey:@"[Settings] Satellite" value:@"localized string not found" table:0];

  v5 = self->_satelliteMenu;
  v9 = +[MapsOfflineUIHelper sharedHelper];
  v10 = [v9 isUsingOfflineMaps];

  v11 = 0;
  v12 = v10 ^ 1;
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
  v19 = [WeakRetained selectedViewMode];

  v20 = [MapViewModeGridButtonViewModel alloc];
  v21 = [UIImage imageNamed:v14];
  if (v17)
  {
    if (v19 == a3)
    {
      v22 = v5;
    }

    else
    {
      v22 = 0;
    }

    v7 = [(MapViewModeGridButtonViewModel *)v20 initWithTitle:v6 image:v21 wideImage:0 enabled:v28 selected:v19 == a3 overflowMenu:v22 delegate:self axIdentifier:v14];
  }

  else
  {
    v23 = [UIImage imageNamed:v27];
    if (v19 == a3)
    {
      v24 = v5;
    }

    else
    {
      v24 = 0;
    }

    v7 = [(MapViewModeGridButtonViewModel *)v20 initWithTitle:v6 image:v21 wideImage:v23 enabled:v28 selected:v19 == a3 overflowMenu:v24 delegate:self axIdentifier:v14];
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
  v22 = [(MapViewModeGridView *)self->_gridView topAnchor];
  v21 = [(MapViewModeGridSelector *)self topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v23[0] = v20;
  v19 = [(MapViewModeGridView *)self->_gridView leadingAnchor];
  v18 = [(MapViewModeGridSelector *)self leadingAnchor];
  LODWORD(v5) = 1144766464;
  v17 = [v19 constraintEqualToAnchor:v18 constant:0.0 priority:v5];
  v23[1] = v17;
  v6 = [(MapViewModeGridView *)self->_gridView trailingAnchor];
  v7 = [(MapViewModeGridSelector *)self trailingAnchor];
  LODWORD(v8) = 1144766464;
  v9 = [v6 constraintEqualToAnchor:v7 constant:0.0 priority:v8];
  v23[2] = v9;
  v10 = [(MapViewModeGridView *)self->_gridView centerXAnchor];
  v11 = [(MapViewModeGridSelector *)self centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v23[3] = v12;
  v13 = [(MapViewModeGridView *)self->_gridView bottomAnchor];
  v14 = [(MapViewModeGridSelector *)self bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v23[4] = v15;
  v16 = [NSArray arrayWithObjects:v23 count:5];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)setSettingsController:(id)a3
{
  obj = a3;
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
  v5 = [WeakRetained selectableViewModes];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = -[MapViewModeGridSelector _buttonViewModelForViewMode:](self, "_buttonViewModelForViewMode:", [*(*(&v11 + 1) + 8 * v9) integerValue]);
        if (v10)
        {
          [v3 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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