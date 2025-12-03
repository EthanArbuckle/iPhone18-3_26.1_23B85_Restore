@interface LookAroundPIPAnalyticsController
- (LookAroundPIPAnalyticsController)initWithDataCoordinator:(id)coordinator;
- (LookAroundPIPDataCoordinator)dataCoordinator;
- (int)_targetForLookAroundPIPDataCoordinator:(id)coordinator;
- (void)_captureUserAction:(int)action onTarget:(int)target eventValue:(id)value;
- (void)lookAroundPIPDataCoordinatorDidDoubleTapZoomInMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidDoubleTapZoomOutMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidEndPanningMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidEndRotatingMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidPinchZoomInMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidPinchZoomOutMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidRotateMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidSelectMapItem:(id)item;
- (void)lookAroundPIPDataCoordinatorDidSingleFingerZoomInMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidSingleFingerZoomOutMapView:(id)view;
@end

@implementation LookAroundPIPAnalyticsController

- (LookAroundPIPDataCoordinator)dataCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  return WeakRetained;
}

- (int)_targetForLookAroundPIPDataCoordinator:(id)coordinator
{
  mapView = [coordinator mapView];
  _lookAroundAvailability = [mapView _lookAroundAvailability];

  if (_lookAroundAvailability > 2)
  {
    return 0;
  }

  else
  {
    return dword_101215DB8[_lookAroundAvailability];
  }
}

- (void)_captureUserAction:(int)action onTarget:(int)target eventValue:(id)value
{
  v5 = *&target;
  v6 = *&action;
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);
  mapView = [WeakRetained mapView];

  v10 = objc_loadWeakRetained(&self->_dataCoordinator);
  lookAroundView = [v10 lookAroundView];

  [mapView centerCoordinate];
  v14 = [[GEOLocation alloc] initWithLatitude:v12 longitude:v13];
  camera = [mapView camera];
  [camera heading];
  v17 = v16;
  [mapView _zoomLevel];
  v19 = v18;
  visiblePlaceMUIDs = [lookAroundView visiblePlaceMUIDs];
  v21 = [visiblePlaceMUIDs count];
  if ([lookAroundView showsRoadLabels])
  {
    showsPointLabels = 1;
  }

  else
  {
    showsPointLabels = [lookAroundView showsPointLabels];
  }

  LOBYTE(v23) = showsPointLabels;
  [GEOAPPortal captureLookAroundUserAction:v6 onTarget:v5 eventValue:valueCopy location:v14 heading:v17 zoom:v21 numberPoisInView:v19 labelingShown:v23];
}

- (void)lookAroundPIPDataCoordinatorDidEndPanningMapView:(id)view
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:view];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1001 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidEndRotatingMapView:(id)view
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:view];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1004 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidSelectMapItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);
  mapView = [WeakRetained mapView];
  _selectedLabelMarker = [mapView _selectedLabelMarker];

  styleAttributes = [_selectedLabelMarker styleAttributes];
  LODWORD(mapView) = [styleAttributes isLandmarkPOI];

  if (mapView)
  {
    v8 = 6071;
  }

  else
  {
    v8 = 1010;
  }

  v9 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:itemCopy];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:v8 onTarget:v9 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidDoubleTapZoomOutMapView:(id)view
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:view];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1046 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidDoubleTapZoomInMapView:(id)view
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:view];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1045 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidSingleFingerZoomOutMapView:(id)view
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:view];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1048 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidSingleFingerZoomInMapView:(id)view
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:view];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1047 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidPinchZoomOutMapView:(id)view
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:view];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1044 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidPinchZoomInMapView:(id)view
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:view];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1043 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidRotateMapView:(id)view
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:view];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1004 onTarget:v4 eventValue:0];
}

- (LookAroundPIPAnalyticsController)initWithDataCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v7.receiver = self;
  v7.super_class = LookAroundPIPAnalyticsController;
  v5 = [(LookAroundPIPAnalyticsController *)&v7 init];
  if (v5)
  {
    [coordinatorCopy addObserver:v5];
    [(LookAroundPIPAnalyticsController *)v5 setDataCoordinator:coordinatorCopy];
  }

  return v5;
}

@end