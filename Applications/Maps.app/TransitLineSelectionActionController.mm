@interface TransitLineSelectionActionController
- (ActionCoordination)coordinator;
- (BOOL)_shouldRestoreDisplayedViewModeForContext:(id)context;
- (BOOL)isActive;
- (BOOL)isShowingLineForLabelMarker:(id)marker;
- (BOOL)isShowingLineForLineItem:(id)item;
- (BOOL)isShowingLineWithIdentifier:(id)identifier;
- (ControlContainerViewController)containerViewController;
- (TransitLineSelectionActionController)initWithContainerViewController:(id)controller actionCoordinator:(id)coordinator;
- (_TtC4Maps48TransitLineDisambiguationContaineeViewController)disambiguationVC;
- (id)_traits;
- (id)mapView;
- (void)_clearTransitLineSelectionDeactivate:(BOOL)deactivate context:(id)context;
- (void)_disambiguateSelectedLineForLabelMarker:(id)marker onActivation:(id)activation;
- (void)_showTransitLineWithName:(id)name identifier:(id)identifier mapRegion:(id)region;
- (void)_zoomToRegionForLineIfNecessary:(id)necessary region:(id)region withStartingRegion:(id)startingRegion startedShowingLineDate:(id)date;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)selectLine:(id)line zoomToMapRegion:(BOOL)region onActivation:(id)activation;
- (void)selectLineForLabelMarker:(id)marker zoomToMapRegion:(BOOL)region onActivation:(id)activation;
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

- (BOOL)_shouldRestoreDisplayedViewModeForContext:(id)context
{
  v3 = [context objectForKeyedSubscript:@"ActionControllerDeactivationItemKey"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)_clearTransitLineSelectionDeactivate:(BOOL)deactivate context:(id)context
{
  deactivateCopy = deactivate;
  contextCopy = context;
  mapView = [(TransitLineSelectionActionController *)self mapView];
  [mapView _deselectTransitLineMarker];
  coordinator = [(TransitLineSelectionActionController *)self coordinator];
  [coordinator updateMapApplicationState:0];

  if (deactivateCopy)
  {
    coordinator2 = [(TransitLineSelectionActionController *)self coordinator];
    displayedViewMode = [coordinator2 displayedViewMode];

    if ([(TransitLineSelectionActionController *)self _shouldRestoreDisplayedViewModeForContext:contextCopy]&& displayedViewMode == 3 && self->_viewModeToRestore != 3)
    {
      coordinator3 = [(TransitLineSelectionActionController *)self coordinator];
      [coordinator3 updateViewMode:self->_viewModeToRestore animated:1];
    }

    coordinator4 = [(TransitLineSelectionActionController *)self coordinator];
    [coordinator4 actionControlDidDeactivate:self];
  }

  coordinator5 = [(TransitLineSelectionActionController *)self coordinator];
  appCoordinator = [coordinator5 appCoordinator];
  [appCoordinator setNeedsUserActivityUpdate];
}

- (void)_showTransitLineWithName:(id)name identifier:(id)identifier mapRegion:(id)region
{
  identifierCopy = identifier;
  regionCopy = region;
  mapView = [(TransitLineSelectionActionController *)self mapView];
  coordinator = [(TransitLineSelectionActionController *)self coordinator];
  self->_viewModeToRestore = [coordinator displayedViewMode];

  if (self->_viewModeToRestore != 3)
  {
    coordinator2 = [(TransitLineSelectionActionController *)self coordinator];
    [coordinator2 updateViewMode:3 animated:1];
  }

  [mapView _selectTransitLineMarkerWithIdentifier:identifierCopy];
  coordinator3 = [(TransitLineSelectionActionController *)self coordinator];
  [coordinator3 updateMapApplicationState:4];

  if (regionCopy)
  {
    GEOMapRectForMapRegion();
    [mapView setVisibleMapRect:1 animated:?];
  }

  coordinator4 = [(TransitLineSelectionActionController *)self coordinator];
  appCoordinator = [coordinator4 appCoordinator];
  [appCoordinator setNeedsUserActivityUpdate];
}

- (void)_zoomToRegionForLineIfNecessary:(id)necessary region:(id)region withStartingRegion:(id)startingRegion startedShowingLineDate:(id)date
{
  necessaryCopy = necessary;
  regionCopy = region;
  startingRegionCopy = startingRegion;
  dateCopy = date;
  [dateCopy timeIntervalSinceNow];
  v15 = v14;
  [dateCopy timeIntervalSinceNow];
  v17 = v16;

  v18 = -v17;
  if (v15 >= 0.0)
  {
    v18 = v17;
  }

  if (v18 < 30.0)
  {
    mapView = [(TransitLineSelectionActionController *)self mapView];
    if ([(TransitLineSelectionActionController *)self isActive])
    {
      _selectedTransitLineIDs = [mapView _selectedTransitLineIDs];
      v21 = MKMapItemIdentifierFromGEOTransitLine();
      v26 = v21;
      v22 = [NSArray arrayWithObjects:&v26 count:1];
      v23 = [_selectedTransitLineIDs isEqualToArray:v22];

      if (v23)
      {
        if (!startingRegionCopy || ([mapView mapRegion], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(startingRegionCopy, "isEqual:", v24), v24, v25))
        {
          GEOMapRectForMapRegion();
          [mapView setVisibleMapRect:1 animated:?];
        }
      }
    }
  }
}

- (void)_disambiguateSelectedLineForLabelMarker:(id)marker onActivation:(id)activation
{
  markerCopy = marker;
  activationCopy = activation;
  [markerCopy _maps_numLines];
  [(TransitLineSelectionActionController *)self _clearTransitLineSelectionDeactivate:0 context:0];
  objc_initWeak(&location, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100E1F920;
  v22[3] = &unk_101655B20;
  objc_copyWeak(&v24, &location);
  v8 = activationCopy;
  v23 = v8;
  disambiguationVC = [(TransitLineSelectionActionController *)self disambiguationVC];
  [disambiguationVC setOnLineSelection:v22];

  v10 = v8;
  v21 = v10;
  v11 = [(TransitLineSelectionActionController *)self disambiguationVC:_NSConcreteStackBlock];
  [v11 setOnRefinementError:&v20];

  disambiguationVC2 = [(TransitLineSelectionActionController *)self disambiguationVC];
  [disambiguationVC2 setLabelMarker:markerCopy];

  containerViewController = [(TransitLineSelectionActionController *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    containerViewController2 = [(TransitLineSelectionActionController *)self containerViewController];
    currentViewController2 = [containerViewController2 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      containerViewController3 = [(TransitLineSelectionActionController *)self containerViewController];
      disambiguationVC3 = [(TransitLineSelectionActionController *)self disambiguationVC];
      [containerViewController3 presentController:disambiguationVC3];
      goto LABEL_6;
    }
  }

  containerViewController3 = [(TransitLineSelectionActionController *)self containerViewController];
  disambiguationVC3 = [(TransitLineSelectionActionController *)self disambiguationVC];
  [containerViewController3 replaceCurrentWithController:disambiguationVC3];
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

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  stateCopy = state;
  coordinator = [(TransitLineSelectionActionController *)self coordinator];
  [coordinator viewControllerClosed:stateCopy animated:1];
}

- (id)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController = [WeakRetained chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (BOOL)isShowingLineWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  isActive = [(TransitLineSelectionActionController *)self isActive];
  v6 = 0;
  if (identifierCopy && isActive)
  {
    mapView = [(TransitLineSelectionActionController *)self mapView];
    _selectedTransitLineIDs = [mapView _selectedTransitLineIDs];
    v11 = identifierCopy;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    v6 = [_selectedTransitLineIDs isEqualToArray:v9];
  }

  return v6;
}

- (BOOL)isShowingLineForLineItem:(id)item
{
  v4 = MKMapItemIdentifierFromGEOTransitLine();
  LOBYTE(self) = [(TransitLineSelectionActionController *)self isShowingLineWithIdentifier:v4];

  return self;
}

- (BOOL)isShowingLineForLabelMarker:(id)marker
{
  markerCopy = marker;
  if (-[TransitLineSelectionActionController isActive](self, "isActive") && [markerCopy _maps_numLines] == 1)
  {
    mapView = [(TransitLineSelectionActionController *)self mapView];
    _selectedTransitLineIDs = [mapView _selectedTransitLineIDs];
    _maps_lineIdentifiers = [markerCopy _maps_lineIdentifiers];
    v8 = [_selectedTransitLineIDs isEqualToArray:_maps_lineIdentifiers];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isActive
{
  mapView = [(TransitLineSelectionActionController *)self mapView];
  v3 = [mapView _applicationState] == 4;

  return v3;
}

- (void)selectLine:(id)line zoomToMapRegion:(BOOL)region onActivation:(id)activation
{
  lineCopy = line;
  activationCopy = activation;
  mapView = [(TransitLineSelectionActionController *)self mapView];
  v11 = +[NSDate date];
  mapRegion = [mapView mapRegion];
  v13 = MKMapItemIdentifierFromGEOTransitLine();
  name = [lineCopy name];
  if (region)
  {
    mapRegion2 = [lineCopy mapRegion];
    [(TransitLineSelectionActionController *)self _showTransitLineWithName:name identifier:v13 mapRegion:mapRegion2];
  }

  else
  {
    [(TransitLineSelectionActionController *)self _showTransitLineWithName:name identifier:v13 mapRegion:0];
  }

  if (sub_1005B1B14(lineCopy))
  {
    v16 = +[MKMapService sharedService];
    v30 = v13;
    [NSArray arrayWithObjects:&v30 count:1];
    regionCopy = region;
    v17 = mapView;
    v19 = v18 = v11;
    [(TransitLineSelectionActionController *)self _traits];
    v20 = activationCopy;
    v22 = v21 = mapRegion;
    v24 = [v16 ticketForTransitLines:v19 traits:v22];

    mapRegion = v21;
    activationCopy = v20;

    v11 = v18;
    mapView = v17;

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100E1FFEC;
    v25[3] = &unk_101655AF8;
    v29 = regionCopy;
    v28 = v20;
    v25[4] = self;
    v26 = mapRegion;
    v27 = v11;
    [v24 submitWithHandler:v25 networkActivity:0];
  }

  else if (activationCopy)
  {
    (*(activationCopy + 2))(activationCopy, lineCopy, 0);
  }
}

- (void)selectLineForLabelMarker:(id)marker zoomToMapRegion:(BOOL)region onActivation:(id)activation
{
  markerCopy = marker;
  activationCopy = activation;
  countFeatureIDs = [markerCopy countFeatureIDs];
  mapView = [(TransitLineSelectionActionController *)self mapView];
  mapRegion = [mapView mapRegion];
  v13 = +[NSDate date];
  if ([markerCopy _maps_numLines] < 2)
  {
    if (countFeatureIDs == 1)
    {
      _maps_lineIdentifiers = [markerCopy _maps_lineIdentifiers];
      firstObject = [_maps_lineIdentifiers firstObject];

      [mapView _deselectLabelMarkerAnimated:1];
      title = [markerCopy title];
      [(TransitLineSelectionActionController *)self _showTransitLineWithName:title identifier:firstObject mapRegion:0];

      _traits = [(TransitLineSelectionActionController *)self _traits];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100E20448;
      v19[3] = &unk_101655AD0;
      regionCopy = region;
      v20 = firstObject;
      selfCopy = self;
      v22 = mapRegion;
      v23 = v13;
      v24 = activationCopy;
      v18 = firstObject;
      [markerCopy _maps_loadLineInfoUsingTraits:_traits withCompletion:v19];
    }

    else
    {
      [mapView _deselectLabelMarkerAnimated:1];
    }
  }

  else
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100E2035C;
    v26[3] = &unk_101655AA8;
    regionCopy2 = region;
    v28 = activationCopy;
    v26[4] = self;
    v27 = v13;
    [(TransitLineSelectionActionController *)self _disambiguateSelectedLineForLabelMarker:markerCopy onActivation:v26];
  }
}

- (id)_traits
{
  v3 = +[MKMapService sharedService];
  mapView = [(TransitLineSelectionActionController *)self mapView];
  mapRegion = [mapView mapRegion];
  v6 = [v3 mapsDefaultTraitsForMapRegion:mapRegion source:20];

  return v6;
}

- (TransitLineSelectionActionController)initWithContainerViewController:(id)controller actionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  v11.receiver = self;
  v11.super_class = TransitLineSelectionActionController;
  v8 = [(TransitLineSelectionActionController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TransitLineSelectionActionController *)v8 setContainerViewController:controllerCopy];
    [(TransitLineSelectionActionController *)v9 setCoordinator:coordinatorCopy];
  }

  return v9;
}

@end