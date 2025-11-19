@interface TransitLineSelectionActionController
- (ActionCoordination)coordinator;
- (BOOL)_shouldRestoreDisplayedViewModeForContext:(id)a3;
- (BOOL)isActive;
- (BOOL)isShowingLineForLabelMarker:(id)a3;
- (BOOL)isShowingLineForLineItem:(id)a3;
- (BOOL)isShowingLineWithIdentifier:(id)a3;
- (ControlContainerViewController)containerViewController;
- (TransitLineSelectionActionController)initWithContainerViewController:(id)a3 actionCoordinator:(id)a4;
- (_TtC4Maps48TransitLineDisambiguationContaineeViewController)disambiguationVC;
- (id)_traits;
- (id)mapView;
- (void)_clearTransitLineSelectionDeactivate:(BOOL)a3 context:(id)a4;
- (void)_disambiguateSelectedLineForLabelMarker:(id)a3 onActivation:(id)a4;
- (void)_showTransitLineWithName:(id)a3 identifier:(id)a4 mapRegion:(id)a5;
- (void)_zoomToRegionForLineIfNecessary:(id)a3 region:(id)a4 withStartingRegion:(id)a5 startedShowingLineDate:(id)a6;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)selectLine:(id)a3 zoomToMapRegion:(BOOL)a4 onActivation:(id)a5;
- (void)selectLineForLabelMarker:(id)a3 zoomToMapRegion:(BOOL)a4 onActivation:(id)a5;
@end

@implementation TransitLineSelectionActionController

- (ControlContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (ActionCoordination)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

- (BOOL)_shouldRestoreDisplayedViewModeForContext:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"ActionControllerDeactivationItemKey"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)_clearTransitLineSelectionDeactivate:(BOOL)a3 context:(id)a4
{
  v4 = a3;
  v14 = a4;
  v6 = [(TransitLineSelectionActionController *)self mapView];
  [v6 _deselectTransitLineMarker];
  v7 = [(TransitLineSelectionActionController *)self coordinator];
  [v7 updateMapApplicationState:0];

  if (v4)
  {
    v8 = [(TransitLineSelectionActionController *)self coordinator];
    v9 = [v8 displayedViewMode];

    if ([(TransitLineSelectionActionController *)self _shouldRestoreDisplayedViewModeForContext:v14]&& v9 == 3 && self->_viewModeToRestore != 3)
    {
      v10 = [(TransitLineSelectionActionController *)self coordinator];
      [v10 updateViewMode:self->_viewModeToRestore animated:1];
    }

    v11 = [(TransitLineSelectionActionController *)self coordinator];
    [v11 actionControlDidDeactivate:self];
  }

  v12 = [(TransitLineSelectionActionController *)self coordinator];
  v13 = [v12 appCoordinator];
  [v13 setNeedsUserActivityUpdate];
}

- (void)_showTransitLineWithName:(id)a3 identifier:(id)a4 mapRegion:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [(TransitLineSelectionActionController *)self mapView];
  v9 = [(TransitLineSelectionActionController *)self coordinator];
  self->_viewModeToRestore = [v9 displayedViewMode];

  if (self->_viewModeToRestore != 3)
  {
    v10 = [(TransitLineSelectionActionController *)self coordinator];
    [v10 updateViewMode:3 animated:1];
  }

  [v8 _selectTransitLineMarkerWithIdentifier:v14];
  v11 = [(TransitLineSelectionActionController *)self coordinator];
  [v11 updateMapApplicationState:4];

  if (v7)
  {
    GEOMapRectForMapRegion();
    [v8 setVisibleMapRect:1 animated:?];
  }

  v12 = [(TransitLineSelectionActionController *)self coordinator];
  v13 = [v12 appCoordinator];
  [v13 setNeedsUserActivityUpdate];
}

- (void)_zoomToRegionForLineIfNecessary:(id)a3 region:(id)a4 withStartingRegion:(id)a5 startedShowingLineDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [v13 timeIntervalSinceNow];
  v15 = v14;
  [v13 timeIntervalSinceNow];
  v17 = v16;

  v18 = -v17;
  if (v15 >= 0.0)
  {
    v18 = v17;
  }

  if (v18 < 30.0)
  {
    v19 = [(TransitLineSelectionActionController *)self mapView];
    if ([(TransitLineSelectionActionController *)self isActive])
    {
      v20 = [v19 _selectedTransitLineIDs];
      v21 = MKMapItemIdentifierFromGEOTransitLine();
      v26 = v21;
      v22 = [NSArray arrayWithObjects:&v26 count:1];
      v23 = [v20 isEqualToArray:v22];

      if (v23)
      {
        if (!v12 || ([v19 mapRegion], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v12, "isEqual:", v24), v24, v25))
        {
          GEOMapRectForMapRegion();
          [v19 setVisibleMapRect:1 animated:?];
        }
      }
    }
  }
}

- (void)_disambiguateSelectedLineForLabelMarker:(id)a3 onActivation:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 _maps_numLines];
  [(TransitLineSelectionActionController *)self _clearTransitLineSelectionDeactivate:0 context:0];
  objc_initWeak(&location, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100E1F920;
  v22[3] = &unk_101655B20;
  objc_copyWeak(&v24, &location);
  v8 = v7;
  v23 = v8;
  v9 = [(TransitLineSelectionActionController *)self disambiguationVC];
  [v9 setOnLineSelection:v22];

  v10 = v8;
  v21 = v10;
  v11 = [(TransitLineSelectionActionController *)self disambiguationVC:_NSConcreteStackBlock];
  [v11 setOnRefinementError:&v20];

  v12 = [(TransitLineSelectionActionController *)self disambiguationVC];
  [v12 setLabelMarker:v6];

  v13 = [(TransitLineSelectionActionController *)self containerViewController];
  v14 = [v13 currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v15 = [(TransitLineSelectionActionController *)self containerViewController];
    v16 = [v15 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = [(TransitLineSelectionActionController *)self containerViewController];
      v19 = [(TransitLineSelectionActionController *)self disambiguationVC];
      [v18 presentController:v19];
      goto LABEL_6;
    }
  }

  v18 = [(TransitLineSelectionActionController *)self containerViewController];
  v19 = [(TransitLineSelectionActionController *)self disambiguationVC];
  [v18 replaceCurrentWithController:v19];
LABEL_6:

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (_TtC4Maps48TransitLineDisambiguationContaineeViewController)disambiguationVC
{
  disambiguationVC = self->_disambiguationVC;
  if (!disambiguationVC)
  {
    v4 = [[_TtC4Maps48TransitLineDisambiguationContaineeViewController alloc] initWithLabelMarker:0];
    v5 = self->_disambiguationVC;
    self->_disambiguationVC = v4;

    [(ContaineeViewController *)self->_disambiguationVC setContaineeDelegate:self];
    disambiguationVC = self->_disambiguationVC;
  }

  return disambiguationVC;
}

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  v5 = a3;
  v6 = [(TransitLineSelectionActionController *)self coordinator];
  [v6 viewControllerClosed:v5 animated:1];
}

- (id)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v3 = [WeakRetained chromeViewController];
  v4 = [v3 mapView];

  return v4;
}

- (BOOL)isShowingLineWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TransitLineSelectionActionController *)self isActive];
  v6 = 0;
  if (v4 && v5)
  {
    v7 = [(TransitLineSelectionActionController *)self mapView];
    v8 = [v7 _selectedTransitLineIDs];
    v11 = v4;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    v6 = [v8 isEqualToArray:v9];
  }

  return v6;
}

- (BOOL)isShowingLineForLineItem:(id)a3
{
  v4 = MKMapItemIdentifierFromGEOTransitLine();
  LOBYTE(self) = [(TransitLineSelectionActionController *)self isShowingLineWithIdentifier:v4];

  return self;
}

- (BOOL)isShowingLineForLabelMarker:(id)a3
{
  v4 = a3;
  if (-[TransitLineSelectionActionController isActive](self, "isActive") && [v4 _maps_numLines] == 1)
  {
    v5 = [(TransitLineSelectionActionController *)self mapView];
    v6 = [v5 _selectedTransitLineIDs];
    v7 = [v4 _maps_lineIdentifiers];
    v8 = [v6 isEqualToArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isActive
{
  v2 = [(TransitLineSelectionActionController *)self mapView];
  v3 = [v2 _applicationState] == 4;

  return v3;
}

- (void)selectLine:(id)a3 zoomToMapRegion:(BOOL)a4 onActivation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(TransitLineSelectionActionController *)self mapView];
  v11 = +[NSDate date];
  v12 = [v10 mapRegion];
  v13 = MKMapItemIdentifierFromGEOTransitLine();
  v14 = [v8 name];
  if (a4)
  {
    v15 = [v8 mapRegion];
    [(TransitLineSelectionActionController *)self _showTransitLineWithName:v14 identifier:v13 mapRegion:v15];
  }

  else
  {
    [(TransitLineSelectionActionController *)self _showTransitLineWithName:v14 identifier:v13 mapRegion:0];
  }

  if (sub_1005B1B14(v8))
  {
    v16 = +[MKMapService sharedService];
    v30 = v13;
    [NSArray arrayWithObjects:&v30 count:1];
    v23 = a4;
    v17 = v10;
    v19 = v18 = v11;
    [(TransitLineSelectionActionController *)self _traits];
    v20 = v9;
    v22 = v21 = v12;
    v24 = [v16 ticketForTransitLines:v19 traits:v22];

    v12 = v21;
    v9 = v20;

    v11 = v18;
    v10 = v17;

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100E1FFEC;
    v25[3] = &unk_101655AF8;
    v29 = v23;
    v28 = v20;
    v25[4] = self;
    v26 = v12;
    v27 = v11;
    [v24 submitWithHandler:v25 networkActivity:0];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, v8, 0);
  }
}

- (void)selectLineForLabelMarker:(id)a3 zoomToMapRegion:(BOOL)a4 onActivation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 countFeatureIDs];
  v11 = [(TransitLineSelectionActionController *)self mapView];
  v12 = [v11 mapRegion];
  v13 = +[NSDate date];
  if ([v8 _maps_numLines] < 2)
  {
    if (v10 == 1)
    {
      v14 = [v8 _maps_lineIdentifiers];
      v15 = [v14 firstObject];

      [v11 _deselectLabelMarkerAnimated:1];
      v16 = [v8 title];
      [(TransitLineSelectionActionController *)self _showTransitLineWithName:v16 identifier:v15 mapRegion:0];

      v17 = [(TransitLineSelectionActionController *)self _traits];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100E20448;
      v19[3] = &unk_101655AD0;
      v25 = a4;
      v20 = v15;
      v21 = self;
      v22 = v12;
      v23 = v13;
      v24 = v9;
      v18 = v15;
      [v8 _maps_loadLineInfoUsingTraits:v17 withCompletion:v19];
    }

    else
    {
      [v11 _deselectLabelMarkerAnimated:1];
    }
  }

  else
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100E2035C;
    v26[3] = &unk_101655AA8;
    v29 = a4;
    v28 = v9;
    v26[4] = self;
    v27 = v13;
    [(TransitLineSelectionActionController *)self _disambiguateSelectedLineForLabelMarker:v8 onActivation:v26];
  }
}

- (id)_traits
{
  v3 = +[MKMapService sharedService];
  v4 = [(TransitLineSelectionActionController *)self mapView];
  v5 = [v4 mapRegion];
  v6 = [v3 mapsDefaultTraitsForMapRegion:v5 source:20];

  return v6;
}

- (TransitLineSelectionActionController)initWithContainerViewController:(id)a3 actionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TransitLineSelectionActionController;
  v8 = [(TransitLineSelectionActionController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TransitLineSelectionActionController *)v8 setContainerViewController:v6];
    [(TransitLineSelectionActionController *)v9 setCoordinator:v7];
  }

  return v9;
}

@end