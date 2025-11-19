@interface SettingsTableViewController
- (BOOL)_usesCompactMetrics;
- (SettingsController)settingsController;
- (SettingsTableViewController)init;
- (double)desiredHeight;
- (id)_attributionCell;
- (id)_cellForMapModeSelector;
- (id)_cellForMenuItem:(int64_t)a3;
- (id)_cellWithIdentifier:(id)a3 setupBlock:(id)a4;
- (id)_displayableSectionsInTableView;
- (id)_environmentInfoCell;
- (id)_mapModeSelector;
- (id)_menuCellWithText:(id)a3 identifier:(id)a4;
- (id)_menuItemsInSection:(int64_t)a3;
- (id)_menuItemsPerSections:(id)a3;
- (id)indexPathForMenuItem:(int64_t)a3;
- (id)mapAttributionButton;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_sectionAtIndex:(int64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_consumeUpdatedUnpairedVehicles:(id)a3;
- (void)_consumeUpdatedVirtualGarage:(id)a3;
- (void)_environmnentNotification;
- (void)_handleSelectedMenuItem:(int64_t)a3;
- (void)_reloadMyVehiclesVisibility;
- (void)_updateTableViewCells;
- (void)dealloc;
- (void)mapViewModeGridSelector:(id)a3 selectedMapMode:(int64_t)a4;
- (void)reloadData;
- (void)setupConstraints;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateTheme;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation SettingsTableViewController

- (SettingsController)settingsController
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);

  return WeakRetained;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = -[SettingsTableViewController _sectionAtIndex:](self, "_sectionAtIndex:", [v6 section]);
  if (v7 != -1)
  {
    menuItemsPerSections = self->_menuItemsPerSections;
    v9 = [NSNumber numberWithInteger:v7];
    v10 = [(NSDictionary *)menuItemsPerSections objectForKeyedSubscript:v9];

    v11 = [v6 row];
    if (v11 < [v10 count])
    {
      v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
      v13 = [v12 integerValue];

      [(SettingsTableViewController *)self _handleSelectedMenuItem:v13];
    }
  }

  [v14 deselectRowAtIndexPath:v6 animated:1];
}

- (void)_handleSelectedMenuItem:(int64_t)a3
{
  if (a3 == 3)
  {
    v3 = [(SettingsTableViewController *)self settingsController];
    [v3 proceedToEnvironmentsSelector];
  }

  else
  {
    if (a3 != 2)
    {
      return;
    }

    v3 = [(SettingsTableViewController *)self settingsController];
    [v3 presentAttributions];
  }
}

- (void)mapViewModeGridSelector:(id)a3 selectedMapMode:(int64_t)a4
{
  v6 = [(SettingsTableViewController *)self settingsController];
  v7 = [v6 selectedViewMode];

  if (v7 != a4)
  {
    v8 = [(SettingsTableViewController *)self settingsController];
    [v8 setSelectedViewMode:a4 animated:1];

    v9 = [(SettingsTableViewController *)self settingsController];
    v10 = [v9 mapViewMode];

    v11 = +[MKMapService sharedService];
    v12 = v11;
    if (v10 > 7)
    {
      v13 = 0;
    }

    else
    {
      v13 = qword_101215550[v10];
    }

    if (((v13 - 1) & 0xFFFFFFFFFFFFFFFALL) == 0)
    {
      v13 = 2;
    }

    if (v13 > 7)
    {
      v14 = 0;
    }

    else
    {
      v14 = dword_101215424[v13];
    }

    if (v10 + 1 > 7)
    {
      v15 = 1;
    }

    else
    {
      v15 = dword_101215C80[v10 + 1];
    }

    [v11 captureUserAction:v14 onTarget:601 eventValue:0 mapRegion:0 zoomLevel:v15 mapType:0.0];

    [(SettingsTableViewController *)self reloadData];
  }
}

- (id)_mapModeSelector
{
  mapModeSelector = self->_mapModeSelector;
  if (!mapModeSelector)
  {
    v4 = objc_alloc_init(MapViewModeGridSelector);
    v5 = self->_mapModeSelector;
    self->_mapModeSelector = v4;

    [(MapViewModeGridSelector *)self->_mapModeSelector setDelegate:self];
    v6 = [(SettingsTableViewController *)self settingsController];
    [(MapViewModeGridSelector *)self->_mapModeSelector setSettingsController:v6];

    [(MapViewModeGridSelector *)self->_mapModeSelector setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(MapViewModeGridSelector *)self->_mapModeSelector heightAnchor];
    v8 = [v7 constraintEqualToConstant:260.0];
    compactHeightConstraint = self->_compactHeightConstraint;
    self->_compactHeightConstraint = v8;

    [(NSLayoutConstraint *)self->_compactHeightConstraint setActive:self->_useCompactVerticalLayout];
    mapModeSelector = self->_mapModeSelector;
  }

  return mapModeSelector;
}

- (void)updateTheme
{
  v3 = [(SettingsTableViewController *)self tableView];
  v4 = [v3 visibleCells];

  if ([v4 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_displaySections;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v13 + 1) + 8 * v10) unsignedIntegerValue] == 2)
          {
            v11 = [(SettingsTableViewController *)self tableView];
            v12 = [NSIndexSet indexSetWithIndex:v8];
            [v11 reloadSections:v12 withRowAnimation:5];
          }

          ++v8;
          v10 = v10 + 1;
        }

        while (v7 != v10);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[SettingsTableViewController _sectionAtIndex:](self, "_sectionAtIndex:", [v5 section]);
  if (v6 == -1)
  {
    v13 = 0;
  }

  else
  {
    menuItemsPerSections = self->_menuItemsPerSections;
    v8 = [NSNumber numberWithInteger:v6];
    v9 = [(NSDictionary *)menuItemsPerSections objectForKeyedSubscript:v8];

    v10 = [v5 row];
    if (v10 >= [v9 count])
    {
      v13 = 0;
    }

    else
    {
      v11 = [v9 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
      v12 = [v11 integerValue];

      v13 = [(SettingsTableViewController *)self _cellForMenuItem:v12];
    }
  }

  return v13;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 updateBeforeDisplayWithTextAlignment:4];
  }
}

- (id)mapAttributionButton
{
  v3 = [MapsThemeButton buttonWithType:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v3 titleLabel];
  [v4 setNumberOfLines:0];

  v5 = [v3 titleLabel];
  [v5 setTextAlignment:4];

  v6 = [(SettingsTableViewController *)self settingsController];
  [v3 addTarget:v6 action:"presentAttributions" forControlEvents:64];

  return v3;
}

- (id)indexPathForMenuItem:(int64_t)a3
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(SettingsTableViewController *)self tableView];
  v4 = [v3 visibleCells];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 textLabel];
        v11 = [v10 text];
        v12 = [(SettingsTableViewController *)self _cellForMenuItem:a3];
        v13 = [v12 textLabel];
        v14 = [v13 text];
        v15 = [v11 isEqual:v14];

        if (v15)
        {
          v17 = [(SettingsTableViewController *)self tableView];
          v16 = [v17 indexPathForCell:v9];

          goto LABEL_11;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)_cellForMenuItem:(int64_t)a3
{
  if (a3 == 3)
  {
    v3 = [(SettingsTableViewController *)self _environmentInfoCell];
  }

  else if (a3 == 2)
  {
    v3 = [(SettingsTableViewController *)self _attributionCell];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(SettingsTableViewController *)self _cellForMapModeSelector];
  }

  return v3;
}

- (id)_environmentInfoCell
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"EnableEnvironmentSelectionInSettings"];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B1B580;
  v13[3] = &unk_1016384E0;
  v14 = v4;
  v5 = [(SettingsTableViewController *)self _cellWithIdentifier:@"SettingsTableViewCell_Environment" setupBlock:v13];
  v6 = +[GEOResourceManifestManager modernManager];
  v7 = [v6 activeTileGroup];
  v8 = [v7 releaseInfo];

  v9 = @"Unknown";
  if (v8)
  {
    v9 = v8;
  }

  v10 = [NSString stringWithFormat:@"Environment: %@", v9];
  v11 = [v5 textLabel];
  [v11 setText:v10];

  return v5;
}

- (id)_cellForMapModeSelector
{
  v3 = [(SettingsTableViewController *)self _mapModeSelector];
  [v3 refresh];
  v4 = [(SettingsTableViewController *)self _cellWithIdentifier:@"SettingsTableViewCell_SegementedControl" setupBlock:0];
  v5 = [v3 superview];
  v6 = [v4 contentView];

  if (v5 != v6)
  {
    [v4 setSelectionStyle:0];
    v7 = [v4 contentView];
    [v7 addSubview:v3];

    v24 = [v3 topAnchor];
    v25 = [v4 contentView];
    v23 = [v25 topAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v20 = [v3 bottomAnchor];
    v21 = [v4 contentView];
    v19 = [v21 bottomAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v26[1] = v18;
    v17 = [v3 leadingAnchor];
    v8 = [v4 contentView];
    v9 = [v8 leadingAnchor];
    v10 = [v17 constraintEqualToAnchor:v9];
    v26[2] = v10;
    v11 = [v3 trailingAnchor];
    v12 = [v4 contentView];
    v13 = [v12 trailingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    v26[3] = v14;
    v15 = [NSArray arrayWithObjects:v26 count:4];
    [NSLayoutConstraint activateConstraints:v15];
  }

  return v4;
}

- (id)_cellWithIdentifier:(id)a3 setupBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SettingsTableViewController *)self tableView];
  v9 = [v8 dequeueReusableCellWithIdentifier:v6];

  if (!v9)
  {
    v9 = [[SettingsTableViewCell alloc] initWithReuseIdentifier:v6];
  }

  if (v7)
  {
    v7[2](v7, v9);
  }

  return v9;
}

- (id)_attributionCell
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B1BA74;
  v4[3] = &unk_1016384C0;
  v4[4] = self;
  v2 = [(SettingsTableViewController *)self _cellWithIdentifier:@"SettingsTableViewCell_Attribution" setupBlock:v4];
  [v2 setAccessibilityIdentifier:@"SettingsAttributionCell"];

  return v2;
}

- (id)_menuCellWithText:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = [(SettingsTableViewController *)self _cellWithIdentifier:a4 setupBlock:0];
  v8 = [v7 textLabel];
  [v8 setText:v6];

  v9 = [v7 textLabel];
  [v9 setNumberOfLines:0];

  [v7 setAccessoryType:0];
  [v7 setUserInteractionEnabled:1];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(SettingsTableViewController *)self _sectionAtIndex:a4];
  if (v5 == -1)
  {
    return 0;
  }

  menuItemsPerSections = self->_menuItemsPerSections;
  v7 = [NSNumber numberWithInteger:v5];
  v8 = [(NSDictionary *)menuItemsPerSections objectForKeyedSubscript:v7];
  v9 = [v8 count];

  return v9;
}

- (id)_menuItemsPerSections:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = -[SettingsTableViewController _menuItemsInSection:](self, "_menuItemsInSection:", [v11 integerValue]);
        if ([v12 count])
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (id)_menuItemsInSection:(int64_t)a3
{
  v4 = qword_10195E6D0;
  v5 = [NSNumber numberWithInteger:?];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 mutableCopy];

  if (a3 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 copy];
  }

  return v8;
}

- (int64_t)_sectionAtIndex:(int64_t)a3
{
  if (a3 < 0 || [(NSArray *)self->_displaySections count]<= a3)
  {
    return -1;
  }

  v5 = [(NSArray *)self->_displaySections objectAtIndexedSubscript:a3];
  v6 = [v5 integerValue];

  return v6;
}

- (id)_displayableSectionsInTableView
{
  v3 = [qword_10195E6C8 mutableCopy];
  v4 = [(SettingsTableViewController *)self _menuItemsInSection:0];
  v5 = [v4 count];

  if (!v5)
  {
    [v3 removeObject:&off_1016E8708];
  }

  v6 = [(SettingsTableViewController *)self settingsController];
  v7 = [v6 showsEnvironments];

  if ((v7 & 1) == 0)
  {
    [v3 removeObject:&off_1016E8720];
  }

  v8 = [v3 copy];

  return v8;
}

- (double)desiredHeight
{
  v2 = [(SettingsTableViewController *)self tableView];
  [v2 contentSize];
  v4 = v3;

  return v4;
}

- (BOOL)_usesCompactMetrics
{
  v2 = [(SettingsTableViewController *)self traitCollection];
  v3 = [v2 horizontalSizeClass] == 1 && objc_msgSend(v2, "verticalSizeClass") == 1;

  return v3;
}

- (void)_updateTableViewCells
{
  p_lastDisplaySections = &self->_lastDisplaySections;
  if (!self->_lastDisplaySections)
  {
    return;
  }

  v2 = self;
  if (!self->_lastMenuItemsPerSections)
  {
    return;
  }

  v42 = +[NSMutableArray array];
  v41 = +[NSMutableArray array];
  v32 = +[NSMutableArray array];
  v35 = +[NSMutableIndexSet indexSet];
  v34 = +[NSMutableIndexSet indexSet];
  v33 = +[NSMutableIndexSet indexSet];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = qword_10195E6C8;
  v38 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v38)
  {
    goto LABEL_34;
  }

  v37 = *v49;
  do
  {
    for (i = 0; i != v38; i = i + 1)
    {
      if (*v49 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v48 + 1) + 8 * i);
      v5 = [qword_10195E6D0 objectForKeyedSubscript:v4];
      v6 = [(NSDictionary *)v2->_menuItemsPerSections objectForKeyedSubscript:v4];
      v7 = [(NSDictionary *)v2->_lastMenuItemsPerSections objectForKeyedSubscript:v4];
      if (![v6 count] && objc_msgSend(v7, "count"))
      {
        v20 = [(NSArray *)*p_lastDisplaySections indexOfObject:v4];
        v21 = v35;
        goto LABEL_31;
      }

      if ([v6 count] && !objc_msgSend(v7, "count"))
      {
        v20 = [(NSArray *)v2->_displaySections indexOfObject:v4];
        v21 = v34;
        goto LABEL_31;
      }

      v39 = v5;
      v40 = i;
      v8 = v2;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v45;
        do
        {
          for (j = 0; j != v11; j = j + 1)
          {
            if (*v45 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v44 + 1) + 8 * j);
            if (([v6 containsObject:v14] & 1) == 0 && objc_msgSend(v7, "containsObject:", v14))
            {
              v15 = [v7 indexOfObject:v14];
              v17 = v42;
              p_displaySections = p_lastDisplaySections;
LABEL_22:
              v18 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v15, [*p_displaySections indexOfObject:v4]);
              [v17 addObject:v18];

              continue;
            }

            if ([v6 containsObject:v14] && (objc_msgSend(v7, "containsObject:", v14) & 1) == 0)
            {
              v15 = [v6 indexOfObject:v14];
              p_displaySections = &v8->_displaySections;
              v17 = v41;
              goto LABEL_22;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v11);
      }

      v2 = v8;
      v5 = v39;
      i = v40;
      if ([v4 isEqual:&off_1016E8738])
      {
        v19 = [(NSArray *)*p_lastDisplaySections indexOfObject:v4];
        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = v19;
          v21 = v33;
LABEL_31:
          [v21 addIndex:v20];
        }
      }
    }

    v38 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  }

  while (v38);
LABEL_34:

  if ([v42 count] || objc_msgSend(v41, "count") || objc_msgSend(v32, "count") || objc_msgSend(v34, "count") || objc_msgSend(v35, "count"))
  {
    v22 = [(SettingsTableViewController *)v2 tableView];
    v23 = [v22 superview];

    if (v23)
    {
      v24 = [(SettingsTableViewController *)v2 tableView];
      [v24 beginUpdates];

      if ([v42 count])
      {
        v25 = [(SettingsTableViewController *)v2 tableView];
        [v25 deleteRowsAtIndexPaths:v42 withRowAnimation:0];
      }

      if ([v41 count])
      {
        v26 = [(SettingsTableViewController *)v2 tableView];
        [v26 insertRowsAtIndexPaths:v41 withRowAnimation:0];
      }

      if ([v32 count])
      {
        v27 = [(SettingsTableViewController *)v2 tableView];
        [v27 reloadRowsAtIndexPaths:v32 withRowAnimation:100];
      }

      if ([v34 count])
      {
        v28 = [(SettingsTableViewController *)v2 tableView];
        [v28 insertSections:v34 withRowAnimation:0];
      }

      if ([v35 count])
      {
        v29 = [(SettingsTableViewController *)v2 tableView];
        [v29 deleteSections:v35 withRowAnimation:0];
      }

      if ([v33 count])
      {
        v30 = [(SettingsTableViewController *)v2 tableView];
        [v30 reloadSections:v33 withRowAnimation:100];
      }

      v31 = [(SettingsTableViewController *)v2 tableView];
      [v31 endUpdates];
    }
  }
}

- (void)reloadData
{
  if ([(SettingsTableViewController *)self isViewLoaded])
  {
    if (!self->_isReloadingData)
    {
      self->_isReloadingData = 1;
      v3 = [(SettingsTableViewController *)self _displayableSectionsInTableView];
      displaySections = self->_displaySections;
      self->_displaySections = v3;

      v5 = [(SettingsTableViewController *)self _menuItemsPerSections:self->_displaySections];
      menuItemsPerSections = self->_menuItemsPerSections;
      self->_menuItemsPerSections = v5;

      [(SettingsTableViewController *)self _updateTableViewCells];
      v7 = [(NSArray *)self->_displaySections copy];
      lastDisplaySections = self->_lastDisplaySections;
      self->_lastDisplaySections = v7;

      v9 = [(NSDictionary *)self->_menuItemsPerSections copy];
      lastMenuItemsPerSections = self->_lastMenuItemsPerSections;
      self->_lastMenuItemsPerSections = v9;

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 postNotificationName:@"SettingsTableViewControllerDidReloadDataNotification" object:self];

      self->_isReloadingData = 0;
    }
  }
}

- (void)_environmnentNotification
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"EnableEnvironmentSelectionInSettings"];

  if (v4)
  {
    v5 = [(SettingsTableViewController *)self tableView];
    [v5 reloadData];
  }
}

- (void)_reloadMyVehiclesVisibility
{
  shouldShowMyVehicles = self->_shouldShowMyVehicles;
  if (MapsFeature_IsEnabled_Alberta())
  {
    v4 = 1;
    self->_shouldShowMyVehicles = 1;
  }

  else
  {
    v5 = [(VGVirtualGarage *)self->_virtualGarage vehicles];
    if ([v5 count])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSArray *)self->_unpairedVehicles count]!= 0;
    }

    self->_shouldShowMyVehicles = v6;

    v4 = self->_shouldShowMyVehicles;
  }

  if (shouldShowMyVehicles != v4 && [(SettingsTableViewController *)self isViewLoaded])
  {
    v7 = sub_100022C48();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = self->_shouldShowMyVehicles;
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Settings TableVC, shouldShowMyVehicles: %d, will update UI.", v9, 8u);
    }

    [(SettingsTableViewController *)self reloadData];
  }
}

- (void)_consumeUpdatedUnpairedVehicles:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B1CD0C;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_consumeUpdatedVirtualGarage:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B1CE40;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v5 viewDidAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"SettingsTableViewControllerDidAppearNotification" object:self];

  [(SettingsTableViewController *)self _reloadMyVehiclesVisibility];
  [(SettingsTableViewController *)self reloadData];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(SettingsTableViewController *)self desiredHeight];
  [(SettingsTableViewController *)self setPreferredContentSize:320.0, v8];
  [(SettingsTableViewController *)self reloadData];
  v9.receiver = self;
  v9.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v14 viewDidLayoutSubviews];
  v3 = [(SettingsTableViewController *)self tableView];
  [v3 frame];
  v5 = v4;

  if (v5 > 0.0)
  {
    [(SettingsTableViewController *)self desiredHeight];
    [(SettingsTableViewController *)self setPreferredContentSize:320.0, v6];
  }

  v7 = [(SettingsTableViewController *)self tableView];
  [v7 frame];
  v9 = v8;

  v10 = [(SettingsTableViewController *)self tableView];
  [v10 contentSize];
  v12 = v11;

  v13 = [(SettingsTableViewController *)self tableView];
  [v13 setScrollEnabled:v12 > v9];
}

- (void)willMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v6 willMoveToParentViewController:?];
  if (a3)
  {
    [(SettingsTableViewController *)self desiredHeight];
    [(SettingsTableViewController *)self setPreferredContentSize:320.0, v5];
    [(SettingsTableViewController *)self reloadData];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v6 viewWillAppear:a3];
  v4 = +[UIColor clearColor];
  v5 = [(SettingsTableViewController *)self tableView];
  [v5 setBackgroundColor:v4];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v12 viewDidLoad];
  v3 = [(SettingsTableViewController *)self tableView];
  [v3 setOpaque:0];
  v4 = [v3 layer];
  [v4 setAllowsGroupOpacity:0];

  [v3 _setHeaderAndFooterViewsFloat:0];
  v5 = objc_opt_new();
  [v3 setTableFooterView:v5];

  [v3 setSeparatorStyle:0];
  [v3 setScrollEnabled:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SettingsTableViewController *)self setupConstraints];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"SettingsTableViewCell_SegementedControl"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"SettingsTableViewCell_ViewModeMenuItem"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"SettingsTableViewCell_MenuItem"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"SettingsTableViewCell_Attribution"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"SettingsTableViewCell_Spacer"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"SettingsTableViewCell_Environment"];
  [(SettingsTableViewController *)self reloadData];
  [(SettingsTableViewController *)self desiredHeight];
  [(SettingsTableViewController *)self setPreferredContentSize:320.0, v6];
  objc_initWeak(&location, self);
  v7 = GEOActiveTileGroupChangedNotification;
  v8 = &_dispatch_main_q;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100B1D428;
  v9[3] = &unk_101658C08;
  objc_copyWeak(&v10, &location);
  notify_register_dispatch(v7, &self->_notifyToken, &_dispatch_main_q, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)setupConstraints
{
  v23 = [(SettingsTableViewController *)self tableView];
  v21 = [v23 leadingAnchor];
  v22 = [(SettingsTableViewController *)self view];
  v20 = [v22 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v24[0] = v19;
  v18 = [(SettingsTableViewController *)self tableView];
  v16 = [v18 trailingAnchor];
  v17 = [(SettingsTableViewController *)self view];
  v15 = [v17 trailingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v24[1] = v14;
  v13 = [(SettingsTableViewController *)self tableView];
  v3 = [v13 bottomAnchor];
  v4 = [(SettingsTableViewController *)self view];
  v5 = [v4 bottomAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v24[2] = v6;
  v7 = [(SettingsTableViewController *)self tableView];
  v8 = [v7 topAnchor];
  v9 = [(SettingsTableViewController *)self view];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];

  [NSLayoutConstraint activateConstraints:v12];
}

- (void)dealloc
{
  notify_cancel(self->_notifyToken);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4 = +[VGVirtualGarageService sharedService];
  [v4 unregisterObserver:self];

  v5.receiver = self;
  v5.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v5 dealloc];
}

- (SettingsTableViewController)init
{
  v14.receiver = self;
  v14.super_class = SettingsTableViewController;
  v2 = [(SettingsTableViewController *)&v14 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"reloadData" name:@"SettingsControllerDidChange" object:0];

    if (MapsFeature_IsEnabled_Alberta())
    {
      v2->_shouldShowMyVehicles = 1;
    }

    else if (MapsFeature_IsEnabled_EVRouting())
    {
      objc_initWeak(&location, v2);
      v5 = +[VGVirtualGarageService sharedService];
      [v5 registerObserver:v2];

      v6 = +[VGVirtualGarageService sharedService];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100B1D9B0;
      v11[3] = &unk_101655840;
      objc_copyWeak(&v12, &location);
      [v6 virtualGarageGetGarageWithReply:v11];

      v7 = +[VGVirtualGarageService sharedService];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100B1DAA4;
      v9[3] = &unk_10165F290;
      objc_copyWeak(&v10, &location);
      [v7 virtualGarageGetListOfUnpairedVehiclesWithReply:v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

@end