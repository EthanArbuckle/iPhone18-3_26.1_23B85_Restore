@interface SettingsTableViewController
- (BOOL)_usesCompactMetrics;
- (SettingsController)settingsController;
- (SettingsTableViewController)init;
- (double)desiredHeight;
- (id)_attributionCell;
- (id)_cellForMapModeSelector;
- (id)_cellForMenuItem:(int64_t)item;
- (id)_cellWithIdentifier:(id)identifier setupBlock:(id)block;
- (id)_displayableSectionsInTableView;
- (id)_environmentInfoCell;
- (id)_mapModeSelector;
- (id)_menuCellWithText:(id)text identifier:(id)identifier;
- (id)_menuItemsInSection:(int64_t)section;
- (id)_menuItemsPerSections:(id)sections;
- (id)indexPathForMenuItem:(int64_t)item;
- (id)mapAttributionButton;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_sectionAtIndex:(int64_t)index;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_consumeUpdatedUnpairedVehicles:(id)vehicles;
- (void)_consumeUpdatedVirtualGarage:(id)garage;
- (void)_environmnentNotification;
- (void)_handleSelectedMenuItem:(int64_t)item;
- (void)_reloadMyVehiclesVisibility;
- (void)_updateTableViewCells;
- (void)dealloc;
- (void)mapViewModeGridSelector:(id)selector selectedMapMode:(int64_t)mode;
- (void)reloadData;
- (void)setupConstraints;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateTheme;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation SettingsTableViewController

- (SettingsController)settingsController
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);

  return WeakRetained;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[SettingsTableViewController _sectionAtIndex:](self, "_sectionAtIndex:", [pathCopy section]);
  if (v7 != -1)
  {
    menuItemsPerSections = self->_menuItemsPerSections;
    v9 = [NSNumber numberWithInteger:v7];
    v10 = [(NSDictionary *)menuItemsPerSections objectForKeyedSubscript:v9];

    v11 = [pathCopy row];
    if (v11 < [v10 count])
    {
      v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      integerValue = [v12 integerValue];

      [(SettingsTableViewController *)self _handleSelectedMenuItem:integerValue];
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)_handleSelectedMenuItem:(int64_t)item
{
  if (item == 3)
  {
    settingsController = [(SettingsTableViewController *)self settingsController];
    [settingsController proceedToEnvironmentsSelector];
  }

  else
  {
    if (item != 2)
    {
      return;
    }

    settingsController = [(SettingsTableViewController *)self settingsController];
    [settingsController presentAttributions];
  }
}

- (void)mapViewModeGridSelector:(id)selector selectedMapMode:(int64_t)mode
{
  settingsController = [(SettingsTableViewController *)self settingsController];
  selectedViewMode = [settingsController selectedViewMode];

  if (selectedViewMode != mode)
  {
    settingsController2 = [(SettingsTableViewController *)self settingsController];
    [settingsController2 setSelectedViewMode:mode animated:1];

    settingsController3 = [(SettingsTableViewController *)self settingsController];
    mapViewMode = [settingsController3 mapViewMode];

    v11 = +[MKMapService sharedService];
    v12 = v11;
    if (mapViewMode > 7)
    {
      v13 = 0;
    }

    else
    {
      v13 = qword_101215550[mapViewMode];
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

    if (mapViewMode + 1 > 7)
    {
      v15 = 1;
    }

    else
    {
      v15 = dword_101215C80[mapViewMode + 1];
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
    settingsController = [(SettingsTableViewController *)self settingsController];
    [(MapViewModeGridSelector *)self->_mapModeSelector setSettingsController:settingsController];

    [(MapViewModeGridSelector *)self->_mapModeSelector setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [(MapViewModeGridSelector *)self->_mapModeSelector heightAnchor];
    v8 = [heightAnchor constraintEqualToConstant:260.0];
    compactHeightConstraint = self->_compactHeightConstraint;
    self->_compactHeightConstraint = v8;

    [(NSLayoutConstraint *)self->_compactHeightConstraint setActive:self->_useCompactVerticalLayout];
    mapModeSelector = self->_mapModeSelector;
  }

  return mapModeSelector;
}

- (void)updateTheme
{
  tableView = [(SettingsTableViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  if ([visibleCells count])
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
            tableView2 = [(SettingsTableViewController *)self tableView];
            v12 = [NSIndexSet indexSetWithIndex:v8];
            [tableView2 reloadSections:v12 withRowAnimation:5];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[SettingsTableViewController _sectionAtIndex:](self, "_sectionAtIndex:", [pathCopy section]);
  if (v6 == -1)
  {
    v13 = 0;
  }

  else
  {
    menuItemsPerSections = self->_menuItemsPerSections;
    v8 = [NSNumber numberWithInteger:v6];
    v9 = [(NSDictionary *)menuItemsPerSections objectForKeyedSubscript:v8];

    v10 = [pathCopy row];
    if (v10 >= [v9 count])
    {
      v13 = 0;
    }

    else
    {
      v11 = [v9 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      integerValue = [v11 integerValue];

      v13 = [(SettingsTableViewController *)self _cellForMenuItem:integerValue];
    }
  }

  return v13;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy updateBeforeDisplayWithTextAlignment:4];
  }
}

- (id)mapAttributionButton
{
  v3 = [MapsThemeButton buttonWithType:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel = [v3 titleLabel];
  [titleLabel setNumberOfLines:0];

  titleLabel2 = [v3 titleLabel];
  [titleLabel2 setTextAlignment:4];

  settingsController = [(SettingsTableViewController *)self settingsController];
  [v3 addTarget:settingsController action:"presentAttributions" forControlEvents:64];

  return v3;
}

- (id)indexPathForMenuItem:(int64_t)item
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  tableView = [(SettingsTableViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  obj = visibleCells;
  v5 = [visibleCells countByEnumeratingWithState:&v22 objects:v26 count:16];
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
        textLabel = [v9 textLabel];
        text = [textLabel text];
        v12 = [(SettingsTableViewController *)self _cellForMenuItem:item];
        textLabel2 = [v12 textLabel];
        text2 = [textLabel2 text];
        v15 = [text isEqual:text2];

        if (v15)
        {
          tableView2 = [(SettingsTableViewController *)self tableView];
          v16 = [tableView2 indexPathForCell:v9];

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

- (id)_cellForMenuItem:(int64_t)item
{
  if (item == 3)
  {
    _environmentInfoCell = [(SettingsTableViewController *)self _environmentInfoCell];
  }

  else if (item == 2)
  {
    _environmentInfoCell = [(SettingsTableViewController *)self _attributionCell];
  }

  else if (item)
  {
    _environmentInfoCell = 0;
  }

  else
  {
    _environmentInfoCell = [(SettingsTableViewController *)self _cellForMapModeSelector];
  }

  return _environmentInfoCell;
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
  activeTileGroup = [v6 activeTileGroup];
  releaseInfo = [activeTileGroup releaseInfo];

  v9 = @"Unknown";
  if (releaseInfo)
  {
    v9 = releaseInfo;
  }

  v10 = [NSString stringWithFormat:@"Environment: %@", v9];
  textLabel = [v5 textLabel];
  [textLabel setText:v10];

  return v5;
}

- (id)_cellForMapModeSelector
{
  _mapModeSelector = [(SettingsTableViewController *)self _mapModeSelector];
  [_mapModeSelector refresh];
  v4 = [(SettingsTableViewController *)self _cellWithIdentifier:@"SettingsTableViewCell_SegementedControl" setupBlock:0];
  superview = [_mapModeSelector superview];
  contentView = [v4 contentView];

  if (superview != contentView)
  {
    [v4 setSelectionStyle:0];
    contentView2 = [v4 contentView];
    [contentView2 addSubview:_mapModeSelector];

    topAnchor = [_mapModeSelector topAnchor];
    contentView3 = [v4 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[0] = v22;
    bottomAnchor = [_mapModeSelector bottomAnchor];
    contentView4 = [v4 contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[1] = v18;
    leadingAnchor = [_mapModeSelector leadingAnchor];
    contentView5 = [v4 contentView];
    leadingAnchor2 = [contentView5 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[2] = v10;
    trailingAnchor = [_mapModeSelector trailingAnchor];
    contentView6 = [v4 contentView];
    trailingAnchor2 = [contentView6 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[3] = v14;
    v15 = [NSArray arrayWithObjects:v26 count:4];
    [NSLayoutConstraint activateConstraints:v15];
  }

  return v4;
}

- (id)_cellWithIdentifier:(id)identifier setupBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  tableView = [(SettingsTableViewController *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:identifierCopy];

  if (!v9)
  {
    v9 = [[SettingsTableViewCell alloc] initWithReuseIdentifier:identifierCopy];
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v9);
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

- (id)_menuCellWithText:(id)text identifier:(id)identifier
{
  textCopy = text;
  v7 = [(SettingsTableViewController *)self _cellWithIdentifier:identifier setupBlock:0];
  textLabel = [v7 textLabel];
  [textLabel setText:textCopy];

  textLabel2 = [v7 textLabel];
  [textLabel2 setNumberOfLines:0];

  [v7 setAccessoryType:0];
  [v7 setUserInteractionEnabled:1];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(SettingsTableViewController *)self _sectionAtIndex:section];
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

- (id)_menuItemsPerSections:(id)sections
{
  sectionsCopy = sections;
  v5 = +[NSMutableDictionary dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = sectionsCopy;
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

- (id)_menuItemsInSection:(int64_t)section
{
  v4 = qword_10195E6D0;
  v5 = [NSNumber numberWithInteger:?];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 mutableCopy];

  if (section > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 copy];
  }

  return v8;
}

- (int64_t)_sectionAtIndex:(int64_t)index
{
  if (index < 0 || [(NSArray *)self->_displaySections count]<= index)
  {
    return -1;
  }

  v5 = [(NSArray *)self->_displaySections objectAtIndexedSubscript:index];
  integerValue = [v5 integerValue];

  return integerValue;
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

  settingsController = [(SettingsTableViewController *)self settingsController];
  showsEnvironments = [settingsController showsEnvironments];

  if ((showsEnvironments & 1) == 0)
  {
    [v3 removeObject:&off_1016E8720];
  }

  v8 = [v3 copy];

  return v8;
}

- (double)desiredHeight
{
  tableView = [(SettingsTableViewController *)self tableView];
  [tableView contentSize];
  v4 = v3;

  return v4;
}

- (BOOL)_usesCompactMetrics
{
  traitCollection = [(SettingsTableViewController *)self traitCollection];
  v3 = [traitCollection horizontalSizeClass] == 1 && objc_msgSend(traitCollection, "verticalSizeClass") == 1;

  return v3;
}

- (void)_updateTableViewCells
{
  p_lastDisplaySections = &self->_lastDisplaySections;
  if (!self->_lastDisplaySections)
  {
    return;
  }

  selfCopy = self;
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
      v6 = [(NSDictionary *)selfCopy->_menuItemsPerSections objectForKeyedSubscript:v4];
      v7 = [(NSDictionary *)selfCopy->_lastMenuItemsPerSections objectForKeyedSubscript:v4];
      if (![v6 count] && objc_msgSend(v7, "count"))
      {
        v20 = [(NSArray *)*p_lastDisplaySections indexOfObject:v4];
        v21 = v35;
        goto LABEL_31;
      }

      if ([v6 count] && !objc_msgSend(v7, "count"))
      {
        v20 = [(NSArray *)selfCopy->_displaySections indexOfObject:v4];
        v21 = v34;
        goto LABEL_31;
      }

      v39 = v5;
      v40 = i;
      v8 = selfCopy;
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

      selfCopy = v8;
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
    tableView = [(SettingsTableViewController *)selfCopy tableView];
    superview = [tableView superview];

    if (superview)
    {
      tableView2 = [(SettingsTableViewController *)selfCopy tableView];
      [tableView2 beginUpdates];

      if ([v42 count])
      {
        tableView3 = [(SettingsTableViewController *)selfCopy tableView];
        [tableView3 deleteRowsAtIndexPaths:v42 withRowAnimation:0];
      }

      if ([v41 count])
      {
        tableView4 = [(SettingsTableViewController *)selfCopy tableView];
        [tableView4 insertRowsAtIndexPaths:v41 withRowAnimation:0];
      }

      if ([v32 count])
      {
        tableView5 = [(SettingsTableViewController *)selfCopy tableView];
        [tableView5 reloadRowsAtIndexPaths:v32 withRowAnimation:100];
      }

      if ([v34 count])
      {
        tableView6 = [(SettingsTableViewController *)selfCopy tableView];
        [tableView6 insertSections:v34 withRowAnimation:0];
      }

      if ([v35 count])
      {
        tableView7 = [(SettingsTableViewController *)selfCopy tableView];
        [tableView7 deleteSections:v35 withRowAnimation:0];
      }

      if ([v33 count])
      {
        tableView8 = [(SettingsTableViewController *)selfCopy tableView];
        [tableView8 reloadSections:v33 withRowAnimation:100];
      }

      tableView9 = [(SettingsTableViewController *)selfCopy tableView];
      [tableView9 endUpdates];
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
      _displayableSectionsInTableView = [(SettingsTableViewController *)self _displayableSectionsInTableView];
      displaySections = self->_displaySections;
      self->_displaySections = _displayableSectionsInTableView;

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
    tableView = [(SettingsTableViewController *)self tableView];
    [tableView reloadData];
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
    vehicles = [(VGVirtualGarage *)self->_virtualGarage vehicles];
    if ([vehicles count])
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

- (void)_consumeUpdatedUnpairedVehicles:(id)vehicles
{
  vehiclesCopy = vehicles;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B1CD0C;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = vehiclesCopy;
  v5 = vehiclesCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_consumeUpdatedVirtualGarage:(id)garage
{
  garageCopy = garage;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B1CE40;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = garageCopy;
  v5 = garageCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v5 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"SettingsTableViewControllerDidAppearNotification" object:self];

  [(SettingsTableViewController *)self _reloadMyVehiclesVisibility];
  [(SettingsTableViewController *)self reloadData];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(SettingsTableViewController *)self desiredHeight];
  [(SettingsTableViewController *)self setPreferredContentSize:320.0, v8];
  [(SettingsTableViewController *)self reloadData];
  v9.receiver = self;
  v9.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v14 viewDidLayoutSubviews];
  tableView = [(SettingsTableViewController *)self tableView];
  [tableView frame];
  v5 = v4;

  if (v5 > 0.0)
  {
    [(SettingsTableViewController *)self desiredHeight];
    [(SettingsTableViewController *)self setPreferredContentSize:320.0, v6];
  }

  tableView2 = [(SettingsTableViewController *)self tableView];
  [tableView2 frame];
  v9 = v8;

  tableView3 = [(SettingsTableViewController *)self tableView];
  [tableView3 contentSize];
  v12 = v11;

  tableView4 = [(SettingsTableViewController *)self tableView];
  [tableView4 setScrollEnabled:v12 > v9];
}

- (void)willMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v6 willMoveToParentViewController:?];
  if (controller)
  {
    [(SettingsTableViewController *)self desiredHeight];
    [(SettingsTableViewController *)self setPreferredContentSize:320.0, v5];
    [(SettingsTableViewController *)self reloadData];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v6 viewWillAppear:appear];
  v4 = +[UIColor clearColor];
  tableView = [(SettingsTableViewController *)self tableView];
  [tableView setBackgroundColor:v4];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = SettingsTableViewController;
  [(SettingsTableViewController *)&v12 viewDidLoad];
  tableView = [(SettingsTableViewController *)self tableView];
  [tableView setOpaque:0];
  layer = [tableView layer];
  [layer setAllowsGroupOpacity:0];

  [tableView _setHeaderAndFooterViewsFloat:0];
  v5 = objc_opt_new();
  [tableView setTableFooterView:v5];

  [tableView setSeparatorStyle:0];
  [tableView setScrollEnabled:0];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SettingsTableViewController *)self setupConstraints];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"SettingsTableViewCell_SegementedControl"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"SettingsTableViewCell_ViewModeMenuItem"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"SettingsTableViewCell_MenuItem"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"SettingsTableViewCell_Attribution"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"SettingsTableViewCell_Spacer"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"SettingsTableViewCell_Environment"];
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
  tableView = [(SettingsTableViewController *)self tableView];
  leadingAnchor = [tableView leadingAnchor];
  view = [(SettingsTableViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[0] = v19;
  tableView2 = [(SettingsTableViewController *)self tableView];
  trailingAnchor = [tableView2 trailingAnchor];
  view2 = [(SettingsTableViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[1] = v14;
  tableView3 = [(SettingsTableViewController *)self tableView];
  bottomAnchor = [tableView3 bottomAnchor];
  view3 = [(SettingsTableViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v6 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[2] = v6;
  tableView4 = [(SettingsTableViewController *)self tableView];
  topAnchor = [tableView4 topAnchor];
  view4 = [(SettingsTableViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
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