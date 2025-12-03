@interface RouteStepListViewController
- (BOOL)_shouldShowDebugViewController;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (Class)cellClassForItemType:(unint64_t)type;
- (DirectionsElevationGraphHeaderView)graphHeaderView;
- (NavigationDebugViewsController)debugViewController;
- (RouteStepListDataSource)dataSource;
- (RouteStepListDelegate)delegate;
- (RouteStepListViewController)initWithOptions:(unint64_t)options metrics:(id)metrics;
- (UICollectionView)collectionView;
- (UIScrollView)scrollView;
- (double)maximumHeaderHeight;
- (double)minimumHeaderHeight;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_scrollToStepAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)_updateCollectionViewHeader;
- (void)_updateRouteFromNavigationService;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)customizeItem:(id)item forDataSource:(id)source;
- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)view;
- (void)didTapShareButtonOnRoutePlanningFooterView:(id)view;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info;
- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)reloadDataSource:(id)source;
- (void)reloadIndexPaths:(id)paths;
- (void)reloadStepIndices:(id)indices forDataSource:(id)source;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setDebugViewControllerEnabled:(BOOL)enabled;
- (void)setDisplayRouteFromNavigationService:(BOOL)service;
- (void)setHeaderView:(id)view;
- (void)setRoute:(id)route;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)virtualGarageDidUpdate:(id)update;
@end

@implementation RouteStepListViewController

- (RouteStepListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldShowDebugViewController
{
  v2 = +[NSUserDefaults standardUserDefaults];
  if ([v2 BOOLForKey:@"PlaybackControls"])
  {
    v3 = +[CarDisplayController sharedInstance];
    if ([v3 isCarAppSceneHostingNavigation])
    {
      v4 = +[MNNavigationService sharedService];
      isNavigatingFromTrace = [v4 isNavigatingFromTrace];
    }

    else
    {
      isNavigatingFromTrace = 0;
    }
  }

  else
  {
    isNavigatingFromTrace = 0;
  }

  return isNavigatingFromTrace;
}

- (void)virtualGarageDidUpdate:(id)update
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E0C934;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  updateCopy = update;
  v3 = updateCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_updateRouteFromNavigationService
{
  v5 = +[MNNavigationService sharedService];
  [v5 state];
  if (MNNavigationServiceStateIsNavigating() && ([v5 route], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    [(RouteStepListViewController *)self setRoute:v3];
  }

  else
  {
    [(RouteStepListViewController *)self setRoute:0];
  }
}

- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info
{
  serviceCopy = service;
  distanceCopy = distance;
  route = [serviceCopy route];
  [route distance];
  v11 = v10;
  [distanceCopy distanceRemainingToEndOfLeg];
  if (v11 < v12)
  {
    [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setNavigationProgress:0.0];
  }

  else
  {
    route2 = [serviceCopy route];
    [route2 distance];
    v15 = v14;
    [distanceCopy distanceRemainingToEndOfLeg];
    [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setNavigationProgress:v15 - v16];
  }
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (MNNavigationServiceStateChangedToNavigating())
  {

    [(RouteStepListViewController *)self _updateRouteFromNavigationService];
  }
}

- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  v7 = [(RouteStepListViewController *)self dataSource:service];
  [v7 setActiveStepIndex:index];

  [(RouteStepListViewController *)self _scrollToStepAtIndex:index animated:1];

  [(RouteStepListViewController *)self _updateCollectionViewHeader];
}

- (void)_updateCollectionViewHeader
{
  [(RouteStepListViewController *)self minimumHeaderHeight];
  v4 = v3;
  [(RouteStepListViewController *)self maximumHeaderHeight];
  v6 = v5;
  collectionView = [(RouteStepListViewController *)self collectionView];
  [collectionView contentOffset];
  v9 = v8;
  collectionView2 = [(RouteStepListViewController *)self collectionView];
  [collectionView2 adjustedContentInset];
  v12 = v11 + v9;

  v13 = 0.0;
  v14 = v6 - fmax(v12, 0.0);
  if (_UISolariumEnabled() && !self->_headerView)
  {
    v15 = 0.0;
    v13 = 72.0;
  }

  else
  {
    v15 = 72.0;
  }

  [(NSLayoutConstraint *)self->_collectionViewTopConstraint setConstant:v15 + v4];
  if (v14 > v4 != [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView isBottomHairlineHidden])
  {
    [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setBottomHairlineHidden:v14 > v4];
  }

  if (self->_headerView)
  {
    v16 = 10.0;
  }

  else
  {
    v16 = 0.0;
  }

  [(UICollectionView *)self->_collectionView contentInset];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  collectionView3 = [(RouteStepListViewController *)self collectionView];
  [collectionView3 setContentInset:{v6 - v4 + v13 + v16, v18, v20, v22}];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  collectionView4 = [(RouteStepListViewController *)self collectionView];
  [collectionView4 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];

  [(NSLayoutConstraint *)self->_headerViewHeightConstraint setConstant:fmax(v14, v4)];
  headerViewHeightConstraint = self->_headerViewHeightConstraint;

  [(NSLayoutConstraint *)headerViewHeightConstraint setActive:1];
}

- (void)_scrollToStepAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  dataSource = [(RouteStepListViewController *)self dataSource];
  v8 = [dataSource itemIndexForStepIndex:index];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v11 = [NSIndexPath indexPathForRow:v9 inSection:0];
  collectionView = [(RouteStepListViewController *)self collectionView];
  [collectionView scrollToItemAtIndexPath:v11 atScrollPosition:1 animated:animatedCopy];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  delegate = [(RouteStepListViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(RouteStepListViewController *)self delegate];
    [delegate2 scrollViewDidScroll:scrollCopy];
  }

  [(RouteStepListViewController *)self _updateCollectionViewHeader];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  delegate = [(RouteStepListViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(RouteStepListViewController *)self delegate];
    [delegate2 scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  }

  [draggingCopy contentOffset];
  v10 = v9;
  [(RouteStepListViewController *)self scrollViewOffsetStart];
  if (v10 != v11)
  {
    [(RouteStepListViewController *)self scrollViewOffsetStart];
    if (v10 >= v12)
    {
      v13 = 7;
    }

    else
    {
      v13 = 8;
    }

    route = [(RouteStepListViewController *)self route];
    transportType = [route transportType];

    if (transportType - 1 >= 6)
    {
      displayRouteFromNavigationService = [(RouteStepListViewController *)self displayRouteFromNavigationService];
      v16 = 0;
    }

    else
    {
      v16 = qword_101216278[transportType - 1] - 1;
      displayRouteFromNavigationService = [(RouteStepListViewController *)self displayRouteFromNavigationService];
      if (v16 > 4)
      {
        v18 = 0;
LABEL_14:
        v20 = +[MKMapService sharedService];
        [v20 captureUserAction:v13 onTarget:v18 eventValue:0];

        goto LABEL_15;
      }
    }

    v19 = dword_101215D8C;
    if (displayRouteFromNavigationService)
    {
      v19 = &unk_101215D78;
    }

    v18 = v19[v16];
    goto LABEL_14;
  }

LABEL_15:
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  delegate = [(RouteStepListViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(RouteStepListViewController *)self delegate];
    [delegate2 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  delegate = [(RouteStepListViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(RouteStepListViewController *)self delegate];
    [delegate2 scrollViewWillBeginDragging:draggingCopy];
  }

  [draggingCopy contentOffset];
  [(RouteStepListViewController *)self setScrollViewOffsetStart:v7];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(RouteStepListViewController *)self dataSource];
  items = [dataSource items];
  v7 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    if ([pathCopy row])
    {
      v11 = [pathCopy row] + 1;
      dataSource2 = [(RouteStepListViewController *)self dataSource];
      items2 = [dataSource2 items];
      v14 = [items2 count];

      if (v11 < v14)
      {
        v15 = [pathCopy row];
        if (v15 >= 1)
        {
          v16 = v15;
          while (1)
          {
            dataSource3 = [(RouteStepListViewController *)self dataSource];
            items3 = [dataSource3 items];
            delegate2 = [items3 objectAtIndexedSubscript:v16];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v16-- <= 1)
            {
              goto LABEL_14;
            }
          }

          if (delegate2)
          {
LABEL_16:
            delegate = [(RouteStepListViewController *)self delegate];
            step = [delegate2 step];
            [delegate directionsStepsList:self didTapRowForRouteStep:step];

            goto LABEL_17;
          }
        }
      }

LABEL_14:
      dataSource4 = [(RouteStepListViewController *)self dataSource];
      lastStepManeuverItem = [dataSource4 lastStepManeuverItem];
    }

    else
    {
      dataSource4 = [(RouteStepListViewController *)self dataSource];
      lastStepManeuverItem = [dataSource4 firstStepManeuverItem];
    }

    delegate2 = lastStepManeuverItem;

    if (!delegate2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v8 = v7;
  delegate2 = [(RouteStepListViewController *)self delegate];
  delegate = [v8 step];

  [delegate2 directionsStepsList:self didTapRowForRouteStep:delegate];
LABEL_17:

LABEL_18:
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(RouteStepListViewController *)self dataSource];
  items = [dataSource items];
  v8 = [pathCopy row];

  v9 = [items objectAtIndexedSubscript:v8];

  if ([(RouteStepListViewController *)self allowsSelection])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
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
  pathCopy = path;
  viewCopy = view;
  dataSource = [(RouteStepListViewController *)self dataSource];
  items = [dataSource items];
  v10 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v11 = NSStringFromClass([v10 cellClass]);
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  [v12 setItem:v10];
  [v12 setShouldUseTextToBottomConstraint:1];

  return v12;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(RouteStepListViewController *)self dataSource:view];
  items = [v4 items];
  v6 = [items count];

  return v6;
}

- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)view
{
  delegate = [(RouteStepListViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(RouteStepListViewController *)self delegate];
    [delegate2 directionsStepsListDidTapRAPButton:self];
  }
}

- (void)didTapShareButtonOnRoutePlanningFooterView:(id)view
{
  delegate = [(RouteStepListViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(RouteStepListViewController *)self delegate];
    [delegate2 directionsStepsListDidTapShareButton:self];
  }
}

- (void)customizeItem:(id)item forDataSource:(id)source
{
  itemCopy = item;
  [itemCopy setShowsHairline:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [itemCopy setDelegate:self];
  }
}

- (Class)cellClassForItemType:(unint64_t)type
{
  if (type <= 2)
  {
    self = objc_opt_class();
  }

  return self;
}

- (void)reloadStepIndices:(id)indices forDataSource:(id)source
{
  indicesCopy = indices;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100E0D8E0;
  v8[3] = &unk_101656938;
  v9 = objc_opt_new();
  v6 = v9;
  [indicesCopy enumerateIndexesUsingBlock:v8];

  collectionView = [(RouteStepListViewController *)self collectionView];
  [collectionView reloadItemsAtIndexPaths:v6];
}

- (void)reloadIndexPaths:(id)paths
{
  pathsCopy = paths;
  collectionView = [(RouteStepListViewController *)self collectionView];
  [collectionView reloadItemsAtIndexPaths:pathsCopy];
}

- (void)reloadDataSource:(id)source
{
  collectionView = [(RouteStepListViewController *)self collectionView];
  [collectionView reloadData];

  [(RouteStepListViewController *)self _scrollToStepAtIndex:0 animated:0];
}

- (UIScrollView)scrollView
{
  collectionView = self->_collectionView;
  if (!collectionView)
  {
    collectionView = self->_tableView;
  }

  return collectionView;
}

- (DirectionsElevationGraphHeaderView)graphHeaderView
{
  graphHeaderView = self->_graphHeaderView;
  if (!graphHeaderView)
  {
    v4 = [[DirectionsElevationGraphHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_graphHeaderView;
    self->_graphHeaderView = v4;

    [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setDelegate:self];
    [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setStyleForNavigation:[(RouteStepListViewController *)self displayRouteFromNavigationService]];
    graphHeaderView = self->_graphHeaderView;
  }

  return graphHeaderView;
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  if (headerView != viewCopy)
  {
    [(UIView *)headerView removeFromSuperview];
    [(NSLayoutConstraint *)self->_headerViewHeightConstraint setActive:0];
    headerViewHeightConstraint = self->_headerViewHeightConstraint;
    self->_headerViewHeightConstraint = 0;

    objc_storeStrong(&self->_headerView, view);
    if (viewCopy)
    {
      [(RouteStepListViewController *)self maximumHeaderHeight];
      v9 = v8;
      if (_UISolariumEnabled())
      {
        v10 = 72.0;
      }

      else
      {
        v10 = 0.0;
      }

      view = [(RouteStepListViewController *)self view];
      [view addSubview:viewCopy];

      heightAnchor = [(UIView *)viewCopy heightAnchor];
      v13 = [heightAnchor constraintEqualToConstant:v9];
      v14 = self->_headerViewHeightConstraint;
      self->_headerViewHeightConstraint = v13;

      leadingAnchor = [(UIView *)viewCopy leadingAnchor];
      view2 = [(RouteStepListViewController *)self view];
      leadingAnchor2 = [view2 leadingAnchor];
      v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v29[0] = v25;
      trailingAnchor = [(UIView *)viewCopy trailingAnchor];
      view3 = [(RouteStepListViewController *)self view];
      trailingAnchor2 = [view3 trailingAnchor];
      v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v29[1] = v17;
      topAnchor = [(UIView *)viewCopy topAnchor];
      view4 = [(RouteStepListViewController *)self view];
      topAnchor2 = [view4 topAnchor];
      v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v10];
      v22 = self->_headerViewHeightConstraint;
      v29[2] = v21;
      v29[3] = v22;
      v23 = [NSArray arrayWithObjects:v29 count:4];
      [NSLayoutConstraint activateConstraints:v23];
    }

    [(RouteStepListViewController *)self _updateCollectionViewHeader];
  }
}

- (double)minimumHeaderHeight
{
  headerView = [(RouteStepListViewController *)self headerView];
  if (!headerView)
  {
    return 0.0;
  }

  v4 = headerView;
  headerView2 = [(RouteStepListViewController *)self headerView];
  graphHeaderView = self->_graphHeaderView;

  if (headerView2 != graphHeaderView)
  {
    return 0.0;
  }

  graphHeaderView = [(RouteStepListViewController *)self graphHeaderView];
  [graphHeaderView minimumHeight];
  v10 = v9;

  return v10;
}

- (double)maximumHeaderHeight
{
  headerView = [(RouteStepListViewController *)self headerView];
  if (!headerView)
  {
    return 0.0;
  }

  v4 = headerView;
  headerView2 = [(RouteStepListViewController *)self headerView];
  graphHeaderView = self->_graphHeaderView;

  if (headerView2 != graphHeaderView)
  {
    return 0.0;
  }

  graphHeaderView = [(RouteStepListViewController *)self graphHeaderView];
  [graphHeaderView maximumHeight];
  v10 = v9;

  return v10;
}

- (void)setDisplayRouteFromNavigationService:(BOOL)service
{
  if (self->_displayRouteFromNavigationService != service)
  {
    serviceCopy = service;
    self->_displayRouteFromNavigationService = service;
    [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setStyleForNavigation:?];
    v6 = +[MNNavigationService sharedService];
    v7 = v6;
    if (serviceCopy)
    {
      [v6 registerObserver:self];

      [(RouteStepListViewController *)self _updateRouteFromNavigationService];
      dataSource2 = +[MNNavigationService sharedService];
      stepIndex = [dataSource2 stepIndex];
      dataSource = [(RouteStepListViewController *)self dataSource];
      [dataSource setActiveStepIndex:stepIndex];
    }

    else
    {
      [v6 unregisterObserver:self];

      [(RouteStepListViewController *)self setRoute:0];
      dataSource2 = [(RouteStepListViewController *)self dataSource];
      [dataSource2 setActiveStepIndex:0];
    }
  }
}

- (void)setDebugViewControllerEnabled:(BOOL)enabled
{
  if (self->_debugViewControllerEnabled != enabled)
  {
    self->_debugViewControllerEnabled = enabled;
    if (enabled)
    {
      debugViewController = [(RouteStepListViewController *)self debugViewController];
      debugControlsView = [debugViewController debugControlsView];

      [debugControlsView setTranslatesAutoresizingMaskIntoConstraints:0];
      view = [(RouteStepListViewController *)self view];
      [view addSubview:debugControlsView];

      view2 = [(RouteStepListViewController *)self view];
      safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];

      collectionView = [(RouteStepListViewController *)self collectionView];
      [collectionView layoutMargins];
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [debugControlsView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      v17 = v16;
      leadingAnchor = [debugControlsView leadingAnchor];
      leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
      v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v11];
      v35[0] = v32;
      trailingAnchor = [debugControlsView trailingAnchor];
      v31 = safeAreaLayoutGuide;
      trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
      v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v15];
      v35[1] = v19;
      heightAnchor = [debugControlsView heightAnchor];
      v21 = [heightAnchor constraintEqualToConstant:v17];
      v35[2] = v21;
      bottomAnchor = [debugControlsView bottomAnchor];
      bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
      v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v13];
      v35[3] = v24;
      v25 = [NSArray arrayWithObjects:v35 count:4];
      [NSLayoutConstraint activateConstraints:v25];

      debugViewController2 = [(RouteStepListViewController *)self debugViewController];
      [debugViewController2 didManuallyAddDebugViews];

      [(NSLayoutConstraint *)self->_collectionViewBottomConstraint setConstant:-v17];
    }

    else
    {
      debugViewController = self->_debugViewController;
      if (debugViewController)
      {
        debugControlsView2 = [(NavigationDebugViewsController *)debugViewController debugControlsView];
        [debugControlsView2 removeFromSuperview];

        [(NavigationDebugViewsController *)self->_debugViewController didManuallyRemoveDebugViews];
        collectionViewBottomConstraint = self->_collectionViewBottomConstraint;

        [(NSLayoutConstraint *)collectionViewBottomConstraint setConstant:0.0];
      }
    }
  }
}

- (NavigationDebugViewsController)debugViewController
{
  debugViewController = self->_debugViewController;
  if (!debugViewController)
  {
    v4 = objc_opt_new();
    v5 = self->_debugViewController;
    self->_debugViewController = v4;

    [(NavigationDebugViewsController *)self->_debugViewController setShowTraceControlsForStaleLocations:0];
    [(NavigationDebugViewsController *)self->_debugViewController setAutomaticallyHideTraceControls:0];
    [(NavigationDebugViewsController *)self->_debugViewController setUpCameraSnapshotPickerVCFromViewController:self];
    debugViewController = self->_debugViewController;
  }

  return debugViewController;
}

- (RouteStepListDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    v4 = [RouteStepListDataSource alloc];
    traitCollection = [(RouteStepListViewController *)self traitCollection];
    v6 = [(RouteStepListDataSource *)v4 initWithTraitCollection:traitCollection options:self->_options metrics:self->_metrics context:2];
    v7 = self->_dataSource;
    self->_dataSource = v6;

    [(RouteStepListDataSource *)self->_dataSource setDelegate:self];
    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (UICollectionView)collectionView
{
  collectionView = self->_collectionView;
  if (!collectionView)
  {
    objc_initWeak(&location, self);
    v4 = [UICollectionViewCompositionalLayout alloc];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100E0E67C;
    v24 = &unk_10165E4F0;
    objc_copyWeak(&v25, &location);
    v5 = [v4 initWithSectionProvider:&v21];
    v6 = objc_opt_class();
    v7 = [RouteStepListSectionBackgroundView decorationViewKind:v21];
    [v5 registerClass:v6 forDecorationViewOfKind:v7];

    v8 = [[UICollectionView alloc] initWithFrame:v5 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v9 = self->_collectionView;
    self->_collectionView = v8;

    v10 = [(RouteStepListViewController *)self cellClassForItemType:0];
    v11 = self->_collectionView;
    v12 = NSStringFromClass(v10);
    [(UICollectionView *)v11 registerClass:v10 forCellWithReuseIdentifier:v12];

    v13 = [(RouteStepListViewController *)self cellClassForItemType:1];
    v14 = self->_collectionView;
    v15 = NSStringFromClass(v13);
    [(UICollectionView *)v14 registerClass:v13 forCellWithReuseIdentifier:v15];

    v16 = [(RouteStepListViewController *)self cellClassForItemType:2];
    v17 = self->_collectionView;
    v18 = NSStringFromClass(v16);
    [(UICollectionView *)v17 registerClass:v16 forCellWithReuseIdentifier:v18];

    [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = +[UIColor clearColor];
    [(UICollectionView *)self->_collectionView setBackgroundColor:v19];

    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setDataSource:self];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
    collectionView = self->_collectionView;
  }

  return collectionView;
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    v11 = routeCopy;
    objc_storeStrong(&self->_route, route);
    if ((self->_options & 0x10) != 0 && (-[RouteStepListViewController route](self, "route"), v6 = objc_claimAutoreleasedReturnValue(), [v6 elevationProfile], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      graphHeaderView = [(RouteStepListViewController *)self graphHeaderView];
      [graphHeaderView setRoute:v11];

      graphHeaderView2 = [(RouteStepListViewController *)self graphHeaderView];
      [(RouteStepListViewController *)self setHeaderView:graphHeaderView2];
    }

    else
    {
      [(RouteStepListViewController *)self setHeaderView:0];
    }

    dataSource = [(RouteStepListViewController *)self dataSource];
    [dataSource setRoute:v11];

    routeCopy = v11;
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = RouteStepListViewController;
  [(RouteStepListViewController *)&v5 traitCollectionDidChange:change];
  traitCollection = [(RouteStepListViewController *)self traitCollection];
  [(RouteStepListDataSource *)self->_dataSource setTraitCollection:traitCollection];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = RouteStepListViewController;
  [(RouteStepListViewController *)&v14 viewDidLayoutSubviews];
  computedWidth = self->_computedWidth;
  if (!computedWidth || (-[NSNumber cgFloatValue](computedWidth, "cgFloatValue"), v5 = v4, -[RouteStepListViewController view](self, "view"), v6 = objc_claimAutoreleasedReturnValue(), [v6 frame], v8 = vabdd_f64(v5, v7), v6, v8 > 2.22044605e-16))
  {
    view = [(RouteStepListViewController *)self view];
    [view frame];
    v11 = [NSNumber numberWithDouble:v10];
    v12 = self->_computedWidth;
    self->_computedWidth = v11;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E0EB8C;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RouteStepListViewController;
  [(RouteStepListViewController *)&v5 viewDidAppear:appear];
  dataSource = [(RouteStepListViewController *)self dataSource];
  -[RouteStepListViewController _scrollToStepAtIndex:animated:](self, "_scrollToStepAtIndex:animated:", [dataSource activeStepIndex], 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RouteStepListViewController;
  [(RouteStepListViewController *)&v4 viewWillAppear:appear];
  [(RouteStepListViewController *)self setDebugViewControllerEnabled:[(RouteStepListViewController *)self _shouldShowDebugViewController]];
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = RouteStepListViewController;
  [(RouteStepListViewController *)&v30 viewDidLoad];
  [(RouteStepListViewController *)self setAccessibilityIdentifier:@"RouteStepList"];
  collectionView = [(RouteStepListViewController *)self collectionView];
  [collectionView setAccessibilityIdentifier:@"RouteStepListCollectionView"];

  view = [(RouteStepListViewController *)self view];
  collectionView2 = [(RouteStepListViewController *)self collectionView];
  [view addSubview:collectionView2];

  collectionView3 = [(RouteStepListViewController *)self collectionView];
  topAnchor = [collectionView3 topAnchor];
  view2 = [(RouteStepListViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  collectionViewTopConstraint = self->_collectionViewTopConstraint;
  self->_collectionViewTopConstraint = v10;

  collectionView4 = [(RouteStepListViewController *)self collectionView];
  bottomAnchor = [collectionView4 bottomAnchor];
  view3 = [(RouteStepListViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  collectionViewBottomConstraint = self->_collectionViewBottomConstraint;
  self->_collectionViewBottomConstraint = v16;

  collectionView5 = [(RouteStepListViewController *)self collectionView];
  leadingAnchor = [collectionView5 leadingAnchor];
  view4 = [(RouteStepListViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[0] = v19;
  collectionView6 = [(RouteStepListViewController *)self collectionView];
  trailingAnchor = [collectionView6 trailingAnchor];
  view5 = [(RouteStepListViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25 = self->_collectionViewTopConstraint;
  v31[1] = v24;
  v31[2] = v25;
  v31[3] = self->_collectionViewBottomConstraint;
  v26 = [NSArray arrayWithObjects:v31 count:4];
  [NSLayoutConstraint activateConstraints:v26];

  [(RouteStepListViewController *)self _updateCollectionViewHeader];
}

- (RouteStepListViewController)initWithOptions:(unint64_t)options metrics:(id)metrics
{
  metricsCopy = metrics;
  v16.receiver = self;
  v16.super_class = RouteStepListViewController;
  v8 = [(RouteStepListViewController *)&v16 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_options = options;
    objc_storeStrong(&v8->_metrics, metrics);
    objc_initWeak(&location, v9);
    v10 = +[VGVirtualGarageService sharedService];
    [v10 registerObserver:v9];

    v11 = +[VGVirtualGarageService sharedService];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100E0F12C;
    v13[3] = &unk_101655840;
    objc_copyWeak(&v14, &location);
    [v11 virtualGarageGetGarageWithReply:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v9;
}

@end