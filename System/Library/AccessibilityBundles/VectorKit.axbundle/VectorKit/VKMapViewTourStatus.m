@interface VKMapViewTourStatus
- (CGPoint)currentPoint;
- (CGPoint)futurePoint;
- (id)_stringForSide:(unint64_t)a3;
- (id)_tourStatusAnnouncementWithLength:(unint64_t)a3;
- (void)updateTourStatusWithCurrentLocation:(id)a3 currentPoint:(CGPoint)a4 futureLocation:(id)a5 futurePoint:(CGPoint)a6 tourPOI:(id)a7 tourPOISide:(unint64_t)a8 isStationary:(BOOL)a9;
@end

@implementation VKMapViewTourStatus

- (id)_tourStatusAnnouncementWithLength:(unint64_t)a3
{
  v74 = [(VKMapViewTourStatus *)self currentLocation];
  v72 = [(VKMapViewTourStatus *)self lastCurrentLocation];
  v75 = [(VKMapViewTourStatus *)self futureLocation];
  v73 = [(VKMapViewTourStatus *)self lastFutureLocation];
  v4 = [(VKMapViewTourStatus *)self futurePOI];
  v71 = [(VKMapViewTourStatus *)self lastFuturePOI];
  v5 = [(VKMapViewTourStatus *)self isStationary];
  if (!v75)
  {
    goto LABEL_20;
  }

  v6 = [MEMORY[0x29EDB8DE0] currentLocale];
  v7 = [v6 _navigation_distanceUsesMetricSystem];

  v8 = [v75 accessibilityContainer];
  [(VKMapViewTourStatus *)self currentPoint];
  v10 = v9;
  v12 = v11;
  [(VKMapViewTourStatus *)self futurePoint];
  [v8 accessibilityRealDistanceBetweenPoint:v10 screenPoint2:{v12, v13, v14}];
  v16 = v15;
  v17 = v15;

  if (v7)
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
  if (v22 & 1 | (([v75 isEqual:v73] & 1) == 0))
  {
    if (a3 == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v24 = [v75 trueLabel];
    }

    else
    {
      v24 = [v75 accessibilityLabel];
    }

    v26 = v24;
    [(VKMapViewTourStatus *)self setLastFutureDistance:v17];
    v27 = @"APPROACHING_LOCATION_METERS";
    if (v5)
    {
      v27 = @"FACING_LOCATION_METERS";
    }

    v28 = v27;
    if ((v7 & 1) == 0)
    {
      v29 = @"APPROACHING_LOCATION_FEET";
      if (v5)
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

    if (!v4)
    {
      goto LABEL_57;
    }

    goto LABEL_30;
  }

LABEL_20:
  v25 = 0;
  if (!v4)
  {
    goto LABEL_57;
  }

LABEL_30:
  v34 = [MEMORY[0x29EDB8DE0] currentLocale];
  v35 = [v34 _navigation_distanceUsesMetricSystem];

  [v4 location];
  VKLocationCoordinate2DForVKPoint();
  v37 = v36;
  v39 = v38;
  v40 = [v4 accessibilityContainer];
  [v40 accessibilityConvertCoordinateToWindow:{v37, v39}];

  v41 = [v4 accessibilityContainer];
  [(VKMapViewTourStatus *)self currentPoint];
  [v41 accessibilityRealDistanceBetweenPoint:? screenPoint2:?];
  v43 = v42;

  if (v43 <= 15.0)
  {
    v44 = v35;
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

  if ([v4 isEqual:v71])
  {
    if ([(VKMapViewTourStatus *)self futurePOISide])
    {
      v47 = [(VKMapViewTourStatus *)self lastFuturePOISide];
      if (v47 == [(VKMapViewTourStatus *)self futurePOISide]&& !v46)
      {
        goto LABEL_57;
      }
    }

    else if (!v46)
    {
      goto LABEL_57;
    }
  }

  if (a3 == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v48 = [v4 trueLabel];
  }

  else
  {
    v48 = [v4 accessibilityLabel];
  }

  v49 = v48;
  [(VKMapViewTourStatus *)self setLastPOIDistance:v43];
  v50 = @"APPROACHING_LOCATION_METERS";
  if (v5)
  {
    v50 = @"FACING_LOCATION_METERS";
  }

  v51 = v50;
  if ((v35 & 1) == 0)
  {
    v52 = @"APPROACHING_LOCATION_FEET";
    if (v5)
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
  if (v74 && ([v74 isEqual:v72] & 1) == 0)
  {
    if (a3 == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v59 = [v74 trueLabel];
    }

    else
    {
      v59 = [v74 accessibilityLabel];
    }

    v60 = v59;
    v61 = MEMORY[0x29EDBA0F8];
    if ([v74 isRoad])
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

- (id)_stringForSide:(unint64_t)a3
{
  v3 = @"Left";
  if (a3 == 2)
  {
    v3 = @"Right";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"None";
  }
}

- (void)updateTourStatusWithCurrentLocation:(id)a3 currentPoint:(CGPoint)a4 futureLocation:(id)a5 futurePoint:(CGPoint)a6 tourPOI:(id)a7 tourPOISide:(unint64_t)a8 isStationary:(BOOL)a9
{
  v9 = a9;
  y = a6.y;
  x = a6.x;
  v15 = a4.y;
  v16 = a4.x;
  v31 = a3;
  v18 = a5;
  v19 = a7;
  [(VKMapViewTourStatus *)self setIsStationary:v9];
  v20 = [(VKMapViewTourStatus *)self currentLocation];
  [(VKMapViewTourStatus *)self setLastCurrentLocation:v20];

  [(VKMapViewTourStatus *)self setCurrentLocation:v31];
  [(VKMapViewTourStatus *)self setCurrentPoint:v16, v15];
  [(VKMapViewTourStatus *)self futurePoint];
  *&v21 = x - v21;
  *&v22 = y - v22;
  if (sqrtf((*&v21 * *&v21) + (*&v22 * *&v22)) >= 4.0 || v9)
  {
    v24 = [(VKMapViewTourStatus *)self futureLocation];

    if (v24 || v9)
    {
      v25 = [(VKMapViewTourStatus *)self futureLocation];
      [(VKMapViewTourStatus *)self setLastFutureLocation:v25];
    }

    [(VKMapViewTourStatus *)self setFutureLocation:v18];
    [(VKMapViewTourStatus *)self setFuturePoint:x, y];
  }

  if (v9 || ([(VKMapViewTourStatus *)self futurePOI], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
  {
    v27 = [(VKMapViewTourStatus *)self lastFuturePOI];
    v28 = [(VKMapViewTourStatus *)self futurePOI];
    v29 = [v27 isEqual:v28];

    v30 = [(VKMapViewTourStatus *)self futurePOI];
    [(VKMapViewTourStatus *)self setLastFuturePOI:v30];

    if ((([(VKMapViewTourStatus *)self futurePOISide]== 0) & v29) == 0)
    {
      [(VKMapViewTourStatus *)self setLastFuturePOISide:[(VKMapViewTourStatus *)self futurePOISide]];
    }
  }

  [(VKMapViewTourStatus *)self setFuturePOI:v19];
  [(VKMapViewTourStatus *)self setFuturePOISide:a8];
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