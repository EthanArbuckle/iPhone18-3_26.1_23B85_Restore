@interface VKMapViewTourStatus
- (CGPoint)currentPoint;
- (CGPoint)futurePoint;
- (id)_stringForSide:(unint64_t)side;
- (id)_tourStatusAnnouncementWithLength:(unint64_t)length;
- (void)updateTourStatusWithCurrentLocation:(id)location currentPoint:(CGPoint)point futureLocation:(id)futureLocation futurePoint:(CGPoint)futurePoint tourPOI:(id)i tourPOISide:(unint64_t)side isStationary:(BOOL)stationary;
@end

@implementation VKMapViewTourStatus

- (id)_tourStatusAnnouncementWithLength:(unint64_t)length
{
  currentLocation = [(VKMapViewTourStatus *)self currentLocation];
  lastCurrentLocation = [(VKMapViewTourStatus *)self lastCurrentLocation];
  futureLocation = [(VKMapViewTourStatus *)self futureLocation];
  lastFutureLocation = [(VKMapViewTourStatus *)self lastFutureLocation];
  futurePOI = [(VKMapViewTourStatus *)self futurePOI];
  lastFuturePOI = [(VKMapViewTourStatus *)self lastFuturePOI];
  isStationary = [(VKMapViewTourStatus *)self isStationary];
  if (!futureLocation)
  {
    goto LABEL_20;
  }

  currentLocale = [MEMORY[0x29EDB8DE0] currentLocale];
  _navigation_distanceUsesMetricSystem = [currentLocale _navigation_distanceUsesMetricSystem];

  accessibilityContainer = [futureLocation accessibilityContainer];
  [(VKMapViewTourStatus *)self currentPoint];
  v10 = v9;
  v12 = v11;
  [(VKMapViewTourStatus *)self futurePoint];
  [accessibilityContainer accessibilityRealDistanceBetweenPoint:v10 screenPoint2:{v12, v13, v14}];
  v16 = v15;
  v17 = v15;

  if (_navigation_distanceUsesMetricSystem)
  {
    if (v16 > 15.0 || ([(VKMapViewTourStatus *)self lastFutureDistance], v18 <= 15.0))
    {
      if (v16 <= 30.0)
      {
        [(VKMapViewTourStatus *)self lastFutureDistance];
        v20 = v19 <= 30.0;
        goto LABEL_13;
      }

LABEL_11:
      v22 = 0;
      goto LABEL_16;
    }

LABEL_9:
    v22 = 1;
    goto LABEL_16;
  }

  if (v17 <= 30.479999)
  {
    [(VKMapViewTourStatus *)self lastFutureDistance];
    if (v21 > 30.479999)
    {
      goto LABEL_9;
    }
  }

  if (v17 > 15.2399995)
  {
    goto LABEL_11;
  }

  [(VKMapViewTourStatus *)self lastFutureDistance];
  v20 = v23 <= 15.2399995;
LABEL_13:
  v22 = !v20;
LABEL_16:
  if (v22 & 1 | (([futureLocation isEqual:lastFutureLocation] & 1) == 0))
  {
    if (length == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      trueLabel = [futureLocation trueLabel];
    }

    else
    {
      trueLabel = [futureLocation accessibilityLabel];
    }

    v26 = trueLabel;
    [(VKMapViewTourStatus *)self setLastFutureDistance:v17];
    v27 = @"APPROACHING_LOCATION_METERS";
    if (isStationary)
    {
      v27 = @"FACING_LOCATION_METERS";
    }

    v28 = v27;
    if ((_navigation_distanceUsesMetricSystem & 1) == 0)
    {
      v29 = @"APPROACHING_LOCATION_FEET";
      if (isStationary)
      {
        v29 = @"FACING_LOCATION_FEET";
      }

      v30 = v29;

      v28 = v30;
    }

    v31 = MEMORY[0x29EDBA0F8];
    v32 = AXVectorKitLocString(v28);
    v33 = AXFormatInteger();
    v25 = [v31 localizedStringWithFormat:v32, v26, v33];

    if (!futurePOI)
    {
      goto LABEL_57;
    }

    goto LABEL_30;
  }

LABEL_20:
  v25 = 0;
  if (!futurePOI)
  {
    goto LABEL_57;
  }

LABEL_30:
  currentLocale2 = [MEMORY[0x29EDB8DE0] currentLocale];
  _navigation_distanceUsesMetricSystem2 = [currentLocale2 _navigation_distanceUsesMetricSystem];

  [futurePOI location];
  VKLocationCoordinate2DForVKPoint();
  v37 = v36;
  v39 = v38;
  accessibilityContainer2 = [futurePOI accessibilityContainer];
  [accessibilityContainer2 accessibilityConvertCoordinateToWindow:{v37, v39}];

  accessibilityContainer3 = [futurePOI accessibilityContainer];
  [(VKMapViewTourStatus *)self currentPoint];
  [accessibilityContainer3 accessibilityRealDistanceBetweenPoint:? screenPoint2:?];
  v43 = v42;

  if (v43 <= 15.0)
  {
    v44 = _navigation_distanceUsesMetricSystem2;
  }

  else
  {
    v44 = 0;
  }

  if (v44 == 1)
  {
    [(VKMapViewTourStatus *)self lastPOIDistance];
    v46 = v45 > 15.0;
  }

  else
  {
    v46 = 0;
  }

  if ([futurePOI isEqual:lastFuturePOI])
  {
    if ([(VKMapViewTourStatus *)self futurePOISide])
    {
      lastFuturePOISide = [(VKMapViewTourStatus *)self lastFuturePOISide];
      if (lastFuturePOISide == [(VKMapViewTourStatus *)self futurePOISide]&& !v46)
      {
        goto LABEL_57;
      }
    }

    else if (!v46)
    {
      goto LABEL_57;
    }
  }

  if (length == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    trueLabel2 = [futurePOI trueLabel];
  }

  else
  {
    trueLabel2 = [futurePOI accessibilityLabel];
  }

  v49 = trueLabel2;
  [(VKMapViewTourStatus *)self setLastPOIDistance:v43];
  v50 = @"APPROACHING_LOCATION_METERS";
  if (isStationary)
  {
    v50 = @"FACING_LOCATION_METERS";
  }

  v51 = v50;
  if ((_navigation_distanceUsesMetricSystem2 & 1) == 0)
  {
    v52 = @"APPROACHING_LOCATION_FEET";
    if (isStationary)
    {
      v52 = @"FACING_LOCATION_FEET";
    }

    v53 = v52;

    v51 = v53;
  }

  v54 = MEMORY[0x29EDBA0F8];
  v55 = AXVectorKitLocString(v51);
  v56 = AXFormatInteger();
  v67 = [v54 localizedStringWithFormat:v55, v49, v56];
  v57 = __UIAXStringForVariables();

  if ([(VKMapViewTourStatus *)self futurePOISide:v67])
  {
    if ([(VKMapViewTourStatus *)self futurePOISide]== 1)
    {
      AXVectorKitLocString(@"APPROACHING_LEFT");
    }

    else
    {
      AXVectorKitLocString(@"APPROACHING_RIGHT");
    }
    v66 = ;
    v69 = @"__AXStringForVariablesSentinel";
    v58 = __UIAXStringForVariables();

    v57 = v58;
  }

  v25 = v57;
LABEL_57:
  if (currentLocation && ([currentLocation isEqual:lastCurrentLocation] & 1) == 0)
  {
    if (length == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      trueLabel3 = [currentLocation trueLabel];
    }

    else
    {
      trueLabel3 = [currentLocation accessibilityLabel];
    }

    v60 = trueLabel3;
    v61 = MEMORY[0x29EDBA0F8];
    if ([currentLocation isRoad])
    {
      v62 = @"ON_ROAD";
    }

    else
    {
      v62 = @"AT_POI";
    }

    v63 = AXVectorKitLocString(v62);
    v68 = [v61 localizedStringWithFormat:v63, v60];
    v64 = __UIAXStringForVariables();

    v25 = v64;
  }

  return v25;
}

- (id)_stringForSide:(unint64_t)side
{
  v3 = @"Left";
  if (side == 2)
  {
    v3 = @"Right";
  }

  if (side)
  {
    return v3;
  }

  else
  {
    return @"None";
  }
}

- (void)updateTourStatusWithCurrentLocation:(id)location currentPoint:(CGPoint)point futureLocation:(id)futureLocation futurePoint:(CGPoint)futurePoint tourPOI:(id)i tourPOISide:(unint64_t)side isStationary:(BOOL)stationary
{
  stationaryCopy = stationary;
  y = futurePoint.y;
  x = futurePoint.x;
  v15 = point.y;
  v16 = point.x;
  locationCopy = location;
  futureLocationCopy = futureLocation;
  iCopy = i;
  [(VKMapViewTourStatus *)self setIsStationary:stationaryCopy];
  currentLocation = [(VKMapViewTourStatus *)self currentLocation];
  [(VKMapViewTourStatus *)self setLastCurrentLocation:currentLocation];

  [(VKMapViewTourStatus *)self setCurrentLocation:locationCopy];
  [(VKMapViewTourStatus *)self setCurrentPoint:v16, v15];
  [(VKMapViewTourStatus *)self futurePoint];
  *&v21 = x - v21;
  *&v22 = y - v22;
  if (sqrtf((*&v21 * *&v21) + (*&v22 * *&v22)) >= 4.0 || stationaryCopy)
  {
    futureLocation = [(VKMapViewTourStatus *)self futureLocation];

    if (futureLocation || stationaryCopy)
    {
      futureLocation2 = [(VKMapViewTourStatus *)self futureLocation];
      [(VKMapViewTourStatus *)self setLastFutureLocation:futureLocation2];
    }

    [(VKMapViewTourStatus *)self setFutureLocation:futureLocationCopy];
    [(VKMapViewTourStatus *)self setFuturePoint:x, y];
  }

  if (stationaryCopy || ([(VKMapViewTourStatus *)self futurePOI], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
  {
    lastFuturePOI = [(VKMapViewTourStatus *)self lastFuturePOI];
    futurePOI = [(VKMapViewTourStatus *)self futurePOI];
    v29 = [lastFuturePOI isEqual:futurePOI];

    futurePOI2 = [(VKMapViewTourStatus *)self futurePOI];
    [(VKMapViewTourStatus *)self setLastFuturePOI:futurePOI2];

    if ((([(VKMapViewTourStatus *)self futurePOISide]== 0) & v29) == 0)
    {
      [(VKMapViewTourStatus *)self setLastFuturePOISide:[(VKMapViewTourStatus *)self futurePOISide]];
    }
  }

  [(VKMapViewTourStatus *)self setFuturePOI:iCopy];
  [(VKMapViewTourStatus *)self setFuturePOISide:side];
}

- (CGPoint)currentPoint
{
  x = self->_currentPoint.x;
  y = self->_currentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)futurePoint
{
  x = self->_futurePoint.x;
  y = self->_futurePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end