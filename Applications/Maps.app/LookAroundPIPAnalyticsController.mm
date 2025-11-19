@interface LookAroundPIPAnalyticsController
- (LookAroundPIPAnalyticsController)initWithDataCoordinator:(id)a3;
- (LookAroundPIPDataCoordinator)dataCoordinator;
- (int)_targetForLookAroundPIPDataCoordinator:(id)a3;
- (void)_captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5;
- (void)lookAroundPIPDataCoordinatorDidDoubleTapZoomInMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidDoubleTapZoomOutMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidEndPanningMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidEndRotatingMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidPinchZoomInMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidPinchZoomOutMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidRotateMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidSelectMapItem:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidSingleFingerZoomInMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidSingleFingerZoomOutMapView:(id)a3;
@end

@implementation LookAroundPIPAnalyticsController

- (LookAroundPIPDataCoordinator)dataCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  return WeakRetained;
}

- (int)_targetForLookAroundPIPDataCoordinator:(id)a3
{
  v3 = [a3 mapView];
  v4 = [v3 _lookAroundAvailability];

  if (v4 > 2)
  {
    return 0;
  }

  else
  {
    return dword_101215DB8[v4];
  }
}

- (void)_captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v24 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);
  v9 = [WeakRetained mapView];

  v10 = objc_loadWeakRetained(&self->_dataCoordinator);
  v11 = [v10 lookAroundView];

  [v9 centerCoordinate];
  v14 = [[GEOLocation alloc] initWithLatitude:v12 longitude:v13];
  v15 = [v9 camera];
  [v15 heading];
  v17 = v16;
  [v9 _zoomLevel];
  v19 = v18;
  v20 = [v11 visiblePlaceMUIDs];
  v21 = [v20 count];
  if ([v11 showsRoadLabels])
  {
    v22 = 1;
  }

  else
  {
    v22 = [v11 showsPointLabels];
  }

  LOBYTE(v23) = v22;
  [GEOAPPortal captureLookAroundUserAction:v6 onTarget:v5 eventValue:v24 location:v14 heading:v17 zoom:v21 numberPoisInView:v19 labelingShown:v23];
}

- (void)lookAroundPIPDataCoordinatorDidEndPanningMapView:(id)a3
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:a3];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1001 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidEndRotatingMapView:(id)a3
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:a3];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1004 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidSelectMapItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);
  v6 = [WeakRetained mapView];
  v10 = [v6 _selectedLabelMarker];

  v7 = [v10 styleAttributes];
  LODWORD(v6) = [v7 isLandmarkPOI];

  if (v6)
  {
    v8 = 6071;
  }

  else
  {
    v8 = 1010;
  }

  v9 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:v4];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:v8 onTarget:v9 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidDoubleTapZoomOutMapView:(id)a3
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:a3];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1046 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidDoubleTapZoomInMapView:(id)a3
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:a3];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1045 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidSingleFingerZoomOutMapView:(id)a3
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:a3];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1048 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidSingleFingerZoomInMapView:(id)a3
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:a3];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1047 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidPinchZoomOutMapView:(id)a3
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:a3];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1044 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidPinchZoomInMapView:(id)a3
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:a3];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1043 onTarget:v4 eventValue:0];
}

- (void)lookAroundPIPDataCoordinatorDidRotateMapView:(id)a3
{
  v4 = [(LookAroundPIPAnalyticsController *)self _targetForLookAroundPIPDataCoordinator:a3];

  [(LookAroundPIPAnalyticsController *)self _captureUserAction:1004 onTarget:v4 eventValue:0];
}

- (LookAroundPIPAnalyticsController)initWithDataCoordinator:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LookAroundPIPAnalyticsController;
  v5 = [(LookAroundPIPAnalyticsController *)&v7 init];
  if (v5)
  {
    [v4 addObserver:v5];
    [(LookAroundPIPAnalyticsController *)v5 setDataCoordinator:v4];
  }

  return v5;
}

@end