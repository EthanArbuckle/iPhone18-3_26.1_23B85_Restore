@interface MKLookAroundView
- (BOOL)_moveToStorefrontView:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (BOOL)_pointContainedInCompassView:(CGPoint)a3;
- (BOOL)adequatelyDrawn;
- (BOOL)cancelPendingMove;
- (BOOL)lookAroundGestureControllerShouldReceive:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)moveToMapItem:(id)a3 wantsCloseUpView:(BOOL)a4 orMuninMarker:(id)a5 withHeading:(double)a6 completionHandler:(id)a7;
- (BOOL)tapAtPoint:(CGPoint)a3;
- (CLLocationCoordinate2D)centerCoordinate;
- (MKLookAroundView)initWithCoder:(id)a3;
- (MKLookAroundView)initWithFrame:(CGRect)a3;
- (MKLookAroundViewDelegate)delegate;
- (NSArray)imageResources;
- (NSArray)visiblePlaceMUIDs;
- (NSArray)visibleRoadLabels;
- (NSDate)collectionDate;
- (NSURL)fullSharingURL;
- (UIEdgeInsets)compassInsets;
- (VKLabelMarker)selectedLabelMarker;
- (VKMuninMarker)muninMarker;
- (double)presentationYaw;
- (id)_imageFromLookAroundView;
- (id)_locationInfoWithHeading:(double)a3;
- (id)_mapkit_locationSubtitle;
- (id)_mapkit_locationTitle;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)labelMarkerForCustomFeatureAnnotation:(id)a3;
- (void)_animateCanvasForBounds:(CGRect)a3;
- (void)_enterLookAroundForMapItem:(id)a3 wantsCloseUpView:(BOOL)a4 cameraFrameOverride:(id)a5;
- (void)_enterLookAroundForMuninMarker:(id)a3 withHeading:(double)a4;
- (void)_enterLookAroundForMuninViewState:(id)a3;
- (void)_maps_initCommon;
- (void)_refineLabelMarker:(id)a3;
- (void)_resetViewState;
- (void)_reverseGeocodeCoordinate:(CLLocationCoordinate2D)a3;
- (void)_setInitialLocationInfo;
- (void)_updateCameraFrame;
- (void)_updateCompass;
- (void)_updateCompassInsets;
- (void)_updateLocationInfo;
- (void)_updateLocationInfoForCoordinate:(CLLocationCoordinate2D)a3 allowReverseGeocodeIfNeeded:(BOOL)a4;
- (void)dealloc;
- (void)deselectLabelMarker;
- (void)enterLookAroundWithEntryPoint:(id)a3;
- (void)jumpToCloseUpView;
- (void)jumpToStandOffView;
- (void)lookAroundGestureController:(id)a3 didTapAtPoint:(CGPoint)a4 areaAvailable:(BOOL)a5;
- (void)lookAroundGestureController:(id)a3 didTapLabelMarker:(id)a4;
- (void)lookAroundGestureController:(id)a3 didZoomWithDirection:(int64_t)a4 type:(int64_t)a5;
- (void)lookAroundGestureControllerDidPan:(id)a3;
- (void)lookAroundGestureControllerDidStartUserInteraction:(id)a3;
- (void)lookAroundGestureControllerDidStopUserInteraction:(id)a3;
- (void)mapLayer:(id)a3 nearestJunctionDidChange:(id)a4 currentRoad:(id)a5;
- (void)mapLayerDidChangeRegionAnimated:(BOOL)a3;
- (void)mapLayerDidChangeSceneState:(id)a3 withState:(unint64_t)a4;
- (void)mapLayerDidChangeVisibleRegion;
- (void)mapLayerWasUnableToAnimate;
- (void)mapLayerWillAnimateToLocation:(id)a3;
- (void)mapLayerWillChangeRegionAnimated:(BOOL)a3;
- (void)moveToCloseUpViewAnimated:(BOOL)a3;
- (void)moveToStandOffViewAnimated:(BOOL)a3;
- (void)openInMapsWithCompletionHandler:(id)a3;
- (void)recordTriggerAction:(int)a3;
- (void)reset;
- (void)selectLabelMarker:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)a3;
- (void)setCompassHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setFrame:(CGRect)a3;
- (void)setPointOfInterestFilter:(id)a3;
- (void)setPresentationYaw:(double)a3;
- (void)setPresentationYaw:(double)a3 animated:(BOOL)a4;
- (void)setPresentationYaw:(double)a3 pitch:(double)a4 animated:(BOOL)a5;
- (void)setShowsPointLabels:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation MKLookAroundView

- (MKLookAroundViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)compassInsets
{
  top = self->_compassInsets.top;
  left = self->_compassInsets.left;
  bottom = self->_compassInsets.bottom;
  right = self->_compassInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_imageFromLookAroundView
{
  [(VKMapView *)self->_lookAroundView frame];
  v8.width = v3;
  v8.height = v4;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  [(VKMapView *)self->_lookAroundView renderInContext:UIGraphicsGetCurrentContext()];
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v5;
}

- (NSArray)imageResources
{
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v3 = [(VKMapView *)self->_lookAroundView onscreenImageResources];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (NSArray)visibleRoadLabels
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [(VKMapView *)self->_lookAroundView labelMarkers];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([v9 featureType] == 15)
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [v3 copy];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (NSArray)visiblePlaceMUIDs
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(VKMapView *)self->_lookAroundView labelMarkers];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v9 featureType] == 14 && objc_msgSend(v9, "featureID"))
          {
            v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v9, "featureID")}];
            [v3 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = [v3 copy];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (void)_updateLocationInfoForCoordinate:(CLLocationCoordinate2D)a3 allowReverseGeocodeIfNeeded:(BOOL)a4
{
  if (vabdd_f64(a3.latitude, self->_lastCoordinate.latitude) >= 0.00000000999999994 || vabdd_f64(a3.longitude, self->_lastCoordinate.longitude) >= 0.00000000999999994)
  {
    if (a4)
    {
      [(MKLookAroundView *)self _reverseGeocodeCoordinate:?];
    }
  }

  else if (!self->_revGeoTicket)
  {
    [(MKLookAroundView *)self _updateLocationInfo];
  }
}

- (void)_updateLocationInfo
{
  v3 = [(MKLookAroundView *)self muninViewState];
  v20 = [v3 locationInfo];

  v4 = [v20 copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  v8 = [(MKLookAroundView *)self muninViewState];
  v9 = [v8 cameraFrame];
  [v9 yaw];
  v10 = [(MKLookAroundView *)self _locationInfoWithHeading:?];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12;

  if (self->_lastJunctionName)
  {
    v14 = [v13 copy];

    [v14 setLocationName:self->_lastJunctionName];
    v13 = v14;
  }

  if (([v13 isEqual:v20] & 1) == 0)
  {
    v15 = objc_opt_new();
    v16 = [(MKLookAroundView *)self muninViewState];
    v17 = [v16 cameraFrame];
    [v15 setCameraFrame:v17];

    [v15 setLocationInfo:v13];
    muninViewState = self->_muninViewState;
    self->_muninViewState = v15;

    v19 = [(MKLookAroundView *)self delegate];
    [v19 lookAroundView:self didChangeLocationInfo:v13];
  }
}

- (void)_setInitialLocationInfo
{
  v3 = [(MKLookAroundView *)self muninViewState];
  v7 = [v3 cameraFrame];

  [v7 latitude];
  v5 = v4;
  [v7 longitude];
  [(MKLookAroundView *)self _updateLocationInfoForCoordinate:1 allowReverseGeocodeIfNeeded:v5, v6];
}

- (void)_updateCompassInsets
{
  p_compassInsets = &self->_compassInsets;
  [(NSLayoutConstraint *)self->_compassTopOrBottomConstraint setConstant:self->_compassInsets.top];
  v4 = [(MKLookAroundView *)self effectiveUserInterfaceLayoutDirection];
  v5 = 24;
  if (v4 == 1)
  {
    v5 = 8;
  }

  [(NSLayoutConstraint *)self->_compassTrailingConstraint setConstant:-*(&p_compassInsets->top + v5)];

  [(MKLookAroundView *)self setNeedsLayout];
}

- (void)_updateCompass
{
  [(VKMapView *)self->_lookAroundView heading];
  compassView = self->_compassView;

  [(MKCompassView *)compassView setMapHeading:?];
}

- (void)_updateCameraFrame
{
  v3 = [(MKLookAroundView *)self muninViewState];
  v15 = [v3 cameraFrame];

  v4 = objc_opt_new();
  [(VKMapView *)self->_lookAroundView centerCoordinate];
  [v4 setLatitude:?];
  [(VKMapView *)self->_lookAroundView centerCoordinate];
  [v4 setLongitude:v5];
  [(VKMapView *)self->_lookAroundView altitude];
  [v4 setAltitude:?];
  [(VKMapView *)self->_lookAroundView yaw];
  v7 = fmod(v6, 360.0);
  if (v7 < 0.0)
  {
    v7 = v7 + 360.0;
  }

  [v4 setYaw:v7];
  [(VKMapView *)self->_lookAroundView pitch];
  [v4 setPitch:?];
  [v4 setRoll:0.0];
  if (([v4 isEqual:v15] & 1) == 0)
  {
    v8 = objc_opt_new();
    [v8 setCameraFrame:v4];
    v9 = [(MKLookAroundView *)self muninViewState];
    v10 = [v9 locationInfo];
    [v8 setLocationInfo:v10];

    objc_storeStrong(&self->_muninViewState, v8);
    if (!self->_didChangeCameraFrame && !self->_didStartRegionChange)
    {
      self->_didChangeCameraFrame = 1;
      v11 = [(MKLookAroundView *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [(MKLookAroundView *)self delegate];
        [v13 lookAroundViewWillChangeRegion:self];
      }
    }

    v14 = [(MKLookAroundView *)self delegate];
    [v14 lookAroundView:self didChangeCameraFrame:v4];
  }
}

- (void)_reverseGeocodeCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  self->_lastCoordinate = a3;
  [(MKMapServiceTicket *)self->_revGeoTicket cancel];
  v6 = +[MKMapService sharedService];
  v7 = [v6 ticketForReverseGeocodeCoordinate:0 traits:{latitude, longitude}];
  revGeoTicket = self->_revGeoTicket;
  self->_revGeoTicket = v7;

  objc_initWeak(&location, self);
  v9 = self->_revGeoTicket;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__MKLookAroundView__reverseGeocodeCoordinate___block_invoke;
  v10[3] = &unk_1E76CA508;
  objc_copyWeak(&v11, &location);
  [(MKMapServiceTicket *)v9 submitWithHandler:v10 networkActivity:0];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __46__MKLookAroundView__reverseGeocodeCoordinate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v8 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_ERROR, "Error: ReverseGeocodeCoordinate ticket failed: %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

  if ([v5 count])
  {
    v9 = [v5 firstObject];
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = [v9 _geoMapItem];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__MKLookAroundView__reverseGeocodeCoordinate___block_invoke_2;
    v18[3] = &unk_1E76C6540;
    v12 = v10;
    v19 = v12;
    [v11 iterateGroundViewsWithBlock:v18];

    objc_initWeak(buf, WeakRetained);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__MKLookAroundView__reverseGeocodeCoordinate___block_invoke_3;
    v14[3] = &unk_1E76C64F0;
    objc_copyWeak(&v17, buf);
    v15 = v12;
    v16 = v9;
    v13 = v9;
    v8 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);

LABEL_6:
  }
}

void __46__MKLookAroundView__reverseGeocodeCoordinate___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, double a5, double a6)
{
  v10 = *(a1 + 32);
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = [[MKLookAroundGroundViewInfo alloc] initWithStartHeading:v13 endHeading:v12 localityName:v11 locationName:a5 secondaryLocationName:a6];

  [v10 addObject:v14];
}

void __46__MKLookAroundView__reverseGeocodeCoordinate___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if ([a1[4] count])
    {
      v3 = [a1[4] copy];
      v4 = *(v6 + 66);
      *(v6 + 66) = v3;

      objc_storeStrong(v6 + 76, a1[5]);
      [v6 _updateLocationInfo];
    }

    v5 = *(v6 + 69);
    *(v6 + 69) = 0;

    WeakRetained = v6;
  }
}

- (void)_resetViewState
{
  self->_hasValidViewState = 0;
  self->_lastCoordinate = MKCoordinateInvalid;
  lastGroundViews = self->_lastGroundViews;
  self->_lastGroundViews = 0;

  lastJunctionName = self->_lastJunctionName;
  self->_lastJunctionName = 0;

  mapItem = self->_mapItem;
  self->_mapItem = 0;

  revGeoMapItem = self->_revGeoMapItem;
  self->_revGeoMapItem = 0;

  [(MKMapServiceTicket *)self->_refineTicket cancel];
  refineTicket = self->_refineTicket;
  self->_refineTicket = 0;

  [(MKMapServiceTicket *)self->_revGeoTicket cancel];
  revGeoTicket = self->_revGeoTicket;
  self->_revGeoTicket = 0;

  self->_storefrontFullyDrawn = 0;
}

- (void)_refineLabelMarker:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 coordinate];
  v6 = v5;
  [v4 coordinate];
  v8 = [objc_alloc(MEMORY[0x1E69A21C0]) initWithMUID:objc_msgSend(v4 coordinate:{"businessID"), v6, v7}];
  v9 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:v8];
  [(MKMapServiceTicket *)self->_refineTicket cancel];
  v10 = +[MKMapService sharedService];
  v20[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v12 = [v10 ticketForIdentifiers:v11 traits:0];
  refineTicket = self->_refineTicket;
  self->_refineTicket = v12;

  objc_initWeak(&location, self);
  v14 = self->_refineTicket;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__MKLookAroundView__refineLabelMarker___block_invoke;
  v16[3] = &unk_1E76C6518;
  objc_copyWeak(&v18, &location);
  v15 = v4;
  v17 = v15;
  [(MKMapServiceTicket *)v14 submitWithHandler:v16 networkActivity:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __39__MKLookAroundView__refineLabelMarker___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_ERROR, "Error: Identifier refinement ticket failed: %@", buf, 0xCu);
    }
  }

  else if ([v5 count])
  {
    v9 = [v5 firstObject];
    objc_initWeak(buf, WeakRetained);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__MKLookAroundView__refineLabelMarker___block_invoke_2;
    block[3] = &unk_1E76C64F0;
    objc_copyWeak(&v14, buf);
    v12 = *(a1 + 32);
    v13 = v9;
    v10 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __39__MKLookAroundView__refineLabelMarker___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained selectedLabelMarker];
    v4 = *(a1 + 32);

    if (v3 == v4)
    {
      objc_storeStrong(v6 + 75, *(a1 + 40));
      [v6 _updateLocationInfo];
    }

    v5 = v6[68];
    v6[68] = 0;

    WeakRetained = v6;
  }
}

- (BOOL)_pointContainedInCompassView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  result = 0;
  if (![(MKLookAroundView *)self isCompassHidden])
  {
    [(MKCompassView *)self->_compassView frame];
    v9 = CGRectInset(v8, -9.0, -9.0);
    v7.x = x;
    v7.y = y;
    if (CGRectContainsPoint(v9, v7))
    {
      return 1;
    }
  }

  return result;
}

- (id)_locationInfoWithHeading:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_lastGroundViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isHeadingInRange:{a3, v10}])
        {
          v5 = [v8 locationInfo];
          goto LABEL_11;
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)mapLayerDidChangeSceneState:(id)a3 withState:(unint64_t)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = v6;
    if (a4)
    {
      if (!self->_didTriggerAdequatelyDrawnNotification)
      {
        [v6 postNotificationName:@"MKLookAroundViewDidBecomeAdequatelyDrawn" object:self];
        self->_didTriggerAdequatelyDrawnNotification = 1;
        v8 = [(UIImageView *)self->_transitionGridImageview superview];

        if (v8)
        {
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __58__MKLookAroundView_mapLayerDidChangeSceneState_withState___block_invoke;
          v21[3] = &unk_1E76CDB38;
          v21[4] = self;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __58__MKLookAroundView_mapLayerDidChangeSceneState_withState___block_invoke_2;
          v20[3] = &unk_1E76CA670;
          v20[4] = self;
          [MEMORY[0x1E69DD250] _mapkit_animateWithDuration:v21 animations:v20 completion:0.200000003];
        }
      }

      if (a4 - 1 < 2)
      {
        goto LABEL_9;
      }

      if (a4 == 3)
      {
LABEL_17:
        v13 = a4 - 3;
        if (self->_didChangeCameraFrame && !self->_didStartRegionChange)
        {
          self->_didChangeCameraFrame = 0;
          v14 = [(MKLookAroundView *)self delegate];
          v15 = objc_opt_respondsToSelector();

          if (v15)
          {
            v16 = [(MKLookAroundView *)self delegate];
            [v16 lookAroundViewDidChangeRegion:self];
          }
        }

        v22 = @"hasFailedTiles";
        v17 = [MEMORY[0x1E696AD98] numberWithBool:v13 < 2];
        v23[0] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        [v7 postNotificationName:@"MKLookAroundViewDidBecomeFullyDrawn" object:self userInfo:v18];

        goto LABEL_23;
      }

      if (a4 == 4)
      {
LABEL_9:
        if (!self->_hasValidViewState)
        {
          [(MKLookAroundView *)self mapLayerDidChangeVisibleRegion];
          self->_hasValidViewState = 1;
        }

        if ([(MKMapItem *)self->_mapItem _hasLookAroundStorefront])
        {
          self->_storefrontFullyDrawn = 1;
          if (self->_wantsStorefrontCloseUpView)
          {
            self->_wantsStorefrontCloseUpView = 0;
            [(MKLookAroundView *)self moveToCloseUpView];
          }
        }

        if (self->_triggerAction)
        {
          [(NSDate *)self->_startTime timeIntervalSinceNow];
          v10 = MEMORY[0x1E69A1598];
          triggerAction = self->_triggerAction;
          v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9 * -1000.0];
          LODWORD(v19) = 0;
          [v10 captureDisplayAnalyticWithDisplayActionTrigger:triggerAction requiredResourcesAvailable:0 totalTime:v12 requestedImageCount:0 renderedImageCount:0 movementDistance:0 meanImageSpacing:0 displayEvent:v19];

          self->_triggerAction = 0;
        }

        if (a4 - 2 > 2)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }
    }

    else
    {
      self->_didTriggerAdequatelyDrawnNotification = 0;
    }

LABEL_23:
  }
}

- (void)mapLayerWasUnableToAnimate
{
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    [(MKHapticEngine *)self->_hapticEngine playFailure];
    [(MKLookAroundBumpFlash *)self->_bumpFlashView flash];
    v3 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_ERROR, "MKLookAroundView - No path available to target point", v4, 2u);
    }
  }
}

- (void)mapLayerWillAnimateToLocation:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    [(MKLookAroundView *)self _updateLocationInfoForCoordinate:1 allowReverseGeocodeIfNeeded:var0, var1];
    v6 = [(MKLookAroundView *)self delegate];
    [v6 lookAroundViewWillChangeLocationInfo:self];
  }
}

- (void)mapLayer:(id)a3 nearestJunctionDidChange:(id)a4 currentRoad:(id)a5
{
  v34 = a4;
  v7 = a5;
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v8 = [v34 name];
    if (v8 && (v9 = v8, [v34 name], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v9, v11))
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = _MKLocalizedStringFromThisBundle(@"%@");
      v14 = [v34 name];
      v15 = [v12 stringWithFormat:v13, v14];
      lastJunctionName = self->_lastJunctionName;
      self->_lastJunctionName = v15;
    }

    else
    {
      v17 = [v7 roadName];
      if ([v17 length])
      {
        v18 = [v34 roads];
        v19 = [v18 count];

        if (v19 >= 2)
        {
          v13 = [v7 roadName];
          v20 = [v34 roads];
          v21 = [v20 objectAtIndexedSubscript:0];
          v22 = [v21 roadName];
          v23 = [v20 objectAtIndexedSubscript:{objc_msgSend(v22, "isEqualToString:", v13)}];
          v24 = [v23 roadName];

          if ([v24 length])
          {
            v25 = MEMORY[0x1E696AEC0];
            v26 = _MKLocalizedStringFromThisBundle(@"%@ & %@");
            v27 = [v25 stringWithFormat:v26, v13, v24];
            v28 = self->_lastJunctionName;
            self->_lastJunctionName = v27;
          }

          else
          {
            v26 = self->_lastJunctionName;
            self->_lastJunctionName = 0;
          }

          goto LABEL_13;
        }
      }

      else
      {
      }

      v13 = self->_lastJunctionName;
      self->_lastJunctionName = 0;
    }

LABEL_13:

    v29 = [(MKLookAroundView *)self muninViewState];
    v30 = [v29 cameraFrame];

    [v30 latitude];
    v32 = v31;
    [v30 longitude];
    [(MKLookAroundView *)self _updateLocationInfoForCoordinate:0 allowReverseGeocodeIfNeeded:v32, v33];
  }
}

- (void)mapLayerDidChangeRegionAnimated:(BOOL)a3
{
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    if (self->_didStartRegionChange)
    {
      self->_didStartRegionChange = 0;
      self->_didChangeCameraFrame = 0;
      v4 = [(MKLookAroundView *)self delegate];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v6 = [(MKLookAroundView *)self delegate];
        [v6 lookAroundViewDidChangeRegion:self];
      }
    }

    [(MKLookAroundView *)self _updateCameraFrame];
    [(MKLookAroundView *)self _updateCompass];
    v7 = [(MKLookAroundView *)self muninViewState];
    v11 = [v7 cameraFrame];

    [v11 latitude];
    v9 = v8;
    [v11 longitude];
    [(MKLookAroundView *)self _updateLocationInfoForCoordinate:1 allowReverseGeocodeIfNeeded:v9, v10];
  }
}

- (void)mapLayerWillChangeRegionAnimated:(BOOL)a3
{
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    if (!self->_didStartRegionChange && !self->_didChangeCameraFrame)
    {
      self->_didStartRegionChange = 1;
      v4 = [(MKLookAroundView *)self delegate];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v6 = [(MKLookAroundView *)self delegate];
        [v6 lookAroundViewWillChangeRegion:self];
      }
    }
  }
}

- (void)mapLayerDidChangeVisibleRegion
{
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    [(MKLookAroundView *)self _updateCameraFrame];
    [(MKLookAroundView *)self _updateCompass];
    v3 = [(MKLookAroundView *)self muninViewState];
    v7 = [v3 cameraFrame];

    [v7 latitude];
    v5 = v4;
    [v7 longitude];
    [(MKLookAroundView *)self _updateLocationInfoForCoordinate:0 allowReverseGeocodeIfNeeded:v5, v6];
  }
}

- (BOOL)lookAroundGestureControllerShouldReceive:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(MKLookAroundView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MKLookAroundView *)self delegate];
    v9 = [v8 lookAroundView:self shouldReceiveTouch:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)lookAroundGestureControllerDidPan:(id)a3
{
  v4 = [(MKLookAroundView *)self delegate];
  [v4 lookAroundViewDidPan:self];
}

- (void)lookAroundGestureController:(id)a3 didZoomWithDirection:(int64_t)a4 type:(int64_t)a5
{
  v8 = [(MKLookAroundView *)self delegate];
  [v8 lookAroundView:self didZoomWithDirection:a4 type:a5];
}

- (void)lookAroundGestureController:(id)a3 didTapAtPoint:(CGPoint)a4 areaAvailable:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v9 = [(MKLookAroundView *)self delegate];
  [v9 lookAroundView:self didTapAtPoint:v5 areaAvailable:{x, y}];
}

- (void)lookAroundGestureController:(id)a3 didTapLabelMarker:(id)a4
{
  v5 = a4;
  v6 = [(MKLookAroundView *)self delegate];
  [v6 lookAroundView:self didTapLabelMarker:v5];
}

- (void)lookAroundGestureControllerDidStopUserInteraction:(id)a3
{
  v4 = [(MKLookAroundView *)self delegate];
  [v4 lookAroundViewDidStopUserInteraction:self];
}

- (void)lookAroundGestureControllerDidStartUserInteraction:(id)a3
{
  v4 = [(MKLookAroundView *)self delegate];
  [v4 lookAroundViewDidStartUserInteraction:self];
}

- (id)labelMarkerForCustomFeatureAnnotation:(id)a3
{
  v4 = a3;
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v5 = [(VKMapView *)self->_lookAroundView labelMarkerForCustomFeatureAnnotation:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)recordTriggerAction:(int)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E695DF00] date];
    startTime = self->_startTime;
    self->_startTime = v5;

    self->_triggerAction = a3;
  }
}

- (void)deselectLabelMarker
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v3 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134217984;
      v8 = self;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "<MKLookAroundView: %p> -deselectLabelMarker", &v7, 0xCu);
    }

    mapItem = self->_mapItem;
    self->_mapItem = 0;

    v5 = [(VKMapView *)self->_lookAroundView selectedLabelMarker];
    if (v5)
    {
      [(VKMapView *)self->_lookAroundView deselectLabelMarker];
      v6 = [(MKLookAroundView *)self delegate];
      [v6 lookAroundView:self didDeselectLabelMarker:v5];
    }
  }
}

- (void)selectLabelMarker:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    if (v4)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v5 stringWithFormat:@"<%@: %p>", v7, v4];
    }

    else
    {
      v8 = @"nil";
    }

    v9 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v15 = self;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_DEBUG, "<MKLookAroundView: %p> -selectLabelMarker:%@", buf, 0x16u);
    }

    if (v4 && [v4 hasBusinessID])
    {
      mapItem = self->_mapItem;
      self->_mapItem = 0;

      [(MKLookAroundView *)self _refineLabelMarker:v4];
      objc_initWeak(buf, self);
      lookAroundView = self->_lookAroundView;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __38__MKLookAroundView_selectLabelMarker___block_invoke;
      v12[3] = &unk_1E76C66A0;
      objc_copyWeak(&v13, buf);
      [(VKMapView *)lookAroundView selectLabelMarker:v4 completion:v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }
  }
}

void __38__MKLookAroundView_selectLabelMarker___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (a2)
    {
      v4 = [WeakRetained selectedLabelMarker];
      if (v4)
      {
        v5 = [v6 delegate];
        [v5 lookAroundView:v6 didSelectLabelMarker:v4];
      }
    }

    else
    {
      [WeakRetained deselectLabelMarker];
    }

    WeakRetained = v6;
  }
}

- (void)moveToStandOffViewAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v5 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v8 = [v5 _storefrontPresentationInfo];

    v6 = [v8 standOffView];

    if (v6)
    {
      v7 = [v8 standOffView];
      [(MKLookAroundView *)self _moveToStorefrontView:v7 animated:v3 completionHandler:0];
    }
  }
}

- (void)moveToCloseUpViewAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v5 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v9 = [v5 _storefrontPresentationInfo];

    v6 = [v9 closeUpView];

    v7 = v9;
    if (v6)
    {
      if (!v3 || self->_storefrontFullyDrawn)
      {
        v8 = [v9 closeUpView];
        [(MKLookAroundView *)self _moveToStorefrontView:v8 animated:v3 completionHandler:0];

        v7 = v9;
      }

      else
      {
        self->_wantsStorefrontCloseUpView = 1;
      }
    }
  }
}

- (BOOL)_moveToStorefrontView:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    objc_storeStrong(&self->_requestedStorefrontView, a3);
    if (self->_moveToStorefrontViewInProgress)
    {
      self->_wantsStorefrontCloseUpView = 0;
      v11 = 1;
    }

    else
    {
      self->_moveToStorefrontViewInProgress = 1;
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 postNotificationName:@"MKLookAroundViewWillMoveToStorefront" object:self userInfo:0];
      objc_initWeak(&location, self);
      lookAroundView = self->_lookAroundView;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __69__MKLookAroundView__moveToStorefrontView_animated_completionHandler___block_invoke;
      v18[3] = &unk_1E76C64C8;
      objc_copyWeak(&v22, &location);
      v14 = v12;
      v19 = v14;
      v20 = v9;
      v23 = v6;
      v15 = v10;
      v21 = v15;
      v11 = [(VKMapView *)lookAroundView moveToStorefrontView:v20 animated:v6 completionHandler:v18];
      if ((v11 & 1) == 0)
      {
        self->_moveToStorefrontViewInProgress = 0;
        requestedStorefrontView = self->_requestedStorefrontView;
        self->_requestedStorefrontView = 0;

        if (v15)
        {
          (*(v15 + 2))(v15, 1);
        }
      }

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __69__MKLookAroundView__moveToStorefrontView_animated_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    *(WeakRetained + 595) = 0;
    v5 = *(a1 + 32);
    v11 = WeakRetained;
    v6 = objc_loadWeakRetained((a1 + 56));
    [v5 postNotificationName:@"MKLookAroundViewDidMoveToStorefront" object:v6 userInfo:0];

    v7 = v11[77];
    v8 = v7;
    if (!v7 || v7 == *(a1 + 40))
    {
      v9 = v11[77];
      v11[77] = 0;

      v10 = *(a1 + 48);
      if (v10)
      {
        (*(v10 + 16))(v10, a2);
      }
    }

    else
    {
      [v11 _moveToStorefrontView:v7 animated:*(a1 + 64) completionHandler:*(a1 + 48)];
    }

    WeakRetained = v11;
  }
}

- (void)jumpToStandOffView
{
  v3 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v10 = [v3 _storefrontPresentationInfo];

  v4 = [v10 standOffView];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v10 closeUpView];
  }

  v7 = v6;

  v8 = [v10 standOffView];
  if (v8)
  {
    v9 = [v10 closeUpView];
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    [(VKMapView *)self->_lookAroundView enterMuninForStorefrontView:v7 secondaryStorefrontView:v9];
    [(VKMapView *)self->_lookAroundView forceLayout];
  }
}

- (void)jumpToCloseUpView
{
  v3 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v7 = [v3 _storefrontPresentationInfo];

  v4 = [v7 closeUpView];

  if (v4)
  {
    lookAroundView = self->_lookAroundView;
    v6 = [v7 closeUpView];
    [(VKMapView *)lookAroundView enterMuninForStorefrontView:v6 secondaryStorefrontView:0];

    [(VKMapView *)self->_lookAroundView forceLayout];
  }
}

- (BOOL)tapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(MKLookAroundView *)self hasEnteredLookAround];
  if (v6)
  {
    mapItem = self->_mapItem;
    self->_mapItem = 0;

    if (([(VKMapView *)self->_lookAroundView tapAtPoint:x, y]& 1) != 0)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      [(MKHapticEngine *)self->_hapticEngine prepare];
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (BOOL)moveToMapItem:(id)a3 wantsCloseUpView:(BOOL)a4 orMuninMarker:(id)a5 withHeading:(double)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    if ([v12 _hasLookAroundStorefront])
    {
      [(MKLookAroundView *)self _resetViewState];
      v15 = [v12 _geoMapItem];
      v16 = [v15 _storefrontPresentationInfo];

      if (a4)
      {
        v17 = [v16 closeUpView];
      }

      else
      {
        v20 = [v16 standOffView];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = [v16 closeUpView];
        }

        v17 = v22;
      }

      self->_storefrontFullyDrawn = 0;
      self->_moveToStorefrontViewInProgress = 0;
      requestedStorefrontView = self->_requestedStorefrontView;
      self->_requestedStorefrontView = 0;

      self->_wantsStorefrontCloseUpView = 0;
      v18 = [(MKLookAroundView *)self _moveToStorefrontView:v17 animated:0 completionHandler:v14];
      if (v18)
      {
        v24 = v12;
      }

      else
      {
        v24 = 0;
      }

      objc_storeStrong(&self->_mapItem, v24);

      goto LABEL_21;
    }

    if (v13)
    {
      v18 = [(VKMapView *)self->_lookAroundView moveToMarker:v13 withHeading:0 animated:v14 completionHandler:a6];
      if (v18)
      {
        v19 = v12;
      }

      else
      {
        v19 = 0;
      }

      objc_storeStrong(&self->_mapItem, v19);
      goto LABEL_21;
    }
  }

  if (v14)
  {
    v14[2](v14, 0);
  }

  LOBYTE(v18) = 0;
LABEL_21:

  return v18;
}

- (BOOL)adequatelyDrawn
{
  v3 = [(MKLookAroundView *)self hasEnteredLookAround];
  if (v3)
  {
    LOBYTE(v3) = [(VKMapView *)self->_lookAroundView getSceneState]!= 0;
  }

  return v3;
}

- (VKLabelMarker)selectedLabelMarker
{
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v3 = [(VKMapView *)self->_lookAroundView selectedLabelMarker];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)openInMapsWithCompletionHandler:(id)a3
{
  v6 = a3;
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v4 = [(MKLookAroundView *)self fullSharingURL];
    v5 = +[MKSystemController sharedInstance];
    [v5 openURL:v4 completionHandler:v6];
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (VKMuninMarker)muninMarker
{
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v3 = [(VKMapView *)self->_lookAroundView currentMarker];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)cancelPendingMove
{
  v3 = [(MKLookAroundView *)self hasEnteredLookAround];
  if (v3)
  {
    lookAroundView = self->_lookAroundView;

    LOBYTE(v3) = [(VKMapView *)lookAroundView cancelPendingMove];
  }

  return v3;
}

- (void)reset
{
  [(MKLookAroundView *)self _resetViewState];
  [(VKMapView *)self->_lookAroundView setMapType:7];
  lookAroundView = self->_lookAroundView;

  [(VKMapView *)lookAroundView forceFrame];
}

- (void)_enterLookAroundForMuninViewState:(id)a3
{
  v4 = a3;
  [(MKLookAroundView *)self _resetViewState];
  self->_hasEnteredLookAround = 1;
  muninViewState = self->_muninViewState;
  self->_muninViewState = v4;
  v6 = v4;

  [(VKMapView *)self->_lookAroundView setMapType:10];
  v17 = [(GEOMuninViewState *)v6 cameraFrame];
  [v17 latitude];
  v8 = v7;
  [v17 longitude];
  v10 = v9;
  lookAroundView = self->_lookAroundView;
  [v17 altitude];
  v13 = v12;
  [v17 yaw];
  v15 = v14;
  [v17 pitch];
  [(VKMapView *)lookAroundView setCenterCoordinate:0 altitude:0 yaw:v8 pitch:v10 duration:v13 timingCurve:v15 completion:v16, 0.0];
}

- (void)_enterLookAroundForMuninMarker:(id)a3 withHeading:(double)a4
{
  v6 = a3;
  [(MKLookAroundView *)self _resetViewState];
  self->_hasEnteredLookAround = 1;
  [(VKMapView *)self->_lookAroundView enterMuninForMarker:v6 withHeading:a4];

  [(MKLookAroundView *)self _updateCameraFrame];

  [(MKLookAroundView *)self _setInitialLocationInfo];
}

- (void)_enterLookAroundForMapItem:(id)a3 wantsCloseUpView:(BOOL)a4 cameraFrameOverride:(id)a5
{
  v30 = a3;
  v9 = a5;
  if ([v30 _hasLookAroundStorefront])
  {
    [(MKLookAroundView *)self _resetViewState];
    v10 = [v30 _geoMapItem];
    v11 = [v10 _storefrontPresentationInfo];

    if (a4)
    {
      v12 = [v11 closeUpView];
    }

    else
    {
      v13 = [v11 standOffView];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [v11 closeUpView];
      }

      v12 = v15;
    }

    self->_hasEnteredLookAround = 1;
    self->_moveToStorefrontViewInProgress = 0;
    requestedStorefrontView = self->_requestedStorefrontView;
    self->_requestedStorefrontView = 0;

    self->_wantsStorefrontCloseUpView = 0;
    [(VKMapView *)self->_lookAroundView cancelPendingMove];
    lookAroundView = self->_lookAroundView;
    if (v9)
    {
      [(VKMapView *)lookAroundView setMapType:10];
      v18 = v9;
      [v18 latitude];
      v20 = v19;
      [v18 longitude];
      v22 = v21;
      v23 = self->_lookAroundView;
      [v18 altitude];
      v25 = v24;
      [v18 yaw];
      v27 = v26;
      [v18 pitch];
      v29 = v28;

      [(VKMapView *)v23 setCenterCoordinate:0 altitude:0 yaw:v20 pitch:v22 duration:v25 timingCurve:v27 completion:v29, 0.0];
    }

    else
    {
      [(VKMapView *)lookAroundView enterMuninForStorefrontView:v12 secondaryStorefrontView:0];
      [(VKMapView *)self->_lookAroundView forceFrame];
    }

    objc_storeStrong(&self->_mapItem, a3);
    [(MKLookAroundView *)self _updateCameraFrame];
    [(MKLookAroundView *)self _updateCompass];
    [(MKLookAroundView *)self _setInitialLocationInfo];
  }
}

- (void)enterLookAroundWithEntryPoint:(id)a3
{
  v8 = a3;
  -[MKLookAroundView recordTriggerAction:](self, "recordTriggerAction:", [v8 triggerAction]);
  v4 = [v8 type];
  if (v4 == 2)
  {
    v5 = [v8 muninViewState];
    [(MKLookAroundView *)self _enterLookAroundForMuninViewState:v5];
  }

  else if (v4 == 1)
  {
    v5 = [v8 muninMarker];
    [v8 heading];
    [(MKLookAroundView *)self _enterLookAroundForMuninMarker:v5 withHeading:?];
  }

  else
  {
    if (v4)
    {
      goto LABEL_8;
    }

    v5 = [v8 mapItem];
    v6 = [v8 wantsCloseUpView];
    v7 = [v8 cameraFrameOverride];
    [(MKLookAroundView *)self _enterLookAroundForMapItem:v5 wantsCloseUpView:v6 cameraFrameOverride:v7];
  }

LABEL_8:
}

- (NSURL)fullSharingURL
{
  mapItem = self->_mapItem;
  if (mapItem || (mapItem = self->_revGeoMapItem) != 0)
  {
    v4 = [(MKLookAroundView *)self muninViewState];
    v5 = [(MKMapItem *)mapItem _fullSharingURLWithLookAroundViewState:v4];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E6985C40]);
    [(MKLookAroundView *)self centerCoordinate];
    v9 = v8;
    [(MKLookAroundView *)self centerCoordinate];
    v4 = [v7 initWithLatitude:v9 longitude:?];
    v10 = [[MKMapItem alloc] initWithLocation:v4 address:0];
    v11 = [(MKLookAroundView *)self muninViewState];
    v5 = [(MKMapItem *)v10 _fullSharingURLWithLookAroundViewState:v11];
  }

  return v5;
}

- (NSDate)collectionDate
{
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v3 = [(VKMapView *)self->_lookAroundView currentMarker];
    v4 = [v3 collectionDate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPointOfInterestFilter:(id)a3
{
  v4 = a3;
  if (self->_pointOfInterestFilter != v4)
  {
    v9 = v4;
    v5 = [(MKPointOfInterestFilter *)v4 copy];
    pointOfInterestFilter = self->_pointOfInterestFilter;
    self->_pointOfInterestFilter = v5;

    if (v9)
    {
      v7 = [(MKPointOfInterestFilter *)v9 _excludesAllCategories]^ 1;
    }

    else
    {
      v7 = 1;
    }

    [(VKMapView *)self->_lookAroundView setShowsPointLabels:v7];
    v8 = [(MKPointOfInterestFilter *)v9 _geoPOICategoryFilter];
    [(VKMapView *)self->_lookAroundView setPointsOfInterestFilter:v8];

    v4 = v9;
  }
}

- (void)setPresentationYaw:(double)a3 pitch:(double)a4 animated:(BOOL)a5
{
  v5 = a5;
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    [(VKMapView *)self->_lookAroundView centerCoordinate];
    v10 = v9;
    [(VKMapView *)self->_lookAroundView centerCoordinate];
    v12 = v11;
    [(VKMapView *)self->_lookAroundView altitude];
    v14 = v13;
    v15 = fmod(a3, 360.0);
    if (v15 >= 0.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 + 360.0;
    }

    if (v5)
    {
      v17 = 0.25;
    }

    else
    {
      v17 = 0.0;
    }

    lookAroundView = self->_lookAroundView;

    [(VKMapView *)lookAroundView setCenterCoordinate:0 altitude:0 yaw:v10 pitch:v12 duration:v14 timingCurve:v16 completion:a4, v17];
  }
}

- (void)setPresentationYaw:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(VKMapView *)self->_lookAroundView pitch];

  [(MKLookAroundView *)self setPresentationYaw:v4 pitch:a3 animated:v7];
}

- (void)setPresentationYaw:(double)a3
{
  [(VKMapView *)self->_lookAroundView pitch];

  [(MKLookAroundView *)self setPresentationYaw:0 pitch:a3 animated:v5];
}

- (double)presentationYaw
{
  if (![(MKLookAroundView *)self hasEnteredLookAround])
  {
    return 0.0;
  }

  lookAroundView = self->_lookAroundView;

  [(VKMapView *)lookAroundView yaw];
  return result;
}

- (void)setCenterCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    [(VKMapView *)self->_lookAroundView altitude];
    v7 = v6;
    [(VKMapView *)self->_lookAroundView pitch];
    v9 = v8;
    [(VKMapView *)self->_lookAroundView presentationYaw];
    lookAroundView = self->_lookAroundView;

    [(VKMapView *)lookAroundView setCenterCoordinate:0 altitude:0 yaw:latitude pitch:longitude duration:v7 timingCurve:v10 completion:v9, 0.0];
  }
}

- (CLLocationCoordinate2D)centerCoordinate
{
  if ([(MKLookAroundView *)self hasEnteredLookAround])
  {
    v3 = [(MKLookAroundView *)self muninViewState];
    v4 = [v3 cameraFrame];

    [v4 latitude];
    v6 = v5;
    [v4 longitude];
    v8 = CLLocationCoordinate2DMake(v6, v7);
    latitude = v8.latitude;
    longitude = v8.longitude;
  }

  else
  {
    latitude = *MEMORY[0x1E6985CC0];
    longitude = *(MEMORY[0x1E6985CC0] + 8);
  }

  v11 = latitude;
  v12 = longitude;
  result.longitude = v12;
  result.latitude = v11;
  return result;
}

- (void)setShowsPointLabels:(BOOL)a3
{
  v3 = a3;
  [(VKMapView *)self->_lookAroundView setShowsPointLabels:?];
  if (v3)
  {
    pointOfInterestFilter = self->_pointOfInterestFilter;
    self->_pointOfInterestFilter = 0;

    lookAroundView = self->_lookAroundView;

    [(VKMapView *)lookAroundView setPointsOfInterestFilter:0];
  }

  else
  {
    v7 = +[MKPointOfInterestFilter filterExcludingAllCategories];
    v8 = self->_pointOfInterestFilter;
    self->_pointOfInterestFilter = v7;

    v9 = [(MKPointOfInterestFilter *)self->_pointOfInterestFilter _geoPOICategoryFilter];
    [(VKMapView *)self->_lookAroundView setPointsOfInterestFilter:v9];
  }
}

- (void)setCompassHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = self->_compassView;
  v8 = v7;
  if (a3 || !self->_changingViewSize)
  {
    self->_wantsCompassShown = 0;
    if ([(MKCompassView *)v7 isHidden])
    {
      [(MKCompassView *)v8 setHidden:0];
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__MKLookAroundView_setCompassHidden_animated___block_invoke;
    v18[3] = &unk_1E76CA760;
    v9 = v8;
    v19 = v9;
    v20 = a3;
    v10 = MEMORY[0x1A58E9F30](v18);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __46__MKLookAroundView_setCompassHidden_animated___block_invoke_2;
    v15 = &unk_1E76CCF40;
    v16 = v9;
    v17 = a3;
    v11 = MEMORY[0x1A58E9F30](&v12);
    if (v4)
    {
      [MEMORY[0x1E69DD250] _mapkit_animateWithDuration:v10 animations:v11 completion:{0.25, v12, v13, v14, v15}];
    }

    else
    {
      v10[2](v10);
      v11[2](v11, 1);
    }
  }

  else
  {
    self->_wantsCompassShown = 1;
  }
}

uint64_t __46__MKLookAroundView_setCompassHidden_animated___block_invoke(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

uint64_t __46__MKLookAroundView_setCompassHidden_animated___block_invoke_2(uint64_t a1)
{
  v2 = 1.0;
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  [*(a1 + 32) setAlpha:v2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);

  return [v4 setHidden:v3];
}

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = MKLookAroundView;
  [(MKLookAroundView *)&v5 willMoveToWindow:?];
  [(VKMapView *)self->_lookAroundView enableViewDataLoading:a3 != 0];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MKLookAroundView *)self bounds];
  v16.origin.x = v8;
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, v16))
  {
    if (width == self->_oldRect.size.height && height == self->_oldRect.size.width || ![MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters] || (-[MKLookAroundView bounds](self, "bounds"), CGRectIsEmpty(v14)))
    {
      v15.origin.x = 0.0;
      v15.origin.y = 0.0;
      v15.size.width = width;
      v15.size.height = height;
      if (!CGRectIsEmpty(v15))
      {
        self->_changingViewSize = 1;
        [(_MKLookAroundLayerHostingView *)self->_hostView setFrame:0.0, 0.0, width, height];
        [(UIView *)self->_overlayView setFrame:0.0, 0.0, width, height];
        [(VKMapView *)self->_lookAroundView forceFrame];
        self->_changingViewSize = 0;
      }
    }

    else
    {
      [(MKLookAroundView *)self _animateCanvasForBounds:0.0, 0.0, width, height];
    }

    self->_oldRect.origin.x = 0.0;
    self->_oldRect.origin.y = 0.0;
    self->_oldRect.size.width = width;
    self->_oldRect.size.height = height;
  }

  v12.receiver = self;
  v12.super_class = MKLookAroundView;
  [(MKLookAroundView *)&v12 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MKLookAroundView *)self bounds];
  v15.origin.x = v8;
  v15.origin.y = v9;
  v15.size.width = v10;
  v15.size.height = v11;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, v15))
  {
    if (width == self->_oldRect.size.height && height == self->_oldRect.size.width || ![MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters] || (-[MKLookAroundView bounds](self, "bounds"), CGRectIsEmpty(v14)))
    {
      self->_changingViewSize = 1;
      [(_MKLookAroundLayerHostingView *)self->_hostView setFrame:x, y, width, height];
      [(UIView *)self->_overlayView setFrame:x, y, width, height];
      if (self->_changingViewSize)
      {
        [(VKMapView *)self->_lookAroundView forceFrame];
      }

      self->_changingViewSize = 0;
    }

    else
    {
      [(MKLookAroundView *)self _animateCanvasForBounds:x, y, width, height];
    }

    self->_oldRect.origin.x = x;
    self->_oldRect.origin.y = y;
    self->_oldRect.size.width = width;
    self->_oldRect.size.height = height;
  }

  v12.receiver = self;
  v12.super_class = MKLookAroundView;
  [(MKLookAroundView *)&v12 setBounds:x, y, width, height];
}

- (void)_animateCanvasForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MKLookAroundView *)self bounds];
  v12 = v11;
  v13 = v10;
  if (fabs(v11) < 0.000001 || fabs(v10) < 0.000001 || fabs(width) < 0.000001 || fabs(height) < 0.000001)
  {
    v22 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v22, OS_LOG_TYPE_ERROR, "Cannot animate to/from zero-sized bounds", buf, 2u);
    }

    [(_MKLookAroundLayerHostingView *)self->_hostView setFrame:x, y, width, height];
    [(_MKLookAroundLayerHostingView *)self->_hostView setAlpha:1.0];
    [(UIView *)self->_overlayView setFrame:x, y, width, height];
  }

  else
  {
    v23 = v9;
    v24 = v8;
    [(MKLookAroundView *)self frame];
    if (width <= v14)
    {
      [(MKLookAroundView *)self frame];
    }

    v25 = y;
    [(MKLookAroundView *)self frame];
    if (height <= v15)
    {
      [(MKLookAroundView *)self frame];
    }

    v16 = v12 / v13;
    [(MKLookAroundView *)self bounds];
    [(MKLookAroundView *)self bounds];
    MidY = CGRectGetMidY(v35);
    if (width > v12)
    {
      v18 = width / height < 1.0;
    }

    else
    {
      [(MKLookAroundView *)self bounds];
      [(MKLookAroundView *)self bounds];
      CGRectGetMidY(v37);
      v18 = 1;
    }

    if (v18)
    {
      v19 = height;
    }

    else
    {
      v19 = width;
    }

    v20 = [(MKLookAroundView *)self adequatelyDrawn];
    v21 = [(MKLookAroundView *)self hasEnteredLookAround];
    self->_changingViewSize = 1;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __44__MKLookAroundView__animateCanvasForBounds___block_invoke;
    v28[3] = &unk_1E76C64A0;
    v29 = v20;
    v28[4] = self;
    v30 = width > v12;
    *&v28[5] = v19;
    *&v28[6] = x;
    *&v28[7] = v25;
    *&v28[8] = width;
    v31 = v21;
    v32 = width / height >= 1.0;
    *&v28[9] = height;
    v28[10] = v24;
    v28[11] = v23;
    *&v28[12] = v12;
    *&v28[13] = v13;
    [MEMORY[0x1E69DD250] _mapkit_performWithoutAnimation:v28];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __44__MKLookAroundView__animateCanvasForBounds___block_invoke_2;
    v27[3] = &unk_1E76CCE90;
    v27[4] = self;
    *&v27[5] = (width - v19) * 0.5;
    *&v27[6] = (height - v19 / v16) * 0.5;
    *&v27[7] = v19;
    *&v27[8] = v19 / v16;
    *&v27[9] = x;
    *&v27[10] = v25;
    *&v27[11] = width;
    *&v27[12] = height;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __44__MKLookAroundView__animateCanvasForBounds___block_invoke_3;
    v26[3] = &unk_1E76CA670;
    v26[4] = self;
    [MEMORY[0x1E69DD250] _mapkit_animateWithDuration:v27 animations:v26 completion:0.0];
  }
}

void __44__MKLookAroundView__animateCanvasForBounds___block_invoke(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    v12 = [*(a1 + 32) _imageFromLookAroundView];
  }

  else
  {
    v12 = 0;
  }

  if (*(a1 + 113) == 1)
  {
    v2 = *(a1 + 40);
    v3 = 0.0;
    v4 = v2;
    v5 = 0.0;
  }

  else
  {
    v5 = *(a1 + 48);
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v2 = *(a1 + 72);
  }

  [*(*(a1 + 32) + 408) setFrame:{v5, v3, v4, v2}];
  [*(*(a1 + 32) + 448) setFrame:{v5, v3, v4, v2}];
  v6 = *(*(a1 + 32) + 504);
  if (*(a1 + 114) == 1)
  {
    [v6 forceCameraUpdateForFrameResize];
  }

  else
  {
    [v6 forceLayout];
  }

  v7 = [*(a1 + 32) _imageFromLookAroundView];
  if (*(a1 + 113) == 1)
  {
    [*(*(a1 + 32) + 408) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    [*(*(a1 + 32) + 448) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    [*(*(a1 + 32) + 504) forceCameraUpdateForFrameResize];
  }

  v8 = 424;
  [*(*(a1 + 32) + 424) removeFromSuperview];
  [*(*(a1 + 32) + 432) removeFromSuperview];
  [*(*(a1 + 32) + 440) removeFromSuperview];
  if (*(a1 + 112) == 1)
  {
    [*(a1 + 32) _mapkit_insertSubview:*(*(a1 + 32) + 432) aboveSubview:*(*(a1 + 32) + 408)];
    [*(*(a1 + 32) + 432) setImage:v7];
    if (*(a1 + 115))
    {
      v9 = 2;
    }

    else if (*(a1 + 113))
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    [*(*(a1 + 32) + 432) _mapkit_setImageContentMode:v9];
    [*(*(a1 + 32) + 432) setFrame:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
    [*(*(a1 + 32) + 432) setAlpha:0.25];
    [*(a1 + 32) _mapkit_insertSubview:*(*(a1 + 32) + 424) aboveSubview:*(*(a1 + 32) + 432)];
    [*(*(a1 + 32) + 424) setImage:v12];
    if (*(a1 + 115))
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    [*(*(a1 + 32) + 424) _mapkit_setImageContentMode:v11];
    v10 = 1.0;
  }

  else
  {
    if (*(a1 + 114))
    {
      goto LABEL_25;
    }

    [*(a1 + 32) _mapkit_insertSubview:*(*(a1 + 32) + 440) aboveSubview:*(*(a1 + 32) + 408)];
    [*(*(a1 + 32) + 440) setImage:v7];
    [*(*(a1 + 32) + 440) _mapkit_setImageContentMode:2];
    v10 = 0.800000012;
    v8 = 440;
  }

  [*(*(a1 + 32) + v8) setFrame:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  [*(*(a1 + 32) + v8) setAlpha:v10];
LABEL_25:
  [*(*(a1 + 32) + 408) setAlpha:0.0];
}

uint64_t __44__MKLookAroundView__animateCanvasForBounds___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  [*(*(a1 + 32) + 432) setAlpha:1.0];
  [*(*(a1 + 32) + 424) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 432) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(*(a1 + 32) + 440);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);

  return [v4 setFrame:{v2, v3, v5, v6}];
}

uint64_t __44__MKLookAroundView__animateCanvasForBounds___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__MKLookAroundView__animateCanvasForBounds___block_invoke_4;
  v3[3] = &unk_1E76CDB38;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__MKLookAroundView__animateCanvasForBounds___block_invoke_5;
  v2[3] = &unk_1E76CA670;
  v2[4] = v4;
  return [MEMORY[0x1E69DD250] _mapkit_animateWithDuration:v3 animations:v2 completion:0.200000003];
}

uint64_t __44__MKLookAroundView__animateCanvasForBounds___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 432);

  return [v2 setAlpha:1.0];
}

_BYTE *__44__MKLookAroundView__animateCanvasForBounds___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) bounds];
  [*(*(a1 + 32) + 408) setFrame:?];
  [*(*(a1 + 32) + 408) setAlpha:1.0];
  [*(a1 + 32) bounds];
  [*(*(a1 + 32) + 448) setFrame:?];
  *(*(a1 + 32) + 416) = 0;
  [*(*(a1 + 32) + 424) removeFromSuperview];
  [*(*(a1 + 32) + 432) removeFromSuperview];
  result = *(a1 + 32);
  if (result[417] == 1)
  {

    return [result setCompassHidden:0 animated:1];
  }

  return result;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MKLookAroundView;
  [(MKLookAroundView *)&v5 setUserInteractionEnabled:?];
  [(MKLookAroundGestureController *)self->_gestureController setNavigatingEnabled:v3];
  [(MKLookAroundGestureController *)self->_gestureController setPanningEnabled:v3];
  [(MKLookAroundGestureController *)self->_gestureController setZoomingEnabled:v3];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(MKLookAroundView *)self _pointContainedInCompassView:x, y])
  {
    v8 = self->_compassView;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MKLookAroundView;
    v8 = [(MKLookAroundView *)&v11 hitTest:v7 withEvent:x, y];
  }

  v9 = v8;

  return v9;
}

- (MKLookAroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = MKLookAroundView;
  v7 = [(MKLookAroundView *)&v11 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(MKLookAroundView *)v7 _maps_initCommon];
    [(VKMapView *)v8->_lookAroundView setFrame:x, y, width, height];
    v9 = v8;
  }

  return v8;
}

- (void)dealloc
{
  [(VKMapView *)self->_lookAroundView setMapDelegate:0];
  [(VKMapView *)self->_lookAroundView setCameraDelegate:0];
  v3.receiver = self;
  v3.super_class = MKLookAroundView;
  [(MKLookAroundView *)&v3 dealloc];
}

- (MKLookAroundView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MKLookAroundView;
  v3 = [(MKLookAroundView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(MKLookAroundView *)v3 _maps_initCommon];
    v5 = v4;
  }

  return v4;
}

- (void)_maps_initCommon
{
  v69[2] = *MEMORY[0x1E69E9840];
  v3 = MKGetMKLookAroundLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LookAroundViewInitialization", &unk_1A30FEA0E, buf, 2u);
  }

  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 nativeScale];
  v6 = v5;

  [(MKLookAroundView *)self setOpaque:1];
  [(MKLookAroundView *)self setBackgroundColor:0];
  [(MKLookAroundView *)self setInsetsLayoutMarginsFromSafeArea:0];
  [(MKLookAroundView *)self setAccessibilityIgnoresInvertColors:1];
  [(MKLookAroundView *)self setAccessibilityIdentifier:@"LookAroundView"];
  [(MKLookAroundView *)self setNavigatingEnabled:1];
  [(MKLookAroundView *)self setPanningEnabled:1];
  [(MKLookAroundView *)self setZoomingEnabled:1];
  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  transitionStartImageview = self->_transitionStartImageview;
  self->_transitionStartImageview = v7;

  v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  transitionEndImageview = self->_transitionEndImageview;
  self->_transitionEndImageview = v9;

  v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  transitionGridImageview = self->_transitionGridImageview;
  self->_transitionGridImageview = v11;

  v13 = [_MKLookAroundLayerHostingView alloc];
  [(MKLookAroundView *)self bounds];
  v14 = [(_MKLookAroundLayerHostingView *)v13 initWithFrame:?];
  hostView = self->_hostView;
  self->_hostView = v14;

  [(_MKLookAroundLayerHostingView *)self->_hostView setUserInteractionEnabled:0];
  [(MKLookAroundView *)self addSubview:self->_hostView];
  v16 = objc_alloc(MEMORY[0x1E69DD250]);
  [(MKLookAroundView *)self bounds];
  v17 = [v16 initWithFrame:?];
  overlayView = self->_overlayView;
  self->_overlayView = v17;

  [(UIView *)self->_overlayView setAccessibilityIdentifier:@"LookAroundOverlayView"];
  [(MKLookAroundView *)self addSubview:self->_overlayView];
  v19 = [MKCompassView alloc];
  v20 = *MEMORY[0x1E695F058];
  v21 = *(MEMORY[0x1E695F058] + 8);
  v22 = *(MEMORY[0x1E695F058] + 16);
  v23 = *(MEMORY[0x1E695F058] + 24);
  v24 = [(MKCompassView *)v19 initWithFrame:*MEMORY[0x1E695F058], v21, v22, v23];
  compassView = self->_compassView;
  self->_compassView = v24;

  [(MKCompassView *)self->_compassView setCompassViewSize:1 style:0];
  [(MKCompassView *)self->_compassView setTag:1002];
  [(MKCompassView *)self->_compassView _setTouchInsets:-9.0, -9.0, -9.0, -9.0];
  [(MKCompassView *)self->_compassView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKCompassView *)self->_compassView setAccessibilityIdentifier:@"LookAroundCompassView"];
  [(UIView *)self->_overlayView addSubview:self->_compassView];
  v26 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleCompassSelect];
  compassSelectGestureRecognizer = self->_compassSelectGestureRecognizer;
  self->_compassSelectGestureRecognizer = v26;

  [(MKCompassView *)self->_compassView addGestureRecognizer:self->_compassSelectGestureRecognizer];
  v28 = [(MKCompassView *)self->_compassView topAnchor];
  v29 = [(UIView *)self->_overlayView safeAreaLayoutGuide];
  v30 = [v29 topAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  compassTopOrBottomConstraint = self->_compassTopOrBottomConstraint;
  self->_compassTopOrBottomConstraint = v31;

  v33 = [(MKCompassView *)self->_compassView trailingAnchor];
  v34 = [(UIView *)self->_overlayView safeAreaLayoutGuide];
  v35 = [v34 trailingAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  compassTrailingConstraint = self->_compassTrailingConstraint;
  self->_compassTrailingConstraint = v36;

  v38 = MEMORY[0x1E696ACD8];
  v39 = self->_compassTrailingConstraint;
  v69[0] = self->_compassTopOrBottomConstraint;
  v69[1] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
  [v38 activateConstraints:v40];

  v41 = [[MKLookAroundGestureController alloc] initWithLookAroundView:self];
  gestureController = self->_gestureController;
  self->_gestureController = v41;

  [(MKLookAroundGestureController *)self->_gestureController setDelegate:self];
  v66 = [MEMORY[0x1E69DF458] descriptorWithShouldRasterize:0 inBackground:0 contentScale:0 auditToken:1 mapViewPurpose:0 allowsAntialiasing:v6];
  v43 = [objc_alloc(MEMORY[0x1E69DF450]) initWithDescriptor:v66];
  lookAroundView = self->_lookAroundView;
  self->_lookAroundView = v43;

  [(VKMapView *)self->_lookAroundView setMapDelegate:self];
  [(VKMapView *)self->_lookAroundView setRendersInBackground:0];
  [(VKMapView *)self->_lookAroundView setMapType:7];
  v45 = +[MKSystemController sharedInstance];
  LODWORD(v40) = [v45 reduceMotionEnabled];

  if (v40)
  {
    [(VKMapView *)self->_lookAroundView setVirtualParallaxEnabled:0];
  }

  v46 = [(_MKLookAroundLayerHostingView *)self->_hostView layer];
  [v46 insertSublayer:self->_lookAroundView atIndex:0];

  [(_MKLookAroundLayerHostingView *)self->_hostView setLookAroundView:self->_lookAroundView];
  [(VKMapView *)self->_lookAroundView heading];
  [(MKCompassView *)self->_compassView setMapHeading:?];
  [(VKMapView *)self->_lookAroundView setCameraDelegate:self];
  v47 = objc_alloc_init(MKHapticEngine);
  hapticEngine = self->_hapticEngine;
  self->_hapticEngine = v47;

  v49 = [[MKLookAroundBumpFlash alloc] initWithFrame:v20, v21, v22, v23];
  bumpFlashView = self->_bumpFlashView;
  self->_bumpFlashView = v49;

  [(MKLookAroundBumpFlash *)self->_bumpFlashView setAccessibilityIdentifier:@"LookAroundBumpFlash"];
  [(MKLookAroundBumpFlash *)self->_bumpFlashView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKLookAroundBumpFlash *)self->_bumpFlashView setUserInteractionEnabled:0];
  [(MKLookAroundView *)self addSubview:self->_bumpFlashView];
  v62 = MEMORY[0x1E696ACD8];
  v65 = [(MKLookAroundBumpFlash *)self->_bumpFlashView topAnchor];
  v64 = [(MKLookAroundView *)self topAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v68[0] = v63;
  v51 = [(MKLookAroundBumpFlash *)self->_bumpFlashView leftAnchor];
  v52 = [(MKLookAroundView *)self leftAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];
  v68[1] = v53;
  v54 = [(MKLookAroundBumpFlash *)self->_bumpFlashView bottomAnchor];
  v55 = [(MKLookAroundView *)self bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  v68[2] = v56;
  v57 = [(MKLookAroundBumpFlash *)self->_bumpFlashView rightAnchor];
  v58 = [(MKLookAroundView *)self rightAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];
  v68[3] = v59;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
  [v62 activateConstraints:v60];

  v61 = MKGetMKLookAroundLog();
  if (os_signpost_enabled(v61))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v61, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "LookAroundViewInitialization", &unk_1A30FEA0E, buf, 2u);
  }
}

- (id)_mapkit_locationSubtitle
{
  v2 = [(MKLookAroundView *)self muninViewState];
  v3 = [v2 locationInfo];

  v4 = [v3 secondaryLocationName];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 secondaryLocationName];
  }

  else
  {
    v6 = &stru_1F15B23C0;
  }

  v7 = [v3 localityName];
  v8 = [v7 length];

  if (v8)
  {
    if ([(__CFString *)v6 length])
    {
      v9 = [(__CFString *)v6 stringByAppendingString:@", "];

      v6 = v9;
    }

    v10 = [v3 localityName];
    v11 = [(__CFString *)v6 stringByAppendingString:v10];

    v6 = v11;
  }

  return v6;
}

- (id)_mapkit_locationTitle
{
  v2 = [(MKLookAroundView *)self muninViewState];
  v3 = [v2 locationInfo];

  v4 = [v3 locationName];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 locationName];
  }

  else
  {
    v6 = &stru_1F15B23C0;
  }

  return v6;
}

@end