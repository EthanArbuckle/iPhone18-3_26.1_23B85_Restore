@interface RoutePlanningOutlineRootController
- (BOOL)_hasExpandedStepsForRoute:(id)a3;
- (BOOL)_isFamiliarRoutesAvailable;
- (BOOL)_showDetailButton;
- (BOOL)_showPersistentHighlight;
- (BOOL)hasExpandedSteps;
- (BOOL)shouldShowAdvisoryFooter;
- (CGRect)mostImportantRectToFrameWithSelectedRoute:(id)a3;
- (MapsCustomRouteCellDelegate)customRouteDelegate;
- (RouteOverviewCellDelegate)routeCellDelegate;
- (RoutePlanningDataCoordination)dataCoordinator;
- (RoutePlanningOutlineRootController)initWithCollectionView:(id)a3;
- (RoutePlanningOverviewRouteCreationCellDelegate)routeCreationDelegate;
- (RouteRowSelectionDelegate)routeSelectionDelegate;
- (TransitDirectionsStepsListDelegate)stepsListDelegate;
- (TransitPayActionDelegate)transitPayActionDelegate;
- (double)estimatedFeatureDiscoveryHeight;
- (double)estimatedRoutePlanningAdvisoryFooterViewHeight;
- (id)_routeForExpandingOrCollapsingFromIndexPath:(id)a3;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (id)indexPathForRoute:(id)a3;
- (id)mostImportantIndexPathWithSelectedRoute:(id)a3;
- (id)routeForRowAtIndexPath:(id)a3;
- (int64_t)indexOfRouteForRowAtIndexPath:(id)a3;
- (void)_createRouteSectionsForCurrentRoutes;
- (void)_toggleStepsExpansionForRoute:(id)a3;
- (void)collapseCurrentlyFocusedRoute;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didUpdateVisibleOutlineSections;
- (void)expandCurrentlyFocusedRoute;
- (void)prepareOutlineSections;
- (void)reloadExistingCellForRoute:(id)a3;
- (void)reloadVisibleRouteCells;
- (void)setAllowPersistentHighlight:(BOOL)a3;
- (void)setAutomaticSharingContacts:(id)a3;
- (void)setCustomRouteDelegate:(id)a3;
- (void)setRouteCellDelegate:(id)a3;
- (void)setRouteCreationDelegate:(id)a3;
- (void)setRouteSelectionDelegate:(id)a3;
- (void)setStepsListDelegate:(id)a3;
- (void)setTransitPayActionDelegate:(id)a3;
- (void)setupAdvisoryInfoLayout:(id)a3 tapHandler:(id)a4;
- (void)toggleStepsExpansionForRouteAtIndexPath:(id)a3;
- (void)updateWithTransportType:(int64_t)a3 routeCollection:(id)a4 isInACustomRouteRegion:(BOOL)a5;
@end

@implementation RoutePlanningOutlineRootController

- (TransitPayActionDelegate)transitPayActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitPayActionDelegate);

  return WeakRetained;
}

- (TransitDirectionsStepsListDelegate)stepsListDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stepsListDelegate);

  return WeakRetained;
}

- (RouteRowSelectionDelegate)routeSelectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routeSelectionDelegate);

  return WeakRetained;
}

- (MapsCustomRouteCellDelegate)customRouteDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customRouteDelegate);

  return WeakRetained;
}

- (RoutePlanningOverviewRouteCreationCellDelegate)routeCreationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routeCreationDelegate);

  return WeakRetained;
}

- (RouteOverviewCellDelegate)routeCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routeCellDelegate);

  return WeakRetained;
}

- (RoutePlanningDataCoordination)dataCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  return WeakRetained;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:UICollectionElementKindSectionFooter])
  {
    v11 = +[_TtC4Maps29RoutingAdvisoryInfoFooterView reuseIdentifier];
    v12 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v11 forIndexPath:v10];

    [v12 removeFooterLabels];
    if (self->_shouldReloadFooterView && (v13 = [v10 section], v13 == objc_msgSend(v8, "numberOfSections") - 1) && -[RoutePlanningOutlineRootController shouldShowAdvisoryFooter](self, "shouldShowAdvisoryFooter"))
    {
      objc_initWeak(&location, self);
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x3042000000;
      v19[3] = sub_1009C7500;
      v19[4] = sub_1009C750C;
      objc_initWeak(&v20, v12);
      v14 = [(GEOAdvisoriesInfo *)self->_advisoryInfo genericAdvisorys];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1009C7514;
      v17[3] = &unk_101631230;
      objc_copyWeak(&v18, &location);
      v17[4] = v19;
      [v12 updateDescriptionInfo:v14 tapHandler:v17];

      objc_destroyWeak(&v18);
      _Block_object_dispose(v19, 8);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    else
    {
      [v12 frame];
      [v12 setFrame:?];
      [v12 setAlpha:0.0];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = RoutePlanningOutlineRootController;
    v12 = [(RoutePlanningOutlineController *)&v16 collectionView:v8 viewForSupplementaryElementOfKind:v9 atIndexPath:v10];
  }

  return v12;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  v4 = [(RoutePlanningOutlineRootController *)self routeCollection];
  v5 = [v4 currentRoute];

  if (v5)
  {
    v6 = [(RoutePlanningOutlineRootController *)self routeCollection];
    v7 = [v6 currentRoute];
    v8 = [(RoutePlanningOutlineRootController *)self indexPathForRoute:v7];
  }

  else
  {
    v8 = [NSIndexPath indexPathForItem:0 inSection:0];
  }

  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = RoutePlanningOutlineRootController;
  [(RoutePlanningOutlineController *)&v27 collectionView:v6 didSelectItemAtIndexPath:v7];
  v8 = -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [v7 section]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = [(RoutePlanningOutlineRootController *)self routeSelectionDelegate];
    v11 = [v9 route];

    [v10 dataSource:self didSelectRowForRoute:v11];
    [v6 deselectItemAtIndexPath:v7 animated:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v7;
      v21 = v8;
      v12 = v8;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = [(NSMapTable *)self->_routeOverviewSectionsByRoute keyEnumerator];
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v23 + 1) + 8 * i);
            v19 = [(NSMapTable *)self->_routeOverviewSectionsByRoute objectForKey:v18];
            v20 = [v12 route];
            [v19 setHasSelectedStep:v18 == v20];
          }

          v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v15);
      }

      v7 = v22;
      v8 = v21;
    }
  }
}

- (void)setupAdvisoryInfoLayout:(id)a3 tapHandler:(id)a4
{
  objc_storeStrong(&self->_advisoryInfo, a3);
  v10 = a3;
  v7 = a4;
  self->_shouldReloadFooterView = v10 != 0;
  v8 = objc_retainBlock(v7);

  advisoryTapHandler = self->_advisoryTapHandler;
  self->_advisoryTapHandler = v8;
}

- (void)setTransitPayActionDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_transitPayActionDelegate);

    if (WeakRetained != v4)
    {
      objc_storeWeak(&self->_transitPayActionDelegate, v4);
      [(RoutePlanningFeatureDiscoverOutlineSection *)self->_featureDiscoverySection setTransitPayActionDelegate:v4];
    }
  }

  else
  {
    v6 = sub_10003D020();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RoutePlanningOutlineRootController.m";
      v10 = 1024;
      v11 = 769;
      v12 = 2082;
      v13 = "[RoutePlanningOutlineRootController setTransitPayActionDelegate:]";
      v14 = 2082;
      v15 = "nil == transitPayActionDelegate";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Transit + Pay requires an action delegate", &v8, 0x26u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RoutePlanningOutlineRootController.m";
      v10 = 1024;
      v11 = 769;
      v12 = 2082;
      v13 = "[RoutePlanningOutlineRootController setTransitPayActionDelegate:]";
      v14 = 2082;
      v15 = "nil == transitPayActionDelegate";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Transit + Pay requires an action delegate", &v8, 0x26u);
    }
  }
}

- (void)setStepsListDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_stepsListDelegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_stepsListDelegate, v4);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(NSMapTable *)self->_stepsSectionsByRoute objectEnumerator];
    v7 = [v6 allObjects];

    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11) setStepsListDelegate:v4];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)setRouteSelectionDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_routeSelectionDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_routeSelectionDelegate, obj);
    v5 = obj;
  }
}

- (void)setCustomRouteDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_customRouteDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_customRouteDelegate, obj);
    [(RoutePlanningRouteCreationOutlineSection *)self->_routeCreationSection setCustomRouteDelegate:obj];
  }
}

- (void)setRouteCreationDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_routeCreationDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_routeCreationDelegate, obj);
    [(RoutePlanningRouteCreationOutlineSection *)self->_routeCreationSection setRouteCreationDelegate:obj];
  }
}

- (void)setRouteCellDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_routeCellDelegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_routeCellDelegate, v4);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_routeOverviewSections;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) setRouteCellDelegate:{v4, v11}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)updateWithTransportType:(int64_t)a3 routeCollection:(id)a4 isInACustomRouteRegion:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = sub_1007995B8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if ((a3 - 1) > 4)
    {
      v10 = @"Undefined";
    }

    else
    {
      v10 = off_1016312A0[a3 - 1];
    }

    v11 = [v8 uniqueRouteIDs];
    *buf = 138412546;
    v51 = v10;
    v52 = 2112;
    v53 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "updateWithTransportType: %@, routeCollection: %@", buf, 0x16u);
  }

  transportType = self->_transportType;
  routeCollection = self->_routeCollection;
  v14 = v8;
  v15 = v14;
  if (v14 | routeCollection)
  {
    v16 = [v14 isEqual:routeCollection];
  }

  else
  {
    v16 = 1;
  }

  v17 = [(RoutePlanningOutlineRootController *)self isInACustomRouteRegion]^ v5;
  v18 = transportType != a3 || v16 == 0;
  if (v18 || (v17 & 1) != 0)
  {
    if ((transportType != a3) | v17 & 1)
    {
      v20 = 1;
    }

    else
    {
      v21 = [v15 routes];
      [(RouteCollection *)self->_routeCollection routes];
      v23 = v22 = v15;
      v38 = v5;
      v24 = [v21 isEqualToArray:v23];

      v15 = v22;
      v20 = v24 ^ 1;
      LOBYTE(v5) = v38;
    }

    objc_storeStrong(&self->_routeCollection, a4);
    self->_transportType = a3;
    self->_isInACustomRouteRegion = v5;
    v25 = [(RoutePlanningFeatureDiscoverOutlineSection *)self->_featureDiscoverySection updateWithTransportType:a3 routeCollection:v15];
    if (v20 & 1) != 0 || (v25)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1009CA2F0;
      v41[3] = &unk_101632908;
      v42 = v16;
      v43 = v25;
      v44 = v17 ^ 1;
      v41[4] = self;
      [(RoutePlanningOutlineController *)self performBatchSectionUpdates:v41];
    }

    else
    {
      v26 = sub_1007995B8();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Only current route changed", buf, 2u);
      }

      obja = v15;
      v27 = [v15 currentRoute];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v28 = self->_routeOverviewSections;
      v29 = [(NSArray *)v28 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v46;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v46 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v45 + 1) + 8 * i);
            v34 = [v33 route];
            [v33 setCurrentRoute:v34 == v27];

            stepsSectionsByRoute = self->_stepsSectionsByRoute;
            v36 = [v33 route];
            v37 = [(NSMapTable *)stepsSectionsByRoute objectForKey:v36];

            [v37 setCurrentRoute:{objc_msgSend(v33, "isCurrentRoute")}];
          }

          v30 = [(NSArray *)v28 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v30);
      }

      v15 = obja;
    }
  }

  else
  {
    v19 = sub_1007995B8();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "No changes, exit early", buf, 2u);
    }
  }
}

- (BOOL)shouldShowAdvisoryFooter
{
  v3 = [(RoutePlanningOutlineRootController *)self dataCoordinator];
  v4 = [v3 transportType];

  if (v4 != 1)
  {
    v6 = sub_100798A3C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "No Footer for other transport type than Drive", buf, 2u);
    }

    goto LABEL_14;
  }

  v5 = [(RoutePlanningOutlineRootController *)self dataCoordinator];
  v6 = [v5 advisoriesInfo];

  if (!v6 || (-[NSObject genericAdvisorys](v6, "genericAdvisorys"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, -[NSObject genericAdvisorys](v6, "genericAdvisorys"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v8, !v10))
  {
    v13 = sub_100798A3C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "No Footer when the advisoriesInfo is nil or advisoriesInfo genericAdvisorys count is 0", buf, 2u);
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if ([(RoutePlanningOutlineRootController *)self _isFamiliarRoutesAvailable])
  {
    v11 = sub_100798A3C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Showing Footer for familiar route", buf, 2u);
    }

    v12 = 1;
  }

  else
  {
    *buf = 0;
    v26 = buf;
    v27 = 0x2020000000;
    v28 = 1;
    v15 = [(RoutePlanningOutlineRootController *)self routeCollection];
    v16 = [v15 currentRoute];
    v17 = [v16 waypoints];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1009CA798;
    v24[3] = &unk_1016311E0;
    v24[4] = buf;
    [v17 enumerateObjectsUsingBlock:v24];

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    if (v26[24] == 1 && (-[NSObject genericAdvisorys](v6, "genericAdvisorys"), v18 = objc_claimAutoreleasedReturnValue(), v19[0] = _NSConcreteStackBlock, v19[1] = 3221225472, v19[2] = sub_1009CA818, v19[3] = &unk_101631208, v19[4] = &v20, [v18 enumerateObjectsUsingBlock:v19], v18, (v26[24] & 1) != 0))
    {
      v12 = *(v21 + 24);
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(buf, 8);
  }

LABEL_15:

  return v12 & 1;
}

- (BOOL)_isFamiliarRoutesAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(RoutePlanningOutlineRootController *)self routeCollection];
  v3 = [v2 routes];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1009CA93C;
  v5[3] = &unk_1016311B8;
  v5[4] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_createRouteSectionsForCurrentRoutes
{
  [(NSMapTable *)self->_routeOverviewSectionsByRoute removeAllObjects];
  [(NSMapTable *)self->_stepsSectionsByRoute removeAllObjects];
  v3 = [(RoutePlanningOutlineRootController *)self routeCollection];
  v4 = [v3 currentRoute];

  v5 = [(RoutePlanningOutlineRootController *)self routeCollection];
  v6 = [v5 routes];

  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        [v14 distance];
        if (v12 <= v15)
        {
          [v14 distance];
          v12 = v16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v10);
  }

  v17 = [(RoutePlanningOutlineRootController *)self _showPersistentHighlight];
  v18 = [(RoutePlanningOutlineRootController *)self _showDetailButton];
  v19 = [v8 lastObject];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1009CAC6C;
  v27[3] = &unk_101631190;
  v27[4] = self;
  v31 = v18;
  v32 = v17;
  v20 = v4;
  v28 = v20;
  v21 = v19;
  v29 = v21;
  v22 = v7;
  v30 = v22;
  [v8 enumerateObjectsUsingBlock:v27];
  v23 = [v22 copy];
  routeOverviewSections = self->_routeOverviewSections;
  self->_routeOverviewSections = v23;

  v25 = sub_1007995B8();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = [(NSArray *)self->_routeOverviewSections count];
    *buf = 134217984;
    v38 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Created %lu for current routes", buf, 0xCu);
  }
}

- (BOOL)_showDetailButton
{
  if (_UISolariumEnabled())
  {
    v3 = [(RoutePlanningOutlineController *)self collectionView];
    v4 = sub_10000FA08(v3);

    if (v4 == 5)
    {
      return 0;
    }
  }

  if ([(RoutePlanningOutlineRootController *)self allowsPersistentHighlight])
  {
    return 1;
  }

  v6 = [(RoutePlanningOutlineController *)self collectionView];
  v5 = sub_10000FA08(v6) == 5;

  return v5;
}

- (BOOL)_showPersistentHighlight
{
  if (![(RoutePlanningOutlineRootController *)self allowsPersistentHighlight])
  {
    return 0;
  }

  v3 = [(RoutePlanningOutlineRootController *)self routeCollection];
  if ([v3 count] <= 1)
  {
    v5 = [(RoutePlanningOutlineController *)self collectionView];
    v4 = sub_10000FA08(v5) == 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setAutomaticSharingContacts:(id)a3
{
  v5 = a3;
  automaticSharingContacts = self->_automaticSharingContacts;
  v7 = v5;
  v8 = automaticSharingContacts;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      v11 = sub_1000946AC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "RoutePlanningOutlineRootController setting automatic sharing contacts: %@", buf, 0xCu);
      }

      v12 = sub_1007995B8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Set automaticSharingContacts: %@", buf, 0xCu);
      }

      objc_storeStrong(&self->_automaticSharingContacts, a3);
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = self->_routeOverviewSections;
      v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v18 + 1) + 8 * v17) setAutomaticSharingContacts:{v7, v18}];
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v15);
      }
    }
  }
}

- (void)setAllowPersistentHighlight:(BOOL)a3
{
  if (self->_allowPersistentHighlight != a3)
  {
    v3 = a3;
    v5 = sub_1007995B8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = v6;
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Set allowPersistentHighlight: %@", buf, 0xCu);
    }

    self->_allowPersistentHighlight = v3;
    v8 = [(RoutePlanningOutlineRootController *)self _showPersistentHighlight];
    v9 = [(RoutePlanningOutlineRootController *)self _showDetailButton];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = self->_routeOverviewSections;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          [v15 setAllowPersistentHighlight:{v8, v16}];
          [v15 setShowDetailButton:v9];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (void)reloadVisibleRouteCells
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(RoutePlanningOutlineController *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [*(*(&v10 + 1) + 8 * v8) section]);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 reloadExistingCell];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)reloadExistingCellForRoute:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_routeOverviewSections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v10 route];

        if (v11 == v4)
        {
          [v10 reloadExistingCell];
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (int64_t)indexOfRouteForRowAtIndexPath:(id)a3
{
  v4 = -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [a3 section]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSArray *)self->_routeOverviewSections indexOfObject:v4];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)indexPathForRoute:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_routeOverviewSections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 route];

        if (v11 == v4)
        {
          v12 = [NSIndexPath indexPathForItem:0 inSection:[(RoutePlanningOutlineController *)self sectionIndexForOutlineSection:v10]];
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)routeForRowAtIndexPath:(id)a3
{
  v3 = -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [a3 section]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 route];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)estimatedRoutePlanningAdvisoryFooterViewHeight
{
  if (!self->_advisoryInfo)
  {
    return 0.0;
  }

  v3 = [(RoutePlanningOutlineController *)self collectionView];
  v4 = sub_10000FA08(v3);

  if (v4 == 5)
  {
    return 0.0;
  }

  v6 = [(GEOAdvisoriesInfo *)self->_advisoryInfo genericAdvisorys];
  v7 = [(RoutePlanningOutlineController *)self collectionView];
  [v7 frame];
  [_TtC4Maps29RoutingAdvisoryInfoFooterView getEstimatedFooterHeight:v6 maxWidth:v8];
  v10 = v9;

  return v10;
}

- (double)estimatedFeatureDiscoveryHeight
{
  v3 = [(RoutePlanningOutlineController *)self collectionView];
  if (sub_10000FA08(v3))
  {
    v4 = [(RoutePlanningOutlineController *)self collectionView];
    v5 = sub_10000FA08(v4);

    if (v5 != 1)
    {
      return 0.0;
    }
  }

  else
  {
  }

  if ([(RoutePlanningFeatureDiscoverOutlineSection *)self->_featureDiscoverySection numberOfSections]< 1 || [(RoutePlanningFeatureDiscoverOutlineSection *)self->_featureDiscoverySection numberOfItemsInSection:0]< 1)
  {
    return 0.0;
  }

  +[FeatureDiscoveryView estimatedHeight];
  return result;
}

- (void)_toggleStepsExpansionForRoute:(id)a3
{
  stepsSectionsByRoute = self->_stepsSectionsByRoute;
  v5 = a3;
  v6 = [(NSMapTable *)stepsSectionsByRoute objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    v8 = [(RoutePlanningOutlineController *)self sectionIndexForOutlineSection:v6];
    [(NSMapTable *)self->_stepsSectionsByRoute removeObjectForKey:v5];
  }

  else
  {
    v9 = [RoutePlanningRouteStepsOutlineSection alloc];
    v10 = [(RoutePlanningOutlineController *)self collectionView];
    v11 = [(RoutePlanningOutlineRootController *)self routeCollection];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Route%lu.Steps", [v11 indexOfRoute:v5]);
    v7 = [(RoutePlanningOutlineSection *)v9 initWithCollectionView:v10 sectionIdentifier:v12];

    [(RoutePlanningRouteStepsOutlineSection *)v7 setRoute:v5];
    [(RoutePlanningOutlineSection *)v7 setHost:self];
    v13 = [(RoutePlanningOutlineRootController *)self stepsListDelegate];
    [(RoutePlanningRouteStepsOutlineSection *)v7 setStepsListDelegate:v13];

    [(NSMapTable *)self->_stepsSectionsByRoute setObject:v7 forKey:v5];
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = [(NSMapTable *)self->_routeOverviewSectionsByRoute objectForKey:v5];

  [v14 setExpanded:v8 == 0x7FFFFFFFFFFFFFFFLL];
  -[RoutePlanningRouteStepsOutlineSection setCurrentRoute:](v7, "setCurrentRoute:", [v14 isCurrentRoute]);
  v15 = [(RoutePlanningOutlineController *)self collectionView];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1009CBCC4;
  v18[3] = &unk_10165E668;
  v19 = v7;
  v20 = v8;
  v18[4] = self;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1009CBDA4;
  v17[3] = &unk_101661738;
  v17[4] = self;
  v16 = v7;
  [v15 performBatchUpdates:v18 completion:v17];
}

- (void)toggleStepsExpansionForRouteAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningOutlineController *)self collectionView];
  v6 = sub_10000FA08(v5);

  if (v6 != 5)
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315906;
      v17 = "[RoutePlanningOutlineRootController toggleStepsExpansionForRouteAtIndexPath:]";
      v18 = 2080;
      v19 = "RoutePlanningOutlineRootController.m";
      v20 = 1024;
      v21 = 403;
      v22 = 2080;
      v23 = "MapsIdiomIsMac(self.collectionView)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
      }
    }
  }

  v7 = [(RoutePlanningOutlineController *)self collectionView];
  v8 = sub_10000FA08(v7);

  if (v8 == 5)
  {
    v9 = [(RoutePlanningOutlineRootController *)self routeForRowAtIndexPath:v4];
    if (v9)
    {
      v10 = sub_1007995B8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v9 uniqueRouteID];
        v12 = [v4 section];
        v16 = 138412546;
        v17 = v11;
        v18 = 2048;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Will toggle expanded steps for route %@ at index %ld", &v16, 0x16u);
      }

      [(RoutePlanningOutlineRootController *)self _toggleStepsExpansionForRoute:v9];
    }
  }
}

- (id)_routeForExpandingOrCollapsingFromIndexPath:(id)a3
{
  v3 = -[RoutePlanningOutlineController outlineSectionAtIndex:](self, "outlineSectionAtIndex:", [a3 section]);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 route];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)collapseCurrentlyFocusedRoute
{
  v3 = [(RoutePlanningOutlineController *)self collectionView];
  v4 = sub_10000FA08(v3);

  if (v4 != 5)
  {
    v19 = sub_10006D178();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v28 = "[RoutePlanningOutlineRootController collapseCurrentlyFocusedRoute]";
      v29 = 2080;
      v30 = "RoutePlanningOutlineRootController.m";
      v31 = 1024;
      v32 = 369;
      v33 = 2080;
      v34 = "MapsIdiomIsMac(self.collectionView)";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v5 = [(RoutePlanningOutlineController *)self collectionView];
  v6 = sub_10000FA08(v5);

  if (v6 == 5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [(RoutePlanningOutlineController *)self collectionView];
    v8 = [v7 visibleCells];

    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if ([v13 isFocused])
          {
            v15 = [(RoutePlanningOutlineController *)self collectionView];
            v16 = [v15 indexPathForCell:v13];

            v14 = [(RoutePlanningOutlineRootController *)self _routeForExpandingOrCollapsingFromIndexPath:v16];

            if (v14 && [(RoutePlanningOutlineRootController *)self _hasExpandedStepsForRoute:v14])
            {
              v17 = sub_1007995B8();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v18 = [v14 uniqueRouteID];
                *buf = 138412546;
                v28 = v18;
                v29 = 2048;
                v30 = &index;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Will collapse steps for route %@ at index %lu", buf, 0x16u);
              }

              [(RoutePlanningOutlineRootController *)self _toggleStepsExpansionForRoute:v14];
            }

            goto LABEL_17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_17:
  }
}

- (void)expandCurrentlyFocusedRoute
{
  v3 = [(RoutePlanningOutlineController *)self collectionView];
  v4 = sub_10000FA08(v3);

  if (v4 != 5)
  {
    v20 = sub_10006D178();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v29 = "[RoutePlanningOutlineRootController expandCurrentlyFocusedRoute]";
      v30 = 2080;
      v31 = "RoutePlanningOutlineRootController.m";
      v32 = 1024;
      v33 = 345;
      v34 = 2080;
      v35 = "MapsIdiomIsMac(self.collectionView)";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v29 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v5 = [(RoutePlanningOutlineController *)self collectionView];
  v6 = sub_10000FA08(v5);

  if (v6 == 5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [(RoutePlanningOutlineController *)self collectionView];
    v8 = [v7 visibleCells];

    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          if ([v13 isFocused])
          {
            v15 = [(RoutePlanningOutlineController *)self collectionView];
            v16 = [v15 indexPathForCell:v13];

            v17 = [v16 section];
            v14 = [(RoutePlanningOutlineRootController *)self _routeForExpandingOrCollapsingFromIndexPath:v16];

            if (v14 && ![(RoutePlanningOutlineRootController *)self _hasExpandedStepsForRoute:v14])
            {
              v18 = sub_1007995B8();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v19 = [v14 uniqueRouteID];
                *buf = 138412546;
                v29 = v19;
                v30 = 2048;
                v31 = v17;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Will expand steps for route %@ at index %lu", buf, 0x16u);
              }

              [(RoutePlanningOutlineRootController *)self _toggleStepsExpansionForRoute:v14];
            }

            goto LABEL_17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_17:
  }
}

- (BOOL)_hasExpandedStepsForRoute:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  outlineSections = self->super._outlineSections;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009CC830;
  v8[3] = &unk_10164D178;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(NSArray *)outlineSections enumerateObjectsUsingBlock:v8];
  LOBYTE(outlineSections) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return outlineSections;
}

- (BOOL)hasExpandedSteps
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  outlineSections = self->super._outlineSections;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1009CC998;
  v5[3] = &unk_101631140;
  v5[4] = &v6;
  [(NSArray *)outlineSections enumerateObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (CGRect)mostImportantRectToFrameWithSelectedRoute:(id)a3
{
  v4 = a3;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if ([(RoutePlanningFeatureDiscoverOutlineSection *)self->_featureDiscoverySection numberOfSections]< 1 || [(RoutePlanningFeatureDiscoverOutlineSection *)self->_featureDiscoverySection numberOfItemsInSection:0]< 1)
  {
    v17 = height;
    v15 = width;
    v60 = CGRectZero.origin.x;
    v61 = y;
  }

  else
  {
    v9 = [NSIndexPath indexPathForItem:0 inSection:[(RoutePlanningOutlineController *)self sectionIndexForOutlineSection:self->_featureDiscoverySection]];
    v10 = [(RoutePlanningOutlineController *)self collectionViewLayout];
    v11 = [v10 layoutAttributesForItemAtIndexPath:v9];

    [v11 frame];
    v60 = v12;
    v61 = v13;
    v15 = v14;
    v17 = v16;
    v18 = [(RoutePlanningOutlineRootController *)self routeCollection];
    v19 = [v18 routes];
    v20 = [v19 firstObject];

    v4 = v20;
  }

  if (v4)
  {
    v21 = [(RoutePlanningOutlineRootController *)self indexPathForRoute:v4];
    v22 = [(RoutePlanningOutlineController *)self collectionViewLayout];
    v23 = [v22 layoutAttributesForItemAtIndexPath:v21];

    [v23 frame];
    x = v24;
    y = v25;
    width = v26;
    height = v27;
  }

  v63 = x;
  v64 = height;
  v62 = width;
  v29 = CGRectNull.origin.x;
  v28 = CGRectNull.origin.y;
  v31 = CGRectNull.size.width;
  v30 = CGRectNull.size.height;
  if ([v4 isFamiliarRoute])
  {
    preferredRouteSection = self->_preferredRouteSection;
    if (preferredRouteSection)
    {
      if ([(RoutePlanningPreferredRoutesSection *)preferredRouteSection shouldCheckForEstimatedHeight])
      {
        v33 = [(RoutePlanningOutlineController *)self sectionIndexForOutlineSection:self->_preferredRouteSection];
        if (v33 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v34 = [NSIndexPath indexPathForItem:0 inSection:v33];
          v35 = [(RoutePlanningOutlineController *)self collectionViewLayout];
          v36 = [v35 layoutAttributesForItemAtIndexPath:v34];

          [v36 frame];
          v72.origin.x = v37;
          v72.origin.y = v38;
          v72.size.width = v39;
          v72.size.height = v40;
          v65.origin.x = CGRectNull.origin.x;
          v65.origin.y = v28;
          v65.size.width = v31;
          v65.size.height = v30;
          v66 = CGRectUnion(v65, v72);
          v29 = v66.origin.x;
          v28 = v66.origin.y;
          v31 = v66.size.width;
          v30 = v66.size.height;
          [v36 frame];
          v64 = v41 + v64;
        }
      }
    }
  }

  v67.origin.x = v60;
  v67.origin.y = v61;
  v67.size.width = v15;
  v67.size.height = v17;
  if (CGRectGetHeight(v67) <= 2.22044605e-16)
  {
    [(RoutePlanningOutlineRootController *)self bottomSafeOffset];
    if (fabs(v44) <= 2.22044605e-16)
    {
      v45 = [(RoutePlanningOutlineRootController *)self routeCollection];
      v46 = [v45 count];

      v42 = v64;
      if (v46 > 1)
      {
        v42 = v64 + 34.0;
      }

      v43 = y;
      v69.origin.y = y;
    }

    else
    {
      v43 = y;
      v69.origin.y = y;
      v42 = v64;
    }
  }

  else
  {
    v68.origin.x = v29;
    v68.origin.y = v28;
    v68.size.width = v31;
    v68.size.height = v30;
    v73.origin.x = v60;
    v73.origin.y = v61;
    v73.size.width = v15;
    v73.size.height = v17;
    v69 = CGRectUnion(v68, v73);
    v29 = v69.origin.x;
    v31 = v69.size.width;
    v30 = v69.size.height;
    v42 = v64 * 0.600000024;
    v43 = y;
  }

  v47 = v29;
  v48 = v31;
  v49 = v30;
  v51 = v62;
  v50 = v63;
  v70 = CGRectUnion(v69, *(&v43 - 1));
  v52 = v70.origin.x;
  v53 = v70.origin.y;
  v54 = v70.size.width;
  v55 = v70.size.height;

  v56 = v52;
  v57 = v53;
  v58 = v54;
  v59 = v55;
  result.size.height = v59;
  result.size.width = v58;
  result.origin.y = v57;
  result.origin.x = v56;
  return result;
}

- (id)mostImportantIndexPathWithSelectedRoute:(id)a3
{
  v4 = a3;
  if ([(RoutePlanningFeatureDiscoverOutlineSection *)self->_featureDiscoverySection numberOfSections]>= 1 && [(RoutePlanningFeatureDiscoverOutlineSection *)self->_featureDiscoverySection numberOfItemsInSection:0])
  {
    v5 = [NSIndexPath indexPathForItem:0 inSection:[(RoutePlanningOutlineController *)self sectionIndexForOutlineSection:self->_featureDiscoverySection]];
LABEL_6:
    v6 = v5;
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = [(RoutePlanningOutlineRootController *)self indexPathForRoute:v4];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)didUpdateVisibleOutlineSections
{
  v12.receiver = self;
  v12.super_class = RoutePlanningOutlineRootController;
  [(RoutePlanningOutlineController *)&v12 didUpdateVisibleOutlineSections];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  visibleOutlineSections = self->super._visibleOutlineSections;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1009CD014;
  v7[3] = &unk_101631140;
  v7[4] = &v8;
  [(NSArray *)visibleOutlineSections enumerateObjectsUsingBlock:v7];
  v4 = sub_1007995B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (*(v9 + 24))
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = v5;
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Found FeatureDiscoverySection: %@", buf, 0xCu);
  }

  [(RoutePlanningOutlineRootController *)self setHasFeatureDiscoverySection:*(v9 + 24)];
  _Block_object_dispose(&v8, 8);
}

- (void)prepareOutlineSections
{
  v3 = [(RoutePlanningOutlineController *)self collectionView];

  if (!v3)
  {
    outlineSections = self->super._outlineSections;
    self->super._outlineSections = &__NSArray0__struct;

    routeOverviewSections = self->_routeOverviewSections;
    self->_routeOverviewSections = 0;

    [(NSMapTable *)self->_routeOverviewSectionsByRoute removeAllObjects];
    [(NSMapTable *)self->_stepsSectionsByRoute removeAllObjects];
    routeCreationSection = self->_routeCreationSection;
    self->_routeCreationSection = 0;

    v68.receiver = self;
    v68.super_class = RoutePlanningOutlineRootController;
    [(RoutePlanningOutlineController *)&v68 prepareOutlineSections];
    return;
  }

  v4 = objc_alloc_init(NSMutableArray);
  featureDiscoverySection = self->_featureDiscoverySection;
  if (!featureDiscoverySection)
  {
    v6 = [RoutePlanningFeatureDiscoverOutlineSection alloc];
    v7 = [(RoutePlanningOutlineController *)self collectionView];
    v8 = [(RoutePlanningFeatureDiscoverOutlineSection *)v6 initWithCollectionView:v7 sectionIdentifier:@"FeatureDiscovery"];
    v9 = self->_featureDiscoverySection;
    self->_featureDiscoverySection = v8;

    v10 = self->_featureDiscoverySection;
    transportType = self->_transportType;
    v12 = [(RoutePlanningOutlineRootController *)self routeCollection];
    [(RoutePlanningFeatureDiscoverOutlineSection *)v10 updateWithTransportType:transportType routeCollection:v12];

    featureDiscoverySection = self->_featureDiscoverySection;
  }

  [v4 addObject:featureDiscoverySection];
  if (!self->_preferredRouteSection)
  {
    v13 = [RoutePlanningPreferredRoutesSection alloc];
    v14 = [(RoutePlanningOutlineController *)self collectionView];
    v15 = [(RoutePlanningPreferredRoutesSection *)v13 initWithCollectionView:v14 sectionIdentifier:@"PreferredRouteTipKitSection"];
    preferredRouteSection = self->_preferredRouteSection;
    self->_preferredRouteSection = v15;
  }

  v17 = [(RoutePlanningOutlineRootController *)self dataCoordinator];
  v18 = [v17 waypointRequests];

  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  v64 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v20)
  {
    v21 = *v65;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v65 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = [*(*(&v64 + 1) + 8 * i) waypointRequest];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v25 = v19;
          goto LABEL_22;
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v25 = [(RoutePlanningOutlineRootController *)self dataCoordinator];
  if ([v25 inACustomRouteRegion] && self->_transportType == 2)
  {
    IsEnabled_HikingiOS = MapsFeature_IsEnabled_HikingiOS();

    if (IsEnabled_HikingiOS)
    {
      v27 = +[MapsOfflineUIHelper sharedHelper];
      v28 = [v27 isUsingOfflineMaps];

      if ((v28 & 1) == 0)
      {
        p_routeCreationSection = &self->_routeCreationSection;
        if (!self->_routeCreationSection)
        {
          v29 = [RoutePlanningRouteCreationOutlineSection alloc];
          v30 = [(RoutePlanningOutlineController *)self collectionView];
          v31 = [(RoutePlanningRouteCreationOutlineSection *)v29 initWithCollectionView:v30 sectionIdentifier:@"RouteCreation"];
          v32 = *p_routeCreationSection;
          *p_routeCreationSection = v31;

          v33 = [(RoutePlanningOutlineRootController *)self routeCreationDelegate];
          [*p_routeCreationSection setRouteCreationDelegate:v33];

          v34 = [(RoutePlanningOutlineRootController *)self customRouteDelegate];
          [*p_routeCreationSection setCustomRouteDelegate:v34];
        }

        v35 = 1;
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_22:
  }

  v35 = 0;
  p_routeCreationSection = &self->_routeCreationSection;
LABEL_24:
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0x7FFFFFFFFFFFFFFFLL;
  v36 = [(NSArray *)self->_routeOverviewSections count];
  v37 = [(RoutePlanningOutlineController *)self collectionView];
  if (sub_10000FA08(v37))
  {
    v38 = [(RoutePlanningOutlineController *)self collectionView];
    v39 = sub_10000FA08(v38) != 1;
  }

  else
  {
    v39 = 0;
  }

  v43 = self->_routeOverviewSections;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_1009CDC80;
  v54[3] = &unk_101631118;
  v59 = v35;
  v44 = v4;
  v55 = v44;
  v56 = self;
  v57 = &v60;
  v58 = v36;
  [(NSArray *)v43 enumerateObjectsUsingBlock:v54];
  v45 = v61[3];
  if (v45 != 0x7FFFFFFFFFFFFFFFLL && !v39 && v45 <= [v44 count])
  {
    [v44 insertObject:self->_preferredRouteSection atIndex:v61[3]];
    [(RoutePlanningPreferredRoutesSection *)self->_preferredRouteSection setFamiliarRoute:1];
    v46 = self->_preferredRouteSection;
    v47 = self->_transportType;
    v48 = [(RoutePlanningOutlineRootController *)self routeCollection];
    [(RoutePlanningPreferredRoutesSection *)v46 updateWithTransportType:v47 routeCollection:v48];
  }

  if (v35)
  {
    if (([v44 containsObject:*v52] & 1) == 0)
    {
      [v44 addObject:*v52];
    }
  }

  v49 = [v44 copy];
  v50 = self->super._outlineSections;
  self->super._outlineSections = v49;

  v53.receiver = self;
  v53.super_class = RoutePlanningOutlineRootController;
  [(RoutePlanningOutlineController *)&v53 prepareOutlineSections];

  _Block_object_dispose(&v60, 8);
}

- (RoutePlanningOutlineRootController)initWithCollectionView:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RoutePlanningOutlineRootController;
  v5 = [(RoutePlanningOutlineController *)&v11 initWithCollectionView:v4];
  if (v5)
  {
    [v4 setRemembersLastFocusedIndexPath:1];
    v6 = +[NSMapTable weakToStrongObjectsMapTable];
    routeOverviewSectionsByRoute = v5->_routeOverviewSectionsByRoute;
    v5->_routeOverviewSectionsByRoute = v6;

    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    stepsSectionsByRoute = v5->_stepsSectionsByRoute;
    v5->_stepsSectionsByRoute = v8;
  }

  return v5;
}

@end