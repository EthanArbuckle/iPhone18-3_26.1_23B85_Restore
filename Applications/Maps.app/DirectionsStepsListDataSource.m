@interface DirectionsStepsListDataSource
- (BOOL)_isDimmedStepAtIndex:(int64_t)a3;
- (BOOL)_shouldDimStepWithRow:(unint64_t)a3 selectedStepIndex:(unint64_t)a4;
- (BOOL)_stepsSectionItemsExcludesFirstStep;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
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
- (double)_heightForRowAtIndexPath:(id)a3;
- (double)_rowHeightForStartEndCell:(BOOL)a3;
- (double)_rowHeightForStep:(id)a3;
- (id)_adjustedItemToSelectFromIndexPath:(id)a3;
- (id)_elevationCellForIndexPath:(id)a3 inCollectionView:(id)a4;
- (id)_flatIndexFromIndexPath:(id)a3;
- (id)_footerCellForIndexPath:(id)a3 inCollectionView:(id)a4;
- (id)_footerCellForIndexPath:(id)a3 inTableView:(id)a4;
- (id)_indexPathFromFlatIndexPath:(id)a3;
- (id)_itemAtIndexPath:(id)a3;
- (id)_stepCellForIndexPath:(id)a3 inCollectionView:(id)a4;
- (id)_stepCellForIndexPath:(id)a3 inTableView:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)routeStepForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_footerCommands;
- (int64_t)_idiom;
- (int64_t)_numberOfRowsInSection:(int64_t)a3;
- (int64_t)_numberOfSections;
- (int64_t)_sectionAtIndex:(int64_t)a3;
- (int64_t)_sectionIndexForSection:(int64_t)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_rowIndexForCurrentlyMatchedStep;
- (unint64_t)_selectionRouteStepIndexForRowIndex:(unint64_t)a3;
- (unint64_t)routeStepIndexForRowIndex:(unint64_t)a3;
- (void)_buildDataSourceItems;
- (void)_configureStartEndCell:(id)a3 forIndexPath:(id)a4;
- (void)_configureStepCell:(id)a3 forIndexPath:(id)a4;
- (void)_consumeUpdatedGarage:(id)a3;
- (void)_handleElevationInfoButtonTap:(id)a3;
- (void)_handleLocaleChangeNotification:(id)a3;
- (void)_scrollToRouteStepAnimated:(BOOL)a3;
- (void)_updateElevationHeaderHeight;
- (void)_updateElevationHeaderTableInset;
- (void)_updateElevationHeaderView;
- (void)_updateRegisteredCellClasses;
- (void)_updateRouteFromNavigationProvider;
- (void)_willDisplayCell:(id)a3 forRowAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)a3;
- (void)didTapShareButtonOnRoutePlanningFooterView:(id)a3;
- (void)directionsElevationGraphHeaderViewDidRecalculateHeights:(id)a3;
- (void)invalidateLayoutAndReloadData;
- (void)navigationProvider:(id)a3 didUpdateActiveStepIndex:(unint64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reloadData;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setCollapsingHeaderSuperview:(id)a3 topAnchorConstraint:(id)a4;
- (void)setCollectionView:(id)a3;
- (void)setDisplayedInRoutePlanning:(BOOL)a3;
- (void)setEnableNavigationUpdates:(BOOL)a3;
- (void)setFlattenToSingleSection:(BOOL)a3;
- (void)setOptions:(unint64_t)a3;
- (void)setRoute:(id)a3;
- (void)setTableView:(id)a3;
- (void)setUseLargeCells:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)virtualGarageDidUpdate:(id)a3;
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

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = [(DirectionsStepsListDataSource *)self scrollViewDelegate];
  [v5 scrollViewWillBeginDragging:v4];

  [v4 contentOffset];
  v7 = v6;

  [(DirectionsStepsListDataSource *)self setScrollViewOffsetStart:v7];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(DirectionsStepsListDataSource *)self scrollViewDelegate];
  [v5 scrollViewDidScroll:v4];

  [(DirectionsStepsListDataSource *)self _updateElevationHeaderHeight];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = [(DirectionsStepsListDataSource *)self scrollViewDelegate];
  [v10 scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:{x, y}];
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008AB694;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (double)_rowHeightForStep:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
    v6 = [v5 indexOfObject:v4];

    [(DirectionsStepsListDataSource *)self _calculateWidthForCachedRowHeights];
    v8 = v7;
    if (!self->_routeStepRowHeights)
    {
      self->_availableWidthForCachedRowHeights = v7;
      v9 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
      self->_routeStepRowHeights = malloc_type_calloc([v9 count], 8uLL, 0x100004000313F17uLL);
    }

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = sub_100035E6C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v23 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Invalid step: %@", buf, 0xCu);
      }

      v11 = [(DirectionsStepsListDataSource *)self _directionsStepCellClass];
      v12 = [(DirectionsStepsListDataSource *)self route];
      [(objc_class *)v11 heightForWidth:v12 route:v4 step:[(DirectionsStepsListDataSource *)self _idiom] idiom:v8];
      v14 = v13;
    }

    else
    {
      v14 = self->_routeStepRowHeights[v6];
      if (v14 == 0.0)
      {
        v15 = [(DirectionsStepsListDataSource *)self _directionsStepCellClass];
        v16 = [(DirectionsStepsListDataSource *)self route];
        [(objc_class *)v15 heightForWidth:v16 route:v4 step:[(DirectionsStepsListDataSource *)self _idiom] idiom:v8];
        v14 = v17;

        if (v14 <= 0.0)
        {
          v18 = sub_100035E6C();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            v19 = [(DirectionsStepsListDataSource *)self route];
            *buf = 138413058;
            v23 = v15;
            v24 = 2048;
            v25 = v8;
            v26 = 2112;
            v27 = v4;
            v28 = 2112;
            v29 = v19;
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
  v3 = [(DirectionsStepsListDataSource *)self tableView];
  v4 = v3;
  if (!v3)
  {
    v4 = [(DirectionsStepsListDataSource *)self collectionView];
  }

  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (!v3)
  {
  }

  return v6;
}

- (double)_availableWidth
{
  v3 = [(DirectionsStepsListDataSource *)self tableView];
  if (v3)
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

- (double)_rowHeightForStartEndCell:(BOOL)a3
{
  v5 = [(DirectionsStepsListDataSource *)self route];
  v6 = [v5 _maps_directionsWaypoints];

  if (a3)
  {
    [v6 firstObject];
  }

  else
  {
    [v6 lastObject];
  }
  v7 = ;
  if (v7)
  {
    v8 = [(DirectionsStepsListDataSource *)self tableView];
    if (v8)
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
    v20 = [(DirectionsStepsListDataSource *)self route];
    v21 = [(VGVirtualGarage *)self->_virtualGarage selectedVehicle];
    v22 = [(DirectionsStepsListDataSource *)self isDisplayedInRoutePlanning];
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    [v19 heightForWaypoint:v7 route:v20 selectedVehicle:v21 displayedInRoutePlanning:v22 width:CGRectGetWidth(v25)];
    v9 = v23;
  }

  else
  {
    v9 = 70.0;
  }

  return v9;
}

- (BOOL)_shouldDimStepWithRow:(unint64_t)a3 selectedStepIndex:(unint64_t)a4
{
  result = [(DirectionsStepsListDataSource *)self _shouldHighlightCurrentStep];
  if (a3 >= a4)
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

- (id)_footerCellForIndexPath:(id)a3 inCollectionView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v7];
  -[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [v8 section]);
  v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"FooterView" forIndexPath:v7];

  v10 = [(DirectionsStepsListDataSource *)self _footerCommands];
  v11 = [v9 footerView];
  [v11 setVisibleCommandSet:v10];

  v12 = [v9 footerView];
  [v12 setDelegate:self];

  return v9;
}

- (id)_footerCellForIndexPath:(id)a3 inTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v6];
  -[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [v8 section]);
  if (v7)
  {
    v9 = [v7 dequeueReusableCellWithIdentifier:@"FooterView" forIndexPath:v6];
  }

  else
  {
    v9 = [[RoutePlanningFooterCell alloc] initWithStyle:0 reuseIdentifier:@"FooterView"];
  }

  v10 = v9;
  v11 = [(DirectionsStepsListDataSource *)self _footerCommands];
  v12 = [(RoutePlanningFooterCell *)v10 footerView];
  [v12 setVisibleCommandSet:v11];

  [(RoutePlanningFooterCell *)v10 set_mapkit_separatorStyleOverride:0];
  v13 = [(RoutePlanningFooterCell *)v10 footerView];
  [v13 setDelegate:self];

  return v10;
}

- (BOOL)_isDimmedStepAtIndex:(int64_t)a3
{
  if (!self->_navigationProvider)
  {
    return 0;
  }

  v5 = [(DirectionsStepsListDataSource *)self _rowIndexForCurrentlyMatchedStep];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return [(DirectionsStepsListDataSource *)self _shouldDimStepWithRow:a3 selectedStepIndex:v6];
}

- (void)_configureStepCell:(id)a3 forIndexPath:(id)a4
{
  v17 = a3;
  v6 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:a4];
  v7 = [v6 row];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v17;
    v9 = [v8 backgroundView];

    if (!v9)
    {
      v10 = [DirectionsTableViewCellBackgroundView alloc];
      [v8 bounds];
      v11 = [(DirectionsTableViewCellBackgroundView *)v10 initWithFrame:?];
      [v8 setBackgroundView:v11];
    }
  }

  v12 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v13 = [v12 objectAtIndexedSubscript:v7];

  v14 = [(DirectionsStepsListDataSource *)self route];
  [v17 setRoute:v14 step:v13 stepIndex:objc_msgSend(v13 alignToLeftEdgeIfNoManeuverSign:"stepIndex") size:{self->_routeHasNoManeuvers, self->_shieldArtworkSize}];

  [v17 setIsDimmedStep:{-[DirectionsStepsListDataSource _isDimmedStepAtIndex:](self, "_isDimmedStepAtIndex:", v7)}];
  v15 = [(DirectionsStepsListDataSource *)self _rowIndexForCurrentlyMatchedStep];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  [v17 setIsSelectedRow:v7 == v16];
}

- (void)_configureStartEndCell:(id)a3 forIndexPath:(id)a4
{
  v6 = a3;
  v15 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:a4];
  v7 = [v15 row];
  v8 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v9 = [v8 objectAtIndexedSubscript:v7];

  v10 = [(DirectionsStepsListDataSource *)self route];
  v11 = [v10 _maps_directionsWaypoints];

  if (v9 == @"OriginPinRow")
  {
    [v11 firstObject];
  }

  else
  {
    [v11 lastObject];
  }
  v12 = ;
  v13 = [(DirectionsStepsListDataSource *)self route];
  v14 = [(VGVirtualGarage *)self->_virtualGarage selectedVehicle];
  [v6 configureForWaypoint:v12 route:v13 selectedVehicle:v14 displayedInRoutePlanning:{-[DirectionsStepsListDataSource isDisplayedInRoutePlanning](self, "isDisplayedInRoutePlanning")}];

  [v6 setIsDimmedStep:{-[DirectionsStepsListDataSource _isDimmedStepAtIndex:](self, "_isDimmedStepAtIndex:", v7)}];
}

- (id)_stepCellForIndexPath:(id)a3 inCollectionView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v7];
  v9 = [v8 row];
  v10 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v11 = [v10 objectAtIndexedSubscript:v9];

  if (v11 == @"OriginPinRow" || v11 == @"DestinationPinRow")
  {
    v14 = [(objc_class *)[(DirectionsStepsListDataSource *)self _directionsOriginDestinationCollectionViewCellClass] reuseIdentifier];
    v13 = [v6 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v7];

    [(DirectionsStepsListDataSource *)self _configureStartEndCell:v13 forIndexPath:v7];
  }

  else
  {
    v12 = [(objc_class *)[(DirectionsStepsListDataSource *)self _directionsStepCollectionViewCellClass] reuseIdentifier];
    v13 = [v6 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:v7];

    [(DirectionsStepsListDataSource *)self _configureStepCell:v13 forIndexPath:v7];
  }

  return v13;
}

- (id)_stepCellForIndexPath:(id)a3 inTableView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v7];
  v9 = [v8 row];
  v10 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v11 = [v10 objectAtIndexedSubscript:v9];

  if (v11 == @"OriginPinRow" || v11 == @"DestinationPinRow")
  {
    if (v6)
    {
      v14 = [(objc_class *)[(DirectionsStepsListDataSource *)self _directionsOriginDestinationCellClass] reuseIdentifier];
      v15 = [v6 dequeueReusableCellWithIdentifier:v14 forIndexPath:v7];
    }

    else
    {
      v16 = [DirectionsStartEndTableViewCell alloc];
      v14 = [(objc_class *)[(DirectionsStepsListDataSource *)self _directionsOriginDestinationCellClass] reuseIdentifier];
      v15 = [(DirectionsStartEndTableViewCell *)v16 initWithStyle:0 reuseIdentifier:v14];
    }

    v13 = v15;

    [(DirectionsStepsListDataSource *)self _configureStartEndCell:v13 forIndexPath:v7];
  }

  else
  {
    v12 = [(objc_class *)[(DirectionsStepsListDataSource *)self _directionsStepCellClass] reuseIdentifier];
    v13 = [v6 dequeueReusableCellWithIdentifier:v12 forIndexPath:v7];

    [(DirectionsStepsListDataSource *)self _configureStepCell:v13 forIndexPath:v7];
  }

  return v13;
}

- (void)_handleElevationInfoButtonTap:(id)a3
{
  v7 = a3;
  v4 = [(DirectionsStepsListDataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DirectionsStepsListDataSource *)self delegate];
    [v6 directionsStepsList:self didTapElevationInfoButton:v7];
  }
}

- (id)_elevationCellForIndexPath:(id)a3 inCollectionView:(id)a4
{
  v5 = [a4 dequeueReusableCellWithReuseIdentifier:@"Elevation" forIndexPath:a3];
  [v5 setRoute:self->_route];
  if (sub_10000FA08(v5) == 5)
  {
    v6 = [v5 trailingAccessoryConfigurations];
    v7 = [v6 firstObject];

    if (!v7)
    {
      v8 = [UIButton buttonWithType:0];
      v9 = +[UIColor secondaryLabelColor];
      [v8 setTintColor:v9];

      v10 = [UIImage systemImageNamed:@"info.circle.fill"];
      [v8 setImage:v10 forState:0];
      [v8 sizeToFit];
      v7 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v8];
      v14 = v7;
      v11 = [NSArray arrayWithObjects:&v14 count:1];
      [v5 setTrailingAccessoryConfigurations:v11];
    }

    v12 = [v7 customView];
    [v12 addTarget:self action:"_handleElevationInfoButtonTap:" forControlEvents:64];
  }

  return v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v9 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:a4];
  v5 = [(DirectionsStepsListDataSource *)self _adjustedItemToSelectFromIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(DirectionsStepsListDataSource *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(DirectionsStepsListDataSource *)self delegate];
      [v8 directionsStepsList:self didTapRowForRouteStep:v5];
    }
  }
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:a4];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v7];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  v10 = -[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [v8 section]);
  if (v10 == 2)
  {
    v11 = [(DirectionsStepsListDataSource *)self _footerCellForIndexPath:v7 inCollectionView:v6];
    goto LABEL_9;
  }

  if (v10 == 1)
  {
    v11 = [(DirectionsStepsListDataSource *)self _stepCellForIndexPath:v7 inCollectionView:v6];
    goto LABEL_9;
  }

  if (v10)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_10;
  }

  v11 = [(DirectionsStepsListDataSource *)self _elevationCellForIndexPath:v7 inCollectionView:v6];
LABEL_9:
  v12 = v11;
LABEL_10:

  return v12;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
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

    return [(DirectionsStepsListDataSource *)self _numberOfRowsInSection:a4];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  if ([(DirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    return 1;
  }

  return [(DirectionsStepsListDataSource *)self _numberOfSections];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:a4];
  v5 = [(DirectionsStepsListDataSource *)self _adjustedItemToSelectFromIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(DirectionsStepsListDataSource *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(DirectionsStepsListDataSource *)self delegate];
      [v8 directionsStepsList:self didTapRowForRouteStep:v5];
    }
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:a4];
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

- (void)_willDisplayCell:(id)a3 forRowAtIndexPath:(id)a4
{
  v27 = a3;
  v6 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:a4];
  v7 = [(DirectionsStepsListDataSource *)self _rowIndexForCurrentlyMatchedStep];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
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
  v17 = [v27 backgroundView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v19 = v13 && [(DirectionsStepsListDataSource *)self _shouldHighlightCurrentStep];
    v20 = [v27 backgroundView];
    [v20 setHighlightedColor:v19];
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
  [v27 setSeparatorStyle:v21];
  if (!(([v27 separatorStyle] != 1) | v16 & 1))
  {
    v22 = [(DirectionsStepsListDataSource *)self tableView];
    v23 = [v22 separatorColor];
    v24 = [v23 colorWithAlphaComponent:0.150000006];
    [v27 setSeparatorColor:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = !v14 || ([(DirectionsStepsListDataSource *)self options]& 8) == 0;
    [v27 setAlignSeparatorWithLeadingText:v25];
  }

  v26 = +[UIColor clearColor];
  [v27 setBackgroundColor:v26];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:v7];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  v10 = -[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [v8 section]);
  if (v10 == 2)
  {
    v11 = [(DirectionsStepsListDataSource *)self _footerCellForIndexPath:v7 inTableView:v6];
    goto LABEL_7;
  }

  if (v10 != 1)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = [(DirectionsStepsListDataSource *)self _stepCellForIndexPath:v7 inTableView:v6];
LABEL_7:
  v12 = v11;
LABEL_8:

  return v12;
}

- (double)_heightForRowAtIndexPath:(id)a3
{
  v4 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:a3];
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
        v9 = [(DirectionsStepsListDataSource *)self tableView];
        v10 = [v9 traitCollection];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v13 = [(DirectionsStepsListDataSource *)self collectionView];
          v12 = [v13 traitCollection];
        }

        if ([v12 userInterfaceIdiom] == 5)
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
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

    return [(DirectionsStepsListDataSource *)self _numberOfRowsInSection:a4];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(DirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    return 1;
  }

  return [(DirectionsStepsListDataSource *)self _numberOfSections];
}

- (int64_t)_sectionAtIndex:(int64_t)a3
{
  v4 = [(DirectionsStepsListDataSource *)self sections];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 integerValue];

  return v6;
}

- (int64_t)_sectionIndexForSection:(int64_t)a3
{
  v4 = [(DirectionsStepsListDataSource *)self sections];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 indexOfObject:v5];

  return v6;
}

- (id)_indexPathFromFlatIndexPath:(id)a3
{
  v4 = a3;
  if ([(DirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    v5 = [v4 row];
    v6 = [(DirectionsStepsListDataSource *)self _numberOfSections];
    if (v6 < 1)
    {
LABEL_6:
      v10 = 0;
      goto LABEL_10;
    }

    v7 = v6;
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
    v11 = v4;
  }

  v10 = v11;
LABEL_10:

  return v10;
}

- (id)_flatIndexFromIndexPath:(id)a3
{
  v4 = a3;
  if ([(DirectionsStepsListDataSource *)self shouldFlattenToSingleSection])
  {
    v5 = [v4 row];
    v6 = [v4 section];
    if (v6 >= 1)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v5 = &v5[[(DirectionsStepsListDataSource *)self _numberOfRowsInSection:i]];
      }
    }

    v9 = [NSIndexPath indexPathForRow:v5 inSection:0];
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v10;
}

- (int64_t)_numberOfRowsInSection:(int64_t)a3
{
  v5 = [(DirectionsStepsListDataSource *)self sections];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(DirectionsStepsListDataSource *)self _sectionAtIndex:a3];
  if (v7 == 2)
  {
    return ([(DirectionsStepsListDataSource *)self options]>> 3) & 1;
  }

  if (v7 != 1)
  {
    if (!v7 && [(DirectionsStepsListDataSource *)self _idiom]== 5 && ([(DirectionsStepsListDataSource *)self options]& 4) != 0)
    {
      v12 = [(DirectionsStepsListDataSource *)self route];
      v13 = [v12 elevationProfile];
      v8 = v13 != 0;

      return v8;
    }

    return 0;
  }

  v10 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v11 = [v10 count];

  return v11;
}

- (int64_t)_numberOfSections
{
  v2 = [(DirectionsStepsListDataSource *)self sections];
  v3 = [v2 count];

  return v3;
}

- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)a3
{
  v4 = [(DirectionsStepsListDataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DirectionsStepsListDataSource *)self delegate];
    [v6 directionsStepsListDidTapRAPButton:self];
  }
}

- (void)didTapShareButtonOnRoutePlanningFooterView:(id)a3
{
  v4 = [(DirectionsStepsListDataSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DirectionsStepsListDataSource *)self delegate];
    [v6 directionsStepsListDidTapShareButton:self];
  }
}

- (void)_scrollToRouteStepAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(DirectionsStepsListDataSource *)self tableView];
  v6 = [v5 superview];
  if (v6)
  {
  }

  else
  {
    v7 = [(DirectionsStepsListDataSource *)self collectionView];
    v8 = [v7 superview];

    if (!v8)
    {
      return;
    }
  }

  v9 = [(DirectionsStepsListDataSource *)self _numberOfRowsInSection:[(DirectionsStepsListDataSource *)self _sectionIndexForSection:1]];
  v10 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v11 = [v10 count];

  if (v9 && v11 == v9)
  {
    v12 = [(DirectionsStepsListDataSource *)self _rowIndexForCurrentlyMatchedStep];
    if (v12 >= v9 || v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
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

    v18 = [(DirectionsStepsListDataSource *)self tableView];

    if (!v18)
    {
LABEL_24:
      v27 = [(DirectionsStepsListDataSource *)self collectionView];

      if (!v27)
      {
LABEL_33:

        return;
      }

      v28 = [v16 section];
      v29 = [(DirectionsStepsListDataSource *)self collectionView];
      if (v28 >= [v29 numberOfSections])
      {
      }

      else
      {
        v30 = [v16 item];
        v31 = [(DirectionsStepsListDataSource *)self collectionView];
        v32 = [v31 numberOfItemsInSection:{objc_msgSend(v16, "section")}];

        if (v30 < v32)
        {
          v33 = [(DirectionsStepsListDataSource *)self collectionView];
          [v33 scrollToItemAtIndexPath:v16 atScrollPosition:v17 animated:v3];
LABEL_32:

          goto LABEL_33;
        }
      }

      v34 = sub_100035E6C();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = [(DirectionsStepsListDataSource *)self collectionView];
        v36 = 138412546;
        v37 = v16;
        v38 = 2112;
        v39 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "indexPath (%@) out-of-bounds; resetting scroll position on %@", &v36, 0x16u);
      }

      v33 = [(DirectionsStepsListDataSource *)self collectionView];
      [v33 setContentOffset:v3 animated:{CGPointZero.x, CGPointZero.y}];
      goto LABEL_32;
    }

    v19 = [v16 section];
    v20 = [(DirectionsStepsListDataSource *)self tableView];
    if (v19 >= [v20 numberOfSections])
    {
    }

    else
    {
      v21 = [v16 row];
      v22 = [(DirectionsStepsListDataSource *)self tableView];
      v23 = [v22 numberOfRowsInSection:{objc_msgSend(v16, "section")}];

      if (v21 < v23)
      {
        v24 = [(DirectionsStepsListDataSource *)self tableView];
        [v24 scrollToRowAtIndexPath:v16 atScrollPosition:v17 animated:v3];
LABEL_23:

        goto LABEL_24;
      }
    }

    v25 = sub_100035E6C();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [(DirectionsStepsListDataSource *)self tableView];
      v36 = 138412546;
      v37 = v16;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "indexPath (%@) out-of-bounds; resetting scroll position on %@", &v36, 0x16u);
    }

    v24 = [(DirectionsStepsListDataSource *)self tableView];
    [v24 setContentOffset:v3 animated:{CGPointZero.x, CGPointZero.y}];
    goto LABEL_23;
  }
}

- (void)_handleLocaleChangeNotification:(id)a3
{
  v4 = [(DirectionsStepsListDataSource *)self tableView];
  [v4 performSelector:"reloadData" withObject:0 afterDelay:0.0];

  v5 = [(DirectionsStepsListDataSource *)self collectionView];
  [v5 performSelector:"reloadData" withObject:0 afterDelay:0.0];
}

- (void)directionsElevationGraphHeaderViewDidRecalculateHeights:(id)a3
{
  [(DirectionsStepsListDataSource *)self _updateElevationHeaderTableInset];

  [(DirectionsStepsListDataSource *)self _updateElevationHeaderHeight];
}

- (void)_updateElevationHeaderHeight
{
  v3 = [(DirectionsStepsListDataSource *)self tableView];
  if (v3 && (graphHeaderView = self->_graphHeaderView) != 0)
  {
    v19 = v3;
    v5 = [(DirectionsElevationGraphHeaderView *)graphHeaderView isRecalatingHeights];

    if ((v5 & 1) == 0)
    {
      v6 = [(DirectionsStepsListDataSource *)self tableView];
      [v6 contentOffset];
      v8 = v7;
      v9 = [(DirectionsStepsListDataSource *)self tableView];
      [v9 adjustedContentInset];
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
      v16 = [(DirectionsStepsListDataSource *)self tableView];
      [v16 contentOffset];
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
  v3 = [(DirectionsStepsListDataSource *)self tableView];
  if (v3 && (graphHeaderView = self->_graphHeaderView) != 0)
  {
    v5 = [(DirectionsElevationGraphHeaderView *)graphHeaderView isRecalatingHeights];

    if ((v5 & 1) == 0)
    {
      [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView minimumHeight];
      [(NSLayoutConstraint *)self->_headerTableViewTopAnchorConstraint setConstant:?];
      v6 = [(DirectionsStepsListDataSource *)self tableView];
      [v6 contentInset];
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView maximumHeight];
      v14 = v13;
      [(NSLayoutConstraint *)self->_headerTableViewTopAnchorConstraint constant];
      v16 = v14 - v15;
      v17 = [(DirectionsStepsListDataSource *)self tableView];
      [v17 setContentInset:{v16, v8, v10, v12}];

      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v24 = [(DirectionsStepsListDataSource *)self tableView];
      [v24 setVerticalScrollIndicatorInsets:{v16, left, bottom, right}];
      goto LABEL_7;
    }
  }

  else
  {
  }

  v21 = UIEdgeInsetsZero.left;
  v22 = UIEdgeInsetsZero.bottom;
  v23 = UIEdgeInsetsZero.right;
  v24 = [(DirectionsStepsListDataSource *)self tableView];
  [v24 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, v21, v22, v23}];
LABEL_7:
}

- (void)_updateElevationHeaderView
{
  if (([(DirectionsStepsListDataSource *)self options]& 4) != 0)
  {
    v4 = [(DirectionsStepsListDataSource *)self route];
    v5 = [v4 elevationProfile];
    v3 = v5 != 0;
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
      v9 = [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView heightAnchor];
      [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView maximumHeight];
      v10 = [v9 constraintEqualToConstant:?];
      graphHeaderViewHeightConstraint = self->_graphHeaderViewHeightConstraint;
      self->_graphHeaderViewHeightConstraint = v10;

      v37 = [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView topAnchor];
      v12 = [(UIView *)self->_headerSuperview topAnchor];
      v13 = [v37 constraintEqualToAnchor:v12];
      v39[0] = v13;
      v14 = [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView leadingAnchor];
      v15 = [(UIView *)self->_headerSuperview leadingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      v39[1] = v16;
      v17 = [(UIView *)self->_headerSuperview trailingAnchor];
      v18 = [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView trailingAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      v20 = self->_graphHeaderViewHeightConstraint;
      v39[2] = v19;
      v39[3] = v20;
      v21 = [NSArray arrayWithObjects:v39 count:4];
      [NSLayoutConstraint activateConstraints:v21];

      graphHeaderView = self->_graphHeaderView;
LABEL_8:
      [(DirectionsElevationGraphHeaderView *)graphHeaderView setDelegate:self];
      v22 = [(DirectionsStepsListDataSource *)self route];
      [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setRoute:v22];

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

  v26 = [(DirectionsStepsListDataSource *)self tableView];
  [v26 contentInset];
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = [(DirectionsStepsListDataSource *)self tableView];
  [v33 setContentInset:{0.0, v28, v30, v32}];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v38 = [(DirectionsStepsListDataSource *)self tableView];
  [v38 setVerticalScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
}

- (void)setCollapsingHeaderSuperview:(id)a3 topAnchorConstraint:(id)a4
{
  v6 = a3;
  v7 = a4;
  headerSuperview = self->_headerSuperview;
  self->_headerSuperview = v6;
  v9 = v6;

  headerTableViewTopAnchorConstraint = self->_headerTableViewTopAnchorConstraint;
  self->_headerTableViewTopAnchorConstraint = v7;

  [(DirectionsStepsListDataSource *)self _updateElevationHeaderView];
}

- (unint64_t)_selectionRouteStepIndexForRowIndex:(unint64_t)a3
{
  v5 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v6 = [v5 objectAtIndexedSubscript:a3];

  if (v6 == @"OriginPinRow")
  {
    v7 = a3 + 1;
  }

  else if (v6 == @"DestinationPinRow")
  {
    v7 = a3 - 1;
  }

  else
  {
    v7 = [(DirectionsStepsListDataSource *)self routeStepIndexForRowIndex:a3];
  }

  return v7;
}

- (unint64_t)routeStepIndexForRowIndex:(unint64_t)a3
{
  v5 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
  v6 = [v5 objectAtIndexedSubscript:a3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(__CFString *)v6 stepIndex];
  }

  else if (v6 == @"DestinationPinRow")
  {
    v8 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
    v7 = [v8 count] - 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_adjustedItemToSelectFromIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(DirectionsStepsListDataSource *)self _itemAtIndexPath:v4];
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
    v10 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", [v4 item] + v9, objc_msgSend(v4, "section"));
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

- (id)_itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [v4 section]);
  if (v5 == 2)
  {
    v6 = @"FooterView";
  }

  else if (v5 == 1)
  {
    if (([v4 row] & 0x8000000000000000) != 0 || (v7 = objc_msgSend(v4, "row"), -[DirectionsStepsListDataSource stepsSectionItems](self, "stepsSectionItems"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7 >= v9))
    {
      v6 = 0;
    }

    else
    {
      v10 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
      v6 = [v10 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
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
    v5 = [(DirectionsStepsListNavigationProvider *)navigationProvider activeStepIndex];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = &v5[[(DirectionsStepsListDataSource *)self options]& 1];
      return &v6[[(DirectionsStepsListDataSource *)self]];
    }
  }

  return v4;
}

- (id)routeStepForIndexPath:(id)a3
{
  v4 = [(DirectionsStepsListDataSource *)self _indexPathFromFlatIndexPath:a3];
  if (-[DirectionsStepsListDataSource _sectionAtIndex:](self, "_sectionAtIndex:", [v4 section]) != 1 || (v5 = objc_msgSend(v4, "row"), v5 == 0x7FFFFFFFFFFFFFFFLL) || (v6 = v5, -[DirectionsStepsListDataSource stepsSectionItems](self, "stepsSectionItems"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 >= v8) || (v9 = -[DirectionsStepsListDataSource _selectionRouteStepIndexForRowIndex:](self, "_selectionRouteStepIndexForRowIndex:", v6), v9 == 0x7FFFFFFFFFFFFFFFLL) || (v10 = v9, -[DirectionsStepsListDataSource stepsSectionItems](self, "stepsSectionItems"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10 >= v12))
  {
    v14 = 0;
  }

  else
  {
    v13 = [(DirectionsStepsListDataSource *)self stepsSectionItems];
    v14 = [v13 objectAtIndexedSubscript:v10];
  }

  return v14;
}

- (void)navigationProvider:(id)a3 didUpdateActiveStepIndex:(unint64_t)a4
{
  self->_temporarilyDisableAutoscroll = 1;
  [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData:a3];
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

- (void)setEnableNavigationUpdates:(BOOL)a3
{
  if (self->_enableNavigationUpdates != a3)
  {
    self->_enableNavigationUpdates = a3;
    if (a3)
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

- (void)setRoute:(id)a3
{
  v5 = a3;
  if (self->_route != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_route, a3);
    [(DirectionsStepsListDataSource *)self setEnableNavigationUpdates:0];
    [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData];
    v5 = v6;
  }
}

- (void)_buildDataSourceItems
{
  v3 = [(DirectionsStepsListDataSource *)self route];
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableArray);
    if (([(DirectionsStepsListDataSource *)self options]& 4) != 0)
    {
      v5 = [v3 elevationProfile];

      if (v5)
      {
        [v4 addObject:&off_1016E7610];
      }
    }

    v6 = [v3 steps];
    v7 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v6;
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
          v14 = [v13 geoStep];
          if (![v14 hasManeuverType] || objc_msgSend(v14, "maneuverType") != 85)
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

    v16 = [(DirectionsStepsListDataSource *)self _stepsSectionItemsExcludesFirstStep];
    v17 = [v7 subarrayWithRange:{v16, objc_msgSend(v7, "count") - v16}];
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
  v3 = [(DirectionsStepsListDataSource *)self tableView];
  v4 = [v3 superview];
  if (v4)
  {
  }

  else
  {
    v5 = [(DirectionsStepsListDataSource *)self collectionView];
    v6 = [v5 superview];

    if (!v6)
    {
      return;
    }
  }

  v7 = [(DirectionsStepsListDataSource *)self route];

  if (v7)
  {
    self->_routeHasNoManeuvers = 1;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [(DirectionsStepsListDataSource *)self route];
    v9 = [v8 steps];

    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * v13) geoStep];
          if ([v14 hasManeuverType] && objc_msgSend(v14, "maneuverType"))
          {
            self->_routeHasNoManeuvers = 0;
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    if ([(DirectionsStepsListDataSource *)self shouldFlattenToSingleSection]&& ([(DirectionsStepsListDataSource *)self reloadHandler], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = [(DirectionsStepsListDataSource *)self reloadHandler];
      v16[2]();
    }

    else
    {
      v17 = [(DirectionsStepsListDataSource *)self tableView];
      [v17 reloadData];

      v16 = [(DirectionsStepsListDataSource *)self collectionView];
      [v16 reloadData];
    }

    if (!self->_temporarilyDisableAutoscroll)
    {
      [(DirectionsStepsListDataSource *)self scrollToCurrentStep];
    }
  }
}

- (BOOL)_stepsSectionItemsExcludesFirstStep
{
  v2 = [(DirectionsStepsListDataSource *)self route];
  v3 = [v2 steps];
  v4 = [v3 firstObject];

  if ([v4 isStartOrResumeStep])
  {
    v5 = [v4 geoStep];
    v6 = [v5 instructionSet];
    v7 = [v6 hasDrivingWalkingListInstruction] ^ 1;
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
  v3 = [(DirectionsStepsListDataSource *)self tableView];

  if (v3)
  {
    v4 = [(DirectionsStepsListDataSource *)self _directionsStepCellClass];
    v5 = [(DirectionsStepsListDataSource *)self _directionsOriginDestinationCellClass];
    v6 = [(DirectionsStepsListDataSource *)self tableView];
    v7 = [(objc_class *)v4 reuseIdentifier];
    [v6 registerClass:v4 forCellReuseIdentifier:v7];

    v14 = [(DirectionsStepsListDataSource *)self tableView];
    v8 = [(objc_class *)v5 reuseIdentifier];
    [v14 registerClass:v5 forCellReuseIdentifier:v8];
  }

  else
  {
    v9 = [(DirectionsStepsListDataSource *)self collectionView];

    if (!v9)
    {
      return;
    }

    v10 = [(DirectionsStepsListDataSource *)self _directionsStepCollectionViewCellClass];
    v11 = [(DirectionsStepsListDataSource *)self _directionsOriginDestinationCollectionViewCellClass];
    v12 = [(DirectionsStepsListDataSource *)self collectionView];
    v13 = [(objc_class *)v10 reuseIdentifier];
    [v12 registerClass:v10 forCellWithReuseIdentifier:v13];

    v14 = [(DirectionsStepsListDataSource *)self collectionView];
    v8 = [(objc_class *)v11 reuseIdentifier];
    [v14 registerClass:v11 forCellWithReuseIdentifier:v8];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(DirectionsStepsListDataSource *)self tableView];
  v14 = v13;
  if (v13 == v11)
  {
  }

  else
  {
    v15 = [(DirectionsStepsListDataSource *)self collectionView];

    if (v15 != v11)
    {
      v17.receiver = self;
      v17.super_class = DirectionsStepsListDataSource;
      [(DirectionsStepsListDataSource *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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

- (void)_consumeUpdatedGarage:(id)a3
{
  v7 = a3;
  if (([v7 isEqual:self->_virtualGarage] & 1) == 0)
  {
    objc_storeStrong(&self->_virtualGarage, a3);
    v5 = [(DirectionsStepsListDataSource *)self route];
    v6 = [v5 isEVRoute];

    if (v6)
    {
      [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData];
    }
  }
}

- (void)setDisplayedInRoutePlanning:(BOOL)a3
{
  if (self->_displayedInRoutePlanning != a3)
  {
    self->_displayedInRoutePlanning = a3;
    [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData];
  }
}

- (void)setUseLargeCells:(BOOL)a3
{
  if (self->_useLargeCells != a3)
  {
    self->_useLargeCells = a3;
    [(DirectionsStepsListDataSource *)self _updateRegisteredCellClasses];
  }
}

- (void)setFlattenToSingleSection:(BOOL)a3
{
  if (self->_flattenToSingleSection != a3)
  {
    self->_flattenToSingleSection = a3;
    [(DirectionsStepsListDataSource *)self invalidateLayoutAndReloadData];
  }
}

- (void)setCollectionView:(id)a3
{
  obj = a3;
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

- (void)setTableView:(id)a3
{
  obj = a3;
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

- (void)setOptions:(unint64_t)a3
{
  if (self->_options != a3)
  {
    self->_options = a3;
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
  v3 = [(DirectionsStepsListDataSource *)self tableView];

  if (v3)
  {
    v4 = [(DirectionsStepsListDataSource *)self tableView];
    [v4 removeObserver:self forKeyPath:@"bounds"];
  }

  v5 = [(DirectionsStepsListDataSource *)self collectionView];

  if (v5)
  {
    v6 = [(DirectionsStepsListDataSource *)self collectionView];
    [v6 removeObserver:self forKeyPath:@"bounds"];
  }

  v7.receiver = self;
  v7.super_class = DirectionsStepsListDataSource;
  [(DirectionsStepsListDataSource *)&v7 dealloc];
}

@end