@interface VKMapViewTourGuideManager
+ (id)_descriptionForDetailLevel;
+ (void)decreaseDetailLevel;
+ (void)increaseDetailLevel;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_center;
- (BOOL)_elementIntersectsElement:(id)element point:(CGPoint)point radius:(double)radius;
- (BOOL)_elementValidForCurrentDetailLevel:(id)level;
- (BOOL)_elementsInvalidForCenter:(id)center;
- (BOOL)_setZoomLevelForUserSpeed:(double)speed;
- (VKMapView)mapView;
- (VKMapViewTourGuideManager)initWithMapView:(id)view elementManager:(id)manager;
- (double)_normalizedThetaFromTheta:(double)result;
- (double)_yaw;
- (id)_descriptionForOrientation:(int64_t)orientation;
- (id)_elements;
- (id)_tourLocationForUserPoint:(CGPoint)point radius:(double)radius ignoreLocation:(id)location;
- (id)_tourPOIForUserPoint:(CGPoint)point radius:(double)radius futureUserTheta:(double)theta thetaFromCourse:(double *)course shouldFilterIfBehind:(BOOL)behind;
- (id)tourStatusForMapView:(id)view;
- (int64_t)_orientation;
- (unint64_t)_tourPOISideFromTheta:(double)theta;
- (void)_queueTourStatusAnnouncement:(id)announcement;
- (void)_startObservingUpdates;
- (void)_stopObservingUpdates;
- (void)_updateElements;
- (void)_updateElementsComplete:(id)complete;
- (void)_updateTourStatusWithCenter:(id)center location:(id)location orientation:(int64_t)orientation;
- (void)dealloc;
- (void)locationManagerUpdatedHeading:(id)heading;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)startTour;
- (void)stopTour;
@end

@implementation VKMapViewTourGuideManager

- (BOOL)_elementsInvalidForCenter:(id)center
{
  v3 = [(VKMapViewTourGuideManager *)self mapView:center.var0];
  [v3 bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v8 = CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (v8 >= CGRectGetHeight(v11))
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    CGRectGetHeight(v13);
  }

  else
  {
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    CGRectGetWidth(v12);
  }

  return 1;
}

- (BOOL)_elementValidForCurrentDetailLevel:(id)level
{
  levelCopy = level;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = levelCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = -[VKMapViewTourGuideManager detailLevel](self, "detailLevel") > 0 || (-[VKMapViewTourGuideManager detailLevel](self, "detailLevel") & 0x8000000000000000) == 0 && ([v6 isPOI] & 1) != 0 || -[VKMapViewTourGuideManager detailLevel](self, "detailLevel") >= -1 && (objc_msgSend(v6, "isRoad") & 1) != 0;

  return v7;
}

- (BOOL)_elementIntersectsElement:(id)element point:(CGPoint)point radius:(double)radius
{
  y = point.y;
  x = point.x;
  v33 = *MEMORY[0x29EDCA608];
  elementCopy = element;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = elementCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  hitTestPaths = [v10 hitTestPaths];

  if (!hitTestPaths)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    paths = [v10 paths];
    v14 = [paths countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v14)
    {
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(paths);
          }

          CopyByStrokingPath = CGPathCreateCopyByStrokingPath(*(*(&v27 + 1) + 8 * i), 0, radius, kCGLineCapRound, kCGLineJoinRound, 0.0);
          [array addObject:CopyByStrokingPath];
          if (CopyByStrokingPath)
          {
            CFRelease(CopyByStrokingPath);
          }
        }

        v14 = [paths countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v14);
    }

    [v10 setHitTestPaths:array];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  hitTestPaths2 = [v10 hitTestPaths];
  v19 = [hitTestPaths2 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v19)
  {
    v20 = *v24;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(hitTestPaths2);
        }

        v34.x = x;
        v34.y = y;
        if (CGPathContainsPoint(*(*(&v23 + 1) + 8 * j), 0, v34, 0))
        {
          LOBYTE(v19) = 1;
          goto LABEL_25;
        }
      }

      v19 = [hitTestPaths2 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  return v19;
}

- (id)_tourPOIForUserPoint:(CGPoint)point radius:(double)radius futureUserTheta:(double)theta thetaFromCourse:(double *)course shouldFilterIfBehind:(BOOL)behind
{
  y = point.y;
  x = point.x;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0x7FEFFFFFFFFFFFFFLL;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  _elements = [(VKMapViewTourGuideManager *)self _elements];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __110__VKMapViewTourGuideManager__tourPOIForUserPoint_radius_futureUserTheta_thetaFromCourse_shouldFilterIfBehind___block_invoke;
  v17[3] = &unk_29F318958;
  *&v17[8] = x;
  *&v17[9] = y;
  v17[4] = self;
  v17[5] = v29;
  *&v17[10] = radius;
  *&v17[11] = theta;
  behindCopy = behind;
  v17[6] = &v23;
  v17[7] = &v19;
  [_elements enumerateObjectsUsingBlock:v17];

  if (course)
  {
    *course = v20[3];
  }

  v15 = v24[5];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(v29, 8);

  return v15;
}

void __110__VKMapViewTourGuideManager__tourPOIForUserPoint_radius_futureUserTheta_thetaFromCourse_shouldFilterIfBehind___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 32) _elementValidForCurrentDetailLevel:v17])
  {
    v4 = v17;
    [v4 location];
    VKLocationCoordinate2DForVKPoint();
    v6 = v5;
    v8 = v7;
    v9 = [v4 accessibilityContainer];
    [v9 accessibilityConvertCoordinateToWindow:{v6, v8}];
    v11 = v10;
    v13 = v12;

    v19.x = v11;
    v19.y = v13;
    DistanceBetweenPoints = AXVKMathGetDistanceBetweenPoints(*(a1 + 64), v19);
    if (DistanceBetweenPoints < *(*(*(a1 + 40) + 8) + 24) && DistanceBetweenPoints < *(a1 + 80))
    {
      [*(a1 + 32) _normalizedThetaFromTheta:{(atan2(v13 - *(a1 + 72), v11 - *(a1 + 64)) + 1.57079633 - *(a1 + 88))}];
      v16 = v15;
      if (*(a1 + 96) != 1 || fabs(v15) <= 1.3962634)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
        *(*(*(a1 + 40) + 8) + 24) = DistanceBetweenPoints;
        *(*(*(a1 + 56) + 8) + 24) = v16;
      }
    }
  }
}

- (id)_tourLocationForUserPoint:(CGPoint)point radius:(double)radius ignoreLocation:(id)location
{
  y = point.y;
  x = point.x;
  locationCopy = location;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  _elements = [(VKMapViewTourGuideManager *)self _elements];
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __77__VKMapViewTourGuideManager__tourLocationForUserPoint_radius_ignoreLocation___block_invoke;
  v14[3] = &unk_29F318980;
  v11 = locationCopy;
  v15 = v11;
  selfCopy = self;
  v18 = x;
  v19 = y;
  radiusCopy = radius;
  v17 = &v21;
  [_elements enumerateObjectsUsingBlock:v14];

  v12 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v12;
}

void __77__VKMapViewTourGuideManager__tourLocationForUserPoint_radius_ignoreLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  v12 = v7;
  if (!*(a1 + 32) || (v9 = [v7 isEqual:?], v8 = v12, (v9 & 1) == 0))
  {
    v10 = [*(a1 + 40) _elementIntersectsElement:v8 point:*(a1 + 56) radius:{*(a1 + 64), *(a1 + 72)}];
    v8 = v12;
    if (v10)
    {
      v11 = [*(a1 + 40) _elementValidForCurrentDetailLevel:v12];
      v8 = v12;
      if (v11)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
        v8 = v12;
        *a4 = 1;
      }
    }
  }
}

- (void)_queueTourStatusAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  if (announcementCopy)
  {
    lastTourStatusAnnouncement = [(VKMapViewTourGuideManager *)self lastTourStatusAnnouncement];
    v5 = [lastTourStatusAnnouncement isEqualToString:announcementCopy];

    if ((v5 & 1) == 0)
    {
      v6 = +[VKMapViewOutputManager sharedOutputManager];
      [v6 clearOutputQueue];

      v7 = +[VKMapViewOutputManager sharedOutputManager];
      [v7 queueOutput:announcementCopy];
    }
  }

  [(VKMapViewTourGuideManager *)self setLastTourStatusAnnouncement:announcementCopy];
}

- (BOOL)_setZoomLevelForUserSpeed:(double)speed
{
  mapView = [(VKMapViewTourGuideManager *)self mapView];
  [mapView accessibilityZoomLevel];
  v6 = v5;

  v7 = time(0);
  if (v7 > [(VKMapViewTourGuideManager *)self secondsSinceZoomRequest])
  {
    v8 = floorf(v6);
    if (v8 <= 16.0)
    {
      if (v8 >= 16.0)
      {
LABEL_7:
        AXPerformBlockOnMainThreadAfterDelay();
        return fabsf(v6 + -16.0) < 0.1;
      }

      mapView2 = [(VKMapViewTourGuideManager *)self mapView];
      mapView3 = [(VKMapViewTourGuideManager *)self mapView];
      [mapView3 bounds];
      MidX = CGRectGetMidX(v17);
      mapView4 = [(VKMapViewTourGuideManager *)self mapView];
      [mapView4 bounds];
      [mapView2 accessibilityZoomInAtPoint:{MidX, CGRectGetMidY(v18)}];
    }

    else
    {
      mapView2 = [(VKMapViewTourGuideManager *)self mapView];
      mapView3 = [(VKMapViewTourGuideManager *)self mapView];
      [mapView3 bounds];
      v11 = CGRectGetMidX(v15);
      mapView4 = [(VKMapViewTourGuideManager *)self mapView];
      [mapView4 bounds];
      [mapView2 accessibilityZoomOutAtPoint:{v11, CGRectGetMidY(v16)}];
    }

    [(VKMapViewTourGuideManager *)self setSecondsSinceZoomRequest:time(0)];
    goto LABEL_7;
  }

  return fabsf(v6 + -16.0) < 0.1;
}

void __55__VKMapViewTourGuideManager__setZoomLevelForUserSpeed___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) mapView];
  [v3 accessibilityZoomLevel];
  v5 = v4;

  if (v2 != v5)
  {
    v6 = [MEMORY[0x29EDBD6B0] sharedInstance];
    v7 = [v6 ignoreLogging];

    if ((v7 & 1) == 0)
    {
      v8 = [MEMORY[0x29EDBD6B0] identifier];
      v9 = AXLoggerForFacility();

      v10 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = AXColorizeFormatLog();
        v12 = [*(a1 + 32) mapView];
        [v12 accessibilityZoomLevel];
        v15 = v13;
        v16 = *(a1 + 40);
        v14 = _AXStringForArgs();

        if (os_log_type_enabled(v9, v10))
        {
          *buf = 138543362;
          v18 = v14;
          _os_log_impl(&dword_29C6F1000, v9, v10, "%{public}@", buf, 0xCu);
        }
      }
    }

    [*(a1 + 32) _updateElements];
  }
}

- (double)_normalizedThetaFromTheta:(double)result
{
    ;
  }

    ;
  }

  return result;
}

- (unint64_t)_tourPOISideFromTheta:(double)theta
{
  if (theta <= 0.523598776)
  {
    return theta < -0.523598776;
  }

  else
  {
    return 2;
  }
}

- (void)_updateTourStatusWithCenter:(id)center location:(id)location orientation:(int64_t)orientation
{
  var1 = center.var1;
  var0 = center.var0;
  v64 = *MEMORY[0x29EDCA608];
  locationCopy = location;
  mapView = [(VKMapViewTourGuideManager *)self mapView];
  accessibilityContainer = [mapView accessibilityContainer];
  [mapView convertCoordinate:mapView toPointToLayer:{var0, var1}];
  UIAccessibilityPointForPoint();
  v59 = v10;
  v60 = v9;

  [(VKMapViewTourGuideManager *)self _yaw];
  v12 = v11;
  [locationCopy speed];
  v58 = v13;
  lastCurrentTourLocation = [(VKMapViewTourGuideManager *)self _tourLocationForUserPoint:0 radius:v60 ignoreLocation:v59, 15.0];
  if (!lastCurrentTourLocation)
  {
    lastCurrentTourLocation = [(VKMapViewTourGuideManager *)self _tourLocationForUserPoint:0 radius:v60 ignoreLocation:v59, 30.0];
    if (!lastCurrentTourLocation)
    {
      lastCurrentTourLocation = [(VKMapViewTourGuideManager *)self lastCurrentTourLocation];
    }
  }

  if (v58 > 0.35)
  {
    [locationCopy course];
    v18 = (v19 - v12) * 3.14159265 / 180.0;
    v61 = 0.0;
    v16 = *MEMORY[0x29EDB90B8];
    v17 = *(MEMORY[0x29EDB90B8] + 8);
    v15 = [(VKMapViewTourGuideManager *)self _tourPOIForUserPoint:&v61 radius:1 futureUserTheta:v60 thetaFromCourse:v59 shouldFilterIfBehind:50.0, v18];
  }

  else
  {
    v15 = 0;
    v61 = 0.0;
    v16 = *MEMORY[0x29EDB90B8];
    v17 = *(MEMORY[0x29EDB90B8] + 8);
    v18 = 0.0;
  }

  v20 = v18;
  v21 = __sincosf_stret(v20);
  v22 = 0;
  sinval = v21.__sinval;
  for (i = 15; i <= 0x41; i += 5)
  {
    if (v22 && v15)
    {
      break;
    }

    v25 = (i + 5) * v21.__cosval;
    v26 = v59 - v25;
    if (!v22)
    {
      [(VKMapViewTourGuideManager *)self _tourLocationForUserPoint:lastCurrentTourLocation radius:v60 + (i + 5) * sinval ignoreLocation:v59 - v25, (i + 5) / 3.0];
      v16 = v60 + (i + 5) * sinval;
      v22 = v17 = v26;
    }

    if (v58 <= 0.35 && v15 == 0)
    {
      v15 = [(VKMapViewTourGuideManager *)self _tourPOIForUserPoint:&v61 radius:0 futureUserTheta:v60 + (i + 5) * sinval thetaFromCourse:v26 shouldFilterIfBehind:(i + 5) / 3.0, v18];
    }
  }

  v28 = v58;
  if (v58 > 0.35)
  {
    v29 = [(VKMapViewTourGuideManager *)self _tourPOISideFromTheta:v61];
  }

  else
  {
    v29 = 0;
  }

  v30 = +[VKMapDebugView sharedInstance];
  if (v30 || [MEMORY[0x29EDBD6B0] willLogDebug])
  {
    v31 = MEMORY[0x29EDBA0F8];
    [locationCopy coordinate];
    v33 = v32;
    [locationCopy coordinate];
    v35 = v34;
    [locationCopy speed];
    v37 = v36;
    [locationCopy course];
    v39 = v38;
    accessibilityLabel = [lastCurrentTourLocation accessibilityLabel];
    accessibilityLabel2 = [v22 accessibilityLabel];
    accessibilityLabel3 = [v15 accessibilityLabel];
    v43 = accessibilityLabel3;
    v44 = @"Right";
    if (v29 == 1)
    {
      v44 = @"Left";
    }

    if (!v29)
    {
      v44 = @"None";
    }

    v45 = [v31 stringWithFormat:@"Location: %f, %f\nSpeed: %f\nCourse: %f\nYaw: %f\nFutureUserTheta: %f\nCurrent: %@\nFuture: %@\nPOI: %@\nPOIFromCourse: %f\nSide: %@", v33, v35, v37, v39, *&v12, v18 * 180.0 / 3.14159265, accessibilityLabel, accessibilityLabel2, accessibilityLabel3, v61 * 180.0 / 3.14159265, v44];

    [v30 setDebugMessage:v45];
    mEMORY[0x29EDBD6B0] = [MEMORY[0x29EDBD6B0] sharedInstance];
    ignoreLogging = [mEMORY[0x29EDBD6B0] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x29EDBD6B0] identifier];
      v49 = AXLoggerForFacility();

      v50 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v49, v50))
      {
        AXColorizeFormatLog();
        v57 = v54 = v45;
        v51 = _AXStringForArgs();
        if (os_log_type_enabled(v49, v50))
        {
          *buf = 138543362;
          v63 = v51;
          _os_log_impl(&dword_29C6F1000, v49, v50, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  [v30 setCurrentPoint:v60 frontierPoint:{v59, v16, v17, v54}];
  tourStatus = [(VKMapViewTourGuideManager *)self tourStatus];
  [tourStatus updateTourStatusWithCurrentLocation:lastCurrentTourLocation currentPoint:v22 futureLocation:v15 futurePoint:v29 tourPOI:v58 <= 0.35 tourPOISide:v60 isStationary:{v59, v16, v17}];
  [locationCopy speed];
  if ([(VKMapViewTourGuideManager *)self _setZoomLevelForUserSpeed:?])
  {
    shortTourStatusAnnouncement = [tourStatus shortTourStatusAnnouncement];
    [(VKMapViewTourGuideManager *)self _queueTourStatusAnnouncement:shortTourStatusAnnouncement];
  }

  [(VKMapViewTourGuideManager *)self setLastCurrentTourLocation:lastCurrentTourLocation];
}

- (void)_startObservingUpdates
{
  mEMORY[0x29EDBB270] = [MEMORY[0x29EDBB270] sharedLocationManager];
  [mEMORY[0x29EDBB270] startHeadingUpdateWithObserver:self];
  [mEMORY[0x29EDBB270] startLocationUpdateWithObserver:self];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  elementManager = [(VKMapViewTourGuideManager *)self elementManager];
  [defaultCenter addObserver:self selector:sel__updateElementsComplete_ name:@"UpdateAccessibilityElementsComplete" object:elementManager];
}

- (void)_stopObservingUpdates
{
  mEMORY[0x29EDBB270] = [MEMORY[0x29EDBB270] sharedLocationManager];
  [mEMORY[0x29EDBB270] stopHeadingUpdateWithObserver:self];
  [mEMORY[0x29EDBB270] stopLocationUpdateWithObserver:self];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  elementManager = [(VKMapViewTourGuideManager *)self elementManager];
  [defaultCenter removeObserver:self name:@"UpdateAccessibilityElementsComplete" object:elementManager];
}

- (id)_elements
{
  elementManager = [(VKMapViewTourGuideManager *)self elementManager];
  if (objc_opt_respondsToSelector())
  {
    mapView = [(VKMapViewTourGuideManager *)self mapView];
    v5 = [elementManager accessibilityElementsForMapView:mapView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_center
{
  elementManager = [(VKMapViewTourGuideManager *)self elementManager];
  if (objc_opt_respondsToSelector())
  {
    mapView = [(VKMapViewTourGuideManager *)self mapView];
    [elementManager centerForMapView:mapView];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    VKLocationCoordinate2DMake();
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (int64_t)_orientation
{
  elementManager = [(VKMapViewTourGuideManager *)self elementManager];
  if (objc_opt_respondsToSelector())
  {
    mapView = [(VKMapViewTourGuideManager *)self mapView];
    v5 = [elementManager orientationForMapView:mapView];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (double)_yaw
{
  elementManager = [(VKMapViewTourGuideManager *)self elementManager];
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    mapView = [(VKMapViewTourGuideManager *)self mapView];
    [elementManager yawForMapView:mapView];
    v4 = v6;
  }

  return v4;
}

- (void)_updateElements
{
  elementManager = [(VKMapViewTourGuideManager *)self elementManager];
  if (objc_opt_respondsToSelector())
  {
    mapView = [(VKMapViewTourGuideManager *)self mapView];
    [elementManager updateAccessibilityElementsForMapView:mapView];
  }
}

- (id)tourStatusForMapView:(id)view
{
  viewCopy = view;
  mapView = [(VKMapViewTourGuideManager *)self mapView];

  if (mapView == viewCopy)
  {
    tourStatus = [(VKMapViewTourGuideManager *)self tourStatus];
    longTourStatusAnnouncement = [tourStatus longTourStatusAnnouncement];
  }

  else
  {
    _AXLogWithFacility();
    longTourStatusAnnouncement = 0;
  }

  return longTourStatusAnnouncement;
}

- (void)dealloc
{
  [(VKMapViewTourGuideManager *)self _stopObservingUpdates];
  objc_storeWeak(&self->_mapView, 0);
  self->_running = 0;
  v3.receiver = self;
  v3.super_class = VKMapViewTourGuideManager;
  [(VKMapViewTourGuideManager *)&v3 dealloc];
}

- (VKMapViewTourGuideManager)initWithMapView:(id)view elementManager:(id)manager
{
  viewCopy = view;
  managerCopy = manager;
  v8 = managerCopy;
  if (!viewCopy || !managerCopy)
  {
    _AXAssert();
  }

  v14.receiver = self;
  v14.super_class = VKMapViewTourGuideManager;
  v9 = [(VKMapViewTourGuideManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_elementManager, manager);
    v11 = objc_alloc_init(VKMapViewTourStatus);
    tourStatus = v10->_tourStatus;
    v10->_tourStatus = v11;

    objc_storeWeak(&v10->_mapView, viewCopy);
  }

  return v10;
}

- (void)_updateElementsComplete:(id)complete
{
  v11 = +[VKMapDebugView sharedInstance];
  [v11 removePointsAndPaths];
  _elements = [(VKMapViewTourGuideManager *)self _elements];
  v5 = objc_opt_class();
  v6 = AXVKAccessibilityPaths(_elements, v5, 25);
  [v11 addBuildingPaths:v6];

  v7 = objc_opt_class();
  v8 = AXVKAccessibilityPaths(_elements, v7, 0);
  [v11 addPOIPaths:v8];

  v9 = objc_opt_class();
  v10 = AXVKAccessibilityPaths(_elements, v9, 1);
  [v11 addRoadPaths:v10];
}

- (id)_descriptionForOrientation:(int64_t)orientation
{
  if (orientation > 4)
  {
    return 0;
  }

  else
  {
    return off_29F3189C8[orientation];
  }
}

- (void)locationManagerUpdatedLocation:(id)location
{
  v27 = *MEMORY[0x29EDCA608];
  locationCopy = location;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    if (CFAbsoluteTimeGetCurrent() - *&[VKMapViewTourGuideManager locationManagerUpdatedLocation:]::LastProcessTime >= 0.5)
    {
      [VKMapViewTourGuideManager locationManagerUpdatedLocation:]::LastProcessTime = CFAbsoluteTimeGetCurrent();
      mapView = [(VKMapViewTourGuideManager *)self mapView];
      [mapView accessibilityCenter];
      v7 = v6;
      v9 = v8;

      if ([(VKMapViewTourGuideManager *)self _elementsInvalidForCenter:v7, v9])
      {
        processInfo = [MEMORY[0x29EDBA0B0] processInfo];
        [processInfo systemUptime];
        v13 = v12;

        v10 = v13 - *&[VKMapViewTourGuideManager locationManagerUpdatedLocation:]::lastUpdate;
        if (v13 - *&[VKMapViewTourGuideManager locationManagerUpdatedLocation:]::lastUpdate > 2.0)
        {
          [VKMapViewTourGuideManager locationManagerUpdatedLocation:]::lastUpdate = *&v13;
          mEMORY[0x29EDBD6B0] = [MEMORY[0x29EDBD6B0] sharedInstance];
          ignoreLogging = [mEMORY[0x29EDBD6B0] ignoreLogging];

          if ((ignoreLogging & 1) == 0)
          {
            identifier = [MEMORY[0x29EDBD6B0] identifier];
            v17 = AXLoggerForFacility();

            v18 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v17, v18))
            {
              v19 = AXColorizeFormatLog();
              v20 = _AXStringForArgs();
              if (os_log_type_enabled(v17, v18))
              {
                *buf = 138543362;
                v26 = v20;
                _os_log_impl(&dword_29C6F1000, v17, v18, "%{public}@", buf, 0xCu);
              }
            }
          }

          [(VKMapViewTourGuideManager *)self _updateElements];
        }
      }

      mapView2 = [(VKMapViewTourGuideManager *)self mapView];
      accessibilityOrientation = [mapView2 accessibilityOrientation];

      if ([(VKMapViewTourGuideManager *)self _elementsInvalidForOrientation:accessibilityOrientation])
      {
        AXPerformBlockOnMainThreadAfterDelay();
      }

      lastLocation = [locationCopy lastLocation];
      v24 = [lastLocation copy];

      [(VKMapViewTourGuideManager *)self _updateTourStatusWithCenter:v24 location:accessibilityOrientation orientation:v7, v9];
    }
  }

  else
  {
    [(VKMapViewTourGuideManager *)self stopTour];
    _AXLogWithFacility();
  }
}

uint64_t __60__VKMapViewTourGuideManager_locationManagerUpdatedLocation___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBD6B0] sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x29EDBD6B0] identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v10 = [*(a1 + 32) _descriptionForOrientation:*(a1 + 40)];
      v8 = _AXStringForArgs();

      if (os_log_type_enabled(v5, v6))
      {
        *buf = 138543362;
        v12 = v8;
        _os_log_impl(&dword_29C6F1000, v5, v6, "%{public}@", buf, 0xCu);
      }
    }
  }

  return [*(a1 + 32) _updateElements];
}

- (void)locationManagerUpdatedHeading:(id)heading
{
  headingCopy = heading;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    mapView = [(VKMapViewTourGuideManager *)self mapView];
    accessibilityOrientation = [mapView accessibilityOrientation];

    if ([(VKMapViewTourGuideManager *)self _elementsInvalidForOrientation:accessibilityOrientation])
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }

    mapView2 = [(VKMapViewTourGuideManager *)self mapView];
    [mapView2 accessibilityCenter];
    v9 = v8;
    v11 = v10;

    lastLocation = [headingCopy lastLocation];
    v13 = [lastLocation copy];

    [(VKMapViewTourGuideManager *)self _updateTourStatusWithCenter:v13 location:accessibilityOrientation orientation:v9, v11];
  }

  else
  {
    [(VKMapViewTourGuideManager *)self stopTour];
    _AXLogWithFacility();
  }
}

uint64_t __59__VKMapViewTourGuideManager_locationManagerUpdatedHeading___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBD6B0] sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x29EDBD6B0] identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v10 = [*(a1 + 32) _descriptionForOrientation:*(a1 + 40)];
      v8 = _AXStringForArgs();

      if (os_log_type_enabled(v5, v6))
      {
        *buf = 138543362;
        v12 = v8;
        _os_log_impl(&dword_29C6F1000, v5, v6, "%{public}@", buf, 0xCu);
      }
    }
  }

  return [*(a1 + 32) _updateElements];
}

- (void)startTour
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = +[VKMapDebugView sharedInstance];
    [v3 removePointsAndPaths];

    [(VKMapViewTourGuideManager *)self setRunning:1];
    [(VKMapViewTourGuideManager *)self setSecondsSinceZoomRequest:time(0)];
    [(VKMapViewTourGuideManager *)self setLastCurrentTourLocation:0];
    [(VKMapViewTourGuideManager *)self _startObservingUpdates];
    mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
    [mEMORY[0x29EDC7938] setIdleTimerDisabled:1];
    [mEMORY[0x29EDC7938] _accessibilitySetIsTourGuideRunning:1];
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    _AXLogWithFacility();
  }
}

uint64_t __38__VKMapViewTourGuideManager_startTour__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBD6B0] sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x29EDBD6B0] identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_29C6F1000, v5, v6, "%{public}@", &v10, 0xCu);
      }
    }
  }

  return [*(a1 + 32) _updateElements];
}

- (void)stopTour
{
  v3 = +[VKMapDebugView sharedInstance];
  [v3 removePointsAndPaths];

  [(VKMapViewTourGuideManager *)self setRunning:0];
  [(VKMapViewTourGuideManager *)self _stopObservingUpdates];
  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
  [mEMORY[0x29EDC7938] setIdleTimerDisabled:0];
  [mEMORY[0x29EDC7938] _accessibilitySetIsTourGuideRunning:0];
}

+ (id)_descriptionForDetailLevel
{
  if ((__tourGuideDetailLevel + 1) <= 2)
  {
    self = AXVectorKitLocString(off_29F3189F0[__tourGuideDetailLevel + 1]);
  }

  return self;
}

+ (void)increaseDetailLevel
{
  if (__tourGuideDetailLevel <= 0)
  {
    ++__tourGuideDetailLevel;
  }

  v2 = *MEMORY[0x29EDC7EA8];
  _descriptionForDetailLevel = [self _descriptionForDetailLevel];
  UIAccessibilityPostNotification(v2, _descriptionForDetailLevel);
}

+ (void)decreaseDetailLevel
{
  if (([self detailLevel] & 0x8000000000000000) == 0)
  {
    --__tourGuideDetailLevel;
  }

  v3 = *MEMORY[0x29EDC7EA8];
  _descriptionForDetailLevel = [self _descriptionForDetailLevel];
  UIAccessibilityPostNotification(v3, _descriptionForDetailLevel);
}

- (VKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

@end