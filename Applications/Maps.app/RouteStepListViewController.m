@interface RouteStepListViewController
- (BOOL)_shouldShowDebugViewController;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (Class)cellClassForItemType:(unint64_t)a3;
- (DirectionsElevationGraphHeaderView)graphHeaderView;
- (NavigationDebugViewsController)debugViewController;
- (RouteStepListDataSource)dataSource;
- (RouteStepListDelegate)delegate;
- (RouteStepListViewController)initWithOptions:(unint64_t)a3 metrics:(id)a4;
- (UICollectionView)collectionView;
- (UIScrollView)scrollView;
- (double)maximumHeaderHeight;
- (double)minimumHeaderHeight;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_scrollToStepAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)_updateCollectionViewHeader;
- (void)_updateRouteFromNavigationService;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)customizeItem:(id)a3 forDataSource:(id)a4;
- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)a3;
- (void)didTapShareButtonOnRoutePlanningFooterView:(id)a3;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6;
- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)reloadDataSource:(id)a3;
- (void)reloadIndexPaths:(id)a3;
- (void)reloadStepIndices:(id)a3 forDataSource:(id)a4;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setDebugViewControllerEnabled:(BOOL)a3;
- (void)setDisplayRouteFromNavigationService:(BOOL)a3;
- (void)setHeaderView:(id)a3;
- (void)setRoute:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)virtualGarageDidUpdate:(id)a3;
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
      v5 = [v4 isNavigatingFromTrace];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100E0C934;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
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

- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6
{
  v17 = a3;
  v8 = a5;
  v9 = [v17 route];
  [v9 distance];
  v11 = v10;
  [v8 distanceRemainingToEndOfLeg];
  if (v11 < v12)
  {
    [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setNavigationProgress:0.0];
  }

  else
  {
    v13 = [v17 route];
    [v13 distance];
    v15 = v14;
    [v8 distanceRemainingToEndOfLeg];
    [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setNavigationProgress:v15 - v16];
  }
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if (MNNavigationServiceStateChangedToNavigating())
  {

    [(RouteStepListViewController *)self _updateRouteFromNavigationService];
  }
}

- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  v7 = [(RouteStepListViewController *)self dataSource:a3];
  [v7 setActiveStepIndex:a4];

  [(RouteStepListViewController *)self _scrollToStepAtIndex:a4 animated:1];

  [(RouteStepListViewController *)self _updateCollectionViewHeader];
}

- (void)_updateCollectionViewHeader
{
  [(RouteStepListViewController *)self minimumHeaderHeight];
  v4 = v3;
  [(RouteStepListViewController *)self maximumHeaderHeight];
  v6 = v5;
  v7 = [(RouteStepListViewController *)self collectionView];
  [v7 contentOffset];
  v9 = v8;
  v10 = [(RouteStepListViewController *)self collectionView];
  [v10 adjustedContentInset];
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
  v23 = [(RouteStepListViewController *)self collectionView];
  [v23 setContentInset:{v6 - v4 + v13 + v16, v18, v20, v22}];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = [(RouteStepListViewController *)self collectionView];
  [v27 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];

  [(NSLayoutConstraint *)self->_headerViewHeightConstraint setConstant:fmax(v14, v4)];
  headerViewHeightConstraint = self->_headerViewHeightConstraint;

  [(NSLayoutConstraint *)headerViewHeightConstraint setActive:1];
}

- (void)_scrollToStepAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(RouteStepListViewController *)self dataSource];
  v8 = [v7 itemIndexForStepIndex:a3];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v11 = [NSIndexPath indexPathForRow:v9 inSection:0];
  v10 = [(RouteStepListViewController *)self collectionView];
  [v10 scrollToItemAtIndexPath:v11 atScrollPosition:1 animated:v4];
}

- (void)scrollViewDidScroll:(id)a3
{
  v7 = a3;
  v4 = [(RouteStepListViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(RouteStepListViewController *)self delegate];
    [v6 scrollViewDidScroll:v7];
  }

  [(RouteStepListViewController *)self _updateCollectionViewHeader];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v21 = a3;
  v6 = [(RouteStepListViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(RouteStepListViewController *)self delegate];
    [v8 scrollViewDidEndDragging:v21 willDecelerate:v4];
  }

  [v21 contentOffset];
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

    v14 = [(RouteStepListViewController *)self route];
    v15 = [v14 transportType];

    if (v15 - 1 >= 6)
    {
      v17 = [(RouteStepListViewController *)self displayRouteFromNavigationService];
      v16 = 0;
    }

    else
    {
      v16 = qword_101216278[v15 - 1] - 1;
      v17 = [(RouteStepListViewController *)self displayRouteFromNavigationService];
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
    if (v17)
    {
      v19 = &unk_101215D78;
    }

    v18 = v19[v16];
    goto LABEL_14;
  }

LABEL_15:
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v12 = a3;
  v9 = [(RouteStepListViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(RouteStepListViewController *)self delegate];
    [v11 scrollViewWillEndDragging:v12 withVelocity:a5 targetContentOffset:{x, y}];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v8 = a3;
  v4 = [(RouteStepListViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(RouteStepListViewController *)self delegate];
    [v6 scrollViewWillBeginDragging:v8];
  }

  [v8 contentOffset];
  [(RouteStepListViewController *)self setScrollViewOffsetStart:v7];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v23 = a4;
  v5 = [(RouteStepListViewController *)self dataSource];
  v6 = [v5 items];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v23, "row")}];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    if ([v23 row])
    {
      v11 = [v23 row] + 1;
      v12 = [(RouteStepListViewController *)self dataSource];
      v13 = [v12 items];
      v14 = [v13 count];

      if (v11 < v14)
      {
        v15 = [v23 row];
        if (v15 >= 1)
        {
          v16 = v15;
          while (1)
          {
            v17 = [(RouteStepListViewController *)self dataSource];
            v18 = [v17 items];
            v9 = [v18 objectAtIndexedSubscript:v16];

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

          if (v9)
          {
LABEL_16:
            v10 = [(RouteStepListViewController *)self delegate];
            v22 = [v9 step];
            [v10 directionsStepsList:self didTapRowForRouteStep:v22];

            goto LABEL_17;
          }
        }
      }

LABEL_14:
      v20 = [(RouteStepListViewController *)self dataSource];
      v21 = [v20 lastStepManeuverItem];
    }

    else
    {
      v20 = [(RouteStepListViewController *)self dataSource];
      v21 = [v20 firstStepManeuverItem];
    }

    v9 = v21;

    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v8 = v7;
  v9 = [(RouteStepListViewController *)self delegate];
  v10 = [v8 step];

  [v9 directionsStepsList:self didTapRowForRouteStep:v10];
LABEL_17:

LABEL_18:
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(RouteStepListViewController *)self dataSource];
  v7 = [v6 items];
  v8 = [v5 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RouteStepListViewController *)self dataSource];
  v9 = [v8 items];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v11 = NSStringFromClass([v10 cellClass]);
  v12 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v6];

  [v12 setItem:v10];
  [v12 setShouldUseTextToBottomConstraint:1];

  return v12;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(RouteStepListViewController *)self dataSource:a3];
  v5 = [v4 items];
  v6 = [v5 count];

  return v6;
}

- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)a3
{
  v4 = [(RouteStepListViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(RouteStepListViewController *)self delegate];
    [v6 directionsStepsListDidTapRAPButton:self];
  }
}

- (void)didTapShareButtonOnRoutePlanningFooterView:(id)a3
{
  v4 = [(RouteStepListViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(RouteStepListViewController *)self delegate];
    [v6 directionsStepsListDidTapShareButton:self];
  }
}

- (void)customizeItem:(id)a3 forDataSource:(id)a4
{
  v5 = a3;
  [v5 setShowsHairline:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDelegate:self];
  }
}

- (Class)cellClassForItemType:(unint64_t)a3
{
  if (a3 <= 2)
  {
    self = objc_opt_class();
  }

  return self;
}

- (void)reloadStepIndices:(id)a3 forDataSource:(id)a4
{
  v5 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100E0D8E0;
  v8[3] = &unk_101656938;
  v9 = objc_opt_new();
  v6 = v9;
  [v5 enumerateIndexesUsingBlock:v8];

  v7 = [(RouteStepListViewController *)self collectionView];
  [v7 reloadItemsAtIndexPaths:v6];
}

- (void)reloadIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [(RouteStepListViewController *)self collectionView];
  [v5 reloadItemsAtIndexPaths:v4];
}

- (void)reloadDataSource:(id)a3
{
  v4 = [(RouteStepListViewController *)self collectionView];
  [v4 reloadData];

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

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  headerView = self->_headerView;
  if (headerView != v5)
  {
    [(UIView *)headerView removeFromSuperview];
    [(NSLayoutConstraint *)self->_headerViewHeightConstraint setActive:0];
    headerViewHeightConstraint = self->_headerViewHeightConstraint;
    self->_headerViewHeightConstraint = 0;

    objc_storeStrong(&self->_headerView, a3);
    if (v5)
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

      v11 = [(RouteStepListViewController *)self view];
      [v11 addSubview:v5];

      v12 = [(UIView *)v5 heightAnchor];
      v13 = [v12 constraintEqualToConstant:v9];
      v14 = self->_headerViewHeightConstraint;
      self->_headerViewHeightConstraint = v13;

      v27 = [(UIView *)v5 leadingAnchor];
      v28 = [(RouteStepListViewController *)self view];
      v26 = [v28 leadingAnchor];
      v25 = [v27 constraintEqualToAnchor:v26];
      v29[0] = v25;
      v24 = [(UIView *)v5 trailingAnchor];
      v15 = [(RouteStepListViewController *)self view];
      v16 = [v15 trailingAnchor];
      v17 = [v24 constraintEqualToAnchor:v16];
      v29[1] = v17;
      v18 = [(UIView *)v5 topAnchor];
      v19 = [(RouteStepListViewController *)self view];
      v20 = [v19 topAnchor];
      v21 = [v18 constraintEqualToAnchor:v20 constant:v10];
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
  v3 = [(RouteStepListViewController *)self headerView];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = [(RouteStepListViewController *)self headerView];
  graphHeaderView = self->_graphHeaderView;

  if (v5 != graphHeaderView)
  {
    return 0.0;
  }

  v8 = [(RouteStepListViewController *)self graphHeaderView];
  [v8 minimumHeight];
  v10 = v9;

  return v10;
}

- (double)maximumHeaderHeight
{
  v3 = [(RouteStepListViewController *)self headerView];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = [(RouteStepListViewController *)self headerView];
  graphHeaderView = self->_graphHeaderView;

  if (v5 != graphHeaderView)
  {
    return 0.0;
  }

  v8 = [(RouteStepListViewController *)self graphHeaderView];
  [v8 maximumHeight];
  v10 = v9;

  return v10;
}

- (void)setDisplayRouteFromNavigationService:(BOOL)a3
{
  if (self->_displayRouteFromNavigationService != a3)
  {
    v4 = a3;
    self->_displayRouteFromNavigationService = a3;
    [(DirectionsElevationGraphHeaderView *)self->_graphHeaderView setStyleForNavigation:?];
    v6 = +[MNNavigationService sharedService];
    v7 = v6;
    if (v4)
    {
      [v6 registerObserver:self];

      [(RouteStepListViewController *)self _updateRouteFromNavigationService];
      v10 = +[MNNavigationService sharedService];
      v8 = [v10 stepIndex];
      v9 = [(RouteStepListViewController *)self dataSource];
      [v9 setActiveStepIndex:v8];
    }

    else
    {
      [v6 unregisterObserver:self];

      [(RouteStepListViewController *)self setRoute:0];
      v10 = [(RouteStepListViewController *)self dataSource];
      [v10 setActiveStepIndex:0];
    }
  }
}

- (void)setDebugViewControllerEnabled:(BOOL)a3
{
  if (self->_debugViewControllerEnabled != a3)
  {
    self->_debugViewControllerEnabled = a3;
    if (a3)
    {
      v4 = [(RouteStepListViewController *)self debugViewController];
      v5 = [v4 debugControlsView];

      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6 = [(RouteStepListViewController *)self view];
      [v6 addSubview:v5];

      v7 = [(RouteStepListViewController *)self view];
      v8 = [v7 safeAreaLayoutGuide];

      v9 = [(RouteStepListViewController *)self collectionView];
      [v9 layoutMargins];
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      v17 = v16;
      v34 = [v5 leadingAnchor];
      v33 = [v8 leadingAnchor];
      v32 = [v34 constraintEqualToAnchor:v33 constant:v11];
      v35[0] = v32;
      v30 = [v5 trailingAnchor];
      v31 = v8;
      v18 = [v8 trailingAnchor];
      v19 = [v30 constraintEqualToAnchor:v18 constant:-v15];
      v35[1] = v19;
      v20 = [v5 heightAnchor];
      v21 = [v20 constraintEqualToConstant:v17];
      v35[2] = v21;
      v22 = [v5 bottomAnchor];
      v23 = [v8 bottomAnchor];
      v24 = [v22 constraintEqualToAnchor:v23 constant:-v13];
      v35[3] = v24;
      v25 = [NSArray arrayWithObjects:v35 count:4];
      [NSLayoutConstraint activateConstraints:v25];

      v26 = [(RouteStepListViewController *)self debugViewController];
      [v26 didManuallyAddDebugViews];

      [(NSLayoutConstraint *)self->_collectionViewBottomConstraint setConstant:-v17];
    }

    else
    {
      debugViewController = self->_debugViewController;
      if (debugViewController)
      {
        v28 = [(NavigationDebugViewsController *)debugViewController debugControlsView];
        [v28 removeFromSuperview];

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
    v5 = [(RouteStepListViewController *)self traitCollection];
    v6 = [(RouteStepListDataSource *)v4 initWithTraitCollection:v5 options:self->_options metrics:self->_metrics context:2];
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

- (void)setRoute:(id)a3
{
  v5 = a3;
  if (self->_route != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_route, a3);
    if ((self->_options & 0x10) != 0 && (-[RouteStepListViewController route](self, "route"), v6 = objc_claimAutoreleasedReturnValue(), [v6 elevationProfile], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = [(RouteStepListViewController *)self graphHeaderView];
      [v8 setRoute:v11];

      v9 = [(RouteStepListViewController *)self graphHeaderView];
      [(RouteStepListViewController *)self setHeaderView:v9];
    }

    else
    {
      [(RouteStepListViewController *)self setHeaderView:0];
    }

    v10 = [(RouteStepListViewController *)self dataSource];
    [v10 setRoute:v11];

    v5 = v11;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = RouteStepListViewController;
  [(RouteStepListViewController *)&v5 traitCollectionDidChange:a3];
  v4 = [(RouteStepListViewController *)self traitCollection];
  [(RouteStepListDataSource *)self->_dataSource setTraitCollection:v4];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = RouteStepListViewController;
  [(RouteStepListViewController *)&v14 viewDidLayoutSubviews];
  computedWidth = self->_computedWidth;
  if (!computedWidth || (-[NSNumber cgFloatValue](computedWidth, "cgFloatValue"), v5 = v4, -[RouteStepListViewController view](self, "view"), v6 = objc_claimAutoreleasedReturnValue(), [v6 frame], v8 = vabdd_f64(v5, v7), v6, v8 > 2.22044605e-16))
  {
    v9 = [(RouteStepListViewController *)self view];
    [v9 frame];
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

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RouteStepListViewController;
  [(RouteStepListViewController *)&v5 viewDidAppear:a3];
  v4 = [(RouteStepListViewController *)self dataSource];
  -[RouteStepListViewController _scrollToStepAtIndex:animated:](self, "_scrollToStepAtIndex:animated:", [v4 activeStepIndex], 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RouteStepListViewController;
  [(RouteStepListViewController *)&v4 viewWillAppear:a3];
  [(RouteStepListViewController *)self setDebugViewControllerEnabled:[(RouteStepListViewController *)self _shouldShowDebugViewController]];
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = RouteStepListViewController;
  [(RouteStepListViewController *)&v30 viewDidLoad];
  [(RouteStepListViewController *)self setAccessibilityIdentifier:@"RouteStepList"];
  v3 = [(RouteStepListViewController *)self collectionView];
  [v3 setAccessibilityIdentifier:@"RouteStepListCollectionView"];

  v4 = [(RouteStepListViewController *)self view];
  v5 = [(RouteStepListViewController *)self collectionView];
  [v4 addSubview:v5];

  v6 = [(RouteStepListViewController *)self collectionView];
  v7 = [v6 topAnchor];
  v8 = [(RouteStepListViewController *)self view];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  collectionViewTopConstraint = self->_collectionViewTopConstraint;
  self->_collectionViewTopConstraint = v10;

  v12 = [(RouteStepListViewController *)self collectionView];
  v13 = [v12 bottomAnchor];
  v14 = [(RouteStepListViewController *)self view];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  collectionViewBottomConstraint = self->_collectionViewBottomConstraint;
  self->_collectionViewBottomConstraint = v16;

  v29 = [(RouteStepListViewController *)self collectionView];
  v27 = [v29 leadingAnchor];
  v28 = [(RouteStepListViewController *)self view];
  v18 = [v28 leadingAnchor];
  v19 = [v27 constraintEqualToAnchor:v18];
  v31[0] = v19;
  v20 = [(RouteStepListViewController *)self collectionView];
  v21 = [v20 trailingAnchor];
  v22 = [(RouteStepListViewController *)self view];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v25 = self->_collectionViewTopConstraint;
  v31[1] = v24;
  v31[2] = v25;
  v31[3] = self->_collectionViewBottomConstraint;
  v26 = [NSArray arrayWithObjects:v31 count:4];
  [NSLayoutConstraint activateConstraints:v26];

  [(RouteStepListViewController *)self _updateCollectionViewHeader];
}

- (RouteStepListViewController)initWithOptions:(unint64_t)a3 metrics:(id)a4
{
  v7 = a4;
  v16.receiver = self;
  v16.super_class = RouteStepListViewController;
  v8 = [(RouteStepListViewController *)&v16 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_options = a3;
    objc_storeStrong(&v8->_metrics, a4);
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