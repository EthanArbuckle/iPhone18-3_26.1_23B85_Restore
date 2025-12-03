@interface CarBaseSearchViewController
- (CarBaseSearchViewController)initWithDisabledETAUpdates:(BOOL)updates;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_lastKnownETAForIndexPath:(id)path;
- (id)_lastKnownETAForItem:(id)item;
- (id)_quickRouteManagerForIndexPath:(id)path;
- (id)indexPathForPreferredFocusedViewInTableView:(id)view;
- (id)modelForItemAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (unint64_t)_markVisibleQuickRouteManagersVisible;
- (void)_markAllQuickRouteManagersNotVisible;
- (void)continueQuickRouteETAs;
- (void)dealloc;
- (void)prepareQuickRouteETAs;
- (void)quickRouteManager:(id)manager didUpdateETA:(id)a error:(id)error animated:(BOOL)animated;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setUserIsActive:(BOOL)active;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateAllETAs;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CarBaseSearchViewController

- (id)indexPathForPreferredFocusedViewInTableView:(id)view
{
  viewCopy = view;
  v5 = [(CarBaseSearchViewController *)self itemAtIndexPath:self->_lastSelectedIndexPath];

  if (v5)
  {
    firstObject = self->_lastSelectedIndexPath;
  }

  else
  {
    indexPathsForVisibleRows = [viewCopy indexPathsForVisibleRows];
    v8 = [indexPathsForVisibleRows count];

    if (v8)
    {
      indexPathsForVisibleRows2 = [viewCopy indexPathsForVisibleRows];
      firstObject = [indexPathsForVisibleRows2 firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  lastSelectedIndexPath = self->_lastSelectedIndexPath;
  self->_lastSelectedIndexPath = pathCopy;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = +[CarSearchItemCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  v10 = [(CarBaseSearchViewController *)self itemAtIndexPath:pathCopy];
  v11 = [(CarBaseSearchViewController *)self modelForItemAtIndexPath:pathCopy];
  if (!v11)
  {
    objc_initWeak(&location, v9);
    objc_initWeak(&from, self);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10089BA14;
    v17 = &unk_101650570;
    objc_copyWeak(&v18, &from);
    objc_copyWeak(&v19, &location);
    v12 = objc_retainBlock(&v14);
    v11 = [CarSearchItemCellModel modelWithUpdateBlock:v12, v14, v15, v16, v17];
    [(NSMapTable *)self->_modelsByItem setObject:v11 forKey:v10];
    [v10 updateModel:v11];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  [v11 setIsRecent:{objc_msgSend(pathCopy, "section") == 1}];
  [v9 setupWithModel:v11 cellStyle:{-[CarBaseSearchViewController cellStyle](self, "cellStyle")}];

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(CarBaseSearchViewController *)self itemAtIndexPath:pathCopy];
  v7 = [(CarBaseSearchViewController *)self modelForItemAtIndexPath:pathCopy];

  if (!v7)
  {
    v7 = [CarSearchItemCellModel modelWithUpdateBlock:0];
    [v6 updateModel:v7];
  }

  rating = [v7 rating];
  if (rating)
  {

LABEL_6:
    v9 = [(CarBaseSearchViewController *)self cellStyle]!= 1;
    goto LABEL_7;
  }

  if ([v7 shouldShowChargerlabel])
  {
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:
  view = [(CarBaseSearchViewController *)self view];
  _car_usingLargeTextSizes = [view _car_usingLargeTextSizes];

  v12 = 44.0;
  if (_car_usingLargeTextSizes)
  {
    v12 = 72.0;
  }

  v13 = 56.0;
  if (_car_usingLargeTextSizes)
  {
    v13 = 84.0;
  }

  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  return v14;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if (!self->_disableETAUpdates)
  {
    v10 = +[MKLocationManager sharedLocationManager];
    isAuthorizedForPreciseLocation = [v10 isAuthorizedForPreciseLocation];

    if (isAuthorizedForPreciseLocation)
    {
      v12 = [(CarBaseSearchViewController *)self _lastKnownETAForIndexPath:pathCopy];
      if (v12)
      {
        [(CarBaseSearchViewController *)self _applyRouteETA:v12 toCell:cellCopy animated:1];
      }

      else
      {
        v13 = [(CarBaseSearchViewController *)self _quickRouteManagerForIndexPath:pathCopy];
        if (v13)
        {
          if (![(CarBaseSearchViewController *)self userIsActive])
          {
            [v13 set_Car_isVisible:1];
          }

          [v13 _Car_queueUpdateETA];
          [cellCopy expectUpdatedRouteETA];
        }
      }
    }
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(CarBaseSearchViewController *)self setUserIsActive:0];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  if (velocity.y <= 0.0)
  {
    v5 = 7;
  }

  else
  {
    v5 = 8;
  }

  v7 = [CarDisplayController sharedInstance:dragging];
  chromeViewController = [v7 chromeViewController];
  [chromeViewController captureUserAction:v5];
}

- (id)modelForItemAtIndexPath:(id)path
{
  v4 = [(CarBaseSearchViewController *)self itemAtIndexPath:path];
  v5 = [(CarBaseSearchViewController *)self modelForItem:v4];

  return v5;
}

- (void)quickRouteManager:(id)manager didUpdateETA:(id)a error:(id)error animated:(BOOL)animated
{
  managerCopy = manager;
  aCopy = a;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10089BF94;
  v16[3] = &unk_10162CF40;
  errorCopy = error;
  v17 = errorCopy;
  v13 = managerCopy;
  v18 = v13;
  selfCopy = self;
  v14 = aCopy;
  v20 = v14;
  animatedCopy = animated;
  v15 = objc_retainBlock(v16);
  if (+[NSThread isMainThread])
  {
    (v15[2])(v15);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v15);
  }
}

- (id)_quickRouteManagerForIndexPath:(id)path
{
  pathCopy = path;
  mapItem = [(NSMutableDictionary *)self->_quickRouteManagers objectForKeyedSubscript:pathCopy];
  if (!mapItem)
  {
    v6 = [(CarBaseSearchViewController *)self modelForItemAtIndexPath:pathCopy];
    mapItem = [v6 mapItem];

    if (mapItem)
    {
      mapItem = objc_alloc_init(_MKQuickRouteManager);
      [mapItem setDelegate:self];
      [mapItem setView:self];
      mapItem2 = [v6 mapItem];
      [mapItem setMapItem:mapItem2];

      [(NSMutableDictionary *)self->_quickRouteManagers setObject:mapItem forKeyedSubscript:pathCopy];
    }
  }

  return mapItem;
}

- (void)_markAllQuickRouteManagersNotVisible
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_quickRouteManagers allValues];
  v3 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 set_Car_isVisible:0];
        [v7 _Car_cancelUpdateETA];
      }

      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (unint64_t)_markVisibleQuickRouteManagersVisible
{
  tableView = [(CarBaseSearchViewController *)self tableView];
  _maps_isVisible = [tableView _maps_isVisible];

  if (!_maps_isVisible)
  {
    return 0;
  }

  v5 = objc_opt_new();
  indexPathsForVisibleRows = [(CarTableView *)self->_tableView indexPathsForVisibleRows];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [indexPathsForVisibleRows countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v11 = [(CarBaseSearchViewController *)self _quickRouteManagerForIndexPath:*(*(&v17 + 1) + 8 * v10)];
        if (v11)
        {
          [v5 addObject:v11];
          [v11 set_Car_isVisible:1];
          _Car_refreshOperation = [v11 _Car_refreshOperation];
          if (!_Car_refreshOperation || (v13 = _Car_refreshOperation, v14 = [v11 _Car_isPrimaryRefreshQueue], v13, (v14 & 1) == 0))
          {
            [v11 _Car_queueUpdateETA];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [indexPathsForVisibleRows countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [indexPathsForVisibleRows count];

  return v15;
}

- (id)_lastKnownETAForIndexPath:(id)path
{
  v4 = [(CarBaseSearchViewController *)self itemAtIndexPath:path];
  v5 = [(CarBaseSearchViewController *)self _lastKnownETAForItem:v4];

  return v5;
}

- (id)_lastKnownETAForItem:(id)item
{
  if (item)
  {
    v3 = [(NSMapTable *)self->_lastKnownETAResultsForItem objectForKey:?];
    if (v3)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [v3 responseTime];
      if (Current - v5 >= 90.0)
      {
        v6 = 0;
      }

      else
      {
        v6 = v3;
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateAllETAs
{
  if (!self->_suppressETAUpdates && !self->_disableETAUpdates)
  {
    v3 = +[MKLocationManager sharedLocationManager];
    isAuthorizedForPreciseLocation = [v3 isAuthorizedForPreciseLocation];

    if (isAuthorizedForPreciseLocation)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      allValues = [(NSMutableDictionary *)self->_quickRouteManagers allValues];
      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(allValues);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            [v10 _Car_etaAge];
            if (v11 <= 90.0)
            {
              [v10 _Car_etaAge];
              if (v12 >= 0.0)
              {
                continue;
              }
            }

            [v10 _Car_queueUpdateETA];
          }

          v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)continueQuickRouteETAs
{
  if ([(CarBaseSearchViewController *)self isViewLoaded])
  {
    if (!self->_disableETAUpdates)
    {
      v3 = +[MKLocationManager sharedLocationManager];
      isAuthorizedForPreciseLocation = [v3 isAuthorizedForPreciseLocation];

      if (isAuthorizedForPreciseLocation)
      {
        if (!self->_userIsActive && [(CarBaseSearchViewController *)self _markVisibleQuickRouteManagersVisible])
        {

          [CarQuickRouteRefreshOperation suspendQueues:0];
        }
      }
    }
  }
}

- (void)prepareQuickRouteETAs
{
  if (!self->_disableETAUpdates)
  {
    v3 = +[MKLocationManager sharedLocationManager];
    isAuthorizedForPreciseLocation = [v3 isAuthorizedForPreciseLocation];

    if (isAuthorizedForPreciseLocation)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      allValues = [(NSMutableDictionary *)self->_quickRouteManagers allValues];
      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(allValues);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            [v10 set_Car_isVisible:0];
            [v10 _Car_cancelUpdateETA];
            [v10 setDelegate:0];
          }

          v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      v11 = +[NSMutableDictionary dictionary];
      quickRouteManagers = self->_quickRouteManagers;
      self->_quickRouteManagers = v11;
    }
  }
}

- (void)setUserIsActive:(BOOL)active
{
  if (active)
  {
    self->_userIsActive = 1;
    [CarQuickRouteRefreshOperation suspendQueues:1];

    [(CarBaseSearchViewController *)self _markAllQuickRouteManagersNotVisible];
  }

  else if (![(CarBaseSearchViewController *)self userIsActiveStateChangeQueued])
  {
    [(CarBaseSearchViewController *)self setUserIsActiveStateChangeQueued:1];
    v4 = dispatch_time(0, 1000000000 * +[CarQuickRouteRefreshOperation throttlePreventionLevel]);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10089CB84;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CarBaseSearchViewController;
  [(CarBaseSearchViewController *)&v5 viewDidDisappear:disappear];
  self->_suppressETAUpdates = 1;
  v4 = +[MKLocationManager sharedLocationManager];
  [v4 stopLocationUpdateWithObserver:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CarBaseSearchViewController;
  [(CarBaseSearchViewController *)&v4 viewWillDisappear:disappear];
  [(CarBaseSearchViewController *)self _markAllQuickRouteManagersNotVisible];
  [(CarBaseSearchViewController *)self setUserIsActive:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CarBaseSearchViewController;
  [(CarBaseSearchViewController *)&v6 viewDidAppear:appear];
  v4 = +[MKLocationManager sharedLocationManager];
  [v4 startLocationUpdateWithObserver:self];

  [(CarBaseSearchViewController *)self setUserIsActive:0];
  lastSelectedIndexPath = self->_lastSelectedIndexPath;
  self->_lastSelectedIndexPath = 0;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CarBaseSearchViewController;
  [(CarBaseSearchViewController *)&v4 viewWillAppear:appear];
  self->_suppressETAUpdates = 0;
  [(CarBaseSearchViewController *)self setUserIsActive:1];
}

- (void)dealloc
{
  v3 = +[MKLocationManager sharedLocationManager];
  [v3 stopLocationUpdateWithObserver:self];

  v4.receiver = self;
  v4.super_class = CarBaseSearchViewController;
  [(CarBaseSearchViewController *)&v4 dealloc];
}

- (CarBaseSearchViewController)initWithDisabledETAUpdates:(BOOL)updates
{
  v11.receiver = self;
  v11.super_class = CarBaseSearchViewController;
  v4 = [(CarBaseSearchViewController *)&v11 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_disableETAUpdates = updates;
    v4->_suppressETAUpdates = 1;
    v4->_cellStyle = 0;
    v6 = +[NSMapTable weakToStrongObjectsMapTable];
    modelsByItem = v5->_modelsByItem;
    v5->_modelsByItem = v6;

    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    lastKnownETAResultsForItem = v5->_lastKnownETAResultsForItem;
    v5->_lastKnownETAResultsForItem = v8;

    [(CarBaseSearchViewController *)v5 prepareQuickRouteETAs];
  }

  return v5;
}

@end