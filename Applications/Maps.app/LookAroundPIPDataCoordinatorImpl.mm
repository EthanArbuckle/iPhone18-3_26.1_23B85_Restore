@interface LookAroundPIPDataCoordinatorImpl
- (CLLocationCoordinate2D)lastCoordinate;
- (LookAroundPIPDataCoordinatorImpl)initWithMapView:(id)a3;
- (SEL)_selectorForObserverEventType:(unint64_t)a3;
- (VKMuninMarker)muninMarker;
- (double)_filteredHeadingWithHeading:(double)result;
- (void)_didEndMovingLookAroundView:(BOOL)a3;
- (void)_dispatchSelector:(SEL)a3 toObserver:(id)a4;
- (void)_filteredHeadingReset;
- (void)_getEntryMuninMarkerAtCoordinate:(CLLocationCoordinate2D)a3 shouldWait:(BOOL)a4 andContinue:(id)a5;
- (void)_getEntryMuninMarkerWithMapViewOrMapItem:(id)a3 shouldWait:(BOOL)a4 andContinue:(id)a5;
- (void)_getMuninMarkerAtCoordinate:(CLLocationCoordinate2D)a3 shouldWait:(BOOL)a4 andContinue:(id)a5;
- (void)_getMuninMarkerWithMapViewOrMapItem:(id)a3 shouldWait:(BOOL)a4 andContinue:(id)a5;
- (void)_handleMapView:(id)a3 didDidChangeLookAroundAvailability:(int64_t)a4;
- (void)_handleMapViewDidResumeIfNeeded:(id)a3;
- (void)_handleMapViewOneFingerPanWithZoomDirection:(int64_t)a3;
- (void)_handleMapViewPanStart:(id)a3;
- (void)_handleMapViewPanStop:(id)a3 shouldMoveLookAroundView:(BOOL)a4;
- (void)_handleMapViewPanningIfNeeded:(id)a3;
- (void)_handleMapViewPinchWithZoomDirection:(int64_t)a3;
- (void)_handleMapViewRotateStart:(id)a3;
- (void)_handleMapViewRotateStop:(id)a3;
- (void)_handleMapViewRotatingIfNeeded:(id)a3;
- (void)_handleMapViewTap:(id)a3 atPoint:(CGPoint)a4;
- (void)_handleMapViewZoomStart:(id)a3;
- (void)_handleMapViewZoomStop:(id)a3 zoomGestureType:(int64_t)a4 zoomDirection:(int64_t)a5;
- (void)_moveLookAroundViewIfNeeded;
- (void)_moveLookAroundViewToCoordinate:(CLLocationCoordinate2D)a3;
- (void)_moveLookAroundViewToMapItem:(id)a3;
- (void)_nearestMuninMarkerWithCompleteMarkerHandler:(id)a3;
- (void)_nonselectingTapGestureRecognizerAction:(id)a3;
- (void)_notifyObservers:(unint64_t)a3;
- (void)_onSuccess:(BOOL)a3 setLookAroundViewEntryPointWithMapItem:(id)a4 orMuninMarker:(id)a5 andContinue:(id)a6;
- (void)_onSuccess:(BOOL)a3 synchronizeMapViewCenterToLookAroundViewCenterAndContinue:(id)a4;
- (void)_onSuccess:(BOOL)a3 waitForLookAroundViewToBecomeAdequatelyDrawnIfNeededAndContinue:(id)a4;
- (void)_onSuccessProceedToEnterLookArounPIP:(BOOL)a3;
- (void)_refineLabelMarker:(id)a3;
- (void)_startMovingLookAroundViewToMapItem:(id)a3 orMuninMarker:(id)a4 heading:(double)a5 shouldZoom:(BOOL)a6;
- (void)_willEndMovingLookAroundView:(BOOL)a3 shouldZoomIfFinished:(BOOL)a4;
- (void)coordinateLookAroundViewDidChangeVisibleRegion:(id)a3;
- (void)coordinateLookAroundViewDidStartUserInteraction:(id)a3;
- (void)coordinateLookAroundViewDidStopUserInteraction:(id)a3;
- (void)coordinateMapView:(id)a3 didChangeLookAroundAvailability:(int64_t)a4;
- (void)coordinateMapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8;
- (void)coordinateMapView:(id)a3 willSelectLabelMarker:(id)a4;
- (void)coordinateMapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
- (void)coordinateMapViewDidChangeVisibleRegion:(id)a3;
- (void)coordinateMapViewDidStartUserInteraction:(id)a3;
- (void)coordinateMapViewDidStopUserInteraction:(id)a3;
- (void)coordinateMapViewRegionDidChange:(id)a3;
- (void)dealloc;
- (void)enterLookAroundPIPWithLookAroundView:(id)a3 mapItem:(id)a4;
- (void)exitLookAroundPIPAfter:(double)a3 withCompletion:(id)a4;
- (void)pause;
- (void)resume;
- (void)setNeedsLookAroundAvailabilityUpdate;
- (void)setNeedsMapViewSynchronization;
- (void)synchronizeMapViewIfNeeded;
@end

@implementation LookAroundPIPDataCoordinatorImpl

- (CLLocationCoordinate2D)lastCoordinate
{
  latitude = self->_lastCoordinate.latitude;
  longitude = self->_lastCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_nearestMuninMarkerWithCompleteMarkerHandler:(id)a3
{
  v10 = a3;
  [(MKMapView *)self->_mapView centerCoordinate];
  v5 = v4;
  [(MKMapView *)self->_mapView centerCoordinate];
  v7 = v6;
  v8 = [(MKMapView *)self->_mapView _mapLayer];
  v9 = [v8 muninMarkerAtCoordinate:v10 completeMarkerHandler:{v5, v7}];
}

- (void)_didEndMovingLookAroundView:(BOOL)a3
{
  v3 = a3;
  [(MKMapView *)self->_mapView centerCoordinate];
  v6 = v5;
  v8 = v7;
  [(MKLookAroundView *)self->_lookAroundView presentationYaw];
  v10 = v9;
  v11 = sub_100798614();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = @"NO";
    isMapViewInSyncWithLookAroundView = self->_isMapViewInSyncWithLookAroundView;
    *v15 = 134219010;
    if (v3)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    *&v15[4] = v6;
    *&v15[12] = 2048;
    if (isMapViewInSyncWithLookAroundView)
    {
      v12 = @"YES";
    }

    *&v15[14] = v8;
    v16 = 2048;
    v17 = v10;
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "LookAroundView did end moving to coordinate=(%g, %g), heading=%g, finished=%@, isMapViewInSyncWithLookAroundView=%@", v15, 0x34u);
  }

  if (![(LookAroundPIPStateMachine *)self->_stateMachine isCancellingPendingMove])
  {
    [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:2];
  }

  self->_lastCoordinate.latitude = v6;
  self->_lastCoordinate.longitude = v8;
  self->_lookAroundViewHeading = v10;
  self->_lastHeading = v10;
  [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:16, *v15];
}

- (void)_willEndMovingLookAroundView:(BOOL)a3 shouldZoomIfFinished:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(MKMapView *)self->_mapView centerCoordinate];
  v9 = [[CLLocation alloc] initWithLatitude:v7 longitude:v8];
  [(MKLookAroundView *)self->_lookAroundView centerCoordinate];
  v11 = v10;
  v13 = v12;
  v14 = [[CLLocation alloc] initWithLatitude:v10 longitude:v12];
  [v9 distanceFromLocation:v14];
  v16 = v15;
  v17 = 0;
  self->_isMapViewInSyncWithLookAroundView = v15 < 10.0;
  if (!v5 && v15 < 500.0)
  {
    v17 = [(LookAroundPIPStateMachine *)self->_stateMachine isMoving];
  }

  v18 = 0;
  if (v5 && v4)
  {
    v18 = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
  }

  v19 = sub_100798614();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    isMapViewInSyncWithLookAroundView = self->_isMapViewInSyncWithLookAroundView;
    v21 = @"NO";
    *v30 = 134219266;
    if (v5)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    *&v30[4] = v11;
    if (isMapViewInSyncWithLookAroundView)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    if (v17)
    {
      v21 = @"YES";
    }

    *&v30[12] = 2048;
    *&v30[14] = v13;
    v31 = 2048;
    v32 = v16;
    v33 = 2112;
    v34 = v22;
    v35 = 2112;
    v36 = v23;
    v37 = 2112;
    v38 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "LookAroundView will end moving to coordinate=(%g, %g), distance=%g, finished=%@, isMapViewInSyncWithLookAroundView=%@, shouldSnapBack=%@", v30, 0x3Eu);
  }

  if (v17)
  {
    lastHeading = self->_lastHeading;
    v25 = [(MKMapView *)self->_mapView camera];
    v26 = [v25 copy];

    [v26 setCenterCoordinate:{v11, v13}];
    [(MKMapView *)self->_mapView setCamera:v26 animated:1];
    [(LookAroundPIPDataCoordinatorImpl *)self setIsMapViewInSyncWithLookAroundView:1];
    v27 = [(LookAroundPIPDataCoordinatorImpl *)self lookAroundView];
    [v27 setPresentationYaw:lastHeading];

LABEL_23:
    goto LABEL_24;
  }

  if (v18)
  {
    v28 = [(MKMapView *)self->_mapView camera];
    v26 = [v28 copy];

    [v26 centerCoordinateDistance];
    if (v29 < 950.0)
    {
      [v26 centerCoordinateDistance];
    }

    [v26 setCenterCoordinateDistance:*v30];
    [(MKMapView *)self->_mapView setCamera:v26 animated:1];
    goto LABEL_23;
  }

LABEL_24:
  [(LookAroundPIPDataCoordinatorImpl *)self _didEndMovingLookAroundView:v5, *v30];
}

- (void)_startMovingLookAroundViewToMapItem:(id)a3 orMuninMarker:(id)a4 heading:(double)a5 shouldZoom:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self->_stateMachine;
  if (![(LookAroundPIPStateMachine *)v12 canSetStateTo:3])
  {
    goto LABEL_13;
  }

  [(LookAroundPIPStateMachine *)v12 setStateTo:3];
  [v11 coordinate];
  v14 = v13;
  [v11 coordinate];
  v16 = CLLocationCoordinate2DMake(v14, v15);
  v17 = sub_100798614();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = v16.latitude;
    *&buf[12] = 2048;
    *&buf[14] = v16.longitude;
    *&buf[22] = 2048;
    v46 = a5;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "LookAroundView started moving to coordinate=(%g, %g), heading=%g", buf, 0x20u);
  }

  v18 = self->_mapView;
  v19 = self->_lookAroundView;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v46) = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  objc_initWeak(&location, self);
  [(MKLookAroundView *)self->_lookAroundView setUserInteractionEnabled:0];
  lookAroundView = self->_lookAroundView;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100E34094;
  v28[3] = &unk_101655E48;
  v28[4] = self;
  v30 = buf;
  v31 = &v35;
  v21 = v19;
  v29 = v21;
  objc_copyWeak(&v32, &location);
  v33 = a6;
  v22 = [(MKLookAroundView *)lookAroundView moveToMapItem:v10 wantsCloseUpView:1 orMuninMarker:v11 withHeading:v28 completionHandler:a5];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_12;
  }

  os_unfair_lock_lock(&self->_lock);
  if (*(*&buf[8] + 24) == 1)
  {
    v24 = *(v36 + 24);
    os_unfair_lock_unlock(&self->_lock);
    if ((v24 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v25 = sub_100798614();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *v39 = 134218496;
    latitude = v16.latitude;
    v41 = 2048;
    longitude = v16.longitude;
    v43 = 2048;
    v44 = a5;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "MapView synchronizing with muninMarker at coordinate=(%g, %g), heading=%g", v39, 0x20u);
  }

  v26 = [(MKMapView *)v18 camera];
  v27 = [v26 copy];

  [v27 setCenterCoordinate:{v16.latitude, v16.longitude}];
  [(LookAroundPIPDataCoordinatorImpl *)self setLookAroundViewHeading:a5];
  [(MKMapView *)v18 setCamera:v27 animated:1];
  [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:15];

LABEL_12:
  objc_destroyWeak(&v32);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(buf, 8);

  if ((v23 & 1) == 0)
  {
LABEL_13:
    [(LookAroundPIPDataCoordinatorImpl *)self _willEndMovingLookAroundView:0 shouldZoomIfFinished:0];
  }
}

- (void)_dispatchSelector:(SEL)a3 toObserver:(id)a4
{
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    ([v6 methodForSelector:a3])(v6, a3, self, self->_mapView);
  }
}

- (SEL)_selectorForObserverEventType:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      result = "lookAroundPIPDataCoordinatorWillEnterLookArounPIP:";
      break;
    case 1uLL:
      result = "lookAroundPIPDataCoordinatorDidEnterLookAroundPIP:";
      break;
    case 2uLL:
      result = "lookAroundPIPDataCoordinatorFailedToEnterLookArounPIP:";
      break;
    case 3uLL:
      result = "lookAroundPIPDataCoordinatorDidChangeLookAroundAvailability:";
      break;
    case 4uLL:
      result = "lookAroundPIPDataCoordinatorWillExitLookAroundPIP:";
      break;
    case 5uLL:
      result = "lookAroundPIPDataCoordinatorDidExitLookAroundPIP:";
      break;
    case 6uLL:
      result = "lookAroundPIPDataCoordinatorDidStartPanningMapView:";
      break;
    case 7uLL:
      result = "lookAroundPIPDataCoordinatorIsPanningMapView:";
      break;
    case 8uLL:
      result = "lookAroundPIPDataCoordinatorDidEndPanningMapView:";
      break;
    case 9uLL:
      result = "lookAroundPIPDataCoordinatorDidStartRotatingMapView:";
      break;
    case 0xAuLL:
      result = "lookAroundPIPDataCoordinatorIsRotatingMapView:";
      break;
    case 0xBuLL:
      result = "lookAroundPIPDataCoordinatorDidEndRotatingMapView:";
      break;
    case 0xCuLL:
      result = "lookAroundPIPDataCoordinatorDidPanLookAroundView:";
      break;
    case 0xDuLL:
      result = "lookAroundPIPDataCoordinatorDidStartMovingLookAroundView:";
      break;
    case 0xEuLL:
      result = "lookAroundPIPDataCoordinatorIsMovingLookAroundView:";
      break;
    case 0xFuLL:
      result = "lookAroundPIPDataCoordinatorDidSynchronizeMapView:";
      break;
    case 0x10uLL:
      result = "lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:";
      break;
    case 0x11uLL:
      result = "lookAroundPIPDataCoordinatorDidSingleFingerZoomInMapView:";
      break;
    case 0x12uLL:
      result = "lookAroundPIPDataCoordinatorDidSingleFingerZoomOutMapView:";
      break;
    case 0x13uLL:
      result = "lookAroundPIPDataCoordinatorDidDoubleTapZoomInMapView:";
      break;
    case 0x14uLL:
      result = "lookAroundPIPDataCoordinatorDidDoubleTapZoomOutMapView:";
      break;
    case 0x15uLL:
      result = "lookAroundPIPDataCoordinatorDidPinchZoomInMapView:";
      break;
    case 0x16uLL:
      result = "lookAroundPIPDataCoordinatorDidPinchZoomOutMapView:";
      break;
    case 0x17uLL:
      result = "lookAroundPIPDataCoordinatorDidSelectMapItem:";
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

- (void)_notifyObservers:(unint64_t)a3
{
  v5 = [(LookAroundPIPDataCoordinatorImpl *)self _selectorForObserverEventType:?];
  if (a3 > 0xC || ((1 << a3) & 0x1480) == 0)
  {
    v6 = sub_100798614();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(v5);
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Notifying observers with %@", buf, 0xCu);
    }
  }

  v8 = [(NSHashTable *)self->_observers copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(LookAroundPIPDataCoordinatorImpl *)self _dispatchSelector:v5 toObserver:*(*(&v14 + 1) + 8 * v13), v14];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_refineLabelMarker:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_labelMarkerToRefine, a3);
  [v5 coordinate];
  v7 = v6;
  [v5 coordinate];
  v9 = [[GEOMapItemIdentifier alloc] initWithMUID:objc_msgSend(v5 coordinate:{"businessID"), v7, v8}];
  v10 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:v9];
  [(MKMapServiceTicket *)self->_refineTicket cancel];
  v11 = +[MKMapService sharedService];
  v21 = v10;
  v12 = [NSArray arrayWithObjects:&v21 count:1];
  v13 = [v11 ticketForIdentifiers:v12 traits:0];
  refineTicket = self->_refineTicket;
  self->_refineTicket = v13;

  objc_initWeak(&location, self);
  v15 = self->_refineTicket;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100E3475C;
  v17[3] = &unk_10165DCC8;
  objc_copyWeak(&v19, &location);
  v16 = v5;
  v18 = v16;
  [(MKMapServiceTicket *)v15 submitWithHandler:v17 networkActivity:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)_handleMapViewDidResumeIfNeeded:(id)a3
{
  v4 = a3;
  v5 = self->_stateMachine;
  if ([(LookAroundPIPStateMachine *)v5 canSetStateTo:7])
  {
    v6 = [v4 camera];
    v7 = [v6 copy];

    [(MKLookAroundView *)self->_lookAroundView centerCoordinate];
    [v7 setCenterCoordinate:?];
    [(LookAroundPIPStateMachine *)v5 setStateTo:7];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100E34B44;
    v8[3] = &unk_101661738;
    v9 = v5;
    [v4 setCamera:v7 animated:1 completionHandler:v8];
  }
}

- (void)_moveLookAroundViewToMapItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewPanStart:self->_mapView];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100E34C50;
  v6[3] = &unk_101655D30;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(LookAroundPIPDataCoordinatorImpl *)self _getMuninMarkerWithMapViewOrMapItem:v5 shouldWait:1 andContinue:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_moveLookAroundViewToCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  objc_initWeak(&location, self);
  [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewPanStart:self->_mapView];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100E34E64;
  v6[3] = &unk_101655DF8;
  objc_copyWeak(v7, &location);
  v7[1] = *&latitude;
  v7[2] = *&longitude;
  v6[4] = self;
  [(LookAroundPIPDataCoordinatorImpl *)self _getMuninMarkerAtCoordinate:1 shouldWait:v6 andContinue:latitude, longitude];
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_moveLookAroundViewIfNeeded
{
  if ([(LookAroundPIPDataCoordinatorImpl *)self isLookAroundDataAvailable]&& ![(LookAroundPIPDataCoordinatorImpl *)self isPanningMapView]&& !self->_isZoomingMapView && ![(LookAroundPIPDataCoordinatorImpl *)self isMapViewInSyncWithLookAroundView])
  {
    lookAroundViewHeading = self->_lookAroundViewHeading;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100E35068;
    v4[3] = &unk_101655DD0;
    v4[4] = self;
    *&v4[5] = lookAroundViewHeading;
    [(LookAroundPIPDataCoordinatorImpl *)self _nearestMuninMarkerWithCompleteMarkerHandler:v4];
  }
}

- (void)_handleMapView:(id)a3 didDidChangeLookAroundAvailability:(int64_t)a4
{
  v6 = a3;
  [v6 centerCoordinate];
  v8 = v7;
  v10 = v9;
  [v6 _zoomLevel];
  v12 = v11;

  v13 = sub_100798614();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (a4 > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(&off_101655E68 + a4);
    }

    v15 = 138413058;
    v16 = v14;
    v17 = 2048;
    v18 = v8;
    v19 = 2048;
    v20 = v10;
    v21 = 2048;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MapView did change LookAround availability=%@ at coordinate=(%g, %g), zoomLevel=%g", &v15, 0x2Au);
  }

  [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:3];
  [(LookAroundPIPDataCoordinatorImpl *)self _moveLookAroundViewIfNeeded];
}

- (void)_handleMapViewTap:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if (self->_mapView == v7 && self->_lookAroundView && [(LookAroundPIPStateMachine *)self->_stateMachine isActive])
  {
    if ([(LookAroundPIPStateMachine *)self->_stateMachine canSetStateTo:1])
    {
      [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:1];
      v8 = sub_100798614();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Did cancel pending move", &v14, 2u);
      }

      [(MKLookAroundView *)self->_lookAroundView cancelPendingMove];
    }

    [(MKMapView *)self->_mapView convertPoint:self->_mapView toCoordinateFromView:x, y];
    v10 = v9;
    v12 = v11;
    v13 = sub_100798614();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134218752;
      v15 = x;
      v16 = 2048;
      v17 = y;
      v18 = 2048;
      v19 = v10;
      v20 = 2048;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MapView did receive tap at point={%g, %g}, coordinate={%g, %g}", &v14, 0x2Au);
    }

    [(LookAroundPIPDataCoordinatorImpl *)self _moveLookAroundViewToCoordinate:v10, v12];
  }
}

- (void)_handleMapViewZoomStop:(id)a3 zoomGestureType:(int64_t)a4 zoomDirection:(int64_t)a5
{
  v8 = a3;
  if (a4 == 2 && a5 == 1)
  {
    v9 = self;
    v10 = 19;
LABEL_7:
    [(LookAroundPIPDataCoordinatorImpl *)v9 _notifyObservers:v10];
    goto LABEL_8;
  }

  if (a4 == 3 && a5 == 2)
  {
    v9 = self;
    v10 = 20;
    goto LABEL_7;
  }

  if (a4 == 4)
  {
    [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewOneFingerPanWithZoomDirection:a5];
  }

  else if (a4 == 1)
  {
    [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewPinchWithZoomDirection:a5];
  }

LABEL_8:
  [v8 centerCoordinate];
  v12 = v11;
  v14 = v13;
  [v8 _zoomLevel];
  v16 = v15;
  v17 = sub_100798614();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134218496;
    v19 = v12;
    v20 = 2048;
    v21 = v14;
    v22 = 2048;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "MapView did end zooming at coordinate=(%g, %g), zoomLevel=%g", &v18, 0x20u);
  }

  self->_isZoomingMapView = 0;
  [(LookAroundPIPDataCoordinatorImpl *)self _moveLookAroundViewIfNeeded];
}

- (void)_handleMapViewOneFingerPanWithZoomDirection:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 17;
  }

  else
  {
    if (a3 != 2)
    {
      return;
    }

    v3 = 18;
  }

  [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:v3];
}

- (void)_handleMapViewPinchWithZoomDirection:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 21;
  }

  else
  {
    if (a3 != 2)
    {
      return;
    }

    v3 = 22;
  }

  [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:v3];
}

- (void)_handleMapViewRotateStop:(id)a3
{
  v4 = a3;
  [v4 centerCoordinate];
  v6 = v5;
  v8 = v7;
  [v4 presentationYaw];
  v10 = v9;

  v11 = sub_100798614();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218496;
    v13 = v6;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MapView did end rotating at coordinate=(%g, %g), heading=%g", &v12, 0x20u);
  }

  self->_isRotatingMapView = 0;
  [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:11];
}

- (void)_handleMapViewPanStop:(id)a3 shouldMoveLookAroundView:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(LookAroundPIPDataCoordinatorImpl *)self isPanningMapView])
  {
    [v6 centerCoordinate];
    v8 = v7;
    v10 = v9;
    lastHeading = self->_lastHeading;
    v12 = sub_100798614();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v15 = v8;
      v16 = 2048;
      v17 = v10;
      v18 = 2048;
      v19 = lastHeading;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "MapView did end panning at coordinate=(%g, %g), heading=%g", buf, 0x20u);
    }

    self->_isMapViewInSyncWithLookAroundView = 0;
    self->_lastCoordinate.latitude = v8;
    self->_lastCoordinate.longitude = v10;
    [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:8];
    if (v4 && [(LookAroundPIPDataCoordinatorImpl *)self isLookAroundDataAvailable])
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100E3579C;
      v13[3] = &unk_101655DD0;
      v13[4] = self;
      *&v13[5] = lastHeading;
      [(LookAroundPIPDataCoordinatorImpl *)self _nearestMuninMarkerWithCompleteMarkerHandler:v13];
    }

    else
    {
      [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:2];
    }
  }
}

- (void)_handleMapViewRotatingIfNeeded:(id)a3
{
  if (self->_isRotatingMapView)
  {
    [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:10];
  }
}

- (void)_handleMapViewPanningIfNeeded:(id)a3
{
  v10 = a3;
  if ([(LookAroundPIPDataCoordinatorImpl *)self isPanningMapView])
  {
    [v10 centerCoordinate];
    v5 = v4;
    longitude = self->_lastCoordinate.longitude;
    v8 = vabdd_f64(self->_lastCoordinate.latitude, v7);
    self->_lastCoordinate.latitude = v7;
    self->_lastCoordinate.longitude = v5;
    if (v8 >= 0.00000000999999994 || vabdd_f64(longitude, v5) >= 0.00000000999999994)
    {
      GEOBearingFromCoordinateToCoordinate();
      [(LookAroundPIPDataCoordinatorImpl *)self _filteredHeadingWithHeading:?];
      self->_lookAroundViewHeading = v9;
      self->_lastHeading = v9;
      [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:7];
    }
  }
}

- (void)_handleMapViewZoomStart:(id)a3
{
  v4 = a3;
  [v4 centerCoordinate];
  v6 = v5;
  v8 = v7;
  [v4 _zoomLevel];
  v10 = v9;

  v11 = sub_100798614();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218496;
    v13 = v6;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MapView did start zooming at coordinate=(%g, %g), zoomLevel=%g", &v12, 0x20u);
  }

  self->_isZoomingMapView = 1;
}

- (void)_handleMapViewRotateStart:(id)a3
{
  v4 = a3;
  [v4 centerCoordinate];
  v6 = v5;
  v8 = v7;
  [v4 presentationYaw];
  v10 = v9;

  v11 = sub_100798614();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218496;
    v13 = v6;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MapView did start rotating at coordinate=(%g, %g), heading=%g", &v12, 0x20u);
  }

  self->_isRotatingMapView = 1;
  [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:9];
}

- (void)_handleMapViewPanStart:(id)a3
{
  v4 = a3;
  if ([(LookAroundPIPStateMachine *)self->_stateMachine canSetStateTo:4])
  {
    [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:4];
    [v4 centerCoordinate];
    v6 = v5;
    v8 = v7;
    v9 = sub_100798614();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218240;
      v11 = v6;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "MapView did start panning at coordinate=(%g, %g)", &v10, 0x16u);
    }

    self->_lastCoordinate.latitude = v6;
    self->_lastCoordinate.longitude = v8;
    [(LookAroundPIPDataCoordinatorImpl *)self _filteredHeadingReset];
    [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:6];
  }
}

- (double)_filteredHeadingWithHeading:(double)result
{
  v3 = fabs(result);
  v4 = -1.0;
  if (result >= 0.0)
  {
    v4 = 1.0;
  }

  filteredHeadingsCount = self->_filteredHeadingsCount;
  filteredHeadingsIndex = self->_filteredHeadingsIndex;
  if (filteredHeadingsCount > 4)
  {
    v7 = (&self->super.isa + filteredHeadingsIndex);
    self->_absoluteHeadingsSum = self->_absoluteHeadingsSum - v7[2];
    self->_headingsQuadrantsSum = self->_headingsQuadrantsSum - v7[11];
  }

  v8 = (&self->super.isa + filteredHeadingsIndex);
  v8[2] = v3;
  self->_absoluteHeadingsSum = self->_absoluteHeadingsSum + v3;
  v8[11] = v4;
  v9 = self->_headingsQuadrantsSum + v4;
  self->_headingsQuadrantsSum = v9;
  self->_filteredHeadingsIndex = (filteredHeadingsIndex + 1) % 5;
  if (filteredHeadingsCount >= 5)
  {
    absoluteHeadingsAverage = self->_absoluteHeadingsAverage;
    self->_absoluteHeadingsAverage = self->_absoluteHeadingsSum / filteredHeadingsCount;
  }

  else
  {
    self->_filteredHeadingsCount = filteredHeadingsCount + 1;
    absoluteHeadingsAverage = self->_absoluteHeadingsAverage;
    self->_absoluteHeadingsAverage = self->_absoluteHeadingsSum / (filteredHeadingsCount + 1);
    if (filteredHeadingsCount != 4)
    {
      return result;
    }
  }

  if (v3 < absoluteHeadingsAverage + -45.0 || v3 > absoluteHeadingsAverage + 45.0)
  {
    result = -absoluteHeadingsAverage;
    if (v9 >= 0.0)
    {
      return absoluteHeadingsAverage;
    }
  }

  return result;
}

- (void)_filteredHeadingReset
{
  self->_headingsQuadrantsSum = 0.0;
  *&self->_headingsQuadrants[1] = 0u;
  *&self->_headingsQuadrants[3] = 0u;
  *&self->_absoluteHeadingsSum = 0u;
  *&self->_filteredHeadingsIndex = 0u;
  *&self->_absoluteHeadings[2] = 0u;
  *&self->_absoluteHeadings[4] = 0u;
  *self->_absoluteHeadings = 0u;
}

- (void)setNeedsLookAroundAvailabilityUpdate
{
  v5 = self->_mapView;
  [(LookAroundPIPDataCoordinatorImpl *)self coordinateMapView:v5 didChangeLookAroundAvailability:[(MKMapView *)v5 _lookAroundAvailability]];
  if ([(MKMapView *)v5 _lookAroundAvailability]!= 2)
  {
    v3 = [(MKMapView *)v5 camera];
    v4 = [v3 copy];

    [v4 setCenterCoordinateDistance:950.0];
    [(MKMapView *)v5 setCamera:v4 animated:0];
  }
}

- (void)synchronizeMapViewIfNeeded
{
  if (self->_lookAroundView && [(LookAroundPIPStateMachine *)self->_stateMachine isActive])
  {
    [(MKMapView *)self->_mapView centerCoordinate];
    v5 = [[CLLocation alloc] initWithLatitude:v3 longitude:v4];
    [(MKLookAroundView *)self->_lookAroundView centerCoordinate];
    v8 = [[CLLocation alloc] initWithLatitude:v6 longitude:v7];
    [v5 distanceFromLocation:v8];
    if (v9 >= 10.0 && ![(LookAroundPIPStateMachine *)self->_stateMachine isCancellingPendingMove]&& ![(LookAroundPIPStateMachine *)self->_stateMachine isMoving]&& ![(LookAroundPIPStateMachine *)self->_stateMachine isPanning])
    {
      v10 = sub_100798614();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(MKMapView *)self->_mapView centerCoordinate];
        v12 = v11;
        [(MKMapView *)self->_mapView centerCoordinate];
        v14 = v13;
        [(MKLookAroundView *)self->_lookAroundView centerCoordinate];
        v16 = v15;
        [(MKLookAroundView *)self->_lookAroundView centerCoordinate];
        v18 = v17;
        v19 = [(LookAroundPIPStateMachine *)self->_stateMachine state];
        if (v19 > 7)
        {
          v20 = &stru_1016631F0;
        }

        else
        {
          v20 = off_101656310[v19];
        }

        v21 = v20;
        v23 = 134219010;
        v24 = v12;
        v25 = 2048;
        v26 = v14;
        v27 = 2048;
        v28 = v16;
        v29 = 2048;
        v30 = v18;
        v31 = 2112;
        v32 = v21;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Synchronizing mapView={%g, %g} with lookAroundView={%g, %g}, state=%@", &v23, 0x34u);
      }

      mapView = self->_mapView;
      [(MKLookAroundView *)self->_lookAroundView centerCoordinate];
      [(MKMapView *)mapView setCenterCoordinate:0 animated:?];
    }
  }
}

- (void)setNeedsMapViewSynchronization
{
  if (self->_lookAroundView && [(LookAroundPIPStateMachine *)self->_stateMachine isActive]&& [(LookAroundPIPStateMachine *)self->_stateMachine canSetStateTo:6])
  {
    [(MKLookAroundView *)self->_lookAroundView centerCoordinate];
    mapView = self->_mapView;

    [(MKMapView *)mapView setCenterCoordinate:?];
  }
}

- (void)resume
{
  if (self->_lookAroundView && [(LookAroundPIPStateMachine *)self->_stateMachine isActive]&& [(LookAroundPIPStateMachine *)self->_stateMachine canSetStateTo:6])
  {
    stateMachine = self->_stateMachine;

    [(LookAroundPIPStateMachine *)stateMachine setStateTo:6];
  }
}

- (void)pause
{
  if (self->_lookAroundView && [(LookAroundPIPStateMachine *)self->_stateMachine isActive]&& [(LookAroundPIPStateMachine *)self->_stateMachine canSetStateTo:5])
  {
    stateMachine = self->_stateMachine;

    [(LookAroundPIPStateMachine *)stateMachine setStateTo:5];
  }
}

- (void)coordinateLookAroundViewDidChangeVisibleRegion:(id)a3
{
  v4 = a3;
  v5 = v4;
  lookAroundView = self->_lookAroundView;
  if (lookAroundView)
  {
    v7 = lookAroundView == v4;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v11 = v4;
    v8 = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
    v5 = v11;
    if (v8)
    {
      [(MKLookAroundView *)v11 presentationYaw];
      self->_lookAroundViewHeading = v9;
      if (!self->_isLookAroundViewUserInteractionStarted && ![(LookAroundPIPStateMachine *)self->_stateMachine isCancellingPendingMove])
      {
        mapView = self->_mapView;
        [(MKLookAroundView *)v11 centerCoordinate];
        [(MKMapView *)mapView setCenterCoordinate:?];
        [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:14];
      }

      v5 = v11;
      if (self->_isLookAroundViewUserInteractionStarted)
      {
        [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:12];
        v5 = v11;
      }
    }
  }
}

- (void)coordinateLookAroundViewDidStopUserInteraction:(id)a3
{
  lookAroundView = self->_lookAroundView;
  if (lookAroundView)
  {
    v4 = lookAroundView == a3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && [(LookAroundPIPStateMachine *)self->_stateMachine isActive])
  {
    self->_isLookAroundViewUserInteractionStarted = 0;
    mapView = self->_mapView;

    [(MKMapView *)mapView setUserInteractionEnabled:1];
  }
}

- (void)coordinateLookAroundViewDidStartUserInteraction:(id)a3
{
  lookAroundView = self->_lookAroundView;
  if (lookAroundView)
  {
    v4 = lookAroundView == a3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && [(LookAroundPIPStateMachine *)self->_stateMachine isActive])
  {
    self->_isLookAroundViewUserInteractionStarted = 1;
    mapView = self->_mapView;

    [(MKMapView *)mapView setUserInteractionEnabled:0];
  }
}

- (void)coordinateMapView:(id)a3 didChangeLookAroundAvailability:(int64_t)a4
{
  v6 = a3;
  if (self->_mapView == v6)
  {
    if (self->_lookAroundView)
    {
      v8 = v6;
      v7 = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
      v6 = v8;
      if (v7)
      {
        [(LookAroundPIPDataCoordinatorImpl *)self _handleMapView:v8 didDidChangeLookAroundAvailability:a4];
        [(MKLookAroundView *)self->_lookAroundView setUserInteractionEnabled:[(LookAroundPIPDataCoordinatorImpl *)self isLookAroundDataAvailable]];
        v6 = v8;
      }
    }
  }
}

- (void)coordinateMapViewDidChangeVisibleRegion:(id)a3
{
  v4 = a3;
  if (self->_mapView == v4)
  {
    if (self->_lookAroundView)
    {
      v6 = v4;
      v5 = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
      v4 = v6;
      if (v5)
      {
        [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewPanningIfNeeded:v6];
        [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewRotatingIfNeeded:v6];
        v4 = v6;
      }
    }
  }
}

- (void)coordinateMapViewRegionDidChange:(id)a3
{
  v4 = a3;
  if (self->_mapView == v4)
  {
    if (self->_lookAroundView)
    {
      v6 = v4;
      v5 = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
      v4 = v6;
      if (v5)
      {
        [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewDidResumeIfNeeded:v6];
        v4 = v6;
      }
    }
  }
}

- (void)coordinateMapView:(id)a3 willSelectLabelMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_mapView == v6 && self->_lookAroundView && [(LookAroundPIPStateMachine *)self->_stateMachine isActive])
  {
    if ([(LookAroundPIPStateMachine *)self->_stateMachine canSetStateTo:1])
    {
      [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:1];
      v8 = sub_100798614();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Did cancel pending move", &v10, 2u);
      }

      [(MKLookAroundView *)self->_lookAroundView cancelPendingMove];
    }

    v9 = sub_100798614();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "MapView will refine label marker %@", &v10, 0xCu);
    }

    [(LookAroundPIPDataCoordinatorImpl *)self _refineLabelMarker:v7];
  }
}

- (void)coordinateMapViewDidStopUserInteraction:(id)a3
{
  v4 = a3;
  if (self->_mapView == v4)
  {
    if (self->_lookAroundView)
    {
      v6 = v4;
      v5 = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
      v4 = v6;
      if (v5)
      {
        [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewPanStop:v6 shouldMoveLookAroundView:1];
        self->_isMapViewUserInteractionStarted = 0;
        [(MKLookAroundView *)self->_lookAroundView setUserInteractionEnabled:[(LookAroundPIPDataCoordinatorImpl *)self isLookAroundDataAvailable]];
        v4 = v6;
      }
    }
  }
}

- (void)coordinateMapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8
{
  v12 = a3;
  if (self->_mapView == v12)
  {
    if (self->_lookAroundView)
    {
      v14 = v12;
      v13 = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
      v12 = v14;
      if (v13)
      {
        if (a4 == 1)
        {
          [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewZoomStop:v14 zoomGestureType:a6 zoomDirection:a5];
        }

        else
        {
          if (a4 != 2)
          {
            goto LABEL_2;
          }

          [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewRotateStop:v14];
        }

        v12 = v14;
      }
    }
  }

LABEL_2:
}

- (void)coordinateMapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  v7 = a3;
  if (self->_mapView == v7)
  {
    if (self->_lookAroundView)
    {
      v9 = v7;
      v8 = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
      v7 = v9;
      if (v8)
      {
        if (a4 == 2)
        {
          [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewRotateStart:v9];
        }

        else if (a4 == 1)
        {
          [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewZoomStart:v9];
        }

        else
        {
          if (a4)
          {
            goto LABEL_2;
          }

          [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewPanStart:v9];
        }

        v7 = v9;
      }
    }
  }

LABEL_2:
}

- (void)coordinateMapViewDidStartUserInteraction:(id)a3
{
  v4 = a3;
  if (self->_mapView == v4)
  {
    if (self->_lookAroundView)
    {
      if ([(LookAroundPIPStateMachine *)self->_stateMachine isActive])
      {
        self->_isMapViewUserInteractionStarted = 1;
        [(MKLookAroundView *)self->_lookAroundView setUserInteractionEnabled:0];
        if ([(LookAroundPIPStateMachine *)self->_stateMachine canSetStateTo:1])
        {
          [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:1];
          v5 = sub_100798614();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            *v6 = 0;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Did cancel pending move", v6, 2u);
          }

          [(MKLookAroundView *)self->_lookAroundView cancelPendingMove];
        }
      }
    }
  }
}

- (void)exitLookAroundPIPAfter:(double)a3 withCompletion:(id)a4
{
  v6 = a4;
  if (self->_lookAroundView)
  {
    v7 = sub_100798614();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will exit LookAround PIP", buf, 2u);
    }

    [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:4];
    if (self->_isLookAroundViewUserInteractionStarted)
    {
      self->_isLookAroundViewUserInteractionStarted = 0;
      [(MKMapView *)self->_mapView setUserInteractionEnabled:1];
    }

    if ([(LookAroundPIPStateMachine *)self->_stateMachine canSetStateTo:1])
    {
      [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:1];
      v8 = sub_100798614();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Did cancel pending move", buf, 2u);
      }

      [(MKLookAroundView *)self->_lookAroundView cancelPendingMove];
    }

    if (self->_mapViewDidChangeLookAroundAvailabilityObserver)
    {
      v9 = +[NSNotificationCenter defaultCenter];
      [v9 removeObserver:self->_mapViewDidChangeLookAroundAvailabilityObserver];

      mapViewDidChangeLookAroundAvailabilityObserver = self->_mapViewDidChangeLookAroundAvailabilityObserver;
      self->_mapViewDidChangeLookAroundAvailabilityObserver = 0;
    }

    if (self->_lookAroundViewDidBecomeAdequatelyDrawnObserver)
    {
      v11 = +[NSNotificationCenter defaultCenter];
      [v11 removeObserver:self->_lookAroundViewDidBecomeAdequatelyDrawnObserver];

      lookAroundViewDidBecomeAdequatelyDrawnObserver = self->_lookAroundViewDidBecomeAdequatelyDrawnObserver;
      self->_lookAroundViewDidBecomeAdequatelyDrawnObserver = 0;
    }

    v13 = [(MKMapView *)self->_mapView _mapLayer];
    [v13 setDesiredMapMode:0];

    [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:0];
    lookAroundView = self->_lookAroundView;
    self->_lookAroundView = 0;

    objc_initWeak(buf, self);
    v15 = dispatch_time(0, (a3 * 1000000000.0));
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100E36A78;
    v16[3] = &unk_101660648;
    objc_copyWeak(&v18, buf);
    v17 = v6;
    dispatch_after(v15, &_dispatch_main_q, v16);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

- (void)_onSuccessProceedToEnterLookArounPIP:(BOOL)a3
{
  if (a3)
  {
    [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:2];
    [(MKMapView *)self->_mapView centerCoordinate];
    v5 = v4;
    v7 = v6;
    [(MKLookAroundView *)self->_lookAroundView presentationYaw];
    v9 = v8;
    [(MKMapView *)self->_mapView _zoomLevel];
    v11 = v10;
    v12 = sub_100798614();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134218752;
      v14 = v5;
      v15 = 2048;
      v16 = v7;
      v17 = 2048;
      v18 = v9;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Did enter LookAround PIP at coordinate=(%g, %g), heading=%g, zoomLevel=%g", &v13, 0x2Au);
    }

    self->_isMapViewInSyncWithLookAroundView = 1;
    self->_lastCoordinate.latitude = v5;
    self->_lastCoordinate.longitude = v7;
    self->_lookAroundViewHeading = v9;
    self->_lastHeading = v9;
    [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:1];
  }

  else
  {

    [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:2];
  }
}

- (void)_onSuccess:(BOOL)a3 synchronizeMapViewCenterToLookAroundViewCenterAndContinue:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    lookAroundView = self->_lookAroundView;
    if (lookAroundView)
    {
      [(MKLookAroundView *)lookAroundView centerCoordinate];
      v9 = v8;
      v11 = v10;
      v12 = sub_100798614();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = 134218240;
        v14 = v9;
        v15 = 2048;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Synchronizing mapView with lookAroundView at coordinate=(%g, %g)", &v13, 0x16u);
      }

      [(MKMapView *)self->_mapView setCenterCoordinate:1 animated:v9, v11];
    }
  }

  v6[2](v6, v4);
}

- (void)_onSuccess:(BOOL)a3 waitForLookAroundViewToBecomeAdequatelyDrawnIfNeededAndContinue:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!v4)
  {
    goto LABEL_6;
  }

  [(MKMapView *)self->_mapView centerCoordinate];
  v8 = v7;
  v10 = v9;
  v11 = sub_100798614();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v25 = v8;
    v26 = 2048;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Will enter LookAround PIP at coordinate=(%g, %g)", buf, 0x16u);
  }

  [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:0];
  lookAroundView = self->_lookAroundView;
  if (lookAroundView && ([(MKLookAroundView *)lookAroundView adequatelyDrawn]& 1) == 0)
  {
    objc_initWeak(buf, self);
    v13 = sub_100798614();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Waiting for lookAroundView to become adequately drawn", v23, 2u);
    }

    v14 = +[NSNotificationCenter defaultCenter];
    v15 = self->_lookAroundView;
    v16 = +[NSOperationQueue mainQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100E37004;
    v20[3] = &unk_101655DA8;
    objc_copyWeak(&v22, buf);
    v17 = MKLookAroundViewDidBecomeAdequatelyDrawnNotification;
    v21 = v6;
    v18 = [v14 addObserverForName:v17 object:v15 queue:v16 usingBlock:v20];
    lookAroundViewDidBecomeAdequatelyDrawnObserver = self->_lookAroundViewDidBecomeAdequatelyDrawnObserver;
    self->_lookAroundViewDidBecomeAdequatelyDrawnObserver = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
LABEL_6:
    (*(v6 + 2))(v6, v4);
  }
}

- (void)_onSuccess:(BOOL)a3 setLookAroundViewEntryPointWithMapItem:(id)a4 orMuninMarker:(id)a5 andContinue:(id)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v11 && v8 && ([(MKLookAroundView *)self->_lookAroundView hasEnteredLookAround]& 1) == 0)
  {
    if ([v10 _hasLookAroundStorefront])
    {
      v13 = sub_100798614();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v10 name];
        *buf = 138412290;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Entering lookAroundView with mapItem=%@", buf, 0xCu);
      }

      lookAroundView = self->_lookAroundView;
      v16 = [MKLookAroundEntryPoint entryPointWithMapItem:v10];
      [(MKLookAroundView *)lookAroundView enterLookAroundWithEntryPoint:v16];
    }

    else
    {
      [(MKMapView *)self->_mapView presentationYaw];
      if (v10)
      {
        [v11 coordinate];
        [v11 coordinate];
        [v10 _coordinate];
        [v10 _coordinate];
        GEOBearingFromCoordinateToCoordinate();
        v19 = v18;
        v20 = [v10 name];
        v16 = [NSString stringWithFormat:@"and mapItem=%@", v20];
      }

      else
      {
        v19 = v17;
        v16 = &stru_1016631F0;
      }

      v21 = sub_100798614();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Entering lookAroundView with muninMarker %@", buf, 0xCu);
      }

      v22 = self->_lookAroundView;
      v23 = [MKLookAroundEntryPoint entryPointWithMuninMarker:v11 heading:v19];
      [(MKLookAroundView *)v22 enterLookAroundWithEntryPoint:v23];
    }
  }

  v12[2](v12, v8);
}

- (void)_getMuninMarkerAtCoordinate:(CLLocationCoordinate2D)a3 shouldWait:(BOOL)a4 andContinue:(id)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9 = a5;
  v10 = self->_mapView;
  v11 = sub_100798614();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v23 = latitude;
    v24 = 2048;
    v25 = longitude;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Asking mapView for a muninMarker at coordinate=(%g, %g)", buf, 0x16u);
  }

  v12 = [(MKMapView *)v10 _mapLayer];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100E374BC;
  v16[3] = &unk_101655D80;
  v21 = a4;
  v17 = v10;
  v18 = v9;
  v19 = latitude;
  v20 = longitude;
  v13 = v9;
  v14 = v10;
  v15 = [v12 muninMarkerAtCoordinate:v16 completeMarkerHandler:{latitude, longitude}];
}

- (void)_getEntryMuninMarkerAtCoordinate:(CLLocationCoordinate2D)a3 shouldWait:(BOOL)a4 andContinue:(id)a5
{
  v5 = a4;
  longitude = a3.longitude;
  latitude = a3.latitude;
  lookAroundView = self->_lookAroundView;
  v10 = a5;
  if ([(MKLookAroundView *)lookAroundView hasEnteredLookAround])
  {
    v10[2](v10, 1, 0);
  }

  else
  {
    [(LookAroundPIPDataCoordinatorImpl *)self _getMuninMarkerAtCoordinate:v5 shouldWait:v10 andContinue:latitude, longitude];
  }
}

- (void)_getMuninMarkerWithMapViewOrMapItem:(id)a3 shouldWait:(BOOL)a4 andContinue:(id)a5
{
  v6 = a4;
  v11 = a3;
  v8 = self->_lookAroundView;
  stateMachine = self->_stateMachine;
  v10 = a5;
  if ([(LookAroundPIPStateMachine *)stateMachine isActive]|| ![(MKLookAroundView *)v8 hasEnteredLookAround])
  {
    [v11 closeUpViewCoordinate];
  }

  else
  {
    [(MKLookAroundView *)v8 centerCoordinate];
  }

  [(LookAroundPIPDataCoordinatorImpl *)self _getMuninMarkerAtCoordinate:v6 shouldWait:v10 andContinue:?];
}

- (void)_getEntryMuninMarkerWithMapViewOrMapItem:(id)a3 shouldWait:(BOOL)a4 andContinue:(id)a5
{
  v6 = a4;
  v11 = a3;
  v8 = self->_lookAroundView;
  stateMachine = self->_stateMachine;
  v10 = a5;
  if ([(LookAroundPIPStateMachine *)stateMachine isActive]|| ![(MKLookAroundView *)v8 hasEnteredLookAround])
  {
    [v11 closeUpViewCoordinate];
  }

  else
  {
    [(MKLookAroundView *)v8 centerCoordinate];
  }

  [(LookAroundPIPDataCoordinatorImpl *)self _getEntryMuninMarkerAtCoordinate:v6 shouldWait:v10 andContinue:?];
}

- (void)enterLookAroundPIPWithLookAroundView:(id)a3 mapItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!self->_lookAroundView)
  {
    objc_storeStrong(&self->_lookAroundView, a3);
    v9 = [(MKMapView *)self->_mapView _mapLayer];
    [v9 setDesiredMapMode:3];

    [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:0];
    if (v8)
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [NSString stringWithFormat:@", mapItem=<%@: %p>", v11, v8];
    }

    else
    {
      v12 = &stru_1016631F0;
    }

    v13 = sub_100798614();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      lookAroundView = self->_lookAroundView;
      *buf = 138412802;
      v21 = v15;
      v22 = 2048;
      v23 = lookAroundView;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Enter LookAround PIP with lookAroundView=<%@: %p>%@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100E37C6C;
    v17[3] = &unk_101655D30;
    objc_copyWeak(&v19, buf);
    v18 = v8;
    [(LookAroundPIPDataCoordinatorImpl *)self _getEntryMuninMarkerWithMapViewOrMapItem:v18 shouldWait:0 andContinue:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

- (VKMuninMarker)muninMarker
{
  [(MKMapView *)self->_mapView centerCoordinate];
  v4 = v3;
  [(MKMapView *)self->_mapView centerCoordinate];
  v6 = v5;
  v7 = [(MKMapView *)self->_mapView _mapLayer];
  v8 = [v7 muninMarkerAtCoordinate:{v4, v6}];

  return v8;
}

- (void)_nonselectingTapGestureRecognizerAction:(id)a3
{
  mapView = self->_mapView;
  v5 = a3;
  v10 = [(LookAroundPIPDataCoordinatorImpl *)self mapView];
  [v5 locationInView:v10];
  v7 = v6;
  v9 = v8;

  [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewTap:mapView atPoint:v7, v9];
}

- (void)dealloc
{
  v3 = [(MKMapView *)self->_mapView _nonselectingTapGestureRecognizer];
  [v3 removeTarget:self action:0];

  [(MKMapServiceTicket *)self->_refineTicket cancel];
  refineTicket = self->_refineTicket;
  self->_refineTicket = 0;

  v5.receiver = self;
  v5.super_class = LookAroundPIPDataCoordinatorImpl;
  [(LookAroundPIPDataCoordinatorImpl *)&v5 dealloc];
}

- (LookAroundPIPDataCoordinatorImpl)initWithMapView:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = LookAroundPIPDataCoordinatorImpl;
  v6 = [(LookAroundPIPDataCoordinatorImpl *)&v13 init];
  if (v6)
  {
    v7 = +[NSHashTable weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_mapView, a3);
    v9 = [(MKMapView *)v6->_mapView _nonselectingTapGestureRecognizer];
    [v9 addTarget:v6 action:"_nonselectingTapGestureRecognizerAction:"];

    v10 = objc_alloc_init(LookAroundPIPStateMachine);
    stateMachine = v6->_stateMachine;
    v6->_stateMachine = v10;
  }

  return v6;
}

@end