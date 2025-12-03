@interface LookAroundPIPDataCoordinatorImpl
- (CLLocationCoordinate2D)lastCoordinate;
- (LookAroundPIPDataCoordinatorImpl)initWithMapView:(id)view;
- (SEL)_selectorForObserverEventType:(unint64_t)type;
- (VKMuninMarker)muninMarker;
- (double)_filteredHeadingWithHeading:(double)result;
- (void)_didEndMovingLookAroundView:(BOOL)view;
- (void)_dispatchSelector:(SEL)selector toObserver:(id)observer;
- (void)_filteredHeadingReset;
- (void)_getEntryMuninMarkerAtCoordinate:(CLLocationCoordinate2D)coordinate shouldWait:(BOOL)wait andContinue:(id)continue;
- (void)_getEntryMuninMarkerWithMapViewOrMapItem:(id)item shouldWait:(BOOL)wait andContinue:(id)continue;
- (void)_getMuninMarkerAtCoordinate:(CLLocationCoordinate2D)coordinate shouldWait:(BOOL)wait andContinue:(id)continue;
- (void)_getMuninMarkerWithMapViewOrMapItem:(id)item shouldWait:(BOOL)wait andContinue:(id)continue;
- (void)_handleMapView:(id)view didDidChangeLookAroundAvailability:(int64_t)availability;
- (void)_handleMapViewDidResumeIfNeeded:(id)needed;
- (void)_handleMapViewOneFingerPanWithZoomDirection:(int64_t)direction;
- (void)_handleMapViewPanStart:(id)start;
- (void)_handleMapViewPanStop:(id)stop shouldMoveLookAroundView:(BOOL)view;
- (void)_handleMapViewPanningIfNeeded:(id)needed;
- (void)_handleMapViewPinchWithZoomDirection:(int64_t)direction;
- (void)_handleMapViewRotateStart:(id)start;
- (void)_handleMapViewRotateStop:(id)stop;
- (void)_handleMapViewRotatingIfNeeded:(id)needed;
- (void)_handleMapViewTap:(id)tap atPoint:(CGPoint)point;
- (void)_handleMapViewZoomStart:(id)start;
- (void)_handleMapViewZoomStop:(id)stop zoomGestureType:(int64_t)type zoomDirection:(int64_t)direction;
- (void)_moveLookAroundViewIfNeeded;
- (void)_moveLookAroundViewToCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)_moveLookAroundViewToMapItem:(id)item;
- (void)_nearestMuninMarkerWithCompleteMarkerHandler:(id)handler;
- (void)_nonselectingTapGestureRecognizerAction:(id)action;
- (void)_notifyObservers:(unint64_t)observers;
- (void)_onSuccess:(BOOL)success setLookAroundViewEntryPointWithMapItem:(id)item orMuninMarker:(id)marker andContinue:(id)continue;
- (void)_onSuccess:(BOOL)success synchronizeMapViewCenterToLookAroundViewCenterAndContinue:(id)continue;
- (void)_onSuccess:(BOOL)success waitForLookAroundViewToBecomeAdequatelyDrawnIfNeededAndContinue:(id)continue;
- (void)_onSuccessProceedToEnterLookArounPIP:(BOOL)p;
- (void)_refineLabelMarker:(id)marker;
- (void)_startMovingLookAroundViewToMapItem:(id)item orMuninMarker:(id)marker heading:(double)heading shouldZoom:(BOOL)zoom;
- (void)_willEndMovingLookAroundView:(BOOL)view shouldZoomIfFinished:(BOOL)finished;
- (void)coordinateLookAroundViewDidChangeVisibleRegion:(id)region;
- (void)coordinateLookAroundViewDidStartUserInteraction:(id)interaction;
- (void)coordinateLookAroundViewDidStopUserInteraction:(id)interaction;
- (void)coordinateMapView:(id)view didChangeLookAroundAvailability:(int64_t)availability;
- (void)coordinateMapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)coordinateMapView:(id)view willSelectLabelMarker:(id)marker;
- (void)coordinateMapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)coordinateMapViewDidChangeVisibleRegion:(id)region;
- (void)coordinateMapViewDidStartUserInteraction:(id)interaction;
- (void)coordinateMapViewDidStopUserInteraction:(id)interaction;
- (void)coordinateMapViewRegionDidChange:(id)change;
- (void)dealloc;
- (void)enterLookAroundPIPWithLookAroundView:(id)view mapItem:(id)item;
- (void)exitLookAroundPIPAfter:(double)after withCompletion:(id)completion;
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

- (void)_nearestMuninMarkerWithCompleteMarkerHandler:(id)handler
{
  handlerCopy = handler;
  [(MKMapView *)self->_mapView centerCoordinate];
  v5 = v4;
  [(MKMapView *)self->_mapView centerCoordinate];
  v7 = v6;
  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  v9 = [_mapLayer muninMarkerAtCoordinate:handlerCopy completeMarkerHandler:{v5, v7}];
}

- (void)_didEndMovingLookAroundView:(BOOL)view
{
  viewCopy = view;
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
    if (viewCopy)
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

- (void)_willEndMovingLookAroundView:(BOOL)view shouldZoomIfFinished:(BOOL)finished
{
  finishedCopy = finished;
  viewCopy = view;
  [(MKMapView *)self->_mapView centerCoordinate];
  v9 = [[CLLocation alloc] initWithLatitude:v7 longitude:v8];
  [(MKLookAroundView *)self->_lookAroundView centerCoordinate];
  v11 = v10;
  v13 = v12;
  v14 = [[CLLocation alloc] initWithLatitude:v10 longitude:v12];
  [v9 distanceFromLocation:v14];
  v16 = v15;
  isMoving = 0;
  self->_isMapViewInSyncWithLookAroundView = v15 < 10.0;
  if (!viewCopy && v15 < 500.0)
  {
    isMoving = [(LookAroundPIPStateMachine *)self->_stateMachine isMoving];
  }

  isActive = 0;
  if (viewCopy && finishedCopy)
  {
    isActive = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
  }

  v19 = sub_100798614();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    isMapViewInSyncWithLookAroundView = self->_isMapViewInSyncWithLookAroundView;
    v21 = @"NO";
    *v30 = 134219266;
    if (viewCopy)
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

    if (isMoving)
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

  if (isMoving)
  {
    lastHeading = self->_lastHeading;
    camera = [(MKMapView *)self->_mapView camera];
    v26 = [camera copy];

    [v26 setCenterCoordinate:{v11, v13}];
    [(MKMapView *)self->_mapView setCamera:v26 animated:1];
    [(LookAroundPIPDataCoordinatorImpl *)self setIsMapViewInSyncWithLookAroundView:1];
    lookAroundView = [(LookAroundPIPDataCoordinatorImpl *)self lookAroundView];
    [lookAroundView setPresentationYaw:lastHeading];

LABEL_23:
    goto LABEL_24;
  }

  if (isActive)
  {
    camera2 = [(MKMapView *)self->_mapView camera];
    v26 = [camera2 copy];

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
  [(LookAroundPIPDataCoordinatorImpl *)self _didEndMovingLookAroundView:viewCopy, *v30];
}

- (void)_startMovingLookAroundViewToMapItem:(id)item orMuninMarker:(id)marker heading:(double)heading shouldZoom:(BOOL)zoom
{
  itemCopy = item;
  markerCopy = marker;
  v12 = self->_stateMachine;
  if (![(LookAroundPIPStateMachine *)v12 canSetStateTo:3])
  {
    goto LABEL_13;
  }

  [(LookAroundPIPStateMachine *)v12 setStateTo:3];
  [markerCopy coordinate];
  v14 = v13;
  [markerCopy coordinate];
  v16 = CLLocationCoordinate2DMake(v14, v15);
  v17 = sub_100798614();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = v16.latitude;
    *&buf[12] = 2048;
    *&buf[14] = v16.longitude;
    *&buf[22] = 2048;
    headingCopy = heading;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "LookAroundView started moving to coordinate=(%g, %g), heading=%g", buf, 0x20u);
  }

  v18 = self->_mapView;
  v19 = self->_lookAroundView;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(headingCopy) = 0;
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
  zoomCopy = zoom;
  v22 = [(MKLookAroundView *)lookAroundView moveToMapItem:itemCopy wantsCloseUpView:1 orMuninMarker:markerCopy withHeading:v28 completionHandler:heading];
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
    headingCopy2 = heading;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "MapView synchronizing with muninMarker at coordinate=(%g, %g), heading=%g", v39, 0x20u);
  }

  camera = [(MKMapView *)v18 camera];
  v27 = [camera copy];

  [v27 setCenterCoordinate:{v16.latitude, v16.longitude}];
  [(LookAroundPIPDataCoordinatorImpl *)self setLookAroundViewHeading:heading];
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

- (void)_dispatchSelector:(SEL)selector toObserver:(id)observer
{
  observerCopy = observer;
  if (objc_opt_respondsToSelector())
  {
    ([observerCopy methodForSelector:selector])(observerCopy, selector, self, self->_mapView);
  }
}

- (SEL)_selectorForObserverEventType:(unint64_t)type
{
  switch(type)
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

- (void)_notifyObservers:(unint64_t)observers
{
  v5 = [(LookAroundPIPDataCoordinatorImpl *)self _selectorForObserverEventType:?];
  if (observers > 0xC || ((1 << observers) & 0x1480) == 0)
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

- (void)_refineLabelMarker:(id)marker
{
  markerCopy = marker;
  objc_storeStrong(&self->_labelMarkerToRefine, marker);
  [markerCopy coordinate];
  v7 = v6;
  [markerCopy coordinate];
  v9 = [[GEOMapItemIdentifier alloc] initWithMUID:objc_msgSend(markerCopy coordinate:{"businessID"), v7, v8}];
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
  v16 = markerCopy;
  v18 = v16;
  [(MKMapServiceTicket *)v15 submitWithHandler:v17 networkActivity:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)_handleMapViewDidResumeIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = self->_stateMachine;
  if ([(LookAroundPIPStateMachine *)v5 canSetStateTo:7])
  {
    camera = [neededCopy camera];
    v7 = [camera copy];

    [(MKLookAroundView *)self->_lookAroundView centerCoordinate];
    [v7 setCenterCoordinate:?];
    [(LookAroundPIPStateMachine *)v5 setStateTo:7];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100E34B44;
    v8[3] = &unk_101661738;
    v9 = v5;
    [neededCopy setCamera:v7 animated:1 completionHandler:v8];
  }
}

- (void)_moveLookAroundViewToMapItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewPanStart:self->_mapView];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100E34C50;
  v6[3] = &unk_101655D30;
  objc_copyWeak(&v8, &location);
  v5 = itemCopy;
  v7 = v5;
  [(LookAroundPIPDataCoordinatorImpl *)self _getMuninMarkerWithMapViewOrMapItem:v5 shouldWait:1 andContinue:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_moveLookAroundViewToCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
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

- (void)_handleMapView:(id)view didDidChangeLookAroundAvailability:(int64_t)availability
{
  viewCopy = view;
  [viewCopy centerCoordinate];
  v8 = v7;
  v10 = v9;
  [viewCopy _zoomLevel];
  v12 = v11;

  v13 = sub_100798614();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (availability > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(&off_101655E68 + availability);
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

- (void)_handleMapViewTap:(id)tap atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  tapCopy = tap;
  if (self->_mapView == tapCopy && self->_lookAroundView && [(LookAroundPIPStateMachine *)self->_stateMachine isActive])
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

- (void)_handleMapViewZoomStop:(id)stop zoomGestureType:(int64_t)type zoomDirection:(int64_t)direction
{
  stopCopy = stop;
  if (type == 2 && direction == 1)
  {
    selfCopy2 = self;
    v10 = 19;
LABEL_7:
    [(LookAroundPIPDataCoordinatorImpl *)selfCopy2 _notifyObservers:v10];
    goto LABEL_8;
  }

  if (type == 3 && direction == 2)
  {
    selfCopy2 = self;
    v10 = 20;
    goto LABEL_7;
  }

  if (type == 4)
  {
    [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewOneFingerPanWithZoomDirection:direction];
  }

  else if (type == 1)
  {
    [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewPinchWithZoomDirection:direction];
  }

LABEL_8:
  [stopCopy centerCoordinate];
  v12 = v11;
  v14 = v13;
  [stopCopy _zoomLevel];
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

- (void)_handleMapViewOneFingerPanWithZoomDirection:(int64_t)direction
{
  if (direction == 1)
  {
    v3 = 17;
  }

  else
  {
    if (direction != 2)
    {
      return;
    }

    v3 = 18;
  }

  [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:v3];
}

- (void)_handleMapViewPinchWithZoomDirection:(int64_t)direction
{
  if (direction == 1)
  {
    v3 = 21;
  }

  else
  {
    if (direction != 2)
    {
      return;
    }

    v3 = 22;
  }

  [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:v3];
}

- (void)_handleMapViewRotateStop:(id)stop
{
  stopCopy = stop;
  [stopCopy centerCoordinate];
  v6 = v5;
  v8 = v7;
  [stopCopy presentationYaw];
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

- (void)_handleMapViewPanStop:(id)stop shouldMoveLookAroundView:(BOOL)view
{
  viewCopy = view;
  stopCopy = stop;
  if ([(LookAroundPIPDataCoordinatorImpl *)self isPanningMapView])
  {
    [stopCopy centerCoordinate];
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
    if (viewCopy && [(LookAroundPIPDataCoordinatorImpl *)self isLookAroundDataAvailable])
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

- (void)_handleMapViewRotatingIfNeeded:(id)needed
{
  if (self->_isRotatingMapView)
  {
    [(LookAroundPIPDataCoordinatorImpl *)self _notifyObservers:10];
  }
}

- (void)_handleMapViewPanningIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(LookAroundPIPDataCoordinatorImpl *)self isPanningMapView])
  {
    [neededCopy centerCoordinate];
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

- (void)_handleMapViewZoomStart:(id)start
{
  startCopy = start;
  [startCopy centerCoordinate];
  v6 = v5;
  v8 = v7;
  [startCopy _zoomLevel];
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

- (void)_handleMapViewRotateStart:(id)start
{
  startCopy = start;
  [startCopy centerCoordinate];
  v6 = v5;
  v8 = v7;
  [startCopy presentationYaw];
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

- (void)_handleMapViewPanStart:(id)start
{
  startCopy = start;
  if ([(LookAroundPIPStateMachine *)self->_stateMachine canSetStateTo:4])
  {
    [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:4];
    [startCopy centerCoordinate];
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
    camera = [(MKMapView *)v5 camera];
    v4 = [camera copy];

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
        state = [(LookAroundPIPStateMachine *)self->_stateMachine state];
        if (state > 7)
        {
          v20 = &stru_1016631F0;
        }

        else
        {
          v20 = off_101656310[state];
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

- (void)coordinateLookAroundViewDidChangeVisibleRegion:(id)region
{
  regionCopy = region;
  v5 = regionCopy;
  lookAroundView = self->_lookAroundView;
  if (lookAroundView)
  {
    v7 = lookAroundView == regionCopy;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v11 = regionCopy;
    isActive = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
    v5 = v11;
    if (isActive)
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

- (void)coordinateLookAroundViewDidStopUserInteraction:(id)interaction
{
  lookAroundView = self->_lookAroundView;
  if (lookAroundView)
  {
    v4 = lookAroundView == interaction;
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

- (void)coordinateLookAroundViewDidStartUserInteraction:(id)interaction
{
  lookAroundView = self->_lookAroundView;
  if (lookAroundView)
  {
    v4 = lookAroundView == interaction;
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

- (void)coordinateMapView:(id)view didChangeLookAroundAvailability:(int64_t)availability
{
  viewCopy = view;
  if (self->_mapView == viewCopy)
  {
    if (self->_lookAroundView)
    {
      v8 = viewCopy;
      isActive = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
      viewCopy = v8;
      if (isActive)
      {
        [(LookAroundPIPDataCoordinatorImpl *)self _handleMapView:v8 didDidChangeLookAroundAvailability:availability];
        [(MKLookAroundView *)self->_lookAroundView setUserInteractionEnabled:[(LookAroundPIPDataCoordinatorImpl *)self isLookAroundDataAvailable]];
        viewCopy = v8;
      }
    }
  }
}

- (void)coordinateMapViewDidChangeVisibleRegion:(id)region
{
  regionCopy = region;
  if (self->_mapView == regionCopy)
  {
    if (self->_lookAroundView)
    {
      v6 = regionCopy;
      isActive = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
      regionCopy = v6;
      if (isActive)
      {
        [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewPanningIfNeeded:v6];
        [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewRotatingIfNeeded:v6];
        regionCopy = v6;
      }
    }
  }
}

- (void)coordinateMapViewRegionDidChange:(id)change
{
  changeCopy = change;
  if (self->_mapView == changeCopy)
  {
    if (self->_lookAroundView)
    {
      v6 = changeCopy;
      isActive = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
      changeCopy = v6;
      if (isActive)
      {
        [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewDidResumeIfNeeded:v6];
        changeCopy = v6;
      }
    }
  }
}

- (void)coordinateMapView:(id)view willSelectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  if (self->_mapView == viewCopy && self->_lookAroundView && [(LookAroundPIPStateMachine *)self->_stateMachine isActive])
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
      v11 = markerCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "MapView will refine label marker %@", &v10, 0xCu);
    }

    [(LookAroundPIPDataCoordinatorImpl *)self _refineLabelMarker:markerCopy];
  }
}

- (void)coordinateMapViewDidStopUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (self->_mapView == interactionCopy)
  {
    if (self->_lookAroundView)
    {
      v6 = interactionCopy;
      isActive = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
      interactionCopy = v6;
      if (isActive)
      {
        [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewPanStop:v6 shouldMoveLookAroundView:1];
        self->_isMapViewUserInteractionStarted = 0;
        [(MKLookAroundView *)self->_lookAroundView setUserInteractionEnabled:[(LookAroundPIPDataCoordinatorImpl *)self isLookAroundDataAvailable]];
        interactionCopy = v6;
      }
    }
  }
}

- (void)coordinateMapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  viewCopy = view;
  if (self->_mapView == viewCopy)
  {
    if (self->_lookAroundView)
    {
      v14 = viewCopy;
      isActive = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
      viewCopy = v14;
      if (isActive)
      {
        if (gesture == 1)
        {
          [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewZoomStop:v14 zoomGestureType:type zoomDirection:direction];
        }

        else
        {
          if (gesture != 2)
          {
            goto LABEL_2;
          }

          [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewRotateStop:v14];
        }

        viewCopy = v14;
      }
    }
  }

LABEL_2:
}

- (void)coordinateMapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  viewCopy = view;
  if (self->_mapView == viewCopy)
  {
    if (self->_lookAroundView)
    {
      v9 = viewCopy;
      isActive = [(LookAroundPIPStateMachine *)self->_stateMachine isActive];
      viewCopy = v9;
      if (isActive)
      {
        if (gesture == 2)
        {
          [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewRotateStart:v9];
        }

        else if (gesture == 1)
        {
          [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewZoomStart:v9];
        }

        else
        {
          if (gesture)
          {
            goto LABEL_2;
          }

          [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewPanStart:v9];
        }

        viewCopy = v9;
      }
    }
  }

LABEL_2:
}

- (void)coordinateMapViewDidStartUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (self->_mapView == interactionCopy)
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

- (void)exitLookAroundPIPAfter:(double)after withCompletion:(id)completion
{
  completionCopy = completion;
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

    _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
    [_mapLayer setDesiredMapMode:0];

    [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:0];
    lookAroundView = self->_lookAroundView;
    self->_lookAroundView = 0;

    objc_initWeak(buf, self);
    v15 = dispatch_time(0, (after * 1000000000.0));
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100E36A78;
    v16[3] = &unk_101660648;
    objc_copyWeak(&v18, buf);
    v17 = completionCopy;
    dispatch_after(v15, &_dispatch_main_q, v16);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

- (void)_onSuccessProceedToEnterLookArounPIP:(BOOL)p
{
  if (p)
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

- (void)_onSuccess:(BOOL)success synchronizeMapViewCenterToLookAroundViewCenterAndContinue:(id)continue
{
  successCopy = success;
  continueCopy = continue;
  if (successCopy)
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

  continueCopy[2](continueCopy, successCopy);
}

- (void)_onSuccess:(BOOL)success waitForLookAroundViewToBecomeAdequatelyDrawnIfNeededAndContinue:(id)continue
{
  successCopy = success;
  continueCopy = continue;
  if (!successCopy)
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
    v21 = continueCopy;
    v18 = [v14 addObserverForName:v17 object:v15 queue:v16 usingBlock:v20];
    lookAroundViewDidBecomeAdequatelyDrawnObserver = self->_lookAroundViewDidBecomeAdequatelyDrawnObserver;
    self->_lookAroundViewDidBecomeAdequatelyDrawnObserver = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
LABEL_6:
    (*(continueCopy + 2))(continueCopy, successCopy);
  }
}

- (void)_onSuccess:(BOOL)success setLookAroundViewEntryPointWithMapItem:(id)item orMuninMarker:(id)marker andContinue:(id)continue
{
  successCopy = success;
  itemCopy = item;
  markerCopy = marker;
  continueCopy = continue;
  if (markerCopy && successCopy && ([(MKLookAroundView *)self->_lookAroundView hasEnteredLookAround]& 1) == 0)
  {
    if ([itemCopy _hasLookAroundStorefront])
    {
      v13 = sub_100798614();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        name = [itemCopy name];
        *buf = 138412290;
        v25 = name;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Entering lookAroundView with mapItem=%@", buf, 0xCu);
      }

      lookAroundView = self->_lookAroundView;
      v16 = [MKLookAroundEntryPoint entryPointWithMapItem:itemCopy];
      [(MKLookAroundView *)lookAroundView enterLookAroundWithEntryPoint:v16];
    }

    else
    {
      [(MKMapView *)self->_mapView presentationYaw];
      if (itemCopy)
      {
        [markerCopy coordinate];
        [markerCopy coordinate];
        [itemCopy _coordinate];
        [itemCopy _coordinate];
        GEOBearingFromCoordinateToCoordinate();
        v19 = v18;
        name2 = [itemCopy name];
        v16 = [NSString stringWithFormat:@"and mapItem=%@", name2];
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
      v23 = [MKLookAroundEntryPoint entryPointWithMuninMarker:markerCopy heading:v19];
      [(MKLookAroundView *)v22 enterLookAroundWithEntryPoint:v23];
    }
  }

  continueCopy[2](continueCopy, successCopy);
}

- (void)_getMuninMarkerAtCoordinate:(CLLocationCoordinate2D)coordinate shouldWait:(BOOL)wait andContinue:(id)continue
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  continueCopy = continue;
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

  _mapLayer = [(MKMapView *)v10 _mapLayer];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100E374BC;
  v16[3] = &unk_101655D80;
  waitCopy = wait;
  v17 = v10;
  v18 = continueCopy;
  v19 = latitude;
  v20 = longitude;
  v13 = continueCopy;
  v14 = v10;
  v15 = [_mapLayer muninMarkerAtCoordinate:v16 completeMarkerHandler:{latitude, longitude}];
}

- (void)_getEntryMuninMarkerAtCoordinate:(CLLocationCoordinate2D)coordinate shouldWait:(BOOL)wait andContinue:(id)continue
{
  waitCopy = wait;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  lookAroundView = self->_lookAroundView;
  continueCopy = continue;
  if ([(MKLookAroundView *)lookAroundView hasEnteredLookAround])
  {
    continueCopy[2](continueCopy, 1, 0);
  }

  else
  {
    [(LookAroundPIPDataCoordinatorImpl *)self _getMuninMarkerAtCoordinate:waitCopy shouldWait:continueCopy andContinue:latitude, longitude];
  }
}

- (void)_getMuninMarkerWithMapViewOrMapItem:(id)item shouldWait:(BOOL)wait andContinue:(id)continue
{
  waitCopy = wait;
  itemCopy = item;
  v8 = self->_lookAroundView;
  stateMachine = self->_stateMachine;
  continueCopy = continue;
  if ([(LookAroundPIPStateMachine *)stateMachine isActive]|| ![(MKLookAroundView *)v8 hasEnteredLookAround])
  {
    [itemCopy closeUpViewCoordinate];
  }

  else
  {
    [(MKLookAroundView *)v8 centerCoordinate];
  }

  [(LookAroundPIPDataCoordinatorImpl *)self _getMuninMarkerAtCoordinate:waitCopy shouldWait:continueCopy andContinue:?];
}

- (void)_getEntryMuninMarkerWithMapViewOrMapItem:(id)item shouldWait:(BOOL)wait andContinue:(id)continue
{
  waitCopy = wait;
  itemCopy = item;
  v8 = self->_lookAroundView;
  stateMachine = self->_stateMachine;
  continueCopy = continue;
  if ([(LookAroundPIPStateMachine *)stateMachine isActive]|| ![(MKLookAroundView *)v8 hasEnteredLookAround])
  {
    [itemCopy closeUpViewCoordinate];
  }

  else
  {
    [(MKLookAroundView *)v8 centerCoordinate];
  }

  [(LookAroundPIPDataCoordinatorImpl *)self _getEntryMuninMarkerAtCoordinate:waitCopy shouldWait:continueCopy andContinue:?];
}

- (void)enterLookAroundPIPWithLookAroundView:(id)view mapItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  if (!self->_lookAroundView)
  {
    objc_storeStrong(&self->_lookAroundView, view);
    _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
    [_mapLayer setDesiredMapMode:3];

    [(LookAroundPIPStateMachine *)self->_stateMachine setStateTo:0];
    if (itemCopy)
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      itemCopy = [NSString stringWithFormat:@", mapItem=<%@: %p>", v11, itemCopy];
    }

    else
    {
      itemCopy = &stru_1016631F0;
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
      v25 = itemCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Enter LookAround PIP with lookAroundView=<%@: %p>%@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100E37C6C;
    v17[3] = &unk_101655D30;
    objc_copyWeak(&v19, buf);
    v18 = itemCopy;
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
  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  v8 = [_mapLayer muninMarkerAtCoordinate:{v4, v6}];

  return v8;
}

- (void)_nonselectingTapGestureRecognizerAction:(id)action
{
  mapView = self->_mapView;
  actionCopy = action;
  mapView = [(LookAroundPIPDataCoordinatorImpl *)self mapView];
  [actionCopy locationInView:mapView];
  v7 = v6;
  v9 = v8;

  [(LookAroundPIPDataCoordinatorImpl *)self _handleMapViewTap:mapView atPoint:v7, v9];
}

- (void)dealloc
{
  _nonselectingTapGestureRecognizer = [(MKMapView *)self->_mapView _nonselectingTapGestureRecognizer];
  [_nonselectingTapGestureRecognizer removeTarget:self action:0];

  [(MKMapServiceTicket *)self->_refineTicket cancel];
  refineTicket = self->_refineTicket;
  self->_refineTicket = 0;

  v5.receiver = self;
  v5.super_class = LookAroundPIPDataCoordinatorImpl;
  [(LookAroundPIPDataCoordinatorImpl *)&v5 dealloc];
}

- (LookAroundPIPDataCoordinatorImpl)initWithMapView:(id)view
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = LookAroundPIPDataCoordinatorImpl;
  v6 = [(LookAroundPIPDataCoordinatorImpl *)&v13 init];
  if (v6)
  {
    v7 = +[NSHashTable weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_mapView, view);
    _nonselectingTapGestureRecognizer = [(MKMapView *)v6->_mapView _nonselectingTapGestureRecognizer];
    [_nonselectingTapGestureRecognizer addTarget:v6 action:"_nonselectingTapGestureRecognizerAction:"];

    v10 = objc_alloc_init(LookAroundPIPStateMachine);
    stateMachine = v6->_stateMachine;
    v6->_stateMachine = v10;
  }

  return v6;
}

@end