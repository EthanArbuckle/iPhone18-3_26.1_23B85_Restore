@interface CarBaseSearchViewController
- (CarBaseSearchViewController)initWithDisabledETAUpdates:(BOOL)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_lastKnownETAForIndexPath:(id)a3;
- (id)_lastKnownETAForItem:(id)a3;
- (id)_quickRouteManagerForIndexPath:(id)a3;
- (id)indexPathForPreferredFocusedViewInTableView:(id)a3;
- (id)modelForItemAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (unint64_t)_markVisibleQuickRouteManagersVisible;
- (void)_markAllQuickRouteManagersNotVisible;
- (void)continueQuickRouteETAs;
- (void)dealloc;
- (void)prepareQuickRouteETAs;
- (void)quickRouteManager:(id)a3 didUpdateETA:(id)a4 error:(id)a5 animated:(BOOL)a6;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setUserIsActive:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateAllETAs;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CarBaseSearchViewController

- (id)indexPathForPreferredFocusedViewInTableView:(id)a3
{
  v4 = a3;
  v5 = [(CarBaseSearchViewController *)self itemAtIndexPath:self->_lastSelectedIndexPath];

  if (v5)
  {
    v6 = self->_lastSelectedIndexPath;
  }

  else
  {
    v7 = [v4 indexPathsForVisibleRows];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v4 indexPathsForVisibleRows];
      v6 = [v9 firstObject];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  lastSelectedIndexPath = self->_lastSelectedIndexPath;
  self->_lastSelectedIndexPath = v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CarSearchItemCell reuseIdentifier];
  v9 = [v6 dequeueReusableCellWithIdentifier:v8 forIndexPath:v7];

  v10 = [(CarBaseSearchViewController *)self itemAtIndexPath:v7];
  v11 = [(CarBaseSearchViewController *)self modelForItemAtIndexPath:v7];
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

  [v11 setIsRecent:{objc_msgSend(v7, "section") == 1}];
  [v9 setupWithModel:v11 cellStyle:{-[CarBaseSearchViewController cellStyle](self, "cellStyle")}];

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CarBaseSearchViewController *)self itemAtIndexPath:v5];
  v7 = [(CarBaseSearchViewController *)self modelForItemAtIndexPath:v5];

  if (!v7)
  {
    v7 = [CarSearchItemCellModel modelWithUpdateBlock:0];
    [v6 updateModel:v7];
  }

  v8 = [v7 rating];
  if (v8)
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
  v10 = [(CarBaseSearchViewController *)self view];
  v11 = [v10 _car_usingLargeTextSizes];

  v12 = 44.0;
  if (v11)
  {
    v12 = 72.0;
  }

  v13 = 56.0;
  if (v11)
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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (!self->_disableETAUpdates)
  {
    v10 = +[MKLocationManager sharedLocationManager];
    v11 = [v10 isAuthorizedForPreciseLocation];

    if (v11)
    {
      v12 = [(CarBaseSearchViewController *)self _lastKnownETAForIndexPath:v9];
      if (v12)
      {
        [(CarBaseSearchViewController *)self _applyRouteETA:v12 toCell:v8 animated:1];
      }

      else
      {
        v13 = [(CarBaseSearchViewController *)self _quickRouteManagerForIndexPath:v9];
        if (v13)
        {
          if (![(CarBaseSearchViewController *)self userIsActive])
          {
            [v13 set_Car_isVisible:1];
          }

          [v13 _Car_queueUpdateETA];
          [v8 expectUpdatedRouteETA];
        }
      }
    }
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(CarBaseSearchViewController *)self setUserIsActive:0];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  if (a4.y <= 0.0)
  {
    v5 = 7;
  }

  else
  {
    v5 = 8;
  }

  v7 = [CarDisplayController sharedInstance:a3];
  v6 = [v7 chromeViewController];
  [v6 captureUserAction:v5];
}

- (id)modelForItemAtIndexPath:(id)a3
{
  v4 = [(CarBaseSearchViewController *)self itemAtIndexPath:a3];
  v5 = [(CarBaseSearchViewController *)self modelForItem:v4];

  return v5;
}

- (void)quickRouteManager:(id)a3 didUpdateETA:(id)a4 error:(id)a5 animated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10089BF94;
  v16[3] = &unk_10162CF40;
  v12 = a5;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v19 = self;
  v14 = v11;
  v20 = v14;
  v21 = a6;
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

- (id)_quickRouteManagerForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_quickRouteManagers objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [(CarBaseSearchViewController *)self modelForItemAtIndexPath:v4];
    v5 = [v6 mapItem];

    if (v5)
    {
      v5 = objc_alloc_init(_MKQuickRouteManager);
      [v5 setDelegate:self];
      [v5 setView:self];
      v7 = [v6 mapItem];
      [v5 setMapItem:v7];

      [(NSMutableDictionary *)self->_quickRouteManagers setObject:v5 forKeyedSubscript:v4];
    }
  }

  return v5;
}

- (void)_markAllQuickRouteManagersNotVisible
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSMutableDictionary *)self->_quickRouteManagers allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 set_Car_isVisible:0];
        [v7 _Car_cancelUpdateETA];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (unint64_t)_markVisibleQuickRouteManagersVisible
{
  v3 = [(CarBaseSearchViewController *)self tableView];
  v4 = [v3 _maps_isVisible];

  if (!v4)
  {
    return 0;
  }

  v5 = objc_opt_new();
  v6 = [(CarTableView *)self->_tableView indexPathsForVisibleRows];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [(CarBaseSearchViewController *)self _quickRouteManagerForIndexPath:*(*(&v17 + 1) + 8 * v10)];
        if (v11)
        {
          [v5 addObject:v11];
          [v11 set_Car_isVisible:1];
          v12 = [v11 _Car_refreshOperation];
          if (!v12 || (v13 = v12, v14 = [v11 _Car_isPrimaryRefreshQueue], v13, (v14 & 1) == 0))
          {
            [v11 _Car_queueUpdateETA];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v6 count];

  return v15;
}

- (id)_lastKnownETAForIndexPath:(id)a3
{
  v4 = [(CarBaseSearchViewController *)self itemAtIndexPath:a3];
  v5 = [(CarBaseSearchViewController *)self _lastKnownETAForItem:v4];

  return v5;
}

- (id)_lastKnownETAForItem:(id)a3
{
  if (a3)
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
    v4 = [v3 isAuthorizedForPreciseLocation];

    if (v4)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [(NSMutableDictionary *)self->_quickRouteManagers allValues];
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(v5);
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

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
      v4 = [v3 isAuthorizedForPreciseLocation];

      if (v4)
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
    v4 = [v3 isAuthorizedForPreciseLocation];

    if (v4)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [(NSMutableDictionary *)self->_quickRouteManagers allValues];
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            [v10 set_Car_isVisible:0];
            [v10 _Car_cancelUpdateETA];
            [v10 setDelegate:0];
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      v11 = +[NSMutableDictionary dictionary];
      quickRouteManagers = self->_quickRouteManagers;
      self->_quickRouteManagers = v11;
    }
  }
}

- (void)setUserIsActive:(BOOL)a3
{
  if (a3)
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

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CarBaseSearchViewController;
  [(CarBaseSearchViewController *)&v5 viewDidDisappear:a3];
  self->_suppressETAUpdates = 1;
  v4 = +[MKLocationManager sharedLocationManager];
  [v4 stopLocationUpdateWithObserver:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarBaseSearchViewController;
  [(CarBaseSearchViewController *)&v4 viewWillDisappear:a3];
  [(CarBaseSearchViewController *)self _markAllQuickRouteManagersNotVisible];
  [(CarBaseSearchViewController *)self setUserIsActive:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CarBaseSearchViewController;
  [(CarBaseSearchViewController *)&v6 viewDidAppear:a3];
  v4 = +[MKLocationManager sharedLocationManager];
  [v4 startLocationUpdateWithObserver:self];

  [(CarBaseSearchViewController *)self setUserIsActive:0];
  lastSelectedIndexPath = self->_lastSelectedIndexPath;
  self->_lastSelectedIndexPath = 0;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarBaseSearchViewController;
  [(CarBaseSearchViewController *)&v4 viewWillAppear:a3];
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

- (CarBaseSearchViewController)initWithDisabledETAUpdates:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = CarBaseSearchViewController;
  v4 = [(CarBaseSearchViewController *)&v11 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_disableETAUpdates = a3;
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