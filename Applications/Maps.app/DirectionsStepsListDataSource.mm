@interface DirectionsStepsListDataSource
- (BOOL)_isDimmedStepAtIndex:(int64_t)index;
- (BOOL)_shouldDimStepWithRow:(unint64_t)row selectedStepIndex:(unint64_t)index;
- (BOOL)_stepsSectionItemsExcludesFirstStep;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)_directionsOriginDestinationCellClass;
- (Class)_directionsOriginDestinationCollectionViewCellClass;
- (Class)_directionsStepCellClass;
- (Class)_directionsStepCollectionViewCellClass;
- (DirectionsStepsListDataSource)init;
- (NSArray)sections;
- (NSArray)stepsSectionItems;
- (RouteStepListDelegate)delegate;
- (UICollectionView)collectionView;
- (UIScrollViewDelegate)scrollViewDelegate;
- (UITableView)tableView;
- (double)_availableWidth;
- (double)_calculateWidthForCachedRowHeights;
- (double)_heightForRowAtIndexPath:(id)path;
- (double)_rowHeightForStartEndCell:(BOOL)cell;
- (double)_rowHeightForStep:(id)step;
- (id)_adjustedItemToSelectFromIndexPath:(id)path;
- (id)_elevationCellForIndexPath:(id)path inCollectionView:(id)view;
- (id)_flatIndexFromIndexPath:(id)path;
- (id)_footerCellForIndexPath:(id)path inCollectionView:(id)view;
- (id)_footerCellForIndexPath:(id)path inTableView:(id)view;
- (id)_indexPathFromFlatIndexPath:(id)path;
- (id)_itemAtIndexPath:(id)path;
- (id)_stepCellForIndexPath:(id)path inCollectionView:(id)view;
- (id)_stepCellForIndexPath:(id)path inTableView:(id)view;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)routeStepForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_footerCommands;
- (int64_t)_idiom;
- (int64_t)_numberOfRowsInSection:(int64_t)section;
- (int64_t)_numberOfSections;
- (int64_t)_sectionAtIndex:(int64_t)index;
- (int64_t)_sectionIndexForSection:(int64_t)section;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_rowIndexForCurrentlyMatchedStep;
- (unint64_t)_selectionRouteStepIndexForRowIndex:(unint64_t)index;
- (unint64_t)routeStepIndexForRowIndex:(unint64_t)index;
- (void)_buildDataSourceItems;
- (void)_configureStartEndCell:(id)cell forIndexPath:(id)path;
- (void)_configureStepCell:(id)cell forIndexPath:(id)path;
- (void)_consumeUpdatedGarage:(id)garage;
- (void)_handleElevationInfoButtonTap:(id)tap;
- (void)_handleLocaleChangeNotification:(id)notification;
- (void)_scrollToRouteStepAnimated:(BOOL)animated;
- (void)_updateElevationHeaderHeight;
- (void)_updateElevationHeaderTableInset;
- (void)_updateElevationHeaderView;
- (void)_updateRegisteredCellClasses;
- (void)_updateRouteFromNavigationProvider;
- (void)_willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)view;
- (void)didTapShareButtonOnRoutePlanningFooterView:(id)view;
- (void)directionsElevationGraphHeaderViewDidRecalculateHeights:(id)heights;
- (void)invalidateLayoutAndReloadData;
- (void)navigationProvider:(id)provider didUpdateActiveStepIndex:(unint64_t)index;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadData;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setCollapsingHeaderSuperview:(id)superview topAnchorConstraint:(id)constraint;
- (void)setCollectionView:(id)view;
- (void)setDisplayedInRoutePlanning:(BOOL)planning;
- (void)setEnableNavigationUpdates:(BOOL)updates;
- (void)setFlattenToSingleSection:(BOOL)section;
- (void)setOptions:(unint64_t)options;
- (void)setRoute:(id)route;
- (void)setTableView:(id)view;
- (void)setUseLargeCells:(BOOL)cells;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)virtualGarageDidUpdate:(id)update;
@end

@implementation DirectionsStepsListDataSource

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

- (RouteStepListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  scrollViewDelegate = [(DirectionsStepsListDataSource *)self scrollViewDelegate];
  [scrollViewDelegate scrollViewWillBeginDragging:draggingCopy];

  [draggingCopy contentOffset];
  v7 = v6;

  [(DirectionsStepsListDataSource *)self setScrollViewOffsetStart:v7];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  scrollViewDelegate = [(DirectionsStepsListDataSource *)self scrollViewDelegate];
  [scrollViewDelegate scrollViewDidScroll:scrollCopy];

  [(DirectionsStepsListDataSource *)self _updateElevationHeaderHeight];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  scrollViewDelegate = [(DirectionsStepsListDataSource *)self scrollViewDelegate];
  [scrollViewDelegate scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
}

- (void)virtualGarageDidUpdate:(id)update
{
  updateCopy = update;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008AB694;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = updateCopy;
  v5 = updateCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (double)_rowHeightForStep:(id)step
{
  stepCopy = step;
  if (stepCopy)
  {
    stepsSectionItems = [(DirectionsStepsListDataSource *)self stepsSectionItems];
    v6 = [stepsSectionItems indexOfObject:stepCopy];

    [(DirectionsStepsListDataSource *)self _calculateWidthForCachedRowHeights];
    v8 = v7;
    if (!self->_routeStepRowHeights)
    {
      self->_availableWidthForCachedRowHeights = v7;
      stepsSectionItems2 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
      self->_routeStepRowHeights = malloc_type_calloc([stepsSectionItems2 count], 8uLL, 0x100004000313F17uLL);
    }

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = sub_100035E6C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v23 = stepCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Invalid step: %@", buf, 0xCu);
      }

      _directionsStepCellClass = [(DirectionsStepsListDataSource *)self _directionsStepCellClass];
      route = [(DirectionsStepsListDataSource *)self route];
      [(objc_class *)_directionsStepCellClass heightForWidth:route route:stepCopy step:[(DirectionsStepsListDataSource *)self _idiom] idiom:v8];
      v14 = v13;
    }

    else
    {
      v14 = self->_routeStepRowHeights[v6];
      if (v14 == 0.0)
      {
        _directionsStepCellClass2 = [(DirectionsStepsListDataSource *)self _directionsStepCellClass];
        route2 = [(DirectionsStepsListDataSource *)self route];
        [(objc_class *)_directionsStepCellClass2 heightForWidth:route2 route:stepCopy step:[(DirectionsStepsListDataSource *)self _idiom] idiom:v8];
        v14 = v17;

        if (v14 <= 0.0)
        {
          v18 = sub_100035E6C();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            route3 = [(DirectionsStepsListDataSource *)self route];
            *buf = 138413058;
            v23 = _directionsStepCellClass2;
            v24 = 2048;
            v25 = v8;
            v26 = 2112;
            v27 = stepCopy;
            v28 = 2112;
            v29 = route3;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Invalid middle row height, cellClass: %@ width: %f step: %@ route: %@", buf, 0x2Au);
          }

          v14 = self->_routeStepRowHeights[v6];
        }

        else
        {
          self->_routeStepRowHeights[v6] = v14;
        }
      }
    }
  }

  else
  {
    [DirectionsStepTableViewCell cellMetricsForIdiom:[(DirectionsStepsListDataSource *)self _idiom]];
    v14 = v21;
  }

  return v14;
}

- (double)_calculateWidthForCachedRowHeights
{
  [(DirectionsStepsListDataSource *)self _availableWidth];
  v4 = v3;
  [(DirectionsStepsListDataSource *)self _trailingViewWidth];
  return v4 - v5;
}

- (int64_t)_idiom
{
  tableView = [(DirectionsStepsListDataSource *)self tableView];
  collectionView = tableView;
  if (!tableView)
  {
    collectionView = [(DirectionsStepsListDataSource *)self collectionView];
  }

  traitCollection = [collectionView traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!tableView)
  {
  }

  return userInterfaceIdiom;
}

- (double)_availableWidth
{
  tableView = [(DirectionsStepsListDataSource *)self tableView];
  if (tableView)
  {
    [(DirectionsStepsListDataSource *)self tableView];
  }

  else
  {
    [(DirectionsStepsListDataSource *)self collectionView];
  }
  v4 = ;
  [v4 bounds];
  Width = CGRectGetWidth(v7);

  return Width;
}

- (double)_rowHeightForStartEndCell:(BOOL)cell
{
  route = [(DirectionsStepsListDataSource *)self route];
  _maps_directionsWaypoints = [route _maps_directionsWaypoints];

  if (cell)
  {
    [_maps_directionsWaypoints firstObject];
  }

  else
  {
    [_maps_directionsWaypoints lastObject];
  }
  v7 = ;
  if (v7)
  {
    tableView = [(DirectionsStepsListDataSource *)self tableView];
    if (tableView)
    {
      [(DirectionsStepsListDataSource *)self tableView];
    }

    else
    {
      [(DirectionsStepsListDataSource *)self collectionView];
    }
    v10 = ;
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [objc_alloc(-[DirectionsStepsListDataSource _directionsOriginDestinationCellClass](self "_directionsOriginDestinationCellClass"))];
    route2 = [(DirectionsStepsListDataSource *)self route];
    selectedVehicle = [(VGVirtualGarage *)self->_virtualGarage selectedVehicle];
    isDisplayedInRoutePlanning = [(DirectionsStepsListDataSource *)self isDisplayedInRoutePlanning];
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    [v19 heightForWaypoint:v7 route:route2 selectedVehicle:selectedVehicle displayedInRoutePlanning:isDisplayedInRoutePlanning width:CGRectGetWidth(v25)];
    v9 = v23;
  }

  else
  {
    v9 = 70.0;
  }

  return v9;
}

- (BOOL)_shouldDimStepWithRow:(unint64_t)row selectedStepIndex:(unint64_t)index
{
  result = [(DirectionsStepsListDataSource *)self _shouldHighlightCurrentStep];
  if (row >= index)
  {
    return 0;
  }

  return result;
}

- (int64_t)_footerCommands
{
  if ([(DirectionsStepsListDataSource *)self _idiom]== 5)
  {
    return 8;
  }

  else
  {
    return 10;
  }
}

- (id)_footerCellForIndexPath:(id)path inCollectionView:(id)view
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  -[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [v8 section]);
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"FooterView" forIndexPath:pathCopy];

  _footerCommands = [(DirectionsStepsListDataSource *)self _footerCommands];
  footerView = [v9 footerView];
  [footerView setVisibleCommandSet:_footerCommands];

  footerView2 = [v9 footerView];
  [footerView2 setDelegate:self];

  return v9;
}

- (id)_footerCellForIndexPath:(id)path inTableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  -[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [v8 section]);
  if (viewCopy)
  {
    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"FooterView" forIndexPath:pathCopy];
  }

  else
  {
    v9 = [[RoutePlanningFooterCell alloc] initWithStyle:0 reuseIdentifier:@"FooterView"];
  }

  v10 = v9;
  _footerCommands = [(DirectionsStepsListDataSource *)self _footerCommands];
  footerView = [(RoutePlanningFooterCell *)v10 footerView];
  [footerView setVisibleCommandSet:_footerCommands];

  [(RoutePlanningFooterCell *)v10 set_mapkit_separatorStyleOverride:0];
  footerView2 = [(RoutePlanningFooterCell *)v10 footerView];
  [footerView2 setDelegate:self];

  return v10;
}

- (BOOL)_isDimmedStepAtIndex:(int64_t)index
{
  if (!self->_navigationProvider)
  {
    return 0;
  }

  _rowIndexForCurrentlyMatchedStep = [(DirectionsStepsListDataSource *)self _rowIndexForCurrentlyMatchedStep];
  if (_rowIndexForCurrentlyMatchedStep == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = _rowIndexForCurrentlyMatchedStep;
  }

  return [(DirectionsStepsListDataSource *)self _shouldDimStepWithRow:index selectedStepIndex:v6];
}

- (void)_configureStepCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  v6 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:path];
  v7 = [v6 row];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = cellCopy;
    backgroundView = [v8 backgroundView];

    if (!backgroundView)
    {
      v10 = [DirectionsTableViewCellBackgroundView alloc];
      [v8 bounds];
      v11 = [(DirectionsTableViewCellBackgroundView *)v10 initWithFrame:?];
      [v8 setBackgroundView:v11];
    }
  }

  stepsSectionItems = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v13 = [stepsSectionItems objectAtIndexedSubscript:v7];

  route = [(DirectionsStepsListDataSource *)self route];
  [cellCopy setRoute:route step:v13 stepIndex:objc_msgSend(v13 alignToLeftEdgeIfNoManeuverSign:"stepIndex") size:{self->_routeHasNoManeuvers, self->_shieldArtworkSize}];

  [cellCopy setIsDimmedStep:{-[DirectionsStepsListDataSource _isDimmedStepAtIndex:](self, "_isDimmedStepAtIndex:", v7)}];
  _rowIndexForCurrentlyMatchedStep = [(DirectionsStepsListDataSource *)self _rowIndexForCurrentlyMatchedStep];
  if (_rowIndexForCurrentlyMatchedStep == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v16 = _rowIndexForCurrentlyMatchedStep;
  }

  [cellCopy setIsSelectedRow:v7 == v16];
}

- (void)_configureStartEndCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  v15 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:path];
  v7 = [v15 row];
  stepsSectionItems = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v9 = [stepsSectionItems objectAtIndexedSubscript:v7];

  route = [(DirectionsStepsListDataSource *)self route];
  _maps_directionsWaypoints = [route _maps_directionsWaypoints];

  if (v9 == @"OriginPinRow")
  {
    [_maps_directionsWaypoints firstObject];
  }

  else
  {
    [_maps_directionsWaypoints lastObject];
  }
  v12 = ;
  route2 = [(DirectionsStepsListDataSource *)self route];
  selectedVehicle = [(VGVirtualGarage *)self->_virtualGarage selectedVehicle];
  [cellCopy configureForWaypoint:v12 route:route2 selectedVehicle:selectedVehicle displayedInRoutePlanning:{-[DirectionsStepsListDataSource isDisplayedInRoutePlanning](self, "isDisplayedInRoutePlanning")}];

  [cellCopy setIsDimmedStep:{-[DirectionsStepsListDataSource _isDimmedStepAtIndex:](self, "_isDimmedStepAtIndex:", v7)}];
}

- (id)_stepCellForIndexPath:(id)path inCollectionView:(id)view
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  v9 = [v8 row];
  stepsSectionItems = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v11 = [stepsSectionItems objectAtIndexedSubscript:v9];

  if (v11 == @"OriginPinRow" || v11 == @"DestinationPinRow")
  {
    reuseIdentifier = [(objc_class *)[(DirectionsStepsListDataSource *)self _directionsOriginDestinationCollectionViewCellClass] reuseIdentifier];
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:pathCopy];

    [(DirectionsStepsListDataSource *)self _configureStartEndCell:v13 forIndexPath:pathCopy];
  }

  else
  {
    reuseIdentifier2 = [(objc_class *)[(DirectionsStepsListDataSource *)self _directionsStepCollectionViewCellClass] reuseIdentifier];
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:reuseIdentifier2 forIndexPath:pathCopy];

    [(DirectionsStepsListDataSource *)self _configureStepCell:v13 forIndexPath:pathCopy];
  }

  return v13;
}

- (id)_stepCellForIndexPath:(id)path inTableView:(id)view
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  v9 = [v8 row];
  stepsSectionItems = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v11 = [stepsSectionItems objectAtIndexedSubscript:v9];

  if (v11 == @"OriginPinRow" || v11 == @"DestinationPinRow")
  {
    if (viewCopy)
    {
      reuseIdentifier = [(objc_class *)[(DirectionsStepsListDataSource *)self _directionsOriginDestinationCellClass] reuseIdentifier];
      v15 = [viewCopy dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:pathCopy];
    }

    else
    {
      v16 = [DirectionsStartEndTableViewCell alloc];
      reuseIdentifier = [(objc_class *)[(DirectionsStepsListDataSource *)self _directionsOriginDestinationCellClass] reuseIdentifier];
      v15 = [(DirectionsStartEndTableViewCell *)v16 initWithStyle:0 reuseIdentifier:reuseIdentifier];
    }

    v13 = v15;

    [(DirectionsStepsListDataSource *)self _configureStartEndCell:v13 forIndexPath:pathCopy];
  }

  else
  {
    reuseIdentifier2 = [(objc_class *)[(DirectionsStepsListDataSource *)self _directionsStepCellClass] reuseIdentifier];
    v13 = [viewCopy dequeueReusableCellWithIdentifier:reuseIdentifier2 forIndexPath:pathCopy];

    [(DirectionsStepsListDataSource *)self _configureStepCell:v13 forIndexPath:pathCopy];
  }

  return v13;
}

- (void)_handleElevationInfoButtonTap:(id)tap
{
  tapCopy = tap;
  delegate = [(DirectionsStepsListDataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(DirectionsStepsListDataSource *)self delegate];
    [delegate2 directionsStepsList:self didTapElevationInfoButton:tapCopy];
  }
}

- (id)_elevationCellForIndexPath:(id)path inCollectionView:(id)view
{
  v5 = [view dequeueReusableCellWithReuseIdentifier:@"Elevation" forIndexPath:path];
  [v5 setRoute:self->_route];
  if (sub_10000FA08(v5) == 5)
  {
    trailingAccessoryConfigurations = [v5 trailingAccessoryConfigurations];
    firstObject = [trailingAccessoryConfigurations firstObject];

    if (!firstObject)
    {
      v8 = [UIButton buttonWithType:0];
      v9 = +[UIColor secondaryLabelColor];
      [v8 setTintColor:v9];

      v10 = [UIImage systemImageNamed:@"info.circle.fill"];
      [v8 setImage:v10 forState:0];
      [v8 sizeToFit];
      firstObject = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v8];
      v14 = firstObject;
      v11 = [NSArray arrayWithObjects:&v14 count:1];
      [v5 setTrailingAccessoryConfigurations:v11];
    }

    customView = [firstObject customView];
    [customView addTarget:self action:"_handleElevationInfoButtonTap:" forControlEvents:64];
  }

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v9 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:path];
  v5 = [(DirectionsStepsListDataSource *)self _adjustedItemToSelectFromIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(DirectionsStepsListDataSource *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(DirectionsStepsListDataSource *)self delegate];
      [delegate2 directionsStepsList:self didTapRowForRouteStep:v5];
    }
  }
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v5 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:path];
  v6 = [(DirectionsStepsListDataSource *)self _itemAtIndexPath:v5];
  if ([(DirectionsStepsListDataSource *)self allowsStepSelection])
  {
    isKindOfClass = 1;
    if (v6 != @"OriginPinRow" && v6 != @"DestinationPinRow")
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  v10 = -[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [v8 section]);
  if (v10 == 2)
  {
    v11 = [(DirectionsStepsListDataSource *)self _footerCellForIndexPath:pathCopy inCollectionView:viewCopy];
    goto LABEL_9;
  }

  if (v10 == 1)
  {
    v11 = [(DirectionsStepsListDataSource *)self _stepCellForIndexPath:pathCopy inCollectionView:viewCopy];
    goto LABEL_9;
  }

  if (v10)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_10;
  }

  v11 = [(DirectionsStepsListDataSource *)self _elevationCellForIndexPath:pathCopy inCollectionView:viewCopy];
LABEL_9:
  v12 = v11;
LABEL_10:

  return v12;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if ([(DirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    if ([(DirectionsStepsListDataSource *)self _numberOfSections]< 1)
    {
      return 0;
    }

    v6 = 0;
    v7 = 0;
    do
    {
      v7 += [(DirectionsStepsListDataSource *)self _numberOfRowsInSection:v6++];
    }

    while (v6 < [(DirectionsStepsListDataSource *)self _numberOfSections]);
    return v7;
  }

  else
  {

    return [(DirectionsStepsListDataSource *)self _numberOfRowsInSection:section];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  if ([(DirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    return 1;
  }

  return [(DirectionsStepsListDataSource *)self _numberOfSections];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v9 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:path];
  v5 = [(DirectionsStepsListDataSource *)self _adjustedItemToSelectFromIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(DirectionsStepsListDataSource *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(DirectionsStepsListDataSource *)self delegate];
      [delegate2 directionsStepsList:self didTapRowForRouteStep:v5];
    }
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v5 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:path];
  v6 = [(DirectionsStepsListDataSource *)self _itemAtIndexPath:v5];
  if ([(DirectionsStepsListDataSource *)self allowsStepSelection])
  {
    isKindOfClass = 1;
    if (v6 != @"OriginPinRow" && v6 != @"DestinationPinRow")
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v6 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:path];
  _rowIndexForCurrentlyMatchedStep = [(DirectionsStepsListDataSource *)self _rowIndexForCurrentlyMatchedStep];
  if (_rowIndexForCurrentlyMatchedStep == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = _rowIndexForCurrentlyMatchedStep;
  }

  v9 = -[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [v6 section]);
  v10 = [v6 row];
  v11 = [(DirectionsStepsListDataSource *)self _itemAtIndexPath:v6];
  v12 = v11;
  if (v9 == 1 && v8)
  {
    v13 = v10 == v8 - 1;
    v14 = v11 == @"DestinationPinRow";
LABEL_8:
    v15 = v13;
    v13 = v10 == v8;
    v16 = ![(DirectionsStepsListDataSource *)self _shouldDimStepWithRow:v10 selectedStepIndex:v8];
    goto LABEL_10;
  }

  v13 = 0;
  v14 = v11 == @"DestinationPinRow";
  if (v9 == 1)
  {
    goto LABEL_8;
  }

  LOBYTE(v16) = 1;
  v15 = 0;
LABEL_10:
  backgroundView = [cellCopy backgroundView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v19 = v13 && [(DirectionsStepsListDataSource *)self _shouldHighlightCurrentStep];
    backgroundView2 = [cellCopy backgroundView];
    [backgroundView2 setHighlightedColor:v19];
  }

  if (v14)
  {
    if (([(DirectionsStepsListDataSource *)self options]& 8) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v12 == @"FooterView")
  {
LABEL_21:
    v21 = 0;
    goto LABEL_23;
  }

  if ((v13 || v15) && [(DirectionsStepsListDataSource *)self _shouldHighlightCurrentStep])
  {
    goto LABEL_21;
  }

  v21 = 1;
LABEL_23:
  [cellCopy setSeparatorStyle:v21];
  if (!(([cellCopy separatorStyle] != 1) | v16 & 1))
  {
    tableView = [(DirectionsStepsListDataSource *)self tableView];
    separatorColor = [tableView separatorColor];
    v24 = [separatorColor colorWithAlphaComponent:0.150000006];
    [cellCopy setSeparatorColor:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = !v14 || ([(DirectionsStepsListDataSource *)self options]& 8) == 0;
    [cellCopy setAlignSeparatorWithLeadingText:v25];
  }

  v26 = +[UIColor clearColor];
  [cellCopy setBackgroundColor:v26];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:pathCopy];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  v10 = -[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [v8 section]);
  if (v10 == 2)
  {
    v11 = [(DirectionsStepsListDataSource *)self _footerCellForIndexPath:pathCopy inTableView:viewCopy];
    goto LABEL_7;
  }

  if (v10 != 1)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = [(DirectionsStepsListDataSource *)self _stepCellForIndexPath:pathCopy inTableView:viewCopy];
LABEL_7:
  v12 = v11;
LABEL_8:

  return v12;
}

- (double)_heightForRowAtIndexPath:(id)path
{
  v4 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:path];
  if (v4)
  {
    v5 = [(DirectionsStepsListDataSource *)self _itemAtIndexPath:v4];
    v6 = v5;
    if (v5 == @"DestinationPinRow" || v5 == @"OriginPinRow")
    {
      [(DirectionsStepsListDataSource *)self _rowHeightForStartEndCell:v5 == @"OriginPinRow"];
    }

    else
    {
      if (v5 == @"FooterView")
      {
        if (([(DirectionsStepsListDataSource *)self options]& 8) != 0)
        {
          v8 = UITableViewAutomaticDimension;
        }

        else
        {
          v8 = 0.0;
        }

        goto LABEL_20;
      }

      if (v5 == @"Elevation")
      {
        tableView = [(DirectionsStepsListDataSource *)self tableView];
        traitCollection = [tableView traitCollection];
        v11 = traitCollection;
        if (traitCollection)
        {
          traitCollection2 = traitCollection;
        }

        else
        {
          collectionView = [(DirectionsStepsListDataSource *)self collectionView];
          traitCollection2 = [collectionView traitCollection];
        }

        if ([traitCollection2 userInterfaceIdiom] == 5)
        {
          v8 = UITableViewAutomaticDimension;
        }

        else
        {
          v8 = 200.0;
        }

        goto LABEL_20;
      }

      [(DirectionsStepsListDataSource *)self _rowHeightForStep:v5];
    }

    v8 = v7;
LABEL_20:

    goto LABEL_21;
  }

  [DirectionsStepTableViewCell cellMetricsForIdiom:[(DirectionsStepsListDataSource *)self _idiom]];
  v8 = v15;
LABEL_21:

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(DirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    if ([(DirectionsStepsListDataSource *)self _numberOfSections]< 1)
    {
      return 0;
    }

    v6 = 0;
    v7 = 0;
    do
    {
      v7 += [(DirectionsStepsListDataSource *)self _numberOfRowsInSection:v6++];
    }

    while (v6 < [(DirectionsStepsListDataSource *)self _numberOfSections]);
    return v7;
  }

  else
  {

    return [(DirectionsStepsListDataSource *)self _numberOfRowsInSection:section];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(DirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    return 1;
  }

  return [(DirectionsStepsListDataSource *)self _numberOfSections];
}

- (int64_t)_sectionAtIndex:(int64_t)index
{
  sections = [(DirectionsStepsListDataSource *)self sections];
  v5 = [sections objectAtIndexedSubscript:index];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (int64_t)_sectionIndexForSection:(int64_t)section
{
  sections = [(DirectionsStepsListDataSource *)self sections];
  v5 = [NSNumber numberWithInteger:section];
  v6 = [sections indexOfObject:v5];

  return v6;
}

- (id)_indexPathFromFlatIndexPath:(id)path
{
  pathCopy = path;
  if ([(DirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    v5 = [pathCopy row];
    _numberOfSections = [(DirectionsStepsListDataSource *)self _numberOfSections];
    if (_numberOfSections < 1)
    {
LABEL_6:
      v10 = 0;
      goto LABEL_10;
    }

    v7 = _numberOfSections;
    v8 = 0;
    while (1)
    {
      v9 = [(DirectionsStepsListDataSource *)self _numberOfRowsInSection:v8];
      if (v5 < v9)
      {
        break;
      }

      ++v8;
      v5 -= v9;
      if (v7 == v8)
      {
        goto LABEL_6;
      }
    }

    v11 = [NSIndexPath indexPathForRow:v5 inSection:v8];
  }

  else
  {
    v11 = pathCopy;
  }

  v10 = v11;
LABEL_10:

  return v10;
}

- (id)_flatIndexFromIndexPath:(id)path
{
  pathCopy = path;
  if ([(DirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    v5 = [pathCopy row];
    section = [pathCopy section];
    if (section >= 1)
    {
      v7 = section;
      for (i = 0; i != v7; ++i)
      {
        v5 = &v5[[(DirectionsStepsListDataSource *)self _numberOfRowsInSection:i]];
      }
    }

    v9 = [NSIndexPath indexPathForRow:v5 inSection:0];
  }

  else
  {
    v9 = pathCopy;
  }

  v10 = v9;

  return v10;
}

- (int64_t)_numberOfRowsInSection:(int64_t)section
{
  sections = [(DirectionsStepsListDataSource *)self sections];
  v6 = [sections count];

  if (v6 <= section)
  {
    return 0;
  }

  v7 = [(DirectionsStepsListDataSource *)self _sectionAtIndex:section];
  if (v7 == 2)
  {
    return ([(DirectionsStepsListDataSource *)self options]>> 3) & 1;
  }

  if (v7 != 1)
  {
    if (!v7 && [(DirectionsStepsListDataSource *)self _idiom]== 5 && ([(DirectionsStepsListDataSource *)self options]& 4) != 0)
    {
      route = [(DirectionsStepsListDataSource *)self route];
      elevationProfile = [route elevationProfile];
      v8 = elevationProfile != 0;

      return v8;
    }

    return 0;
  }

  stepsSectionItems = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v11 = [stepsSectionItems count];

  return v11;
}

- (int64_t)_numberOfSections
{
  sections = [(DirectionsStepsListDataSource *)self sections];
  v3 = [sections count];

  return v3;
}

- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)view
{
  delegate = [(DirectionsStepsListDataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(DirectionsStepsListDataSource *)self delegate];
    [delegate2 directionsStepsListDidTapRAPButton:self];
  }
}

- (void)didTapShareButtonOnRoutePlanningFooterView:(id)view
{
  delegate = [(DirectionsStepsListDataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(DirectionsStepsListDataSource *)self delegate];
    [delegate2 directionsStepsListDidTapShareButton:self];
  }
}

- (void)_scrollToRouteStepAnimated:(BOOL)animated
{
  animatedCopy = animated;
  tableView = [(DirectionsStepsListDataSource *)self tableView];
  superview = [tableView superview];
  if (superview)
  {
  }

  else
  {
    collectionView = [(DirectionsStepsListDataSource *)self collectionView];
    superview2 = [collectionView superview];

    if (!superview2)
    {
      return;
    }
  }

  v9 = [(DirectionsStepsListDataSource *)self _numberOfRowsInSection:[(DirectionsStepsListDataSource *)self _sectionIndexForSection:1]];
  stepsSectionItems = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v11 = [stepsSectionItems count];

  if (v9 && v11 == v9)
  {
    _rowIndexForCurrentlyMatchedStep = [(DirectionsStepsListDataSource *)self _rowIndexForCurrentlyMatchedStep];
    if (_rowIndexForCurrentlyMatchedStep >= v9 || _rowIndexForCurrentlyMatchedStep == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v14 = _rowIndexForCurrentlyMatchedStep;
    }

    v15 = [NSIndexPath indexPathForRow:v14 inSection:[(DirectionsStepsListDataSource *)self _sectionIndexForSection:1]];
    v16 = [(DirectionsStepsListDataSource *)self _flatIndexFromIndexPath:v15];

    if (self->_navigationProvider)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    tableView2 = [(DirectionsStepsListDataSource *)self tableView];

    if (!tableView2)
    {
LABEL_24:
      collectionView2 = [(DirectionsStepsListDataSource *)self collectionView];

      if (!collectionView2)
      {
LABEL_33:

        return;
      }

      section = [v16 section];
      collectionView3 = [(DirectionsStepsListDataSource *)self collectionView];
      if (section >= [collectionView3 numberOfSections])
      {
      }

      else
      {
        item = [v16 item];
        collectionView4 = [(DirectionsStepsListDataSource *)self collectionView];
        v32 = [collectionView4 numberOfItemsInSection:{objc_msgSend(v16, "section")}];

        if (item < v32)
        {
          collectionView5 = [(DirectionsStepsListDataSource *)self collectionView];
          [collectionView5 scrollToItemAtIndexPath:v16 atScrollPosition:v17 animated:animatedCopy];
LABEL_32:

          goto LABEL_33;
        }
      }

      v34 = sub_100035E6C();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        collectionView6 = [(DirectionsStepsListDataSource *)self collectionView];
        v36 = 138412546;
        v37 = v16;
        v38 = 2112;
        v39 = collectionView6;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "indexPath (%@) out-of-bounds; resetting scroll position on %@", &v36, 0x16u);
      }

      collectionView5 = [(DirectionsStepsListDataSource *)self collectionView];
      [collectionView5 setContentOffset:animatedCopy animated:{CGPointZero.x, CGPointZero.y}];
      goto LABEL_32;
    }

    section2 = [v16 section];
    tableView3 = [(DirectionsStepsListDataSource *)self tableView];
    if (section2 >= [tableView3 numberOfSections])
    {
    }

    else
    {
      v21 = [v16 row];
      tableView4 = [(DirectionsStepsListDataSource *)self tableView];
      v23 = [tableView4 numberOfRowsInSection:{objc_msgSend(v16, "section")}];

      if (v21 < v23)
      {
        tableView5 = [(DirectionsStepsListDataSource *)self tableView];
        [tableView5 scrollToRowAtIndexPath:v16 atScrollPosition:v17 animated:animatedCopy];
LABEL_23:

        goto LABEL_24;
      }
    }

    v25 = sub_100035E6C();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      tableView6 = [(DirectionsStepsListDataSource *)self tableView];
      v36 = 138412546;
      v37 = v16;
      v38 = 2112;
      v39 = tableView6;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "indexPath (%@) out-of-bounds; resetting scroll position on %@", &v36, 0x16u);
    }

    tableView5 = [(DirectionsStepsListDataSource *)self tableView];
    [tableView5 setContentOffset:animatedCopy animated:{CGPointZero.x, CGPointZero.y}];
    goto LABEL_23;
  }
}

- (void)_handleLocaleChangeNotification:(id)notification
{
  tableView = [(DirectionsStepsListDataSource *)self tableView];
  [tableView performSelector:"reloadData" withObject:0 afterDelay:0.0];

  collectionView = [(DirectionsStepsListDataSource *)self collectionView];
  [collectionView performSelector:"reloadData" withObject:0 afterDelay:0.0];
}

- (void)directionsElevationGraphHeaderViewDidRecalculateHeights:(id)heights
{
  [(DirectionsStepsListDataSource *)self _updateElevationHeaderTableInset];

  [(DirectionsStepsListDataSource *)self _updateElevationHeaderHeight];
}

- (void)_updateElevationHeaderHeight
{
  tableView = [(DirectionsStepsListDataSource *)self tableView];
  if (tableView && (graphHeaderView = self->_graphHeaderView) != 0)
  {
    v19 = tableView;
    isRecalatingHeights = [(DirectionsElevationGraphHeaderView *)graphHeaderView isRecalatingHeights];

    if ((isRecalatingHeights & 1) == 0)
    {
      tableView2 = [(DirectionsStepsListDataSource *)self tableView];
      [tableView2 contentOffset];
      v8 = v7;
      tableView3 = [(DirectionsStepsListDataSource *)self tableView];
      [tableView3 adjustedContentInset];
      v11 = v10 + v8;

      [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView maximumHeight];
      v13 = v12;
      if (v11 > 0.0)
      {
        v13 = v12 - v11;
        [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView minimumHeight];
        if (v13 <= v14)
        {
          [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView minimumHeight];
          v13 = v15;
        }
      }

      [(NSLayoutConstraint *)self->_graphHeaderViewHeightConstraint setConstant:v13];
      tableView4 = [(DirectionsStepsListDataSource *)self tableView];
      [tableView4 contentOffset];
      [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setBottomHairlineHidden:v17 <= 2.22044605e-16];

      graphHeaderViewHeightConstraint = self->_graphHeaderViewHeightConstraint;

      [(NSLayoutConstraint *)graphHeaderViewHeightConstraint setActive:1];
    }
  }

  else
  {
  }
}

- (void)_updateElevationHeaderTableInset
{
  tableView = [(DirectionsStepsListDataSource *)self tableView];
  if (tableView && (graphHeaderView = self->_graphHeaderView) != 0)
  {
    isRecalatingHeights = [(DirectionsElevationGraphHeaderView *)graphHeaderView isRecalatingHeights];

    if ((isRecalatingHeights & 1) == 0)
    {
      [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView minimumHeight];
      [(NSLayoutConstraint *)self->_headerTableViewTopAnchorConstraint setConstant:?];
      tableView2 = [(DirectionsStepsListDataSource *)self tableView];
      [tableView2 contentInset];
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView maximumHeight];
      v14 = v13;
      [(NSLayoutConstraint *)self->_headerTableViewTopAnchorConstraint constant];
      v16 = v14 - v15;
      tableView3 = [(DirectionsStepsListDataSource *)self tableView];
      [tableView3 setContentInset:{v16, v8, v10, v12}];

      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      tableView4 = [(DirectionsStepsListDataSource *)self tableView];
      [tableView4 setVerticalScrollIndicatorInsets:{v16, left, bottom, right}];
      goto LABEL_7;
    }
  }

  else
  {
  }

  v21 = UIEdgeInsetsZero.left;
  v22 = UIEdgeInsetsZero.bottom;
  v23 = UIEdgeInsetsZero.right;
  tableView4 = [(DirectionsStepsListDataSource *)self tableView];
  [tableView4 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, v21, v22, v23}];
LABEL_7:
}

- (void)_updateElevationHeaderView
{
  if (([(DirectionsStepsListDataSource *)self options]& 4) != 0)
  {
    route = [(DirectionsStepsListDataSource *)self route];
    elevationProfile = [route elevationProfile];
    v3 = elevationProfile != 0;
  }

  else
  {
    v3 = 0;
  }

  graphHeaderView = self->_graphHeaderView;
  if (self->_headerSuperview)
  {
    if (graphHeaderView == 0 && v3)
    {
      v7 = [[DirectionsElevationGraphHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      v8 = self->_graphHeaderView;
      self->_graphHeaderView = v7;

      [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_headerSuperview addSubview:self->_graphHeaderView];
      heightAnchor = [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView heightAnchor];
      [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView maximumHeight];
      v10 = [heightAnchor constraintEqualToConstant:?];
      graphHeaderViewHeightConstraint = self->_graphHeaderViewHeightConstraint;
      self->_graphHeaderViewHeightConstraint = v10;

      topAnchor = [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView topAnchor];
      topAnchor2 = [(UIView *)self->_headerSuperview topAnchor];
      v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v39[0] = v13;
      leadingAnchor = [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_headerSuperview leadingAnchor];
      v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v39[1] = v16;
      trailingAnchor = [(UIView *)self->_headerSuperview trailingAnchor];
      trailingAnchor2 = [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView trailingAnchor];
      v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v20 = self->_graphHeaderViewHeightConstraint;
      v39[2] = v19;
      v39[3] = v20;
      v21 = [NSArray arrayWithObjects:v39 count:4];
      [NSLayoutConstraint activateConstraints:v21];

      graphHeaderView = self->_graphHeaderView;
LABEL_8:
      [(DirectionsElevationGraphHeaderView *)graphHeaderView setDelegate:self];
      route2 = [(DirectionsStepsListDataSource *)self route];
      [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setRoute:route2];

      [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setStyleForNavigation:self->_navigationProvider != 0];
      v23 = self->_graphHeaderView;
      [(DirectionsStepsListNavigationProvider *)self->_navigationProvider elapsedDistance];
      [(DirectionsElevationGraphHeaderView *)v23 setNavigationProgress:?];
      [(DirectionsStepsListDataSource *)self _updateElevationHeaderTableInset];
      [(DirectionsStepsListDataSource *)self _updateElevationHeaderHeight];
      return;
    }

    if (graphHeaderView == 0 || v3)
    {
      goto LABEL_8;
    }
  }

  [(DirectionsElevationGraphHeaderView *)graphHeaderView removeFromSuperview];
  [(NSLayoutConstraint *)self->_headerTableViewTopAnchorConstraint setConstant:0.0];
  v24 = self->_graphHeaderViewHeightConstraint;
  self->_graphHeaderViewHeightConstraint = 0;

  v25 = self->_graphHeaderView;
  self->_graphHeaderView = 0;

  tableView = [(DirectionsStepsListDataSource *)self tableView];
  [tableView contentInset];
  v28 = v27;
  v30 = v29;
  v32 = v31;

  tableView2 = [(DirectionsStepsListDataSource *)self tableView];
  [tableView2 setContentInset:{0.0, v28, v30, v32}];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  tableView3 = [(DirectionsStepsListDataSource *)self tableView];
  [tableView3 setVerticalScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
}

- (void)setCollapsingHeaderSuperview:(id)superview topAnchorConstraint:(id)constraint
{
  superviewCopy = superview;
  constraintCopy = constraint;
  headerSuperview = self->_headerSuperview;
  self->_headerSuperview = superviewCopy;
  v9 = superviewCopy;

  headerTableViewTopAnchorConstraint = self->_headerTableViewTopAnchorConstraint;
  self->_headerTableViewTopAnchorConstraint = constraintCopy;

  [(DirectionsStepsListDataSource *)self _updateElevationHeaderView];
}

- (unint64_t)_selectionRouteStepIndexForRowIndex:(unint64_t)index
{
  stepsSectionItems = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v6 = [stepsSectionItems objectAtIndexedSubscript:index];

  if (v6 == @"OriginPinRow")
  {
    v7 = index + 1;
  }

  else if (v6 == @"DestinationPinRow")
  {
    v7 = index - 1;
  }

  else
  {
    v7 = [(DirectionsStepsListDataSource *)self routeStepIndexForRowIndex:index];
  }

  return v7;
}

- (unint64_t)routeStepIndexForRowIndex:(unint64_t)index
{
  stepsSectionItems = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v6 = [stepsSectionItems objectAtIndexedSubscript:index];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stepIndex = [(__CFString *)v6 stepIndex];
  }

  else if (v6 == @"DestinationPinRow")
  {
    stepsSectionItems2 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
    stepIndex = [stepsSectionItems2 count] - 1;
  }

  else
  {
    stepIndex = 0;
  }

  return stepIndex;
}

- (id)_adjustedItemToSelectFromIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(DirectionsStepsListDataSource *)self _itemAtIndexPath:pathCopy];
  v6 = @"OriginPinRow";
  v7 = @"DestinationPinRow";
  if (v5 == @"OriginPinRow")
  {
    v9 = 1;
    goto LABEL_5;
  }

  v8 = v5;
  if (v5 == @"DestinationPinRow")
  {
    v6 = @"DestinationPinRow";
    v7 = @"OriginPinRow";
    v9 = -1;
LABEL_5:
    v10 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [pathCopy item] + v9, objc_msgSend(pathCopy, "section"));
    v11 = [(DirectionsStepsListDataSource *)self _itemAtIndexPath:v10];

    if (v11 == v7 || v11 == 0)
    {
      v13 = v6;
    }

    else
    {
      v13 = v11;
    }

    v8 = v13;
  }

  return v8;
}

- (id)_itemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [pathCopy section]);
  if (v5 == 2)
  {
    v6 = @"FooterView";
  }

  else if (v5 == 1)
  {
    if (([pathCopy row] & 0x8000000000000000) != 0 || (v7 = objc_msgSend(pathCopy, "row"), -[DirectionsStepsListDataSource stepsSectionItems](self, "stepsSectionItems"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7 >= v9))
    {
      v6 = 0;
    }

    else
    {
      stepsSectionItems = [(DirectionsStepsListDataSource *)self stepsSectionItems];
      v6 = [stepsSectionItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    }
  }

  else if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = @"Elevation";
  }

  return v6;
}

- (unint64_t)_rowIndexForCurrentlyMatchedStep
{
  navigationProvider = self->_navigationProvider;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (navigationProvider)
  {
    activeStepIndex = [(DirectionsStepsListNavigationProvider *)navigationProvider activeStepIndex];
    if (activeStepIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = &activeStepIndex[[(DirectionsStepsListDataSource *)self options]& 1];
      return &v6[[(DirectionsStepsListDataSource *)self]];
    }
  }

  return v4;
}

- (id)routeStepForIndexPath:(id)path
{
  v4 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:path];
  if (-[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [v4 section]) != 1 || (v5 = objc_msgSend(v4, "row"), v5 == 0x7FFFFFFFFFFFFFFFLL) || (v6 = v5, -[DirectionsStepsListDataSource stepsSectionItems](self, "stepsSectionItems"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 >= v8) || (v9 = -[DirectionsStepsListDataSource _selectionRouteStepIndexForRowIndex:](self, "_selectionRouteStepIndexForRowIndex:", v6), v9 == 0x7FFFFFFFFFFFFFFFLL) || (v10 = v9, -[DirectionsStepsListDataSource stepsSectionItems](self, "stepsSectionItems"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10 >= v12))
  {
    v14 = 0;
  }

  else
  {
    stepsSectionItems = [(DirectionsStepsListDataSource *)self stepsSectionItems];
    v14 = [stepsSectionItems objectAtIndexedSubscript:v10];
  }

  return v14;
}

- (void)navigationProvider:(id)provider didUpdateActiveStepIndex:(unint64_t)index
{
  self->_temporarilyDisableAutoscroll = 1;
  [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData:provider];
  self->_temporarilyDisableAutoscroll = 0;

  [(DirectionsStepsListDataSource *)self _scrollToRouteStepAnimated:1];
}

- (void)_updateRouteFromNavigationProvider
{
  navigationProvider = self->_navigationProvider;
  if (!navigationProvider)
  {
    return;
  }

  if (![(DirectionsStepsListNavigationProvider *)navigationProvider isNavigating]|| ([(DirectionsStepsListNavigationProvider *)self->_navigationProvider route], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = 0;
    p_route = &self->_route;
LABEL_8:
    v7 = *p_route;
    *p_route = 0;

LABEL_9:
    [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData];
    v5 = v8;
    goto LABEL_10;
  }

  v5 = v4;
  p_route = &self->_route;
  if (self->_route != v4)
  {
    v8 = v4;
    objc_storeStrong(&self->_route, v4);
    if ([*p_route transportType] != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
}

- (void)setEnableNavigationUpdates:(BOOL)updates
{
  if (self->_enableNavigationUpdates != updates)
  {
    self->_enableNavigationUpdates = updates;
    if (updates)
    {
      v4 = [[DirectionsStepsListNavigationProvider alloc] initWithDelegate:self];
      navigationProvider = self->_navigationProvider;
      self->_navigationProvider = v4;

      [(DirectionsStepsListDataSource *)self _updateRouteFromNavigationProvider];
    }

    else
    {
      v6 = self->_navigationProvider;
      self->_navigationProvider = 0;
    }
  }
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    v6 = routeCopy;
    objc_storeStrong(&self->_route, route);
    [(DirectionsStepsListDataSource *)self setEnableNavigationUpdates:0];
    [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData];
    routeCopy = v6;
  }
}

- (void)_buildDataSourceItems
{
  route = [(DirectionsStepsListDataSource *)self route];
  if (route)
  {
    v4 = objc_alloc_init(NSMutableArray);
    if (([(DirectionsStepsListDataSource *)self options]& 4) != 0)
    {
      elevationProfile = [route elevationProfile];

      if (elevationProfile)
      {
        [v4 addObject:&off_1016E7610];
      }
    }

    steps = [route steps];
    v7 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = steps;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          geoStep = [v13 geoStep];
          if (![geoStep hasManeuverType] || objc_msgSend(geoStep, "maneuverType") != 85)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    v15 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    if (([(DirectionsStepsListDataSource *)self options]& 1) != 0)
    {
      [v15 addObject:@"OriginPinRow"];
    }

    _stepsSectionItemsExcludesFirstStep = [(DirectionsStepsListDataSource *)self _stepsSectionItemsExcludesFirstStep];
    v17 = [v7 subarrayWithRange:{_stepsSectionItemsExcludesFirstStep, objc_msgSend(v7, "count") - _stepsSectionItemsExcludesFirstStep}];
    [v15 addObjectsFromArray:v17];

    if (([(DirectionsStepsListDataSource *)self options]& 2) != 0)
    {
      [v15 addObject:@"DestinationPinRow"];
    }

    if ([v15 count])
    {
      [v4 addObject:&off_1016E7628];
    }

    if (([(DirectionsStepsListDataSource *)self options]& 8) != 0)
    {
      [v4 addObject:&off_1016E7640];
    }
  }

  else
  {
    v15 = 0;
    v4 = 0;
  }

  v18 = [v4 copy];
  sections = self->_sections;
  self->_sections = v18;

  v20 = [v15 copy];
  stepsSectionItems = self->_stepsSectionItems;
  self->_stepsSectionItems = v20;
}

- (void)invalidateLayoutAndReloadData
{
  free(self->_routeStepRowHeights);
  routeOverviewCellCachedHeight = self->_routeOverviewCellCachedHeight;
  self->_routeOverviewCellCachedHeight = 0;
  self->_routeStepRowHeights = 0;

  [(DirectionsStepsListDataSource *)self reloadData];

  [(DirectionsStepsListDataSource *)self _updateElevationHeaderView];
}

- (void)reloadData
{
  [(DirectionsStepsListDataSource *)self _buildDataSourceItems];
  tableView = [(DirectionsStepsListDataSource *)self tableView];
  superview = [tableView superview];
  if (superview)
  {
  }

  else
  {
    collectionView = [(DirectionsStepsListDataSource *)self collectionView];
    superview2 = [collectionView superview];

    if (!superview2)
    {
      return;
    }
  }

  route = [(DirectionsStepsListDataSource *)self route];

  if (route)
  {
    self->_routeHasNoManeuvers = 1;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    route2 = [(DirectionsStepsListDataSource *)self route];
    steps = [route2 steps];

    v10 = [steps countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(steps);
          }

          geoStep = [*(*(&v18 + 1) + 8 * v13) geoStep];
          if ([geoStep hasManeuverType] && objc_msgSend(geoStep, "maneuverType"))
          {
            self->_routeHasNoManeuvers = 0;
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [steps countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    if ([(DirectionsStepsListDataSource *)self shouldFlattenToSingleSection]&& ([(DirectionsStepsListDataSource *)self reloadHandler], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      reloadHandler = [(DirectionsStepsListDataSource *)self reloadHandler];
      reloadHandler[2]();
    }

    else
    {
      tableView2 = [(DirectionsStepsListDataSource *)self tableView];
      [tableView2 reloadData];

      reloadHandler = [(DirectionsStepsListDataSource *)self collectionView];
      [reloadHandler reloadData];
    }

    if (!self->_temporarilyDisableAutoscroll)
    {
      [(DirectionsStepsListDataSource *)self scrollToCurrentStep];
    }
  }
}

- (BOOL)_stepsSectionItemsExcludesFirstStep
{
  route = [(DirectionsStepsListDataSource *)self route];
  steps = [route steps];
  firstObject = [steps firstObject];

  if ([firstObject isStartOrResumeStep])
  {
    geoStep = [firstObject geoStep];
    instructionSet = [geoStep instructionSet];
    v7 = [instructionSet hasDrivingWalkingListInstruction] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (NSArray)stepsSectionItems
{
  stepsSectionItems = self->_stepsSectionItems;
  if (!stepsSectionItems)
  {
    [(DirectionsStepsListDataSource *)self _buildDataSourceItems];
    stepsSectionItems = self->_stepsSectionItems;
  }

  return stepsSectionItems;
}

- (NSArray)sections
{
  sections = self->_sections;
  if (!sections)
  {
    [(DirectionsStepsListDataSource *)self _buildDataSourceItems];
    sections = self->_sections;
  }

  return sections;
}

- (void)_updateRegisteredCellClasses
{
  tableView = [(DirectionsStepsListDataSource *)self tableView];

  if (tableView)
  {
    _directionsStepCellClass = [(DirectionsStepsListDataSource *)self _directionsStepCellClass];
    _directionsOriginDestinationCellClass = [(DirectionsStepsListDataSource *)self _directionsOriginDestinationCellClass];
    tableView2 = [(DirectionsStepsListDataSource *)self tableView];
    reuseIdentifier = [(objc_class *)_directionsStepCellClass reuseIdentifier];
    [tableView2 registerClass:_directionsStepCellClass forCellReuseIdentifier:reuseIdentifier];

    tableView3 = [(DirectionsStepsListDataSource *)self tableView];
    reuseIdentifier2 = [(objc_class *)_directionsOriginDestinationCellClass reuseIdentifier];
    [tableView3 registerClass:_directionsOriginDestinationCellClass forCellReuseIdentifier:reuseIdentifier2];
  }

  else
  {
    collectionView = [(DirectionsStepsListDataSource *)self collectionView];

    if (!collectionView)
    {
      return;
    }

    _directionsStepCollectionViewCellClass = [(DirectionsStepsListDataSource *)self _directionsStepCollectionViewCellClass];
    _directionsOriginDestinationCollectionViewCellClass = [(DirectionsStepsListDataSource *)self _directionsOriginDestinationCollectionViewCellClass];
    collectionView2 = [(DirectionsStepsListDataSource *)self collectionView];
    reuseIdentifier3 = [(objc_class *)_directionsStepCollectionViewCellClass reuseIdentifier];
    [collectionView2 registerClass:_directionsStepCollectionViewCellClass forCellWithReuseIdentifier:reuseIdentifier3];

    tableView3 = [(DirectionsStepsListDataSource *)self collectionView];
    reuseIdentifier2 = [(objc_class *)_directionsOriginDestinationCollectionViewCellClass reuseIdentifier];
    [tableView3 registerClass:_directionsOriginDestinationCollectionViewCellClass forCellWithReuseIdentifier:reuseIdentifier2];
  }
}

- (Class)_directionsOriginDestinationCollectionViewCellClass
{
  [(DirectionsStepsListDataSource *)self usesLargeCells];
  v2 = objc_opt_class();

  return v2;
}

- (Class)_directionsStepCollectionViewCellClass
{
  [(DirectionsStepsListDataSource *)self usesLargeCells];
  v2 = objc_opt_class();

  return v2;
}

- (Class)_directionsOriginDestinationCellClass
{
  [(DirectionsStepsListDataSource *)self usesLargeCells];
  v2 = objc_opt_class();

  return v2;
}

- (Class)_directionsStepCellClass
{
  [(DirectionsStepsListDataSource *)self usesLargeCells];
  v2 = objc_opt_class();

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  tableView = [(DirectionsStepsListDataSource *)self tableView];
  v14 = tableView;
  if (tableView == objectCopy)
  {
  }

  else
  {
    collectionView = [(DirectionsStepsListDataSource *)self collectionView];

    if (collectionView != objectCopy)
    {
      v17.receiver = self;
      v17.super_class = DirectionsStepsListDataSource;
      [(DirectionsStepsListDataSource *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_8;
    }
  }

  [(DirectionsStepsListDataSource *)self _calculateWidthForCachedRowHeights];
  if (self->_routeStepRowHeights && self->_availableWidthForCachedRowHeights != v16)
  {
    [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData];
  }

LABEL_8:
}

- (void)_consumeUpdatedGarage:(id)garage
{
  garageCopy = garage;
  if (([garageCopy isEqual:self->_virtualGarage] & 1) == 0)
  {
    objc_storeStrong(&self->_virtualGarage, garage);
    route = [(DirectionsStepsListDataSource *)self route];
    isEVRoute = [route isEVRoute];

    if (isEVRoute)
    {
      [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData];
    }
  }
}

- (void)setDisplayedInRoutePlanning:(BOOL)planning
{
  if (self->_displayedInRoutePlanning != planning)
  {
    self->_displayedInRoutePlanning = planning;
    [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData];
  }
}

- (void)setUseLargeCells:(BOOL)cells
{
  if (self->_useLargeCells != cells)
  {
    self->_useLargeCells = cells;
    [(DirectionsStepsListDataSource *)self _updateRegisteredCellClasses];
  }
}

- (void)setFlattenToSingleSection:(BOOL)section
{
  if (self->_flattenToSingleSection != section)
  {
    self->_flattenToSingleSection = section;
    [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData];
  }
}

- (void)setCollectionView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [WeakRetained removeObserver:self forKeyPath:@"bounds"];
    }

    objc_storeWeak(&self->_collectionView, obj);
    if (obj)
    {
      [(DirectionsStepsListDataSource *)self setTableView:0];
      [(DirectionsStepsListDataSource *)self _updateRegisteredCellClasses];
      [obj registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Elevation"];
      [obj registerClass:objc_opt_class() forCellWithReuseIdentifier:@"FooterView"];
      [obj addObserver:self forKeyPath:@"bounds" options:1 context:0];
    }
  }
}

- (void)setTableView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [WeakRetained removeObserver:self forKeyPath:@"bounds"];
    }

    objc_storeWeak(&self->_tableView, obj);
    if (obj)
    {
      [(DirectionsStepsListDataSource *)self setCollectionView:0];
      [(DirectionsStepsListDataSource *)self _updateRegisteredCellClasses];
      [obj registerClass:objc_opt_class() forCellReuseIdentifier:@"FooterView"];
      [obj addObserver:self forKeyPath:@"bounds" options:1 context:0];
      [(DirectionsStepsListDataSource *)self _updateElevationHeaderView];
    }
  }
}

- (void)setOptions:(unint64_t)options
{
  if (self->_options != options)
  {
    self->_options = options;
    [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData];
  }
}

- (DirectionsStepsListDataSource)init
{
  v13.receiver = self;
  v13.super_class = DirectionsStepsListDataSource;
  v2 = [(DirectionsStepsListDataSource *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_options = 7;
    v2->_allowStepSelection = 1;
    v2->_shieldArtworkSize = 4;
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = MNLocaleDidChangeNotification();
    [v4 addObserver:v3 selector:"_handleLocaleChangeNotification:" name:v5 object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    v7 = +[VGVirtualGarageService sharedService];
    [v7 registerObserver:v3];

    objc_initWeak(&location, v3);
    v8 = +[VGVirtualGarageService sharedService];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1008AF8A8;
    v10[3] = &unk_101655840;
    objc_copyWeak(&v11, &location);
    [v8 virtualGarageGetGarageWithReply:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  tableView = [(DirectionsStepsListDataSource *)self tableView];

  if (tableView)
  {
    tableView2 = [(DirectionsStepsListDataSource *)self tableView];
    [tableView2 removeObserver:self forKeyPath:@"bounds"];
  }

  collectionView = [(DirectionsStepsListDataSource *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(DirectionsStepsListDataSource *)self collectionView];
    [collectionView2 removeObserver:self forKeyPath:@"bounds"];
  }

  v7.receiver = self;
  v7.super_class = DirectionsStepsListDataSource;
  [(DirectionsStepsListDataSource *)&v7 dealloc];
}

@end